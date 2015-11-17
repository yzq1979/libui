# 22 april 2015

CXXFILES += \
	haiku/alloc.cpp \
	haiku/main.cpp

HFILES += \
	haiku/uipriv_haiku.hpp

# thanks ebassi in irc.gimp.net/#gtk+
CXXFLAGS += \
	-D_UI_EXTERN='__attribute__((visibility("default"))) extern' \
	-fvisibility=hidden \
	-fPIC

LDFLAGS += \
	-fvisibility=hidden \
	-fPIC \
	-lbe -lm

# flags for warning on undefined symbols
LDFLAGS += \
	-Wl,--no-undefined -Wl,--no-allow-shlib-undefined
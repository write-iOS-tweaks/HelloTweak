include theos/makefiles/common.mk

TWEAK_NAME = HelloTweak
HelloTweak_FILES = Tweak.xm
HelloTweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

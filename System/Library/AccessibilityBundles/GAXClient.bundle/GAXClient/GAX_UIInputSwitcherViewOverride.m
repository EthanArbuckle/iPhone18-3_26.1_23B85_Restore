@interface GAX_UIInputSwitcherViewOverride
+ (BOOL)canShowKeyboardSettings;
@end

@implementation GAX_UIInputSwitcherViewOverride

+ (BOOL)canShowKeyboardSettings
{
  v3 = +[GAXClient sharedInstance];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Guided Access active. Disallowing launch item in input switcher.", buf, 2u);
    }

    return 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GAX_UIInputSwitcherViewOverride;
    return objc_msgSendSuper2(&v7, "canShowKeyboardSettings");
  }
}

@end
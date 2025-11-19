@interface GAXUIResponderOverride
- (BOOL)_canBecomeFirstResponder;
@end

@implementation GAXUIResponderOverride

- (BOOL)_canBecomeFirstResponder
{
  v3 = +[GAXClient sharedInstance];
  if ([v3 isActive] && !objc_msgSend(v3, "allowsKeyboardTextInput") || objc_msgSend(v3, "providesViewServices") && (objc_msgSend(v3, "shouldShowKeyboardsInViewServices") & 1) == 0)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Guided Access blocking canBecomeFirstResponder:", buf, 2u);
    }

    v4 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GAXUIResponderOverride;
    v4 = [(GAXUIResponderOverride *)&v7 _canBecomeFirstResponder];
  }

  return v4;
}

@end
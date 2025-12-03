@interface AppStoreApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityFirstElementForFocus;
- (id)_axVisibleViewController;
@end

@implementation AppStoreApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.ActivityViewController"];
  [validationsCopy validateClass:@"AppStore.ActivityViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AppStore.AppDelegate" hasSwiftField:@"tabBarController" withSwiftType:"Optional<StoreTabBarController>"];
  [validationsCopy validateClass:@"AppStore.StoreTabBarController" isKindOfClass:@"UITabBarController"];
}

- (id)_accessibilityFirstElementForFocus
{
  v3 = accessibilityAppStorePrefixForTarget();
  _axVisibleViewController = [(AppStoreApplicationAccessibility *)self _axVisibleViewController];
  v5 = [v3 stringByAppendingString:@".ActivityViewController"];
  MEMORY[0x29C2C8BD0]();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    defaultVoiceOverOptions = [_axVisibleViewController safeUIViewForKey:@"view"];
    [defaultVoiceOverOptions _accessibilityFirstDescendant];
  }

  else
  {
    defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [(AppStoreApplicationAccessibility *)self _accessibilityFirstElementForFocusWithOptions:defaultVoiceOverOptions];
  }
  v8 = ;

  return v8;
}

- (id)_axVisibleViewController
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  delegate = [mEMORY[0x29EDC7938] delegate];

  v4 = [delegate safeSwiftValueForKey:@"tabBarController"];
  v5 = [v4 safeValueForKey:@"selectedViewController"];
  v6 = v5;
  if (v5 && ([v5 presentedViewController], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    presentedViewController = [v7 presentedViewController];
  }

  else
  {
    presentedViewController = 0;
  }

  return presentedViewController;
}

@end
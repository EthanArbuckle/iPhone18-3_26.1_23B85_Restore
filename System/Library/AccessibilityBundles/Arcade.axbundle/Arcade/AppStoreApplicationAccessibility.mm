@interface AppStoreApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFirstElementForFocus;
- (id)_axVisibleViewController;
@end

@implementation AppStoreApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.ActivityViewController"];
  [v3 validateClass:@"Arcade.ActivityViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"Arcade.AppDelegate" hasSwiftField:@"tabBarController" withSwiftType:"Optional<StoreTabBarController>"];
  [v3 validateClass:@"Arcade.StoreTabBarController" isKindOfClass:@"UITabBarController"];
}

- (id)_accessibilityFirstElementForFocus
{
  v3 = accessibilityAppStorePrefixForTarget();
  v4 = [(AppStoreApplicationAccessibility *)self _axVisibleViewController];
  v5 = [v3 stringByAppendingString:@".ActivityViewController"];
  MEMORY[0x29C2C9570]();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 safeUIViewForKey:@"view"];
    [v7 _accessibilityFirstDescendant];
  }

  else
  {
    v7 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [(AppStoreApplicationAccessibility *)self _accessibilityFirstElementForFocusWithOptions:v7];
  }
  v8 = ;

  return v8;
}

- (id)_axVisibleViewController
{
  v2 = [MEMORY[0x29EDC7938] sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 safeSwiftValueForKey:@"tabBarController"];
  v5 = [v4 safeValueForKey:@"selectedViewController"];
  v6 = v5;
  if (v5 && ([v5 presentedViewController], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 presentedViewController];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
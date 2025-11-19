@interface _UIRemoteViewControllerLegacyImplAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)a3;
@end

@implementation _UIRemoteViewControllerLegacyImplAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_WGWidgetRemoteViewController" isKindOfClass:@"_UIRemoteViewController"];
  [v3 validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceMethod:@"_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"_UIRemoteViewControllerLegacyImpl" conformsToProtocol:@"_UIRemoteViewControllerImpl"];
  [v3 validateProtocol:@"_UIRemoteViewControllerImpl" hasRequiredInstanceMethod:@"_owningRemoteViewController"];
}

- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewControllerLegacyImplAccessibility *)self safeValueForKey:@"_owningRemoteViewController"];
  MEMORY[0x29ED42A50](@"_WGWidgetRemoteViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v8 = [v7 view];
  v9 = [v8 _accessibilityIsFKARunningForFocusItem];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
LABEL_4:
    v12.receiver = self;
    v12.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
    v10 = [(_UIRemoteViewControllerLegacyImplAccessibility *)&v12 _wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:v4];
  }

  return v10;
}

@end
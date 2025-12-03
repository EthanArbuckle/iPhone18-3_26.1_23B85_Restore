@interface _UISizeTrackingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (int)_accessibilityRemotePid;
- (void)_accessibilitySetFocusOnElement:(BOOL)element;
@end

@implementation _UISizeTrackingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UISizeTrackingView";
  v5 = @"UIView";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"_UISizeTrackingView" hasInstanceMethod:@"remoteViewController" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceVariable:@"_rvcImpl" withType:"_UIRemoteViewControllerLegacyImpl"];
  v6 = "v";
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceMethod:@"_setWantsKeyboardEnvironmentEventDeferring:" withFullSignature:{"B", 0}];
  [location[0] validateClass:@"_UIRemoteViewController" hasInstanceMethod:@"serviceProcessIdentifier" withFullSignature:{"i", 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"didUpdateFocusInContext: withAnimationCoordinator:" withFullSignature:{v6, v4, v4, 0}];
  objc_storeStrong(v8, v7);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v4 = a2;
  if (([(_UISizeTrackingViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UISizeTrackingViewAccessibility;
  return [(_UISizeTrackingViewAccessibility *)&v3 canBecomeFocused];
}

- (void)_accessibilitySetFocusOnElement:(BOOL)element
{
  selfCopy = self;
  v10 = a2;
  elementCopy = element;
  if (element)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v4 = -1073741824;
    v5 = 0;
    v6 = __68___UISizeTrackingViewAccessibility__accessibilitySetFocusOnElement___block_invoke;
    v7 = &unk_29F30C7C8;
    v8 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v3[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(v3, 0);
  }
}

- (int)_accessibilityRemotePid
{
  v4 = [(_UISizeTrackingViewAccessibility *)self safeValueForKey:@"remoteViewController"];
  v3 = [v4 safeValueForKey:@"serviceProcessIdentifier"];
  intValue = [v3 intValue];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  return intValue;
}

@end
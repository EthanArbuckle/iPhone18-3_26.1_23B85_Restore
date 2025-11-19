@interface UIStatusBar_ModernAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityViewIsVisible;
- (int64_t)_accessibilitySortPriority;
@end

@implementation UIStatusBar_ModernAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBar" isKindOfClass:@"UIView"];
  [location[0] validateClass:@"UIStatusBar_Modern" hasInstanceMethod:@"statusBar" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)_accessibilityViewIsVisible
{
  v3 = [(UIStatusBar_ModernAccessibility *)self safeUIViewForKey:@"statusBar"];
  v4 = [v3 isHidden] ^ 1;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (int64_t)_accessibilitySortPriority
{
  v5 = self;
  v4 = a2;
  if ((AXProcessIsSpringBoard() & 1) == 0 || (AXDeviceHasJindo() & 1) == 0 || AXRequestingClient() != 3)
  {
    return 0x7FFFFFFFLL;
  }

  v3.receiver = v5;
  v3.super_class = UIStatusBar_ModernAccessibility;
  return [(UIStatusBar_ModernAccessibility *)&v3 _accessibilitySortPriority];
}

@end
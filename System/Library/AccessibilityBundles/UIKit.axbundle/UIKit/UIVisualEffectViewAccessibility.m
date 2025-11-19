@interface UIVisualEffectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
@end

@implementation UIVisualEffectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIVisualEffectView" hasProperty:@"contentView" withType:"@"];
  objc_storeStrong(location, 0);
}

- (id)automationElements
{
  v3 = [(UIVisualEffectViewAccessibility *)self safeUIViewForKey:@"contentView"];
  v4 = [v3 subviews];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end
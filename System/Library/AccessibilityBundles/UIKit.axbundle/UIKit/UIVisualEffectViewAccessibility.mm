@interface UIVisualEffectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
@end

@implementation UIVisualEffectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIVisualEffectView" hasProperty:@"contentView" withType:"@"];
  objc_storeStrong(location, 0);
}

- (id)automationElements
{
  v3 = [(UIVisualEffectViewAccessibility *)self safeUIViewForKey:@"contentView"];
  subviews = [v3 subviews];
  MEMORY[0x29EDC9740](v3);

  return subviews;
}

@end
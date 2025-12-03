@interface UICoverSheetButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityPath;
@end

@implementation UICoverSheetButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UICoverSheetButton" hasInstanceVariable:@"_backgroundEffectView" withType:"UIVisualEffectView"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityPath
{
  v3 = [(UICoverSheetButtonAccessibility *)self safeValueForKey:@"_backgroundEffectView"];
  accessibilityPath = [v3 accessibilityPath];
  MEMORY[0x29EDC9740](v3);

  return accessibilityPath;
}

@end
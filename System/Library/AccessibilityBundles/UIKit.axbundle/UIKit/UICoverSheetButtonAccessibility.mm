@interface UICoverSheetButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityPath;
@end

@implementation UICoverSheetButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UICoverSheetButton" hasInstanceVariable:@"_backgroundEffectView" withType:"UIVisualEffectView"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityPath
{
  v3 = [(UICoverSheetButtonAccessibility *)self safeValueForKey:@"_backgroundEffectView"];
  v4 = [v3 accessibilityPath];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end
@interface _UIMorphingPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIMorphingPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIMorphingPlatterView" hasInstanceMethod:@"expandedTransformView" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UIMorphingPlatterViewAccessibility;
  [(_UIMorphingPlatterViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v5 = 0;
  objc_opt_class();
  v2 = [(_UIMorphingPlatterViewAccessibility *)selfCopy safeValueForKey:@"expandedTransformView"];
  v4 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v2);
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  [_UIPlatterTransformViewAccessibility _accessibilitySetIsExpandedTransformView:v3];
  MEMORY[0x29EDC9740](v3);
}

@end
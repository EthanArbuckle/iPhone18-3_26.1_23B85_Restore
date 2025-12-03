@interface _UISearchTokenLayoutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation _UISearchTokenLayoutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UISearchTokenLayoutView" hasInstanceMethod:@"delegateView" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UISearchTokenLayoutViewAccessibility *)self safeValueForKey:@"delegateView"];
  accessibilityTraits = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UISearchTokenLayoutViewAccessibility *)self safeValueForKey:@"delegateView"];
  isAccessibilityElement = [v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return isAccessibilityElement;
}

@end
@interface _UISearchTokenLayoutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation _UISearchTokenLayoutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UISearchTokenLayoutView" hasInstanceMethod:@"delegateView" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UISearchTokenLayoutViewAccessibility *)self safeValueForKey:@"delegateView"];
  v4 = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UISearchTokenLayoutViewAccessibility *)self safeValueForKey:@"delegateView"];
  v4 = [v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

@end
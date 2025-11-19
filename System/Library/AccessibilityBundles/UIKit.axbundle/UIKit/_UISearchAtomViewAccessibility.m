@interface _UISearchAtomViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation _UISearchAtomViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UISearchAtomView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"selectionStyle" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (unint64_t)accessibilityTraits
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = _UISearchAtomViewAccessibility;
  v4 = [(_UISearchAtomViewAccessibility *)&v5 accessibilityTraits];
  if ([(_UISearchAtomViewAccessibility *)v7 safeIntegerForKey:@"selectionStyle"])
  {
    v3 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v3 = 0;
  }

  return v4 | v3;
}

@end
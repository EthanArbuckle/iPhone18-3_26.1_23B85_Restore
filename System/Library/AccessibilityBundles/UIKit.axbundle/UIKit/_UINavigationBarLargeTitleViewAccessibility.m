@interface _UINavigationBarLargeTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (_UINavigationBarLargeTitleViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _UINavigationBarLargeTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UINavigationBarLargeTitleView";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"_UINavigationBarLargeTitleView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_layout" withType:"_UINavigationBarLargeTitleViewLayout"];
  v5 = @"_UINavigationBarLargeTitleViewLayout";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  objc_storeStrong(v7, v6);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = _UINavigationBarLargeTitleViewAccessibility;
  [(_UINavigationBarLargeTitleViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v4 = [(_UINavigationBarLargeTitleViewAccessibility *)v10 safeValueForKey:?];
  v3 = [v4 safeValueForKey:@"titleLabel"];
  v5 = MEMORY[0x29EDC7F80];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  MEMORY[0x29EDC9740](v3);
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v7 = [(_UINavigationBarLargeTitleViewAccessibility *)v10 safeValueForKey:@"_layout", v2];
  v6 = [v7 safeValueForKey:@"_subtitleLabel"];
  [v6 setAccessibilityTraits:*v5];
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);
}

- (_UINavigationBarLargeTitleViewAccessibility)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6[1] = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = _UINavigationBarLargeTitleViewAccessibility;
  v7 = [(_UINavigationBarLargeTitleViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6[0] = MEMORY[0x29EDC9748](v7);
  [(_UINavigationBarLargeTitleViewAccessibility *)v7 _accessibilityLoadAccessibilityInformation];
  v4 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (void)layoutSubviews
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UINavigationBarLargeTitleViewAccessibility;
  [(_UINavigationBarLargeTitleViewAccessibility *)&v3 layoutSubviews];
  v2 = [(_UINavigationBarLargeTitleViewAccessibility *)v5 _accessibilityFindAncestor:&__block_literal_global_56 startWithSelf:0];
  [v2 _accessibility_navigationBarContentsDidChange];
  objc_storeStrong(&v2, 0);
}

- (BOOL)accessibilityElementsHidden
{
  v5 = self;
  v4 = a2;
  if (_UISolariumEnabled())
  {
    return 1;
  }

  v3.receiver = v5;
  v3.super_class = _UINavigationBarLargeTitleViewAccessibility;
  return [(_UINavigationBarLargeTitleViewAccessibility *)&v3 accessibilityElementsHidden];
}

@end
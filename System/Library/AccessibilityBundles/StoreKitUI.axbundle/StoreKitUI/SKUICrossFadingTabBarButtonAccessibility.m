@interface SKUICrossFadingTabBarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUICrossFadingTabBarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUICrossFadingTabBarButton" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SKUICrossFadingTabBarButton" hasInstanceVariable:@"_standardTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"SKUICrossFadingTabBarButton" hasInstanceVariable:@"_selectedTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"SKUICrossFadingTabBar"];
  [v3 validateClass:@"SKUICrossFadingTabBar" hasInstanceMethod:@"tabBarButtons" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SKUICrossFadingTabBarButtonAccessibility *)self safeValueForKey:@"_standardTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(SKUICrossFadingTabBarButtonAccessibility *)self safeValueForKey:@"_standardTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(SKUICrossFadingTabBarButtonAccessibility *)self safeValueForKey:@"_selectedTitleLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = *MEMORY[0x29EDC7588];
  [v6 alpha];
  v9 = v8;
  [v4 alpha];
  if (v9 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *MEMORY[0x29EDC7FC0];
  }

  return v11 | v7;
}

- (_NSRange)accessibilityRowRange
{
  objc_opt_class();
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 superview];
  v5 = [v4 safeValueForKey:@"tabBarButtons"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 indexOfObject:self];
  v8 = [v6 count];

  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

@end
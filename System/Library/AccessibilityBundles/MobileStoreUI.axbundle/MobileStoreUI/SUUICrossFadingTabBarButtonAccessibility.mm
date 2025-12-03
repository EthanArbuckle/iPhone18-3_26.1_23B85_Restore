@interface SUUICrossFadingTabBarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUICrossFadingTabBarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUICrossFadingTabBarButton" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SUUICrossFadingTabBarButton" hasInstanceVariable:@"_standardTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUICrossFadingTabBarButton" hasInstanceVariable:@"_selectedTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUICrossFadingTabBar"];
  [validationsCopy validateClass:@"SUUICrossFadingTabBar" hasInstanceMethod:@"tabBarButtons" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SUUICrossFadingTabBarButtonAccessibility *)self safeValueForKey:@"_standardTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(SUUICrossFadingTabBarButtonAccessibility *)self safeValueForKey:@"_standardTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(SUUICrossFadingTabBarButtonAccessibility *)self safeValueForKey:@"_selectedTitleLabel"];
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
  superview = [v3 superview];
  v5 = [superview safeValueForKey:@"tabBarButtons"];
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
@interface SFTabGroupTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SFTabGroupTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFTabGroupTitleView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SFTabGroupTitleView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SFTabGroupTitleViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];

  objc_opt_class();
  v6 = [(SFTabGroupTitleViewAccessibility *)self safeUIViewForKey:@"_subtitleLabel"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 text];

  v11 = accessibilityMobileSafariLocalizedString(@"tab.group");
  v9 = __UIAXStringForVariables();

  return v9;
}

@end
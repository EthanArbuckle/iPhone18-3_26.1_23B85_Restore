@interface NCInsetGroupedButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation NCInsetGroupedButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCInsetGroupedButton" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"NCInsetGroupedButton" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

@end
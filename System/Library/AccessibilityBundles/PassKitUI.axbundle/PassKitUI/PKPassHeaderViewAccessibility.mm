@interface PKPassHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PKPassHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPassHeaderView" hasInstanceVariable:@"_title" withType:"UILabel"];
  [v3 validateClass:@"PKPassHeaderView" hasInstanceVariable:@"_subtitle" withType:"UILabel"];
}

@end
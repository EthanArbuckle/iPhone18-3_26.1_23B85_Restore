@interface AAUIImageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation AAUIImageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AAUIImageControl" hasInstanceVariable:@"_label" withType:"AAUILabel"];
  [v3 validateClass:@"AAUILabel" isKindOfClass:@"UILabel"];
}

@end
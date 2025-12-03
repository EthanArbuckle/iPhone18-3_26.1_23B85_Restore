@interface AAUIImageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation AAUIImageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUIImageControl" hasInstanceVariable:@"_label" withType:"AAUILabel"];
  [validationsCopy validateClass:@"AAUILabel" isKindOfClass:@"UILabel"];
}

@end
@interface PSUsageSizeHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PSUsageSizeHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSUsageSizeHeader" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PSUsageSizeHeader" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PSUsageSizeHeaderAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PSUsageSizeHeaderAccessibility *)self safeValueForKey:@"_sizeLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end
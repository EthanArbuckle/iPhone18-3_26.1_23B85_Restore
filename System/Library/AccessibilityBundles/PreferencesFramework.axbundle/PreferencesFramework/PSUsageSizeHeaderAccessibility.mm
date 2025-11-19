@interface PSUsageSizeHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PSUsageSizeHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSUsageSizeHeader" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PSUsageSizeHeader" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PSUsageSizeHeaderAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PSUsageSizeHeaderAccessibility *)self safeValueForKey:@"_sizeLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end
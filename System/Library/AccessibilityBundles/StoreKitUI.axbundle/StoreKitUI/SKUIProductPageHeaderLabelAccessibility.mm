@interface SKUIProductPageHeaderLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUIProductPageHeaderLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIProductPageHeaderLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageHeaderLabel" hasInstanceMethod:@"contentRating" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIProductPageHeaderLabelAccessibility *)self safeValueForKey:@"text"];
  v4 = [(SKUIProductPageHeaderLabelAccessibility *)self safeValueForKey:@"contentRating"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@"+" withString:&stru_2A2323958];

    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilitySKUILocalizedString(@"app.rating.label");
    v9 = [v7 stringWithFormat:v8, v6];
  }

  else
  {
    v9 = &stru_2A2323958;
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end
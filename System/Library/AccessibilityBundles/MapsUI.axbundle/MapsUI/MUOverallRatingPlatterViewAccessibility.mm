@interface MUOverallRatingPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MUOverallRatingPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUOverallRatingPlatterView" hasInstanceVariable:@"_attributionLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MUOverallRatingPlatterView" hasInstanceVariable:@"_viewModel" withType:"<MUOverallRatingPlatterViewModel>"];
}

- (id)accessibilityLabel
{
  v2 = [(MUOverallRatingPlatterViewAccessibility *)self safeValueForKey:@"_viewModel"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"attributionText"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 length])
  {
    v5 = [v4 attribute:@"AXAttributeDisplayName" atIndex:0 effectiveRange:0];
  }

  else
  {
    v5 = &stru_2A21F1AD0;
  }

  [v2 safeFloatForKey:@"rating"];
  v7 = round(v6 + v6) * 0.5;
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"stars.rating");
  v10 = [v8 localizedStringWithFormat:v9, *&v7];

  v11 = [v2 safeUnsignedIntegerForKey:@"numberOfVotes"];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"total.reviews");
  v14 = [v12 localizedStringWithFormat:v13, v11];

  v15 = __UIAXStringForVariables();

  return v15;
}

@end
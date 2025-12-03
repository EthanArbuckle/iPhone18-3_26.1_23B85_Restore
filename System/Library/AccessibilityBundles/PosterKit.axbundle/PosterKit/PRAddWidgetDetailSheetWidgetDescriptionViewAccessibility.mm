@interface PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRAddWidgetDetailSheetWidgetDescriptionView" hasProperty:@"titleLabel" withType:"@"];
  [validationsCopy validateClass:@"PRAddWidgetDetailSheetWidgetDescriptionView" hasProperty:@"descriptionLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v3 = [(PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility *)self safeValueForKey:@"descriptionLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end
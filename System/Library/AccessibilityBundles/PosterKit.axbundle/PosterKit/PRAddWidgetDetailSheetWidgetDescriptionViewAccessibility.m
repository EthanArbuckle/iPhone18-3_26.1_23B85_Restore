@interface PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRAddWidgetDetailSheetWidgetDescriptionView" hasProperty:@"titleLabel" withType:"@"];
  [v3 validateClass:@"PRAddWidgetDetailSheetWidgetDescriptionView" hasProperty:@"descriptionLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v3 = [(PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PRAddWidgetDetailSheetWidgetDescriptionViewAccessibility *)self safeValueForKey:@"descriptionLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end
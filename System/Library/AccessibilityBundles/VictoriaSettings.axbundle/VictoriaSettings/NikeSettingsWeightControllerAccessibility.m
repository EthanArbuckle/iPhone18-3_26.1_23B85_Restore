@interface NikeSettingsWeightControllerAccessibility
- (void)_layoutViews;
@end

@implementation NikeSettingsWeightControllerAccessibility

- (void)_layoutViews
{
  v8.receiver = self;
  v8.super_class = NikeSettingsWeightControllerAccessibility;
  [(NikeSettingsWeightControllerAccessibility *)&v8 _layoutViews];
  v3 = [(NikeSettingsWeightControllerAccessibility *)self safeValueForKey:@"_promptLabel"];
  v4 = [(NikeSettingsWeightControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 accessibilitySetIdentification:@"TableWithFakeHeaderFooter"];

  v5 = [(NikeSettingsWeightControllerAccessibility *)self safeValueForKey:@"view"];
  [v5 _accessibilitySetRetainedValue:v3 forKey:@"_axHeader"];

  v6 = [(NikeSettingsWeightControllerAccessibility *)self safeValueForKey:@"_weightPicker"];
  v7 = [(NikeSettingsWeightControllerAccessibility *)self safeValueForKey:@"view"];
  [v7 _accessibilitySetRetainedValue:v6 forKey:@"_axFooter"];
}

@end
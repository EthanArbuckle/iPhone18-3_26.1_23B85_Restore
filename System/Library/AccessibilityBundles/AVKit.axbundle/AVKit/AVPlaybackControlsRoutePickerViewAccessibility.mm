@interface AVPlaybackControlsRoutePickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)customButton;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVPlaybackControlsRoutePickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVPlaybackControlsRoutePickerView" hasInstanceMethod:@"customButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlaybackControlsRoutePickerView" hasInstanceVariable:@"_customButton" withType:"AVButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVPlaybackControlsRoutePickerViewAccessibility;
  [(AVPlaybackControlsRoutePickerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"airplay.button");
  v4 = [(AVPlaybackControlsRoutePickerViewAccessibility *)self safeUIViewForKey:@"_customButton"];
  [v4 setAccessibilityLabel:v3];
}

- (id)customButton
{
  v5.receiver = self;
  v5.super_class = AVPlaybackControlsRoutePickerViewAccessibility;
  customButton = [(AVPlaybackControlsRoutePickerViewAccessibility *)&v5 customButton];
  [(AVPlaybackControlsRoutePickerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return customButton;
}

@end
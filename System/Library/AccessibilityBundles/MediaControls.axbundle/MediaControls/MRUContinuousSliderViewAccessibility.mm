@interface MRUContinuousSliderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation MRUContinuousSliderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUVolumeViewController" hasInstanceMethod:@"audioModuleController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUAudioModuleController" hasInstanceMethod:@"volumeController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUSystemVolumeController" hasInstanceMethod:@"outputDeviceRouteController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUSystemOutputDeviceRouteController" hasInstanceMethod:@"isSplitRoute" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MRUContinuousSliderView" isKindOfClass:@"UIView"];
}

- (id)accessibilityValue
{
  v3 = [(MRUContinuousSliderViewAccessibility *)self safeUIViewForKey:@"superview"];
  _accessibilityViewController = [v3 _accessibilityViewController];
  v5 = [_accessibilityViewController safeValueForKeyPath:@"audioModuleController.volumeController"];
  v6 = [v5 safeValueForKey:@"outputDeviceRouteController"];
  if ([v6 safeBoolForKey:@"isSplitRoute"])
  {
    accessibilityValue = accessibilityLocalizedString(@"volume.slider.value");
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MRUContinuousSliderViewAccessibility;
    accessibilityValue = [(MRUContinuousSliderViewAccessibility *)&v10 accessibilityValue];
  }

  v8 = accessibilityValue;

  return v8;
}

@end
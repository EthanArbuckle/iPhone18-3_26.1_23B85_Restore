@interface MRUContinuousSliderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation MRUContinuousSliderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUVolumeViewController" hasInstanceMethod:@"audioModuleController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUAudioModuleController" hasInstanceMethod:@"volumeController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUSystemVolumeController" hasInstanceMethod:@"outputDeviceRouteController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUSystemOutputDeviceRouteController" hasInstanceMethod:@"isSplitRoute" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MRUContinuousSliderView" isKindOfClass:@"UIView"];
}

- (id)accessibilityValue
{
  v3 = [(MRUContinuousSliderViewAccessibility *)self safeUIViewForKey:@"superview"];
  v4 = [v3 _accessibilityViewController];
  v5 = [v4 safeValueForKeyPath:@"audioModuleController.volumeController"];
  v6 = [v5 safeValueForKey:@"outputDeviceRouteController"];
  if ([v6 safeBoolForKey:@"isSplitRoute"])
  {
    v7 = accessibilityLocalizedString(@"volume.slider.value");
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MRUContinuousSliderViewAccessibility;
    v7 = [(MRUContinuousSliderViewAccessibility *)&v10 accessibilityValue];
  }

  v8 = v7;

  return v8;
}

@end
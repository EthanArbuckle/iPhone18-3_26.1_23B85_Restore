@interface MTATimerPresetViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)setPresetItem:(id)a3;
@end

@implementation MTATimerPresetViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTATimerPresetView" hasInstanceMethod:@"setPresetItem:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MTATimerPresetItem" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MTATimerPresetViewAccessibility *)self _axTimerPreset];
  [v2 safeTimeIntervalForKey:@"duration"];
  v3 = AXDurationStringForDuration();

  return v3;
}

- (void)setPresetItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = MTATimerPresetViewAccessibility;
  v4 = a3;
  [(MTATimerPresetViewAccessibility *)&v5 setPresetItem:v4];
  [(MTATimerPresetViewAccessibility *)self _axSetTimerPreset:v4, v5.receiver, v5.super_class];
}

@end
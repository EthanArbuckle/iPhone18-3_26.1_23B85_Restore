@interface MTATimerPresetViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)setPresetItem:(id)item;
@end

@implementation MTATimerPresetViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTATimerPresetView" hasInstanceMethod:@"setPresetItem:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MTATimerPresetItem" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  _axTimerPreset = [(MTATimerPresetViewAccessibility *)self _axTimerPreset];
  [_axTimerPreset safeTimeIntervalForKey:@"duration"];
  v3 = AXDurationStringForDuration();

  return v3;
}

- (void)setPresetItem:(id)item
{
  v5.receiver = self;
  v5.super_class = MTATimerPresetViewAccessibility;
  itemCopy = item;
  [(MTATimerPresetViewAccessibility *)&v5 setPresetItem:itemCopy];
  [(MTATimerPresetViewAccessibility *)self _axSetTimerPreset:itemCopy, v5.receiver, v5.super_class];
}

@end
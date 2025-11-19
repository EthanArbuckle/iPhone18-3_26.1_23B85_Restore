@interface MTAEditAlarmVolumeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MTAEditAlarmVolumeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTAEditAlarmVolumeCell" hasInstanceMethod:@"volumeSlider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UISlider" hasInstanceMethod:@"_accessibilityBumpValue:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(MTAEditAlarmVolumeCellAccessibility *)self safeValueForKey:@"volumeSlider"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(MTAEditAlarmVolumeCellAccessibility *)self safeValueForKey:@"volumeSlider"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (void)accessibilityIncrement
{
  objc_opt_class();
  v3 = [(MTAEditAlarmVolumeCellAccessibility *)self safeValueForKey:@"volumeSlider"];
  v4 = __UIAccessibilityCastAsClass();

  if (objc_opt_respondsToSelector())
  {
    [v4 _accessibilityBumpValue:1];
  }
}

- (void)accessibilityDecrement
{
  objc_opt_class();
  v3 = [(MTAEditAlarmVolumeCellAccessibility *)self safeValueForKey:@"volumeSlider"];
  v4 = __UIAccessibilityCastAsClass();

  if (objc_opt_respondsToSelector())
  {
    [v4 _accessibilityBumpValue:0];
  }
}

@end
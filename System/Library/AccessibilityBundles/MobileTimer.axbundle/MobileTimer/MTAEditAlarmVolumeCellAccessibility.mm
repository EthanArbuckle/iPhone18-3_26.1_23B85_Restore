@interface MTAEditAlarmVolumeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MTAEditAlarmVolumeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAEditAlarmVolumeCell" hasInstanceMethod:@"volumeSlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISlider" hasInstanceMethod:@"_accessibilityBumpValue:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(MTAEditAlarmVolumeCellAccessibility *)self safeValueForKey:@"volumeSlider"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(MTAEditAlarmVolumeCellAccessibility *)self safeValueForKey:@"volumeSlider"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
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
@interface _UIDatePickerCalendarTimeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (double)_axHideTimeLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupViewHierarchy;
@end

@implementation _UIDatePickerCalendarTimeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"_UIDatePickerCalendarTimeView";
  v3 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"timeTextField" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setupViewHierarchy" withFullSignature:{"v", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(_UIDatePickerCalendarTimeViewAccessibility *)self safeValueForKey:@"timeTextField"];
  resignFirstResponder = [v3 resignFirstResponder];
  MEMORY[0x29EDC9740](v3);
  return resignFirstResponder;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIDatePickerCalendarTimeViewAccessibility;
  [(_UIDatePickerCalendarTimeViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIDatePickerCalendarTimeViewAccessibility *)selfCopy _axHideTimeLabel];
}

- (double)_axHideTimeLabel
{
  if (self)
  {
    v2 = [self safeValueForKey:@"timeLabel"];
    [v2 setIsAccessibilityElement:0];
    *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  return result;
}

- (void)_setupViewHierarchy
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIDatePickerCalendarTimeViewAccessibility;
  [(_UIDatePickerCalendarTimeViewAccessibility *)&v2 _setupViewHierarchy];
  [(_UIDatePickerCalendarTimeViewAccessibility *)selfCopy _axHideTimeLabel];
}

@end
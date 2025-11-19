@interface _UIDatePickerCalendarTimeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (double)_axHideTimeLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupViewHierarchy;
@end

@implementation _UIDatePickerCalendarTimeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v4 = [v3 resignFirstResponder];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIDatePickerCalendarTimeViewAccessibility;
  [(_UIDatePickerCalendarTimeViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIDatePickerCalendarTimeViewAccessibility *)v4 _axHideTimeLabel];
}

- (double)_axHideTimeLabel
{
  if (a1)
  {
    v2 = [a1 safeValueForKey:@"timeLabel"];
    [v2 setIsAccessibilityElement:0];
    *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  return result;
}

- (void)_setupViewHierarchy
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIDatePickerCalendarTimeViewAccessibility;
  [(_UIDatePickerCalendarTimeViewAccessibility *)&v2 _setupViewHierarchy];
  [(_UIDatePickerCalendarTimeViewAccessibility *)v4 _axHideTimeLabel];
}

@end
@interface _UIDatePickerCompactDateLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation _UIDatePickerCompactDateLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIDatePickerCompactDateLabel" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"_UIDatePickerIOSCompactView" hasInstanceVariable:@"_presentation" withType:"_UIDatePickerOverlayPresentation"];
  [location[0] validateClass:@"_UIDatePickerOverlayPresentation" hasInstanceMethod:@"activeMode" withFullSignature:{"q", 0}];
  objc_storeStrong(v4, obj);
}

- (int64_t)_accessibilityExpandedStatus
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCompactDateLabelAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickerio_0.isa)];
  v3 = [location[0] safeValueForKey:@"_presentation"];
  v4 = [v3 safeIntegerForKey:@"activeMode"];
  MEMORY[0x29EDC9740](v3);
  if (v4 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(_UIDatePickerCompactDateLabelAccessibility *)self safeUIViewForKey:@"textLabel"];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end
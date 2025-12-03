@interface UIDatePickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canBecomeFocused;
- (int64_t)accessibilityContainerType;
@end

@implementation UIDatePickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIDatePicker";
  v3 = @"UIControl";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UIControl" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_pickerView" withType:"UIView<_UIDatePickerViewComponent>"];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityPerformEscape
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UIDatePickerAccessibility *)self safeValueForKey:@"_pickerView"];
  accessibilityPerformEscape = [v4[0] accessibilityPerformEscape];
  objc_storeStrong(v4, 0);
  return accessibilityPerformEscape;
}

- (int64_t)accessibilityContainerType
{
  accessibilityLabel = [(UIDatePickerAccessibility *)self accessibilityLabel];
  v4 = [accessibilityLabel length];
  MEMORY[0x29EDC9740](accessibilityLabel);
  if (v4)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIDatePickerAccessibility;
  canBecomeFocused = [(UIDatePickerAccessibility *)&v3 canBecomeFocused];
  if (([(UIDatePickerAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    canBecomeFocused = 0;
  }

  return canBecomeFocused & 1;
}

@end
@interface UIDatePickerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canBecomeFocused;
- (int64_t)accessibilityContainerType;
@end

@implementation UIDatePickerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = [v4[0] accessibilityPerformEscape];
  objc_storeStrong(v4, 0);
  return v3;
}

- (int64_t)accessibilityContainerType
{
  v3 = [(UIDatePickerAccessibility *)self accessibilityLabel];
  v4 = [v3 length];
  MEMORY[0x29EDC9740](v3);
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
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIDatePickerAccessibility;
  v4 = [(UIDatePickerAccessibility *)&v3 canBecomeFocused];
  if (([(UIDatePickerAccessibility *)v6 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end
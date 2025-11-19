@interface PSDateTimePickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPickerTimeView;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PSDateTimePickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSDateTimePickerCell" hasInstanceMethod:@"datePicker" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PSDateTimePickerCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"UIDatePicker" hasInstanceVariable:@"_pickerView" withType:"UIView<_UIDatePickerViewComponent>"];
  [v3 validateClass:@"_UIDatePickerIOSCompactView" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIDatePickerCompactTimeLabel" isKindOfClass:@"_UIDatePickerCalendarTimeLabel"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PSDateTimePickerCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = PSDateTimePickerCellAccessibility;
  v3 = [(PSDateTimePickerCellAccessibility *)&v8 accessibilityLabel];
  v4 = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  v7 = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  v2 = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerTimeView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerTimeView];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)accessibilityPickerTimeView
{
  v2 = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  v3 = [v2 safeUIViewForKey:@"timeView"];

  return v3;
}

@end
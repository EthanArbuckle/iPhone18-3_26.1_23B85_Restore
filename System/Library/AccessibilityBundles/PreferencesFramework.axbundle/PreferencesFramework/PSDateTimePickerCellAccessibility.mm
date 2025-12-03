@interface PSDateTimePickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPickerTimeView;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PSDateTimePickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSDateTimePickerCell" hasInstanceMethod:@"datePicker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSDateTimePickerCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"UIDatePicker" hasInstanceVariable:@"_pickerView" withType:"UIView<_UIDatePickerViewComponent>"];
  [validationsCopy validateClass:@"_UIDatePickerIOSCompactView" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIDatePickerCompactTimeLabel" isKindOfClass:@"_UIDatePickerCalendarTimeLabel"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PSDateTimePickerCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = PSDateTimePickerCellAccessibility;
  accessibilityLabel = [(PSDateTimePickerCellAccessibility *)&v8 accessibilityLabel];
  accessibilityPickerView = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  accessibilityLabel2 = [accessibilityPickerView accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  accessibilityPickerTimeView = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerTimeView];
  accessibilityLabel = [accessibilityPickerTimeView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  accessibilityPickerView = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  accessibilityHint = [accessibilityPickerView accessibilityHint];

  return accessibilityHint;
}

- (CGPoint)accessibilityActivationPoint
{
  accessibilityPickerTimeView = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerTimeView];
  [accessibilityPickerTimeView accessibilityActivationPoint];
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
  accessibilityPickerView = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  accessibilityTraits = [accessibilityPickerView accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityPickerTimeView
{
  accessibilityPickerView = [(PSDateTimePickerCellAccessibility *)self accessibilityPickerView];
  v3 = [accessibilityPickerView safeUIViewForKey:@"timeView"];

  return v3;
}

@end
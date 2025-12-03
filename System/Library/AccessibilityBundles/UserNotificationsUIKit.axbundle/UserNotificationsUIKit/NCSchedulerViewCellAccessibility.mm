@interface NCSchedulerViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)_accessibilityDatePickerView;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
- (unint64_t)accessibilityTraits;
@end

@implementation NCSchedulerViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCSchedulerViewCell" hasInstanceMethod:@"_buttonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_UIDatePickerCompactTimeLabel" isKindOfClass:@"_UIDatePickerCalendarTimeLabel"];
  [validationsCopy validateClass:@"_UIDatePickerCalendarTimeLabel" hasInstanceMethod:@"didTapInputLabelAtLocation:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"NCSchedulerViewCell" hasInstanceVariable:@"_label" withType:"UILabel"];
  [validationsCopy validateClass:@"NCSchedulerViewCell" hasInstanceVariable:@"_datePicker" withType:"UIDatePicker"];
  [validationsCopy validateClass:@"UIDatePicker" hasInstanceVariable:@"_pickerView" withType:"UIView<_UIDatePickerViewComponent>"];
  [validationsCopy validateClass:@"_UIDatePickerIOSCompactView" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCSchedulerViewCell" hasInstanceVariable:@"_button" withType:"NCSymbolButton"];
  [validationsCopy validateClass:@"NCSymbolButton" hasInstanceVariable:@"_symbolImageView" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  v3 = [(NCSchedulerViewCellAccessibility *)self safeValueForKey:@"_label"];
  _accessibilityDatePickerView = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityValue
{
  _accessibilityDatePickerView = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];
  accessibilityValue = [_accessibilityDatePickerView accessibilityValue];

  return accessibilityValue;
}

- (int64_t)_accessibilityExpandedStatus
{
  _accessibilityDatePickerView = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];
  _accessibilityExpandedStatus = [_accessibilityDatePickerView _accessibilityExpandedStatus];

  return _accessibilityExpandedStatus;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v20.receiver = self;
  v20.super_class = NCSchedulerViewCellAccessibility;
  accessibilityCustomActions = [(NCSchedulerViewCellAccessibility *)&v20 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  v5 = [(NCSchedulerViewCellAccessibility *)self safeValueForKey:@"_button"];
  if (v5)
  {
    _accessibilityDatePickerView = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];

    if (_accessibilityDatePickerView)
    {
      objc_initWeak(&location, self);
      objc_initWeak(&from, v5);
      v7 = objc_alloc(MEMORY[0x29EDC78E0]);
      v8 = [v5 safeValueForKey:@"_symbolImageView"];
      accessibilityLabel = [v8 accessibilityLabel];
      v12 = MEMORY[0x29EDCA5F8];
      v13 = 3221225472;
      v14 = __62__NCSchedulerViewCellAccessibility_accessibilityCustomActions__block_invoke;
      v15 = &unk_29F316FD8;
      objc_copyWeak(&v16, &location);
      objc_copyWeak(&v17, &from);
      v10 = [v7 initWithName:accessibilityLabel actionHandler:&v12];

      [array axSafelyAddObject:{v10, v12, v13, v14, v15}];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  return array;
}

uint64_t __62__NCSchedulerViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _buttonPressed:v3];

  return 1;
}

- (unint64_t)accessibilityTraits
{
  _accessibilityDatePickerView = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];
  accessibilityTraits = [_accessibilityDatePickerView accessibilityTraits];
  v4 = *MEMORY[0x29EDC7F70];

  return v4 | accessibilityTraits;
}

- (BOOL)accessibilityActivate
{
  _accessibilityDatePickerView = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];

  if (_accessibilityDatePickerView)
  {
    _accessibilityDatePickerView2 = [(NCSchedulerViewCellAccessibility *)self _accessibilityDatePickerView];
    v5 = [_accessibilityDatePickerView2 safeValueForKey:@"timeView"];

    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3221225472;
    v11 = __57__NCSchedulerViewCellAccessibility_accessibilityActivate__block_invoke;
    v12 = &unk_29F316E90;
    v13 = v5;
    v6 = v5;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

    return 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NCSchedulerViewCellAccessibility;
    return [(NCSchedulerViewCellAccessibility *)&v8 accessibilityActivate];
  }
}

uint64_t __57__NCSchedulerViewCellAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];
  AX_CGRectGetCenter();

  return [v1 didTapInputLabelAtLocation:?];
}

- (id)_accessibilityDatePickerView
{
  v3 = [(NCSchedulerViewCellAccessibility *)self safeValueForKey:@"_datePicker"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(NCSchedulerViewCellAccessibility *)self safeValueForKeyPath:@"_datePicker._pickerView"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
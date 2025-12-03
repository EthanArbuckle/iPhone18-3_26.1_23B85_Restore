@interface MTAAlarmTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_axEnabledSwitch;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axSetDetailLabelForAlarm:(id)alarm;
@end

@implementation MTAAlarmTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAlarm" hasInstanceMethod:@"repeatSchedule" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MTAlarm" hasInstanceMethod:@"isSleepAlarm" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTAlarm" hasInstanceMethod:@"displayTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewCell" hasInstanceMethod:@"digitalClockLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewCell" hasInstanceMethod:@"enabledSwitch" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewCell" hasInstanceMethod:@"refreshUI:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"showEditViewForRow:" withFullSignature:{"v", "q", 0}];
}

- (CGPoint)accessibilityActivationPoint
{
  _axEnabledSwitch = [(MTAAlarmTableViewCellAccessibility *)self _axEnabledSwitch];
  if ([_axEnabledSwitch _accessibilityViewIsVisible])
  {
    [_axEnabledSwitch accessibilityActivationPoint];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTAAlarmTableViewCellAccessibility;
    [(MTAAlarmTableViewCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = MTAAlarmTableViewCellAccessibility;
  accessibilityTraits = [(MTAAlarmTableViewCellAccessibility *)&v8 accessibilityTraits];
  _axEnabledSwitch = [(MTAAlarmTableViewCellAccessibility *)self _axEnabledSwitch];
  _accessibilityViewIsVisible = [_axEnabledSwitch _accessibilityViewIsVisible];

  v6 = *MEMORY[0x29EDC75A8];
  if (!_accessibilityViewIsVisible)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

- (id)accessibilityHint
{
  if ([(MTAAlarmTableViewCellAccessibility *)self _axIsEditing])
  {
    accessibilityHint = accessibilityLocalizedString(@"alarm.edit.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTAAlarmTableViewCellAccessibility;
    accessibilityHint = [(MTAAlarmTableViewCellAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)accessibilityValue
{
  if ([(MTAAlarmTableViewCellAccessibility *)self _axIsEditing])
  {
    v6.receiver = self;
    v6.super_class = MTAAlarmTableViewCellAccessibility;
    accessibilityValue = [(MTAAlarmTableViewCellAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    _axEnabledSwitch = [(MTAAlarmTableViewCellAccessibility *)self _axEnabledSwitch];
    accessibilityValue = [_axEnabledSwitch accessibilityValue];
  }

  return accessibilityValue;
}

- (void)_axSetDetailLabelForAlarm:(id)alarm
{
  alarmCopy = alarm;
  [alarmCopy safeUnsignedIntegerForKey:@"repeatSchedule"];
  v5 = DateMaskToString();
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __64__MTAAlarmTableViewCellAccessibility__axSetDetailLabelForAlarm___block_invoke;
  v8[3] = &unk_29F2DAAD8;
  objc_copyWeak(&v11, &location);
  v6 = alarmCopy;
  v9 = v6;
  v7 = v5;
  v10 = v7;
  [(MTAAlarmTableViewCellAccessibility *)self _setAccessibilityLabelBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __64__MTAAlarmTableViewCellAccessibility__axSetDetailLabelForAlarm___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained safeUIViewForKey:@"digitalClockLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [*(a1 + 32) safeBoolForKey:@"isSleepAlarm"];
  if (v5)
  {
    v6 = &stru_2A223F8B8;
  }

  else
  {
    v6 = [*(a1 + 32) safeStringForKey:@"displayTitle"];
  }

  v9 = *(a1 + 40);
  v7 = __AXStringForVariables();
  if ((v5 & 1) == 0)
  {
  }

  return v7;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x29EDC78E0]);
  v5 = accessibilityLocalizedString(@"alarm.edit");
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __64__MTAAlarmTableViewCellAccessibility_accessibilityCustomActions__block_invoke;
  v11 = &unk_29F2DAB28;
  objc_copyWeak(&v12, &location);
  v6 = [v4 initWithName:v5 actionHandler:&v8];

  [array axSafelyAddObject:{v6, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return array;
}

uint64_t __64__MTAAlarmTableViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityIndexPath];
  [v2 row];
  v3 = [WeakRetained _accessibilityScrollParent];
  v4 = [v3 _accessibilityViewController];

  v5 = v4;
  AXPerformSafeBlock();

  return 1;
}

- (id)_axEnabledSwitch
{
  objc_opt_class();
  v3 = [(MTAAlarmTableViewCellAccessibility *)self safeValueForKey:@"enabledSwitch"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end
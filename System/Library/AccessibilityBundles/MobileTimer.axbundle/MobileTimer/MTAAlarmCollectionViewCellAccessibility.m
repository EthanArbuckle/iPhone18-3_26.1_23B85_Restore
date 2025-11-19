@interface MTAAlarmCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axDeleteAlarm;
- (BOOL)_axToggleSwitch;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axModifyDeleteButton;
@end

@implementation MTAAlarmCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"repeatLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"soundLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"enableSwitch" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceVariable:@"_editing" withType:"B"];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"deleteTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MTAAlarmCollectionViewCell" hasInstanceMethod:@"deleteButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTAAlarmCollectionViewCellAccessibility;
  [(MTAAlarmCollectionViewCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTAAlarmCollectionViewCellAccessibility *)self _axModifyDeleteButton];
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(MTAAlarmCollectionViewCellAccessibility *)self safeValueForKey:@"deleteButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)accessibilityValue
{
  if ([(MTAAlarmCollectionViewCellAccessibility *)self _axIsEditing])
  {
    v6.receiver = self;
    v6.super_class = MTAAlarmCollectionViewCellAccessibility;
    v3 = [(MTAAlarmCollectionViewCellAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    v4 = [(MTAAlarmCollectionViewCellAccessibility *)self safeValueForKey:@"enableSwitch"];
    v3 = [v4 accessibilityValue];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  if ([(MTAAlarmCollectionViewCellAccessibility *)self _axIsEditing])
  {
    v6.receiver = self;
    v6.super_class = MTAAlarmCollectionViewCellAccessibility;
    return [(MTAAlarmCollectionViewCellAccessibility *)&v6 accessibilityTraits];
  }

  else
  {
    v4 = [(MTAAlarmCollectionViewCellAccessibility *)self safeValueForKey:@"enableSwitch"];
    v5 = [v4 accessibilityTraits];

    return v5;
  }
}

- (id)accessibilityHint
{
  if ([(MTAAlarmCollectionViewCellAccessibility *)self _axIsEditing])
  {
    v3 = accessibilityLocalizedString(@"alarm.edit.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTAAlarmCollectionViewCellAccessibility;
    v3 = [(MTAAlarmCollectionViewCellAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(MTAAlarmCollectionViewCellAccessibility *)self _axIsEditing])
  {
    v10.receiver = self;
    v10.super_class = MTAAlarmCollectionViewCellAccessibility;
    [(MTAAlarmCollectionViewCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  else
  {
    v5 = [(MTAAlarmCollectionViewCellAccessibility *)self safeValueForKey:@"enableSwitch"];
    [v5 accessibilityActivationPoint];
    v7 = v6;
    v9 = v8;

    v3 = v7;
    v4 = v9;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (id)accessibilityCustomActions
{
  v12[2] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityLocalizedString(@"alarm.delete");
  v5 = [v3 initWithName:v4 target:self selector:sel__axDeleteAlarm];

  [v5 setSortPriority:*MEMORY[0x29EDC72F8]];
  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v7 = accessibilityLocalizedString(@"alarm.toggle");
  v8 = [v6 initWithName:v7 target:self selector:sel__axToggleSwitch];

  v12[0] = v5;
  v12[1] = v8;
  v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (void)_axModifyDeleteButton
{
  v2 = [(MTAAlarmCollectionViewCellAccessibility *)self safeValueForKey:@"deleteButton"];
  [v2 setAccessibilityIdentifier:@"Delete"];
}

- (BOOL)_axDeleteAlarm
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __57__MTAAlarmCollectionViewCellAccessibility__axDeleteAlarm__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deleteTapped:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (BOOL)_axToggleSwitch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  AXPerformSafeBlock();
  v2 = *(v7 + 24);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __58__MTAAlarmCollectionViewCellAccessibility__axToggleSwitch__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeValueForKey:@"enableSwitch"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setOn:objc_msgSend(v4 animated:{"isOn") ^ 1, 1}];
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

@end
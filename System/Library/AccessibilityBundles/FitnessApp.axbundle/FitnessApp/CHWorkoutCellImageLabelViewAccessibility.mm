@interface CHWorkoutCellImageLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CHWorkoutCellImageLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutCellImageLabelView" hasSwiftField:@"achievementCount" withSwiftType:"Int"];
  [validationsCopy validateClass:@"CHWorkoutCellImageLabelView" hasSwiftFieldOfAnyClass:@"workoutImageView"];
  [validationsCopy validateClass:@"CHWorkoutCellImageLabelView" hasSwiftFieldOfAnyClass:@"labelStackView"];
  [validationsCopy validateClass:@"CHWorkoutCellImageLabelView" hasSwiftField:@"goalLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutCellImageLabelView" hasSwiftFieldOfAnyClass:@"badgeCountLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = CHWorkoutCellImageLabelViewAccessibility;
  [(CHWorkoutCellImageLabelViewAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(CHWorkoutCellImageLabelViewAccessibility *)self safeSwiftValueForKey:@"workoutImageView"];
  [v3 setIsAccessibilityElement:1];

  v4 = [(CHWorkoutCellImageLabelViewAccessibility *)self safeSwiftValueForKey:@"labelStackView"];
  [v4 _accessibilitySetSortPriority:1000];

  v5 = [(CHWorkoutCellImageLabelViewAccessibility *)self safeSwiftValueForKey:@"goalLabel"];
  objc_initWeak(&location, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __86__CHWorkoutCellImageLabelViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10[3] = &unk_1C448;
  objc_copyWeak(&v11, &location);
  [v5 _setAccessibilityLabelBlock:v10];
  objc_initWeak(&from, self);
  v6 = [(CHWorkoutCellImageLabelViewAccessibility *)self safeSwiftValueForKey:@"badgeCountLabel"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __86__CHWorkoutCellImageLabelViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v7[3] = &unk_1C448;
  objc_copyWeak(&v8, &from);
  [v6 setAccessibilityLabelBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __86__CHWorkoutCellImageLabelViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained text];

  if ([v2 containsString:@":"])
  {
    v3 = [v2 stringByAppendingString:@":00"];

    v2 = v3;
  }

  v4 = AXLocalizeDurationTime();

  return v4;
}

id __86__CHWorkoutCellImageLabelViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v2 = accessibilityLocalizedString(@"award.format");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeSwiftIntForKey:@"achievementCount"];
  v4 = AXCFormattedString();

  return v4;
}

@end
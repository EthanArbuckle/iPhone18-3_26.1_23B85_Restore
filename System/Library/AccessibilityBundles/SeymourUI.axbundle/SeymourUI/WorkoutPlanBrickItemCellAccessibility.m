@interface WorkoutPlanBrickItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WorkoutPlanBrickItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"swapButton" withSwiftType:"IconButton"];
  [v3 validateClass:@"SeymourUI.IconButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"actionButtonContainerView" withSwiftType:"ActionButtonContainerView"];
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"SeymourUI.WorkoutPlanBrickItemCell" isKindOfClass:@"UICollectionViewCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = WorkoutPlanBrickItemCellAccessibility;
  [(WorkoutPlanBrickItemCellAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(WorkoutPlanBrickItemCellAccessibility *)self safeValueForKey:@"contentView"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityShouldGroupAccessibilityChildrenBlock:&__block_literal_global_0];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __83__WorkoutPlanBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v6[3] = &unk_29F2F66B8;
  objc_copyWeak(&v7, &location);
  [v3 setAccessibilityLabelBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __83__WorkoutPlanBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v4[3] = &unk_29F2F6708;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityCustomActionsBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __83__WorkoutPlanBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeSwiftValueForKey:@"subtitleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 safeSwiftValueForKey:@"titleLabel"];
  v7 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  v10 = _accessibilityReplaceStylsticBulletsForSpeaking(v8, v9);

  return v10;
}

id __83__WorkoutPlanBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v16 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeSwiftValueForKey:@"swapButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLocalizedString(@"workout.button.choose.workout");
  if (v4 && ([v4 isHidden] & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __83__WorkoutPlanBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
    v14 = &unk_29F2F66E0;
    v15 = v4;
    v8 = [v7 initWithName:v5 actionHandler:&v11];
    v17[0] = v8;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(WorkoutPlanBrickItemCellAccessibility *)self safeSwiftValueForKey:@"actionButtonContainerView"];
  v5 = [(WorkoutPlanBrickItemCellAccessibility *)self safeValueForKey:@"contentView"];
  [v3 axSafelyAddObject:v5];
  [v3 axSafelyAddObject:v4];

  return v3;
}

@end
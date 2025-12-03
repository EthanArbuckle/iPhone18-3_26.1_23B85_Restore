@interface VideoConferenceControlCenterModuleEffectControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation VideoConferenceControlCenterModuleEffectControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"isExpanded" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"buttonTitle" withSwiftType:"String"];
  [validationsCopy validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"controlType" withSwiftType:"ControlType"];
  [validationsCopy validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"expandChevron" withSwiftType:"UIButton"];
}

- (id)accessibilityLabel
{
  v3 = [(VideoConferenceControlCenterModuleEffectControlAccessibility *)self safeSwiftStringForKey:@"buttonTitle"];
  v4 = v3;
  if (v3)
  {
    accessibilityLabel = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VideoConferenceControlCenterModuleEffectControlAccessibility;
    accessibilityLabel = [(VideoConferenceControlCenterModuleEffectControlAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

- (id)accessibilityCustomActions
{
  v18.receiver = self;
  v18.super_class = VideoConferenceControlCenterModuleEffectControlAccessibility;
  accessibilityCustomActions = [(VideoConferenceControlCenterModuleEffectControlAccessibility *)&v18 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  v5 = [(VideoConferenceControlCenterModuleEffectControlAccessibility *)self safeSwiftValueForKey:@"controlType"];
  safeSwiftEnumCase = [v5 safeSwiftEnumCase];
  v7 = [safeSwiftEnumCase isEqualToString:@"expandable"];

  if (v7)
  {
    if (!array)
    {
      array = [MEMORY[0x29EDB8DE8] array];
    }

    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityLocalizedString(@"expand.button.label");
    v12 = MEMORY[0x29EDCA5F8];
    v13 = 3221225472;
    v14 = __90__VideoConferenceControlCenterModuleEffectControlAccessibility_accessibilityCustomActions__block_invoke;
    v15 = &unk_29F31B2D0;
    objc_copyWeak(&v16, &location);
    v10 = [v8 initWithName:v9 actionHandler:&v12];

    [array axSafelyAddObject:{v10, v12, v13, v14, v15}];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return array;
}

uint64_t __90__VideoConferenceControlCenterModuleEffectControlAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __90__VideoConferenceControlCenterModuleEffectControlAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeSwiftValueForKey:@"expandChevron"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 sendActionsForControlEvents:64];
  LODWORD(WeakRetained) = *MEMORY[0x29EDC7F10];
  v5 = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityPostNotification(WeakRetained, v5);
}

@end
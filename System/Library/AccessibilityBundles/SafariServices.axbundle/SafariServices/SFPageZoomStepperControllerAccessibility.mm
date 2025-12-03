@interface SFPageZoomStepperControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateButtonsEnabledOnMainQueueWithZoomFactor:(double)factor;
- (void)prepareStepper:(id)stepper;
@end

@implementation SFPageZoomStepperControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFPageZoomStepperController" hasInstanceVariable:@"_stepper" withType:"<_SFSettingsAlertStepperConfiguration>"];
  [validationsCopy validateClass:@"SFPageZoomStepperController" hasInstanceVariable:@"_percentFormatter" withType:"NSNumberFormatter"];
  [validationsCopy validateClass:@"SFPageZoomStepperController" hasInstanceMethod:@"prepareStepper:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFPageZoomStepperController" hasInstanceMethod:@"_updateButtonsEnabledOnMainQueueWithZoomFactor:" withFullSignature:{"v", "d", 0}];
}

- (void)prepareStepper:(id)stepper
{
  v8.receiver = self;
  v8.super_class = SFPageZoomStepperControllerAccessibility;
  [(SFPageZoomStepperControllerAccessibility *)&v8 prepareStepper:stepper];
  v4 = accessibilitySafariServicesLocalizedString(@"page.zoom");
  v5 = [(SFPageZoomStepperControllerAccessibility *)self safeUIViewForKey:@"_stepper"];
  [v5 setAccessibilityLabel:v4];

  v6 = [(SFPageZoomStepperControllerAccessibility *)self safeUIViewForKey:@"_stepper"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __59__SFPageZoomStepperControllerAccessibility_prepareStepper___block_invoke;
  v7[3] = &unk_29F2F29B8;
  v7[4] = self;
  [v6 _setAccessibilityCustomActionsBlock:v7];
}

id __59__SFPageZoomStepperControllerAccessibility_prepareStepper___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDC78E0]);
  v3 = accessibilitySafariServicesLocalizedString(@"reset.action");
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __59__SFPageZoomStepperControllerAccessibility_prepareStepper___block_invoke_2;
  v7[3] = &unk_29F2F2990;
  v7[4] = *(a1 + 32);
  v4 = [v2 initWithName:v3 actionHandler:v7];
  v8[0] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];

  return v5;
}

- (void)_updateButtonsEnabledOnMainQueueWithZoomFactor:(double)factor
{
  v10.receiver = self;
  v10.super_class = SFPageZoomStepperControllerAccessibility;
  [(SFPageZoomStepperControllerAccessibility *)&v10 _updateButtonsEnabledOnMainQueueWithZoomFactor:?];
  objc_opt_class();
  v5 = [(SFPageZoomStepperControllerAccessibility *)self safeValueForKey:@"_percentFormatter"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [MEMORY[0x29EDBA070] numberWithDouble:factor];
  v8 = [v6 stringFromNumber:v7];
  v9 = [(SFPageZoomStepperControllerAccessibility *)self safeUIViewForKey:@"_stepper"];
  [v9 setAccessibilityValue:v8];
}

@end
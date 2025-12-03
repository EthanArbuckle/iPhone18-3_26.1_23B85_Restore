@interface SFReaderTextSizeStepperControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateStepperControls:(id)controls;
- (void)prepareStepper:(id)stepper;
@end

@implementation SFReaderTextSizeStepperControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFReaderTextSizeStepperController" hasInstanceMethod:@"prepareStepper:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFReaderTextSizeStepperController" hasInstanceMethod:@"_updateStepperControls:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WBSReaderConfigurationManager" hasInstanceMethod:@"effectiveTextZoomIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SFReaderTextSizeStepperController" hasInstanceVariable:@"_readerContext" withType:"<SFReaderContext>"];
  [validationsCopy validateProtocol:@"SFReaderContext" hasMethod:@"configurationManager" isInstanceMethod:1 isRequired:1];
}

- (void)prepareStepper:(id)stepper
{
  v5.receiver = self;
  v5.super_class = SFReaderTextSizeStepperControllerAccessibility;
  stepperCopy = stepper;
  [(SFReaderTextSizeStepperControllerAccessibility *)&v5 prepareStepper:stepperCopy];
  v4 = accessibilitySafariServicesLocalizedString(@"text.size");
  [stepperCopy setAccessibilityLabel:{v4, v5.receiver, v5.super_class}];
}

- (void)_updateStepperControls:(id)controls
{
  controlsCopy = controls;
  v12.receiver = self;
  v12.super_class = SFReaderTextSizeStepperControllerAccessibility;
  [(SFReaderTextSizeStepperControllerAccessibility *)&v12 _updateStepperControls:controlsCopy];
  v5 = [(SFReaderTextSizeStepperControllerAccessibility *)self safeValueForKey:@"_readerContext"];
  v6 = [v5 safeValueForKey:@"configurationManager"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 safeIntegerForKey:@"effectiveTextZoomIndex"];
  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilitySafariServicesLocalizedString(@"text.zoom.level");
  v11 = [v9 localizedStringWithFormat:v10, v8];
  [controlsCopy setAccessibilityValue:v11];
}

@end
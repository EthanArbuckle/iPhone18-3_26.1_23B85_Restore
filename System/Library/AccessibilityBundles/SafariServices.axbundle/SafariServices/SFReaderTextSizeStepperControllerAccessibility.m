@interface SFReaderTextSizeStepperControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateStepperControls:(id)a3;
- (void)prepareStepper:(id)a3;
@end

@implementation SFReaderTextSizeStepperControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFReaderTextSizeStepperController" hasInstanceMethod:@"prepareStepper:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SFReaderTextSizeStepperController" hasInstanceMethod:@"_updateStepperControls:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"WBSReaderConfigurationManager" hasInstanceMethod:@"effectiveTextZoomIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SFReaderTextSizeStepperController" hasInstanceVariable:@"_readerContext" withType:"<SFReaderContext>"];
  [v3 validateProtocol:@"SFReaderContext" hasMethod:@"configurationManager" isInstanceMethod:1 isRequired:1];
}

- (void)prepareStepper:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFReaderTextSizeStepperControllerAccessibility;
  v3 = a3;
  [(SFReaderTextSizeStepperControllerAccessibility *)&v5 prepareStepper:v3];
  v4 = accessibilitySafariServicesLocalizedString(@"text.size");
  [v3 setAccessibilityLabel:{v4, v5.receiver, v5.super_class}];
}

- (void)_updateStepperControls:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFReaderTextSizeStepperControllerAccessibility;
  [(SFReaderTextSizeStepperControllerAccessibility *)&v12 _updateStepperControls:v4];
  v5 = [(SFReaderTextSizeStepperControllerAccessibility *)self safeValueForKey:@"_readerContext"];
  v6 = [v5 safeValueForKey:@"configurationManager"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 safeIntegerForKey:@"effectiveTextZoomIndex"];
  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilitySafariServicesLocalizedString(@"text.zoom.level");
  v11 = [v9 localizedStringWithFormat:v10, v8];
  [v4 setAccessibilityValue:v11];
}

@end
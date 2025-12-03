@interface _SFPageFormatMenuControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_readerTextSizeAlertItem;
- (void)_didTapButtonInStepper:(id)stepper;
@end

@implementation _SFPageFormatMenuControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFPageFormatMenuController" hasInstanceMethod:@"_readerTextSizeAlertItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SFPageFormatMenuController" hasInstanceMethod:@"_didTapButtonInStepper:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_SFPageFormatMenuController" hasInstanceVariable:@"_viewController" withType:"UIViewController"];
  [validationsCopy validateClass:@"SFBrowsingAssistant" hasProperty:@"stepperFocused" withType:"B"];
}

- (id)_readerTextSizeAlertItem
{
  v5.receiver = self;
  v5.super_class = _SFPageFormatMenuControllerAccessibility;
  _readerTextSizeAlertItem = [(_SFPageFormatMenuControllerAccessibility *)&v5 _readerTextSizeAlertItem];
  v3 = accessibilitySafariServicesLocalizedString(@"page.zoom");
  [_readerTextSizeAlertItem setAccessibilityLabel:v3];

  return _readerTextSizeAlertItem;
}

- (void)_didTapButtonInStepper:(id)stepper
{
  stepperCopy = stepper;
  v5 = [(_SFPageFormatMenuControllerAccessibility *)self safeValueForKeyPath:@"_viewController"];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __67___SFPageFormatMenuControllerAccessibility__didTapButtonInStepper___block_invoke;
  v11 = &unk_29F2F2968;
  v6 = v5;
  v12 = v6;
  AXPerformSafeBlock();
  if (!UIAccessibilityIsVoiceOverRunning() && (_UIAccessibilityFullKeyboardAccessEnabled() & 1) == 0 && !UIAccessibilityIsSwitchControlRunning())
  {
    v7.receiver = self;
    v7.super_class = _SFPageFormatMenuControllerAccessibility;
    [(_SFPageFormatMenuControllerAccessibility *)&v7 _didTapButtonInStepper:stepperCopy];
  }
}

@end
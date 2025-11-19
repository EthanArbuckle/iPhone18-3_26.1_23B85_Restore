@interface _SFPageFormatMenuControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_readerTextSizeAlertItem;
- (void)_didTapButtonInStepper:(id)a3;
@end

@implementation _SFPageFormatMenuControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFPageFormatMenuController" hasInstanceMethod:@"_readerTextSizeAlertItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SFPageFormatMenuController" hasInstanceMethod:@"_didTapButtonInStepper:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFPageFormatMenuController" hasInstanceVariable:@"_viewController" withType:"UIViewController"];
  [v3 validateClass:@"SFBrowsingAssistant" hasProperty:@"stepperFocused" withType:"B"];
}

- (id)_readerTextSizeAlertItem
{
  v5.receiver = self;
  v5.super_class = _SFPageFormatMenuControllerAccessibility;
  v2 = [(_SFPageFormatMenuControllerAccessibility *)&v5 _readerTextSizeAlertItem];
  v3 = accessibilitySafariServicesLocalizedString(@"page.zoom");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (void)_didTapButtonInStepper:(id)a3
{
  v4 = a3;
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
    [(_SFPageFormatMenuControllerAccessibility *)&v7 _didTapButtonInStepper:v4];
  }
}

@end
@interface AFUISiriCompactViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformMagicTap;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetLabelForSessionState:(int64_t)state;
- (void)_constructAndAddBugReportButtonWithImage:(id)image;
- (void)_setupContentViews;
- (void)accessibilityElementDidLoseFocus;
- (void)dealloc;
- (void)setSiriSessionState:(int64_t)state;
@end

@implementation AFUISiriCompactViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_siriContentDelegate" withType:"<AFUISiriContentDelegate>"];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_orbView" withType:"SUICOrbView"];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_reportBugButton" withType:"SiriUIContentButton"];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceMethod:@"setSiriSessionState:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceMethod:@"_setupContentViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceMethod:@"_constructAndAddBugReportButtonWithImage:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AFUISiriViewController" hasInstanceMethod:@"siriContentDidReceiveOrbTappedAction:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AFUISiriViewController" hasInstanceMethod:@"stopRequestWithOptions:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AFUISiriViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriViewController" hasInstanceMethod:@"_session" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"cancelRequest" withFullSignature:{"v", 0}];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SiriPresentationViewController" hasInstanceMethod:@"dismissSiriViewController:withReason:" withFullSignature:{"v", "@", "q", 0}];
  }

  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_lockContainerView" withType:"AFUIPasscodeContainerView"];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_tamaleView" withType:"SiriSharedUITamaleView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = AFUISiriCompactViewAccessibility;
  [(AFUISiriCompactViewAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  [(AFUISiriCompactViewAccessibility *)self _axSetLabelForSessionState:[(AFUISiriCompactViewAccessibility *)self safeIntegerForKey:@"_siriSessionState"]];
  v3 = [(AFUISiriCompactViewAccessibility *)self safeValueForKey:@"_reportBugButton"];
  v4 = AssistantUIAccessibilityLocalizedString(@"assistant.reportbug.label");
  [v3 setAccessibilityLabel:v4];

  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v5 = [(AFUISiriCompactViewAccessibility *)self safeValueForKey:@"_tamaleView"];
  v6 = v5;
  if (v5 && [v5 _accessibilityViewIsVisible])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    accessibilityElements = [(AFUISiriCompactViewAccessibility *)self accessibilityElements];
    v8 = [accessibilityElements countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (v12 != v6)
          {
            [v12 setAccessibilityElementsHidden:1];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [accessibilityElements countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (BOOL)accessibilityPerformMagicTap
{
  v4 = [(AFUISiriCompactViewAccessibility *)self safeValueForKey:@"_siriContentDelegate"];
  v2 = v4;
  AXPerformSafeBlock();

  return 1;
}

- (void)accessibilityElementDidLoseFocus
{
  if (_AXSVoiceOverTouchEnabled())
  {
    AXPerformSafeBlock();
  }
}

void __68__AFUISiriCompactViewAccessibility_accessibilityElementDidLoseFocus__block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(0x1645u, 0);
  UIAccessibilityPostNotification(0x1647u, 0);
  v2 = [*(a1 + 32) safeValueForKey:@"_lockContainerView"];
  v3 = [v2 _accessibilityViewIsVisible];

  if ((v3 & 1) == 0)
  {
    v6 = [*(a1 + 32) safeValueForKey:@"_siriContentDelegate"];
    v4 = [v6 safeValueForKey:@"_session"];
    [v4 _accessibilitySetBoolValue:1 forKey:@"VoiceOverCancelRequestInProgress"];
    [v6 stopRequestWithOptions:0];
    v5 = [v4 safeValueForKey:@"cancelRequest"];
    [v4 _accessibilitySetBoolValue:0 forKey:@"VoiceOverCancelRequestInProgress"];
  }
}

void __62__AFUISiriCompactViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_siriContentDelegate"];
  v1 = [v2 safeValueForKey:@"delegate"];
  [v1 dismissSiriViewController:v2 withReason:23];
}

- (void)_axSetLabelForSessionState:(int64_t)state
{
  argument = [(AFUISiriCompactViewAccessibility *)self safeValueForKey:@"_orbView"];
  if (state == 1)
  {
    _UIAccessibilityBlockPostingOfNotification();
    _UIAccessibilityBlockPostingOfNotification();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], argument);
    [argument setAccessibilityLabel:0];
    [argument setAccessibilityHint:0];
    [argument setAccessibilityIdentifier:@"Listening"];
    [argument setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
  }

  else
  {
    AssistantUIAccessibilityLocalizedString(@"listen.button.label");
    if (state == 2)
      v4 = {;
      [argument setAccessibilityLabel:v4];

      v5 = @"listen.button.hint.thinking";
    }

    else
      v6 = {;
      [argument setAccessibilityLabel:v6];

      v5 = @"listen.button.hint.idle";
    }

    v7 = AssistantUIAccessibilityLocalizedString(v5);
    [argument setAccessibilityHint:v7];

    [argument setAccessibilityIdentifier:@"Listen"];
    [argument setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70]];
    _UIAccessibilityUnblockPostingOfNotification();
    _UIAccessibilityUnblockPostingOfNotification();
  }

  v8 = *MEMORY[0x29EDC7ED8];
  _AXIgnoreNextNotification();
}

- (void)setSiriSessionState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = AFUISiriCompactViewAccessibility;
  [(AFUISiriCompactViewAccessibility *)&v5 setSiriSessionState:?];
  [(AFUISiriCompactViewAccessibility *)self _axSetLabelForSessionState:state];
}

- (void)_setupContentViews
{
  v3.receiver = self;
  v3.super_class = AFUISiriCompactViewAccessibility;
  [(AFUISiriCompactViewAccessibility *)&v3 _setupContentViews];
  [(AFUISiriCompactViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_constructAndAddBugReportButtonWithImage:(id)image
{
  v4.receiver = self;
  v4.super_class = AFUISiriCompactViewAccessibility;
  [(AFUISiriCompactViewAccessibility *)&v4 _constructAndAddBugReportButtonWithImage:image];
  [(AFUISiriCompactViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)dealloc
{
  _UIAccessibilityUnblockPostingOfNotification();
  _UIAccessibilityUnblockPostingOfNotification();
  UIAccessibilityPostNotification(0x1645u, 0);
  UIAccessibilityPostNotification(0x1647u, 0);
  v3.receiver = self;
  v3.super_class = AFUISiriCompactViewAccessibility;
  [(AFUISiriCompactViewAccessibility *)&v3 dealloc];
}

@end
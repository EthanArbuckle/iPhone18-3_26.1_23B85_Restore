@interface _HTUIEvaluationViewControllerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsStateInBetween;
- (BOOL)_axIsStateInProgress;
- (id)_axGuidanceTitle;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axBeforePlayingTones;
- (void)_axSetupSubviews;
- (void)_axStopPlayingTones;
- (void)setupSubviews;
- (void)transitionToNextState;
@end

@implementation _HTUIEvaluationViewControllerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"setupSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"transitionToNextState" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"updateProgressTo:immediately:" withFullSignature:{"v", "d", "B", 0}];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"didTapHear" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"stageTitle"];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"stageBody"];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"guidanceTitle"];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"completionLabel"];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"tapHearButton"];
  [v3 validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftField:@"state" withSwiftType:"State"];
  [v3 validateSwiftEnum:@"HearingTestUI.HTUIEvaluationViewController[class].View[class].State"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = _HTUIEvaluationViewControllerViewAccessibility;
  [(_HTUIEvaluationViewControllerViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(_HTUIEvaluationViewControllerViewAccessibility *)self _axSetupSubviews];
}

- (id)_axGuidanceTitle
{
  v3 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"stageTitle"];
  v4 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"stageBody"];
  v5 = accessibilityLocalizedString(@"HEARING_TEST_SESSION_GUIDANCE_TITLE");
  [(_HTUIEvaluationViewControllerViewAccessibility *)self _axProgress];
  if (v6 <= 0.0)
  {
    v8 = &stru_2A21BD580;
  }

  else
  {
    v7 = accessibilityLocalizedString(@"AX_HEARING_TEST_FINISHED_PERCENTAGE");
    [(_HTUIEvaluationViewControllerViewAccessibility *)self _axProgress];
    v12 = AXFormatFloatWithPercentage();
    v8 = AXCFormattedString();
  }

  v9 = [v3 text];
  v13 = [v4 text];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (BOOL)_axIsStateInBetween
{
  v2 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"state"];
  v3 = [v2 safeSwiftEnumCase];
  v4 = [v3 isEqualToString:@"inBetween"];

  return v4;
}

- (BOOL)_axIsStateInProgress
{
  v2 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"state"];
  v3 = [v2 safeSwiftEnumCase];
  v4 = [v3 isEqualToString:@"inProgress"];

  return v4;
}

- (id)accessibilityElements
{
  v10[1] = *MEMORY[0x29EDCA608];
  if (![(_HTUIEvaluationViewControllerViewAccessibility *)self _axIsStateInProgress])
  {
    goto LABEL_6;
  }

  v3 = [(_HTUIEvaluationViewControllerViewAccessibility *)self _axTapHearButton];
  v4 = v3;
  if (!v3 || ([v3 alpha], v5 == 0.0) || objc_msgSend(v4, "isHidden"))
  {

LABEL_6:
    v9.receiver = self;
    v9.super_class = _HTUIEvaluationViewControllerViewAccessibility;
    v6 = [(_HTUIEvaluationViewControllerViewAccessibility *)&v9 accessibilityElements];
    goto LABEL_7;
  }

  v10[0] = v4;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];

LABEL_7:
  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)setupSubviews
{
  v3.receiver = self;
  v3.super_class = _HTUIEvaluationViewControllerViewAccessibility;
  [(_HTUIEvaluationViewControllerViewAccessibility *)&v3 setupSubviews];
  [(_HTUIEvaluationViewControllerViewAccessibility *)self _axSetupSubviews];
}

- (void)transitionToNextState
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_29BE6E000, a2, OS_LOG_TYPE_DEBUG, "transitionToNextState: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

- (void)_axBeforePlayingTones
{
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [_HTUIEvaluationViewControllerViewAccessibility _axBeforePlayingTones];
  }

  UIAccessibilityPostNotification(0x418u, 0);
}

- (void)_axStopPlayingTones
{
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [_HTUIEvaluationViewControllerViewAccessibility _axStopPlayingTones];
  }

  UIAccessibilityPostNotification(0x419u, 0);
}

- (void)_axSetupSubviews
{
  v3 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"guidanceTitle"];
  [v3 setIsAccessibilityElement:0];
  v4 = [(_HTUIEvaluationViewControllerViewAccessibility *)self _axTapHearButton];
  [v4 setAccessibilityLabel:&stru_2A21BD580];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDBDB30]];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __66___HTUIEvaluationViewControllerViewAccessibility__axSetupSubviews__block_invoke;
  v7[3] = &unk_29F2C57E0;
  v7[4] = self;
  [v4 setAccessibilityActivateBlock:v7];
  v5 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"completionLabel"];
  v6 = accessibilityLocalizedString(@"HEARING_TEST_SESSION_DONE_TITLE");
  [v5 setAccessibilityLabel:v6];
}

- (void)updateProgressTo:(os_log_t)log immediately:(double)a2 .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_29BE6E000, log, OS_LOG_TYPE_DEBUG, "updateProgressToValue %f", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end
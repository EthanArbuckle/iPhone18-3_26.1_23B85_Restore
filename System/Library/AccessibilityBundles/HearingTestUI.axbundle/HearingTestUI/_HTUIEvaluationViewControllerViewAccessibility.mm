@interface _HTUIEvaluationViewControllerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"setupSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"transitionToNextState" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"updateProgressTo:immediately:" withFullSignature:{"v", "d", "B", 0}];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasInstanceMethod:@"didTapHear" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"stageTitle"];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"stageBody"];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"guidanceTitle"];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"completionLabel"];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftFieldOfAnyClass:@"tapHearButton"];
  [validationsCopy validateClass:@"_TtCC13HearingTestUI28HTUIEvaluationViewController4View" hasSwiftField:@"state" withSwiftType:"State"];
  [validationsCopy validateSwiftEnum:@"HearingTestUI.HTUIEvaluationViewController[class].View[class].State"];
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

  text = [v3 text];
  text2 = [v4 text];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (BOOL)_axIsStateInBetween
{
  v2 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"state"];
  safeSwiftEnumCase = [v2 safeSwiftEnumCase];
  v4 = [safeSwiftEnumCase isEqualToString:@"inBetween"];

  return v4;
}

- (BOOL)_axIsStateInProgress
{
  v2 = [(_HTUIEvaluationViewControllerViewAccessibility *)self safeSwiftValueForKey:@"state"];
  safeSwiftEnumCase = [v2 safeSwiftEnumCase];
  v4 = [safeSwiftEnumCase isEqualToString:@"inProgress"];

  return v4;
}

- (id)accessibilityElements
{
  v10[1] = *MEMORY[0x29EDCA608];
  if (![(_HTUIEvaluationViewControllerViewAccessibility *)self _axIsStateInProgress])
  {
    goto LABEL_6;
  }

  _axTapHearButton = [(_HTUIEvaluationViewControllerViewAccessibility *)self _axTapHearButton];
  v4 = _axTapHearButton;
  if (!_axTapHearButton || ([_axTapHearButton alpha], v5 == 0.0) || objc_msgSend(v4, "isHidden"))
  {

LABEL_6:
    v9.receiver = self;
    v9.super_class = _HTUIEvaluationViewControllerViewAccessibility;
    accessibilityElements = [(_HTUIEvaluationViewControllerViewAccessibility *)&v9 accessibilityElements];
    goto LABEL_7;
  }

  v10[0] = v4;
  accessibilityElements = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];

LABEL_7:
  v7 = *MEMORY[0x29EDCA608];

  return accessibilityElements;
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
  selfCopy = self;
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
  _axTapHearButton = [(_HTUIEvaluationViewControllerViewAccessibility *)self _axTapHearButton];
  [_axTapHearButton setAccessibilityLabel:&stru_2A21BD580];
  [_axTapHearButton setAccessibilityTraits:*MEMORY[0x29EDBDB30]];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __66___HTUIEvaluationViewControllerViewAccessibility__axSetupSubviews__block_invoke;
  v7[3] = &unk_29F2C57E0;
  v7[4] = self;
  [_axTapHearButton setAccessibilityActivateBlock:v7];
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
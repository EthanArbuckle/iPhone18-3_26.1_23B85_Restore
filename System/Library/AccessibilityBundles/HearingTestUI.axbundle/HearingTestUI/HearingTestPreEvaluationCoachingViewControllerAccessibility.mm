@interface HearingTestPreEvaluationCoachingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPlayToneButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnouncementFinished;
- (void)_axBeforePlayingTones;
- (void)_axHandleElementFocusedNotification:(id)notification;
- (void)_axSetupSubviews;
- (void)_axStartAnnouncement;
- (void)_axStopPlayingTones;
- (void)cleanUp;
- (void)didTapPlaySample;
@end

@implementation HearingTestPreEvaluationCoachingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasInstanceMethod:@"didTapPlaySample" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasInstanceMethod:@"cleanUp" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"secondaryContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasSwiftField:@"supportsSampleTone" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasSwiftFieldOfAnyClass:@"playToneImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_29BE6E000, v0, v1, "Coaching: supportsSampleTone %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

- (void)didTapPlaySample
{
  v3 = AXLogHearingTest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [HearingTestPreEvaluationCoachingViewControllerAccessibility didTapPlaySample];
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    if ([(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axAnnouncementState]== 2)
    {
      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axBeforePlayingTones];
      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)&v5 didTapPlaySample:v4.receiver];
    }

    else
    {
      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axSetIsPlayingTones:1];
    }
  }

  else
  {
    [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)&v4 didTapPlaySample:self];
  }
}

- (void)cleanUp
{
  v4.receiver = self;
  v4.super_class = HearingTestPreEvaluationCoachingViewControllerAccessibility;
  [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)&v4 cleanUp];
  v3 = AXLogHearingTest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [HearingTestPreEvaluationCoachingViewControllerAccessibility cleanUp];
  }

  [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axStopPlayingTones];
}

- (void)_axStartAnnouncement
{
  v12[1] = *MEMORY[0x29EDCA608];
  if (![(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axAnnouncementState])
  {
    v3 = AXLogHearingTest();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [HearingTestPreEvaluationCoachingViewControllerAccessibility _axStartAnnouncement];
    }

    _axPlayToneButton = [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axPlayToneButton];
    titleLabel = [_axPlayToneButton titleLabel];
    text = [titleLabel text];

    v7 = objc_alloc(MEMORY[0x29EDB9F30]);
    v11 = *MEMORY[0x29EDC7F20];
    v12[0] = *MEMORY[0x29EDC7F00];
    v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithString:text attributes:v8];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
    [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axSetAnnouncementState:1];
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)_axAnnouncementFinished
{
  v8 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_29BE6E000, v0, v1, "Coaching: AnnouncementFinished isPlayingTones: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

- (void)_axHandleElementFocusedNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  navigationController = [v5 navigationController];
  viewControllers = [navigationController viewControllers];
  navigationController2 = [v5 navigationController];
  viewControllers2 = [navigationController2 viewControllers];
  v10 = [viewControllers axSafeObjectAtIndex:{objc_msgSend(viewControllers2, "count") - 1}];

  if (v10 == v5)
  {
    userInfo = [notificationCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];

    userInfo2 = [notificationCopy userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x29EDC7FF8]];

    v15 = AXLogHearingTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)v12 _axHandleElementFocusedNotification:v14, v15];
    }

    _axPlayToneButton = [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axPlayToneButton];
    v17 = _axPlayToneButton;
    if (v12)
    {
      presentedViewController = [v5 presentedViewController];

      if (!presentedViewController)
      {
        v20 = AXLogHearingTest();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [HearingTestPreEvaluationCoachingViewControllerAccessibility _axHandleElementFocusedNotification:];
        }

        if (v12 == v17)
        {
          [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axStartAnnouncement];
        }

        else
        {
          [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axSetAnnouncementState:0];
        }

        goto LABEL_17;
      }

      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axSetAnnouncementState:0];
      v19 = AXLogHearingTest();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [HearingTestPreEvaluationCoachingViewControllerAccessibility _axHandleElementFocusedNotification:];
      }
    }

    else
    {
      if (v14 != _axPlayToneButton)
      {
LABEL_17:

        goto LABEL_18;
      }

      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axSetAnnouncementState:0];
      v19 = AXLogHearingTest();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [HearingTestPreEvaluationCoachingViewControllerAccessibility _axHandleElementFocusedNotification:];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_axBeforePlayingTones
{
  UIAccessibilityPostNotification(0x418u, 0);
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [HearingTestPreEvaluationCoachingViewControllerAccessibility _axBeforePlayingTones];
  }
}

- (void)_axStopPlayingTones
{
  v3 = AXLogHearingTest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [HearingTestPreEvaluationCoachingViewControllerAccessibility _axStopPlayingTones];
  }

  [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axSetIsPlayingTones:0];
  UIAccessibilityPostNotification(0x419u, 0);
}

- (void)_axSetupSubviews
{
  v8 = *MEMORY[0x29EDCA608];
  titleLabel = [self titleLabel];
  text = [titleLabel text];
  v6 = 138412290;
  v7 = text;
  _os_log_debug_impl(&dword_29BE6E000, a2, OS_LOG_TYPE_DEBUG, "Coaching setup playToneButton: %@", &v6, 0xCu);

  v5 = *MEMORY[0x29EDCA608];
}

- (id)_axPlayToneButton
{
  v32 = *MEMORY[0x29EDCA608];
  v30 = 0;
  objc_opt_class();
  v4 = [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self safeValueForKey:@"secondaryContentView"];
  v5 = __UIAccessibilityCastAsClass();

  subviews = [v5 subviews];
  v7 = [subviews count];

  if (v7)
  {
    v8 = [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self safeSwiftValueForKey:@"playToneImageView"];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    obj = [v5 subviews];
    v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v30 = 0;
        objc_opt_class();
        v14 = __UIAccessibilityCastAsClass();
        if (v30 == 1)
        {
          abort();
        }

        v15 = v14;
        if (v8)
        {
          imageView = [v14 imageView];
          v2 = imageView;
          if (imageView == v8)
          {
            break;
          }
        }

        titleLabel = [0 titleLabel];
        text = [titleLabel text];
        v19 = accessibilityLocalizedString(@"HEARING_TEST_COACHING_PLAY_SAMPLE");
        v20 = [text isEqualToString:v19];

        if (v8)
        {
        }

        if (v20)
        {
          goto LABEL_18;
        }

        if (v10 == ++v12)
        {
          v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }
      }

LABEL_18:
      v5 = v24;
      if (v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_15:

      v5 = v24;
    }

    v21 = AXLogHearingTest();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [HearingTestPreEvaluationCoachingViewControllerAccessibility _axPlayToneButton];
    }

    v15 = 0;
LABEL_22:
  }

  else
  {
    v15 = 0;
  }

  v22 = *MEMORY[0x29EDCA608];

  return v15;
}

- (void)_axHandleElementFocusedNotification:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = [a1 accessibilityLabel];
  v6 = [a2 accessibilityLabel];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_29BE6E000, a3, OS_LOG_TYPE_DEBUG, "Coaching: focused notification, element focused: %@, unfocused: %@", &v8, 0x16u);

  v7 = *MEMORY[0x29EDCA608];
}

- (void)_axHandleElementFocusedNotification:.cold.3()
{
  v8 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_29BE6E000, v0, v1, "Coaching: Focused element is playToneButton: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

@end
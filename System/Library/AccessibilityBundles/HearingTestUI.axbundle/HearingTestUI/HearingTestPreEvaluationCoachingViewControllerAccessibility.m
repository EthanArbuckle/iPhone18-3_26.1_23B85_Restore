@interface HearingTestPreEvaluationCoachingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axPlayToneButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnouncementFinished;
- (void)_axBeforePlayingTones;
- (void)_axHandleElementFocusedNotification:(id)a3;
- (void)_axSetupSubviews;
- (void)_axStartAnnouncement;
- (void)_axStopPlayingTones;
- (void)cleanUp;
- (void)didTapPlaySample;
@end

@implementation HearingTestPreEvaluationCoachingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" isKindOfClass:@"OBWelcomeController"];
  [v3 validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasInstanceMethod:@"didTapPlaySample" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasInstanceMethod:@"cleanUp" withFullSignature:{"v", 0}];
  [v3 validateClass:@"OBWelcomeController" hasInstanceMethod:@"secondaryContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasSwiftField:@"supportsSampleTone" withSwiftType:"Bool"];
  [v3 validateClass:@"HearingTestUI.HearingTestPreEvaluationCoachingViewController" hasSwiftFieldOfAnyClass:@"playToneImageView"];
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

    v4 = [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axPlayToneButton];
    v5 = [v4 titleLabel];
    v6 = [v5 text];

    v7 = objc_alloc(MEMORY[0x29EDB9F30]);
    v11 = *MEMORY[0x29EDC7F20];
    v12[0] = *MEMORY[0x29EDC7F00];
    v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithString:v6 attributes:v8];

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

- (void)_axHandleElementFocusedNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 navigationController];
  v7 = [v6 viewControllers];
  v8 = [v5 navigationController];
  v9 = [v8 viewControllers];
  v10 = [v7 axSafeObjectAtIndex:{objc_msgSend(v9, "count") - 1}];

  if (v10 == v5)
  {
    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];

    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDC7FF8]];

    v15 = AXLogHearingTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)v12 _axHandleElementFocusedNotification:v14, v15];
    }

    v16 = [(HearingTestPreEvaluationCoachingViewControllerAccessibility *)self _axPlayToneButton];
    v17 = v16;
    if (v12)
    {
      v18 = [v5 presentedViewController];

      if (!v18)
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
      if (v14 != v16)
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
  v3 = [a1 titleLabel];
  v4 = [v3 text];
  v6 = 138412290;
  v7 = v4;
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

  v6 = [v5 subviews];
  v7 = [v6 count];

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
          v16 = [v14 imageView];
          v2 = v16;
          if (v16 == v8)
          {
            break;
          }
        }

        v17 = [0 titleLabel];
        v18 = [v17 text];
        v19 = accessibilityLocalizedString(@"HEARING_TEST_COACHING_PLAY_SAMPLE");
        v20 = [v18 isEqualToString:v19];

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
@interface HTUIEvaluationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsSessionActive;
- (BOOL)_axIsSessionPaused;
- (BOOL)accessibilityPerformEscape;
- (id)_axContentViewCategory;
- (id)_axSessionManagerCategory;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnouncementFinished;
- (void)_axHandleElementFocusedNotification:(id)notification;
- (void)_axIsSessionActive;
- (void)_axStartAnnouncement;
- (void)didTapAction;
- (void)pauseHearingTestSession;
- (void)resumeHearingTestSession;
- (void)scheduleEvaluationStart;
- (void)viewDidLoad;
@end

@implementation HTUIEvaluationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" hasInstanceMethod:@"scheduleEvaluationStart" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" hasInstanceMethod:@"pauseHearingTestSession" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" hasInstanceMethod:@"resumeHearingTestSession" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" hasInstanceMethod:@"didTapAction" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" hasInstanceMethod:@"didTapCancel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HearingTestUI.HTUIEvaluationViewController" hasSwiftFieldOfAnyClass:@"sessionManager"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = HTUIEvaluationViewControllerAccessibility;
  [(HTUIEvaluationViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  if (![(HTUIEvaluationViewControllerAccessibility *)self _axIsSubscribed])
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__axAnnouncementFinished name:*MEMORY[0x29EDC7E98] object:0];

    defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__axHandleElementFocusedNotification_ name:*MEMORY[0x29EDC7EB8] object:0];

    v5 = AXLogHearingTest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [HTUIEvaluationViewControllerAccessibility _accessibilityLoadAccessibilityInformation];
    }

    [(HTUIEvaluationViewControllerAccessibility *)self _axSetIsSubscribed:1];
    if ([(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionActive])
    {
      [(HTUIEvaluationViewControllerAccessibility *)self _axSetIsSessionStarted:1];
      [(HTUIEvaluationViewControllerAccessibility *)self _axSetAnnouncementState:0];
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v6 = AXLogHearingTest();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [HTUIEvaluationViewControllerAccessibility _accessibilityLoadAccessibilityInformation];
        }

        [(HTUIEvaluationViewControllerAccessibility *)self pauseHearingTestSession];
        [(HTUIEvaluationViewControllerAccessibility *)self resumeHearingTestSession];
      }
    }
  }
}

- (BOOL)accessibilityPerformEscape
{
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [HTUIEvaluationViewControllerAccessibility accessibilityPerformEscape];
  }

  AXPerformSafeBlock();
  return 1;
}

- (void)viewDidLoad
{
  v27 = *MEMORY[0x29EDCA608];
  v24.receiver = self;
  v24.super_class = HTUIEvaluationViewControllerAccessibility;
  [(HTUIEvaluationViewControllerAccessibility *)&v24 viewDidLoad];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v23 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    navigationItem = [v3 navigationItem];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v6 = [rightBarButtonItems countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(rightBarButtonItems);
          }

          [*(*(&v19 + 1) + 8 * i) setIsAccessibilityElement:0];
        }

        v7 = [rightBarButtonItems countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v7);
    }

    _axContentViewCategory = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
    _axTapHearButton = [_axContentViewCategory _axTapHearButton];

    v12 = objc_alloc(MEMORY[0x29EDC78E0]);
    v13 = accessibilityLocalizedString(@"HEARING_TEST_CANCEL_BUTTON");
    v14 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"xmark"];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __56__HTUIEvaluationViewControllerAccessibility_viewDidLoad__block_invoke;
    v18[3] = &unk_29F2C5808;
    v18[4] = self;
    v15 = [v12 initWithName:v13 image:v14 actionHandler:v18];

    v25 = v15;
    v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v25 count:1];
    [_axTapHearButton setAccessibilityCustomActions:v16];
  }

  v17 = *MEMORY[0x29EDCA608];
}

uint64_t __56__HTUIEvaluationViewControllerAccessibility_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

- (void)scheduleEvaluationStart
{
  v3 = AXLogHearingTest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [HTUIEvaluationViewControllerAccessibility scheduleEvaluationStart];
  }

  v4.receiver = self;
  v4.super_class = HTUIEvaluationViewControllerAccessibility;
  [(HTUIEvaluationViewControllerAccessibility *)&v4 scheduleEvaluationStart];
  [(HTUIEvaluationViewControllerAccessibility *)self _axStartAnnouncement];
}

- (void)pauseHearingTestSession
{
  v5.receiver = self;
  v5.super_class = HTUIEvaluationViewControllerAccessibility;
  [(HTUIEvaluationViewControllerAccessibility *)&v5 pauseHearingTestSession];
  v3 = AXLogHearingTest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [HTUIEvaluationViewControllerAccessibility pauseHearingTestSession];
  }

  [(HTUIEvaluationViewControllerAccessibility *)self _axSetAnnouncementState:0];
  _axContentViewCategory = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
  [_axContentViewCategory _axStopPlayingTones];
}

- (void)resumeHearingTestSession
{
  v4.receiver = self;
  v4.super_class = HTUIEvaluationViewControllerAccessibility;
  [(HTUIEvaluationViewControllerAccessibility *)&v4 resumeHearingTestSession];
  v3 = AXLogHearingTest();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [HTUIEvaluationViewControllerAccessibility resumeHearingTestSession];
  }

  [(HTUIEvaluationViewControllerAccessibility *)self _axStartAnnouncement];
}

- (void)didTapAction
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)_axStartAnnouncement
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)_axAnnouncementFinished
{
  if ([(HTUIEvaluationViewControllerAccessibility *)self _axAnnouncementState]== 1)
  {
    v3 = AXLogHearingTest();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [HTUIEvaluationViewControllerAccessibility _axAnnouncementFinished];
    }

    [(HTUIEvaluationViewControllerAccessibility *)self _axSetAnnouncementState:2];
    _axContentViewCategory = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
    [_axContentViewCategory _axBeforePlayingTones];

    _axIsSessionPaused = [(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionPaused];
    v6 = AXLogHearingTest();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (_axIsSessionPaused)
    {
      if (v7)
      {
        [HTUIEvaluationViewControllerAccessibility _axAnnouncementFinished];
      }

      _axSessionManagerCategory = [(HTUIEvaluationViewControllerAccessibility *)self _axSessionManagerCategory];
      [_axSessionManagerCategory _axResumeSession];
    }

    else
    {
      if (v7)
      {
        [HTUIEvaluationViewControllerAccessibility _axAnnouncementFinished];
      }

      _axSessionManagerCategory2 = [(HTUIEvaluationViewControllerAccessibility *)self _axSessionManagerCategory];
      [_axSessionManagerCategory2 _axStartSession];

      [(HTUIEvaluationViewControllerAccessibility *)self _axSetIsSessionStarted:1];
    }
  }
}

- (void)_axHandleElementFocusedNotification:(id)notification
{
  notificationCopy = notification;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    _axContentViewCategory = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
    _axIsStateInProgress = [_axContentViewCategory _axIsStateInProgress];

    if (_axIsStateInProgress)
    {
      userInfo = [notificationCopy userInfo];
      v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];

      userInfo2 = [notificationCopy userInfo];
      v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x29EDC7FF8]];

      v11 = AXLogHearingTest();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(HTUIEvaluationViewControllerAccessibility *)v8 _axHandleElementFocusedNotification:v10, v11];
      }

      _axContentViewCategory2 = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
      _axTapHearButton = [_axContentViewCategory2 _axTapHearButton];

      if (v8)
      {
        objc_opt_class();
        v14 = __UIAccessibilityCastAsClass();
        presentedViewController = [v14 presentedViewController];

        if (presentedViewController)
        {
          [(HTUIEvaluationViewControllerAccessibility *)self _axSetAnnouncementState:0];
          _axContentViewCategory3 = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
          [_axContentViewCategory3 _axStopPlayingTones];

          v17 = AXLogHearingTest();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
          }
        }

        else
        {
          v18 = AXLogHearingTest();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
          }

          if (v8 == _axTapHearButton)
          {
            if ([(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionPaused])
            {
              v20 = AXLogHearingTest();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
              }

              [(HTUIEvaluationViewControllerAccessibility *)self resumeHearingTestSession];
            }

            else if (![(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionStarted])
            {
              _axContentViewCategory4 = [(HTUIEvaluationViewControllerAccessibility *)self _axContentViewCategory];
              _axIsStateInProgress2 = [_axContentViewCategory4 _axIsStateInProgress];

              if (_axIsStateInProgress2)
              {
                v23 = AXLogHearingTest();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
                }

                [(HTUIEvaluationViewControllerAccessibility *)self _axStartAnnouncement];
              }
            }
          }

          else
          {
            [(HTUIEvaluationViewControllerAccessibility *)self _axSetAnnouncementState:0];
            if ([(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionActive])
            {
              v19 = AXLogHearingTest();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                [HTUIEvaluationViewControllerAccessibility _accessibilityLoadAccessibilityInformation];
              }

              [(HTUIEvaluationViewControllerAccessibility *)self pauseHearingTestSession];
            }
          }
        }
      }

      else
      {
        if (v10 != _axTapHearButton)
        {
LABEL_36:

          goto LABEL_37;
        }

        [(HTUIEvaluationViewControllerAccessibility *)self _axSetAnnouncementState:0];
        if ([(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionActive])
        {
          [(HTUIEvaluationViewControllerAccessibility *)self pauseHearingTestSession];
        }

        v14 = AXLogHearingTest();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
        }
      }

      goto LABEL_36;
    }

    v8 = AXLogHearingTest();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
    }
  }

  else
  {
    v8 = AXLogHearingTest();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HTUIEvaluationViewControllerAccessibility _axHandleElementFocusedNotification:];
    }
  }

LABEL_37:
}

- (BOOL)_axIsSessionPaused
{
  _axIsSessionStarted = [(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionStarted];
  if (_axIsSessionStarted)
  {
    LOBYTE(_axIsSessionStarted) = ![(HTUIEvaluationViewControllerAccessibility *)self _axIsSessionActive];
  }

  return _axIsSessionStarted;
}

- (BOOL)_axIsSessionActive
{
  v2 = [(HTUIEvaluationViewControllerAccessibility *)self safeSwiftValueForKey:@"sessionManager"];
  v3 = [v2 safeSwiftBoolForKey:@"_sessionIsActive"];

  v4 = AXLogHearingTest();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [HTUIEvaluationViewControllerAccessibility _axIsSessionActive];
  }

  return v3;
}

- (id)_axSessionManagerCategory
{
  objc_opt_class();
  v3 = [(HTUIEvaluationViewControllerAccessibility *)self safeSwiftValueForKey:@"sessionManager"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

- (id)_axContentViewCategory
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  view = [v2 view];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

- (void)_axHandleElementFocusedNotification:(NSObject *)a3 .cold.3(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = [a1 accessibilityLabel];
  v6 = [a2 accessibilityLabel];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_29BE6E000, a3, OS_LOG_TYPE_DEBUG, "Test: focused notification, element focused: %@, unfocused: %@", &v8, 0x16u);

  v7 = *MEMORY[0x29EDCA608];
}

- (void)_axHandleElementFocusedNotification:.cold.5()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)_axIsSessionActive
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

@end
@interface VTUIEnrollTrainingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetAccessibilityElementsIfNeeded;
- (void)_axAnnounceInstructionWithNumber:(int64_t)a3;
- (void)_axAnnounceString:(id)a3;
- (void)_axHandleAnnouncementDidFinishNotification:(id)a3;
- (void)_axHandleElementFocusedNotification:(id)a3;
- (void)_axHandleVoiceOverStatusChangedNotification:(id)a3;
- (void)_axRemoveNotificationObservers;
- (void)_axSetShowTrainingInstructionBlock:(id)a3;
- (void)_axSuspendAudio:(BOOL)a3;
- (void)_continueToTrainingFromIntro;
- (void)_setLanguageOptionsAndContinue;
- (void)_setupEnrollTrainingView;
- (void)_showEducationView;
- (void)_showEnrollmentSuccessView;
- (void)_showGMIntroView;
- (void)_showSiriDataSharingOptIn;
- (void)_showStatusMessage:(id)a3 afterDelay:(double)a4 completion:(id)a5;
- (void)_showVoiceSelectionViewForRecognitionLanguage:(id)a3;
- (void)_startEnrollment;
- (void)dealloc;
@end

@implementation VTUIEnrollTrainingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_continueToTrainingFromIntro" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_showTrainingInstruction: afterDelay: isRetry: animate:" withFullSignature:{"v", "q", "d", "B", "B", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_showStatusMessage: afterDelay: completion:" withFullSignature:{"v", "@", "d", "@?", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_showEnrollmentSuccessView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_showSiriDataSharingOptIn" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_setupEnrollTrainingView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"trainingViewMediator" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_trainingPageInstructions" withType:"NSArray"];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_trainingManager" withType:"SSRVTUITrainingManager"];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_currentTrainingState" withType:"NSInteger"];
  [v3 validateClass:@"VTUIEnrollmentSuccessView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"VTUIPagedLabel" hasInstanceVariable:@"_instructionLabelLeft" withType:"UILabel"];
  [v3 validateClass:@"VTUIPagedLabel" hasInstanceVariable:@"_instructionLabelRight" withType:"UILabel"];
  [v3 validateClass:@"VTUIPagedLabel" hasInstanceVariable:@"_instructionLabelRight" withType:"UILabel"];
  [v3 validateClass:@"SSRVTUITrainingManager" hasInstanceMethod:@"setSuspendAudio:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"VTUIStyle"];
  [v3 validateClass:@"VTUIStyle" hasClassMethod:@"sharedStyle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VTUIStyle" hasInstanceMethod:@"VTUIDeviceSpecificString:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_introViewController" withType:"UIViewController<VTUIEnrollmentSetupIntroViewControlling>"];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_educationViewController" withType:"VTUISiriEducationViewController"];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_siriDataSharingViewController" withType:"UIViewController"];
  [v3 validateClass:@"VTUISiriEducationViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_showEducationView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_startEnrollment" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_setLanguageOptionsAndContinue" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewMediatorGM" hasInstanceMethod:@"trainingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceMethod:@"_showVoiceSelectionViewForRecognitionLanguage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VTUIEnrollTrainingViewController" hasInstanceVariable:@"_siriDataSharingOptInView" withType:"UIView"];
  [v3 validateClass:@"VTUIEnrollTrainingView" hasInstanceMethod:@"orbView" withFullSignature:{"@", 0}];
}

- (void)_axRemoveNotificationObservers
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC7E98] object:0];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x29EDC8000] object:0];

  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x29EDC7EB8] object:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"trainingViewMediator"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 safeValueForKey:@"trainingView"];
    v5 = [v4 safeValueForKey:@"orbView"];
    [v5 accessibilitySetIdentification:@"EnrollmentSetupIntroView"];
  }

  [(VTUIEnrollTrainingViewControllerAccessibility *)self _axRemoveNotificationObservers];
  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  [v6 addObserver:self selector:sel__axHandleElementFocusedNotification_ name:*MEMORY[0x29EDC7EB8] object:0];

  v7 = [MEMORY[0x29EDBA068] defaultCenter];
  [v7 addObserver:self selector:sel__axHandleAnnouncementDidFinishNotification_ name:*MEMORY[0x29EDC7E98] object:0];

  v8 = [MEMORY[0x29EDBA068] defaultCenter];
  [v8 addObserver:self selector:sel__axHandleVoiceOverStatusChangedNotification_ name:*MEMORY[0x29EDC8000] object:0];

  VoiceOverStatus = UIAccessibilityIsVoiceOverRunning();
  v9 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_educationViewController"];
  [v9 _accessibilityLoadAccessibilityInformation];

  v10 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_siriDataSharingViewController"];
  [v10 _accessibilityLoadAccessibilityInformation];

  v11 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_introViewController"];
  [v11 _accessibilityLoadAccessibilityInformation];

  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
}

- (void)dealloc
{
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _axRemoveNotificationObservers];
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSuspendAudio:0];
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v3 dealloc];
}

- (void)_setupEnrollTrainingView
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v4 _setupEnrollTrainingView];
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
}

- (void)_showGMIntroView
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v3 _showGMIntroView];
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_showEducationView
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v5 _showEducationView];
  v3 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_educationViewController"];
  v4 = [v3 safeUIViewForKey:@"view"];
  [v4 setAccessibilityViewIsModal:1];

  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_showEnrollmentSuccessView
{
  v7.receiver = self;
  v7.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v7 _showEnrollmentSuccessView];
  v3 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_flamesView"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_successView"];
  [v4 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:@"AXIsInstructionLabel"];

  LODWORD(v4) = *MEMORY[0x29EDC7F10];
  v5 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_successView"];
  v6 = [v5 safeValueForKey:@"_titleLabel"];
  UIAccessibilityPostNotification(v4, v6);
}

- (void)_axSetShowTrainingInstructionBlock:(id)a3
{
  v3 = MEMORY[0x29ED409B0](a3, a2);
  __UIAccessibilitySetAssociatedObject();
}

void __101__VTUIEnrollTrainingViewControllerAccessibility__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilitySuperShowTrainingInstruction:*(a1 + 40) afterDelay:*(a1 + 56) isRetry:*(a1 + 57) animate:*(a1 + 48)];
}

- (void)_showStatusMessage:(id)a3 afterDelay:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9.receiver = self;
  v9.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v9 _showStatusMessage:v8 afterDelay:a5 completion:a4];
  if (v8)
  {
    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axAnnounceString:v8];
    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSetSiriDidRetry:1];
  }
}

- (void)_continueToTrainingFromIntro
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v3 _continueToTrainingFromIntro];
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_startEnrollment
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v3 _startEnrollment];
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
}

- (void)_setLanguageOptionsAndContinue
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v3 _setLanguageOptionsAndContinue];
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
}

- (void)_showSiriDataSharingOptIn
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v4 _showSiriDataSharingOptIn];
  v3 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeUIViewForKey:@"_siriDataSharingOptInView"];
  [v3 setAccessibilityViewIsModal:1];

  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
}

- (void)_showVoiceSelectionViewForRecognitionLanguage:(id)a3
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollTrainingViewControllerAccessibility;
  [(VTUIEnrollTrainingViewControllerAccessibility *)&v4 _showVoiceSelectionViewForRecognitionLanguage:a3];
  [(VTUIEnrollTrainingViewControllerAccessibility *)self _accessibilitySetAccessibilityElementsIfNeeded];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_axAnnounceInstructionWithNumber:(int64_t)a3
{
  v5 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeArrayForKey:@"_trainingPageInstructions"];
  if ([v5 count] > a3)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"step.announcement");
    v8 = AXFormatInteger();
    [v5 count];
    v9 = AXFormatInteger();
    v10 = [v6 stringWithFormat:v7, v8, v9];

    v11 = [MEMORY[0x29ED40740](@"VTUIStyle") safeValueForKey:@"sharedStyle"];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy_;
    v39 = __Block_byref_object_dispose_;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    objc_opt_class();
    v12 = [v5 axSafeObjectAtIndex:a3];
    v13 = __UIAccessibilityCastAsClass();

    v14 = [v13 objectForKeyedSubscript:@"Instruction"];

    v19 = MEMORY[0x29EDCA5F8];
    v20 = v11;
    v21 = v14;
    v22 = v5;
    AXPerformSafeBlock();
    v18 = v24[5];
    v16 = v30[5];
    v17 = v36[5];
    v15 = __AXStringForVariables();
    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axAnnounceString:v15, v16, v17, v18, @"__AXStringForVariablesSentinel", v19, 3221225472, __82__VTUIEnrollTrainingViewControllerAccessibility__axAnnounceInstructionWithNumber___block_invoke, &unk_29F31DFC8];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }
}

uint64_t __82__VTUIEnrollTrainingViewControllerAccessibility__axAnnounceInstructionWithNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) VTUIDeviceSpecificString:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = [*(a1 + 48) count] - 1;
    v7 = *(a1 + 32);
    if (v5 == v6)
    {
      v8 = [v7 VTUIDeviceSpecificString:@"TEXT_LABEL_SAY_LAST"];
      v9 = @"TEXT_LABEL_TO_LAST";
    }

    else
    {
      v8 = [v7 VTUIDeviceSpecificString:@"TEXT_LABEL_SAY_MIDDLE"];
      v9 = @"TEXT_LABEL_TO_MIDDLE";
    }
  }

  else
  {
    v8 = [*(a1 + 32) VTUIDeviceSpecificString:@"TEXT_LABEL_SAY_FIRST"];
    v9 = @"TEXT_LABEL_TO_FIRST";
  }

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = [*(a1 + 32) VTUIDeviceSpecificString:v9];
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return MEMORY[0x2A1C71028]();
}

- (void)_axAnnounceString:(id)a3
{
  v5 = a3;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (v5 && IsVoiceOverRunning)
  {
    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSuspendAudio:1];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)_axHandleAnnouncementDidFinishNotification:(id)a3
{
  if ([(VTUIEnrollTrainingViewControllerAccessibility *)self _axSiriDidRetry])
  {

    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSetSiriDidRetry:0];
  }

  else
  {
    v4 = [(VTUIEnrollTrainingViewControllerAccessibility *)self _axShowTrainingInstructionBlock];

    if (v4)
    {
      v5 = [(VTUIEnrollTrainingViewControllerAccessibility *)self _axShowTrainingInstructionBlock];
      v5[2]();

      [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSetShowTrainingInstructionBlock:0];
    }

    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSuspendAudio:0];
  }
}

- (void)_axHandleVoiceOverStatusChangedNotification:(id)a3
{
  if (VoiceOverStatus == 1 && !UIAccessibilityIsVoiceOverRunning())
  {
    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSuspendAudio:0];
  }

  VoiceOverStatus = UIAccessibilityIsVoiceOverRunning();
}

- (void)_axHandleElementFocusedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];

  MEMORY[0x29ED40740](@"SwiftUI.AccessibilityNode");
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v14 = MEMORY[0x29EDCA5F8];
  v8 = v6;
  AXPerformSafeBlock();
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = [v9 BOOLValue];

  v11 = [v8 _accessibilityValueForKey:@"AXIsInstructionLabel"];
  v12 = [v11 BOOLValue];

  if (v12 & 1) != 0 || (isKindOfClass & v10)
  {
    [(VTUIEnrollTrainingViewControllerAccessibility *)self _axSuspendAudio:1];
    v13 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axHandleSuspendAudioTimerFired_ selector:0 userInfo:0 repeats:2.5];
    [(VTUIEnrollTrainingViewControllerAccessibility *)self setAXSuspendAudioTimer:v13];
  }
}

uint64_t __85__VTUIEnrollTrainingViewControllerAccessibility__axHandleElementFocusedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXIsInstructionLabel"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_axSuspendAudio:(BOOL)a3
{
  v3 = a3;
  v4 = [(VTUIEnrollTrainingViewControllerAccessibility *)self AXSuspendAudioTimer];
  [v4 invalidate];

  if (!v3 || UIAccessibilityIsVoiceOverRunning())
  {
    AXPerformSafeBlock();
  }
}

void __65__VTUIEnrollTrainingViewControllerAccessibility__axSuspendAudio___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_trainingManager"];
  [v2 setSuspendAudio:*(a1 + 40)];
}

- (void)_accessibilitySetAccessibilityElementsIfNeeded
{
  v14[1] = *MEMORY[0x29EDCA608];
  v3 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  if (PSIsRunningInAssistant())
  {
    v4 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_educationViewController"];
    v5 = [v4 safeUIViewForKey:@"view"];

    v6 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_siriDataSharingOptInView"];
    v7 = [(VTUIEnrollTrainingViewControllerAccessibility *)self safeValueForKey:@"_introViewController"];
    v8 = [v7 safeUIViewForKey:@"view"];

    if ([v5 accessibilityViewIsModal] && objc_msgSend(v5, "_accessibilityViewIsVisible"))
    {
      v14[0] = v5;
      v9 = v14;
    }

    else if ([v6 accessibilityViewIsModal] && objc_msgSend(v6, "_accessibilityViewIsVisible"))
    {
      v13 = v6;
      v9 = &v13;
    }

    else
    {
      if (![v8 accessibilityViewIsModal] || !objc_msgSend(v8, "_accessibilityViewIsVisible"))
      {
        v10 = 0;
        goto LABEL_14;
      }

      v12 = v8;
      v9 = &v12;
    }

    v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:{1, v12, v13, v14[0]}];
LABEL_14:
    [v3 setAccessibilityElements:v10];

    goto LABEL_15;
  }

  [v3 setAccessibilityElements:0];
LABEL_15:

  v11 = *MEMORY[0x29EDCA608];
}

@end
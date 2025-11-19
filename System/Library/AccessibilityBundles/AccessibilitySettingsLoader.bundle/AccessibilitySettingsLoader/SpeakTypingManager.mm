@interface SpeakTypingManager
+ (id)sharedInstance;
+ (void)initializeMonitoring;
- (void)_installSpeakTypingSafeCategoriesIfNeeded;
- (void)_notifyToInitializeServerConnection;
- (void)_registerForLetterFeedbackAXSettingsUpdate;
- (void)_registerForPhoneticFeedbackAXSettingsUpdate;
- (void)_registerForQuickTypePredictionFeedbackAXSettingsUpdate;
- (void)_registerForWordFeedbackAXSettingsUpdate;
- (void)updateForCurrentQuickTypeFeedbackStatus;
- (void)updateForCurrentTypingFeedbackStatus;
- (void)updateForCurrentWordFeedbackStatus;
@end

@implementation SpeakTypingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SpeakTypingManager sharedInstance];
  }

  v3 = sharedInstance_SharedInstance_0;

  return v3;
}

uint64_t __36__SpeakTypingManager_sharedInstance__block_invoke()
{
  sharedInstance_SharedInstance_0 = objc_alloc_init(SpeakTypingManager);

  return MEMORY[0x2A1C71028]();
}

+ (void)initializeMonitoring
{
  if (initializeMonitoring_onceToken_1 != -1)
  {
    +[SpeakTypingManager initializeMonitoring];
  }
}

void __42__SpeakTypingManager_initializeMonitoring__block_invoke()
{
  v0 = +[SpeakTypingManager sharedInstance];
  [v0 _registerForLetterFeedbackAXSettingsUpdate];

  v1 = +[SpeakTypingManager sharedInstance];
  [v1 updateForCurrentTypingFeedbackStatus];

  v2 = +[SpeakTypingManager sharedInstance];
  [v2 _registerForPhoneticFeedbackAXSettingsUpdate];

  v3 = +[SpeakTypingManager sharedInstance];
  [v3 updateForCurrentTypingFeedbackStatus];

  v4 = +[SpeakTypingManager sharedInstance];
  [v4 _registerForQuickTypePredictionFeedbackAXSettingsUpdate];

  v5 = +[SpeakTypingManager sharedInstance];
  [v5 updateForCurrentQuickTypeFeedbackStatus];

  v6 = +[SpeakTypingManager sharedInstance];
  [v6 _registerForWordFeedbackAXSettingsUpdate];

  v7 = +[SpeakTypingManager sharedInstance];
  [v7 updateForCurrentWordFeedbackStatus];

  v8 = +[SpeakTypingManager sharedInstance];
  [v8 _notifyToInitializeServerConnection];
}

- (void)_registerForLetterFeedbackAXSettingsUpdate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x29EDC8480];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, typingFeedback, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForPhoneticFeedbackAXSettingsUpdate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x29EDC84C0];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, typingFeedback, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForQuickTypePredictionFeedbackAXSettingsUpdate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x29EDC84D0];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, quickTypePredictionFeedback, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForWordFeedbackAXSettingsUpdate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x29EDC8548];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, wordFeedback, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)updateForCurrentTypingFeedbackStatus
{
  if (_AXSPhoneticFeedbackEnabled() || _AXSLetterFeedbackEnabled())
  {

    [(SpeakTypingManager *)self _installSpeakTypingSafeCategoriesIfNeeded];
  }
}

- (void)updateForCurrentQuickTypeFeedbackStatus
{
  if (_AXSQuickTypePredictionFeedbackEnabled())
  {

    [(SpeakTypingManager *)self _installSpeakTypingSafeCategoriesIfNeeded];
  }
}

- (void)_notifyToInitializeServerConnection
{
  if (_AXSPhoneticFeedbackEnabled() || _AXSLetterFeedbackEnabled() || _AXSWordFeedbackEnabled() || _AXSQuickTypePredictionFeedbackEnabled() || ([MEMORY[0x29EDBDFA0] sharedInstance], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "speakCorrectionsEnabled"), v2, v3))
  {
    v4 = [getSpeakTypingServicesClass_0() sharedInstance];
    [v4 notifySpeakServicesToInitializeServerConnection];
  }
}

void __72__SpeakTypingManager_speakTypingLoadAccessibilityForExistingPredictions__block_invoke()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v0 = getAXUIApplicationWindowsSymbolLoc_ptr;
  v11 = getAXUIApplicationWindowsSymbolLoc_ptr;
  if (!getAXUIApplicationWindowsSymbolLoc_ptr)
  {
    v1 = AccessibilityUIUtilitiesLibrary_1();
    v9[3] = dlsym(v1, "AXUIApplicationWindows");
    getAXUIApplicationWindowsSymbolLoc_ptr = v9[3];
    v0 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v0)
  {
    __72__SpeakTypingManager_speakTypingLoadAccessibilityForExistingPredictions__block_invoke_cold_2();
  }

  v2 = v0();
  v3 = [v2 lastObject];

  v4 = [v3 _accessibilityUIFindSubviewDescendant:&__block_literal_global_288];
  if (!v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v5 = getAXUIKeyboardWindowSymbolLoc_ptr_0;
    v11 = getAXUIKeyboardWindowSymbolLoc_ptr_0;
    if (!getAXUIKeyboardWindowSymbolLoc_ptr_0)
    {
      v6 = AccessibilityUIUtilitiesLibrary_1();
      v9[3] = dlsym(v6, "AXUIKeyboardWindow");
      getAXUIKeyboardWindowSymbolLoc_ptr_0 = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      soft_AXUIKeyboardWindow_cold_1();
    }

    v7 = v5();
    v4 = [v7 _accessibilityUIFindSubviewDescendant:&__block_literal_global_293];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 speakTypingLoadAccessibilityInformation];
  }
}

uint64_t __72__SpeakTypingManager_speakTypingLoadAccessibilityForExistingPredictions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tuipredictionv.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __72__SpeakTypingManager_speakTypingLoadAccessibilityForExistingPredictions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tuipredictionv.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)updateForCurrentWordFeedbackStatus
{
  if (_AXSWordFeedbackEnabled())
  {

    [(SpeakTypingManager *)self _installSpeakTypingSafeCategoriesIfNeeded];
  }
}

- (void)_installSpeakTypingSafeCategoriesIfNeeded
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsSafari(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:63 description:{@"%s", dlerror()}];

  __break(1u);
}

void __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke()
{
  v0 = [getAXValidationManagerClass_0() sharedInstance];
  [v0 performValidations:&__block_literal_global_301 withPreValidationHandler:&__block_literal_global_326 postValidationHandler:&__block_literal_global_332 safeCategoryInstallationHandler:&__block_literal_global_335_0];

  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v1 = getAXBinaryMonitorClass_softClass_0;
  v8 = getAXBinaryMonitorClass_softClass_0;
  if (!getAXBinaryMonitorClass_softClass_0)
  {
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __getAXBinaryMonitorClass_block_invoke_0;
    v4[3] = &unk_29F29A5F8;
    v4[4] = &v5;
    __getAXBinaryMonitorClass_block_invoke_0(v4);
    v1 = v6[3];
  }

  v2 = v1;
  _Block_object_dispose(&v5, 8);
  v3 = [v1 sharedInstance];
  [v3 addHandler:&__block_literal_global_340 forFramework:@"TextInputUI"];
}

uint64_t __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"UIKeyboardImpl"];
  [v2 validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"inputDelegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"textInputTraits" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UITextInputTraits" hasInstanceVariable:@"secureTextEntry" withType:"BOOL"];
  [v2 validateClass:@"UIMorphingLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Speak Typing"];
  [v2 setOverrideProcessName:@"Speak Typing"];
  [v2 setDebugBuild:0];

  return soft_AXPerformValidationChecks_0();
}

void __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke_6()
{
  v0 = [getAXValidationManagerClass_0() sharedInstance];
  [v0 performValidations:&__block_literal_global_342 withPreValidationHandler:&__block_literal_global_382 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_387];
}

uint64_t __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"TUIPredictionView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"TUIPredictionView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v2 validateClass:@"TUIPredictionView" hasInstanceMethod:@"_predictionCellIndexAtLocation:" withFullSignature:{"Q", "{CGPoint=dd}", 0}];
  [v2 validateClass:@"TUIPredictionView" hasInstanceMethod:@"setSelectedIndex:" withFullSignature:{"v", "q", 0}];
  [v2 validateProtocol:@"TUIPredictionViewDelegate" hasRequiredInstanceMethod:@"predictionView:didSelectCandidate:"];
  [v2 validateClass:@"TUIPredictionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TUIPredictionView" hasInstanceMethod:@"selectedIndex" withFullSignature:{"q", 0}];
  [v2 validateClass:@"TUIPredictionViewCell" hasInstanceMethod:@"candidate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TUIPredictionViewCell" hasInstanceMethod:@"morphingLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIMorphingLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Speak Typing (TextInputUI)"];
  [v2 setOverrideProcessName:@"Speak Typing (TextInputUI)"];
  [v2 setDebugBuild:0];

  return soft_AXPerformValidationChecks_0();
}

void __63__SpeakTypingManager__installSpeakTypingSafeCategoriesIfNeeded__block_invoke_9(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"TUIPredictionView_TFExtras" canInteractWithTargetClass:1];
  v2 = +[SpeakTypingManager sharedInstance];
  [v2 speakTypingLoadAccessibilityForExistingPredictions];
}

void __72__SpeakTypingManager_speakTypingLoadAccessibilityForExistingPredictions__block_invoke_cold_2()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSArray *soft_AXUIApplicationWindows(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
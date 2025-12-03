@interface SpeakCorrections
+ (void)disable;
+ (void)enable;
+ (void)initialize;
+ (void)updateStatus;
- (SpeakCorrections)init;
- (void)_correctionDisplayed:(id)displayed;
- (void)_speakCorrection:(id)correction;
- (void)dealloc;
- (void)loadUIAccessibilityIfNecessary;
@end

@implementation SpeakCorrections

+ (void)initialize
{
  _SpeakCorrectionsLock = [objc_allocWithZone(MEMORY[0x29EDBA020]) init];

  MEMORY[0x2A1C71028]();
}

+ (void)updateStatus
{
  v2 = MEMORY[0x29EDC83C0];
  CFPreferencesAppSynchronize(*MEMORY[0x29EDC83C0]);
  if (CFPreferencesGetAppBooleanValue(@"SpeakCorrectionsEnabled", *v2, 0))
  {

    +[SpeakCorrections enable];
  }

  else
  {

    +[SpeakCorrections disable];
  }
}

+ (void)enable
{
  [_SpeakCorrectionsLock lock];
  if (!_Corrections)
  {
    v2 = [objc_allocWithZone(SpeakCorrections) init];
    v3 = _Corrections;
    _Corrections = v2;
  }

  v4 = _SpeakCorrectionsLock;

  [v4 unlock];
}

+ (void)disable
{
  [_SpeakCorrectionsLock lock];
  v2 = _Corrections;
  _Corrections = 0;

  v3 = _SpeakCorrectionsLock;

  [v3 unlock];
}

- (SpeakCorrections)init
{
  v3 = AXLogSpeakTyping();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29BADF000, v3, OS_LOG_TYPE_INFO, "********** Accessibility: Loading SpeakCorrections", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = SpeakCorrections;
  v4 = [(SpeakCorrections *)&v19 init];
  if (v4)
  {
    v5 = dispatch_queue_create("speak-corrections-speaking-queue", 0);
    speakingQueue = v4->_speakingQueue;
    v4->_speakingQueue = v5;

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v7 = getTTSSpeechSynthesizerClass_softClass;
    v28 = getTTSSpeechSynthesizerClass_softClass;
    if (!getTTSSpeechSynthesizerClass_softClass)
    {
      *buf = MEMORY[0x29EDCA5F8];
      v21 = 3221225472;
      v22 = __getTTSSpeechSynthesizerClass_block_invoke;
      v23 = &unk_29F29A5F8;
      v24 = &v25;
      __getTTSSpeechSynthesizerClass_block_invoke(buf);
      v7 = v26[3];
    }

    v8 = v7;
    _Block_object_dispose(&v25, 8);
    availableLanguageCodes = [v7 availableLanguageCodes];
    availableLanguageCodes = v4->_availableLanguageCodes;
    v4->_availableLanguageCodes = availableLanguageCodes;

    v11 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
    v12 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.AccessibilitySettingsLoader"];
    v13 = [v12 pathForResource:@"KeyboardToLanguage" ofType:@"plist"];
    v14 = [v11 initWithContentsOfFile:v13];
    keyboardToLanguage = v4->_keyboardToLanguage;
    v4->_keyboardToLanguage = v14;

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__correctionDisplayed_ name:*MEMORY[0x29EDC8190] object:0];

    v17 = v4;
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SpeakCorrections;
  [(SpeakCorrections *)&v5 dealloc];
}

- (void)_correctionDisplayed:(id)displayed
{
  userInfo = [displayed userInfo];
  v9 = [userInfo objectForKey:@"correction"];

  [MEMORY[0x29EDBA108] cancelPreviousPerformRequestsWithTarget:self];
  if (v9)
  {
    self->_correctionCanceled = 0;
    [(SpeakCorrections *)self performSelector:sel__speakCorrection_ withObject:0.200000003 afterDelay:?];
  }

  else
  {
    activeInstance = [MEMORY[0x29EDC7B08] activeInstance];

    if (activeInstance)
    {
      mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
      v7 = [mEMORY[0x29EDC7B08] valueForKey:@"m_previousInputString"];

      if (([v7 isEqualToString:@" "] & 1) == 0)
      {
        self->_correctionCanceled = 1;
        sharedInstance = [getSpeakTypingServicesClass() sharedInstance];
        [sharedInstance notifySpeakServicesToStopSpeakingAutocorrections];
      }
    }
  }
}

- (void)loadUIAccessibilityIfNecessary
{
  if (!loadUIAccessibilityIfNecessary___UIAccessibilityHandle)
  {
    v2 = MEMORY[0x29C2C6C30](self, a2);
    v4 = [v2 stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/UIAccessibility.framework/UIAccessibility"];

    v3 = v4;
    loadUIAccessibilityIfNecessary___UIAccessibilityHandle = dlopen([v4 fileSystemRepresentation], 1);
    if (!loadUIAccessibilityIfNecessary___UIAccessibilityHandle)
    {
      NSLog(&cfstr_UnableToLoadUi.isa);
    }
  }
}

- (void)_speakCorrection:(id)correction
{
  correctionCopy = correction;
  if (!self->_correctionCanceled)
  {
    mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
    primaryLanguage = [currentInputMode primaryLanguage];

    v8 = [primaryLanguage stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    if (![(NSArray *)self->_availableLanguageCodes containsObject:v8])
    {
      v9 = [(NSDictionary *)self->_keyboardToLanguage objectForKey:primaryLanguage];

      v8 = v9;
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      [(SpeakCorrections *)self loadUIAccessibilityIfNecessary];
      v10 = correctionCopy;
      if (v8)
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v11 = getAXSafeClassFromStringSymbolLoc_ptr_0;
        v26 = getAXSafeClassFromStringSymbolLoc_ptr_0;
        if (!getAXSafeClassFromStringSymbolLoc_ptr_0)
        {
          v18 = MEMORY[0x29EDCA5F8];
          v19 = 3221225472;
          v20 = __getAXSafeClassFromStringSymbolLoc_block_invoke_0;
          v21 = &unk_29F29A5F8;
          v22 = &v23;
          v12 = AccessibilityUtilitiesLibrary_0();
          v24[3] = dlsym(v12, "AXSafeClassFromString");
          getAXSafeClassFromStringSymbolLoc_ptr_0 = *(v22[1] + 24);
          v11 = v24[3];
        }

        _Block_object_dispose(&v23, 8);
        if (!v11)
        {
          soft_AXSafeClassFromString_cold_1();
        }

        v11(@"AXAttributedString");
        v13 = [objc_claimAutoreleasedReturnValue() axAttributedStringWithString:v10];

        [v13 setAttribute:v8 forKey:@"UIAccessibilityTokenLanguage"];
        v10 = v13;
      }

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v10);
    }

    else
    {
      speakingQueue = self->_speakingQueue;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __37__SpeakCorrections__speakCorrection___block_invoke;
      block[3] = &unk_29F29A688;
      v16 = correctionCopy;
      v17 = v8;
      dispatch_async(speakingQueue, block);

      v10 = v16;
    }
  }
}

void __37__SpeakCorrections__speakCorrection___block_invoke(uint64_t a1)
{
  v2 = [getSpeakTypingServicesClass() sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = getAXLanguageCanonicalFormToGeneralLanguageSymbolLoc_ptr;
  v11 = getAXLanguageCanonicalFormToGeneralLanguageSymbolLoc_ptr;
  if (!getAXLanguageCanonicalFormToGeneralLanguageSymbolLoc_ptr)
  {
    v6 = AccessibilityUtilitiesLibrary_0();
    v9[3] = dlsym(v6, "AXLanguageCanonicalFormToGeneralLanguage");
    getAXLanguageCanonicalFormToGeneralLanguageSymbolLoc_ptr = v9[3];
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    __37__SpeakCorrections__speakCorrection___block_invoke_cold_1();
  }

  v7 = v5(v4);

  [v2 notifySpeakServicesForSpeakAutoCorrections:v3 forCurrentInputMode:v7];
}

void __37__SpeakCorrections__speakCorrection___block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *soft_AXLanguageCanonicalFormToGeneralLanguage(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:84 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
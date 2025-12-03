@interface AXOnboardingObjCBridge
+ (id)sharedInstance;
- (BOOL)heySiriEnabled;
- (BOOL)isSameLangaugeFromLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier;
- (BOOL)shouldShowCapitalizationPage;
- (id)_setupKeyboardNotificationsIfNecessary;
- (id)localizedVoiceControlCommand:(id)command;
- (void)_adjustForKeyboard;
- (void)disableSoftwareKeyboard;
- (void)toggleVoiceControl;
@end

@implementation AXOnboardingObjCBridge

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXOnboardingObjCBridge sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __40__AXOnboardingObjCBridge_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(AXOnboardingObjCBridge);

  return MEMORY[0x2821F96F8]();
}

- (id)_setupKeyboardNotificationsIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__AXOnboardingObjCBridge__setupKeyboardNotificationsIfNecessary__block_invoke;
  block[3] = &unk_278BF0248;
  block[4] = self;
  if (_setupKeyboardNotificationsIfNecessary_onceToken != -1)
  {
    dispatch_once(&_setupKeyboardNotificationsIfNecessary_onceToken, block);
  }

  return 0;
}

void __64__AXOnboardingObjCBridge__setupKeyboardNotificationsIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__adjustForKeyboard name:*MEMORY[0x277D76C60] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__adjustForKeyboard name:*MEMORY[0x277D76BA8] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__adjustForKeyboard name:*MEMORY[0x277D76C48] object:0];
}

- (void)_adjustForKeyboard
{
  [(AXOnboardingObjCBridge *)self _listenForKeyboardNotifications:0];
  [(AXOnboardingObjCBridge *)self disableSoftwareKeyboard];

  [(AXOnboardingObjCBridge *)self _listenForKeyboardNotifications:1];
}

- (void)disableSoftwareKeyboard
{
  GSEventSetHardwareKeyboardAttached();
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  [activeInstance setAutomaticMinimizationEnabled:1];

  activeInstance2 = [MEMORY[0x277D75678] activeInstance];
  [activeInstance2 dismissKeyboard];

  mEMORY[0x277D75678] = [MEMORY[0x277D75678] sharedInstance];
  [mEMORY[0x277D75678] setAutomaticMinimizationEnabled:1];

  mEMORY[0x277D75678]2 = [MEMORY[0x277D75678] sharedInstance];
  [mEMORY[0x277D75678]2 dismissKeyboard];
}

- (void)toggleVoiceControl
{
  v3 = [(AXOnboardingObjCBridge *)self voiceControlEnabled]^ 1;

  [(AXOnboardingObjCBridge *)self enableVoiceControl:v3];
}

- (id)localizedVoiceControlCommand:(id)command
{
  v23 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  if (localizedVoiceControlCommand__onceToken != -1)
  {
    [AXOnboardingObjCBridge localizedVoiceControlCommand:];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = localizedVoiceControlCommand___FlattenedCommandGroupsAndItems;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if (([v9 isGroup] & 1) == 0)
      {
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:commandCopy];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    identifier2 = [v9 identifier];
    if ([identifier2 isEqualToString:@"Text.Unselect"])
    {
      locale = [v9 locale];
      v15 = [locale hasPrefix:@"en"];

      if (v15)
      {
        displayString = @"Unselect that";
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    displayString = [v9 displayString];
    goto LABEL_18;
  }

LABEL_12:

  NSLog(&cfstr_CannotFindName.isa, commandCopy);
  displayString = &stru_284FF0250;
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];

  return displayString;
}

void __55__AXOnboardingObjCBridge_localizedVoiceControlCommand___block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getCACSpokenCommandPresentationClass_softClass;
  v9 = getCACSpokenCommandPresentationClass_softClass;
  if (!getCACSpokenCommandPresentationClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getCACSpokenCommandPresentationClass_block_invoke;
    v5[3] = &unk_278BF0358;
    v5[4] = &v6;
    __getCACSpokenCommandPresentationClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = objc_opt_new();
  v3 = [v2 flattenedCommandGroupsAndItems];
  v4 = localizedVoiceControlCommand___FlattenedCommandGroupsAndItems;
  localizedVoiceControlCommand___FlattenedCommandGroupsAndItems = v3;
}

- (BOOL)heySiriEnabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (BOOL)isSameLangaugeFromLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier
{
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getCACLocaleUtilitiesClass_softClass;
  v15 = getCACLocaleUtilitiesClass_softClass;
  if (!getCACLocaleUtilitiesClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getCACLocaleUtilitiesClass_block_invoke;
    v11[3] = &unk_278BF0358;
    v11[4] = &v12;
    __getCACLocaleUtilitiesClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v7 isSameLangaugeFromLocaleIdentifier:identifierCopy secondLocaleIdentifier:localeIdentifierCopy];

  return v9;
}

- (BOOL)shouldShowCapitalizationPage
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getCACPreferencesClass_softClass;
  v13 = getCACPreferencesClass_softClass;
  if (!getCACPreferencesClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getCACPreferencesClass_block_invoke;
    v9[3] = &unk_278BF0358;
    v9[4] = &v10;
    __getCACPreferencesClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  sharedPreferences = [v3 sharedPreferences];
  bestLocaleIdentifier = [sharedPreferences bestLocaleIdentifier];
  if ([(AXOnboardingObjCBridge *)self isSameLangaugeFromLocaleIdentifier:@"ja_JP" secondLocaleIdentifier:bestLocaleIdentifier]|| [(AXOnboardingObjCBridge *)self isSameLangaugeFromLocaleIdentifier:@"zh_HK" secondLocaleIdentifier:bestLocaleIdentifier])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = ![(AXOnboardingObjCBridge *)self isSameLangaugeFromLocaleIdentifier:@"zh_CN" secondLocaleIdentifier:bestLocaleIdentifier];
  }

  return v7;
}

@end
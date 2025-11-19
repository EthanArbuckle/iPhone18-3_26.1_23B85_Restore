@interface AssistantUtilities
+ (BOOL)assistantEnabled;
+ (BOOL)deviceIsClass:(__CFString *)a3;
+ (BOOL)isAppWithBundleIDPresent:(id)a3;
+ (BOOL)isAssistantLockScreenAccessRestricted;
+ (BOOL)isHardwareButtonTrigger;
+ (BOOL)isPasscodeSet;
+ (BOOL)isQuickTypeGestureEnabled;
+ (BOOL)isRpiOnDeviceDeletionEnabled;
+ (BOOL)isVoiceTriggerEnabled;
+ (BOOL)needsTrainingData:(BOOL)a3;
+ (BOOL)shouldShowCompactVoiceTriggerSpecifier;
+ (id)assistantLanguage;
+ (id)nameForApplicationWithBundleID:(id)a3;
+ (id)numberFormatter;
+ (void)disableVoiceTrigger;
+ (void)disableVoiceTriggerAndSiriEnrollmentForCurrentLanguage;
+ (void)enableVoiceTrigger;
@end

@implementation AssistantUtilities

+ (BOOL)deviceIsClass:(__CFString *)a3
{
  v4 = MGCopyAnswer();
  LOBYTE(a3) = CFEqual(v4, a3) != 0;
  CFRelease(v4);
  return a3;
}

+ (BOOL)assistantEnabled
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v3 assistantIsEnabled])
  {
    v4 = MEMORY[0x277CEF218];
    v5 = [a1 assistantLanguage];
    v6 = [v4 assistantIsSupportedForLanguageCode:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)assistantLanguage
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 languageCode];

  return v3;
}

+ (id)numberFormatter
{
  if (numberFormatter_onceToken != -1)
  {
    +[AssistantUtilities numberFormatter];
  }

  v3 = numberFormatter_numberFormatter;

  return v3;
}

uint64_t __37__AssistantUtilities_numberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = numberFormatter_numberFormatter;
  numberFormatter_numberFormatter = v0;

  v2 = numberFormatter_numberFormatter;

  return [v2 setNumberStyle:1];
}

+ (BOOL)isHardwareButtonTrigger
{
  v2 = [a1 assistantEnabled];
  if (v2)
  {
    LOBYTE(v2) = _AXSHomeButtonAssistant() == 0;
  }

  return v2;
}

+ (BOOL)isAssistantLockScreenAccessRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v2 isPasscodeSet])
  {
    v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D48]];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (BOOL)isPasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

+ (BOOL)isVoiceTriggerEnabled
{
  v2 = [MEMORY[0x277D7A8D0] sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  return v3;
}

+ (void)enableVoiceTrigger
{
  v2 = [MEMORY[0x277D7A8D0] sharedPreferences];
  [v2 setVoiceTriggerEnabled:1];
}

+ (void)disableVoiceTrigger
{
  v2 = [MEMORY[0x277D7A8D0] sharedPreferences];
  [v2 setVoiceTriggerEnabled:0];
}

+ (void)disableVoiceTriggerAndSiriEnrollmentForCurrentLanguage
{
  v3 = [MEMORY[0x277D653F8] sharedInstance];
  v4 = [a1 assistantLanguage];
  [v3 discardSiriEnrollmentForLanguageCode:v4];

  [a1 disableVoiceTrigger];
}

+ (BOOL)needsTrainingData:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D653F8] sharedInstance];
  v6 = [v5 isSpeakerRecognitionAvailable];

  v7 = [MEMORY[0x277D653F8] sharedInstance];
  v8 = [a1 assistantLanguage];
  v9 = [v7 isSATEnrolledForSiriProfileId:0 forLanguageCode:v8];

  if (v3)
  {
    return v6 & (v9 ^ 1);
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldShowCompactVoiceTriggerSpecifier
{
  v2 = [a1 assistantLanguage];
  if (!v2)
  {
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v2 = [v3 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v4 = [MEMORY[0x277D7A8D0] sharedPreferences];
  if ([v4 isCompactVoiceTriggerAvailableForLanguageCode:v2])
  {
    v5 = AFDeviceSupportsANE();
  }

  else
  {
    v5 = 0;
  }

  v6 = _os_feature_enabled_impl();
  return v6 & v5;
}

+ (id)nameForApplicationWithBundleID:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v9];

  v6 = 0;
  if (!v9)
  {
    v6 = [v5 localizedName];
    if (![v6 length])
    {
      v7 = [v5 localizedShortName];

      v6 = v7;
    }
  }

  return v6;
}

+ (BOOL)isAppWithBundleIDPresent:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v9];

  if (v9)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [v5 applicationState];
    if ([v7 isInstalled])
    {
      v6 = [v7 isPlaceholder] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (BOOL)isRpiOnDeviceDeletionEnabled
{
  v2 = [MEMORY[0x277CEF2A8] isOnDeviceHistoryDeletionEnabled];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 longLivedIdentifierUploadingEnabled] ^ 1;

  return v2 & v4;
}

+ (BOOL)isQuickTypeGestureEnabled
{
  if (![a1 assistantEnabled])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v2 quickTypeGestureEnabled])
  {
    v3 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    v4 = [v3 activeEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
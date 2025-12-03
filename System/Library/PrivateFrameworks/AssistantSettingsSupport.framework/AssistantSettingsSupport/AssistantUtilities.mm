@interface AssistantUtilities
+ (BOOL)assistantEnabled;
+ (BOOL)deviceIsClass:(__CFString *)class;
+ (BOOL)isAppWithBundleIDPresent:(id)present;
+ (BOOL)isAssistantLockScreenAccessRestricted;
+ (BOOL)isHardwareButtonTrigger;
+ (BOOL)isPasscodeSet;
+ (BOOL)isQuickTypeGestureEnabled;
+ (BOOL)isRpiOnDeviceDeletionEnabled;
+ (BOOL)isVoiceTriggerEnabled;
+ (BOOL)needsTrainingData:(BOOL)data;
+ (BOOL)shouldShowCompactVoiceTriggerSpecifier;
+ (id)assistantLanguage;
+ (id)nameForApplicationWithBundleID:(id)d;
+ (id)numberFormatter;
+ (void)disableVoiceTrigger;
+ (void)disableVoiceTriggerAndSiriEnrollmentForCurrentLanguage;
+ (void)enableVoiceTrigger;
@end

@implementation AssistantUtilities

+ (BOOL)deviceIsClass:(__CFString *)class
{
  v4 = MGCopyAnswer();
  LOBYTE(class) = CFEqual(v4, class) != 0;
  CFRelease(v4);
  return class;
}

+ (BOOL)assistantEnabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  if ([mEMORY[0x277CEF368] assistantIsEnabled])
  {
    v4 = MEMORY[0x277CEF218];
    assistantLanguage = [self assistantLanguage];
    v6 = [v4 assistantIsSupportedForLanguageCode:assistantLanguage error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)assistantLanguage
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  return languageCode;
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
  assistantEnabled = [self assistantEnabled];
  if (assistantEnabled)
  {
    LOBYTE(assistantEnabled) = _AXSHomeButtonAssistant() == 0;
  }

  return assistantEnabled;
}

+ (BOOL)isAssistantLockScreenAccessRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([mEMORY[0x277D262A0] isPasscodeSet])
  {
    v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D48]];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

+ (BOOL)isVoiceTriggerEnabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

+ (void)enableVoiceTrigger
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  [mEMORY[0x277D7A8D0] setVoiceTriggerEnabled:1];
}

+ (void)disableVoiceTrigger
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  [mEMORY[0x277D7A8D0] setVoiceTriggerEnabled:0];
}

+ (void)disableVoiceTriggerAndSiriEnrollmentForCurrentLanguage
{
  mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
  assistantLanguage = [self assistantLanguage];
  [mEMORY[0x277D653F8] discardSiriEnrollmentForLanguageCode:assistantLanguage];

  [self disableVoiceTrigger];
}

+ (BOOL)needsTrainingData:(BOOL)data
{
  dataCopy = data;
  mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
  isSpeakerRecognitionAvailable = [mEMORY[0x277D653F8] isSpeakerRecognitionAvailable];

  mEMORY[0x277D653F8]2 = [MEMORY[0x277D653F8] sharedInstance];
  assistantLanguage = [self assistantLanguage];
  v9 = [mEMORY[0x277D653F8]2 isSATEnrolledForSiriProfileId:0 forLanguageCode:assistantLanguage];

  if (dataCopy)
  {
    return isSpeakerRecognitionAvailable & (v9 ^ 1);
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldShowCompactVoiceTriggerSpecifier
{
  assistantLanguage = [self assistantLanguage];
  if (!assistantLanguage)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    assistantLanguage = [mEMORY[0x277CEF368] bestSupportedLanguageCodeForLanguageCode:0];
  }

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  if ([mEMORY[0x277D7A8D0] isCompactVoiceTriggerAvailableForLanguageCode:assistantLanguage])
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

+ (id)nameForApplicationWithBundleID:(id)d
{
  v3 = MEMORY[0x277CC1E70];
  dCopy = d;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v9];

  localizedName = 0;
  if (!v9)
  {
    localizedName = [v5 localizedName];
    if (![localizedName length])
    {
      localizedShortName = [v5 localizedShortName];

      localizedName = localizedShortName;
    }
  }

  return localizedName;
}

+ (BOOL)isAppWithBundleIDPresent:(id)present
{
  v3 = MEMORY[0x277CC1E70];
  presentCopy = present;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:presentCopy allowPlaceholder:1 error:&v9];

  if (v9)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    applicationState = [v5 applicationState];
    if ([applicationState isInstalled])
    {
      v6 = [applicationState isPlaceholder] ^ 1;
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
  isOnDeviceHistoryDeletionEnabled = [MEMORY[0x277CEF2A8] isOnDeviceHistoryDeletionEnabled];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [mEMORY[0x277CEF368] longLivedIdentifierUploadingEnabled] ^ 1;

  return isOnDeviceHistoryDeletionEnabled & v4;
}

+ (BOOL)isQuickTypeGestureEnabled
{
  if (![self assistantEnabled])
  {
    return 0;
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  if ([mEMORY[0x277CEF368] quickTypeGestureEnabled])
  {
    v3 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    activeEnabled = [v3 activeEnabled];
  }

  else
  {
    activeEnabled = 0;
  }

  return activeEnabled;
}

@end
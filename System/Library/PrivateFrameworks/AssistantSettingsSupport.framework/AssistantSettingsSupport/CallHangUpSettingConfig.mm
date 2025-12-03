@interface CallHangUpSettingConfig
+ (BOOL)enabled;
+ (id)localizationFooterKey;
@end

@implementation CallHangUpSettingConfig

+ (id)localizationFooterKey
{
  v3 = +[AssistantUtilities deviceIsiPhone];
  v4 = @"_IPAD";
  if (v3)
  {
    v4 = @"_IPHONE";
  }

  v5 = v4;
  localizationKey = [self localizationKey];
  v7 = [localizationKey stringByAppendingString:v5];

  return v7;
}

+ (BOOL)enabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  canUseVoiceTriggerDuringPhoneCall = [mEMORY[0x277D7A8D0] canUseVoiceTriggerDuringPhoneCall];

  return canUseVoiceTriggerDuringPhoneCall;
}

@end
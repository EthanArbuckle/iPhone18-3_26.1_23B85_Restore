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
  v6 = [a1 localizationKey];
  v7 = [v6 stringByAppendingString:v5];

  return v7;
}

+ (BOOL)enabled
{
  v2 = [MEMORY[0x277D7A8D0] sharedPreferences];
  v3 = [v2 canUseVoiceTriggerDuringPhoneCall];

  return v3;
}

@end
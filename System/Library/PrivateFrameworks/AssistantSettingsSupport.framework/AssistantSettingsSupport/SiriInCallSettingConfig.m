@interface SiriInCallSettingConfig
+ (BOOL)enabled;
@end

@implementation SiriInCallSettingConfig

+ (BOOL)enabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 siriInCallEnabled];

  return v3;
}

@end
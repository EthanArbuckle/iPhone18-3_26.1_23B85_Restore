@interface SiriInCallSettingConfig
+ (BOOL)enabled;
@end

@implementation SiriInCallSettingConfig

+ (BOOL)enabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriInCallEnabled = [mEMORY[0x277CEF368] siriInCallEnabled];

  return siriInCallEnabled;
}

@end
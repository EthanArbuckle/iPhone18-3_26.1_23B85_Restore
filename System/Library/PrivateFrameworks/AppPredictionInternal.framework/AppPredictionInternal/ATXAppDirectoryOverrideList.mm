@interface ATXAppDirectoryOverrideList
+ (id)ScreenTimeOverridesFromMobileAsset;
+ (id)iTunesOverridesFromMobileAsset;
@end

@implementation ATXAppDirectoryOverrideList

+ (id)iTunesOverridesFromMobileAsset
{
  v2 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v3 = [v2 objectForKeyedSubscript:@"iTunes"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

+ (id)ScreenTimeOverridesFromMobileAsset
{
  v2 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
  v3 = [v2 objectForKeyedSubscript:@"ScreenTime"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

@end
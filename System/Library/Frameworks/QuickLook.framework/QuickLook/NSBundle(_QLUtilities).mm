@interface NSBundle(_QLUtilities)
+ (uint64_t)mainBundleRequiresStatusBarHidden;
+ (uint64_t)mainBundleSupportsBackgroundAudio;
+ (uint64_t)mainBundleSupportsPrintCommand;
- (id)ql_applicationName;
@end

@implementation NSBundle(_QLUtilities)

+ (uint64_t)mainBundleSupportsBackgroundAudio
{
  if (mainBundleSupportsBackgroundAudio_onceToken != -1)
  {
    +[NSBundle(_QLUtilities) mainBundleSupportsBackgroundAudio];
  }

  return mainBundleSupportsBackgroundAudio__appsSupportsBackgroundAudio;
}

+ (uint64_t)mainBundleRequiresStatusBarHidden
{
  if (mainBundleRequiresStatusBarHidden_onceToken != -1)
  {
    +[NSBundle(_QLUtilities) mainBundleRequiresStatusBarHidden];
  }

  return mainBundleRequiresStatusBarHidden__appRequiresStatusBarHidden;
}

+ (uint64_t)mainBundleSupportsPrintCommand
{
  if (mainBundleSupportsPrintCommand_onceToken != -1)
  {
    +[NSBundle(_QLUtilities) mainBundleSupportsPrintCommand];
  }

  return mainBundleSupportsPrintCommand__supportsPrintCommand;
}

- (id)ql_applicationName
{
  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  localizedName = [bundleRecordForCurrentProcess localizedName];
  if (localizedName)
  {
    v4 = localizedName;
  }

  else
  {
    localizedInfoDictionary = [self localizedInfoDictionary];
    v6 = *MEMORY[0x277CBEC40];
    v4 = [localizedInfoDictionary objectForKey:*MEMORY[0x277CBEC40]];

    if (!v4)
    {
      infoDictionary = [self infoDictionary];
      v4 = [infoDictionary objectForKey:v6];

      if (!v4)
      {
        localizedInfoDictionary2 = [self localizedInfoDictionary];
        v9 = *MEMORY[0x277CBED50];
        v4 = [localizedInfoDictionary2 objectForKey:*MEMORY[0x277CBED50]];

        if (!v4)
        {
          infoDictionary2 = [self infoDictionary];
          v4 = [infoDictionary2 objectForKey:v9];
        }
      }
    }
  }

  return v4;
}

@end
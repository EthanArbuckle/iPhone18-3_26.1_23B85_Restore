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
  v2 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  v3 = [v2 localizedName];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [a1 localizedInfoDictionary];
    v6 = *MEMORY[0x277CBEC40];
    v4 = [v5 objectForKey:*MEMORY[0x277CBEC40]];

    if (!v4)
    {
      v7 = [a1 infoDictionary];
      v4 = [v7 objectForKey:v6];

      if (!v4)
      {
        v8 = [a1 localizedInfoDictionary];
        v9 = *MEMORY[0x277CBED50];
        v4 = [v8 objectForKey:*MEMORY[0x277CBED50]];

        if (!v4)
        {
          v10 = [a1 infoDictionary];
          v4 = [v10 objectForKey:v9];
        }
      }
    }
  }

  return v4;
}

@end
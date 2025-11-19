@interface _WKSystemPreferences
+ (BOOL)isCaptivePortalModeEnabled;
+ (BOOL)isCaptivePortalModeIgnored:(id)a3;
+ (void)setCaptivePortalModeEnabled:(BOOL)a3;
+ (void)setCaptivePortalModeIgnored:(id)a3 ignore:(BOOL)a4;
@end

@implementation _WKSystemPreferences

+ (BOOL)isCaptivePortalModeEnabled
{
  v2 = CFPreferencesCopyValue(@"WKLockdownModeEnabled", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = v2;
  if (v2 == *MEMORY[0x1E695E4D0])
  {
    isLockdownModeEnabled = 1;
    if (!v2)
    {
      return isLockdownModeEnabled;
    }

    goto LABEL_3;
  }

  isLockdownModeEnabled = PAL::isLockdownModeEnabled(v2);
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

  return isLockdownModeEnabled;
}

+ (void)setCaptivePortalModeEnabled:(BOOL)a3
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *MEMORY[0x1E695E890];
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"WKLockdownModeEnabled", *v3, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(v4, v5, v6);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"WKCaptivePortalModeContainerConfigurationChanged", 0, 0, 1u);
}

+ (BOOL)isCaptivePortalModeIgnored:(id)a3
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  v5[1] = @"System/Preferences/";
  v5[2] = @"com.apple.WebKit.cpmconfig_ignore";
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 3)}];
  return [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
}

+ (void)setCaptivePortalModeIgnored:(id)a3 ignore:(BOOL)a4
{
  v4 = a4;
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a3;
  v12[1] = @"System/Preferences/";
  v5 = [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 2)}];
  v11[0] = v5;
  v11[1] = @"com.apple.WebKit.cpmconfig_ignore";
  v6 = [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 2)}];
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] != v4)
  {
    v10 = 0;
    v7 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if ((v10 & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    }

    if (!v7 || (v10 & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    }

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    if (v4)
    {
      [v8 createFileAtPath:v6 contents:0 attributes:0];
    }

    else
    {
      [v8 removeItemAtPath:v6 error:0];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"WKCaptivePortalModeContainerConfigurationChanged", 0, 0, 1u);
  }
}

@end
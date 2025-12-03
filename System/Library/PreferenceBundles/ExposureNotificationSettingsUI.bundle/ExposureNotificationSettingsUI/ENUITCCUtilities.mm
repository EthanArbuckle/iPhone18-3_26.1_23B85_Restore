@interface ENUITCCUtilities
+ (BOOL)hasExposureNotificationAppsFromTCC;
+ (BOOL)isExposureNotificationEnabledForBundleIdentifier:(id)identifier;
+ (BOOL)isExposureNotificationFeatureActive;
+ (BOOL)isExposureNotificationsEnabledFromTCC;
+ (NSArray)enabledExposureNotificationApps;
+ (__CFBundle)copyTCCBundleForBundleIdentifier:(id)identifier;
+ (void)setExposureNotificationEnabled:(BOOL)enabled forBundleIdentifier:(id)identifier;
@end

@implementation ENUITCCUtilities

+ (BOOL)isExposureNotificationsEnabledFromTCC
{
  if (!TCCAccessGetOverride())
  {
    v2 = ENUILogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1BC20(v2);
    }
  }

  return 1;
}

+ (BOOL)hasExposureNotificationAppsFromTCC
{
  v2 = TCCAccessCopyInformation();
  v3 = [v2 count] != 0;

  return v3;
}

+ (NSArray)enabledExposureNotificationApps
{
  v2 = TCCAccessCopyInformation();
  v3 = [v2 enui_filter:&stru_2CF18];

  return v3;
}

+ (BOOL)isExposureNotificationFeatureActive
{
  v3 = +[ENUITCCUtilities isExposureNotificationsEnabledFromTCC];
  enabledExposureNotificationApps = [self enabledExposureNotificationApps];
  v5 = enabledExposureNotificationApps;
  if (v3)
  {
    LOBYTE(v3) = [enabledExposureNotificationApps count] != 0;
  }

  return v3;
}

+ (BOOL)isExposureNotificationEnabledForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = TCCAccessCopyInformation();
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 objectForKey:{kTCCInfoBundle, v13}];
          if (v9)
          {
            Identifier = CFBundleGetIdentifier(v9);
            if (CFEqual(identifierCopy, Identifier))
            {
              v11 = [v8 objectForKey:kTCCInfoGranted];
              LOBYTE(v5) = [v11 BOOLValue];

              goto LABEL_14;
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (void)setExposureNotificationEnabled:(BOOL)enabled forBundleIdentifier:(id)identifier
{
  v4 = [self copyTCCBundleForBundleIdentifier:identifier];
  if (v4)
  {
    v5 = v4;
    TCCAccessSetForBundle();

    CFRelease(v5);
  }
}

+ (__CFBundle)copyTCCBundleForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = TCCAccessCopyInformation();
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectForKey:{kTCCInfoBundle, v13}];
        if (v9)
        {
          v10 = v9;
          Identifier = CFBundleGetIdentifier(v9);
          if (CFEqual(identifierCopy, Identifier))
          {
            CFRetain(v10);
            goto LABEL_12;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end
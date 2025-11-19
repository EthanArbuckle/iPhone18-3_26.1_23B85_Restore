@interface ATXApplicationRecord
+ (BOOL)isAppClipForBundleId:(id)a3;
+ (BOOL)isAppClipGivenAppRecord:(id)a3;
+ (BOOL)isAppleOwnedAppForBundleId:(id)a3;
+ (BOOL)isAppleOwnedIncludingInternalOrSystemAppForBundleId:(id)a3;
+ (BOOL)isArcadeAppForBundle:(id)a3;
+ (BOOL)isBackgroundAudioSupportedForBundle:(id)a3;
+ (BOOL)isBetaAppForBundle:(id)a3;
+ (BOOL)isDeviceManagementPolicyOkForBundleId:(id)a3;
+ (BOOL)isEnterpriseAppForBundle:(id)a3;
+ (BOOL)isHiddenFromSpringBoardWithBundleId:(id)a3;
+ (BOOL)isInstalledAndNotRestrictedForBundle:(id)a3;
+ (BOOL)isInstalledForBundle:(id)a3;
+ (BOOL)isInstalledOrIsPlaceholderForBundle:(id)a3;
+ (BOOL)isInstallingForBundle:(id)a3;
+ (BOOL)isInternalAppForBundleId:(id)a3;
+ (BOOL)isInternalOrSystemAppForBundleId:(id)a3;
+ (BOOL)isLaunchProhibitedForBundle:(id)a3;
+ (BOOL)isOffloadedForBundle:(id)a3;
+ (BOOL)isRestoreInstallTypeForBundle:(id)a3;
+ (BOOL)isSwiftPlaygroundsBundle:(id)a3;
+ (BOOL)isSystemAppForBundleId:(id)a3;
+ (BOOL)isUPPValidatedForBundle:(id)a3;
+ (BOOL)isWebClipInstalledWithBundleId:(id)a3;
+ (id)appInfoForBundle:(id)a3;
+ (id)bundleIdForAdamIdIfInstalled:(unint64_t)a3;
+ (id)companionBundleIdForBundleId:(id)a3;
+ (id)genreForBundle:(id)a3;
+ (id)localizedNameForBundle:(id)a3;
+ (id)localizedShortnameForBundle:(id)a3;
+ (id)parentAppBundleIdForClipBundleID:(id)a3;
+ (id)recordForAdamId:(unint64_t)a3;
+ (id)recordForBundleId:(id)a3;
+ (id)registrationDateForBundle:(id)a3;
+ (id)schemaWithoutFallbackForBundle:(id)a3;
+ (unint64_t)genreIdForBundle:(id)a3;
+ (void)getDeviceManagementPolicyForBundle:(id)a3 completionHandler:(id)a4;
@end

@implementation ATXApplicationRecord

+ (id)recordForBundleId:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = ATXIsRemoteAppBundleId();
  v6 = objc_alloc(MEMORY[0x1E69635F8]);
  v7 = v6;
  if (v5)
  {
    v8 = ATXBundleIdForRemoteBundleId();
    v14 = 0;
    v9 = [v7 initWithRemotePlaceholderBundleIdentifier:v8 error:&v14];
    v10 = v14;

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    v9 = [v6 initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v13];
    v10 = v13;
    if (v10)
    {
LABEL_3:
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[ATXApplicationRecord recordForBundleId:];
      }

LABEL_5:

      goto LABEL_8;
    }
  }

  if (!v9)
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationRecord *)v3 recordForBundleId:v11];
    }

    goto LABEL_5;
  }

LABEL_8:

  objc_autoreleasePoolPop(v4);

  return v9;
}

+ (id)companionBundleIdForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 counterpartIdentifiers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v7 counterpartIdentifiers];
      v11 = [v10 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v11;
      }

      else
      {
        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[ATXApplicationRecord companionBundleIdForBundleId:];
        }

        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

+ (BOOL)isInstalledAndNotRestrictedForBundle:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([a1 isAppClipWebClipBundleId:v4])
  {
    v6 = [a1 isWebClipInstalledWithBundleId:v4];
  }

  else if ([v4 isEqualToString:@"com.apple.Health"] && objc_msgSend(MEMORY[0x1E69C5CF8], "isiPad") && (objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, objc_msgSend(v7, "operatingSystemVersion"), v8, v16 == 16))
  {
    v6 = 0;
  }

  else
  {
    v9 = [a1 recordForBundleId:v4];
    v10 = [v9 applicationState];
    v11 = [v10 isInstalled];
    v12 = [v10 isRestricted];
    v6 = v11 & (v12 ^ 1);
    if ((v6 & 1) == 0)
    {
      v13 = v12;
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = v4;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v13 & 1;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXApplicationRecord for app: %@ installed: %{BOOL}d restricted: %{BOOL}d", buf, 0x18u);
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

+ (BOOL)isHiddenFromSpringBoardWithBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 appTags];
    v9 = [v8 containsObject:@"hidden"];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v9;
}

+ (BOOL)isWebClipInstalledWithBundleId:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 stringByReplacingOccurrencesOfString:*MEMORY[0x1E6994668] withString:&stru_1F3E050C8];
  v6 = [MEMORY[0x1E6994690] sharedStore];
  v7 = [v6 synchronouslyGetAppClipWithIdentifier:v5];

  if (v7 && [v7 isApplicationInstalled])
  {
    v8 = [v7 title];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

+ (BOOL)isInstalledOrIsPlaceholderForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 applicationState];
  if ([v7 isInstalled])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 isPlaceholder];
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)isInstallingForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 applicationState];
  if ([v7 isDowngraded])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 isPlaceholder];
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)isOffloadedForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 applicationState];
  if ([v7 isDowngraded])
  {
    v8 = [v7 isPlaceholder];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)isInstalledForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 applicationState];
  v8 = [v7 isInstalled];

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (id)localizedShortnameForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 localizedShortName];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (id)localizedNameForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 localizedName];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (BOOL)isLaunchProhibitedForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 isLaunchProhibited];

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (BOOL)isArcadeAppForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 isArcadeApp];

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (BOOL)isBackgroundAudioSupportedForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 UIBackgroundModes];
  v8 = [v7 containsObject:@"audio"];

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)isEnterpriseAppForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 isProfileValidated];

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (BOOL)isUPPValidatedForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 isUPPValidated];

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (BOOL)isBetaAppForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 isBeta];

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (id)genreForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 iTunesMetadata];
  v8 = [v7 genre];

  objc_autoreleasePoolPop(v5);

  return v8;
}

+ (unint64_t)genreIdForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 iTunesMetadata];
  v8 = [v7 genreIdentifier];

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (id)registrationDateForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 registrationDate];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (BOOL)isRestoreInstallTypeForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = [v6 installType] == 2;

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (void)getDeviceManagementPolicyForBundle:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 recordForBundleId:v9];
  [v8 getDeviceManagementPolicyWithCompletionHandler:v6];

  objc_autoreleasePoolPop(v7);
}

+ (id)appInfoForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  if (v6)
  {
    v7 = [MEMORY[0x1E696E728] appInfoWithApplicationRecord:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (id)schemaWithoutFallbackForBundle:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  if (v6)
  {
    v7 = [MEMORY[0x1E696E9B8] schemaWithBundleRecord:v6 fallbackToSystemSchema:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (id)recordForAdamId:(unint64_t)a3
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithStoreItemIdentifier:a3 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationRecord *)a3 recordForAdamId:v6, v7];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)bundleIdForAdamIdIfInstalled:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForAdamId:a3];
  v7 = [v6 applicationState];
  if ([v7 isInstalled] && (objc_msgSend(v7, "isRestricted") & 1) == 0)
  {
    v8 = [v6 bundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

+ (BOOL)isAppClipForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  if (v6)
  {
    v7 = [a1 isAppClipGivenAppRecord:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (id)parentAppBundleIdForClipBundleID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v19 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v19];
  v7 = v19;
  if (v7)
  {
    v8 = __atxlog_handle_hero();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_INFO, "Could not get LSApplicationRecord inside parentAppBundleIdForClipBundleID. Error: %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 entitlements];
    v12 = [a1 isAppClipGivenAppRecord:v6];
    v13 = objc_opt_class();
    v14 = [v8 objectForKey:@"com.apple.developer.parent-application-identifiers" ofClass:v13 valuesOfClass:objc_opt_class()];
    v9 = v14;
    if (v12)
    {
      if ([v14 count])
      {
        v15 = [v9 firstObject];
        v16 = [v15 rangeOfString:@"."];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = [v9 firstObject];
          v10 = [v17 substringFromIndex:v16 + 1];

          v18 = __atxlog_handle_hero();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v21 = v4;
            v22 = 2112;
            v23 = v9;
            _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "CLIP app %@ parentAppIDs: %@", buf, 0x16u);
          }

          goto LABEL_6;
        }
      }
    }

LABEL_5:
    v10 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v9 = 0;
  v10 = 0;
LABEL_7:

  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (BOOL)isAppClipGivenAppRecord:(id)a3
{
  v3 = [a3 appClipMetadata];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isSwiftPlaygroundsBundle:(id)a3
{
  v3 = [a1 recordForBundleId:a3];
  v4 = [v3 isSwiftPlaygroundsApp];

  return v4;
}

+ (BOOL)isSystemAppForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 compatibilityObject];
    v9 = [v8 applicationType];
    v10 = [v9 isEqualToString:@"System"];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (BOOL)isAppleOwnedAppForBundleId:(id)a3
{
  v3 = ATXBundleIdForRemoteBundleId();
  v4 = [v3 hasPrefix:@"com.apple."];

  return v4;
}

+ (BOOL)isInternalAppForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 compatibilityObject];
    v9 = [v8 applicationType];
    v10 = [v9 isEqualToString:@"Internal"];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (BOOL)isInternalOrSystemAppForBundleId:(id)a3
{
  v4 = a3;
  if ([a1 isInternalAppForBundleId:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 isSystemAppForBundleId:v4];
  }

  return v5;
}

+ (BOOL)isAppleOwnedIncludingInternalOrSystemAppForBundleId:(id)a3
{
  v4 = a3;
  if ([a1 isInternalAppForBundleId:v4] & 1) != 0 || (objc_msgSend(a1, "isSystemAppForBundleId:", v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 isAppleOwnedAppForBundleId:v4];
  }

  return v5;
}

+ (BOOL)isDeviceManagementPolicyOkForBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 recordForBundleId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 compatibilityObject];
    v9 = [v8 deviceManagementPolicy] == 0;
  }

  else
  {
    v9 = 1;
  }

  objc_autoreleasePoolPop(v5);
  return v9;
}

+ (void)recordForBundleId:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  v3 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "Couldn't fetch record for bundle %@, error: %@", v2, 0x16u);
}

+ (void)recordForBundleId:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Fetched nil record for bundle %@", &v2, 0xCu);
}

+ (void)companionBundleIdForBundleId:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  v3 = v0;
  _os_log_fault_impl(&dword_1BF549000, v1, OS_LOG_TYPE_FAULT, "first counterpart identifier (%@) was not a string for bundle id: %@", v2, 0x16u);
}

+ (void)recordForAdamId:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_8();
  v7 = a2;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Couldn't fetch record for adam id %@, error: %@", v6, 0x16u);
}

@end
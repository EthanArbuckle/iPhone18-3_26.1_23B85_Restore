@interface ATXApplicationRecord
+ (BOOL)isAppClipForBundleId:(id)id;
+ (BOOL)isAppClipGivenAppRecord:(id)record;
+ (BOOL)isAppleOwnedAppForBundleId:(id)id;
+ (BOOL)isAppleOwnedIncludingInternalOrSystemAppForBundleId:(id)id;
+ (BOOL)isArcadeAppForBundle:(id)bundle;
+ (BOOL)isBackgroundAudioSupportedForBundle:(id)bundle;
+ (BOOL)isBetaAppForBundle:(id)bundle;
+ (BOOL)isDeviceManagementPolicyOkForBundleId:(id)id;
+ (BOOL)isEnterpriseAppForBundle:(id)bundle;
+ (BOOL)isHiddenFromSpringBoardWithBundleId:(id)id;
+ (BOOL)isInstalledAndNotRestrictedForBundle:(id)bundle;
+ (BOOL)isInstalledForBundle:(id)bundle;
+ (BOOL)isInstalledOrIsPlaceholderForBundle:(id)bundle;
+ (BOOL)isInstallingForBundle:(id)bundle;
+ (BOOL)isInternalAppForBundleId:(id)id;
+ (BOOL)isInternalOrSystemAppForBundleId:(id)id;
+ (BOOL)isLaunchProhibitedForBundle:(id)bundle;
+ (BOOL)isOffloadedForBundle:(id)bundle;
+ (BOOL)isRestoreInstallTypeForBundle:(id)bundle;
+ (BOOL)isSwiftPlaygroundsBundle:(id)bundle;
+ (BOOL)isSystemAppForBundleId:(id)id;
+ (BOOL)isUPPValidatedForBundle:(id)bundle;
+ (BOOL)isWebClipInstalledWithBundleId:(id)id;
+ (id)appInfoForBundle:(id)bundle;
+ (id)bundleIdForAdamIdIfInstalled:(unint64_t)installed;
+ (id)companionBundleIdForBundleId:(id)id;
+ (id)genreForBundle:(id)bundle;
+ (id)localizedNameForBundle:(id)bundle;
+ (id)localizedShortnameForBundle:(id)bundle;
+ (id)parentAppBundleIdForClipBundleID:(id)d;
+ (id)recordForAdamId:(unint64_t)id;
+ (id)recordForBundleId:(id)id;
+ (id)registrationDateForBundle:(id)bundle;
+ (id)schemaWithoutFallbackForBundle:(id)bundle;
+ (unint64_t)genreIdForBundle:(id)bundle;
+ (void)getDeviceManagementPolicyForBundle:(id)bundle completionHandler:(id)handler;
@end

@implementation ATXApplicationRecord

+ (id)recordForBundleId:(id)id
{
  idCopy = id;
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
    v9 = [v6 initWithBundleIdentifier:idCopy allowPlaceholder:1 error:&v13];
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
      [(ATXApplicationRecord *)idCopy recordForBundleId:v11];
    }

    goto LABEL_5;
  }

LABEL_8:

  objc_autoreleasePoolPop(v4);

  return v9;
}

+ (id)companionBundleIdForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:idCopy];
  v7 = v6;
  if (v6)
  {
    counterpartIdentifiers = [v6 counterpartIdentifiers];
    v9 = [counterpartIdentifiers count];

    if (v9)
    {
      counterpartIdentifiers2 = [v7 counterpartIdentifiers];
      firstObject = [counterpartIdentifiers2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = firstObject;
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

+ (BOOL)isInstalledAndNotRestrictedForBundle:(id)bundle
{
  v23 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  if ([self isAppClipWebClipBundleId:bundleCopy])
  {
    v6 = [self isWebClipInstalledWithBundleId:bundleCopy];
  }

  else if ([bundleCopy isEqualToString:@"com.apple.Health"] && objc_msgSend(MEMORY[0x1E69C5CF8], "isiPad") && (objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, objc_msgSend(v7, "operatingSystemVersion"), v8, v16 == 16))
  {
    v6 = 0;
  }

  else
  {
    v9 = [self recordForBundleId:bundleCopy];
    applicationState = [v9 applicationState];
    isInstalled = [applicationState isInstalled];
    isRestricted = [applicationState isRestricted];
    v6 = isInstalled & (isRestricted ^ 1);
    if ((v6 & 1) == 0)
    {
      v13 = isRestricted;
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = bundleCopy;
        v19 = 1024;
        v20 = isInstalled;
        v21 = 1024;
        v22 = v13 & 1;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXApplicationRecord for app: %@ installed: %{BOOL}d restricted: %{BOOL}d", buf, 0x18u);
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

+ (BOOL)isHiddenFromSpringBoardWithBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:idCopy];
  v7 = v6;
  if (v6)
  {
    appTags = [v6 appTags];
    v9 = [appTags containsObject:@"hidden"];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v9;
}

+ (BOOL)isWebClipInstalledWithBundleId:(id)id
{
  idCopy = id;
  v4 = objc_autoreleasePoolPush();
  v5 = [idCopy stringByReplacingOccurrencesOfString:*MEMORY[0x1E6994668] withString:&stru_1F3E050C8];
  mEMORY[0x1E6994690] = [MEMORY[0x1E6994690] sharedStore];
  v7 = [mEMORY[0x1E6994690] synchronouslyGetAppClipWithIdentifier:v5];

  if (v7 && [v7 isApplicationInstalled])
  {
    title = [v7 title];
    v9 = title != 0;
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

+ (BOOL)isInstalledOrIsPlaceholderForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  applicationState = [v6 applicationState];
  if ([applicationState isInstalled])
  {
    isPlaceholder = 1;
  }

  else
  {
    isPlaceholder = [applicationState isPlaceholder];
  }

  objc_autoreleasePoolPop(v5);
  return isPlaceholder;
}

+ (BOOL)isInstallingForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  applicationState = [v6 applicationState];
  if ([applicationState isDowngraded])
  {
    isPlaceholder = 0;
  }

  else
  {
    isPlaceholder = [applicationState isPlaceholder];
  }

  objc_autoreleasePoolPop(v5);
  return isPlaceholder;
}

+ (BOOL)isOffloadedForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  applicationState = [v6 applicationState];
  if ([applicationState isDowngraded])
  {
    isPlaceholder = [applicationState isPlaceholder];
  }

  else
  {
    isPlaceholder = 0;
  }

  objc_autoreleasePoolPop(v5);
  return isPlaceholder;
}

+ (BOOL)isInstalledForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  applicationState = [v6 applicationState];
  isInstalled = [applicationState isInstalled];

  objc_autoreleasePoolPop(v5);
  return isInstalled;
}

+ (id)localizedShortnameForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  localizedShortName = [v6 localizedShortName];

  objc_autoreleasePoolPop(v5);

  return localizedShortName;
}

+ (id)localizedNameForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  localizedName = [v6 localizedName];

  objc_autoreleasePoolPop(v5);

  return localizedName;
}

+ (BOOL)isLaunchProhibitedForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  isLaunchProhibited = [v6 isLaunchProhibited];

  objc_autoreleasePoolPop(v5);
  return isLaunchProhibited;
}

+ (BOOL)isArcadeAppForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  isArcadeApp = [v6 isArcadeApp];

  objc_autoreleasePoolPop(v5);
  return isArcadeApp;
}

+ (BOOL)isBackgroundAudioSupportedForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  uIBackgroundModes = [v6 UIBackgroundModes];
  v8 = [uIBackgroundModes containsObject:@"audio"];

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)isEnterpriseAppForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  isProfileValidated = [v6 isProfileValidated];

  objc_autoreleasePoolPop(v5);
  return isProfileValidated;
}

+ (BOOL)isUPPValidatedForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  isUPPValidated = [v6 isUPPValidated];

  objc_autoreleasePoolPop(v5);
  return isUPPValidated;
}

+ (BOOL)isBetaAppForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  isBeta = [v6 isBeta];

  objc_autoreleasePoolPop(v5);
  return isBeta;
}

+ (id)genreForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  iTunesMetadata = [v6 iTunesMetadata];
  genre = [iTunesMetadata genre];

  objc_autoreleasePoolPop(v5);

  return genre;
}

+ (unint64_t)genreIdForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  iTunesMetadata = [v6 iTunesMetadata];
  genreIdentifier = [iTunesMetadata genreIdentifier];

  objc_autoreleasePoolPop(v5);
  return genreIdentifier;
}

+ (id)registrationDateForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  registrationDate = [v6 registrationDate];

  objc_autoreleasePoolPop(v5);

  return registrationDate;
}

+ (BOOL)isRestoreInstallTypeForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
  v7 = [v6 installType] == 2;

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (void)getDeviceManagementPolicyForBundle:(id)bundle completionHandler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  v8 = [self recordForBundleId:bundleCopy];
  [v8 getDeviceManagementPolicyWithCompletionHandler:handlerCopy];

  objc_autoreleasePoolPop(v7);
}

+ (id)appInfoForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
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

+ (id)schemaWithoutFallbackForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:bundleCopy];
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

+ (id)recordForAdamId:(unint64_t)id
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithStoreItemIdentifier:id error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationRecord *)id recordForAdamId:v6, v7];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)bundleIdForAdamIdIfInstalled:(unint64_t)installed
{
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForAdamId:installed];
  applicationState = [v6 applicationState];
  if ([applicationState isInstalled] && (objc_msgSend(applicationState, "isRestricted") & 1) == 0)
  {
    bundleIdentifier = [v6 bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  objc_autoreleasePoolPop(v5);

  return bundleIdentifier;
}

+ (BOOL)isAppClipForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:idCopy];
  if (v6)
  {
    v7 = [self isAppClipGivenAppRecord:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

+ (id)parentAppBundleIdForClipBundleID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  v19 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v19];
  v7 = v19;
  if (v7)
  {
    entitlements = __atxlog_handle_hero();
    if (os_log_type_enabled(entitlements, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1BF549000, entitlements, OS_LOG_TYPE_INFO, "Could not get LSApplicationRecord inside parentAppBundleIdForClipBundleID. Error: %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_5;
  }

  if (v6)
  {
    entitlements = [v6 entitlements];
    v12 = [self isAppClipGivenAppRecord:v6];
    v13 = objc_opt_class();
    v14 = [entitlements objectForKey:@"com.apple.developer.parent-application-identifiers" ofClass:v13 valuesOfClass:objc_opt_class()];
    v9 = v14;
    if (v12)
    {
      if ([v14 count])
      {
        firstObject = [v9 firstObject];
        v16 = [firstObject rangeOfString:@"."];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          firstObject2 = [v9 firstObject];
          v10 = [firstObject2 substringFromIndex:v16 + 1];

          v18 = __atxlog_handle_hero();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v21 = dCopy;
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

+ (BOOL)isAppClipGivenAppRecord:(id)record
{
  appClipMetadata = [record appClipMetadata];
  v4 = appClipMetadata != 0;

  return v4;
}

+ (BOOL)isSwiftPlaygroundsBundle:(id)bundle
{
  v3 = [self recordForBundleId:bundle];
  isSwiftPlaygroundsApp = [v3 isSwiftPlaygroundsApp];

  return isSwiftPlaygroundsApp;
}

+ (BOOL)isSystemAppForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:idCopy];
  v7 = v6;
  if (v6)
  {
    compatibilityObject = [v6 compatibilityObject];
    applicationType = [compatibilityObject applicationType];
    v10 = [applicationType isEqualToString:@"System"];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (BOOL)isAppleOwnedAppForBundleId:(id)id
{
  v3 = ATXBundleIdForRemoteBundleId();
  v4 = [v3 hasPrefix:@"com.apple."];

  return v4;
}

+ (BOOL)isInternalAppForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:idCopy];
  v7 = v6;
  if (v6)
  {
    compatibilityObject = [v6 compatibilityObject];
    applicationType = [compatibilityObject applicationType];
    v10 = [applicationType isEqualToString:@"Internal"];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (BOOL)isInternalOrSystemAppForBundleId:(id)id
{
  idCopy = id;
  if ([self isInternalAppForBundleId:idCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self isSystemAppForBundleId:idCopy];
  }

  return v5;
}

+ (BOOL)isAppleOwnedIncludingInternalOrSystemAppForBundleId:(id)id
{
  idCopy = id;
  if ([self isInternalAppForBundleId:idCopy] & 1) != 0 || (objc_msgSend(self, "isSystemAppForBundleId:", idCopy))
  {
    v5 = 1;
  }

  else
  {
    v5 = [self isAppleOwnedAppForBundleId:idCopy];
  }

  return v5;
}

+ (BOOL)isDeviceManagementPolicyOkForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [self recordForBundleId:idCopy];
  v7 = v6;
  if (v6)
  {
    compatibilityObject = [v6 compatibilityObject];
    v9 = [compatibilityObject deviceManagementPolicy] == 0;
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
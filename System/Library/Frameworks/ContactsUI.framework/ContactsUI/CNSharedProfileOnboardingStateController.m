@interface CNSharedProfileOnboardingStateController
+ (id)log;
+ (id)userDefaults;
+ (void)writeToDefaultsDidSkipPosterSetup:(BOOL)a3;
- (BOOL)accountCanCreateSNaP;
- (BOOL)alwaysShowSNaPOnboarding;
- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)a3;
- (BOOL)deviceSupportsPosters;
- (BOOL)didSkipPosterSetup;
- (BOOL)hasCompletedOnboarding;
- (BOOL)iCloudSignedInToUseNicknames;
- (BOOL)isPhotosReadyForOnboarding;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)shouldShowOnboarding;
- (int64_t)lastShowOnboardingVersionInSettings;
- (int64_t)lastShownOnboardingVersion;
- (void)writeToDefaultsCompletedOnboarding:(BOOL)a3;
- (void)writeToDefaultsLastShownSettingsOnboardingVersion;
- (void)writeToDefaultsOnboardingVersion:(int64_t)a3;
@end

@implementation CNSharedProfileOnboardingStateController

- (BOOL)shouldShowOnboarding
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CNSharedProfileOnboardingStateController *)self alwaysShowSNaPOnboarding])
  {
    return 1;
  }

  v4 = [(CNSharedProfileOnboardingStateController *)self lastShownOnboardingVersion];
  v3 = v4 < 1;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = v4 < 1;
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Should show onboarding: newOnboardingAvailable %d", v7, 8u);
  }

  return v3;
}

- (BOOL)alwaysShowSNaPOnboarding
{
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 valueForKey:@"CNSharedProfileOnboardingAlwaysShow"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Always show SNaP Onboarding enabled", v7, 2u);
    }
  }

  return v4;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.contacts.sharedProfile"];

  return v2;
}

- (int64_t)lastShownOnboardingVersion
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 integerForKey:@"CNSharedProfileOnboardingLastShownVersion"];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Last shown onboarding version: %ld", &v6, 0xCu);
  }

  return v3;
}

+ (id)log
{
  if (log_cn_once_token_21 != -1)
  {
    dispatch_once(&log_cn_once_token_21, &__block_literal_global_47416);
  }

  v3 = log_cn_once_object_21;

  return v3;
}

uint64_t __47__CNSharedProfileOnboardingStateController_log__block_invoke()
{
  log_cn_once_object_21 = os_log_create("com.apple.contactsui", "CNSharedProfileOnboardingController");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)writeToDefaultsDidSkipPosterSetup:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Writing to defaults, user has selected to skip poster setup %d", v6, 8u);
  }

  v5 = [objc_opt_class() userDefaults];
  [v5 setBool:v3 forKey:@"CNSharedProfileOnboardingDidSkipPosterSetup"];
}

- (void)writeToDefaultsLastShownSettingsOnboardingVersion
{
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "Writing to defaults, user has seen settings onboarding", v4, 2u);
  }

  v3 = [objc_opt_class() userDefaults];
  [v3 setInteger:1 forKey:@"CNSharedProfileOnboardingLastShownSettingsVersion"];
}

- (int64_t)lastShowOnboardingVersionInSettings
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 integerForKey:@"CNSharedProfileOnboardingLastShownSettingsVersion"];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Last shown settings onboarding version: %ld", &v6, 0xCu);
  }

  return v3;
}

- (BOOL)didSkipPosterSetup
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 BOOLForKey:@"CNSharedProfileOnboardingDidSkipPosterSetup"];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "User skipped poster setup: %d", v6, 8u);
  }

  return v3;
}

- (void)writeToDefaultsCompletedOnboarding:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Writing to defaults, completed onboarding %d", v6, 8u);
  }

  v5 = [objc_opt_class() userDefaults];
  [v5 setBool:v3 forKey:@"CNSharedProfileOnboardingCompleted"];
}

- (BOOL)hasCompletedOnboarding
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 BOOLForKey:@"CNSharedProfileOnboardingCompleted"];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Has completed onboarding: %d", v6, 8u);
  }

  return v3;
}

- (void)writeToDefaultsOnboardingVersion:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Writing to defaults, onboarding versions %ld", &v6, 0xCu);
  }

  v5 = [objc_opt_class() userDefaults];
  [v5 setInteger:a3 forKey:@"CNSharedProfileOnboardingLastShownVersion"];
}

- (BOOL)accountCanCreateSNaP
{
  if (![(CNSharedProfileOnboardingStateController *)self iCloudSignedInToUseNicknames])
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Cannot create SNaP on account because iCloud is not signed in";
      v7 = buf;
LABEL_6:
      _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    }

LABEL_7:

    return 0;
  }

  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if (([v4 isFeatureEnabled:26] & 1) == 0)
  {
    v9 = [(CNSharedProfileOnboardingStateController *)self multiplePhoneNumbersTiedToAppleID];

    if (!v9)
    {
      return 1;
    }

    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v6 = "Cannot create SNaP on account because multiple numbers are associated with Apple ID";
      v7 = &v10;
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  return 1;
}

- (BOOL)iCloudSignedInToUseNicknames
{
  v2 = [getIMNicknameControllerClass() sharedInstance];
  v3 = [v2 iCloudSignedInToUseNicknames];

  return v3;
}

- (BOOL)multiplePhoneNumbersTiedToAppleID
{
  IMNicknameControllerClass = getIMNicknameControllerClass();

  return [IMNicknameControllerClass multiplePhoneNumbersTiedToAppleID];
}

- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)a3
{
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:28];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(CNSharedProfileOnboardingStateController *)self accountCanCreateSNaP];
  if (v8)
  {
    if (!a3)
    {
      v9 = [MEMORY[0x1E69966E8] currentEnvironment];
      v10 = [v9 featureFlags];
      v11 = [v10 isFeatureEnabled:26];

      if (v11)
      {
        if ([(CNSharedProfileOnboardingStateController *)self multiplePhoneNumbersTiedToAppleID])
        {
LABEL_6:
          LOBYTE(v8) = 0;
          return v8;
        }
      }
    }

    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "User can show onboarding", v14, 2u);
    }

    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)isPhotosReadyForOnboarding
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v2 = [CNPhotoLibraryProvider photoLibraryWithError:&v14];
  v3 = v14;
  if (v2)
  {
    [v2 ratioOfAssetsAtOrAboveSceneAnalysisVersion:88];
    v5 = v4;
    [v2 ratioOfAssetsAtOrAboveFaceAnalysisVersion:11];
    v7 = v6;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnough", @"com.apple.photoanalysisd", 0);
    v9 = AppBooleanValue;
    v10 = v5 >= 0.75;
    if (v7 < 0.75)
    {
      v10 = 0;
    }

    if (AppBooleanValue)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v16 = v5;
      v17 = 2048;
      v18 = v7;
      v19 = 1024;
      v20 = v9 != 0;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "Is Photos app ready for onboarding: scene analysis ratio %.2f, face analysis ratio %.2f, suggestions defaults: %d", buf, 0x1Cu);
    }
  }

  else
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = *&v3;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "Unable to open photo library for onboarding %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)deviceSupportsPosters
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

@end
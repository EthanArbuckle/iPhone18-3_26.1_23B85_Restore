@interface PKImageWandOnboarding
+ (uint64_t)hasSeenOnboardingUI;
+ (void)setHasSeenOnboardingUI:(uint64_t)a1;
@end

@implementation PKImageWandOnboarding

+ (void)setHasSeenOnboardingUI:(uint64_t)a1
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (_os_feature_enabled_impl() && !PKIsDeviceLocked() && (([MEMORY[0x1E696AAE8] mainBundle], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"com.apple.mobilenotes"), v4, v3, v5) && !PKIsQuickNoteOnPhone() || (PKIsInternalTestApp() & 1) != 0))
  {
    if (+[PKImageWandOnboarding hasSeenOnboardingUI]== a2)
    {
      return;
    }

    v6 = os_log_create("com.apple.pencilkit", "PKImageWandOnboarding");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Set hasSeenOnboardingUI to %{BOOL}d", v9, 8u);
    }

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v7 setBool:a2 forKey:@"PKHasSeenImageWandOnboardingUI"];

    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 synchronize];
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "PKImageWandOnboarding");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9[0]) = 0;
    }
  }
}

+ (uint64_t)hasSeenOnboardingUI
{
  objc_opt_self();
  if (!_os_feature_enabled_impl() || PKIsDeviceLocked())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.mobilenotes"];

  if ((!v2 || PKIsQuickNoteOnPhone()) && !PKIsInternalTestApp())
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"PKHasSeenImageWandOnboardingUI"];

  return v4;
}

@end
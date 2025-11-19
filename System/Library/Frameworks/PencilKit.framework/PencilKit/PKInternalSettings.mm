@interface PKInternalSettings
+ (id)sharedInstance;
- (uint64_t)forceShowImageWandOnboarding;
- (uint64_t)imageWandOnboardingDisabled;
- (uint64_t)showResetImageWandOnboardingInPalette;
@end

@implementation PKInternalSettings

+ (id)sharedInstance
{
  objc_opt_self();
  if (_MergedGlobals_173 != -1)
  {
    dispatch_once(&_MergedGlobals_173, &__block_literal_global_93);
  }

  v0 = qword_1ED6A5598;

  return v0;
}

void __36__PKInternalSettings_sharedInstance__block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = objc_alloc_init(PKInternalSettings);
  }

  else
  {
    v0 = 0;
  }

  v1 = qword_1ED6A5598;
  qword_1ED6A5598 = v0;
}

- (uint64_t)showResetImageWandOnboardingInPalette
{
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"internalSettings.drawing.showResetImageWandOnboardingInPalette"];

    return v2;
  }

  return result;
}

- (uint64_t)forceShowImageWandOnboarding
{
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"PKForceShowImageWandOnboarding"];

    return v2;
  }

  return result;
}

- (uint64_t)imageWandOnboardingDisabled
{
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"PKImageWandOnboardingDisabled"];

    return v2;
  }

  return result;
}

@end
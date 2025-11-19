@interface LPSettings
+ (BOOL)subsampleImagesToScreenSize;
+ (BOOL)useLightweightMaterials;
+ (void)updateFromDefaults;
@end

@implementation LPSettings

+ (void)updateFromDefaults
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  showDebugIndicators = [v2 BOOLForKey:@"LPShowDebugIndicators"];
  disableLegacyStoreLookups = [v2 BOOLForKey:@"LPDisableLegacyStoreLookups"];
  disableAutoPlay = UIAccessibilityIsReduceMotionEnabled();
  disableAnimations = disableAutoPlay;
  if ((updateFromDefaults_hasEverUpdated & 1) != 0 || ([MEMORY[0x1E696AD88] defaultCenter], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696ADC8], "mainQueue"), v4 = objc_claimAutoreleasedReturnValue(), v5 = *MEMORY[0x1E69DD918], v7[0] = MEMORY[0x1E69E9820], v7[1] = 3221225472, v7[2] = __32__LPSettings_updateFromDefaults__block_invoke_2, v7[3] = &unk_1E7A35DA0, v8 = &__block_literal_global_8, v6 = objc_msgSend(v3, "addObserverForName:object:queue:usingBlock:", v5, 0, v4, v7), v4, v3, v8, updateFromDefaults_hasEverUpdated == 1))
  {
    +[LPTheme invalidateThemeCache];
  }

  updateFromDefaults_hasEverUpdated = 1;
}

BOOL __32__LPSettings_updateFromDefaults__block_invoke()
{
  result = UIAccessibilityIsReduceMotionEnabled();
  disableAutoPlay = result;
  disableAnimations = result;
  return result;
}

+ (BOOL)subsampleImagesToScreenSize
{
  v2 = +[LPTestingOverrides forceSubsampleImagesToScreenSize];

  if (!v2)
  {
    return 0;
  }

  v3 = +[LPTestingOverrides forceSubsampleImagesToScreenSize];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)useLightweightMaterials
{
  if (useLightweightMaterials_onceToken != -1)
  {
    +[LPSettings useLightweightMaterials];
  }

  return useLightweightMaterials_lightweightMaterialsEnabled;
}

void __37__LPSettings_useLightweightMaterials__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v0 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v2 setBackgroundColor:v0];

  v1 = [v2 layer];
  useLightweightMaterials_lightweightMaterialsEnabled = [v1 backgroundColor] == 0;
}

@end
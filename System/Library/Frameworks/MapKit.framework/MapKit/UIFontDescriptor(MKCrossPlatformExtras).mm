@interface UIFontDescriptor(MKCrossPlatformExtras)
+ (id)_mapkit_fontFeaturesForTabularFigures;
+ (id)_mapkit_fontFeaturesForTimeDisplayUseMonospace:()MKCrossPlatformExtras;
+ (id)_mapkit_fontMonospaceFeature;
+ (id)_mapkit_fontRoundedColonFeature;
- (id)_mapkit_fontDescriptorByAddingFeaturesForTabularFigures;
- (id)_mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:()MKCrossPlatformExtras;
@end

@implementation UIFontDescriptor(MKCrossPlatformExtras)

- (id)_mapkit_fontDescriptorByAddingFeaturesForTabularFigures
{
  v7[1] = *MEMORY[0x1E69E9840];
  _mapkit_fontFeaturesForTabularFigures = [objc_opt_class() _mapkit_fontFeaturesForTabularFigures];
  v6 = *MEMORY[0x1E69DB8B0];
  v7[0] = _mapkit_fontFeaturesForTabularFigures;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [self fontDescriptorByAddingAttributes:v3];

  return v4;
}

- (id)_mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:()MKCrossPlatformExtras
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() _mapkit_fontFeaturesForTimeDisplayUseMonospace:a3];
  v8 = *MEMORY[0x1E69DB8B0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self fontDescriptorByAddingAttributes:v5];

  return v6;
}

+ (id)_mapkit_fontFeaturesForTabularFigures
{
  v4[1] = *MEMORY[0x1E69E9840];
  _mapkit_fontMonospaceFeature = [self _mapkit_fontMonospaceFeature];
  v4[0] = _mapkit_fontMonospaceFeature;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)_mapkit_fontRoundedColonFeature
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DB900];
  v3[0] = *MEMORY[0x1E69DB908];
  v3[1] = v0;
  v4[0] = &unk_1F16110B0;
  v4[1] = &unk_1F16110C8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

+ (id)_mapkit_fontMonospaceFeature
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DB908];
  v3[0] = *MEMORY[0x1E69DB900];
  v3[1] = v0;
  v4[0] = &unk_1F1611080;
  v4[1] = &unk_1F1611098;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

+ (id)_mapkit_fontFeaturesForTimeDisplayUseMonospace:()MKCrossPlatformExtras
{
  v5 = MEMORY[0x1E695DF70];
  _mapkit_fontRoundedColonFeature = [self _mapkit_fontRoundedColonFeature];
  v7 = [v5 arrayWithObject:_mapkit_fontRoundedColonFeature];

  if (a3)
  {
    _mapkit_fontMonospaceFeature = [self _mapkit_fontMonospaceFeature];
    [v7 addObject:_mapkit_fontMonospaceFeature];
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];

  return v9;
}

@end
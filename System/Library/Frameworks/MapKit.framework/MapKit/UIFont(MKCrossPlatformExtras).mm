@interface UIFont(MKCrossPlatformExtras)
- (double)_mapkit_scaledValueForValue:()MKCrossPlatformExtras scalingForMacIdiom:respectingTraitEnvironment:;
- (id)_mapkit_fontByAddingFeaturesForTabularFigures;
- (id)_mapkit_fontByAddingFeaturesForTimeDisplayUseMonospace:()MKCrossPlatformExtras;
- (id)_mapkit_fontWithSymbolicTraits:()MKCrossPlatformExtras;
- (id)_mapkit_fontWithWeight:()MKCrossPlatformExtras;
- (id)traitCollectionFromTraitEnvironment:()MKCrossPlatformExtras;
@end

@implementation UIFont(MKCrossPlatformExtras)

- (id)traitCollectionFromTraitEnvironment:()MKCrossPlatformExtras
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    objc_opt_class();
    objc_opt_isKindOfClass();
    traitCollection = [v3 traitCollection];
  }

  else
  {
    traitCollection = 0;
  }

  return traitCollection;
}

- (double)_mapkit_scaledValueForValue:()MKCrossPlatformExtras scalingForMacIdiom:respectingTraitEnvironment:
{
  v7 = [self traitCollectionFromTraitEnvironment:a5];
  [v7 userInterfaceIdiom];
  [v7 displayScale];
  if (!v7)
  {
    if (_mapkit_scaledValueForValue_scalingForMacIdiom_respectingTraitEnvironment__onceToken != -1)
    {
      dispatch_once(&_mapkit_scaledValueForValue_scalingForMacIdiom_respectingTraitEnvironment__onceToken, &__block_literal_global_7495);
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
  }

  [self _scaledValueForValue:a2];
  UICeilToScale();
  v10 = v9;

  return v10;
}

- (id)_mapkit_fontWithSymbolicTraits:()MKCrossPlatformExtras
{
  fontDescriptor = [self fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:a3];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)_mapkit_fontWithWeight:()MKCrossPlatformExtras
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB8F0];
  v10 = *MEMORY[0x1E69DB990];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v11 = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  fontDescriptor = [self fontDescriptor];
  v6 = [fontDescriptor fontDescriptorByAddingAttributes:v4];

  v7 = MEMORY[0x1E69DB878];
  [self pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  return v8;
}

- (id)_mapkit_fontByAddingFeaturesForTabularFigures
{
  fontDescriptor = [self fontDescriptor];
  _mapkit_fontDescriptorByAddingFeaturesForTabularFigures = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTabularFigures];

  v4 = MEMORY[0x1E69DB878];
  [self pointSize];
  v5 = [v4 fontWithDescriptor:_mapkit_fontDescriptorByAddingFeaturesForTabularFigures size:?];

  return v5;
}

- (id)_mapkit_fontByAddingFeaturesForTimeDisplayUseMonospace:()MKCrossPlatformExtras
{
  fontDescriptor = [self fontDescriptor];
  v6 = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:a3];

  v7 = MEMORY[0x1E69DB878];
  [self pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  return v8;
}

@end
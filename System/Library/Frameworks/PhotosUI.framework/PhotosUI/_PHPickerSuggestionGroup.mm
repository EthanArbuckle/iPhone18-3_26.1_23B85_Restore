@interface _PHPickerSuggestionGroup
+ (_PHPickerSuggestionGroup)backdropWallpaperSuggestionGroup;
+ (_PHPickerSuggestionGroup)deviceOwnerSuggestionGroup;
+ (_PHPickerSuggestionGroup)generativeSuggestionGroup;
+ (_PHPickerSuggestionGroup)gyroPosterSuggestionGroup;
+ (_PHPickerSuggestionGroup)livePhotoWallpaperSuggestionGroup;
+ (_PHPickerSuggestionGroup)portraitWallpaperSuggestionGroup;
+ (_PHPickerSuggestionGroup)retailExperienceSuggestionGroup;
+ (_PHPickerSuggestionGroup)shuffleWallpaperSuggestionGroup;
+ (_PHPickerSuggestionGroup)stickersSuggestionGroup;
+ (_PHPickerSuggestionGroup)styleabilitySuggestionGroup;
+ (_PHPickerSuggestionGroup)wallpaperLikeSuggestionGroup;
+ (_PHPickerSuggestionGroup)wallpaperSuggestionGroup;
+ (_PHPickerSuggestionGroup)watchWallpaperSuggestionGroup;
+ (id)_wallpaperSuggestionGroupWithDefaultSuggestionIndex:(int64_t)index allowSettlingEffectSuggestions:(BOOL)suggestions allowGyroEffectSuggestions:(BOOL)effectSuggestions;
- (BOOL)isEqual:(id)equal;
- (_PHPickerSuggestionGroup)initWithCoder:(id)coder;
- (id)_initWithSuggestions:(id)suggestions defaultSuggestionIndex:(int64_t)index isForWallpaper:(BOOL)wallpaper;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultSuggestion;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PHPickerSuggestionGroup

- (id)defaultSuggestion
{
  defaultSuggestionIndex = self->_defaultSuggestionIndex;
  if ((defaultSuggestionIndex & 0x8000000000000000) != 0 || defaultSuggestionIndex >= [(NSArray *)self->_suggestions count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_suggestions objectAtIndexedSubscript:self->_defaultSuggestionIndex];
  }

  return v4;
}

- (id)_initWithSuggestions:(id)suggestions defaultSuggestionIndex:(int64_t)index isForWallpaper:(BOOL)wallpaper
{
  suggestionsCopy = suggestions;
  if (suggestionsCopy)
  {
    v9 = suggestionsCopy;
    v17.receiver = self;
    v17.super_class = _PHPickerSuggestionGroup;
    v10 = [(_PHPickerSuggestionGroup *)&v17 init];
    if (v10)
    {
      v11 = [v9 copy];
      suggestions = v10->_suggestions;
      v10->_suggestions = v11;

      v10->_defaultSuggestionIndex = index;
      v10->_isForWallpaper = wallpaper;
    }

    return v10;
  }

  else
  {
    v14 = _PFAssertFailHandler();
    [(_PHPickerSuggestionGroup *)v14 encodeWithCoder:v15, v16];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  suggestions = self->_suggestions;
  coderCopy = coder;
  [coderCopy encodeObject:suggestions forKey:@"PHPickerSuggestionGroupCoderSuggestionsKey"];
  [coderCopy encodeInteger:self->_defaultSuggestionIndex forKey:@"PHPickerSuggestionGroupCoderDefaultSuggestionIndexKey"];
  [coderCopy encodeBool:self->_isForWallpaper forKey:@"PHPickerSuggestionGroupCoderIsForWallpaperKey"];
}

- (_PHPickerSuggestionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = +[PUPickerSuggestionAvailableClasses all];
  v6 = [coderCopy decodeArrayOfObjectsOfClasses:v5 forKey:@"PHPickerSuggestionGroupCoderSuggestionsKey"];

  v7 = [coderCopy decodeIntegerForKey:@"PHPickerSuggestionGroupCoderDefaultSuggestionIndexKey"];
  v8 = [coderCopy decodeBoolForKey:@"PHPickerSuggestionGroupCoderIsForWallpaperKey"];

  if (v6)
  {
    self = [(_PHPickerSuggestionGroup *)self _initWithSuggestions:v6 defaultSuggestionIndex:v7 isForWallpaper:v8];
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PHPickerSuggestionGroup alloc];
  suggestions = self->_suggestions;
  defaultSuggestionIndex = self->_defaultSuggestionIndex;
  isForWallpaper = self->_isForWallpaper;

  return [(_PHPickerSuggestionGroup *)v4 _initWithSuggestions:suggestions defaultSuggestionIndex:defaultSuggestionIndex isForWallpaper:isForWallpaper];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_suggestions hash];
  v4 = self->_defaultSuggestionIndex - v3 + 32 * v3;
  return self->_isForWallpaper - v4 + 32 * v4 + 29791;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
LABEL_15:

    return v11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v5 = equalCopy;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      suggestions = v5->_suggestions;
      v8 = self->_suggestions;
      v9 = v8;
      if (v8 == suggestions)
      {
      }

      else
      {
        v10 = [(NSArray *)v8 isEqual:suggestions];

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      if (self->_defaultSuggestionIndex == v5->_defaultSuggestionIndex)
      {
        v11 = self->_isForWallpaper == v5->_isForWallpaper;
LABEL_14:

        goto LABEL_15;
      }

LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    NSStringFromClass(v13);
    objc_claimAutoreleasedReturnValue();
    v14 = objc_opt_class();
    NSStringFromClass(v14);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v15 = _PFAssertFailHandler();
  return [(_PHPickerSuggestionGroup *)v15 init];
}

+ (id)_wallpaperSuggestionGroupWithDefaultSuggestionIndex:(int64_t)index allowSettlingEffectSuggestions:(BOOL)suggestions allowGyroEffectSuggestions:(BOOL)effectSuggestions
{
  effectSuggestionsCopy = effectSuggestions;
  suggestionsCopy = suggestions;
  array = [MEMORY[0x1E695DF70] array];
  v9 = objc_alloc_init(PUPickerSuggestionAll);
  [array addObject:v9];

  v10 = [[PUPickerWallpaperSuggestion alloc] initWithMode:0];
  [array addObject:v10];

  if (PFPosterEnableSettlingEffect() && suggestionsCopy)
  {
    v11 = objc_alloc_init(PUPickerLivePhotoWithPossibleMotionEffectSuggestion);
    [array addObject:v11];
  }

  v12 = [[PUPickerWallpaperSuggestion alloc] initWithMode:1];
  [array addObject:v12];

  v13 = [[PUPickerWallpaperSuggestion alloc] initWithMode:2];
  [array addObject:v13];

  v14 = [[PUPickerWallpaperSuggestion alloc] initWithMode:3];
  [array addObject:v14];

  v15 = [[PUPickerWallpaperSuggestion alloc] initWithMode:4];
  [array addObject:v15];

  if (PFPosterIsSpatialPhotoEnabled() && PFPosterDeviceSupportsSpatialPhoto() && effectSuggestionsCopy)
  {
    v16 = objc_alloc_init(PUPickerPhotoWithGyroPosterSuggestion);
    [array addObject:v16];
  }

  v17 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:array defaultSuggestionIndex:index isForWallpaper:1];

  return v17;
}

+ (_PHPickerSuggestionGroup)retailExperienceSuggestionGroup
{
  v2 = PLIsFeaturedContentAllowed();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(PUPickerSuggestionAll);
  [v3 addObject:v4];

  v5 = objc_alloc_init(PUPickerSpatialSuggestion);
  [v3 addObject:v5];

  v6 = objc_alloc_init(PUPickerPanoramasSuggestion);
  [v3 addObject:v6];

  v7 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v3 defaultSuggestionIndex:v2 isForWallpaper:0];

  return v7;
}

+ (_PHPickerSuggestionGroup)generativeSuggestionGroup
{
  v14[7] = *MEMORY[0x1E69E9840];
  v2 = PLIsFeaturedContentAllowed();
  v3 = objc_alloc_init(PUPickerSuggestionAll);
  v4 = objc_alloc_init(PUPickerGenerativeFeaturedSuggestion);
  v5 = [[PUPickerWallpaperSuggestion alloc] initWithMode:11, v3, v4];
  v14[2] = v5;
  v6 = [[PUPickerWallpaperSuggestion alloc] initWithMode:12];
  v14[3] = v6;
  v7 = [[PUPickerWallpaperSuggestion alloc] initWithMode:13];
  v14[4] = v7;
  v8 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:7];
  v14[5] = v8;
  v9 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:8];
  v14[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:7];

  v11 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v10 defaultSuggestionIndex:v2 isForWallpaper:0];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (_PHPickerSuggestionGroup)styleabilitySuggestionGroup
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(PUPickerSuggestionAll);
  [v2 addObject:v3];

  v4 = [[PUPickerStyleablePhotoSuggestion alloc] initWithMode:0];
  [v2 addObject:v4];

  v5 = [[PUPickerStyleablePhotoSuggestion alloc] initWithMode:1];
  [v2 addObject:v5];

  v6 = [[PUPickerStyleablePhotoSuggestion alloc] initWithMode:2];
  [v2 addObject:v6];

  v7 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v2 defaultSuggestionIndex:1 isForWallpaper:0];

  return v7;
}

+ (_PHPickerSuggestionGroup)watchWallpaperSuggestionGroup
{
  v13[6] = *MEMORY[0x1E69E9840];
  v2 = PLIsFeaturedContentAllowed();
  v3 = objc_alloc_init(PUPickerSuggestionAll);
  v13[0] = v3;
  v4 = [[PUPickerWallpaperSuggestion alloc] initWithMode:6];
  v13[1] = v4;
  v5 = [[PUPickerWallpaperSuggestion alloc] initWithMode:7];
  v13[2] = v5;
  v6 = [[PUPickerWallpaperSuggestion alloc] initWithMode:8];
  v13[3] = v6;
  v7 = [[PUPickerWallpaperSuggestion alloc] initWithMode:9];
  v13[4] = v7;
  v8 = [[PUPickerWallpaperSuggestion alloc] initWithMode:10];
  v13[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6];

  v10 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v9 defaultSuggestionIndex:v2 isForWallpaper:0];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (_PHPickerSuggestionGroup)stickersSuggestionGroup
{
  v29[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(PUPickerSuggestionAll);
  v29[0] = v3;
  v4 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:6];
  v29[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v6 = [v2 initWithArray:v5];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"UseSearchBasedPeopleSuggestionForStickersSuggestionGroup"];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = off_1E83F6B38;
  }

  else
  {
    v10 = off_1E83F6B48;
  }

  v11 = [objc_alloc(*v10) initWithMode:v9];
  [v6 addObject:v11];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults2 BOOLForKey:@"UseWallpaperSuggestionBasedAnimalsSuggestionForStickersSuggestionGroup"];

  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    v15 = off_1E83F6B48;
  }

  else
  {
    v15 = off_1E83F6B38;
  }

  v16 = [objc_alloc(*v15) initWithMode:v14];
  [v6 addObject:v16];

  v17 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:0];
  v28[0] = v17;
  v18 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:5];
  v28[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v6 addObjectsFromArray:v19];

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  LODWORD(v18) = [standardUserDefaults3 BOOLForKey:@"ShowProductsForStickersSuggestionGroup"];

  if (v18)
  {
    v21 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:3];
    [v6 addObject:v21];
  }

  v22 = [[PUPickerSearchBasedSuggestion alloc] initWithMode:4];
  v27 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v6 addObjectsFromArray:v23];

  v24 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v6 defaultSuggestionIndex:0 isForWallpaper:0];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (_PHPickerSuggestionGroup)deviceOwnerSuggestionGroup
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = PLIsFeaturedContentAllowed();
  v3 = objc_alloc_init(PUPickerSuggestionAll);
  v9[0] = v3;
  v4 = [[PUPickerWallpaperSuggestion alloc] initWithMode:5];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  v6 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v5 defaultSuggestionIndex:v2 isForWallpaper:1];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (_PHPickerSuggestionGroup)gyroPosterSuggestionGroup
{
  if (PLIsFeaturedContentAllowed())
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return [_PHPickerSuggestionGroup _wallpaperSuggestionGroupWithDefaultSuggestionIndex:v2 allowSettlingEffectSuggestions:1 allowGyroEffectSuggestions:1];
}

+ (_PHPickerSuggestionGroup)livePhotoWallpaperSuggestionGroup
{
  if (PLIsFeaturedContentAllowed())
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return [_PHPickerSuggestionGroup _wallpaperSuggestionGroupWithDefaultSuggestionIndex:v2];
}

+ (_PHPickerSuggestionGroup)portraitWallpaperSuggestionGroup
{
  if (PLIsFeaturedContentAllowed())
  {
    if (PFPosterEnableSettlingEffect())
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  return [_PHPickerSuggestionGroup _wallpaperSuggestionGroupWithDefaultSuggestionIndex:v2];
}

+ (_PHPickerSuggestionGroup)backdropWallpaperSuggestionGroup
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = PLIsFeaturedContentAllowed();
  v3 = objc_alloc_init(PUPickerSuggestionAll);
  v4 = [[PUPickerWallpaperSuggestion alloc] initWithMode:17, v3];
  v12[1] = v4;
  v5 = [[PUPickerWallpaperSuggestion alloc] initWithMode:16];
  v12[2] = v5;
  v6 = [[PUPickerWallpaperSuggestion alloc] initWithMode:15];
  v12[3] = v6;
  v7 = [[PUPickerWallpaperSuggestion alloc] initWithMode:14];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];

  v9 = [[_PHPickerSuggestionGroup alloc] _initWithSuggestions:v8 defaultSuggestionIndex:v2 isForWallpaper:1];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (_PHPickerSuggestionGroup)shuffleWallpaperSuggestionGroup
{
  v2 = PLIsFeaturedContentAllowed();

  return [_PHPickerSuggestionGroup _wallpaperSuggestionGroupWithDefaultSuggestionIndex:v2 allowSettlingEffectSuggestions:0 allowGyroEffectSuggestions:0];
}

+ (_PHPickerSuggestionGroup)wallpaperLikeSuggestionGroup
{
  v2 = PLIsFeaturedContentAllowed();

  return [_PHPickerSuggestionGroup _wallpaperSuggestionGroupWithDefaultSuggestionIndex:v2];
}

+ (_PHPickerSuggestionGroup)wallpaperSuggestionGroup
{
  v2 = PLIsFeaturedContentAllowed();

  return [_PHPickerSuggestionGroup _wallpaperSuggestionGroupWithDefaultSuggestionIndex:v2 allowSettlingEffectSuggestions:1 allowGyroEffectSuggestions:1];
}

@end
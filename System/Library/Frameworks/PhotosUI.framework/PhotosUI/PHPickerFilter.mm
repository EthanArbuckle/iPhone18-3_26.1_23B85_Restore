@interface PHPickerFilter
+ (PHPickerFilter)_landscapeOrientationFilter;
+ (PHPickerFilter)_stickersFilter;
+ (PHPickerFilter)_styleabilityFilter;
+ (PHPickerFilter)allFilterMatchingSubfilters:(NSArray *)subfilters;
+ (PHPickerFilter)anyFilterMatchingSubfilters:(NSArray *)subfilters;
+ (PHPickerFilter)burstsFilter;
+ (PHPickerFilter)cinematicVideosFilter;
+ (PHPickerFilter)depthEffectPhotosFilter;
+ (PHPickerFilter)imagesFilter;
+ (PHPickerFilter)livePhotosFilter;
+ (PHPickerFilter)notFilterOfSubfilter:(PHPickerFilter *)subfilter;
+ (PHPickerFilter)panoramasFilter;
+ (PHPickerFilter)playbackStyleFilter:(PHAssetPlaybackStyle)playbackStyle;
+ (PHPickerFilter)screenRecordingsFilter;
+ (PHPickerFilter)screenshotsFilter;
+ (PHPickerFilter)slomoVideosFilter;
+ (PHPickerFilter)spatialMediaFilter;
+ (PHPickerFilter)timelapseVideosFilter;
+ (PHPickerFilter)videosFilter;
+ (id)_itemIdentifiersFilter:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithPUPickerFilter:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PHPickerFilter

- (id)_initWithPUPickerFilter:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = PHPickerFilter;
    v7 = [(PHPickerFilter *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->__puPickerFilter, a3);
    }

    return v8;
  }

  else
  {
    v10 = _PFAssertFailHandler();
    return [(PHPickerFilter *)v10 copyWithZone:v11, v12];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PHPickerFilter alloc];
  v6 = [(PUPickerFilter *)self->__puPickerFilter copyWithZone:a3];
  v7 = [(PHPickerFilter *)v5 _initWithPUPickerFilter:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = [(PUPickerFilter *)self->__puPickerFilter isEqual:v5->__puPickerFilter];

LABEL_8:
      return v7;
    }

    v9 = objc_opt_class();
    NSStringFromClass(v9);
    objc_claimAutoreleasedReturnValue();
    v10 = objc_opt_class();
    NSStringFromClass(v10);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v11 = _PFAssertFailHandler();
  return [(PHPickerFilter *)v11 init];
}

+ (id)_itemIdentifiersFilter:(id)a3
{
  v3 = a3;
  v4 = [[PUPickerItemIdentifiersFilter alloc] initWithItemIdentifiers:v3];

  v5 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v4];

  return v5;
}

+ (PHPickerFilter)_landscapeOrientationFilter
{
  v2 = [[PUPickerOtherFilter alloc] initWithFilterType:1];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)_styleabilityFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:4];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)_stickersFilter
{
  v2 = [[PUPickerOtherFilter alloc] initWithFilterType:0];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)notFilterOfSubfilter:(PHPickerFilter *)subfilter
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = subfilter;
  if (!v3)
  {
    _PFAssertFailHandler();
  }

  v4 = v3;
  v5 = [PUPickerCompoundFilter alloc];
  v6 = [(PHPickerFilter *)v4 _puPickerFilter];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [(PUPickerCompoundFilter *)v5 initWithFilterType:2 subfilters:v7];

  v9 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v8];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (PHPickerFilter)allFilterMatchingSubfilters:(NSArray *)subfilters
{
  v3 = subfilters;
  if (!v3)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v4 = v3;
  if (![(NSArray *)v3 count])
  {
LABEL_7:
    v9 = _PFAssertFailHandler();
    return __46__PHPickerFilter_allFilterMatchingSubfilters___block_invoke(v9);
  }

  v5 = PFMap();
  v6 = [[PUPickerCompoundFilter alloc] initWithFilterType:1 subfilters:v5];
  v7 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v6];

  return v7;
}

+ (PHPickerFilter)anyFilterMatchingSubfilters:(NSArray *)subfilters
{
  v3 = subfilters;
  if (!v3)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v4 = v3;
  if (![(NSArray *)v3 count])
  {
LABEL_7:
    v9 = _PFAssertFailHandler();
    return __46__PHPickerFilter_anyFilterMatchingSubfilters___block_invoke(v9);
  }

  v5 = PFMap();
  v6 = [[PUPickerCompoundFilter alloc] initWithFilterType:0 subfilters:v5];
  v7 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v6];

  return v7;
}

+ (PHPickerFilter)playbackStyleFilter:(PHAssetPlaybackStyle)playbackStyle
{
  if (playbackStyle <= 0)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  if (playbackStyle >= 6)
  {
LABEL_7:
    v6 = _PFAssertFailHandler();
    return +[(PHPickerFilter *)v6];
  }

  v3 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:playbackStyle];
  v4 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v3];

  return v4;
}

+ (PHPickerFilter)spatialMediaFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:10];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)cinematicVideosFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:9];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)timelapseVideosFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:7];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)slomoVideosFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:6];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)screenRecordingsFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:8];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)screenshotsFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:1];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)panoramasFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:0];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)burstsFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:3];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)depthEffectPhotosFilter
{
  v2 = [[PUPickerAssetMediaSubtypeFilter alloc] initWithFilterType:2];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)livePhotosFilter
{
  v2 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:3];
  v3 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v2];

  return v3;
}

+ (PHPickerFilter)videosFilter
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:4];
  v9[0] = v2;
  v3 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:5];
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  v5 = [[PUPickerCompoundFilter alloc] initWithFilterType:0 subfilters:v4];
  v6 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (PHPickerFilter)imagesFilter
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:1];
  v3 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:2, v2];
  v10[1] = v3;
  v4 = [[PUPickerAssetPlaybackStyleFilter alloc] initWithPlaybackStyle:3];
  v10[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  v6 = [[PUPickerCompoundFilter alloc] initWithFilterType:0 subfilters:v5];
  v7 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end
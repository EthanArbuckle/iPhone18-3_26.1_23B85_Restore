@interface PHAssetUserActivityProperties
+ (id)propertiesToFetch;
- (PHAssetUserActivityProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetUserActivityProperties

- (PHAssetUserActivityProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = PHAssetUserActivityProperties;
  v10 = [(PHAssetUserActivityProperties *)&v28 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    if (v5)
    {
      v12 = @"additionalAttributes.playCount";
    }

    else
    {
      v12 = @"playCount";
    }

    if (v5)
    {
      v13 = @"additionalAttributes.shareCount";
    }

    else
    {
      v13 = @"shareCount";
    }

    if (v5)
    {
      v14 = @"additionalAttributes.viewCount";
    }

    else
    {
      v14 = @"viewCount";
    }

    if (v5)
    {
      v15 = @"additionalAttributes.pendingPlayCount";
    }

    else
    {
      v15 = @"pendingPlayCount";
    }

    if (v5)
    {
      v16 = @"additionalAttributes.pendingShareCount";
    }

    else
    {
      v16 = @"pendingShareCount";
    }

    if (v5)
    {
      v17 = @"additionalAttributes.pendingViewCount";
    }

    else
    {
      v17 = @"pendingViewCount";
    }

    if (v5)
    {
      v18 = @"additionalAttributes.lastViewedDate";
    }

    else
    {
      v18 = @"lastViewedDate";
    }

    v19 = [v8 objectForKeyedSubscript:v12];
    v11->_syncedPlayCount = [v19 longLongValue];

    v20 = [v8 objectForKeyedSubscript:v13];
    v11->_syncedShareCount = [v20 longLongValue];

    v21 = [v8 objectForKeyedSubscript:v14];
    v11->_syncedViewCount = [v21 longLongValue];

    v22 = [v8 objectForKeyedSubscript:v15];
    v11->_pendingPlayCount = [v22 longLongValue];

    v23 = [v8 objectForKeyedSubscript:v16];
    v11->_pendingShareCount = [v23 longLongValue];

    v24 = [v8 objectForKeyedSubscript:v17];
    v11->_pendingViewCount = [v24 longLongValue];

    v25 = [v8 objectForKeyedSubscript:v18];
    lastViewedDate = v11->_lastViewedDate;
    v11->_lastViewedDate = v25;
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_53;

  return v2;
}

void __50__PHAssetUserActivityProperties_propertiesToFetch__block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"playCount";
  v3[1] = @"shareCount";
  v3[2] = @"viewCount";
  v3[3] = @"pendingPlayCount";
  v3[4] = @"pendingShareCount";
  v3[5] = @"pendingViewCount";
  v3[6] = @"lastViewedDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_53;
  propertiesToFetch_pl_once_object_53 = v1;
}

@end
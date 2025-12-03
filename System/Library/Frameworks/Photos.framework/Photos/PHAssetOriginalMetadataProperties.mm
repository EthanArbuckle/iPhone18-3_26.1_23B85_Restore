@interface PHAssetOriginalMetadataProperties
+ (id)propertiesToFetch;
- (PHAssetOriginalMetadataProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetOriginalMetadataProperties

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_41;

  return v2;
}

void __54__PHAssetOriginalMetadataProperties_propertiesToFetch__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"originalAssetsUUID";
  v3[1] = @"originalFilename";
  v3[2] = @"originalFilesize";
  v3[3] = @"originalHeight";
  v3[4] = @"originalOrientation";
  v3[5] = @"originalWidth";
  v3[6] = @"timeZoneName";
  v3[7] = @"timeZoneOffset";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_41;
  propertiesToFetch_pl_once_object_41 = v1;
}

- (PHAssetOriginalMetadataProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v37.receiver = self;
  v37.super_class = PHAssetOriginalMetadataProperties;
  v10 = [(PHAssetOriginalMetadataProperties *)&v37 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.originalAssetsUUID";
    }

    else
    {
      v12 = @"originalAssetsUUID";
    }

    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.originalHeight";
    }

    else
    {
      v13 = @"originalHeight";
    }

    if (prefetchedCopy)
    {
      v14 = @"additionalAttributes.originalWidth";
    }

    else
    {
      v14 = @"originalWidth";
    }

    if (prefetchedCopy)
    {
      v15 = @"additionalAttributes.originalFilename";
    }

    else
    {
      v15 = @"originalFilename";
    }

    if (prefetchedCopy)
    {
      v16 = @"additionalAttributes.originalOrientation";
    }

    else
    {
      v16 = @"originalOrientation";
    }

    if (prefetchedCopy)
    {
      v17 = @"additionalAttributes.originalFilesize";
    }

    else
    {
      v17 = @"originalFilesize";
    }

    if (prefetchedCopy)
    {
      v18 = @"additionalAttributes.timeZoneOffset";
    }

    else
    {
      v18 = @"timeZoneOffset";
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:v12];
    originalAssetsUUID = v11->_originalAssetsUUID;
    v11->_originalAssetsUUID = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:v13];
    v11->_originalHeight = [v21 longLongValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:v14];
    v11->_originalWidth = [v22 longLongValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:v15];
    originalFilename = v11->_originalFilename;
    v11->_originalFilename = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:v16];
    v11->_originalExifOrientation = [v25 shortValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:v17];
    v11->_originalFilesize = [v26 unsignedLongLongValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:v18];
    v28 = v27;
    if (v27)
    {
      v11->_timeZoneOffset = [v27 intValue];
    }

    if (prefetchedCopy)
    {
      v29 = @"additionalAttributes.timeZoneName";
    }

    else
    {
      v29 = @"timeZoneName";
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:v29];
    if (v30)
    {
      v31 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v30];
      timeZone = v11->_timeZone;
      v11->_timeZone = v31;
    }

    v33 = v11->_timeZone;
    if (!v28 || v33)
    {
      if (v28 || !v33)
      {
        goto LABEL_37;
      }

      creationDate = [assetCopy creationDate];
      v11->_timeZoneOffset = [(NSTimeZone *)v33 secondsFromGMTForDate:creationDate];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:{objc_msgSend(v28, "integerValue")}];
      creationDate = v11->_timeZone;
      v11->_timeZone = v34;
    }

LABEL_37:
  }

  return v11;
}

@end
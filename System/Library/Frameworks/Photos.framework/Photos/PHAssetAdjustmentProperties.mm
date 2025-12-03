@interface PHAssetAdjustmentProperties
+ (id)propertiesToFetch;
- (PHAssetAdjustmentProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetAdjustmentProperties

- (PHAssetAdjustmentProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v22.receiver = self;
  v22.super_class = PHAssetAdjustmentProperties;
  v10 = [(PHAssetAdjustmentProperties *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    v12 = !prefetchedCopy;
    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.unmanagedAdjustment.adjustmentFormatIdentifier";
    }

    else
    {
      v13 = @"unmanagedAdjustment.adjustmentFormatIdentifier";
    }

    if (prefetchedCopy)
    {
      v14 = @"additionalAttributes.unmanagedAdjustment.adjustmentFormatVersion";
    }

    else
    {
      v14 = @"unmanagedAdjustment.adjustmentFormatVersion";
    }

    if (v12)
    {
      v15 = @"originalResourceChoice";
    }

    else
    {
      v15 = @"additionalAttributes.originalResourceChoice";
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    formatIdentifier = v11->_formatIdentifier;
    v11->_formatIdentifier = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:v14];
    formatVersion = v11->_formatVersion;
    v11->_formatVersion = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:v15];
    v11->_originalResourceChoice = [v20 unsignedIntegerValue];
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_55;

  return v2;
}

void __48__PHAssetAdjustmentProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"unmanagedAdjustment.adjustmentFormatIdentifier";
  v3[1] = @"unmanagedAdjustment.adjustmentFormatVersion";
  v3[2] = @"originalResourceChoice";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_55;
  propertiesToFetch_pl_once_object_55 = v1;
}

@end
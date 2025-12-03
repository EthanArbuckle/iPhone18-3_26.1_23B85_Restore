@interface PHAssetLocalDateProperties
+ (id)propertiesToFetch;
- (PHAssetLocalDateProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetLocalDateProperties

- (PHAssetLocalDateProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = PHAssetLocalDateProperties;
  v10 = [(PHAssetLocalDateProperties *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.inferredTimeZoneOffset";
    }

    else
    {
      v12 = @"inferredTimeZoneOffset";
    }

    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.dateCreatedSource";
    }

    else
    {
      v13 = @"dateCreatedSource";
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:v12];
    inferredTimeZoneOffset = v11->_inferredTimeZoneOffset;
    v11->_inferredTimeZoneOffset = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    v11->_creationDateSource = [v16 integerValue];
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_44;

  return v2;
}

void __47__PHAssetLocalDateProperties_propertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"inferredTimeZoneOffset";
  v3[1] = @"dateCreatedSource";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_44;
  propertiesToFetch_pl_once_object_44 = v1;
}

@end
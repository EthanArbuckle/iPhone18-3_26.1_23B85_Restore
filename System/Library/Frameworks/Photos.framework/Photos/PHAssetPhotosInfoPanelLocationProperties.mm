@interface PHAssetPhotosInfoPanelLocationProperties
+ (id)propertiesToFetch;
- (PHAssetPhotosInfoPanelLocationProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetPhotosInfoPanelLocationProperties

- (PHAssetPhotosInfoPanelLocationProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PHAssetPhotosInfoPanelLocationProperties;
  v8 = [(PHAssetPhotosInfoPanelLocationProperties *)&v13 init];
  if (v8)
  {
    if (prefetchedCopy)
    {
      v9 = @"additionalAttributes.placeAnnotationData";
    }

    else
    {
      v9 = @"placeAnnotationData";
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:v9];
    placeAnnotationData = v8->_placeAnnotationData;
    v8->_placeAnnotationData = v10;
  }

  return v8;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_47;

  return v2;
}

void __61__PHAssetPhotosInfoPanelLocationProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"placeAnnotationData";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_47;
  propertiesToFetch_pl_once_object_47 = v1;
}

@end
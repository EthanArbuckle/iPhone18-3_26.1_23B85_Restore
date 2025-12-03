@interface PHAssetPhotosOneUpProperties
+ (id)propertiesToFetch;
- (NSString)addressString;
- (PHAssetPhotosOneUpProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
- (id)_locationInfo;
- (id)localizedGeoDescriptionIsHome:(BOOL *)home;
- (id)placeNamesForLocalizedDetailedDescriptionIsHome:(BOOL *)home;
@end

@implementation PHAssetPhotosOneUpProperties

- (id)placeNamesForLocalizedDetailedDescriptionIsHome:(BOOL *)home
{
  _locationInfo = [(PHAssetPhotosOneUpProperties *)self _locationInfo];
  v5 = _locationInfo;
  if (_locationInfo)
  {
    if (home)
    {
      *home = [_locationInfo isHome];
    }

    placeNamesForLocalizedDetailedDescription = [v5 placeNamesForLocalizedDetailedDescription];
  }

  else
  {
    placeNamesForLocalizedDetailedDescription = 0;
  }

  return placeNamesForLocalizedDetailedDescription;
}

- (id)localizedGeoDescriptionIsHome:(BOOL *)home
{
  _locationInfo = [(PHAssetPhotosOneUpProperties *)self _locationInfo];
  v6 = _locationInfo;
  if (_locationInfo)
  {
    if (home)
    {
      *home = [_locationInfo isHome];
    }

    localizedDescription = ph_objc_getAssociatedObject(self, @"localizedGeoDescriptionCacheKey");
    if (!localizedDescription)
    {
      localizedDescription = [v6 localizedDescription];
      v8 = ph_objc_setAssociatedObjectIfNotSet(self, @"localizedGeoDescriptionCacheKey", localizedDescription);
    }
  }

  else
  {
    localizedDescription = 0;
  }

  return localizedDescription;
}

- (id)_locationInfo
{
  v3 = ph_objc_getAssociatedObject(self, @"locationInfoCacheKey");
  if (!v3)
  {
    if (self->_reverseLocationDataIsValid)
    {
      reverseLocationData = [(PHAssetPhotosOneUpProperties *)self reverseLocationData];
      v3 = [MEMORY[0x1E69BE770] infoFromPlistData:reverseLocationData];
      v5 = ph_objc_setAssociatedObjectIfNotSet(self, @"locationInfoCacheKey", v3);
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = v3;

  return v6;
}

- (NSString)addressString
{
  _locationInfo = [(PHAssetPhotosOneUpProperties *)self _locationInfo];
  addressString = [_locationInfo addressString];

  return addressString;
}

- (PHAssetPhotosOneUpProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v24.receiver = self;
  v24.super_class = PHAssetPhotosOneUpProperties;
  v10 = [(PHAssetPhotosOneUpProperties *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"additionalAttributes.reverseLocationDataIsValid";
    }

    else
    {
      v12 = @"reverseLocationDataIsValid";
    }

    if (prefetchedCopy)
    {
      v13 = @"additionalAttributes.reverseLocationData";
    }

    else
    {
      v13 = @"reverseLocationData";
    }

    if (prefetchedCopy)
    {
      v14 = @"additionalAttributes.shiftedLocationIsValid";
    }

    else
    {
      v14 = @"shiftedLocationIsValid";
    }

    if (prefetchedCopy)
    {
      v15 = @"additionalAttributes.variationSuggestionStates";
    }

    else
    {
      v15 = @"variationSuggestionStates";
    }

    if (prefetchedCopy)
    {
      v16 = @"additionalAttributes.viewPresentation";
    }

    else
    {
      v16 = @"viewPresentation";
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:v12];
    v11->_reverseLocationDataIsValid = [v17 BOOLValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:v13];
    reverseLocationData = v11->_reverseLocationData;
    v11->_reverseLocationData = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:v14];
    v11->_shiftedLocationIsValid = [v20 BOOLValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:v15];
    v11->_variationSuggestionStates = [v21 unsignedLongLongValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:v16];
    v11->_viewPresentation = [v22 unsignedLongLongValue];
  }

  return v11;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_43;

  return v2;
}

void __49__PHAssetPhotosOneUpProperties_propertiesToFetch__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"reverseLocationData";
  v3[1] = @"reverseLocationDataIsValid";
  v3[2] = @"variationSuggestionStates";
  v3[3] = @"shiftedLocationIsValid";
  v3[4] = @"viewPresentation";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_43;
  propertiesToFetch_pl_once_object_43 = v1;
}

@end
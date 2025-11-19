@interface PHAssetPhotosOneUpProperties
+ (id)propertiesToFetch;
- (NSString)addressString;
- (PHAssetPhotosOneUpProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
- (id)_locationInfo;
- (id)localizedGeoDescriptionIsHome:(BOOL *)a3;
- (id)placeNamesForLocalizedDetailedDescriptionIsHome:(BOOL *)a3;
@end

@implementation PHAssetPhotosOneUpProperties

- (id)placeNamesForLocalizedDetailedDescriptionIsHome:(BOOL *)a3
{
  v4 = [(PHAssetPhotosOneUpProperties *)self _locationInfo];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      *a3 = [v4 isHome];
    }

    v6 = [v5 placeNamesForLocalizedDetailedDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localizedGeoDescriptionIsHome:(BOOL *)a3
{
  v5 = [(PHAssetPhotosOneUpProperties *)self _locationInfo];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      *a3 = [v5 isHome];
    }

    v7 = ph_objc_getAssociatedObject(self, @"localizedGeoDescriptionCacheKey");
    if (!v7)
    {
      v7 = [v6 localizedDescription];
      v8 = ph_objc_setAssociatedObjectIfNotSet(self, @"localizedGeoDescriptionCacheKey", v7);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_locationInfo
{
  v3 = ph_objc_getAssociatedObject(self, @"locationInfoCacheKey");
  if (!v3)
  {
    if (self->_reverseLocationDataIsValid)
    {
      v4 = [(PHAssetPhotosOneUpProperties *)self reverseLocationData];
      v3 = [MEMORY[0x1E69BE770] infoFromPlistData:v4];
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
  v2 = [(PHAssetPhotosOneUpProperties *)self _locationInfo];
  v3 = [v2 addressString];

  return v3;
}

- (PHAssetPhotosOneUpProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = PHAssetPhotosOneUpProperties;
  v10 = [(PHAssetPhotosOneUpProperties *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, v9);
    if (v5)
    {
      v12 = @"additionalAttributes.reverseLocationDataIsValid";
    }

    else
    {
      v12 = @"reverseLocationDataIsValid";
    }

    if (v5)
    {
      v13 = @"additionalAttributes.reverseLocationData";
    }

    else
    {
      v13 = @"reverseLocationData";
    }

    if (v5)
    {
      v14 = @"additionalAttributes.shiftedLocationIsValid";
    }

    else
    {
      v14 = @"shiftedLocationIsValid";
    }

    if (v5)
    {
      v15 = @"additionalAttributes.variationSuggestionStates";
    }

    else
    {
      v15 = @"variationSuggestionStates";
    }

    if (v5)
    {
      v16 = @"additionalAttributes.viewPresentation";
    }

    else
    {
      v16 = @"viewPresentation";
    }

    v17 = [v8 objectForKeyedSubscript:v12];
    v11->_reverseLocationDataIsValid = [v17 BOOLValue];

    v18 = [v8 objectForKeyedSubscript:v13];
    reverseLocationData = v11->_reverseLocationData;
    v11->_reverseLocationData = v18;

    v20 = [v8 objectForKeyedSubscript:v14];
    v11->_shiftedLocationIsValid = [v20 BOOLValue];

    v21 = [v8 objectForKeyedSubscript:v15];
    v11->_variationSuggestionStates = [v21 unsignedLongLongValue];

    v22 = [v8 objectForKeyedSubscript:v16];
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
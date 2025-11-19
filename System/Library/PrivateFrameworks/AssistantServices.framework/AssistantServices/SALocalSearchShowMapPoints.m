@interface SALocalSearchShowMapPoints
- (id)_ad_transformedMapsRequest;
- (id)_ad_transformedMapsSuccessResponse;
@end

@implementation SALocalSearchShowMapPoints

- (id)_ad_transformedMapsSuccessResponse
{
  v2 = objc_alloc_init(SALocalSearchShowMapPointsCompleted);

  return v2;
}

- (id)_ad_transformedMapsRequest
{
  if (([(SALocalSearchShowMapPoints *)self showDirections]& 1) != 0)
  {
    v3 = objc_alloc_init(STSiriLocation);
    v4 = objc_alloc_init(STSiriLocation);
    v5 = [(SALocalSearchShowMapPoints *)self itemSource];
    v6 = [v5 placeData2];
    [v3 setGeoResult:v6];

    v7 = [(SALocalSearchShowMapPoints *)self itemDestination];
    v8 = [v7 placeData2];
    [v4 setGeoResult:v8];

    v9 = [(SALocalSearchShowMapPoints *)self itemSource];
    v10 = [v9 detailType];
    v11 = SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue;
    v12 = [v10 isEqualToString:SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue];

    if (v12)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    [v3 setResultType:v13];
    v14 = [(SALocalSearchShowMapPoints *)self itemDestination];
    v15 = [v14 detailType];
    v16 = [v15 isEqualToString:v11];

    if (v16)
    {
      v17 = 4;
    }

    else
    {
      v17 = 1;
    }

    [v4 setResultType:v17];
    v18 = [(SALocalSearchShowMapPoints *)self directionsType];
    v19 = [v18 isEqualToString:SALocalSearchDirectionsTypeByCarValue];

    v42 = v4;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v27 = [(SALocalSearchShowMapPoints *)self directionsType];
      v28 = [v27 isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue];

      if (v28)
      {
        v20 = 2;
      }

      else
      {
        v29 = [(SALocalSearchShowMapPoints *)self directionsType];
        v30 = [v29 isEqualToString:SALocalSearchDirectionsTypeWalkingValue];

        if (v30)
        {
          v20 = 3;
        }

        else
        {
          v31 = [(SALocalSearchShowMapPoints *)self directionsType];
          v32 = [v31 isEqualToString:SALocalSearchDirectionsTypeBikingValue];

          if (v32)
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }
        }
      }
    }

    v33 = [STStartNavigationRequest alloc];
    v34 = [(SALocalSearchShowMapPoints *)self arrivalDate];
    v35 = [(SALocalSearchShowMapPoints *)self departureDate];
    v36 = [(SALocalSearchShowMapPoints *)self itemSource];
    v37 = [v36 extSessionGuid];
    v38 = [(SALocalSearchShowMapPoints *)self itemSource];
    v39 = [v38 extSessionGuidCreatedTimestamp];
    v40 = v33;
    v26 = v42;
    v25 = [v40 _initWithStartLocation:v3 destinationLocation:v42 directionsType:v20 arrivalDate:v34 departureDate:v35 extSessionGuid:v37 extSessionGuidCreatedTimestamp:v39];
  }

  else
  {
    v3 = [(SALocalSearchShowMapPoints *)self itemSource];
    v21 = [STShowMapPointRequest alloc];
    v22 = [v3 placeData2];
    v23 = [v3 extSessionGuid];
    v24 = [v3 extSessionGuidCreatedTimestamp];
    v25 = [v21 _initWithPlaceData:v22 extSessionGuid:v23 extSessionGuidCreatedTimestamp:v24];

    v26 = [v3 detailType];
    [v25 setIsCurrentLocation:{objc_msgSend(v26, "isEqualToString:", SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue)}];
  }

  return v25;
}

@end
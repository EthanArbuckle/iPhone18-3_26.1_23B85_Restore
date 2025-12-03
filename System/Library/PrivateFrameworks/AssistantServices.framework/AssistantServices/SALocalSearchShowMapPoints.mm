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
    itemSource5 = objc_alloc_init(STSiriLocation);
    v4 = objc_alloc_init(STSiriLocation);
    itemSource = [(SALocalSearchShowMapPoints *)self itemSource];
    placeData2 = [itemSource placeData2];
    [itemSource5 setGeoResult:placeData2];

    itemDestination = [(SALocalSearchShowMapPoints *)self itemDestination];
    placeData22 = [itemDestination placeData2];
    [v4 setGeoResult:placeData22];

    itemSource2 = [(SALocalSearchShowMapPoints *)self itemSource];
    detailType = [itemSource2 detailType];
    v11 = SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue;
    v12 = [detailType isEqualToString:SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue];

    if (v12)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    [itemSource5 setResultType:v13];
    itemDestination2 = [(SALocalSearchShowMapPoints *)self itemDestination];
    detailType2 = [itemDestination2 detailType];
    v16 = [detailType2 isEqualToString:v11];

    if (v16)
    {
      v17 = 4;
    }

    else
    {
      v17 = 1;
    }

    [v4 setResultType:v17];
    directionsType = [(SALocalSearchShowMapPoints *)self directionsType];
    v19 = [directionsType isEqualToString:SALocalSearchDirectionsTypeByCarValue];

    v42 = v4;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      directionsType2 = [(SALocalSearchShowMapPoints *)self directionsType];
      v28 = [directionsType2 isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue];

      if (v28)
      {
        v20 = 2;
      }

      else
      {
        directionsType3 = [(SALocalSearchShowMapPoints *)self directionsType];
        v30 = [directionsType3 isEqualToString:SALocalSearchDirectionsTypeWalkingValue];

        if (v30)
        {
          v20 = 3;
        }

        else
        {
          directionsType4 = [(SALocalSearchShowMapPoints *)self directionsType];
          v32 = [directionsType4 isEqualToString:SALocalSearchDirectionsTypeBikingValue];

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
    arrivalDate = [(SALocalSearchShowMapPoints *)self arrivalDate];
    departureDate = [(SALocalSearchShowMapPoints *)self departureDate];
    itemSource3 = [(SALocalSearchShowMapPoints *)self itemSource];
    extSessionGuid = [itemSource3 extSessionGuid];
    itemSource4 = [(SALocalSearchShowMapPoints *)self itemSource];
    extSessionGuidCreatedTimestamp = [itemSource4 extSessionGuidCreatedTimestamp];
    v40 = v33;
    detailType3 = v42;
    v25 = [v40 _initWithStartLocation:itemSource5 destinationLocation:v42 directionsType:v20 arrivalDate:arrivalDate departureDate:departureDate extSessionGuid:extSessionGuid extSessionGuidCreatedTimestamp:extSessionGuidCreatedTimestamp];
  }

  else
  {
    itemSource5 = [(SALocalSearchShowMapPoints *)self itemSource];
    v21 = [STShowMapPointRequest alloc];
    placeData23 = [itemSource5 placeData2];
    extSessionGuid2 = [itemSource5 extSessionGuid];
    extSessionGuidCreatedTimestamp2 = [itemSource5 extSessionGuidCreatedTimestamp];
    v25 = [v21 _initWithPlaceData:placeData23 extSessionGuid:extSessionGuid2 extSessionGuidCreatedTimestamp:extSessionGuidCreatedTimestamp2];

    detailType3 = [itemSource5 detailType];
    [v25 setIsCurrentLocation:{objc_msgSend(detailType3, "isEqualToString:", SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue)}];
  }

  return v25;
}

@end
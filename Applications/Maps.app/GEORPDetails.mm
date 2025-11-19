@interface GEORPDetails
- (id)directionsRequest;
@end

@implementation GEORPDetails

- (id)directionsRequest
{
  v3 = +[MKMapService sharedService];
  v4 = [v3 mapItemsForPlacesInDetails:self];

  if ([v4 count] >= 2)
  {
    v5 = objc_alloc_init(MKDirectionsRequest);
    v6 = [v4 firstObject];
    [v5 setSource:v6];

    v7 = [v4 lastObject];
    [v5 setDestination:v7];

    v8 = [(GEORPDetails *)self directionsType];
    v9 = 1;
    if (v8 == 2)
    {
      v9 = 2;
    }

    if (v8 == 1)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    [v5 setTransportType:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
@interface GEOComposedWaypoint(MKGeoServicesExtras)
+ (void)composedWaypointForMapItem:()MKGeoServicesExtras useAsLocation:forQuickETA:traits:completionHandler:networkActivityHandler:;
@end

@implementation GEOComposedWaypoint(MKGeoServicesExtras)

+ (void)composedWaypointForMapItem:()MKGeoServicesExtras useAsLocation:forQuickETA:traits:completionHandler:networkActivityHandler:
{
  v36 = a3;
  defaultTraits = a6;
  v15 = a7;
  v16 = a8;
  v17 = v36;
  if (!v36)
  {
    currentLocation = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"mapItem cannot be nil"];
    v15[2](v15, 0, currentLocation);
    goto LABEL_23;
  }

  if (!defaultTraits)
  {
    v18 = +[MKMapService sharedService];
    defaultTraits = [v18 defaultTraits];

    v17 = v36;
  }

  if ([v17 isCurrentLocation])
  {
    v19 = +[MKLocationManager sharedLocationManager];
    currentLocation = [v19 currentLocation];

    if (a5)
    {
      if (v15)
      {
        v21 = [[self alloc] initWithLocation:currentLocation isCurrentLocation:1];
        (v15)[2](v15, v21, 0);
      }
    }

    else
    {
      v26 = [(objc_class *)self composedWaypointForCurrentLocation:currentLocation traits:defaultTraits completionHandler:v15 networkActivityHandler:v16];
    }

    goto LABEL_23;
  }

  if (![v36 _hasCorrectedHomeWorkCoordinate])
  {
    place = [v36 place];

    if (place && (a4 & 1) == 0)
    {
      if (a5)
      {
        if (!v15)
        {
          goto LABEL_24;
        }

        v28 = objc_alloc(MEMORY[0x1E69A1CC8]);
        _geoMapItem = [v36 _geoMapItem];
        currentLocation = [v28 initWithMapItem:_geoMapItem];

        (v15)[2](v15, currentLocation, 0);
      }

      else
      {
        isPlaceHolder = [v36 isPlaceHolder];
        currentLocation = [v36 _geoMapItem];
        if (isPlaceHolder)
        {
          v34 = [(objc_class *)self composedWaypointForIncompleteMapItem:currentLocation traits:defaultTraits clientAttributes:0 completionHandler:v15 networkActivityHandler:v16];
        }

        else
        {
          v35 = [(objc_class *)self composedWaypointForMapItem:currentLocation traits:defaultTraits clientAttributes:0 completionHandler:v15 networkActivityHandler:v16];
        }
      }

      goto LABEL_23;
    }

    v30 = objc_alloc(MEMORY[0x1E69A1E70]);
    location = [v36 location];
    currentLocation = [v30 initWithCLLocation:location];

LABEL_21:
    _geoMapItem2 = [v36 _geoMapItem];
    v32 = [(objc_class *)self composedWaypointForLocation:currentLocation mapItem:_geoMapItem2 traits:defaultTraits completionHandler:v15 networkActivityHandler:v16];
    goto LABEL_22;
  }

  v22 = objc_alloc(MEMORY[0x1E69A1E70]);
  [v36 _coordinate];
  v24 = v23;
  [v36 _coordinate];
  currentLocation = [v22 initWithLatitude:v24 longitude:?];
  if (!a5)
  {
    goto LABEL_21;
  }

  if (v15)
  {
    _geoMapItem2 = [[self alloc] initWithLocation:currentLocation isCurrentLocation:0];
    (v15)[2](v15, _geoMapItem2, 0);
LABEL_22:
  }

LABEL_23:

LABEL_24:
}

@end
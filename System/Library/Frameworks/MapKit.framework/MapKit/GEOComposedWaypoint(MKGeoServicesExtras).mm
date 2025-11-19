@interface GEOComposedWaypoint(MKGeoServicesExtras)
+ (void)composedWaypointForMapItem:()MKGeoServicesExtras useAsLocation:forQuickETA:traits:completionHandler:networkActivityHandler:;
@end

@implementation GEOComposedWaypoint(MKGeoServicesExtras)

+ (void)composedWaypointForMapItem:()MKGeoServicesExtras useAsLocation:forQuickETA:traits:completionHandler:networkActivityHandler:
{
  v36 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = v36;
  if (!v36)
  {
    v20 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"mapItem cannot be nil"];
    v15[2](v15, 0, v20);
    goto LABEL_23;
  }

  if (!v14)
  {
    v18 = +[MKMapService sharedService];
    v14 = [v18 defaultTraits];

    v17 = v36;
  }

  if ([v17 isCurrentLocation])
  {
    v19 = +[MKLocationManager sharedLocationManager];
    v20 = [v19 currentLocation];

    if (a5)
    {
      if (v15)
      {
        v21 = [[a1 alloc] initWithLocation:v20 isCurrentLocation:1];
        (v15)[2](v15, v21, 0);
      }
    }

    else
    {
      v26 = [(objc_class *)a1 composedWaypointForCurrentLocation:v20 traits:v14 completionHandler:v15 networkActivityHandler:v16];
    }

    goto LABEL_23;
  }

  if (![v36 _hasCorrectedHomeWorkCoordinate])
  {
    v27 = [v36 place];

    if (v27 && (a4 & 1) == 0)
    {
      if (a5)
      {
        if (!v15)
        {
          goto LABEL_24;
        }

        v28 = objc_alloc(MEMORY[0x1E69A1CC8]);
        v29 = [v36 _geoMapItem];
        v20 = [v28 initWithMapItem:v29];

        (v15)[2](v15, v20, 0);
      }

      else
      {
        v33 = [v36 isPlaceHolder];
        v20 = [v36 _geoMapItem];
        if (v33)
        {
          v34 = [(objc_class *)a1 composedWaypointForIncompleteMapItem:v20 traits:v14 clientAttributes:0 completionHandler:v15 networkActivityHandler:v16];
        }

        else
        {
          v35 = [(objc_class *)a1 composedWaypointForMapItem:v20 traits:v14 clientAttributes:0 completionHandler:v15 networkActivityHandler:v16];
        }
      }

      goto LABEL_23;
    }

    v30 = objc_alloc(MEMORY[0x1E69A1E70]);
    v31 = [v36 location];
    v20 = [v30 initWithCLLocation:v31];

LABEL_21:
    v25 = [v36 _geoMapItem];
    v32 = [(objc_class *)a1 composedWaypointForLocation:v20 mapItem:v25 traits:v14 completionHandler:v15 networkActivityHandler:v16];
    goto LABEL_22;
  }

  v22 = objc_alloc(MEMORY[0x1E69A1E70]);
  [v36 _coordinate];
  v24 = v23;
  [v36 _coordinate];
  v20 = [v22 initWithLatitude:v24 longitude:?];
  if (!a5)
  {
    goto LABEL_21;
  }

  if (v15)
  {
    v25 = [[a1 alloc] initWithLocation:v20 isCurrentLocation:0];
    (v15)[2](v15, v25, 0);
LABEL_22:
  }

LABEL_23:

LABEL_24:
}

@end
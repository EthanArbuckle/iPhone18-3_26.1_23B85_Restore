@interface ShareItemRoute
- (NSArray)activityProviders;
- (NSArray)applicationActivities;
- (NSArray)excludedActivityTypes;
- (NSArray)includedActivityTypes;
- (NSData)pushSubmissionData;
- (ShareItemRoute)initWithRoute:(id)a3 includeRoutingApps:(BOOL)a4;
- (void)_selectCustomFeature:(id)a3;
- (void)_setupCustomFeatureForMapItem;
- (void)_setupCustomFeatureStore;
- (void)_setupDataProvider;
@end

@implementation ShareItemRoute

- (NSData)pushSubmissionData
{
  v2 = [(GEOComposedRoute *)self->_route bookmarkRepresentation];
  v3 = [v2 data];

  return v3;
}

- (void)_setupCustomFeatureForMapItem
{
  v23 = +[NSMutableArray array];
  v3 = [(ShareItemRoute *)self route];
  v4 = [v3 origin];
  v5 = [v4 geoMapItem];

  if (v5)
  {
    v6 = [MKMapItem alloc];
    v7 = [(ShareItemRoute *)self route];
    v8 = [v7 origin];
    v9 = [v8 geoMapItem];
    v10 = [v6 initWithGeoMapItem:v9 isPlaceHolderPlace:0];

    v11 = [_ShareCustomFeature customFeatureForMapItem:v10];
    startCustomFeature = self->_startCustomFeature;
    self->_startCustomFeature = v11;

    [v23 addObject:self->_startCustomFeature];
  }

  v13 = [(ShareItemRoute *)self route];
  v14 = [v13 destination];
  v15 = [v14 geoMapItem];

  if (v15)
  {
    v16 = [MKMapItem alloc];
    v17 = [(ShareItemRoute *)self route];
    v18 = [v17 destination];
    v19 = [v18 geoMapItem];
    v20 = [v16 initWithGeoMapItem:v19 isPlaceHolderPlace:0];

    v21 = [_ShareCustomFeature customFeatureForMapItem:v20];
    endCustomFeature = self->_endCustomFeature;
    self->_endCustomFeature = v21;

    [v23 addObject:self->_endCustomFeature];
  }

  [(_MKCustomFeatureStore *)self->_customFeatureStore addAnnotations:v23];
}

- (void)_setupCustomFeatureStore
{
  v3 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
  customFeatureStore = self->_customFeatureStore;
  self->_customFeatureStore = v3;
}

- (void)_selectCustomFeature:(id)a3
{
  v4 = a3;
  if (self->_customFeatureStore && self->_endCustomFeature)
  {
    v6 = v4;
    v5 = [v4 _labelMarkerForCustomFeatureAnnotation:?];
    if (v5)
    {
      [v6 _selectLabelMarker:v5 animated:0];
    }

    v4 = v6;
  }
}

- (NSArray)excludedActivityTypes
{
  if (GEOConfigGetBOOL())
  {
    v4 = UIActivityTypeAddToReadingList;
    v2 = [NSArray arrayWithObjects:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSArray)includedActivityTypes
{
  if (GEOConfigGetBOOL())
  {
    v3 = 0;
  }

  else
  {
    v7[0] = UIActivityTypePrint;
    v7[1] = UIActivityTypeAirDrop;
    v7[2] = UIActivityTypeOpenInIBooks;
    v7[3] = UIActivityTypeAssignToContact;
    v7[4] = UIActivityTypeSaveToCameraRoll;
    v4 = [NSArray arrayWithObjects:v7 count:5];
    if ([(ShareItemRoute *)self includeRoutingApps])
    {
      v5 = [v4 arrayByAddingObject:@"com.apple.Maps.RoutingAppsActivity"];
    }

    else
    {
      v5 = v4;
    }

    v3 = v5;
  }

  return v3;
}

- (NSArray)applicationActivities
{
  v3 = +[NSMutableArray array];
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 5)
  {
    v5 = [(ShareItemRoute *)self route];
    v6 = [v5 waypoints];
    v7 = [v6 count];

    if (v7 > 2)
    {
      goto LABEL_13;
    }

    v4 = [(ShareItemRoute *)self pushSubmissionData];
    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = +[MapsPushManager defaultManager];
      v9 = [v8 devices];

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [[PushToDeviceActivity alloc] initWithDevice:*(*(&v19 + 1) + 8 * i) place:self];
            [v3 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }

LABEL_13:
  v15 = objc_alloc_init(MapsPrintActivity);
  [v3 addObject:v15];

  if ([(ShareItemRoute *)self includeRoutingApps])
  {
    v16 = objc_alloc_init(SendToRoutingAppActivity);
    [v3 addObject:v16];
  }

  v17 = [v3 copy];

  return v17;
}

- (NSArray)activityProviders
{
  activityProviders = self->_activityProviders;
  if (!activityProviders)
  {
    v4 = [(ShareItemRoute *)self route];
    v5 = [v4 transportType];
    if (v5 > 5)
    {
      v6 = 1;
    }

    else
    {
      v6 = qword_1012160D0[v5];
    }

    [(MURouteActivityDataProvider *)self->_dataProvider setTransportType:v6];
    v7 = [MUTextActivityProvider activityProviderFromDataProvider:self->_dataProvider];
    v8 = [MUURLActivityProvider activityProviderFromDataProvider:self->_dataProvider];
    v9 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:self->_dataProvider];
    v13[0] = v7;
    v13[1] = v8;
    v13[2] = v9;
    v10 = [NSArray arrayWithObjects:v13 count:3];
    v11 = self->_activityProviders;
    self->_activityProviders = v10;

    activityProviders = self->_activityProviders;
  }

  return activityProviders;
}

- (void)_setupDataProvider
{
  v5 = [[MURouteActivityDataProviderConfiguration alloc] initWithSourceMapItem:self->_origin destinationMapItem:self->_destination route:self->_route];
  v3 = [[MURouteActivityDataProvider alloc] initWithConfiguration:v5];
  dataProvider = self->_dataProvider;
  self->_dataProvider = v3;
}

- (ShareItemRoute)initWithRoute:(id)a3 includeRoutingApps:(BOOL)a4
{
  v7 = a3;
  v33.receiver = self;
  v33.super_class = ShareItemRoute;
  v8 = [(ShareItemRoute *)&v33 init];
  if (v8 && ([v7 isMultipointRoute] & 1) == 0)
  {
    objc_storeStrong(&v8->_route, a3);
    v8->_includeRoutingApps = a4;
    v10 = [v7 origin];
    v11 = [v10 isCurrentLocation];

    if (v11)
    {
      v12 = [MKMapItem alloc];
      v13 = [(ShareItemRoute *)v8 route];
      v14 = [v13 origin];
      v15 = [v14 geoMapItem];
      v16 = [v12 initWithGeoMapItemAsCurrentLocation:v15];
    }

    else
    {
      v13 = [(ShareItemRoute *)v8 route];
      v14 = [v13 origin];
      v15 = [v14 geoMapItem];
      v16 = [MKMapItem _itemWithGeoMapItem:v15];
    }

    origin = v8->_origin;
    v8->_origin = v16;

    v18 = [v7 destination];
    v19 = [v18 isCurrentLocation];

    if (v19)
    {
      v20 = [MKMapItem alloc];
      v21 = [(ShareItemRoute *)v8 route];
      v22 = [v21 destination];
      v23 = [v22 geoMapItem];
      v24 = [v20 initWithGeoMapItemAsCurrentLocation:v23];
    }

    else
    {
      v21 = [(ShareItemRoute *)v8 route];
      v22 = [v21 destination];
      v23 = [v22 geoMapItem];
      v24 = [MKMapItem _itemWithGeoMapItem:v23];
    }

    destination = v8->_destination;
    v8->_destination = v24;

    v26 = [VKPolylineOverlay alloc];
    v27 = [(ShareItemRoute *)v8 route];
    v28 = [(ShareItemRoute *)v8 route];
    v29 = [v28 traffic];
    v30 = [v26 initWithComposedRoute:v27 traffic:v29];
    polyline = v8->_polyline;
    v8->_polyline = v30;

    [(VKPolylineOverlay *)v8->_polyline setSelected:1];
    [(ShareItemRoute *)v8 _setupDataProvider];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
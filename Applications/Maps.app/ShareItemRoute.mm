@interface ShareItemRoute
- (NSArray)activityProviders;
- (NSArray)applicationActivities;
- (NSArray)excludedActivityTypes;
- (NSArray)includedActivityTypes;
- (NSData)pushSubmissionData;
- (ShareItemRoute)initWithRoute:(id)route includeRoutingApps:(BOOL)apps;
- (void)_selectCustomFeature:(id)feature;
- (void)_setupCustomFeatureForMapItem;
- (void)_setupCustomFeatureStore;
- (void)_setupDataProvider;
@end

@implementation ShareItemRoute

- (NSData)pushSubmissionData
{
  bookmarkRepresentation = [(GEOComposedRoute *)self->_route bookmarkRepresentation];
  data = [bookmarkRepresentation data];

  return data;
}

- (void)_setupCustomFeatureForMapItem
{
  v23 = +[NSMutableArray array];
  route = [(ShareItemRoute *)self route];
  origin = [route origin];
  geoMapItem = [origin geoMapItem];

  if (geoMapItem)
  {
    v6 = [MKMapItem alloc];
    route2 = [(ShareItemRoute *)self route];
    origin2 = [route2 origin];
    geoMapItem2 = [origin2 geoMapItem];
    v10 = [v6 initWithGeoMapItem:geoMapItem2 isPlaceHolderPlace:0];

    v11 = [_ShareCustomFeature customFeatureForMapItem:v10];
    startCustomFeature = self->_startCustomFeature;
    self->_startCustomFeature = v11;

    [v23 addObject:self->_startCustomFeature];
  }

  route3 = [(ShareItemRoute *)self route];
  destination = [route3 destination];
  geoMapItem3 = [destination geoMapItem];

  if (geoMapItem3)
  {
    v16 = [MKMapItem alloc];
    route4 = [(ShareItemRoute *)self route];
    destination2 = [route4 destination];
    geoMapItem4 = [destination2 geoMapItem];
    v20 = [v16 initWithGeoMapItem:geoMapItem4 isPlaceHolderPlace:0];

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

- (void)_selectCustomFeature:(id)feature
{
  featureCopy = feature;
  if (self->_customFeatureStore && self->_endCustomFeature)
  {
    v6 = featureCopy;
    v5 = [featureCopy _labelMarkerForCustomFeatureAnnotation:?];
    if (v5)
    {
      [v6 _selectLabelMarker:v5 animated:0];
    }

    featureCopy = v6;
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
  pushSubmissionData = +[UIDevice currentDevice];
  if ([pushSubmissionData userInterfaceIdiom] == 5)
  {
    route = [(ShareItemRoute *)self route];
    waypoints = [route waypoints];
    v7 = [waypoints count];

    if (v7 > 2)
    {
      goto LABEL_13;
    }

    pushSubmissionData = [(ShareItemRoute *)self pushSubmissionData];
    if (pushSubmissionData)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = +[MapsPushManager defaultManager];
      devices = [v8 devices];

      v10 = [devices countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(devices);
            }

            v14 = [[PushToDeviceActivity alloc] initWithDevice:*(*(&v19 + 1) + 8 * i) place:self];
            [v3 addObject:v14];
          }

          v11 = [devices countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    route = [(ShareItemRoute *)self route];
    transportType = [route transportType];
    if (transportType > 5)
    {
      v6 = 1;
    }

    else
    {
      v6 = qword_1012160D0[transportType];
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

- (ShareItemRoute)initWithRoute:(id)route includeRoutingApps:(BOOL)apps
{
  routeCopy = route;
  v33.receiver = self;
  v33.super_class = ShareItemRoute;
  v8 = [(ShareItemRoute *)&v33 init];
  if (v8 && ([routeCopy isMultipointRoute] & 1) == 0)
  {
    objc_storeStrong(&v8->_route, route);
    v8->_includeRoutingApps = apps;
    origin = [routeCopy origin];
    isCurrentLocation = [origin isCurrentLocation];

    if (isCurrentLocation)
    {
      v12 = [MKMapItem alloc];
      route = [(ShareItemRoute *)v8 route];
      origin2 = [route origin];
      geoMapItem = [origin2 geoMapItem];
      v16 = [v12 initWithGeoMapItemAsCurrentLocation:geoMapItem];
    }

    else
    {
      route = [(ShareItemRoute *)v8 route];
      origin2 = [route origin];
      geoMapItem = [origin2 geoMapItem];
      v16 = [MKMapItem _itemWithGeoMapItem:geoMapItem];
    }

    origin = v8->_origin;
    v8->_origin = v16;

    destination = [routeCopy destination];
    isCurrentLocation2 = [destination isCurrentLocation];

    if (isCurrentLocation2)
    {
      v20 = [MKMapItem alloc];
      route2 = [(ShareItemRoute *)v8 route];
      destination2 = [route2 destination];
      geoMapItem2 = [destination2 geoMapItem];
      v24 = [v20 initWithGeoMapItemAsCurrentLocation:geoMapItem2];
    }

    else
    {
      route2 = [(ShareItemRoute *)v8 route];
      destination2 = [route2 destination];
      geoMapItem2 = [destination2 geoMapItem];
      v24 = [MKMapItem _itemWithGeoMapItem:geoMapItem2];
    }

    destination = v8->_destination;
    v8->_destination = v24;

    v26 = [VKPolylineOverlay alloc];
    route3 = [(ShareItemRoute *)v8 route];
    route4 = [(ShareItemRoute *)v8 route];
    traffic = [route4 traffic];
    v30 = [v26 initWithComposedRoute:route3 traffic:traffic];
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
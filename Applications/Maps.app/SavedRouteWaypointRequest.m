@interface SavedRouteWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)waypointName;
- (SavedRouteWaypointRequest)initWithSavedRoute:(id)a3;
- (SavedRouteWaypointRequest)initWithSavedRouteData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (id)waypointIconWithScale:(double)a3;
@end

@implementation SavedRouteWaypointRequest

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  v8 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1009557F0;
  v24 = sub_100955800;
  v25 = 0;
  route = self->_route;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100955808;
  v18[3] = &unk_10164CB50;
  v19 = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009558B4;
  v15[3] = &unk_10162F768;
  v16 = v19;
  v17 = &v20;
  v10 = v19;
  v11 = [(GEOComposedRoute *)route _maps_convertToNavigableRouteWithTraits:a3 errorHandler:v18 completionHandler:v15];
  v12 = v21[5];
  v21[5] = v11;

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v13;
}

- (BOOL)isEquivalentToOtherRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[1] isEqual:self->_routeData];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)waypointName
{
  v3 = [(GEOComposedRoute *)self->_route userProvidedName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(GEOComposedRoute *)self->_route name];
  }

  v6 = v5;

  return v6;
}

- (id)waypointIconWithScale:(double)a3
{
  v4 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
  v5 = [MKIconManager imageForStyle:v4 size:2 forScale:0 format:a3];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = [(GEOComposedRoute *)self->_route origin];
  v3 = v2;
  if (v2)
  {
    [v2 coordinate];
    v5 = v4;
    [v3 coordinate];
    v7 = CLLocationCoordinate2DMake(v5, v6);
    latitude = v7.latitude;
    longitude = v7.longitude;
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v10 = latitude;
  v11 = longitude;
  result.longitude = v11;
  result.latitude = v10;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_routeData);
  objc_storeStrong(v4 + 2, self->_route);
  return v4;
}

- (SavedRouteWaypointRequest)initWithSavedRoute:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SavedRouteWaypointRequest;
  v6 = [(SavedRouteWaypointRequest *)&v10 init];
  if (v6)
  {
    v7 = [v5 persistentData];
    routeData = v6->_routeData;
    v6->_routeData = v7;

    objc_storeStrong(&v6->_route, a3);
  }

  return v6;
}

- (SavedRouteWaypointRequest)initWithSavedRouteData:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SavedRouteWaypointRequest;
  v6 = [(SavedRouteWaypointRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeData, a3);
    v8 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v5];
    v9 = [v8 buildRoute];
    route = v7->_route;
    v7->_route = v9;
  }

  return v7;
}

@end
@interface SavedRouteWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (NSString)waypointName;
- (SavedRouteWaypointRequest)initWithSavedRoute:(id)route;
- (SavedRouteWaypointRequest)initWithSavedRouteData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (id)waypointIconWithScale:(double)scale;
@end

@implementation SavedRouteWaypointRequest

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  completionHandlerCopy = completionHandler;
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
  v19 = completionHandlerCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009558B4;
  v15[3] = &unk_10162F768;
  v16 = v19;
  v17 = &v20;
  v10 = v19;
  v11 = [(GEOComposedRoute *)route _maps_convertToNavigableRouteWithTraits:traits errorHandler:v18 completionHandler:v15];
  v12 = v21[5];
  v21[5] = v11;

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v13;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [requestCopy[1] isEqual:self->_routeData];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)waypointName
{
  userProvidedName = [(GEOComposedRoute *)self->_route userProvidedName];
  v4 = userProvidedName;
  if (userProvidedName)
  {
    name = userProvidedName;
  }

  else
  {
    name = [(GEOComposedRoute *)self->_route name];
  }

  v6 = name;

  return v6;
}

- (id)waypointIconWithScale:(double)scale
{
  v4 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
  v5 = [MKIconManager imageForStyle:v4 size:2 forScale:0 format:scale];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  origin = [(GEOComposedRoute *)self->_route origin];
  v3 = origin;
  if (origin)
  {
    [origin coordinate];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_routeData);
  objc_storeStrong(v4 + 2, self->_route);
  return v4;
}

- (SavedRouteWaypointRequest)initWithSavedRoute:(id)route
{
  routeCopy = route;
  v10.receiver = self;
  v10.super_class = SavedRouteWaypointRequest;
  v6 = [(SavedRouteWaypointRequest *)&v10 init];
  if (v6)
  {
    persistentData = [routeCopy persistentData];
    routeData = v6->_routeData;
    v6->_routeData = persistentData;

    objc_storeStrong(&v6->_route, route);
  }

  return v6;
}

- (SavedRouteWaypointRequest)initWithSavedRouteData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = SavedRouteWaypointRequest;
  v6 = [(SavedRouteWaypointRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeData, data);
    v8 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:dataCopy];
    buildRoute = [v8 buildRoute];
    route = v7->_route;
    v7->_route = buildRoute;
  }

  return v7;
}

@end
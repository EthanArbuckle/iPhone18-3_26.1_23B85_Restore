@interface TraceWaypointRequest
- (BOOL)hasCachedResult;
- (CLLocationCoordinate2D)coordinate;
- (GEOComposedWaypoint)waypoint;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (TraceWaypointRequest)initWithWaypoint:(id)waypoint;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (id)waypointIconWithScale:(double)scale;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)setWaypointResult:(id)result;
@end

@implementation TraceWaypointRequest

- (void)setWaypointResult:(id)result
{
  resultCopy = result;
  objc_storeStrong(&self->_waypointResult, result);
  completionHandler = [(TraceWaypointRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(TraceWaypointRequest *)self completionHandler];
    (completionHandler2)[2](completionHandler2, resultCopy);
  }
}

- (GEOComposedWaypoint)waypoint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A2BFCC;
  v10 = sub_100A2BFDC;
  v11 = 0;
  waypointResult = [(TraceWaypointRequest *)self waypointResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A2BFE4;
  v5[3] = &unk_101632238;
  v5[4] = &v6;
  [waypointResult withValue:v5 orError:&stru_101632258];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  [(TraceWaypointRequest *)self setCompletionHandler:completionHandler, handler];
  waypointResult = [(TraceWaypointRequest *)self waypointResult];

  if (waypointResult)
  {
    completionHandler = [(TraceWaypointRequest *)self completionHandler];
    waypointResult2 = [(TraceWaypointRequest *)self waypointResult];
    (completionHandler)[2](completionHandler, waypointResult2);
  }

  return 0;
}

- (NSString)waypointName
{
  waypoint = [(TraceWaypointRequest *)self waypoint];
  name = [waypoint name];

  return name;
}

- (id)waypointIconWithScale:(double)scale
{
  waypoint = [(TraceWaypointRequest *)self waypoint];
  styleAttributes = [waypoint styleAttributes];
  v7 = styleAttributes;
  if (styleAttributes)
  {
    _styleAttributes = styleAttributes;
  }

  else
  {
    waypoint2 = [(TraceWaypointRequest *)self waypoint];
    geoMapItem = [waypoint2 geoMapItem];
    _styleAttributes = [geoMapItem _styleAttributes];
  }

  v11 = [MKIconManager imageForStyle:_styleAttributes size:2 forScale:0 format:scale];

  return v11;
}

- (BOOL)hasCachedResult
{
  waypointResult = [(TraceWaypointRequest *)self waypointResult];
  v3 = waypointResult != 0;

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  waypoint = [(TraceWaypointRequest *)self waypoint];

  if (waypoint)
  {
    waypoint2 = [(TraceWaypointRequest *)self waypoint];
    latLng = [waypoint2 latLng];
    [latLng lat];
    v7 = v6;

    waypoint3 = [(TraceWaypointRequest *)self waypoint];
    latLng2 = [waypoint3 latLng];
    [latLng2 lng];
    v11 = v10;
  }

  else
  {
    v7 = 0.0;
    v11 = 0.0;
  }

  v14 = CLLocationCoordinate2DMake(v7, v11);
  longitude = v14.longitude;
  latitude = v14.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  blockCopy = block;
  waypoint = [(TraceWaypointRequest *)self waypoint];
  (*(block + 2))(blockCopy, @"waypointResult", waypoint);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A2C50C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(TraceWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TraceWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A2C75C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(TraceWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TraceWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (TraceWaypointRequest)initWithWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v9.receiver = self;
  v9.super_class = TraceWaypointRequest;
  v5 = [(TraceWaypointRequest *)&v9 init];
  if (v5)
  {
    v6 = [Result resultWithValue:waypointCopy];
    waypointResult = v5->_waypointResult;
    v5->_waypointResult = v6;
  }

  return v5;
}

@end
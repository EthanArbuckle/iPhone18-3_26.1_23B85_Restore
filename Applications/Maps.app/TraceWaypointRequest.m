@interface TraceWaypointRequest
- (BOOL)hasCachedResult;
- (CLLocationCoordinate2D)coordinate;
- (GEOComposedWaypoint)waypoint;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (TraceWaypointRequest)initWithWaypoint:(id)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (id)waypointIconWithScale:(double)a3;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)setWaypointResult:(id)a3;
@end

@implementation TraceWaypointRequest

- (void)setWaypointResult:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_waypointResult, a3);
  v5 = [(TraceWaypointRequest *)self completionHandler];

  if (v5)
  {
    v6 = [(TraceWaypointRequest *)self completionHandler];
    (v6)[2](v6, v7);
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
  v2 = [(TraceWaypointRequest *)self waypointResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A2BFE4;
  v5[3] = &unk_101632238;
  v5[4] = &v6;
  [v2 withValue:v5 orError:&stru_101632258];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  [(TraceWaypointRequest *)self setCompletionHandler:a5, a4];
  v7 = [(TraceWaypointRequest *)self waypointResult];

  if (v7)
  {
    v8 = [(TraceWaypointRequest *)self completionHandler];
    v9 = [(TraceWaypointRequest *)self waypointResult];
    (v8)[2](v8, v9);
  }

  return 0;
}

- (NSString)waypointName
{
  v2 = [(TraceWaypointRequest *)self waypoint];
  v3 = [v2 name];

  return v3;
}

- (id)waypointIconWithScale:(double)a3
{
  v5 = [(TraceWaypointRequest *)self waypoint];
  v6 = [v5 styleAttributes];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(TraceWaypointRequest *)self waypoint];
    v10 = [v9 geoMapItem];
    v8 = [v10 _styleAttributes];
  }

  v11 = [MKIconManager imageForStyle:v8 size:2 forScale:0 format:a3];

  return v11;
}

- (BOOL)hasCachedResult
{
  v2 = [(TraceWaypointRequest *)self waypointResult];
  v3 = v2 != 0;

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(TraceWaypointRequest *)self waypoint];

  if (v3)
  {
    v4 = [(TraceWaypointRequest *)self waypoint];
    v5 = [v4 latLng];
    [v5 lat];
    v7 = v6;

    v8 = [(TraceWaypointRequest *)self waypoint];
    v9 = [v8 latLng];
    [v9 lng];
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

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v5 = a3;
  v6 = [(TraceWaypointRequest *)self waypoint];
  (*(a3 + 2))(v5, @"waypointResult", v6);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A2C50C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(TraceWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A2C75C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(TraceWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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

- (TraceWaypointRequest)initWithWaypoint:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TraceWaypointRequest;
  v5 = [(TraceWaypointRequest *)&v9 init];
  if (v5)
  {
    v6 = [Result resultWithValue:v4];
    waypointResult = v5->_waypointResult;
    v5->_waypointResult = v6;
  }

  return v5;
}

@end
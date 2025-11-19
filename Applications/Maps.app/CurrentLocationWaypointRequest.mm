@interface CurrentLocationWaypointRequest
- (CLLocationCoordinate2D)coordinate;
- (CurrentLocationWaypointRequest)init;
- (CurrentLocationWaypointRequest)initWithCurrentLocationTicket:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (id)waypointIconWithScale:(double)a3;
- (void)dealloc;
- (void)recordRAPInformation:(id)a3;
@end

@implementation CurrentLocationWaypointRequest

- (void)recordRAPInformation:(id)a3
{
  v10 = a3;
  [v10 setOrigin:2];
  v4 = [(CurrentLocationWaypointRequest *)self ticket];
  v5 = [v4 currentLocation];

  if (v5)
  {
    v6 = [GEOLatLng alloc];
    [v5 coordinate];
    v8 = v7;
    [v5 coordinate];
    v9 = [v6 initWithLatitude:v8 longitude:?];
    [v10 setCoordinate:v9];
  }
}

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(CurrentLocationWaypointRequest *)self ticket];
  [v12 submitWithTraits:v11 completionHandler:v10 networkActivityHandler:v9];

  return [(CurrentLocationWaypointRequest *)self ticket];
}

- (id)waypointIconWithScale:(double)a3
{
  v4 = +[GEOFeatureStyleAttributes currentLocationStyleAttributes];
  v5 = [MKIconManager imageForStyle:v4 size:0 forScale:0 format:a3];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = [(CurrentLocationWaypointRequest *)self ticket];
  v3 = [v2 currentLocation];

  if (v3)
  {
    [v3 coordinate];
    latitude = v4;
    longitude = v6;
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v8 = latitude;
  v9 = longitude;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1007B49F0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CurrentLocationWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CurrentLocationWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v16 = sub_1007B4C40;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CurrentLocationWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CurrentLocationWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CurrentLocationMapServiceTicket alloc];
  v6 = [(CurrentLocationWaypointRequest *)self ticket];
  v7 = [v6 locationManager];
  v8 = [(CurrentLocationMapServiceTicket *)v5 initWithLocationManager:v7];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithCurrentLocationTicket:", v8}];
  return v9;
}

- (void)dealloc
{
  v3 = sub_1007B4F30();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CurrentLocationWaypointRequest;
  [(CurrentLocationWaypointRequest *)&v4 dealloc];
}

- (CurrentLocationWaypointRequest)init
{
  v3 = [CurrentLocationMapServiceTicket alloc];
  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [(CurrentLocationMapServiceTicket *)v3 initWithLocationManager:v4];

  v6 = [(CurrentLocationWaypointRequest *)self initWithCurrentLocationTicket:v5];
  return v6;
}

- (CurrentLocationWaypointRequest)initWithCurrentLocationTicket:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CurrentLocationWaypointRequest;
  v6 = [(CurrentLocationWaypointRequest *)&v9 init];
  if (v6)
  {
    v7 = sub_1007B4F30();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initiailizing with ticket: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_ticket, a3);
  }

  return v6;
}

@end
@interface CurrentLocationWaypointRequest
- (CLLocationCoordinate2D)coordinate;
- (CurrentLocationWaypointRequest)init;
- (CurrentLocationWaypointRequest)initWithCurrentLocationTicket:(id)ticket;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (id)waypointIconWithScale:(double)scale;
- (void)dealloc;
- (void)recordRAPInformation:(id)information;
@end

@implementation CurrentLocationWaypointRequest

- (void)recordRAPInformation:(id)information
{
  informationCopy = information;
  [informationCopy setOrigin:2];
  ticket = [(CurrentLocationWaypointRequest *)self ticket];
  currentLocation = [ticket currentLocation];

  if (currentLocation)
  {
    v6 = [GEOLatLng alloc];
    [currentLocation coordinate];
    v8 = v7;
    [currentLocation coordinate];
    v9 = [v6 initWithLatitude:v8 longitude:?];
    [informationCopy setCoordinate:v9];
  }
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  activityHandlerCopy = activityHandler;
  completionHandlerCopy = completionHandler;
  traitsCopy = traits;
  ticket = [(CurrentLocationWaypointRequest *)self ticket];
  [ticket submitWithTraits:traitsCopy completionHandler:completionHandlerCopy networkActivityHandler:activityHandlerCopy];

  return [(CurrentLocationWaypointRequest *)self ticket];
}

- (id)waypointIconWithScale:(double)scale
{
  v4 = +[GEOFeatureStyleAttributes currentLocationStyleAttributes];
  v5 = [MKIconManager imageForStyle:v4 size:0 forScale:0 format:scale];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  ticket = [(CurrentLocationWaypointRequest *)self ticket];
  currentLocation = [ticket currentLocation];

  if (currentLocation)
  {
    [currentLocation coordinate];
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
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1007B49F0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CurrentLocationWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1007B4C40;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CurrentLocationWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CurrentLocationMapServiceTicket alloc];
  ticket = [(CurrentLocationWaypointRequest *)self ticket];
  locationManager = [ticket locationManager];
  v8 = [(CurrentLocationMapServiceTicket *)v5 initWithLocationManager:locationManager];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithCurrentLocationTicket:", v8}];
  return v9;
}

- (void)dealloc
{
  v3 = sub_1007B4F30();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
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

- (CurrentLocationWaypointRequest)initWithCurrentLocationTicket:(id)ticket
{
  ticketCopy = ticket;
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
      v13 = ticketCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initiailizing with ticket: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_ticket, ticket);
  }

  return v6;
}

@end
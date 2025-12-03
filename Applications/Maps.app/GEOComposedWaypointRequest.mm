@interface GEOComposedWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (GEOComposedWaypointRequest)init;
- (GEOComposedWaypointRequest)initWithComposedWaypoint:(id)waypoint;
- (MKMapItem)mapItemForLocationComparison;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (id)waypointIconWithScale:(double)scale;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)recordRAPInformation:(id)information;
@end

@implementation GEOComposedWaypointRequest

- (void)recordRAPInformation:(id)information
{
  informationCopy = information;
  geoMapItem = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];
  if (geoMapItem)
  {
    v5 = [GEOMapItemStorage mapItemStorageForGEOMapItem:geoMapItem forUseType:0];
    [informationCopy setPlaceMapItemStorage:v5];
  }

  if (([(GEOComposedWaypoint *)self->_waypoint isCurrentLocation]& 1) != 0)
  {
    v6 = 2;
  }

  else
  {
    if (![(GEOComposedWaypoint *)self->_waypoint isLocationWaypointType])
    {
      goto LABEL_8;
    }

    v6 = 3;
  }

  [informationCopy setOrigin:v6];
LABEL_8:
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  if (completionHandler)
  {
    waypoint = self->_waypoint;
    completionHandlerCopy = completionHandler;
    v9 = [Result resultWithValue:waypoint];
    (*(completionHandler + 2))(completionHandlerCopy, v9);
  }

  return 0;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    _geoMapItem2 = [v5[2] _geoMapItem];
    v8 = _geoMapItem2;
    IsEqualToMapItemForPurpose = 0;
    if (_geoMapItem && _geoMapItem2)
    {
      IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
    }
  }

  else
  {
    IsEqualToMapItemForPurpose = 0;
  }

  return IsEqualToMapItemForPurpose;
}

- (NSString)waypointName
{
  name = [(GEOComposedWaypoint *)self->_waypoint name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = MKLocalizedStringForUnknownLocation();
  }

  v5 = v4;

  return v5;
}

- (id)waypointIconWithScale:(double)scale
{
  mkMapItem = [(GEOComposedWaypoint *)self->_waypoint mkMapItem];
  v5 = [MKMapItem _maps_markerImageForMapItem:mkMapItem scale:2 size:0 useMarkerFallback:scale];

  return v5;
}

- (MKMapItem)mapItemForLocationComparison
{
  if (!self->_mapItem)
  {
    geoMapItem = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];

    if (geoMapItem)
    {
      v4 = [MKMapItem alloc];
      geoMapItem2 = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];
      v6 = [v4 initWithGeoMapItem:geoMapItem2 isPlaceHolderPlace:0];
      mapItem = self->_mapItem;
      self->_mapItem = v6;
    }
  }

  v8 = self->_mapItem;

  return v8;
}

- (CLLocationCoordinate2D)coordinate
{
  latLng = [(GEOComposedWaypoint *)self->_waypoint latLng];

  waypoint = self->_waypoint;
  if (latLng)
  {
    latLng2 = [(GEOComposedWaypoint *)waypoint latLng];
    [latLng2 lat];
    v7 = v6;
    latLng3 = [(GEOComposedWaypoint *)self->_waypoint latLng];
    [latLng3 lng];
    v10 = CLLocationCoordinate2DMake(v7, v9);
    latitude = v10.latitude;
    longitude = v10.longitude;
  }

  else
  {
    geoMapItem = [(GEOComposedWaypoint *)waypoint geoMapItem];

    if (geoMapItem)
    {
      geoMapItem2 = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];
      [geoMapItem2 coordinate];
      latitude = v15;
      longitude = v16;
    }

    else
    {
      latitude = kCLLocationCoordinate2DInvalid.latitude;
      longitude = kCLLocationCoordinate2DInvalid.longitude;
    }
  }

  v17 = latitude;
  v18 = longitude;
  result.longitude = v18;
  result.latitude = v17;
  return result;
}

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  waypoint = self->_waypoint;
  blockCopy = block;
  shortDescription = [(GEOComposedWaypoint *)waypoint shortDescription];
  (*(block + 2))(blockCopy, @"waypoint", shortDescription);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C2040C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(GEOComposedWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(GEOComposedWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v16 = sub_100C2065C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(GEOComposedWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(GEOComposedWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v4 = [objc_opt_class() allocWithZone:zone];
  waypoint = self->_waypoint;

  return [v4 initWithComposedWaypoint:waypoint];
}

- (GEOComposedWaypointRequest)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemented", v5, v6];

  return 0;
}

- (GEOComposedWaypointRequest)initWithComposedWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v9.receiver = self;
  v9.super_class = GEOComposedWaypointRequest;
  v5 = [(GEOComposedWaypointRequest *)&v9 init];
  if (v5)
  {
    v6 = [waypointCopy copy];
    waypoint = v5->_waypoint;
    v5->_waypoint = v6;
  }

  return v5;
}

@end
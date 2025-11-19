@interface GEOComposedWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (GEOComposedWaypointRequest)init;
- (GEOComposedWaypointRequest)initWithComposedWaypoint:(id)a3;
- (MKMapItem)mapItemForLocationComparison;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (id)waypointIconWithScale:(double)a3;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)recordRAPInformation:(id)a3;
@end

@implementation GEOComposedWaypointRequest

- (void)recordRAPInformation:(id)a3
{
  v7 = a3;
  v4 = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];
  if (v4)
  {
    v5 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v4 forUseType:0];
    [v7 setPlaceMapItemStorage:v5];
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

  [v7 setOrigin:v6];
LABEL_8:
}

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  if (a5)
  {
    waypoint = self->_waypoint;
    v8 = a5;
    v9 = [Result resultWithValue:waypoint];
    (*(a5 + 2))(v8, v9);
  }

  return 0;
}

- (BOOL)isEquivalentToOtherRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v7 = [v5[2] _geoMapItem];
    v8 = v7;
    IsEqualToMapItemForPurpose = 0;
    if (v6 && v7)
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
  v2 = [(GEOComposedWaypoint *)self->_waypoint name];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MKLocalizedStringForUnknownLocation();
  }

  v5 = v4;

  return v5;
}

- (id)waypointIconWithScale:(double)a3
{
  v4 = [(GEOComposedWaypoint *)self->_waypoint mkMapItem];
  v5 = [MKMapItem _maps_markerImageForMapItem:v4 scale:2 size:0 useMarkerFallback:a3];

  return v5;
}

- (MKMapItem)mapItemForLocationComparison
{
  if (!self->_mapItem)
  {
    v3 = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];

    if (v3)
    {
      v4 = [MKMapItem alloc];
      v5 = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];
      v6 = [v4 initWithGeoMapItem:v5 isPlaceHolderPlace:0];
      mapItem = self->_mapItem;
      self->_mapItem = v6;
    }
  }

  v8 = self->_mapItem;

  return v8;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(GEOComposedWaypoint *)self->_waypoint latLng];

  waypoint = self->_waypoint;
  if (v3)
  {
    v5 = [(GEOComposedWaypoint *)waypoint latLng];
    [v5 lat];
    v7 = v6;
    v8 = [(GEOComposedWaypoint *)self->_waypoint latLng];
    [v8 lng];
    v10 = CLLocationCoordinate2DMake(v7, v9);
    latitude = v10.latitude;
    longitude = v10.longitude;
  }

  else
  {
    v13 = [(GEOComposedWaypoint *)waypoint geoMapItem];

    if (v13)
    {
      v14 = [(GEOComposedWaypoint *)self->_waypoint geoMapItem];
      [v14 coordinate];
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

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  waypoint = self->_waypoint;
  v5 = a3;
  v6 = [(GEOComposedWaypoint *)waypoint shortDescription];
  (*(a3 + 2))(v5, @"waypoint", v6);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C2040C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(GEOComposedWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C2065C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(GEOComposedWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (GEOComposedWaypointRequest)initWithComposedWaypoint:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GEOComposedWaypointRequest;
  v5 = [(GEOComposedWaypointRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    waypoint = v5->_waypoint;
    v5->_waypoint = v6;
  }

  return v5;
}

@end
@interface PlaceholderWaypointRequest
- (BOOL)isCurrentLocation;
- (BOOL)isEquivalentToOtherRequest:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)debugDescription;
- (NSString)description;
- (PlaceholderWaypointRequest)initWithCLPlacemark:(id)a3;
- (PlaceholderWaypointRequest)initWithName:(id)a3 icon:(id)a4;
- (id)waypointIconWithScale:(double)a3;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
@end

@implementation PlaceholderWaypointRequest

- (BOOL)isEquivalentToOtherRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    mapItem = self->_mapItem;
    if (mapItem && v5[2])
    {
      v7 = [(MKMapItem *)mapItem isEqual:?];
    }

    else
    {
      v8 = [(PlaceholderWaypointRequest *)self waypointName];
      v9 = [v5 waypointName];
      v7 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentLocation
{
  mapItem = self->_mapItem;
  if (!mapItem)
  {
    return 0;
  }

  v3 = +[MKMapItem mapItemForCurrentLocation];
  v4 = [(MKMapItem *)mapItem isEqual:v3];

  return v4;
}

- (id)waypointIconWithScale:(double)a3
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    v4 = [MKMapItem _maps_markerImageForMapItem:mapItem scale:2 size:0 useMarkerFallback:a3];
  }

  else
  {
    v4 = self->_icon;
  }

  return v4;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = kCLLocationCoordinate2DInvalid.latitude;
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, @"icon", self->_icon);
  (*v4)(v6, @"mapItem", self->_mapItem);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100623FBC;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(PlaceholderWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(PlaceholderWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v16 = sub_100044848;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(PlaceholderWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(PlaceholderWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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

- (PlaceholderWaypointRequest)initWithCLPlacemark:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PlaceholderWaypointRequest;
  v5 = [(PlaceholderWaypointRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [[MKPlacemark alloc] initWithPlacemark:v4];
    v10 = [[MKMapItem alloc] initWithPlacemark:v9];
    mapItem = v5->_mapItem;
    v5->_mapItem = v10;
  }

  return v5;
}

- (PlaceholderWaypointRequest)initWithName:(id)a3 icon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PlaceholderWaypointRequest;
  v8 = [(PlaceholderWaypointRequest *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_icon, a4);
  }

  return v8;
}

@end
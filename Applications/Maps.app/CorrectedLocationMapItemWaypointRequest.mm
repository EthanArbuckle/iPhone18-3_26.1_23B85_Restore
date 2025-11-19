@interface CorrectedLocationMapItemWaypointRequest
- (CLLocationCoordinate2D)coordinate;
- (CorrectedLocationMapItemWaypointRequest)initWithCorrectedCoordinate:(CLLocationCoordinate2D)a3 mapItem:(id)a4;
- (CorrectedLocationMapItemWaypointRequest)initWithMapItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)recordRAPInformation:(id)a3;
@end

@implementation CorrectedLocationMapItemWaypointRequest

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)recordRAPInformation:(id)a3
{
  v3 = self;
  v6.receiver = self;
  v6.super_class = CorrectedLocationMapItemWaypointRequest;
  v4 = a3;
  [(MapItemWaypointRequest *)&v6 recordRAPInformation:v4];
  v5 = objc_alloc_init(GEOLatLng);
  v3 += 2;
  [v5 setLat:{*v3, v6.receiver, v6.super_class}];
  [v5 setLng:v3[1]];
  [v4 setCoordinate:v5];
}

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [GEOLocation alloc];
  [(CorrectedLocationMapItemWaypointRequest *)self coordinate];
  v13 = [v12 initWithGEOCoordinate:?];
  v14 = [(MKMapItem *)self->super._mapItem _geoMapItem];
  v15 = sub_100C2093C(v10);

  v16 = [GEOComposedWaypoint composedWaypointForLocation:v13 mapItem:v14 traits:v11 completionHandler:v15 networkActivityHandler:v9];

  return v16;
}

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = CorrectedLocationMapItemWaypointRequest;
  v4 = a3;
  [(MapItemWaypointRequest *)&v6 _maps_buildDescriptionWithBlock:v4];
  v5 = [NSString stringWithFormat:@"(%lf, %lf)", *&self->_coordinate.latitude, *&self->_coordinate.longitude, v6.receiver, v6.super_class];
  v4[2](v4, @"coordinate", v5);
}

- (id)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100F3B74C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CorrectedLocationMapItemWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CorrectedLocationMapItemWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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

- (id)description
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100F3B99C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CorrectedLocationMapItemWaypointRequest *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CorrectedLocationMapItemWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  mapItem = self->super._mapItem;
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;

  return [v4 initWithCorrectedCoordinate:mapItem mapItem:{latitude, longitude}];
}

- (CorrectedLocationMapItemWaypointRequest)initWithMapItem:(id)a3
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemented", v6, v7];

  return 0;
}

- (CorrectedLocationMapItemWaypointRequest)initWithCorrectedCoordinate:(CLLocationCoordinate2D)a3 mapItem:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = 0;
  if (fabs(a3.longitude) <= 180.0 && a3.latitude >= -90.0 && a3.latitude <= 90.0)
  {
    v9.receiver = self;
    v9.super_class = CorrectedLocationMapItemWaypointRequest;
    v7 = [(MapItemWaypointRequest *)&v9 initWithMapItem:a4];
    if (v7)
    {
      v7->_coordinate.latitude = latitude;
      v7->_coordinate.longitude = longitude;
    }

    self = v7;
    v6 = self;
  }

  return v6;
}

@end
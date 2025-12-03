@interface CorrectedLocationMapItemWaypointRequest
- (CLLocationCoordinate2D)coordinate;
- (CorrectedLocationMapItemWaypointRequest)initWithCorrectedCoordinate:(CLLocationCoordinate2D)coordinate mapItem:(id)item;
- (CorrectedLocationMapItemWaypointRequest)initWithMapItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)recordRAPInformation:(id)information;
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

- (void)recordRAPInformation:(id)information
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = CorrectedLocationMapItemWaypointRequest;
  informationCopy = information;
  [(MapItemWaypointRequest *)&v6 recordRAPInformation:informationCopy];
  v5 = objc_alloc_init(GEOLatLng);
  selfCopy += 2;
  [v5 setLat:{*selfCopy, v6.receiver, v6.super_class}];
  [v5 setLng:selfCopy[1]];
  [informationCopy setCoordinate:v5];
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  activityHandlerCopy = activityHandler;
  completionHandlerCopy = completionHandler;
  traitsCopy = traits;
  v12 = [GEOLocation alloc];
  [(CorrectedLocationMapItemWaypointRequest *)self coordinate];
  v13 = [v12 initWithGEOCoordinate:?];
  _geoMapItem = [(MKMapItem *)self->super._mapItem _geoMapItem];
  v15 = sub_100C2093C(completionHandlerCopy);

  v16 = [GEOComposedWaypoint composedWaypointForLocation:v13 mapItem:_geoMapItem traits:traitsCopy completionHandler:v15 networkActivityHandler:activityHandlerCopy];

  return v16;
}

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = CorrectedLocationMapItemWaypointRequest;
  blockCopy = block;
  [(MapItemWaypointRequest *)&v6 _maps_buildDescriptionWithBlock:blockCopy];
  v5 = [NSString stringWithFormat:@"(%lf, %lf)", *&self->_coordinate.latitude, *&self->_coordinate.longitude, v6.receiver, v6.super_class];
  blockCopy[2](blockCopy, @"coordinate", v5);
}

- (id)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100F3B74C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CorrectedLocationMapItemWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100F3B99C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(CorrectedLocationMapItemWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mapItem = self->super._mapItem;
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;

  return [v4 initWithCorrectedCoordinate:mapItem mapItem:{latitude, longitude}];
}

- (CorrectedLocationMapItemWaypointRequest)initWithMapItem:(id)item
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemented", v6, v7];

  return 0;
}

- (CorrectedLocationMapItemWaypointRequest)initWithCorrectedCoordinate:(CLLocationCoordinate2D)coordinate mapItem:(id)item
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  selfCopy = 0;
  if (fabs(coordinate.longitude) <= 180.0 && coordinate.latitude >= -90.0 && coordinate.latitude <= 90.0)
  {
    v9.receiver = self;
    v9.super_class = CorrectedLocationMapItemWaypointRequest;
    v7 = [(MapItemWaypointRequest *)&v9 initWithMapItem:item];
    if (v7)
    {
      v7->_coordinate.latitude = latitude;
      v7->_coordinate.longitude = longitude;
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

@end
@interface MapItemProvider
+ (id)mapItemSourceWithMapItem:(id)item;
+ (id)mapItemSourceWithPersonalizedItem:(id)item;
+ (id)mapItemSourceWithResolvedWaypoint:(id)waypoint;
- (MapItemProvider)initWithMapItem:(id)item precedence:(unint64_t)precedence;
@end

@implementation MapItemProvider

- (MapItemProvider)initWithMapItem:(id)item precedence:(unint64_t)precedence
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = MapItemProvider;
  v8 = [(MapItemProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
    v9->_precedence = precedence;
    v10 = v9;
  }

  return v9;
}

+ (id)mapItemSourceWithPersonalizedItem:(id)item
{
  itemCopy = item;
  v5 = [self alloc];
  mapItem = [itemCopy mapItem];

  v7 = [v5 initWithMapItem:mapItem precedence:2];

  return v7;
}

+ (id)mapItemSourceWithResolvedWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v5 = [MKMapItem alloc];
  geoMapItem = [waypointCopy geoMapItem];

  v7 = [v5 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
  if (v7 && ([v7 location], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "coordinate"), v9 = CLLocationCoordinate2DIsValid(v13), v8, v9))
  {
    v10 = [[self alloc] initWithMapItem:v7 precedence:3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)mapItemSourceWithMapItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy && ([itemCopy location], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "coordinate"), v7 = CLLocationCoordinate2DIsValid(v11), v6, v7))
  {
    v8 = [[self alloc] initWithMapItem:v5 precedence:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
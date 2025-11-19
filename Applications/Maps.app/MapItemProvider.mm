@interface MapItemProvider
+ (id)mapItemSourceWithMapItem:(id)a3;
+ (id)mapItemSourceWithPersonalizedItem:(id)a3;
+ (id)mapItemSourceWithResolvedWaypoint:(id)a3;
- (MapItemProvider)initWithMapItem:(id)a3 precedence:(unint64_t)a4;
@end

@implementation MapItemProvider

- (MapItemProvider)initWithMapItem:(id)a3 precedence:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MapItemProvider;
  v8 = [(MapItemProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
    v9->_precedence = a4;
    v10 = v9;
  }

  return v9;
}

+ (id)mapItemSourceWithPersonalizedItem:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 mapItem];

  v7 = [v5 initWithMapItem:v6 precedence:2];

  return v7;
}

+ (id)mapItemSourceWithResolvedWaypoint:(id)a3
{
  v4 = a3;
  v5 = [MKMapItem alloc];
  v6 = [v4 geoMapItem];

  v7 = [v5 initWithGeoMapItem:v6 isPlaceHolderPlace:0];
  if (v7 && ([v7 location], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "coordinate"), v9 = CLLocationCoordinate2DIsValid(v13), v8, v9))
  {
    v10 = [[a1 alloc] initWithMapItem:v7 precedence:3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)mapItemSourceWithMapItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 location], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "coordinate"), v7 = CLLocationCoordinate2DIsValid(v11), v6, v7))
  {
    v8 = [[a1 alloc] initWithMapItem:v5 precedence:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
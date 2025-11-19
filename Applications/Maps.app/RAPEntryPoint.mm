@interface RAPEntryPoint
+ (id)entryPointStyleAttributes;
- (BOOL)isDestinationEntryPoint;
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (RAPEntryPoint)initWithAccessPoint:(id)a3;
- (RAPEntryPoint)initWithAccessPoint:(id)a3 type:(int64_t)a4;
- (id)markerText;
- (int64_t)entryPointType;
- (void)_setType:(int64_t)a3;
- (void)setCoordinate:(CLLocationCoordinate2D)a3;
@end

@implementation RAPEntryPoint

- (BOOL)isDestinationEntryPoint
{
  v3 = [(RAPEntryPoint *)self accessPoint];
  v4 = [v3 hasWalkingDirection];

  if (v4)
  {
    v5 = [(RAPEntryPoint *)self accessPoint];
    v6 = [v5 walkingDirection] == 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(RAPEntryPoint *)self accessPoint];
  v8 = [v7 hasDrivingDirection];

  if (v8)
  {
    v9 = [(RAPEntryPoint *)self accessPoint];
    v10 = [v9 drivingDirection] == 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(RAPEntryPoint *)self accessPoint];
  v12 = [v11 hasTransitDirection];

  if (v12)
  {
    v13 = [(RAPEntryPoint *)self accessPoint];
    v14 = [v13 transitDirection] == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v6 || v10 || v14;
  return v15 & 1;
}

- (void)_setType:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v16 = [(RAPEntryPoint *)self accessPoint];
      [v16 setDrivingDirection:0];

      v17 = [(RAPEntryPoint *)self accessPoint];
      [v17 setWalkingDirection:3];

      v18 = [(RAPEntryPoint *)self accessPoint];
      [v18 setTransitDirection:0];

      v6 = [(RAPEntryPoint *)self accessPoint];
      [v6 setHasDrivingDirection:0];
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v7 = [(RAPEntryPoint *)self accessPoint];
      [v7 setDrivingDirection:3];

      v8 = [(RAPEntryPoint *)self accessPoint];
      [v8 setWalkingDirection:0];

      v9 = [(RAPEntryPoint *)self accessPoint];
      [v9 setTransitDirection:0];

      v6 = [(RAPEntryPoint *)self accessPoint];
      [v6 setHasWalkingDirection:0];
    }

    goto LABEL_12;
  }

  switch(a3)
  {
    case 5:
      v10 = [(RAPEntryPoint *)self accessPoint];
      [v10 setDrivingDirection:3];

      v11 = [(RAPEntryPoint *)self accessPoint];
      [v11 setWalkingDirection:3];

      v19 = [(RAPEntryPoint *)self accessPoint];
      [v19 setTransitDirection:3];
      break;
    case 4:
      v12 = [(RAPEntryPoint *)self accessPoint];
      [v12 setDrivingDirection:0];

      v13 = [(RAPEntryPoint *)self accessPoint];
      [v13 setWalkingDirection:0];

      v14 = [(RAPEntryPoint *)self accessPoint];
      [v14 setTransitDirection:3];

      v15 = [(RAPEntryPoint *)self accessPoint];
      [v15 setHasWalkingDirection:0];

      v19 = [(RAPEntryPoint *)self accessPoint];
      [v19 setHasDrivingDirection:0];
      break;
    case 3:
      v4 = [(RAPEntryPoint *)self accessPoint];
      [v4 setDrivingDirection:3];

      v5 = [(RAPEntryPoint *)self accessPoint];
      [v5 setWalkingDirection:3];

      v6 = [(RAPEntryPoint *)self accessPoint];
      [v6 setTransitDirection:0];
LABEL_12:

      v19 = [(RAPEntryPoint *)self accessPoint];
      [v19 setHasTransitDirection:0];
      break;
    default:
      return;
  }
}

- (int64_t)entryPointType
{
  v3 = [(RAPEntryPoint *)self accessPoint];
  if ([v3 hasWalkingDirection])
  {
    v4 = [(RAPEntryPoint *)self accessPoint];
    v5 = [v4 hasDrivingDirection];

    if (v5)
    {
      return 3;
    }
  }

  else
  {
  }

  v7 = [(RAPEntryPoint *)self accessPoint];
  LODWORD(v8) = [v7 hasWalkingDirection];

  v9 = v8;
  v10 = [(RAPEntryPoint *)self accessPoint];
  v11 = [v10 hasDrivingDirection];

  v12 = 1;
  if (v8)
  {
    v12 = 2;
  }

  if (v11)
  {
    v8 = v12;
  }

  else
  {
    v8 = v8;
  }

  if (v11)
  {
    v13 = 2;
  }

  else
  {
    v13 = v9;
  }

  v14 = [(RAPEntryPoint *)self accessPoint];
  v15 = [v14 hasTransitDirection];

  v16 = 4;
  if (!v15)
  {
    v16 = v13;
  }

  if (v8 + v15 <= 1)
  {
    return v16;
  }

  else
  {
    return 5;
  }
}

- (id)markerText
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Drive [RAP][Entry Points]" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Walk [RAP][Entry Points]" value:@"localized string not found" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Drive / Walk [RAP][Entry Points]" value:@"localized string not found" table:0];

  v9 = [(RAPEntryPoint *)self entryPointType];
  v10 = v6;
  if (v9 != 1)
  {
    if (v9 == 3)
    {
      v10 = v8;
    }

    else
    {
      v11 = 0;
      v10 = v4;
      if (v9 != 2)
      {
        goto LABEL_7;
      }
    }
  }

  v11 = v10;
LABEL_7:
  v12 = v11;

  return v11;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(RAPEntryPoint *)self accessPoint];
  v4 = [v3 location];
  [v4 lat];
  v6 = v5;
  v7 = [(RAPEntryPoint *)self accessPoint];
  v8 = [v7 location];
  [v8 lng];
  v10 = CLLocationCoordinate2DMake(v6, v9);

  latitude = v10.latitude;
  longitude = v10.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = objc_alloc_init(GEOLatLng);
  [v7 setLat:latitude];
  [v7 setLng:longitude];
  v6 = [(RAPEntryPoint *)self accessPoint];
  [v6 setLocation:v7];
}

- (NSString)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Entrance [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPEntryPoint)initWithAccessPoint:(id)a3 type:(int64_t)a4
{
  v5 = [(RAPEntryPoint *)self initWithAccessPoint:a3];
  v6 = v5;
  if (v5)
  {
    [(RAPEntryPoint *)v5 _setType:a4];
  }

  return v6;
}

- (RAPEntryPoint)initWithAccessPoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPEntryPoint;
  v6 = [(RAPEntryPoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessPoint, a3);
  }

  return v7;
}

+ (id)entryPointStyleAttributes
{
  v2 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{5, 3, 6, 197, 10, 5, 0}];

  return v2;
}

@end
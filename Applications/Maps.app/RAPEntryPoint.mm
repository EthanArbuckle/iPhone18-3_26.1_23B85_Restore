@interface RAPEntryPoint
+ (id)entryPointStyleAttributes;
- (BOOL)isDestinationEntryPoint;
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (RAPEntryPoint)initWithAccessPoint:(id)point;
- (RAPEntryPoint)initWithAccessPoint:(id)point type:(int64_t)type;
- (id)markerText;
- (int64_t)entryPointType;
- (void)_setType:(int64_t)type;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation RAPEntryPoint

- (BOOL)isDestinationEntryPoint
{
  accessPoint = [(RAPEntryPoint *)self accessPoint];
  hasWalkingDirection = [accessPoint hasWalkingDirection];

  if (hasWalkingDirection)
  {
    accessPoint2 = [(RAPEntryPoint *)self accessPoint];
    v6 = [accessPoint2 walkingDirection] == 4;
  }

  else
  {
    v6 = 0;
  }

  accessPoint3 = [(RAPEntryPoint *)self accessPoint];
  hasDrivingDirection = [accessPoint3 hasDrivingDirection];

  if (hasDrivingDirection)
  {
    accessPoint4 = [(RAPEntryPoint *)self accessPoint];
    v10 = [accessPoint4 drivingDirection] == 4;
  }

  else
  {
    v10 = 0;
  }

  accessPoint5 = [(RAPEntryPoint *)self accessPoint];
  hasTransitDirection = [accessPoint5 hasTransitDirection];

  if (hasTransitDirection)
  {
    accessPoint6 = [(RAPEntryPoint *)self accessPoint];
    v14 = [accessPoint6 transitDirection] == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v6 || v10 || v14;
  return v15 & 1;
}

- (void)_setType:(int64_t)type
{
  if (type <= 2)
  {
    if (type == 1)
    {
      accessPoint = [(RAPEntryPoint *)self accessPoint];
      [accessPoint setDrivingDirection:0];

      accessPoint2 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint2 setWalkingDirection:3];

      accessPoint3 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint3 setTransitDirection:0];

      accessPoint4 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint4 setHasDrivingDirection:0];
    }

    else
    {
      if (type != 2)
      {
        return;
      }

      accessPoint5 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint5 setDrivingDirection:3];

      accessPoint6 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint6 setWalkingDirection:0];

      accessPoint7 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint7 setTransitDirection:0];

      accessPoint4 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint4 setHasWalkingDirection:0];
    }

    goto LABEL_12;
  }

  switch(type)
  {
    case 5:
      accessPoint8 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint8 setDrivingDirection:3];

      accessPoint9 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint9 setWalkingDirection:3];

      accessPoint10 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint10 setTransitDirection:3];
      break;
    case 4:
      accessPoint11 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint11 setDrivingDirection:0];

      accessPoint12 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint12 setWalkingDirection:0];

      accessPoint13 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint13 setTransitDirection:3];

      accessPoint14 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint14 setHasWalkingDirection:0];

      accessPoint10 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint10 setHasDrivingDirection:0];
      break;
    case 3:
      accessPoint15 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint15 setDrivingDirection:3];

      accessPoint16 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint16 setWalkingDirection:3];

      accessPoint4 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint4 setTransitDirection:0];
LABEL_12:

      accessPoint10 = [(RAPEntryPoint *)self accessPoint];
      [accessPoint10 setHasTransitDirection:0];
      break;
    default:
      return;
  }
}

- (int64_t)entryPointType
{
  accessPoint = [(RAPEntryPoint *)self accessPoint];
  if ([accessPoint hasWalkingDirection])
  {
    accessPoint2 = [(RAPEntryPoint *)self accessPoint];
    hasDrivingDirection = [accessPoint2 hasDrivingDirection];

    if (hasDrivingDirection)
    {
      return 3;
    }
  }

  else
  {
  }

  accessPoint3 = [(RAPEntryPoint *)self accessPoint];
  LODWORD(v8) = [accessPoint3 hasWalkingDirection];

  v9 = v8;
  accessPoint4 = [(RAPEntryPoint *)self accessPoint];
  hasDrivingDirection2 = [accessPoint4 hasDrivingDirection];

  v12 = 1;
  if (v8)
  {
    v12 = 2;
  }

  if (hasDrivingDirection2)
  {
    v8 = v12;
  }

  else
  {
    v8 = v8;
  }

  if (hasDrivingDirection2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v9;
  }

  accessPoint5 = [(RAPEntryPoint *)self accessPoint];
  hasTransitDirection = [accessPoint5 hasTransitDirection];

  v16 = 4;
  if (!hasTransitDirection)
  {
    v16 = v13;
  }

  if (v8 + hasTransitDirection <= 1)
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

  entryPointType = [(RAPEntryPoint *)self entryPointType];
  v10 = v6;
  if (entryPointType != 1)
  {
    if (entryPointType == 3)
    {
      v10 = v8;
    }

    else
    {
      v11 = 0;
      v10 = v4;
      if (entryPointType != 2)
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
  accessPoint = [(RAPEntryPoint *)self accessPoint];
  location = [accessPoint location];
  [location lat];
  v6 = v5;
  accessPoint2 = [(RAPEntryPoint *)self accessPoint];
  location2 = [accessPoint2 location];
  [location2 lng];
  v10 = CLLocationCoordinate2DMake(v6, v9);

  latitude = v10.latitude;
  longitude = v10.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = objc_alloc_init(GEOLatLng);
  [v7 setLat:latitude];
  [v7 setLng:longitude];
  accessPoint = [(RAPEntryPoint *)self accessPoint];
  [accessPoint setLocation:v7];
}

- (NSString)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Entrance [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPEntryPoint)initWithAccessPoint:(id)point type:(int64_t)type
{
  v5 = [(RAPEntryPoint *)self initWithAccessPoint:point];
  v6 = v5;
  if (v5)
  {
    [(RAPEntryPoint *)v5 _setType:type];
  }

  return v6;
}

- (RAPEntryPoint)initWithAccessPoint:(id)point
{
  pointCopy = point;
  v9.receiver = self;
  v9.super_class = RAPEntryPoint;
  v6 = [(RAPEntryPoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessPoint, point);
  }

  return v7;
}

+ (id)entryPointStyleAttributes
{
  v2 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{5, 3, 6, 197, 10, 5, 0}];

  return v2;
}

@end
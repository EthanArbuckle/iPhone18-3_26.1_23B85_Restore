@interface MKCircle
+ (MKCircle)circleWithCenterCoordinate:(CLLocationCoordinate2D)coord radius:(CLLocationDistance)radius;
+ (MKCircle)circleWithMapRect:(MKMapRect)mapRect;
- (CLLocationCoordinate2D)coordinate;
- (MKCircle)initWithCoder:(id)coder;
- (MKMapRect)boundingMapRect;
- (id)_initWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKCircle

- (MKMapRect)boundingMapRect
{
  x = self->_boundingMapRect.origin.x;
  y = self->_boundingMapRect.origin.y;
  width = self->_boundingMapRect.size.width;
  height = self->_boundingMapRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = MKCircle;
  coderCopy = coder;
  [(MKShape *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_coordinate.latitude, v8.receiver, v8.super_class}];
  [coderCopy encodeObject:v5 forKey:@"MKCircleLatitude"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_coordinate.longitude];
  [coderCopy encodeObject:v6 forKey:@"MKCircleLongitude"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_radius];
  [coderCopy encodeObject:v7 forKey:@"MKCircleRadius"];
}

- (MKCircle)initWithCoder:(id)coder
{
  v27[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MKCircle;
  v5 = [(MKShape *)&v25 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKCircleLatitude"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKCircleLongitude"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKCircleRadius"];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    [v6 doubleValue];
    v18 = v17;
    [v7 doubleValue];
    v5->_coordinate = CLLocationCoordinate2DMake(v18, v19);
    [v9 doubleValue];
    v5->_radius = v20;
    v5->_boundingMapRect.origin.x = MKMapRectMakeWithRadialDistance(v5->_coordinate.latitude, v5->_coordinate.longitude, v20);
    v5->_boundingMapRect.origin.y = v21;
    v5->_boundingMapRect.size.width = v22;
    v5->_boundingMapRect.size.height = v23;

LABEL_11:
    v16 = v5;
    goto LABEL_12;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A250];
  v26 = *MEMORY[0x1E696A278];
  v27[0] = @"Expected circle data missing.";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v15 = [v12 errorWithDomain:v13 code:4864 userInfo:v14];
  [coderCopy failWithError:v15];

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)_initWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v13.receiver = self;
  v13.super_class = MKCircle;
  v7 = [(MKCircle *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_coordinate.latitude = latitude;
    v7->_coordinate.longitude = longitude;
    v7->_radius = radius;
    v7->_boundingMapRect.origin.x = MKMapRectMakeWithRadialDistance(latitude, longitude, radius);
    v8->_boundingMapRect.origin.y = v9;
    v8->_boundingMapRect.size.width = v10;
    v8->_boundingMapRect.size.height = v11;
  }

  return v8;
}

+ (MKCircle)circleWithMapRect:(MKMapRect)mapRect
{
  v3 = mapRect.origin.x + mapRect.size.width * 0.5;
  v4 = mapRect.origin.y + mapRect.size.height * 0.5;
  v5 = mapRect.size.width <= mapRect.size.height;
  v6 = mapRect.origin.y + mapRect.size.height;
  v7 = mapRect.origin.x + mapRect.size.width;
  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    x = v3;
  }

  else
  {
    x = mapRect.origin.x;
  }

  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (v5)
  {
    y = mapRect.origin.y;
  }

  else
  {
    y = v4;
  }

  v17.x = v3;
  v17.y = v4;
  v12 = MKCoordinateForMapPoint(v17);
  v18.x = x;
  v18.y = y;
  v19.x = v8;
  v19.y = v10;
  v13 = MKMetersBetweenMapPoints(v18, v19) * 0.5;
  v14 = [objc_alloc(objc_opt_class()) _initWithCenterCoordinate:v12.latitude radius:{v12.longitude, v13}];

  return v14;
}

+ (MKCircle)circleWithCenterCoordinate:(CLLocationCoordinate2D)coord radius:(CLLocationDistance)radius
{
  v4 = [objc_alloc(objc_opt_class()) _initWithCenterCoordinate:coord.latitude radius:{coord.longitude, radius}];

  return v4;
}

@end
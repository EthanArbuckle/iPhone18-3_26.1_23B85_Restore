@interface ARLocationEstimationData
- (ARLocationEstimationData)initWithCoder:(id)coder;
- (ARLocationEstimationData)initWithCoordinates:(CLLocationCoordinate2D)coordinates altitude:(double)altitude heading:(double)heading;
- (ARLocationEstimationData)initWithLocation:(id)location heading:(double)heading;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARLocationEstimationData

- (ARLocationEstimationData)initWithCoordinates:(CLLocationCoordinate2D)coordinates altitude:(double)altitude heading:(double)heading
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  v10 = objc_alloc(MEMORY[0x1E6985C40]);
  date = [MEMORY[0x1E695DF00] date];
  v12 = [v10 initWithCoordinate:date altitude:latitude horizontalAccuracy:longitude verticalAccuracy:altitude timestamp:{0.0, 0.0}];

  v13 = [(ARLocationEstimationData *)self initWithLocation:v12 heading:heading];
  return v13;
}

- (ARLocationEstimationData)initWithLocation:(id)location heading:(double)heading
{
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = ARLocationEstimationData;
  v8 = [(ARLocationEstimationData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, location);
    v9->_heading = heading + ceil(heading / -360.0) * 360.0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ARLocationEstimationData *)self heading];
  [coderCopy encodeDouble:@"ARLocationEstimateData_headingKey" forKey:?];
  location = [(ARLocationEstimationData *)self location];
  [coderCopy encodeObject:location forKey:@"ARLocationEstimateData_locationKey"];
}

- (ARLocationEstimationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"ARLocationEstimateData_headingKey"];
  v6 = v5;
  v7 = [coderCopy decodeObjectForKey:@"ARLocationEstimateData_locationKey"];

  v8 = [[ARLocationEstimationData alloc] initWithLocation:v7 heading:v6];
  return v8;
}

@end
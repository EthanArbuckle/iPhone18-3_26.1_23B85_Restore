@interface ARLocationEstimationData
- (ARLocationEstimationData)initWithCoder:(id)a3;
- (ARLocationEstimationData)initWithCoordinates:(CLLocationCoordinate2D)a3 altitude:(double)a4 heading:(double)a5;
- (ARLocationEstimationData)initWithLocation:(id)a3 heading:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARLocationEstimationData

- (ARLocationEstimationData)initWithCoordinates:(CLLocationCoordinate2D)a3 altitude:(double)a4 heading:(double)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10 = objc_alloc(MEMORY[0x1E6985C40]);
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 initWithCoordinate:v11 altitude:latitude horizontalAccuracy:longitude verticalAccuracy:a4 timestamp:{0.0, 0.0}];

  v13 = [(ARLocationEstimationData *)self initWithLocation:v12 heading:a5];
  return v13;
}

- (ARLocationEstimationData)initWithLocation:(id)a3 heading:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ARLocationEstimationData;
  v8 = [(ARLocationEstimationData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, a3);
    v9->_heading = a4 + ceil(a4 / -360.0) * 360.0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(ARLocationEstimationData *)self heading];
  [v4 encodeDouble:@"ARLocationEstimateData_headingKey" forKey:?];
  v5 = [(ARLocationEstimationData *)self location];
  [v4 encodeObject:v5 forKey:@"ARLocationEstimateData_locationKey"];
}

- (ARLocationEstimationData)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"ARLocationEstimateData_headingKey"];
  v6 = v5;
  v7 = [v4 decodeObjectForKey:@"ARLocationEstimateData_locationKey"];

  v8 = [[ARLocationEstimationData alloc] initWithLocation:v7 heading:v6];
  return v8;
}

@end
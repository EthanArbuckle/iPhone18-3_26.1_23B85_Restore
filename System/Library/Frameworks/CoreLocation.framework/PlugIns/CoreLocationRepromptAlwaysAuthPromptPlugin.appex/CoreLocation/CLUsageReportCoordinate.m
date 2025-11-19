@interface CLUsageReportCoordinate
- (CLUsageReportCoordinate)initWithCoder:(id)a3;
- (CLUsageReportCoordinate)initWithLatitude:(double)a3 longitude:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLUsageReportCoordinate

- (CLUsageReportCoordinate)initWithLatitude:(double)a3 longitude:(double)a4
{
  v9.receiver = self;
  v9.super_class = CLUsageReportCoordinate;
  v6 = [(CLUsageReportCoordinate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CLUsageReportCoordinate *)v6 setLatitude:a3];
    [(CLUsageReportCoordinate *)v7 setLongitude:a4];
  }

  return v7;
}

- (CLUsageReportCoordinate)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"CL2dLocationLatCodingKey"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"CL2dLocationLonCodingKey"];
  v8 = [(CLUsageReportCoordinate *)self initWithLatitude:v6 longitude:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(CLUsageReportCoordinate *)self latitude];
  [v4 encodeDouble:@"CL2dLocationLatCodingKey" forKey:?];
  [(CLUsageReportCoordinate *)self longitude];
  [v4 encodeDouble:@"CL2dLocationLonCodingKey" forKey:?];
}

@end
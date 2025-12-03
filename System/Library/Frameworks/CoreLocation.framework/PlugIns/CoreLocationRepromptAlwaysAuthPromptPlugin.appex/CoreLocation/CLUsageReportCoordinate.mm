@interface CLUsageReportCoordinate
- (CLUsageReportCoordinate)initWithCoder:(id)coder;
- (CLUsageReportCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLUsageReportCoordinate

- (CLUsageReportCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v9.receiver = self;
  v9.super_class = CLUsageReportCoordinate;
  v6 = [(CLUsageReportCoordinate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CLUsageReportCoordinate *)v6 setLatitude:latitude];
    [(CLUsageReportCoordinate *)v7 setLongitude:longitude];
  }

  return v7;
}

- (CLUsageReportCoordinate)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"CL2dLocationLatCodingKey"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"CL2dLocationLonCodingKey"];
  v8 = [(CLUsageReportCoordinate *)self initWithLatitude:v6 longitude:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CLUsageReportCoordinate *)self latitude];
  [coderCopy encodeDouble:@"CL2dLocationLatCodingKey" forKey:?];
  [(CLUsageReportCoordinate *)self longitude];
  [coderCopy encodeDouble:@"CL2dLocationLonCodingKey" forKey:?];
}

@end
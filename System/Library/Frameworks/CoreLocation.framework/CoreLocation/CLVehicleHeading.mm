@interface CLVehicleHeading
- (CLVehicleHeading)initWithClientVehicleHeading:(id)heading;
- (CLVehicleHeading)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVehicleHeading

- (CLVehicleHeading)initWithClientVehicleHeading:(id)heading
{
  var1 = heading.var1;
  var0 = heading.var0;
  v7.receiver = self;
  v7.super_class = CLVehicleHeading;
  v5 = [(CLVehicleHeading *)&v7 init];
  if (v5)
  {
    v5->_internal = [[CLVehicleHeadingInternal alloc] initWithClientVehicleHeading:var0, var1];
  }

  return v5;
}

- (CLVehicleHeading)initWithCoder:(id)coder
{
  v10 = 0.0;
  v11 = 0.0;
  if ([coder allowsKeyedCoding])
  {
    [coder decodeDoubleForKey:@"kCLVehicleHeadingCodingKeyTrueHeading"];
    v6 = v5;
    [coder decodeDoubleForKey:{@"kCLVehicleHeadingCodingKeyTimestamp", *&v5}];
    v8 = v7;
    v11 = v7;
  }

  else
  {
    [coder decodeValueOfObjCType:"d" at:&v10];
    [coder decodeValueOfObjCType:"d" at:&v11];
    v6 = v10;
    v8 = v11;
  }

  return [(CLVehicleHeading *)self initWithClientVehicleHeading:v6, v8];
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeDouble:@"kCLVehicleHeadingCodingKeyTrueHeading" forKey:internal[1]];
    v5 = internal[2];

    [coder encodeDouble:@"kCLVehicleHeadingCodingKeyTimestamp" forKey:v5];
  }

  else
  {
    [coder encodeValueOfObjCType:"d" at:internal + 1];

    [coder encodeValueOfObjCType:"d" at:internal + 2];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLVehicleHeading;
  [(CLVehicleHeading *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [self->_internal copyWithZone:zone];
  return v5;
}

@end
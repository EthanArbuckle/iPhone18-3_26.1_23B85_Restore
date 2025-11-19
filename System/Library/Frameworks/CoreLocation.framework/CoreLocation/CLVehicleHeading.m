@interface CLVehicleHeading
- (CLVehicleHeading)initWithClientVehicleHeading:(id)a3;
- (CLVehicleHeading)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLVehicleHeading

- (CLVehicleHeading)initWithClientVehicleHeading:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7.receiver = self;
  v7.super_class = CLVehicleHeading;
  v5 = [(CLVehicleHeading *)&v7 init];
  if (v5)
  {
    v5->_internal = [[CLVehicleHeadingInternal alloc] initWithClientVehicleHeading:var0, var1];
  }

  return v5;
}

- (CLVehicleHeading)initWithCoder:(id)a3
{
  v10 = 0.0;
  v11 = 0.0;
  if ([a3 allowsKeyedCoding])
  {
    [a3 decodeDoubleForKey:@"kCLVehicleHeadingCodingKeyTrueHeading"];
    v6 = v5;
    [a3 decodeDoubleForKey:{@"kCLVehicleHeadingCodingKeyTimestamp", *&v5}];
    v8 = v7;
    v11 = v7;
  }

  else
  {
    [a3 decodeValueOfObjCType:"d" at:&v10];
    [a3 decodeValueOfObjCType:"d" at:&v11];
    v6 = v10;
    v8 = v11;
  }

  return [(CLVehicleHeading *)self initWithClientVehicleHeading:v6, v8];
}

- (void)encodeWithCoder:(id)a3
{
  internal = self->_internal;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeDouble:@"kCLVehicleHeadingCodingKeyTrueHeading" forKey:internal[1]];
    v5 = internal[2];

    [a3 encodeDouble:@"kCLVehicleHeadingCodingKeyTimestamp" forKey:v5];
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:internal + 1];

    [a3 encodeValueOfObjCType:"d" at:internal + 2];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLVehicleHeading;
  [(CLVehicleHeading *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [self->_internal copyWithZone:a3];
  return v5;
}

@end
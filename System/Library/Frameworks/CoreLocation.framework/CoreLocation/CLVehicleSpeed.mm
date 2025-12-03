@interface CLVehicleSpeed
- (CLVehicleSpeed)initWithClientVehicleSpeed:(id)speed;
- (CLVehicleSpeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVehicleSpeed

- (CLVehicleSpeed)initWithClientVehicleSpeed:(id)speed
{
  var3 = speed.var3;
  var2 = speed.var2;
  var1 = speed.var1;
  var0 = speed.var0;
  v9.receiver = self;
  v9.super_class = CLVehicleSpeed;
  v7 = [(CLVehicleSpeed *)&v9 init];
  if (v7)
  {
    v7->_internal = [[CLVehicleSpeedInternal alloc] initWithClientVehicleSpeed:var0, var1, var2, var3];
  }

  return v7;
}

- (CLVehicleSpeed)initWithCoder:(id)coder
{
  v12 = 0u;
  v13 = 0u;
  if ([coder allowsKeyedCoding])
  {
    [coder decodeDoubleForKey:@"kCLVehicleSpeedCodingKeySpeed"];
    v6 = v5;
    [coder decodeDoubleForKey:{@"kCLVehicleSpeedCodingKeyTimestamp", *&v5}];
    v8 = v7;
    *(&v12 + 1) = v7;
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    [coder decodeValueOfObjCType:"d" at:&v12];
    [coder decodeValueOfObjCType:"d" at:&v12 + 8];
    v8 = *(&v12 + 1);
    v6 = *&v12;
    v9 = *(&v13 + 1);
    v10 = *&v13;
  }

  return [(CLVehicleSpeed *)self initWithClientVehicleSpeed:v6, v8, v10, v9];
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeDouble:@"kCLVehicleSpeedCodingKeySpeed" forKey:internal[1]];
    v5 = internal[2];

    [coder encodeDouble:@"kCLVehicleSpeedCodingKeyTimestamp" forKey:v5];
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
  v3.super_class = CLVehicleSpeed;
  [(CLVehicleSpeed *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [self->_internal copyWithZone:zone];
  return v5;
}

- (id)shortDescription
{
  v2 = *(self->_internal + 1);
  v3 = v2 * 2.23693629;
  v4 = v2 < 0.0;
  v5 = -1.0;
  if (!v4)
  {
    v5 = v3;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fmph", *&v5];
}

@end
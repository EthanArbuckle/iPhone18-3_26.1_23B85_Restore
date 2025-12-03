@interface CLMinimumAltitudeCondition
- (BOOL)isEqual:(id)equal;
- (CLMinimumAltitudeCondition)initWithAltitude:(double)altitude;
- (CLMinimumAltitudeCondition)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMinimumAltitudeCondition

- (CLMinimumAltitudeCondition)initWithAltitude:(double)altitude
{
  v5.receiver = self;
  v5.super_class = CLMinimumAltitudeCondition;
  result = [(CLCondition *)&v5 initCondition];
  if (result)
  {
    result->_altitude = altitude;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  [(CLMinimumAltitudeCondition *)self altitude];
  return [v2 stringWithFormat:@"CLMinimumAltitudeCondition(altitude: %+.2fm)", v3];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v17 = v4;
  v18 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  [(CLMinimumAltitudeCondition *)self altitude:v10];
  v14 = round(v13 * 1000.0);
  [equal altitude];
  return vabdd_f64(v14, round(v15 * 1000.0)) <= 2.22044605e-16;
}

- (void)encodeWithCoder:(id)coder
{
  [(CLMinimumAltitudeCondition *)self altitude];

  [coder encodeDouble:@"kCLMinimumAltitudeConditionAltitude" forKey:?];
}

- (CLMinimumAltitudeCondition)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CLMinimumAltitudeCondition;
  v4 = [(CLCondition *)&v7 initWithCoder:?];
  [coder decodeDoubleForKey:@"kCLMinimumAltitudeConditionAltitude"];
  v4->_altitude = v5;
  return v4;
}

@end
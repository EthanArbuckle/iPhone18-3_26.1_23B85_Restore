@interface CLMinimumAltitudeCondition
- (BOOL)isEqual:(id)a3;
- (CLMinimumAltitudeCondition)initWithAltitude:(double)a3;
- (CLMinimumAltitudeCondition)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMinimumAltitudeCondition

- (CLMinimumAltitudeCondition)initWithAltitude:(double)a3
{
  v5.receiver = self;
  v5.super_class = CLMinimumAltitudeCondition;
  result = [(CLCondition *)&v5 initCondition];
  if (result)
  {
    result->_altitude = a3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  [(CLMinimumAltitudeCondition *)self altitude];
  return [v2 stringWithFormat:@"CLMinimumAltitudeCondition(altitude: %+.2fm)", v3];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
  [a3 altitude];
  return vabdd_f64(v14, round(v15 * 1000.0)) <= 2.22044605e-16;
}

- (void)encodeWithCoder:(id)a3
{
  [(CLMinimumAltitudeCondition *)self altitude];

  [a3 encodeDouble:@"kCLMinimumAltitudeConditionAltitude" forKey:?];
}

- (CLMinimumAltitudeCondition)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLMinimumAltitudeCondition;
  v4 = [(CLCondition *)&v7 initWithCoder:?];
  [a3 decodeDoubleForKey:@"kCLMinimumAltitudeConditionAltitude"];
  v4->_altitude = v5;
  return v4;
}

@end
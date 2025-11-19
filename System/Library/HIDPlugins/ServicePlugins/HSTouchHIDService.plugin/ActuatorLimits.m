@interface ActuatorLimits
- (ActuatorLimits)init;
- (NSDictionary)dictionary;
@end

@implementation ActuatorLimits

- (ActuatorLimits)init
{
  v3.receiver = self;
  v3.super_class = ActuatorLimits;
  result = [(ActuatorLimits *)&v3 init];
  if (result)
  {
    *&result->_amplitudeMin = xmmword_D5180;
  }

  return result;
}

- (NSDictionary)dictionary
{
  v9[0] = @"AmplitudeMin";
  [(ActuatorLimits *)self amplitudeMin];
  v3 = [NSNumber numberWithFloat:?];
  v10[0] = v3;
  v9[1] = @"AmplitudeMax";
  [(ActuatorLimits *)self amplitudeMax];
  v4 = [NSNumber numberWithFloat:?];
  v10[1] = v4;
  v9[2] = @"DurationMin";
  [(ActuatorLimits *)self durationMin];
  v5 = [NSNumber numberWithFloat:?];
  v10[2] = v5;
  v9[3] = @"DurationMax";
  [(ActuatorLimits *)self durationMax];
  v6 = [NSNumber numberWithFloat:?];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end
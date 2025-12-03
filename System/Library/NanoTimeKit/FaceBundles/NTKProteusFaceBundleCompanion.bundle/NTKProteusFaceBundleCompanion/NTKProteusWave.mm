@interface NTKProteusWave
+ (double)clockwiseDistance:(double)distance fromStartAngle:(double)angle;
+ (double)counterclockwiseDistance:(double)distance fromStartAngle:(double)angle;
+ (double)distance:(double)distance fromStartAngle:(double)angle;
+ (double)normalizeAngle:(double)result;
+ (id)waveWithSpeed:(double)speed easeInDuration:(double)duration easeOutDuration:(double)outDuration direction:(unint64_t)direction;
- (NTKProteusWave)initWithSpeed:(double)speed easeInDuration:(double)duration easeOutDuration:(double)outDuration direction:(unint64_t)direction;
- (double)_distance:(double)_distance fromStartAngle:(double)angle;
- (double)waveAtAngle:(double)angle atTime:(double)time startAngle:(double)startAngle endAngle:(double)endAngle startTime:(double)startTime endTime:(double)endTime;
@end

@implementation NTKProteusWave

+ (id)waveWithSpeed:(double)speed easeInDuration:(double)duration easeOutDuration:(double)outDuration direction:(unint64_t)direction
{
  v6 = [[NTKProteusWave alloc] initWithSpeed:direction easeInDuration:speed easeOutDuration:duration direction:outDuration];

  return v6;
}

- (NTKProteusWave)initWithSpeed:(double)speed easeInDuration:(double)duration easeOutDuration:(double)outDuration direction:(unint64_t)direction
{
  v11.receiver = self;
  v11.super_class = NTKProteusWave;
  result = [(NTKProteusWave *)&v11 init];
  if (result)
  {
    result->_propagationSpeed = speed;
    result->_easeInDuration = duration;
    result->_easeOutDuration = outDuration;
    result->_direction = direction;
  }

  return result;
}

- (double)waveAtAngle:(double)angle atTime:(double)time startAngle:(double)startAngle endAngle:(double)endAngle startTime:(double)startTime endTime:(double)endTime
{
  if (time < startTime || time > endTime)
  {
    return -0.0;
  }

  [(NTKProteusWave *)self _distance:angle fromStartAngle:startAngle];
  v15 = v14;
  [(NTKProteusWave *)self propagationSpeed];
  v17 = v15 / v16;
  [(NTKProteusWave *)self propagationSpeed];
  v19 = v18;
  [(NTKProteusWave *)self easeOutDuration];
  v21 = v20;
  v22 = time - v17;
  result = 0.0;
  if (v22 >= startTime)
  {
    v23 = v22 - startTime;
    [(NTKProteusWave *)self easeInDuration];
    if (v23 >= v24)
    {
      v27 = endTime - v21 + -3.14159265 / v19;
      result = 1.0;
      if (v22 >= v27)
      {
        v28 = v22 - v27;
        [(NTKProteusWave *)self easeOutDuration];
        v30 = v28 / v29;
        if (v30 > 1.0)
        {
          v30 = 1.0;
        }

        [NTKProteusWave easeInCurveWithFraction:v30];
        return 1.0 - v31;
      }
    }

    else
    {
      [(NTKProteusWave *)self easeInDuration];
      v26 = v23 / v25;

      [NTKProteusWave easeInCurveWithFraction:v26];
    }
  }

  return result;
}

- (double)_distance:(double)_distance fromStartAngle:(double)angle
{
  direction = [(NTKProteusWave *)self direction];
  switch(direction)
  {
    case 2uLL:

      [NTKProteusWave distance:_distance fromStartAngle:angle];
      break;
    case 1uLL:

      [NTKProteusWave counterclockwiseDistance:_distance fromStartAngle:angle];
      break;
    case 0uLL:

      [NTKProteusWave clockwiseDistance:_distance fromStartAngle:angle];
      break;
  }

  return result;
}

+ (double)clockwiseDistance:(double)distance fromStartAngle:(double)angle
{
  if (distance <= angle)
  {
    return angle - distance;
  }

  else
  {
    return angle - distance + 6.28318531;
  }
}

+ (double)counterclockwiseDistance:(double)distance fromStartAngle:(double)angle
{
  if (distance >= angle)
  {
    return distance - angle;
  }

  else
  {
    return distance - angle + 6.28318531;
  }
}

+ (double)distance:(double)distance fromStartAngle:(double)angle
{
  [NTKProteusWave clockwiseDistance:"clockwiseDistance:fromStartAngle:" fromStartAngle:?];
  v7 = v6;
  [NTKProteusWave counterclockwiseDistance:distance fromStartAngle:angle];
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

+ (double)normalizeAngle:(double)result
{
  if (result < 0.0)
  {
    return result + ceil(result / -6.28318531) * 6.28318531;
  }

  if (result > 6.28318531)
  {
    return result + floor(result / 6.28318531) * -6.28318531;
  }

  return result;
}

@end
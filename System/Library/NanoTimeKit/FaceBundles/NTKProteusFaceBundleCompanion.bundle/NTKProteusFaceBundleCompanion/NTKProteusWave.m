@interface NTKProteusWave
+ (double)clockwiseDistance:(double)a3 fromStartAngle:(double)a4;
+ (double)counterclockwiseDistance:(double)a3 fromStartAngle:(double)a4;
+ (double)distance:(double)a3 fromStartAngle:(double)a4;
+ (double)normalizeAngle:(double)result;
+ (id)waveWithSpeed:(double)a3 easeInDuration:(double)a4 easeOutDuration:(double)a5 direction:(unint64_t)a6;
- (NTKProteusWave)initWithSpeed:(double)a3 easeInDuration:(double)a4 easeOutDuration:(double)a5 direction:(unint64_t)a6;
- (double)_distance:(double)a3 fromStartAngle:(double)a4;
- (double)waveAtAngle:(double)a3 atTime:(double)a4 startAngle:(double)a5 endAngle:(double)a6 startTime:(double)a7 endTime:(double)a8;
@end

@implementation NTKProteusWave

+ (id)waveWithSpeed:(double)a3 easeInDuration:(double)a4 easeOutDuration:(double)a5 direction:(unint64_t)a6
{
  v6 = [[NTKProteusWave alloc] initWithSpeed:a6 easeInDuration:a3 easeOutDuration:a4 direction:a5];

  return v6;
}

- (NTKProteusWave)initWithSpeed:(double)a3 easeInDuration:(double)a4 easeOutDuration:(double)a5 direction:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = NTKProteusWave;
  result = [(NTKProteusWave *)&v11 init];
  if (result)
  {
    result->_propagationSpeed = a3;
    result->_easeInDuration = a4;
    result->_easeOutDuration = a5;
    result->_direction = a6;
  }

  return result;
}

- (double)waveAtAngle:(double)a3 atTime:(double)a4 startAngle:(double)a5 endAngle:(double)a6 startTime:(double)a7 endTime:(double)a8
{
  if (a4 < a7 || a4 > a8)
  {
    return -0.0;
  }

  [(NTKProteusWave *)self _distance:a3 fromStartAngle:a5];
  v15 = v14;
  [(NTKProteusWave *)self propagationSpeed];
  v17 = v15 / v16;
  [(NTKProteusWave *)self propagationSpeed];
  v19 = v18;
  [(NTKProteusWave *)self easeOutDuration];
  v21 = v20;
  v22 = a4 - v17;
  result = 0.0;
  if (v22 >= a7)
  {
    v23 = v22 - a7;
    [(NTKProteusWave *)self easeInDuration];
    if (v23 >= v24)
    {
      v27 = a8 - v21 + -3.14159265 / v19;
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

- (double)_distance:(double)a3 fromStartAngle:(double)a4
{
  v6 = [(NTKProteusWave *)self direction];
  switch(v6)
  {
    case 2uLL:

      [NTKProteusWave distance:a3 fromStartAngle:a4];
      break;
    case 1uLL:

      [NTKProteusWave counterclockwiseDistance:a3 fromStartAngle:a4];
      break;
    case 0uLL:

      [NTKProteusWave clockwiseDistance:a3 fromStartAngle:a4];
      break;
  }

  return result;
}

+ (double)clockwiseDistance:(double)a3 fromStartAngle:(double)a4
{
  if (a3 <= a4)
  {
    return a4 - a3;
  }

  else
  {
    return a4 - a3 + 6.28318531;
  }
}

+ (double)counterclockwiseDistance:(double)a3 fromStartAngle:(double)a4
{
  if (a3 >= a4)
  {
    return a3 - a4;
  }

  else
  {
    return a3 - a4 + 6.28318531;
  }
}

+ (double)distance:(double)a3 fromStartAngle:(double)a4
{
  [NTKProteusWave clockwiseDistance:"clockwiseDistance:fromStartAngle:" fromStartAngle:?];
  v7 = v6;
  [NTKProteusWave counterclockwiseDistance:a3 fromStartAngle:a4];
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
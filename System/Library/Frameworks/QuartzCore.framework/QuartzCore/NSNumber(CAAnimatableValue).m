@interface NSNumber(CAAnimatableValue)
- (double)CA_distanceToValue:()CAAnimatableValue;
- (uint64_t)CA_addValue:()CAAnimatableValue multipliedBy:;
- (uint64_t)CA_interpolateValue:()CAAnimatableValue byFraction:;
- (uint64_t)CA_interpolateValues:()CAAnimatableValue ::interpolator:;
- (uint64_t)CA_roundToIntegerFromValue:()CAAnimatableValue;
@end

@implementation NSNumber(CAAnimatableValue)

- (double)CA_distanceToValue:()CAAnimatableValue
{
  [a1 doubleValue];
  v5 = v4;
  [a3 doubleValue];
  return vabdd_f64(v5, v6);
}

- (uint64_t)CA_roundToIntegerFromValue:()CAAnimatableValue
{
  [a1 doubleValue];
  v5 = v4;
  [a3 doubleValue];
  v7 = round(v5 - v6) + v6;
  v8 = MEMORY[0x1E696AD98];

  return [v8 numberWithDouble:v7];
}

- (uint64_t)CA_interpolateValues:()CAAnimatableValue ::interpolator:
{
  [a1 doubleValue];
  v22 = v10;
  [a4 doubleValue];
  v12.f64[0] = v11;
  v20 = v12;
  if (a3)
  {
    [a3 doubleValue];
    v12.f64[0] = v20.f64[0];
    v13.f64[0] = v22;
    v15 = v14;
    if (a5)
    {
LABEL_3:
      [a5 doubleValue];
      v12.f64[0] = v21;
      v13.f64[0] = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v13.f64[0] = v22;
    v15 = -(v11 + v22 * -2.0);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v16 = -(v13.f64[0] + v12.f64[0] * -2.0);
LABEL_6:
  v17 = MEMORY[0x1E696AD98];
  v13.f64[1] = a6[5].f64[0] * (v13.f64[0] - v15) + a6[5].f64[1] * (v12.f64[0] - v13.f64[0]);
  v12.f64[1] = a6[6].f64[0] * (v12.f64[0] - v13.f64[0]) + a6[6].f64[1] * (v16 - v12.f64[0]);
  v18 = vaddvq_f64(vmlaq_f64(vmulq_f64(a6[2], v12), v13, a6[1]));

  return [v17 numberWithDouble:v18];
}

- (uint64_t)CA_interpolateValue:()CAAnimatableValue byFraction:
{
  [a1 doubleValue];
  v7 = v6;
  [a4 doubleValue];
  v9 = MEMORY[0x1E696AD98];
  if (v7 == v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 + (v8 - v7) * a2;
  }

  return [v9 numberWithDouble:v10];
}

- (uint64_t)CA_addValue:()CAAnimatableValue multipliedBy:
{
  [a1 doubleValue];
  v7 = v6;
  [a3 doubleValue];
  v8 = MEMORY[0x1E696AD98];
  v10 = v7 + v9 * a4;

  return [v8 numberWithDouble:v10];
}

@end
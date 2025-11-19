@interface NSUnit(HKUnit)
+ (double)hk_conversionCoefficient:()HKUnit;
+ (double)hk_conversionConstant:()HKUnit;
+ (id)hk_prefixForCoefficient:()HKUnit;
+ (unint64_t)hk_isSIUnit:()HKUnit;
- (id)hk_convertQuantityWithValue:()HKUnit constant:coefficient:;
- (id)hk_equivalentUnit;
- (id)hk_quantityWithConvertibleValue:()HKUnit;
@end

@implementation NSUnit(HKUnit)

- (id)hk_equivalentUnit
{
  v1 = hk_unitSpaceMappingForNSUnit(a1);

  return hk_HKUnitForMapping(v1);
}

- (id)hk_quantityWithConvertibleValue:()HKUnit
{
  v4 = [a1 hk_equivalentUnit];
  if (v4)
  {
    v5 = [HKQuantity quantityWithUnit:v4 doubleValue:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = a1;
      v7 = [v6 converter];
      objc_opt_class();
      v8 = 0.0;
      v9 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        v10 = v7;
        [v10 constant];
        v8 = v11;
        [v10 coefficient];
        v9 = v12;
      }

      v5 = [v6 hk_convertQuantityWithValue:a2 constant:v8 coefficient:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (double)hk_conversionCoefficient:()HKUnit
{
  v3 = hk_conversionCoefficient__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NSUnit(HKUnit) hk_conversionCoefficient:];
  }

  v5 = [hk_conversionCoefficient__coefficients objectForKey:v4];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

+ (double)hk_conversionConstant:()HKUnit
{
  v3 = hk_conversionConstant__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NSUnit(HKUnit) hk_conversionConstant:];
  }

  v5 = [hk_conversionConstant__constants objectForKey:v4];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

+ (unint64_t)hk_isSIUnit:()HKUnit
{
  v3 = a3;
  if ([v3 length] == 1)
  {
    v4 = [v3 characterAtIndex:0];

    v5 = 0x20820000207uLL >> (v4 - 74);
    if ((v4 - 74) >= 0x2A)
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  else
  {
    v7 = [v3 isEqualToString:@"Pa"];

    return v7;
  }
}

+ (id)hk_prefixForCoefficient:()HKUnit
{
  if (hk_prefixForCoefficient__onceToken != -1)
  {
    +[NSUnit(HKUnit) hk_prefixForCoefficient:];
  }

  v2 = hk_prefixForCoefficient__prefixes;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

- (id)hk_convertQuantityWithValue:()HKUnit constant:coefficient:
{
  v7 = [a1 hk_baseUnit];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unitString];
    v10 = [MEMORY[0x1E696AFD0] hk_isSIUnit:v9];
    v11 = fabs(a3) >= 2.22044605e-16 || v10 == 0;
    if (v11 || ([MEMORY[0x1E696AFD0] hk_prefixForCoefficient:a4], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [HKQuantity quantityWithUnit:v8 doubleValue:a3 + a2 * a4];
    }

    else
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v12, v9];

      v15 = [HKUnit unitFromString:v14];
      v16 = [HKQuantity quantityWithUnit:v15 doubleValue:a2];

      v9 = v14;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
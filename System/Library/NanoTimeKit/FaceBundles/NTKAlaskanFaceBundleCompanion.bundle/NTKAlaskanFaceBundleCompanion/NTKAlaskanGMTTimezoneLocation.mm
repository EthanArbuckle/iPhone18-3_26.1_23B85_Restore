@interface NTKAlaskanGMTTimezoneLocation
- (BOOL)isEqual:(id)a3;
@end

@implementation NTKAlaskanGMTTimezoneLocation

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  v9 = [(NTKAlaskanGMTTimezoneLocation *)self locationName];
  v10 = [v8 locationName];
  if (v9 != v10)
  {
    v3 = [(NTKAlaskanGMTTimezoneLocation *)self locationName];
    v4 = [v8 locationName];
    if (![v3 isEqualToString:v4])
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  [(NTKAlaskanGMTTimezoneLocation *)self hourOffset];
  v13 = v12;
  [v8 hourOffset];
  if (v13 != v14)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v15 = [(NTKAlaskanGMTTimezoneLocation *)self timezone];
  v16 = [v8 timezone];
  if (v15 == v16 || (-[NTKAlaskanGMTTimezoneLocation timezone](self, "timezone"), v5 = objc_claimAutoreleasedReturnValue(), [v8 timezone], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "isEqualToString:", v6)))
  {
    [(NTKAlaskanGMTTimezoneLocation *)self sunriseHourOfDay];
    [v8 sunriseHourOfDay];
    if (CLKFloatEqualsFloat())
    {
      [(NTKAlaskanGMTTimezoneLocation *)self sunsetHourOfDay];
      [v8 sunsetHourOfDay];
      v11 = CLKFloatEqualsFloat();
    }

    else
    {
      v11 = 0;
    }

    if (v15 == v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
LABEL_15:
  if (v9 != v10)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v11;
}

@end
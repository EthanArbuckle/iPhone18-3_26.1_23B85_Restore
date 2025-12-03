@interface NTKAlaskanGMTTimezoneLocation
- (BOOL)isEqual:(id)equal;
@end

@implementation NTKAlaskanGMTTimezoneLocation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  locationName = [(NTKAlaskanGMTTimezoneLocation *)self locationName];
  locationName2 = [equalCopy locationName];
  if (locationName != locationName2)
  {
    locationName3 = [(NTKAlaskanGMTTimezoneLocation *)self locationName];
    locationName4 = [equalCopy locationName];
    if (![locationName3 isEqualToString:locationName4])
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  [(NTKAlaskanGMTTimezoneLocation *)self hourOffset];
  v13 = v12;
  [equalCopy hourOffset];
  if (v13 != v14)
  {
    v11 = 0;
    goto LABEL_15;
  }

  timezone = [(NTKAlaskanGMTTimezoneLocation *)self timezone];
  timezone2 = [equalCopy timezone];
  if (timezone == timezone2 || (-[NTKAlaskanGMTTimezoneLocation timezone](self, "timezone"), v5 = objc_claimAutoreleasedReturnValue(), [equalCopy timezone], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "isEqualToString:", v6)))
  {
    [(NTKAlaskanGMTTimezoneLocation *)self sunriseHourOfDay];
    [equalCopy sunriseHourOfDay];
    if (CLKFloatEqualsFloat())
    {
      [(NTKAlaskanGMTTimezoneLocation *)self sunsetHourOfDay];
      [equalCopy sunsetHourOfDay];
      v11 = CLKFloatEqualsFloat();
    }

    else
    {
      v11 = 0;
    }

    if (timezone == timezone2)
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
  if (locationName != locationName2)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v11;
}

@end
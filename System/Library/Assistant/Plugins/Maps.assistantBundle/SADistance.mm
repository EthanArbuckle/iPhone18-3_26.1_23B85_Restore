@interface SADistance
- (BOOL)isImperialUnit;
- (BOOL)isWithinMaxDistanceToShow;
- (double)distanceInMeters;
- (double)distanceInMiles;
- (id)_unitLength;
- (id)localizedDistanceStringForCity:(BOOL)city forceUnit:(BOOL)unit;
@end

@implementation SADistance

- (id)localizedDistanceStringForCity:(BOOL)city forceUnit:(BOOL)unit
{
  unitCopy = unit;
  value = [(SADistance *)self value];
  [value doubleValue];
  v9 = v8;

  if (v9 > 0.0 && (city || [(SADistance *)self isWithinMaxDistanceToShow]))
  {
    isMetricUnit = [(SADistance *)self isMetricUnit];
    if (unitCopy)
    {
      _unitLength = [(SADistance *)self _unitLength];
      if (isMetricUnit)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }

      v13 = [NSMeasurementFormatter _ma_distanceStringWithValue:_unitLength unit:v12 style:v9];
    }

    else
    {
      [(SADistance *)self distanceInMeters];
      v16 = v15;
      _unitLength = +[NSLocale _ma_locale];
      if (isMetricUnit)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v13 = [NSString _navigation_localizedStringForDistance:2 detail:isMetricUnit unitFormat:_unitLength locale:v17 useMetric:1 useYards:v16];
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isWithinMaxDistanceToShow
{
  if ([(SADistance *)self isImperialUnit])
  {
    [(SADistance *)self distanceInMiles];
    v4 = 100.0;
  }

  else
  {
    [(SADistance *)self distanceInMeters];
    v4 = 100000.0;
  }

  return v3 < v4;
}

- (double)distanceInMiles
{
  value = [(SADistance *)self value];
  [value doubleValue];
  v5 = v4;

  unit = [(SADistance *)self unit];
  v7 = [unit isEqualToString:SADistanceUnitFeetValue];

  if (v7)
  {
    return v5 / 5280.0;
  }

  unit2 = [(SADistance *)self unit];
  v10 = [unit2 isEqualToString:SADistanceUnitMilesValue];

  result = v5;
  if ((v10 & 1) == 0)
  {
    unit3 = [(SADistance *)self unit];
    v12 = [unit3 isEqualToString:SADistanceUnitMetersValue];

    if (v12)
    {
      return v5 * 0.000621371192;
    }

    unit4 = [(SADistance *)self unit];
    v14 = [unit4 isEqualToString:SADistanceUnitKilometersValue];

    if (v14)
    {
      v15 = v5 * 1000.0;
    }

    else
    {
      unit5 = [(SADistance *)self unit];
      v17 = [unit5 isEqualToString:SADistanceUnitCentimetersValue];

      result = 0.0;
      if (!v17)
      {
        return result;
      }

      v15 = v5 / 100.0;
    }

    return v15 * 0.000621371192;
  }

  return result;
}

- (double)distanceInMeters
{
  value = [(SADistance *)self value];
  [value doubleValue];
  v5 = v4;

  unit = [(SADistance *)self unit];
  v7 = [unit isEqualToString:SADistanceUnitFeetValue];

  if (v7)
  {
    v8 = 0.3048;
    return v5 * v8;
  }

  unit2 = [(SADistance *)self unit];
  v10 = [unit2 isEqualToString:SADistanceUnitMilesValue];

  if (v10)
  {
    v8 = 1609.344;
    return v5 * v8;
  }

  unit3 = [(SADistance *)self unit];
  v13 = [unit3 isEqualToString:SADistanceUnitMetersValue];

  result = v5;
  if ((v13 & 1) == 0)
  {
    unit4 = [(SADistance *)self unit];
    v15 = [unit4 isEqualToString:SADistanceUnitKilometersValue];

    if (v15)
    {
      v8 = 1000.0;
      return v5 * v8;
    }

    unit5 = [(SADistance *)self unit];
    v17 = [unit5 isEqualToString:SADistanceUnitCentimetersValue];

    result = 0.0;
    if (v17)
    {
      return v5 / 100.0;
    }
  }

  return result;
}

- (BOOL)isImperialUnit
{
  unit = [(SADistance *)self unit];
  if ([unit isEqualToString:SADistanceUnitFeetValue])
  {
    v4 = 1;
  }

  else
  {
    unit2 = [(SADistance *)self unit];
    v4 = [unit2 isEqualToString:SADistanceUnitMilesValue];
  }

  return v4;
}

- (id)_unitLength
{
  unit = [(SADistance *)self unit];
  v4 = [unit isEqualToString:SADistanceUnitFeetValue];

  if (v4)
  {
    v5 = +[NSUnitLength feet];
  }

  else
  {
    unit2 = [(SADistance *)self unit];
    v7 = [unit2 isEqualToString:SADistanceUnitMilesValue];

    if (v7)
    {
      v5 = +[NSUnitLength miles];
    }

    else
    {
      unit3 = [(SADistance *)self unit];
      v9 = [unit3 isEqualToString:SADistanceUnitMetersValue];

      if (v9)
      {
        v5 = +[NSUnitLength meters];
      }

      else
      {
        unit4 = [(SADistance *)self unit];
        v11 = [unit4 isEqualToString:SADistanceUnitKilometersValue];

        if (v11)
        {
          v5 = +[NSUnitLength kilometers];
        }

        else
        {
          unit5 = [(SADistance *)self unit];
          v13 = [unit5 isEqualToString:SADistanceUnitCentimetersValue];

          if (v13)
          {
            v5 = +[NSUnitLength centimeters];
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }
  }

  return v5;
}

@end
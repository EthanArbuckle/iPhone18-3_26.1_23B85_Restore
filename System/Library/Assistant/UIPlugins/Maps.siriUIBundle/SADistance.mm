@interface SADistance
- (BOOL)isImperialUnit;
- (BOOL)isWithinMaxDistanceToShow;
- (double)distanceInMeters;
- (double)distanceInMiles;
- (id)_unitLength;
- (id)localizedDistanceStringForCity:(BOOL)a3 forceUnit:(BOOL)a4;
@end

@implementation SADistance

- (id)localizedDistanceStringForCity:(BOOL)a3 forceUnit:(BOOL)a4
{
  v4 = a4;
  v7 = [(SADistance *)self value];
  [v7 doubleValue];
  v9 = v8;

  if (v9 > 0.0 && (a3 || [(SADistance *)self isWithinMaxDistanceToShow]))
  {
    v10 = [(SADistance *)self isMetricUnit];
    if (v4)
    {
      v11 = [(SADistance *)self _unitLength];
      if (v10)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }

      v13 = [NSMeasurementFormatter _ma_distanceStringWithValue:v11 unit:v12 style:v9];
    }

    else
    {
      [(SADistance *)self distanceInMeters];
      v16 = v15;
      v11 = +[NSLocale _ma_locale];
      if (v10)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v13 = [NSString _navigation_localizedStringForDistance:2 detail:v10 unitFormat:v11 locale:v17 useMetric:1 useYards:v16];
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
  v3 = [(SADistance *)self value];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(SADistance *)self unit];
  v7 = [v6 isEqualToString:SADistanceUnitFeetValue];

  if (v7)
  {
    return v5 / 5280.0;
  }

  v9 = [(SADistance *)self unit];
  v10 = [v9 isEqualToString:SADistanceUnitMilesValue];

  result = v5;
  if ((v10 & 1) == 0)
  {
    v11 = [(SADistance *)self unit];
    v12 = [v11 isEqualToString:SADistanceUnitMetersValue];

    if (v12)
    {
      return v5 * 0.000621371192;
    }

    v13 = [(SADistance *)self unit];
    v14 = [v13 isEqualToString:SADistanceUnitKilometersValue];

    if (v14)
    {
      v15 = v5 * 1000.0;
    }

    else
    {
      v16 = [(SADistance *)self unit];
      v17 = [v16 isEqualToString:SADistanceUnitCentimetersValue];

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
  v3 = [(SADistance *)self value];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(SADistance *)self unit];
  v7 = [v6 isEqualToString:SADistanceUnitFeetValue];

  if (v7)
  {
    v8 = 0.3048;
    return v5 * v8;
  }

  v9 = [(SADistance *)self unit];
  v10 = [v9 isEqualToString:SADistanceUnitMilesValue];

  if (v10)
  {
    v8 = 1609.344;
    return v5 * v8;
  }

  v12 = [(SADistance *)self unit];
  v13 = [v12 isEqualToString:SADistanceUnitMetersValue];

  result = v5;
  if ((v13 & 1) == 0)
  {
    v14 = [(SADistance *)self unit];
    v15 = [v14 isEqualToString:SADistanceUnitKilometersValue];

    if (v15)
    {
      v8 = 1000.0;
      return v5 * v8;
    }

    v16 = [(SADistance *)self unit];
    v17 = [v16 isEqualToString:SADistanceUnitCentimetersValue];

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
  v3 = [(SADistance *)self unit];
  if ([v3 isEqualToString:SADistanceUnitFeetValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SADistance *)self unit];
    v4 = [v5 isEqualToString:SADistanceUnitMilesValue];
  }

  return v4;
}

- (id)_unitLength
{
  v3 = [(SADistance *)self unit];
  v4 = [v3 isEqualToString:SADistanceUnitFeetValue];

  if (v4)
  {
    v5 = +[NSUnitLength feet];
  }

  else
  {
    v6 = [(SADistance *)self unit];
    v7 = [v6 isEqualToString:SADistanceUnitMilesValue];

    if (v7)
    {
      v5 = +[NSUnitLength miles];
    }

    else
    {
      v8 = [(SADistance *)self unit];
      v9 = [v8 isEqualToString:SADistanceUnitMetersValue];

      if (v9)
      {
        v5 = +[NSUnitLength meters];
      }

      else
      {
        v10 = [(SADistance *)self unit];
        v11 = [v10 isEqualToString:SADistanceUnitKilometersValue];

        if (v11)
        {
          v5 = +[NSUnitLength kilometers];
        }

        else
        {
          v12 = [(SADistance *)self unit];
          v13 = [v12 isEqualToString:SADistanceUnitCentimetersValue];

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
@interface NTKFoghornElevationUtilities
+ (double)roundedAltitude:(double)altitude accuracy:(double)accuracy precision:(double)precision;
+ (void)roundedValuesFromAltitude:(double)altitude precision:(double)precision accuracy:(double)accuracy roundedAltitude:(double *)roundedAltitude roundedPrecision:(double *)roundedPrecision roundedAccuracy:(double *)roundedAccuracy;
@end

@implementation NTKFoghornElevationUtilities

+ (void)roundedValuesFromAltitude:(double)altitude precision:(double)precision accuracy:(double)accuracy roundedAltitude:(double *)roundedAltitude roundedPrecision:(double *)roundedPrecision roundedAccuracy:(double *)roundedAccuracy
{
  v13 = 1.0;
LABEL_2:
  v14 = v13 * 0.1;
  v15 = &qword_23BE7FF80;
  do
  {
    if (v15 >= &qword_23BE7FF98)
    {
      v13 = v13 * 10.0;
      goto LABEL_2;
    }

    v16 = v14;
    if (v14 > precision)
    {
      goto LABEL_10;
    }

    v17 = *v15++;
    v14 = v13 * v17;
  }

  while (v13 * v17 < precision);
  if (precision - v16 >= v14 - precision)
  {
    v16 = v14;
  }

LABEL_10:
  if (v16 > 0.0)
  {
    if (altitude >= 0.0)
    {
      altitudeCopy = altitude;
    }

    else
    {
      altitudeCopy = -altitude;
    }

    v19 = fmod(altitudeCopy, v16);
    if (v19 >= v16 - v19)
    {
      v20 = v16 - v19;
    }

    else
    {
      v20 = -v19;
    }

    v21 = altitudeCopy + v20;
    if (altitude >= 0.0)
    {
      altitude = v21;
    }

    else
    {
      altitude = -v21;
    }
  }

  v22 = 1.0;
LABEL_21:
  v23 = v22 * 0.1;
  v24 = &qword_23BE7FF80;
  do
  {
    if (v24 >= &qword_23BE7FF98)
    {
      v22 = v22 * 10.0;
      goto LABEL_21;
    }

    if (v23 > accuracy)
    {
      break;
    }

    v25 = *v24++;
    v23 = v22 * v25;
  }

  while (v22 * v25 < accuracy);
  if (roundedAltitude)
  {
    *roundedAltitude = altitude;
  }

  if (roundedPrecision)
  {
    *roundedPrecision = v16;
  }

  if (roundedAccuracy)
  {
    *roundedAccuracy = v23;
  }
}

+ (double)roundedAltitude:(double)altitude accuracy:(double)accuracy precision:(double)precision
{
  v6 = fabs(precision);
  v7 = 1.0;
LABEL_2:
  v8 = v7 * 0.1;
  v9 = &qword_23BE7FF80;
  do
  {
    if (v9 >= &qword_23BE7FF98)
    {
      v7 = v7 * 10.0;
      goto LABEL_2;
    }

    v10 = v8;
    if (v8 > v6)
    {
      goto LABEL_10;
    }

    v11 = *v9++;
    v8 = v7 * v11;
  }

  while (v7 * v11 < v6);
  if (v6 - v10 >= v8 - v6)
  {
    v10 = v8;
  }

LABEL_10:
  if (v10 > 0.0)
  {
    if (altitude >= 0.0)
    {
      altitudeCopy = altitude;
    }

    else
    {
      altitudeCopy = -altitude;
    }

    v13 = fmod(altitudeCopy, v10);
    if (v13 >= v10 - v13)
    {
      v14 = v10 - v13;
    }

    else
    {
      v14 = -v13;
    }

    v15 = altitudeCopy + v14;
    if (altitude >= 0.0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  return altitude;
}

@end
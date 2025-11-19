@interface NTKFoghornElevationUtilities
+ (double)roundedAltitude:(double)a3 accuracy:(double)a4 precision:(double)a5;
+ (void)roundedValuesFromAltitude:(double)a3 precision:(double)a4 accuracy:(double)a5 roundedAltitude:(double *)a6 roundedPrecision:(double *)a7 roundedAccuracy:(double *)a8;
@end

@implementation NTKFoghornElevationUtilities

+ (void)roundedValuesFromAltitude:(double)a3 precision:(double)a4 accuracy:(double)a5 roundedAltitude:(double *)a6 roundedPrecision:(double *)a7 roundedAccuracy:(double *)a8
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
    if (v14 > a4)
    {
      goto LABEL_10;
    }

    v17 = *v15++;
    v14 = v13 * v17;
  }

  while (v13 * v17 < a4);
  if (a4 - v16 >= v14 - a4)
  {
    v16 = v14;
  }

LABEL_10:
  if (v16 > 0.0)
  {
    if (a3 >= 0.0)
    {
      v18 = a3;
    }

    else
    {
      v18 = -a3;
    }

    v19 = fmod(v18, v16);
    if (v19 >= v16 - v19)
    {
      v20 = v16 - v19;
    }

    else
    {
      v20 = -v19;
    }

    v21 = v18 + v20;
    if (a3 >= 0.0)
    {
      a3 = v21;
    }

    else
    {
      a3 = -v21;
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

    if (v23 > a5)
    {
      break;
    }

    v25 = *v24++;
    v23 = v22 * v25;
  }

  while (v22 * v25 < a5);
  if (a6)
  {
    *a6 = a3;
  }

  if (a7)
  {
    *a7 = v16;
  }

  if (a8)
  {
    *a8 = v23;
  }
}

+ (double)roundedAltitude:(double)a3 accuracy:(double)a4 precision:(double)a5
{
  v6 = fabs(a5);
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
    if (a3 >= 0.0)
    {
      v12 = a3;
    }

    else
    {
      v12 = -a3;
    }

    v13 = fmod(v12, v10);
    if (v13 >= v10 - v13)
    {
      v14 = v10 - v13;
    }

    else
    {
      v14 = -v13;
    }

    v15 = v12 + v14;
    if (a3 >= 0.0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  return a3;
}

@end
@interface NSDateComponentsFormatter(MKRelativeFormatting)
+ (id)_mapkit_descriptionForTimeSinceDate:()MKRelativeFormatting;
+ (id)_mapkit_descriptionForTimeSinceDate:()MKRelativeFormatting referenceDate:smallestUnit:timeUntilNextUpdate:;
@end

@implementation NSDateComponentsFormatter(MKRelativeFormatting)

+ (id)_mapkit_descriptionForTimeSinceDate:()MKRelativeFormatting
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  date = [v4 date];
  v7 = [self _mapkit_descriptionForTimeSinceDate:v5 referenceDate:date];

  return v7;
}

+ (id)_mapkit_descriptionForTimeSinceDate:()MKRelativeFormatting referenceDate:smallestUnit:timeUntilNextUpdate:
{
  [a3 timeIntervalSinceDate:a4];
  if (v8 < 0.0)
  {
    v9 = -v8;
  }

  else
  {
    v9 = v8;
  }

  if (a5 == 16)
  {
    v11 = 86400.0;
  }

  else
  {
    v10 = __ROR8__(a5 - 16, 4);
    if (v10 == 1)
    {
      v11 = 3600.0;
    }

    else
    {
      v11 = 60.0;
      if (v10 == 7)
      {
        v11 = 10.0;
      }
    }
  }

  v12 = v8 >= 0.0 || v9 < v11;
  if (v12)
  {
    if (a6)
    {
      v13 = v8 + v11;
      v12 = v8 < 0.0;
      v14 = 0.0;
      if (v12)
      {
        v14 = v13;
      }

      *a6 = v14;
    }

    v15 = _MKLocalizedStringFromThisBundle(@"Just now");
  }

  else
  {
    if (v9 < 60.0 && v11 < 60.0)
    {
      v20 = vcvtmd_u64_f64(v9);
      v18 = _MKLocalizedStringFromThisBundle(@"Date_relative_time_seconds_ago");
      if (a6)
      {
        *a6 = 1.0;
      }

      v28 = 0;
      v15 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%d" error:&v28, v20];
      v19 = v28;
    }

    else if (v9 >= 3600.0 || v11 >= 3600.0)
    {
      if (v9 >= 86400.0 || v11 >= 86400.0)
      {
        v24 = vcvtmd_u64_f64(v9 / 86400.0);
        v18 = _MKLocalizedStringFromThisBundle(@"Date_relative_time_days_ago");
        if (a6)
        {
          *a6 = -(v9 - (v24 + 1) * 86400.0);
        }

        v25 = 0;
        v15 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%d" error:&v25, v24];
        v19 = v25;
      }

      else
      {
        v23 = vcvtmd_u64_f64(v9 / 3600.0);
        v18 = _MKLocalizedStringFromThisBundle(@"Date_relative_time_hours_ago");
        if (a6)
        {
          *a6 = -(v9 - (v23 + 1) * 3600.0);
        }

        v26 = 0;
        v15 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%d" error:&v26, v23];
        v19 = v26;
      }
    }

    else
    {
      v17 = vcvtmd_u64_f64(v9 / 60.0);
      v18 = _MKLocalizedStringFromThisBundle(@"Date_relative_time_minutes_ago");
      if (a6)
      {
        *a6 = -(v9 - (v17 + 1) * 60.0);
      }

      v27 = 0;
      v15 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%d" error:&v27, v17];
      v19 = v27;
    }

    v21 = v19;
  }

  return v15;
}

@end
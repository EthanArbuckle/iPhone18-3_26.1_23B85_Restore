@interface NSDateFormatter(MKReviewDateFormatting)
- (__CFString)_mapkit_roundedPastUnitsStringFromDate:()MKReviewDateFormatting;
@end

@implementation NSDateFormatter(MKReviewDateFormatting)

- (__CFString)_mapkit_roundedPastUnitsStringFromDate:()MKReviewDateFormatting
{
  v3 = a3;
  date = [MEMORY[0x1E695DF00] date];
  v5 = [date earlierDate:v3];

  if (v5 == date)
  {
    v16 = &stru_1F15B23C0;
    goto LABEL_20;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [currentCalendar components:28 fromDate:v3];
  v8 = [currentCalendar components:28 fromDate:date];
  year = [v8 year];
  v10 = year - [v7 year];
  month = [v8 month];
  month2 = [v7 month];
  v13 = [v8 day];
  v14 = [v7 day];
  if (v10 < 1)
  {
    v17 = (month - month2);
    if (v17 < 1)
    {
      v17 = (v13 - v14);
      if (!v17)
      {
        v15 = @"TODAY_KEY";
        goto LABEL_15;
      }

      if (v17 == 1)
      {
        v15 = @"YESTERDAY_KEY";
        goto LABEL_15;
      }

      v19 = @"N_DAYS_AGO_FORMAT_KEY";
    }

    else
    {
      if (v17 == 1)
      {
        v15 = @"LAST_MONTH_KEY";
        goto LABEL_15;
      }

      v19 = @"N_MONTHS_AGO_FORMAT_KEY";
    }

    v18 = _MKLocalizedStringFromThisBundle(v19);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v18, v17];
    goto LABEL_18;
  }

  if (v10 != 1)
  {
    v18 = _MKLocalizedStringFromThisBundle(@"N_YEARS_AGO_FORMAT_KEY");
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v18, v10];
    v16 = LABEL_18:;

    goto LABEL_19;
  }

  v15 = @"LAST_YEAR_KEY";
LABEL_15:
  v16 = _MKLocalizedStringFromThisBundle(v15);
LABEL_19:

LABEL_20:

  return v16;
}

@end
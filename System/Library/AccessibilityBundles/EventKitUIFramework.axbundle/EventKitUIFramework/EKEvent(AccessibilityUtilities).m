@interface EKEvent(AccessibilityUtilities)
- (id)_accessibilityDurationString;
@end

@implementation EKEvent(AccessibilityUtilities)

- (id)_accessibilityDurationString
{
  v1 = a1;
  v2 = MEMORY[0x29EDC0AC0];
  v3 = [a1 startDate];
  v4 = [v1 eventStore];
  v5 = [v4 timeZone];
  v6 = [v2 calendarDateWithDate:v3 timeZone:v5];

  v7 = MEMORY[0x29EDC0AC0];
  v8 = [v1 endDate];
  v9 = [v1 eventStore];
  v10 = [v9 timeZone];
  v11 = [v7 calendarDateWithDate:v8 timeZone:v10];

  LODWORD(v1) = [v1 isAllDay];
  v12 = [v6 dayComponents];
  v13 = [v11 dayComponents];
  v14 = [v12 isEqual:v13];

  if (v1)
  {
    if (v14)
    {
      v15 = accessibilityLocalizedString(@"all.day.event");
    }

    else
    {
      v22 = MEMORY[0x29EDBA0F8];
      v23 = accessibilityLocalizedString(@"all.day.multiple.days");
      v24 = [v6 date];
      v25 = [v24 _accessibilityYearlessDayString];
      v26 = [v11 date];
      v27 = [v26 _accessibilityYearlessDayString];
      v15 = [v22 stringWithFormat:v23, v25, v27];
    }
  }

  else
  {
    v16 = MEMORY[0x29EDBA0F8];
    v17 = accessibilityLocalizedString(@"event.duration");
    v18 = [v6 date];
    v19 = [v18 _accessibilityTimeString];
    v20 = [v11 date];
    v21 = v20;
    if (v14)
    {
      [v20 _accessibilityTimeString];
    }

    else
    {
      AXDateStringForFormat();
    }
    v28 = ;
    v15 = [v16 stringWithFormat:v17, v19, v28];
  }

  return v15;
}

@end
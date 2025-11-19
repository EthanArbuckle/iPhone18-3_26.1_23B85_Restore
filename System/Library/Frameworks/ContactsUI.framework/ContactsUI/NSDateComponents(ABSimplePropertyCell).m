@interface NSDateComponents(ABSimplePropertyCell)
- (id)displayString;
@end

@implementation NSDateComponents(ABSimplePropertyCell)

- (id)displayString
{
  if (displayString_onceToken != -1)
  {
    dispatch_once(&displayString_onceToken, &__block_literal_global_44302);
  }

  v2 = [MEMORY[0x1E6996B48] dateFromComponents:a1 destinationCalendar:0];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [a1 calendar];

  if (v4)
  {
    v4 = [a1 calendar];
    v5 = MEMORY[0x1E69AAE08];
    v6 = [v4 calendarIdentifier];
    v7 = [v5 localeForCalendarID:v6];

    v3 = v7;
  }

  if ([MEMORY[0x1E6996B48] isYearlessComponents:a1])
  {
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMMd" options:0 locale:v3];
    v9 = &yearlessFormatter_44304;
    [yearlessFormatter_44304 setDateFormat:v8];
  }

  else
  {
    v9 = &fullFormatter_44305;
  }

  v10 = *v9;
  [v10 setLocale:v3];
  [v10 setCalendar:v4];
  v11 = [v10 stringFromDate:v2];

  return v11;
}

@end
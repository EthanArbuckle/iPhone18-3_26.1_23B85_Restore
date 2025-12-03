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

  v2 = [MEMORY[0x1E6996B48] dateFromComponents:self destinationCalendar:0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  calendar = [self calendar];

  if (calendar)
  {
    calendar = [self calendar];
    v5 = MEMORY[0x1E69AAE08];
    calendarIdentifier = [calendar calendarIdentifier];
    v7 = [v5 localeForCalendarID:calendarIdentifier];

    currentLocale = v7;
  }

  if ([MEMORY[0x1E6996B48] isYearlessComponents:self])
  {
    v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMMd" options:0 locale:currentLocale];
    v9 = &yearlessFormatter_44304;
    [yearlessFormatter_44304 setDateFormat:v8];
  }

  else
  {
    v9 = &fullFormatter_44305;
  }

  v10 = *v9;
  [v10 setLocale:currentLocale];
  [v10 setCalendar:calendar];
  v11 = [v10 stringFromDate:v2];

  return v11;
}

@end
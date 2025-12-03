@interface NSDate(EKEventSuggestions)
- (id)localizedShortTimeInTimeZone:()EKEventSuggestions;
- (id)nextDateMatchingTimeComponents;
@end

@implementation NSDate(EKEventSuggestions)

- (id)nextDateMatchingTimeComponents
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:date timePartFromDate:self inCalendar:0];
  if ([v3 isBeforeDate:date])
  {
    v4 = [date dateByAddingDays:1 inCalendar:0];
    v5 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:v4 timePartFromDate:self inCalendar:0];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (id)localizedShortTimeInTimeZone:()EKEventSuggestions
{
  v4 = a3;
  v5 = _dateWithTimeZoneFormatter;
  if (!_dateWithTimeZoneFormatter)
  {
    v6 = objc_opt_new();
    v7 = _dateWithTimeZoneFormatter;
    _dateWithTimeZoneFormatter = v6;

    v8 = _dateWithTimeZoneFormatter;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v8 setLocale:currentLocale];

    [_dateWithTimeZoneFormatter setTimeStyle:1];
    v5 = _dateWithTimeZoneFormatter;
  }

  [v5 setTimeZone:v4];
  v10 = [_dateWithTimeZoneFormatter stringFromDate:self];

  return v10;
}

@end
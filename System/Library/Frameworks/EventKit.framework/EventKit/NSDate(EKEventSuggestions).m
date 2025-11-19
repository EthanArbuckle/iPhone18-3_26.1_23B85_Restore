@interface NSDate(EKEventSuggestions)
- (id)localizedShortTimeInTimeZone:()EKEventSuggestions;
- (id)nextDateMatchingTimeComponents;
@end

@implementation NSDate(EKEventSuggestions)

- (id)nextDateMatchingTimeComponents
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:v2 timePartFromDate:a1 inCalendar:0];
  if ([v3 isBeforeDate:v2])
  {
    v4 = [v2 dateByAddingDays:1 inCalendar:0];
    v5 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:v4 timePartFromDate:a1 inCalendar:0];
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
    v9 = [MEMORY[0x1E695DF58] currentLocale];
    [v8 setLocale:v9];

    [_dateWithTimeZoneFormatter setTimeStyle:1];
    v5 = _dateWithTimeZoneFormatter;
  }

  [v5 setTimeZone:v4];
  v10 = [_dateWithTimeZoneFormatter stringFromDate:a1];

  return v10;
}

@end
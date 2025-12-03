@interface CalendarEventAlarmTable
- (int)intervalForPresetIdentifier:(int64_t)identifier;
- (unint64_t)countOfPresets;
@end

@implementation CalendarEventAlarmTable

- (int)intervalForPresetIdentifier:(int64_t)identifier
{
  useAllDayAlarms = [(CalendarEventAlarmTable *)self useAllDayAlarms];
  v5 = &__PresetAlarmIntervals;
  if (useAllDayAlarms)
  {
    v5 = &__PresetAllDayAlarmIntervals;
  }

  return v5[identifier];
}

- (unint64_t)countOfPresets
{
  if ([(CalendarEventAlarmTable *)self useAllDayAlarms])
  {
    return 4;
  }

  else
  {
    return 10;
  }
}

@end
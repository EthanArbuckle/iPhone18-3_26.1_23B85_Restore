@interface CalendarEventAlarmTable
- (int)intervalForPresetIdentifier:(int64_t)a3;
- (unint64_t)countOfPresets;
@end

@implementation CalendarEventAlarmTable

- (int)intervalForPresetIdentifier:(int64_t)a3
{
  v4 = [(CalendarEventAlarmTable *)self useAllDayAlarms];
  v5 = &__PresetAlarmIntervals;
  if (v4)
  {
    v5 = &__PresetAllDayAlarmIntervals;
  }

  return v5[a3];
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
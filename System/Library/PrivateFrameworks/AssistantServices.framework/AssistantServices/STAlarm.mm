@interface STAlarm
- (void)_ad_updateWithModification:(id)modification;
@end

@implementation STAlarm

- (void)_ad_updateWithModification:(id)modification
{
  modificationCopy = modification;
  selfCopy = self;
  enabled = [modificationCopy enabled];
  v6 = enabled;
  if (enabled)
  {
    -[STAlarm setEnabled:](selfCopy, "setEnabled:", [enabled BOOLValue]);
  }

  hour = [modificationCopy hour];
  v8 = hour;
  if (hour)
  {
    -[STAlarm setHourOfDay:](selfCopy, "setHourOfDay:", [hour integerValue]);
  }

  minute = [modificationCopy minute];
  v10 = minute;
  if (minute)
  {
    -[STAlarm setMinuteOfHour:](selfCopy, "setMinuteOfHour:", [minute integerValue]);
  }

  label = [modificationCopy label];
  if (label)
  {
    [(STAlarm *)selfCopy setLabel:label];
  }

  addedFrequency = [modificationCopy addedFrequency];
  if ([addedFrequency count])
  {
    [(STAlarm *)selfCopy setDaysOfWeek:[(STAlarm *)selfCopy daysOfWeek]& sub_10024AB14(addedFrequency)];
  }

  removedFrequency = [modificationCopy removedFrequency];
  if ([removedFrequency count])
  {
    [(STAlarm *)selfCopy setDaysOfWeek:[(STAlarm *)selfCopy daysOfWeek]& ~sub_10024AB14(removedFrequency)];
  }
}

@end
@interface EKEvent(AccessibilityUtilities)
- (id)_accessibilityDurationString;
@end

@implementation EKEvent(AccessibilityUtilities)

- (id)_accessibilityDurationString
{
  selfCopy = self;
  v2 = MEMORY[0x29EDC0AC0];
  startDate = [self startDate];
  eventStore = [selfCopy eventStore];
  timeZone = [eventStore timeZone];
  v6 = [v2 calendarDateWithDate:startDate timeZone:timeZone];

  v7 = MEMORY[0x29EDC0AC0];
  endDate = [selfCopy endDate];
  eventStore2 = [selfCopy eventStore];
  timeZone2 = [eventStore2 timeZone];
  v11 = [v7 calendarDateWithDate:endDate timeZone:timeZone2];

  LODWORD(selfCopy) = [selfCopy isAllDay];
  dayComponents = [v6 dayComponents];
  dayComponents2 = [v11 dayComponents];
  v14 = [dayComponents isEqual:dayComponents2];

  if (selfCopy)
  {
    if (v14)
    {
      v15 = accessibilityLocalizedString(@"all.day.event");
    }

    else
    {
      v22 = MEMORY[0x29EDBA0F8];
      v23 = accessibilityLocalizedString(@"all.day.multiple.days");
      date = [v6 date];
      _accessibilityYearlessDayString = [date _accessibilityYearlessDayString];
      date2 = [v11 date];
      _accessibilityYearlessDayString2 = [date2 _accessibilityYearlessDayString];
      v15 = [v22 stringWithFormat:v23, _accessibilityYearlessDayString, _accessibilityYearlessDayString2];
    }
  }

  else
  {
    v16 = MEMORY[0x29EDBA0F8];
    v17 = accessibilityLocalizedString(@"event.duration");
    date3 = [v6 date];
    _accessibilityTimeString = [date3 _accessibilityTimeString];
    date4 = [v11 date];
    v21 = date4;
    if (v14)
    {
      [date4 _accessibilityTimeString];
    }

    else
    {
      AXDateStringForFormat();
    }
    v28 = ;
    v15 = [v16 stringWithFormat:v17, _accessibilityTimeString, v28];
  }

  return v15;
}

@end
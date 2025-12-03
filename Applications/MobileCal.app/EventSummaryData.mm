@interface EventSummaryData
+ (id)eventSummaryDataFromEKEvent:(id)event;
- (EventSummaryData)init;
@end

@implementation EventSummaryData

- (EventSummaryData)init
{
  v8.receiver = self;
  v8.super_class = EventSummaryData;
  result = [(EventSummaryData *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_normalizedStart = _Q0;
  }

  return result;
}

+ (id)eventSummaryDataFromEKEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v4 = objc_opt_new();
    startDate = [eventCopy startDate];
    [v4 setStartDate:startDate];

    endDate = [eventCopy endDate];
    [v4 setEndDate:endDate];

    if ([eventCopy isAllDay])
    {
      [v4 setIsAllDay:1];
    }

    else
    {
      v7 = +[NSTimeZone calendarTimeZone];
      v8 = [NSCalendar CalGregorianCalendarForTimeZone:v7];
      [v4 setIsAllDay:{objc_msgSend(eventCopy, "isMultiDayTimedEventInCalendar:", v8)}];
    }

    if ([eventCopy isIntegrationEvent])
    {
      calendar = CUIKIntegrationEventBackgroundColor();
      [v4 setColor:calendar];
    }

    else
    {
      calendar = [eventCopy calendar];
      displayColor = [calendar displayColor];
      [v4 setColor:displayColor];
    }

    eventOccurrenceID = [eventCopy eventOccurrenceID];
    [v4 setEventIdentifier:eventOccurrenceID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
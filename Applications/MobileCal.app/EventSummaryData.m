@interface EventSummaryData
+ (id)eventSummaryDataFromEKEvent:(id)a3;
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

+ (id)eventSummaryDataFromEKEvent:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 startDate];
    [v4 setStartDate:v5];

    v6 = [v3 endDate];
    [v4 setEndDate:v6];

    if ([v3 isAllDay])
    {
      [v4 setIsAllDay:1];
    }

    else
    {
      v7 = +[NSTimeZone calendarTimeZone];
      v8 = [NSCalendar CalGregorianCalendarForTimeZone:v7];
      [v4 setIsAllDay:{objc_msgSend(v3, "isMultiDayTimedEventInCalendar:", v8)}];
    }

    if ([v3 isIntegrationEvent])
    {
      v9 = CUIKIntegrationEventBackgroundColor();
      [v4 setColor:v9];
    }

    else
    {
      v9 = [v3 calendar];
      v10 = [v9 displayColor];
      [v4 setColor:v10];
    }

    v11 = [v3 eventOccurrenceID];
    [v4 setEventIdentifier:v11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
@interface DDMatchCalendarEvent
- (DDMatchCalendarEvent)initWithDDScannerResult:(id)result;
@end

@implementation DDMatchCalendarEvent

- (DDMatchCalendarEvent)initWithDDScannerResult:(id)result
{
  resultCopy = result;
  v27.receiver = self;
  v27.super_class = DDMatchCalendarEvent;
  v5 = [(DDMatch *)&v27 initWithDDScannerResult:resultCopy];
  if (v5)
  {
    [resultCopy coreResult];
    v6 = *MEMORY[0x277D04190];
    if ((DDResultHasType() & 1) != 0 || (v7 = *MEMORY[0x277D040A0], DDResultHasType()))
    {
      v26 = 0;
      v24 = 0;
      v25 = 0;
      v22 = 0;
      v23 = 0;
      v8 = [resultCopy extractStartDate:&v25 startTimezone:&v24 endDate:&v23 endTimezone:&v22 allDayRef:&v26 referenceDate:0 referenceTimezone:0];
      v9 = v25;
      v20 = v25;
      v10 = v24;
      v11 = v24;
      v12 = v23;
      v13 = v23;
      v14 = v22;
      v15 = v22;
      if (v8)
      {
        objc_storeStrong(&v5->_startDate, v9);
        objc_storeStrong(&v5->_startTimeZone, v10);
        objc_storeStrong(&v5->_endDate, v12);
        objc_storeStrong(&v5->_endTimeZone, v14);
        v5->_allDay = v26;
      }
    }

    else
    {
      v26 = 0;
      v21 = 0;
      v16 = [resultCopy dateFromReferenceDate:0 referenceTimezone:0 timezoneRef:&v21 allDayRef:&v26];
      v17 = v21;
      v18 = v21;
      if (v16)
      {
        objc_storeStrong(&v5->_startDate, v16);
        objc_storeStrong(&v5->_startTimeZone, v17);
        v5->_allDay = v26;
      }
    }
  }

  return v5;
}

@end
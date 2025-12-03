@interface ShowEventDetailsTest
- (id)_romanNumeralFromInt:(int)int;
- (id)anyWritableEnabledCalendar;
- (id)createTestEvent:(id)event numAttendees:(int64_t)attendees;
- (void)cleanUp;
@end

@implementation ShowEventDetailsTest

- (id)createTestEvent:(id)event numAttendees:(int64_t)attendees
{
  eventCopy = event;
  model = [(ApplicationTest *)self model];
  eventStore = [model eventStore];

  v29 = eventStore;
  v9 = [EKEvent eventWithEventStore:eventStore];
  anyWritableEnabledCalendar = [(ShowEventDetailsTest *)self anyWritableEnabledCalendar];
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = anyWritableEnabledCalendar;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Selected calendar %{public}@", buf, 0xCu);
  }

  v28 = anyWritableEnabledCalendar;
  [v9 setCalendar:anyWritableEnabledCalendar];
  v30 = eventCopy;
  [v9 setTitle:eventCopy];
  v12 = CUIKNowDate();
  [v9 setStartDate:v12];

  startDate = [v9 startDate];
  v14 = [startDate dateByAddingTimeInterval:3600.0];
  [v9 setEndDate:v14];

  v31 = v9;
  if (attendees >= 1)
  {
    v15 = 0;
    do
    {
      attendeesCopy = attendees;
      v17 = v15 + 1;
      [(ShowEventDetailsTest *)self _romanNumeralFromInt:v15 + 1];
      v19 = v18 = self;
      v20 = [NSString stringWithFormat:@"Reinbach %@", v19];

      v21 = [NSString stringWithFormat:@"%@ %@", @"Schloteheim", v20];
      v22 = [NSString stringWithFormat:@"test_email_address_%d@dev.null.notreal", v15];
      v23 = [NSString stringWithFormat:@"555-555-5%d", v15 + 100];
      v24 = [EKAttendee participantWithName:v21 emailAddress:v22 phoneNumber:v23 url:0];
      [v24 setFirstName:@"Schloteheim"];
      [v24 setLastName:v20];
      [v31 addAttendee:v24];

      self = v18;
      v15 = v17;
      v25 = attendeesCopy == v17;
      attendees = attendeesCopy;
    }

    while (!v25);
  }

  v32 = 0;
  [v29 saveEvent:v31 span:0 error:&v32];
  v26 = v32;
  objc_storeStrong(&self->_event, v31);

  return v31;
}

- (id)anyWritableEnabledCalendar
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  model = [(ApplicationTest *)self model];
  selectedCalendars = [model selectedCalendars];

  v5 = [selectedCalendars countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(selectedCalendars);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 allowsContentModifications])
        {
          source = [v9 source];
          sourceType = [source sourceType];

          if (sourceType != 6)
          {
            defaultCalendarForNewEvents = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [selectedCalendars countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  selectedCalendars = [(ApplicationTest *)self model];
  eventStore = [selectedCalendars eventStore];
  defaultCalendarForNewEvents = [eventStore defaultCalendarForNewEvents];

LABEL_12:

  return defaultCalendarForNewEvents;
}

- (id)_romanNumeralFromInt:(int)int
{
  if ((int - 1000) > 0xFFFFFC18)
  {
    v5 = [NSArray arrayWithObjects:@"I", @"II", @"III", @"IV", @"V", @"VI", @"VII", @"VIII", @"IX", 0];
    v6 = [NSArray arrayWithObjects:@"X", @"XX", @"XXX", @"XL", @"L", @"LX", @"LXX", @"LXXX", @"XC", 0];
    v7 = [NSArray arrayWithObjects:@"C", @"CC", @"CCC", @"CD", @"D", @"DC", @"DCC", @"DCCC", @"CM", 0];
    v8 = 10 * (int / 0xAu);
    v9 = int - v8;
    v10 = 100 * ((42949673 * v8) >> 32);
    v11 = v8 - v10;
    v12 = int + v10 - int;
    v4 = objc_alloc_init(NSMutableString);
    if (v12 >= 100)
    {
      v13 = [v7 objectAtIndex:v12 / 0x64u - 1];
      [v4 appendString:v13];
    }

    if (v11 >= 0xA)
    {
      v14 = [v6 objectAtIndex:(((429496730 * v11) >> 32) - 1)];
      [v4 appendString:v14];
    }

    if (v9)
    {
      v15 = [v5 objectAtIndex:v9 - 1];
      [v4 appendString:v15];
    }
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%i", *&int];
  }

  return v4;
}

- (void)cleanUp
{
  if (self->_event)
  {
    model = [(ApplicationTest *)self model];
    eventStore = [model eventStore];
    [eventStore removeEvent:self->_event span:0 error:0];
  }
}

@end
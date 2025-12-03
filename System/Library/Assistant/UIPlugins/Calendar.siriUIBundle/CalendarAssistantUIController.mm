@interface CalendarAssistantUIController
+ (id)openEventStore;
+ (void)closeEventStore;
- (BOOL)_buildEvents;
- (BOOL)_crossesMultipleDays;
- (CalendarAssistantUIController)initWithAceObject:(id)object;
- (double)desiredHeight;
- (id)_eventFromAceEvent:(id)event;
- (id)dayView:(id)view eventsForStartDate:(id)date endDate:(id)endDate;
- (id)dragItemForIndexPath:(id)path;
- (id)sashItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_buildSections;
- (void)_openEvent:(id)event;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)tappedSingleEventGesture:(id)gesture;
@end

@implementation CalendarAssistantUIController

+ (id)openEventStore
{
  v2 = qword_11AC0;
  if (qword_11AC0)
  {
    v3 = dword_11AC8 + 1;
  }

  else
  {
    v4 = objc_alloc_init(EKEventStore);
    v5 = qword_11AC0;
    qword_11AC0 = v4;

    v2 = qword_11AC0;
    v3 = 1;
  }

  dword_11AC8 = v3;

  return v2;
}

+ (void)closeEventStore
{
  v2 = qword_11AC0;
  if (qword_11AC0)
  {
    if (!--dword_11AC8)
    {
      qword_11AC0 = 0;
    }
  }
}

- (id)sashItem
{
  NSLog(@"CalendarAssistantUIController: providing sash item.", a2);
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [SiriUISashItem alloc];
  v4 = [v2 assistantUILocalizedStringForKey:@"Calendar" value:0 table:0];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [UIImage imageNamed:@"CalendarMonth" inBundle:v5 compatibleWithTraitCollection:0];
  v7 = [v3 initWithTitle:v4 image:v6];

  return v7;
}

- (CalendarAssistantUIController)initWithAceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = CalendarAssistantUIController;
    v5 = [(CalendarAssistantUIController *)&v9 init];
    CUIKInvalidateToday();
    self = v5;
    selfCopy = self;
  }

  else
  {
    v7 = objc_opt_class();
    NSLog(@"CalendarAssistantUIController: passed wrong type of class: %@", v7);
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  +[CalendarAssistantUIController closeEventStore];
  v3.receiver = self;
  v3.super_class = CalendarAssistantUIController;
  [(CalendarAssistantUIController *)&v3 dealloc];
}

- (BOOL)_buildEvents
{
  snippet = [(CalendarAssistantUIController *)self snippet];
  events = [snippet events];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(events, "count")}];
  [(CalendarAssistantUIController *)self setEvents:v4];

  snippet2 = [(CalendarAssistantUIController *)self snippet];
  confirmationOptions = [snippet2 confirmationOptions];
  [(CalendarAssistantUIController *)self setIsDraft:confirmationOptions != 0];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = events;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v42 = *v44;
    v40 = v7;
    v41 = _EKEventURLScheme;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        identifier = [v11 identifier];
        v13 = identifier;
        if (!identifier || ([identifier scheme], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "compare:options:", v41, 1), v14, v15) || -[CalendarAssistantUIController isDraft](self, "isDraft"))
        {
          delegate = [(CalendarAssistantUIController *)self delegate];
          identifier2 = [v11 identifier];
          v18 = [delegate siriViewController:self domainObjectForIdentifier:identifier2];

          if (!v18)
          {
            v18 = v11;
          }

          events3 = [(CalendarAssistantUIController *)self _eventFromAceEvent:v18];
          date = [(CalendarAssistantUIController *)self date];

          if (!date)
          {
            startDate = [events3 startDate];
            eventStore = [(CalendarAssistantUIController *)self eventStore];
            timeZone = [eventStore timeZone];
            v24 = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];
            [(CalendarAssistantUIController *)self setDate:v24];

            v7 = v40;
          }

          events2 = [(CalendarAssistantUIController *)self events];
          [events2 addObject:events3];
        }

        else
        {
          eventStore2 = [(CalendarAssistantUIController *)self eventStore];
          identifier3 = [v11 identifier];
          v18 = [eventStore2 _eventWithURI:identifier3 checkValid:1];

          if (v18)
          {
            date2 = [(CalendarAssistantUIController *)self date];

            if (!date2)
            {
              startDate2 = [v18 startDate];
              eventStore3 = [(CalendarAssistantUIController *)self eventStore];
              timeZone2 = [eventStore3 timeZone];
              v32 = [EKCalendarDate calendarDateWithDate:startDate2 timeZone:timeZone2];
              [(CalendarAssistantUIController *)self setDate:v32];

              v7 = v40;
            }

            startDate3 = [v11 startDate];
            [v18 setStartDate:startDate3];

            endDate = [v11 endDate];
            [v18 setEndDate:endDate];

            events3 = [(CalendarAssistantUIController *)self events];
            [events3 addObject:v18];
          }

          else
          {
            events3 = [v11 identifier];
            NSLog(@"CalendarAssistantUIController: event not found: %@", events3);
          }
        }

        v10 = v10 + 1;
      }

      while (v9 != v10);
      v35 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v9 = v35;
    }

    while (v35);
  }

  events4 = [(CalendarAssistantUIController *)self events];
  v37 = [events4 count];

  if (!v37)
  {
    NSLog(@"CalendarAssistantUIController: No viable events.");
  }

  return v37 != 0;
}

- (void)_buildSections
{
  events = [(CalendarAssistantUIController *)self events];
  [events sortUsingSelector:"compareStartDateWithEvent:"];
  v4 = [[NSMutableArray alloc] initWithCapacity:0];
  [(CalendarAssistantUIController *)self setSections:v4];

  v24 = [events count];
  if (v24 >= 26)
  {
    [(CalendarAssistantUIController *)self setHiddenEventCount:(v24 - 25)];
  }

  [(CalendarAssistantUIController *)self setAllDayEventsInSection:0];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = events;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v23 = *v26;
LABEL_5:
    v9 = 0;
    v21 = v7 + v6;
    while (1)
    {
      if (*v26 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      if (v24 >= 26 && v7 > 24)
      {
        break;
      }

      startCalendarDate = [*(*(&v25 + 1) + 8 * v9) startCalendarDate];
      date = [startCalendarDate date];
      timeZone = [(EKEventStore *)self->_eventStore timeZone];
      v14 = [EKCalendarDate calendarDateWithDate:date timeZone:timeZone];

      calendarDateForDay = [v14 calendarDateForDay];
      date2 = [calendarDateForDay date];

      if (!v8 || ([v8 date], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(date2, "isEqualToDate:", v17), v17, (v18 & 1) == 0))
      {
        v19 = [CalendarAssistantUISnippetSection sectionWithDate:date2];

        sections = [(CalendarAssistantUIController *)self sections];
        [sections addObject:v19];

        v8 = v19;
      }

      if ([v10 isAllDay])
      {
        [(CalendarAssistantUIController *)self setAllDayEventsInSection:1];
      }

      [v8 addEvent:v10];

      v9 = v9 + 1;
      ++v7;
      if (v6 == v9)
      {
        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        v7 = v21;
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (id)_eventFromAceEvent:(id)event
{
  eventCopy = event;
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  v7 = CalCopyTimeZone();
  if (!endDate)
  {
    v121 = 0;
    v120 = 0;
    v123 = 0;
    v124 = 0;
    [startDate timeIntervalSinceReferenceDate];
    v122 = 1;
    CalAbsoluteTimeAddGregorianUnits();
    endDate = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  eventStore = [(CalendarAssistantUIController *)self eventStore];
  v9 = [EKEvent eventWithEventStore:eventStore];

  calendarId = [eventCopy calendarId];

  if (!calendarId)
  {
    goto LABEL_5;
  }

  eventStore2 = [(CalendarAssistantUIController *)self eventStore];
  calendarId2 = [eventCopy calendarId];
  defaultCalendarForNewEvents = [eventStore2 calendarWithExternalURI:calendarId2];

  if (!defaultCalendarForNewEvents)
  {
LABEL_5:
    eventStore3 = [(CalendarAssistantUIController *)self eventStore];
    defaultCalendarForNewEvents = [eventStore3 defaultCalendarForNewEvents];
  }

  v97 = defaultCalendarForNewEvents;
  [v9 setCalendar:defaultCalendarForNewEvents];
  title = [eventCopy title];
  [v9 setTitle:title];

  location = [eventCopy location];
  [v9 setLocation:location];

  notes = [eventCopy notes];
  [v9 setNotes:notes];

  [v9 setStartDate:startDate];
  [v9 setEndDate:endDate];
  [v9 setTimeZone:v7];
  [v9 setAllDay:{objc_msgSend(eventCopy, "allDay")}];
  attendees = [eventCopy attendees];
  calendar = [v9 calendar];
  source = [calendar source];
  constraints = [source constraints];
  supportsOutgoingInvitations = [constraints supportsOutgoingInvitations];

  v98 = endDate;
  v99 = v7;
  if (!supportsOutgoingInvitations)
  {
    v25 = 1;
    goto LABEL_10;
  }

  constraints2 = [source constraints];
  requiresOutgoingInvitationsInDefaultCalendar = [constraints2 requiresOutgoingInvitationsInDefaultCalendar];

  if (requiresOutgoingInvitationsInDefaultCalendar)
  {
    v25 = [calendar isDefaultSchedulingCalendar] ^ 1;
LABEL_10:
    v100 = v25;
    goto LABEL_12;
  }

  v100 = 0;
LABEL_12:
  v96 = calendar;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = attendees;
  v26 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v110;
    while (2)
    {
      v29 = startDate;
      v30 = source;
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v110 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v109 + 1) + 8 * i);
        data = [v32 data];
        if (data)
        {

LABEL_24:
          v37 = 0;
          source = v30;
          startDate = v29;
          goto LABEL_25;
        }

        object = [v32 object];
        emails = [object emails];
        v36 = [emails count];

        if (v36)
        {
          goto LABEL_24;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
      v37 = 1;
      source = v30;
      startDate = v29;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v37 = 1;
  }

LABEL_25:

  v95 = source;
  if (![obj count] || !(v100 | v37))
  {
    title2 = [eventCopy title];
    [v9 setTitle:title2];
    goto LABEL_48;
  }

  v38 = obj;
  v39 = +[NSMutableArray array];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v40 = v38;
  v41 = [v40 countByEnumeratingWithState:&v113 objects:&v120 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v114;
    do
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v114 != v43)
        {
          objc_enumerationMutation(v40);
        }

        displayText = [*(*(&v113 + 1) + 8 * j) displayText];
        [v39 addObject:displayText];
      }

      v42 = [v40 countByEnumeratingWithState:&v113 objects:&v120 count:16];
    }

    while (v42);
  }

  title2 = [v39 count];
  v47 = [NSBundle bundleForClass:objc_opt_class()];
  v48 = v47;
  v49 = &CalAbsoluteTimeAddGregorianUnits_ptr;
  if (title2)
  {
    v94 = startDate;
    if (title2 == &dword_0 + 2)
    {
      [v47 assistantUILocalizedStringForKey:@"%@ and %@ (two item format)" value:@"%@ and %@" table:0];
      v50 = v101 = v48;
      v51 = [v39 objectAtIndex:0];
      v52 = [v39 objectAtIndex:1];
      title2 = [NSString localizedStringWithValidatedFormat:v50 validFormatSpecifiers:@"%@%@" error:0, v51, v52];

      v48 = v101;
    }

    else
    {
      if (title2 != &dword_0 + 1)
      {
        v92 = eventCopy;
        v93 = title2 - 1;
        v53 = v47;
        v54 = [v47 assistantUILocalizedStringForKey:@"%@ value:%@ (start format)" table:{@"%@, %@", 0}];
        v55 = [v39 objectAtIndex:0];
        v56 = [v39 objectAtIndex:1];
        v91 = v54;
        v57 = [NSString localizedStringWithValidatedFormat:v54 validFormatSpecifiers:@"%@%@" error:0, v55, v56];

        v102 = v53;
        if ((title2 - 1) < 3)
        {
          v64 = v57;
        }

        else
        {
          v58 = title2 - 3;
          v59 = 2;
          do
          {
            v60 = [v102 assistantUILocalizedStringForKey:@"%@ value:%@ (middle format)" table:{@"%@, %@", 0}];
            v61 = v49[67];
            [v39 objectAtIndex:v59];
            v63 = v62 = v49;
            v64 = [v61 localizedStringWithValidatedFormat:v60 validFormatSpecifiers:@"%@%@" error:0, v57, v63];

            v49 = v62;
            ++v59;
            v57 = v64;
            --v58;
          }

          while (v58);
        }

        v65 = [v102 assistantUILocalizedStringForKey:@"%@ and %@ (end format)" value:@"%@ and %@" table:0];
        v66 = v49[67];
        v67 = [v39 objectAtIndex:v93];
        title2 = [v66 localizedStringWithValidatedFormat:v65 validFormatSpecifiers:@"%@%@" error:0, v64, v67];

        eventCopy = v92;
        startDate = v94;
        v48 = v102;
        goto LABEL_47;
      }

      title2 = [v39 objectAtIndex:0];
    }

    startDate = v94;
  }

LABEL_47:

  v68 = [NSBundle bundleForClass:objc_opt_class()];
  v69 = [v68 assistantUILocalizedStringForKey:@"%1$@ with %2$@" value:&stru_C528 table:0];

  v70 = v49[67];
  title3 = [eventCopy title];
  v72 = [v70 localizedStringWithValidatedFormat:v69 validFormatSpecifiers:@"%@%@" error:0, title3, title2];
  [v9 setTitle:v72];

LABEL_48:
  memset(v108, 0, sizeof(v108));
  recurrences = [eventCopy recurrences];
  if ([recurrences countByEnumeratingWithState:v108 objects:v118 count:16])
  {
    v74 = **(&v108[0] + 1);
    v75 = [v74 frequency] - 2;
    if (v75 < 3)
    {
      v76 = v75 + 1;
    }

    else
    {
      v76 = 0;
    }

    endDate2 = [v74 endDate];

    if (endDate2)
    {
      v78 = [EKRecurrenceEnd alloc];
      endDate3 = [v74 endDate];
      v80 = [v78 initWithEndDate:endDate3];
    }

    else if ([v74 endCount] < 1)
    {
      v80 = 0;
    }

    else
    {
      v80 = [[EKRecurrenceEnd alloc] initWithOccurrenceCount:{objc_msgSend(v74, "endCount")}];
    }

    v81 = [[EKRecurrenceRule alloc] initRecurrenceWithFrequency:v76 interval:objc_msgSend(v74 end:{"interval"), v80}];

    [v9 addRecurrenceRule:v81];
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  alerts = [eventCopy alerts];
  v83 = [alerts countByEnumeratingWithState:&v104 objects:v117 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v105;
    do
    {
      for (k = 0; k != v84; k = k + 1)
      {
        if (*v105 != v85)
        {
          objc_enumerationMutation(alerts);
        }

        v87 = *(*(&v104 + 1) + 8 * k);
        v88 = [EKAlarm alloc];
        [v87 doubleValue];
        v89 = [v88 initWithRelativeOffset:?];
        if (v89)
        {
          [v9 addAlarm:v89];
        }
      }

      v84 = [alerts countByEnumeratingWithState:&v104 objects:v117 count:16];
    }

    while (v84);
  }

  return v9;
}

- (BOOL)_crossesMultipleDays
{
  sections = [(CalendarAssistantUIController *)self sections];
  v3 = [sections count] > 1;

  return v3;
}

- (void)_openEvent:(id)event
{
  externalURL = [event externalURL];
  delegate = [(CalendarAssistantUIController *)self delegate];
  [delegate siriViewController:self openURL:externalURL completion:0];
}

- (double)desiredHeight
{
  view = [(CalendarAssistantUIController *)self view];
  [view bounds];
  v4 = v3;

  return v4;
}

- (void)tappedSingleEventGesture:(id)gesture
{
  if (![(CalendarAssistantUIController *)self isDraft])
  {
    events = [(CalendarAssistantUIController *)self events];
    firstObject = [events firstObject];
    [(CalendarAssistantUIController *)self _openEvent:firstObject];
  }
}

- (void)loadView
{
  if (([(CalendarAssistantUIController *)self isViewLoaded]& 1) == 0)
  {
    v3 = +[CalendarAssistantUIController openEventStore];
    [(CalendarAssistantUIController *)self setEventStore:v3];

    if ([(CalendarAssistantUIController *)self _buildEvents])
    {
      [(CalendarAssistantUIController *)self _buildSections];
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      [(CalendarAssistantUIController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
      v4 = [v22 assistantUILocalizedStringForKey:@"Calendar" value:&stru_C528 table:0];
      [(CalendarAssistantUIController *)self setTitle:v4];

      date = [(CalendarAssistantUIController *)self date];
      v5Date = [date date];
      v7 = CUIKLongDayLongMonthStringForDate();

      v8 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v9 = +[UIColor clearColor];
      [v8 setBackgroundColor:v9];

      [v8 setSeparatorStyle:0];
      [v8 setOpaque:0];
      [v8 setDelegate:self];
      [v8 setDataSource:self];
      [v8 _setMarginWidth:0.0];
      [v8 setShowsHorizontalScrollIndicator:0];
      [v8 setShowsVerticalScrollIndicator:0];
      [v8 setScrollsToTop:0];
      [v8 setScrollEnabled:0];
      [v8 setSectionHeaderTopPadding:0.0];
      v10 = +[AFPreferences sharedPreferences];
      enableDragAndDrop = [v10 enableDragAndDrop];

      if (enableDragAndDrop)
      {
        [v8 setDragDelegate:self];
      }

      delegate = [(CalendarAssistantUIController *)self delegate];
      [delegate siriViewControllerExpectedWidth:self];
      v14 = v13;

      [v8 setRowHeight:UITableViewAutomaticDimension];
      +[CalendarAssistantUIHeaderView headerHeight];
      [v8 setEstimatedSectionHeaderHeight:?];
      [v8 reloadData];
      [v8 layoutIfNeeded];
      [v8 setAutoresizingMask:18];
      [v8 contentSize];
      v16 = v15;
      [v8 setFrame:{0.0, 0.0, v14, v15}];
      v17 = v16 + 8.0;
      events = [(CalendarAssistantUIController *)self events];
      v19 = [events count];

      if (v19 == &dword_0 + 1)
      {
        [(CalendarAssistantUIController *)self setSubtitle:v7];
        CalRoundToScreenScale();
        v17 = v17 - v20;
        [v8 setSeparatorStyle:0];
      }

      v21 = [[UIView alloc] initWithFrame:{0.0, 0.0, v14, v17}];
      [v21 setAutoresizingMask:18];
      [v21 addSubview:v8];
      [(CalendarAssistantUIController *)self setView:v21];
    }
  }
}

- (id)dayView:(id)view eventsForStartDate:(id)date endDate:(id)endDate
{
  v6 = [NSMutableArray array:view];
  v7 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  events = [(CalendarAssistantUIController *)self events];
  v9 = [events countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(events);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isAllDay])
        {
          v14 = v6;
        }

        else
        {
          v14 = v7;
        }

        [v14 addObject:v13];
      }

      v10 = [events countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [CUIKOccurrencesCollection alloc];
  events2 = [(CalendarAssistantUIController *)self events];
  v17 = [v15 initWithOccurrences:events2 timedOccurrences:v7 allDayOccurrences:v6];

  return v17;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(CalendarAssistantUIController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(CalendarAssistantUIController *)self sections];
  v6 = [sections objectAtIndex:section];
  events = [v6 events];
  v8 = [events count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];

  return v4;
}

- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  session = [(CalendarAssistantUIController *)self dragItemForIndexPath:path, session];
  v8 = session;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v6 = [(CalendarAssistantUIController *)self dragItemForIndexPath:path, session, point.x, point.y];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (id)dragItemForIndexPath:(id)path
{
  pathCopy = path;
  sections = [(CalendarAssistantUIController *)self sections];
  v6 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  events = [v6 events];
  v8 = [pathCopy row];

  v9 = [events objectAtIndex:v8];

  v10 = objc_alloc_init(NSItemProvider);
  title = [v9 title];
  [v10 setSuggestedName:title];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_3AE4;
  v37[3] = &unk_C308;
  v12 = v9;
  v38 = v12;
  [v10 registerDataRepresentationForTypeIdentifier:@"com.apple.calendar.ics" visibility:0 loadHandler:v37];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_3B7C;
  v35[3] = &unk_C308;
  v13 = v12;
  v36 = v13;
  [v10 registerDataRepresentationForTypeIdentifier:@"com.apple.ical.ics" visibility:0 loadHandler:v35];
  v14 = kUINSUserActivityInternalType;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_3C14;
  v33[3] = &unk_C308;
  v15 = v13;
  v34 = v15;
  [v10 registerDataRepresentationForTypeIdentifier:v14 visibility:0 loadHandler:v33];
  v16 = +[CUIKEventDescriptionGenerator sharedGenerator];
  v17 = [v16 textRepresentationForEvent:v15 withTextFormat:0 showURI:0];

  identifier = [UTTypeUTF8PlainText identifier];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_3CC8;
  v31[3] = &unk_C308;
  v19 = v17;
  v32 = v19;
  [v10 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v31];

  identifier2 = [UTTypeUTF16PlainText identifier];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_3D64;
  v29[3] = &unk_C308;
  v21 = v19;
  v30 = v21;
  [v10 registerDataRepresentationForTypeIdentifier:identifier2 visibility:0 loadHandler:v29];

  v22 = [[UIDragItem alloc] initWithItemProvider:v10];
  calendar = [v15 calendar];
  if (calendar && (v24 = calendar, [v15 calendar], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isManaged"), v25, v24, (v26 & 1) != 0))
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  [v22 set_managementState:v27];

  return v22;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  v6 = +[UIColor siriui_platterTextColor];
  calTextLabel = [headerViewCopy calTextLabel];
  [calTextLabel setTextColor:v6];

  calTextLabel2 = [headerViewCopy calTextLabel];
  textColor = [calTextLabel2 textColor];
  overlayLabel = [headerViewCopy overlayLabel];

  [overlayLabel setTextColor:textColor];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sections = [(CalendarAssistantUIController *)self sections];
  v6 = [sections objectAtIndex:section];

  v7 = objc_alloc_init(CalendarAssistantUIHeaderView);
  date = [v6 date];
  if (date)
  {
    v9 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
    calTextLabel = [(CalendarAssistantUIHeaderView *)v7 calTextLabel];
    [calTextLabel setText:v9];

    v11 = CUIKGetOverlayCalendar();
    if (v11)
    {
      overlayLabel2 = [CUIKDateStrings monthDayStringForDate:date inCalendar:v11];
      overlayLabel = [(CalendarAssistantUIHeaderView *)v7 overlayLabel];
      [overlayLabel setText:overlayLabel2];
    }

    else
    {
      overlayLabel2 = [(CalendarAssistantUIHeaderView *)v7 overlayLabel];
      [overlayLabel2 setText:0];
    }
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(CalendarAssistantUIController *)self sections];
  v7 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  events = [v7 events];
  v9 = [pathCopy row];

  v10 = [events objectAtIndex:v9];

  if (v10 && [v10 refresh])
  {
    [(CalendarAssistantUIController *)self _openEvent:v10];
  }

  _objc_release_x1();
}

@end
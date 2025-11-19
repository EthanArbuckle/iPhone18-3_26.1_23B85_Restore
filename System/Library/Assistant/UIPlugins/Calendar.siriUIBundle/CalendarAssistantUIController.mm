@interface CalendarAssistantUIController
+ (id)openEventStore;
+ (void)closeEventStore;
- (BOOL)_buildEvents;
- (BOOL)_crossesMultipleDays;
- (CalendarAssistantUIController)initWithAceObject:(id)a3;
- (double)desiredHeight;
- (id)_eventFromAceEvent:(id)a3;
- (id)dayView:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5;
- (id)dragItemForIndexPath:(id)a3;
- (id)sashItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_buildSections;
- (void)_openEvent:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)tappedSingleEventGesture:(id)a3;
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

- (CalendarAssistantUIController)initWithAceObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = CalendarAssistantUIController;
    v5 = [(CalendarAssistantUIController *)&v9 init];
    CUIKInvalidateToday();
    self = v5;
    v6 = self;
  }

  else
  {
    v7 = objc_opt_class();
    NSLog(@"CalendarAssistantUIController: passed wrong type of class: %@", v7);
    v6 = 0;
  }

  return v6;
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
  v39 = [(CalendarAssistantUIController *)self snippet];
  v3 = [v39 events];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  [(CalendarAssistantUIController *)self setEvents:v4];

  v5 = [(CalendarAssistantUIController *)self snippet];
  v6 = [v5 confirmationOptions];
  [(CalendarAssistantUIController *)self setIsDraft:v6 != 0];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v3;
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
        v12 = [v11 identifier];
        v13 = v12;
        if (!v12 || ([v12 scheme], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "compare:options:", v41, 1), v14, v15) || -[CalendarAssistantUIController isDraft](self, "isDraft"))
        {
          v16 = [(CalendarAssistantUIController *)self delegate];
          v17 = [v11 identifier];
          v18 = [v16 siriViewController:self domainObjectForIdentifier:v17];

          if (!v18)
          {
            v18 = v11;
          }

          v19 = [(CalendarAssistantUIController *)self _eventFromAceEvent:v18];
          v20 = [(CalendarAssistantUIController *)self date];

          if (!v20)
          {
            v21 = [v19 startDate];
            v22 = [(CalendarAssistantUIController *)self eventStore];
            v23 = [v22 timeZone];
            v24 = [EKCalendarDate calendarDateWithDate:v21 timeZone:v23];
            [(CalendarAssistantUIController *)self setDate:v24];

            v7 = v40;
          }

          v25 = [(CalendarAssistantUIController *)self events];
          [v25 addObject:v19];
        }

        else
        {
          v26 = [(CalendarAssistantUIController *)self eventStore];
          v27 = [v11 identifier];
          v18 = [v26 _eventWithURI:v27 checkValid:1];

          if (v18)
          {
            v28 = [(CalendarAssistantUIController *)self date];

            if (!v28)
            {
              v29 = [v18 startDate];
              v30 = [(CalendarAssistantUIController *)self eventStore];
              v31 = [v30 timeZone];
              v32 = [EKCalendarDate calendarDateWithDate:v29 timeZone:v31];
              [(CalendarAssistantUIController *)self setDate:v32];

              v7 = v40;
            }

            v33 = [v11 startDate];
            [v18 setStartDate:v33];

            v34 = [v11 endDate];
            [v18 setEndDate:v34];

            v19 = [(CalendarAssistantUIController *)self events];
            [v19 addObject:v18];
          }

          else
          {
            v19 = [v11 identifier];
            NSLog(@"CalendarAssistantUIController: event not found: %@", v19);
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

  v36 = [(CalendarAssistantUIController *)self events];
  v37 = [v36 count];

  if (!v37)
  {
    NSLog(@"CalendarAssistantUIController: No viable events.");
  }

  return v37 != 0;
}

- (void)_buildSections
{
  v3 = [(CalendarAssistantUIController *)self events];
  [v3 sortUsingSelector:"compareStartDateWithEvent:"];
  v4 = [[NSMutableArray alloc] initWithCapacity:0];
  [(CalendarAssistantUIController *)self setSections:v4];

  v24 = [v3 count];
  if (v24 >= 26)
  {
    [(CalendarAssistantUIController *)self setHiddenEventCount:(v24 - 25)];
  }

  [(CalendarAssistantUIController *)self setAllDayEventsInSection:0];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
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

      v11 = [*(*(&v25 + 1) + 8 * v9) startCalendarDate];
      v12 = [v11 date];
      v13 = [(EKEventStore *)self->_eventStore timeZone];
      v14 = [EKCalendarDate calendarDateWithDate:v12 timeZone:v13];

      v15 = [v14 calendarDateForDay];
      v16 = [v15 date];

      if (!v8 || ([v8 date], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToDate:", v17), v17, (v18 & 1) == 0))
      {
        v19 = [CalendarAssistantUISnippetSection sectionWithDate:v16];

        v20 = [(CalendarAssistantUIController *)self sections];
        [v20 addObject:v19];

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

- (id)_eventFromAceEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v4 endDate];
  v7 = CalCopyTimeZone();
  if (!v6)
  {
    v121 = 0;
    v120 = 0;
    v123 = 0;
    v124 = 0;
    [v5 timeIntervalSinceReferenceDate];
    v122 = 1;
    CalAbsoluteTimeAddGregorianUnits();
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  v8 = [(CalendarAssistantUIController *)self eventStore];
  v9 = [EKEvent eventWithEventStore:v8];

  v10 = [v4 calendarId];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [(CalendarAssistantUIController *)self eventStore];
  v12 = [v4 calendarId];
  v13 = [v11 calendarWithExternalURI:v12];

  if (!v13)
  {
LABEL_5:
    v14 = [(CalendarAssistantUIController *)self eventStore];
    v13 = [v14 defaultCalendarForNewEvents];
  }

  v97 = v13;
  [v9 setCalendar:v13];
  v15 = [v4 title];
  [v9 setTitle:v15];

  v16 = [v4 location];
  [v9 setLocation:v16];

  v17 = [v4 notes];
  [v9 setNotes:v17];

  [v9 setStartDate:v5];
  [v9 setEndDate:v6];
  [v9 setTimeZone:v7];
  [v9 setAllDay:{objc_msgSend(v4, "allDay")}];
  v18 = [v4 attendees];
  v19 = [v9 calendar];
  v20 = [v19 source];
  v21 = [v20 constraints];
  v22 = [v21 supportsOutgoingInvitations];

  v98 = v6;
  v99 = v7;
  if (!v22)
  {
    v25 = 1;
    goto LABEL_10;
  }

  v23 = [v20 constraints];
  v24 = [v23 requiresOutgoingInvitationsInDefaultCalendar];

  if (v24)
  {
    v25 = [v19 isDefaultSchedulingCalendar] ^ 1;
LABEL_10:
    v100 = v25;
    goto LABEL_12;
  }

  v100 = 0;
LABEL_12:
  v96 = v19;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v18;
  v26 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v110;
    while (2)
    {
      v29 = v5;
      v30 = v20;
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v110 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v109 + 1) + 8 * i);
        v33 = [v32 data];
        if (v33)
        {

LABEL_24:
          v37 = 0;
          v20 = v30;
          v5 = v29;
          goto LABEL_25;
        }

        v34 = [v32 object];
        v35 = [v34 emails];
        v36 = [v35 count];

        if (v36)
        {
          goto LABEL_24;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
      v37 = 1;
      v20 = v30;
      v5 = v29;
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

  v95 = v20;
  if (![obj count] || !(v100 | v37))
  {
    v46 = [v4 title];
    [v9 setTitle:v46];
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

        v45 = [*(*(&v113 + 1) + 8 * j) displayText];
        [v39 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v113 objects:&v120 count:16];
    }

    while (v42);
  }

  v46 = [v39 count];
  v47 = [NSBundle bundleForClass:objc_opt_class()];
  v48 = v47;
  v49 = &CalAbsoluteTimeAddGregorianUnits_ptr;
  if (v46)
  {
    v94 = v5;
    if (v46 == &dword_0 + 2)
    {
      [v47 assistantUILocalizedStringForKey:@"%@ and %@ (two item format)" value:@"%@ and %@" table:0];
      v50 = v101 = v48;
      v51 = [v39 objectAtIndex:0];
      v52 = [v39 objectAtIndex:1];
      v46 = [NSString localizedStringWithValidatedFormat:v50 validFormatSpecifiers:@"%@%@" error:0, v51, v52];

      v48 = v101;
    }

    else
    {
      if (v46 != &dword_0 + 1)
      {
        v92 = v4;
        v93 = v46 - 1;
        v53 = v47;
        v54 = [v47 assistantUILocalizedStringForKey:@"%@ value:%@ (start format)" table:{@"%@, %@", 0}];
        v55 = [v39 objectAtIndex:0];
        v56 = [v39 objectAtIndex:1];
        v91 = v54;
        v57 = [NSString localizedStringWithValidatedFormat:v54 validFormatSpecifiers:@"%@%@" error:0, v55, v56];

        v102 = v53;
        if ((v46 - 1) < 3)
        {
          v64 = v57;
        }

        else
        {
          v58 = v46 - 3;
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
        v46 = [v66 localizedStringWithValidatedFormat:v65 validFormatSpecifiers:@"%@%@" error:0, v64, v67];

        v4 = v92;
        v5 = v94;
        v48 = v102;
        goto LABEL_47;
      }

      v46 = [v39 objectAtIndex:0];
    }

    v5 = v94;
  }

LABEL_47:

  v68 = [NSBundle bundleForClass:objc_opt_class()];
  v69 = [v68 assistantUILocalizedStringForKey:@"%1$@ with %2$@" value:&stru_C528 table:0];

  v70 = v49[67];
  v71 = [v4 title];
  v72 = [v70 localizedStringWithValidatedFormat:v69 validFormatSpecifiers:@"%@%@" error:0, v71, v46];
  [v9 setTitle:v72];

LABEL_48:
  memset(v108, 0, sizeof(v108));
  v73 = [v4 recurrences];
  if ([v73 countByEnumeratingWithState:v108 objects:v118 count:16])
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

    v77 = [v74 endDate];

    if (v77)
    {
      v78 = [EKRecurrenceEnd alloc];
      v79 = [v74 endDate];
      v80 = [v78 initWithEndDate:v79];
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
  v82 = [v4 alerts];
  v83 = [v82 countByEnumeratingWithState:&v104 objects:v117 count:16];
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
          objc_enumerationMutation(v82);
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

      v84 = [v82 countByEnumeratingWithState:&v104 objects:v117 count:16];
    }

    while (v84);
  }

  return v9;
}

- (BOOL)_crossesMultipleDays
{
  v2 = [(CalendarAssistantUIController *)self sections];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)_openEvent:(id)a3
{
  v5 = [a3 externalURL];
  v4 = [(CalendarAssistantUIController *)self delegate];
  [v4 siriViewController:self openURL:v5 completion:0];
}

- (double)desiredHeight
{
  v2 = [(CalendarAssistantUIController *)self view];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (void)tappedSingleEventGesture:(id)a3
{
  if (![(CalendarAssistantUIController *)self isDraft])
  {
    v5 = [(CalendarAssistantUIController *)self events];
    v4 = [v5 firstObject];
    [(CalendarAssistantUIController *)self _openEvent:v4];
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

      v5 = [(CalendarAssistantUIController *)self date];
      v6 = [v5 date];
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
      v11 = [v10 enableDragAndDrop];

      if (v11)
      {
        [v8 setDragDelegate:self];
      }

      v12 = [(CalendarAssistantUIController *)self delegate];
      [v12 siriViewControllerExpectedWidth:self];
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
      v18 = [(CalendarAssistantUIController *)self events];
      v19 = [v18 count];

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

- (id)dayView:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5
{
  v6 = [NSMutableArray array:a3];
  v7 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(CalendarAssistantUIController *)self events];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
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

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [CUIKOccurrencesCollection alloc];
  v16 = [(CalendarAssistantUIController *)self events];
  v17 = [v15 initWithOccurrences:v16 timedOccurrences:v7 allDayOccurrences:v6];

  return v17;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CalendarAssistantUIController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CalendarAssistantUIController *)self sections];
  v6 = [v5 objectAtIndex:a4];
  v7 = [v6 events];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];

  return v4;
}

- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v5 = [(CalendarAssistantUIController *)self dragItemForIndexPath:a5, a4];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)tableView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v6 = [(CalendarAssistantUIController *)self dragItemForIndexPath:a5, a4, a6.x, a6.y];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (id)dragItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CalendarAssistantUIController *)self sections];
  v6 = [v5 objectAtIndex:{objc_msgSend(v4, "section")}];
  v7 = [v6 events];
  v8 = [v4 row];

  v9 = [v7 objectAtIndex:v8];

  v10 = objc_alloc_init(NSItemProvider);
  v11 = [v9 title];
  [v10 setSuggestedName:v11];

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

  v18 = [UTTypeUTF8PlainText identifier];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_3CC8;
  v31[3] = &unk_C308;
  v19 = v17;
  v32 = v19;
  [v10 registerDataRepresentationForTypeIdentifier:v18 visibility:0 loadHandler:v31];

  v20 = [UTTypeUTF16PlainText identifier];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_3D64;
  v29[3] = &unk_C308;
  v21 = v19;
  v30 = v21;
  [v10 registerDataRepresentationForTypeIdentifier:v20 visibility:0 loadHandler:v29];

  v22 = [[UIDragItem alloc] initWithItemProvider:v10];
  v23 = [v15 calendar];
  if (v23 && (v24 = v23, [v15 calendar], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isManaged"), v25, v24, (v26 & 1) != 0))
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

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v5 = a4;
  v6 = +[UIColor siriui_platterTextColor];
  v7 = [v5 calTextLabel];
  [v7 setTextColor:v6];

  v10 = [v5 calTextLabel];
  v8 = [v10 textColor];
  v9 = [v5 overlayLabel];

  [v9 setTextColor:v8];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(CalendarAssistantUIController *)self sections];
  v6 = [v5 objectAtIndex:a4];

  v7 = objc_alloc_init(CalendarAssistantUIHeaderView);
  v8 = [v6 date];
  if (v8)
  {
    v9 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
    v10 = [(CalendarAssistantUIHeaderView *)v7 calTextLabel];
    [v10 setText:v9];

    v11 = CUIKGetOverlayCalendar();
    if (v11)
    {
      v12 = [CUIKDateStrings monthDayStringForDate:v8 inCalendar:v11];
      v13 = [(CalendarAssistantUIHeaderView *)v7 overlayLabel];
      [v13 setText:v12];
    }

    else
    {
      v12 = [(CalendarAssistantUIHeaderView *)v7 overlayLabel];
      [v12 setText:0];
    }
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CalendarAssistantUIController *)self sections];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "section")}];
  v8 = [v7 events];
  v9 = [v5 row];

  v10 = [v8 objectAtIndex:v9];

  if (v10 && [v10 refresh])
  {
    [(CalendarAssistantUIController *)self _openEvent:v10];
  }

  _objc_release_x1();
}

@end
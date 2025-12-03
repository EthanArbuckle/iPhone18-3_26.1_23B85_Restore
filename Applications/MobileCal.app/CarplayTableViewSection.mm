@interface CarplayTableViewSection
+ (void)registerClassesOnTableView:(id)view;
- (BOOL)_cellInRowIsCollapsedAllDayCell:(int64_t)cell;
- (CarplayTableViewSection)initWithPaddingCellEnabled:(BOOL)enabled titleForSectionHeader:(id)header shouldCollapseMultipleAllDayEvents:(BOOL)events model:(id)model;
- (id)_reusableOccurrenceTableViewCellForEvent:(id)event underDate:(id)date inTableView:(id)view;
- (id)cellForRow:(int64_t)row underDate:(id)date inTableView:(id)view;
- (id)headerForSectionInTableView:(id)view;
- (id)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (int64_t)_birthdayCount;
- (int64_t)numberOfRows;
- (void)updateWithEvents:(id)events;
@end

@implementation CarplayTableViewSection

- (CarplayTableViewSection)initWithPaddingCellEnabled:(BOOL)enabled titleForSectionHeader:(id)header shouldCollapseMultipleAllDayEvents:(BOOL)events model:(id)model
{
  headerCopy = header;
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = CarplayTableViewSection;
  v13 = [(CarplayTableViewSection *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_paddingCellEnabled = enabled;
    objc_storeStrong(&v13->_sectionTitle, header);
    v14->_shouldCollapseAllDay = events;
    v14->_currentlyCollapsed = 1;
    objc_storeStrong(&v14->_model, model);
  }

  return v14;
}

- (void)updateWithEvents:(id)events
{
  v4 = [NSArray arrayWithArray:events];
  events = self->_events;
  self->_events = v4;

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_events;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isAllDay])
        {
          v14 = v6;
        }

        else
        {
          v14 = v7;
        }

        [(NSArray *)v14 addObject:v13];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  allDayEvents = self->_allDayEvents;
  self->_allDayEvents = v6;
  v16 = v6;

  timedEvents = self->_timedEvents;
  self->_timedEvents = v7;
}

- (int64_t)numberOfRows
{
  paddingCellEnabled = self->_paddingCellEnabled;
  if (![(NSArray *)self->_events count])
  {
    return paddingCellEnabled + 1;
  }

  if ([(CarplayTableViewSection *)self _shouldCollapseAllDayEventsAccordingToPolicy])
  {
    return [(NSArray *)self->_timedEvents count]+ paddingCellEnabled + 1;
  }

  return [(NSArray *)self->_events count]+ paddingCellEnabled;
}

- (id)cellForRow:(int64_t)row underDate:(id)date inTableView:(id)view
{
  dateCopy = date;
  viewCopy = view;
  if ([(CarplayTableViewSection *)self _cellInRowIsCollapsedAllDayCell:row])
  {
    v10 = +[CarplayCollapsedAllDayTableViewCell reuseIdentifier];
    v11 = [[CarplayCollapsedAllDayTableViewCell alloc] initWithStyle:0 reuseIdentifier:v10];
    [(CarplayCollapsedAllDayTableViewCell *)v11 configureWithAllDayCount:[(NSArray *)self->_allDayEvents count]- [(CarplayTableViewSection *)self _birthdayCount] birthdayCount:[(CarplayTableViewSection *)self _birthdayCount]];
  }

  else
  {
    if (!([(NSArray *)self->_events count]| row) || self->_paddingCellEnabled && [(CarplayTableViewSection *)self numberOfRows]- 1 == row)
    {
      v11 = objc_opt_new();
      goto LABEL_12;
    }

    if ([(CarplayTableViewSection *)self _shouldCollapseAllDayEventsAccordingToPolicy])
    {
      timedEvents = self->_timedEvents;
      rowCopy = row - 1;
    }

    else
    {
      timedEvents = self->_events;
      rowCopy = row;
    }

    v10 = [(NSArray *)timedEvents objectAtIndexedSubscript:rowCopy];
    v11 = [(CarplayTableViewSection *)self _reusableOccurrenceTableViewCellForEvent:v10 underDate:dateCopy inTableView:viewCopy];
  }

LABEL_12:

  return v11;
}

- (id)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[CarplayTableViewSection _cellInRowIsCollapsedAllDayCell:](self, "_cellInRowIsCollapsedAllDayCell:", [pathCopy row]))
  {
    v8 = dispatch_time(0, 480000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100146CD0;
    block[3] = &unk_10020EC68;
    block[4] = self;
    v9 = viewCopy;
    v41 = v9;
    dispatch_after(v8, &_dispatch_main_q, block);
    v10 = objc_opt_new();
    if ([(NSArray *)self->_allDayEvents count]>= 2)
    {
      v11 = 1;
      do
      {
        v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v11, [pathCopy section]);
        [v10 addObject:v12];

        ++v11;
      }

      while (v11 < [(NSArray *)self->_allDayEvents count]);
    }

    v13 = [v9 cellForRowAtIndexPath:pathCopy];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100146CE4;
    v35[3] = &unk_10020F2B8;
    v35[4] = self;
    v36 = pathCopy;
    v37 = v9;
    v38 = v13;
    v39 = v10;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100146D90;
    v33[3] = &unk_10020EB98;
    v34 = v37;
    v14 = v10;
    v15 = v13;
    [v34 performBatchUpdates:v35 completion:v33];

    v16 = 0;
  }

  else
  {
    if ([(CarplayTableViewSection *)self _shouldCollapseAllDayEventsAccordingToPolicy])
    {
      timedEvents = self->_timedEvents;
      v18 = [pathCopy row] - 1;
    }

    else
    {
      timedEvents = self->_events;
      v18 = [pathCopy row];
    }

    v19 = [(NSArray *)timedEvents objectAtIndexedSubscript:v18];
    birthdayContactIdentifier = [v19 birthdayContactIdentifier];

    if (birthdayContactIdentifier)
    {
      v21 = +[CalContactsProvider defaultProvider];
      birthdayContactIdentifier2 = [v19 birthdayContactIdentifier];
      v23 = +[CNStarkCardViewController descriptorForRequiredKeys];
      v45 = v23;
      v24 = [NSArray arrayWithObjects:&v45 count:1];
      v25 = [v21 unifiedContactWithIdentifier:birthdayContactIdentifier2 keysToFetch:v24];

      v16 = [CNStarkCardViewController starkCardControllerForCalendarEventWithContact:v25];
    }

    else if ([v19 isIntegrationEvent])
    {
      if ([v19 CUIK_reminderShouldBeEditable])
      {
        [v19 setCompleted:{objc_msgSend(v19, "completed") ^ 1}];
        eKUI_editor = [viewCopy EKUI_editor];
        v32 = 0;
        v27 = [eKUI_editor saveEvent:v19 span:0 error:&v32];
        v28 = v32;

        if ((v27 & 1) == 0)
        {
          v29 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Couldn't complete/uncomplete event: %@", buf, 0xCu);
          }
        }

        v42 = pathCopy;
        v30 = [NSArray arrayWithObjects:&v42 count:1];
        [viewCopy reloadRowsAtIndexPaths:v30 withRowAnimation:100];
      }

      v16 = 0;
    }

    else
    {
      v16 = [[CarplayDetailViewController alloc] initWithEvent:v19 showDayName:0];
    }
  }

  return v16;
}

- (id)headerForSectionInTableView:(id)view
{
  if (self->_sectionTitle)
  {
    viewCopy = view;
    v5 = +[CarplayTableViewHeaderView reuseIdentifier];
    v6 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v5];

    [v6 setHeaderText:self->_sectionTitle];
    [v6 setAnyCalendarsHiddenByFocus:{-[CUIKCalendarModel focusFilterMode](self->_model, "focusFilterMode") == 1}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)registerClassesOnTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[CarplayTableViewHeaderView reuseIdentifier];
  [viewCopy registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [viewCopy registerClass:v6 forCellReuseIdentifier:v8];

  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [viewCopy registerClass:v9 forCellReuseIdentifier:v11];

  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [viewCopy registerClass:v12 forCellReuseIdentifier:v14];

  v15 = objc_opt_class();
  v16 = +[CarplayCollapsedAllDayTableViewCell reuseIdentifier];
  [viewCopy registerClass:v15 forCellReuseIdentifier:v16];
}

- (id)_reusableOccurrenceTableViewCellForEvent:(id)event underDate:(id)date inTableView:(id)view
{
  eventCopy = event;
  dateCopy = date;
  if ([eventCopy isReminderIntegrationEvent])
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = EKUIListViewReminderCell;
LABEL_5:
    v12 = [[v10 alloc] initForCarplayWithReuseIdentifier:v9];
    [v12 updateWithEvent:eventCopy dimmed:0];
    goto LABEL_7;
  }

  if ([eventCopy isAllDay])
  {
    v11 = objc_opt_class();
    v9 = NSStringFromClass(v11);
    v10 = EKUIListViewAllDayEventCell;
    goto LABEL_5;
  }

  v13 = objc_opt_class();
  v9 = NSStringFromClass(v13);
  v12 = [[EKUIListViewTimedEventCell alloc] initForCarplayWithReuseIdentifier:v9];
  v14 = +[NSCalendar currentCalendar];
  startDate = [eventCopy startDate];
  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  v17 = [v14 cal_isMultidayEventForUIWithStartDate:startDate endDate:endDateUnadjustedForLegacyClients];

  [v12 updateWithEvent:eventCopy isMultiday:v17 occurrenceStartDate:dateCopy dimmed:0];
LABEL_7:

  return v12;
}

- (int64_t)_birthdayCount
{
  allDayEvents = self->_allDayEvents;
  v3 = [NSPredicate predicateWithBlock:&stru_1002124C8];
  v4 = [(NSArray *)allDayEvents filteredArrayUsingPredicate:v3];
  v5 = [v4 count];

  return v5;
}

- (BOOL)_cellInRowIsCollapsedAllDayCell:(int64_t)cell
{
  result = [(CarplayTableViewSection *)self _shouldCollapseAllDayEventsAccordingToPolicy];
  if (cell)
  {
    return 0;
  }

  return result;
}

@end
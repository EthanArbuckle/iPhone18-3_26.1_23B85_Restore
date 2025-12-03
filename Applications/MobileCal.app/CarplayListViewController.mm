@interface CarplayListViewController
- (BOOL)_anyOccurrencesAvailable:(int64_t)available;
- (BOOL)_shouldShowNoEventsView;
- (BOOL)_shouldShowTomorrowSection;
- (CarplayListViewController)initWithModel:(id)model;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_allDayOccurrences:(int64_t)occurrences;
- (id)_allFetchedOccurrences:(int64_t)occurrences;
- (id)_createListView;
- (id)_currentDateComponents;
- (id)_timedOccurrences:(int64_t)occurrences;
- (id)sharedManager;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)sectionForEvent:(id)event;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_databaseDidChange:(id)change;
- (void)_eventFetchCompleted;
- (void)_focusModeConfigurationChanged;
- (void)_forceUpdateCell:(id)cell;
- (void)_loadAndShowAppropriateContentView;
- (void)_localeChanged;
- (void)_refreshTodayView;
- (void)_setShowingNoEventsMode:(BOOL)mode;
- (void)_setViewStatesForCachedEventCollection;
- (void)_showListView;
- (void)_showNoEventsView;
- (void)_significantTimeChange:(id)change;
- (void)_updateContent;
- (void)scrollToDate:(id)date;
- (void)setViewControllerTitleForSelectedEventInSection:(int64_t)section;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CarplayListViewController

- (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033DD4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  if (qword_100251870 != -1)
  {
    dispatch_once(&qword_100251870, block);
  }

  return qword_100251868;
}

- (CarplayListViewController)initWithModel:(id)model
{
  modelCopy = model;
  v39.receiver = self;
  v39.super_class = CarplayListViewController;
  v6 = [(CarplayListViewController *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    _createListView = [(CarplayListViewController *)v7 _createListView];
    listView = v7->_listView;
    v7->_listView = _createListView;

    v10 = objc_opt_new();
    noEventsView = v7->_noEventsView;
    v7->_noEventsView = v10;

    [(CarplayNoEventsView *)v7->_noEventsView setAnyCalendarsHiddenByFocus:[(CUIKCalendarModel *)v7->_model focusFilterMode]== 1];
    v12 = +[NSMutableSet set];
    changedObjectIDs = v7->_changedObjectIDs;
    v7->_changedObjectIDs = v12;

    v7->_needsForceRefresh = 1;
    v14 = +[NSMutableDictionary dictionary];
    calendarColorMapping = v7->_calendarColorMapping;
    v7->_calendarColorMapping = v14;

    v16 = [EKCalendarVisibilityManager alloc];
    eventStore = [modelCopy eventStore];
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_100034194;
    v37 = &unk_10020EB00;
    v18 = v7;
    v38 = v18;
    v19 = [v16 initWithEventStore:eventStore visibilityChangedCallback:&v34 queue:&_dispatch_main_q];
    visibilityManager = v18->_visibilityManager;
    v18->_visibilityManager = v19;

    v21 = [CarplayTableViewSection alloc];
    v22 = CUIKNowDate();
    v23 = CUIKStringForDateAndDayOfWeekInCalendarTimezoneWithFormattingContext();
    v24 = [(CarplayTableViewSection *)v21 initWithPaddingCellEnabled:1 titleForSectionHeader:v23 shouldCollapseMultipleAllDayEvents:1 model:v7->_model, v34, v35, v36, v37];
    todaySection = v18->_todaySection;
    v18->_todaySection = v24;

    v26 = [CarplayTableViewSection alloc];
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"Tomorrow" value:&stru_1002133B8 table:0];
    v29 = [(CarplayTableViewSection *)v26 initWithPaddingCellEnabled:0 titleForSectionHeader:v28 shouldCollapseMultipleAllDayEvents:1 model:v7->_model];
    tomorrowSection = v18->_tomorrowSection;
    v18->_tomorrowSection = v29;

    v40[0] = v18->_todaySection;
    v40[1] = v18->_tomorrowSection;
    v31 = [NSArray arrayWithObjects:v40 count:2];
    sections = v18->_sections;
    v18->_sections = v31;
  }

  return v7;
}

- (int64_t)sectionForEvent:(id)event
{
  eventCopy = event;
  if ([(CarplayListViewController *)self _shouldShowNoEventsView])
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(CarplayListViewController *)self _allFetchedOccurrences:0];
    v5 = 0;
    if (([v6 containsObject:eventCopy] & 1) == 0)
    {
      if (!-[CarplayListViewController _shouldShowTomorrowSection](self, "_shouldShowTomorrowSection") || (v5 = 1, -[CarplayListViewController _allFetchedOccurrences:](self, "_allFetchedOccurrences:", 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:eventCopy], v7, (v8 & 1) == 0))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v5;
}

- (void)scrollToDate:(id)date
{
  dateCopy = date;
  if ([(CarplayListViewController *)self numberOfSectionsInTableView:self->_listView]>= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1.79769313e308;
    do
    {
      if ([(CarplayListViewController *)self tableView:self->_listView numberOfRowsInSection:v5]>= 1)
      {
        v7 = 0;
        do
        {
          v8 = [NSIndexPath indexPathForRow:v7 inSection:v5];
          v9 = [(CarplayListViewController *)self tableView:self->_listView cellForRowAtIndexPath:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            event = [v9 event];
            startCalendarDate = [event startCalendarDate];

            if (startCalendarDate)
            {
              [dateCopy differenceInSeconds:startCalendarDate];
              if (v12 < v6)
              {
                v13 = v12;
                if (v12 >= 0.0)
                {
                  v14 = v8;

                  v6 = v13;
                  v4 = v14;
                }
              }
            }
          }

          else
          {
            startCalendarDate = 0;
          }

          ++v7;
        }

        while (v7 < [(CarplayListViewController *)self tableView:self->_listView numberOfRowsInSection:v5]);
      }

      ++v5;
    }

    while (v5 < [(CarplayListViewController *)self numberOfSectionsInTableView:self->_listView]);
    if (v4)
    {
      v15 = kCalUILogCarplayHandle;
      if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v18 = v4;
        v19 = 2048;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Scrolling list to indexPath: %@, with foundDifference: %f", buf, 0x16u);
      }

      [(UITableView *)self->_listView scrollToRowAtIndexPath:v4 atScrollPosition:1 animated:1];
    }
  }
}

- (void)setViewControllerTitleForSelectedEventInSection:(int64_t)section
{
  v5 = CUIKNowDate();
  if (section == 1)
  {
    v10 = v5;
    v6 = CUIKCalendar();
    v7 = [v10 dateByAddingDays:1 inCalendar:v6];

    v5 = v7;
  }

  v11 = v5;
  v8 = CUIKStringForDate();
  navigationItem = [(CarplayListViewController *)self navigationItem];
  [navigationItem setTitle:v8];
}

- (id)_createListView
{
  v3 = [[CarplayHeaderFooterTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarplayHeaderFooterTableView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarplayHeaderFooterTableView *)v3 setDelegate:self];
  [(CarplayHeaderFooterTableView *)v3 setDataSource:self];
  if (CalSystemSolariumEnabled())
  {
    [(CarplayHeaderFooterTableView *)v3 setSeparatorStyle:0];
    v4 = +[UIColor clearColor];
    [(CarplayHeaderFooterTableView *)v3 setBackgroundColor:v4];
  }

  [CarplayTableViewSection registerClassesOnTableView:v3];

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(CarplayListViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_databaseDidChange:" name:EKEventStoreChangedNotification object:0];
  [v6 addObserver:self selector:"_significantTimeChange:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v6 addObserver:self selector:"_significantTimeChange:" name:CUIKTodayChangedNotification object:0];
  [v6 addObserver:self selector:"_eventFetchCompleted" name:@"com.apple.mobilecal.carplay.kEventFetchCompletedNotification" object:0];
  [v6 addObserver:self selector:"_localeChanged" name:CUIKLocaleChangedNotification object:0];
  [v6 addObserver:self selector:"_focusModeConfigurationChanged" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:self->_model];
  [(CarplayListViewController *)self _refreshTodayView];
  self->_needsForceRefresh = 1;
  [(CarplayListViewController *)self _setViewStatesForCachedEventCollection];
  v7.receiver = self;
  v7.super_class = CarplayListViewController;
  [(CarplayListViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EKEventStoreChangedNotification object:0];
  [v5 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v5 removeObserver:self name:CUIKTodayChangedNotification object:0];
  [v5 removeObserver:self name:@"com.apple.mobilecal.carplay.kEventFetchCompletedNotification" object:0];
  [v5 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v5 removeObserver:self name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:self->_model];
  navigationController = [(CarplayListViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  v7.receiver = self;
  v7.super_class = CarplayListViewController;
  [(CarplayListViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CarplayListViewController;
  [(CarplayListViewController *)&v5 viewDidLoad];
  if (CalSystemSolariumEnabled())
  {
    view = [(CarplayListViewController *)self view];
    v4 = +[UIColor clearColor];
    [view setBackgroundColor:v4];
  }
}

- (void)_databaseDidChange:(id)change
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034A28;
  v5[3] = &unk_10020EC68;
  changeCopy = change;
  selfCopy = self;
  v4 = changeCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_significantTimeChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034B40;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_localeChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034C78;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_focusModeConfigurationChanged
{
  [(UITableView *)self->_listView reloadData];
  [(CarplayNoEventsView *)self->_noEventsView setAnyCalendarsHiddenByFocus:[(CUIKCalendarModel *)self->_model focusFilterMode]== 1];

  [(CarplayListViewController *)self _refreshTodayView];
}

- (void)_refreshTodayView
{
  sharedManager = [(CarplayListViewController *)self sharedManager];
  _currentDateComponents = [(CarplayListViewController *)self _currentDateComponents];
  [sharedManager reloadEvents:_currentDateComponents];
}

- (void)_eventFetchCompleted
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034DC8;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_setViewStatesForCachedEventCollection
{
  [(CarplayListViewController *)self _loadAndShowAppropriateContentView];

  [(CarplayListViewController *)self _updateContent];
}

- (BOOL)_shouldShowTomorrowSection
{
  if (![(CarplayListViewController *)self _anyOccurrencesAvailable:1])
  {
    return 0;
  }

  if (![(CarplayListViewController *)self _anyOccurrencesAvailable:0])
  {
    return 1;
  }

  _currentDateComponents = [(CarplayListViewController *)self _currentDateComponents];
  v4 = [_currentDateComponents hour] > 16;

  return v4;
}

- (BOOL)_shouldShowNoEventsView
{
  if ([(CarplayListViewController *)self _anyOccurrencesAvailable:0])
  {
    return 0;
  }

  else
  {
    return ![(CarplayListViewController *)self _anyOccurrencesAvailable:1];
  }
}

- (void)_loadAndShowAppropriateContentView
{
  _shouldShowNoEventsView = [(CarplayListViewController *)self _shouldShowNoEventsView];

  [(CarplayListViewController *)self _setShowingNoEventsMode:_shouldShowNoEventsView];
}

- (void)_updateContent
{
  selfCopy = self;
  if ([(CarplayListViewController *)self _shouldShowNoEventsView])
  {
    return;
  }

  [(CarplayListViewController *)selfCopy setShowingTomorrowSection:[(CarplayListViewController *)selfCopy _shouldShowTomorrowSection]];
  [(CarplayTableViewSection *)selfCopy->_todaySection setPaddingCellEnabled:[(CarplayListViewController *)selfCopy showingTomorrowSection]];
  v3 = [(CarplayListViewController *)selfCopy _allFetchedOccurrences:0];
  v4 = 1;
  v5 = [(CarplayListViewController *)selfCopy _allFetchedOccurrences:1];
  events = [(CarplayTableViewSection *)selfCopy->_todaySection events];
  events2 = [(CarplayTableViewSection *)selfCopy->_tomorrowSection events];
  v8 = 72;
  v9 = &selRef__splitViewController_didEndResizingColumn_;
  v10 = &selRef__splitViewController_didEndResizingColumn_;
  v77 = events2;
  v78 = events;
  v80 = v5;
  if (!selfCopy->_needsForceRefresh)
  {
    v11 = events2;
    if ([v3 isEqualToArray:events] && objc_msgSend(v5, "isEqualToArray:", v11))
    {
      if ([(NSMutableSet *)selfCopy->_changedObjectIDs count])
      {
        v71 = 72;
        v72 = v3;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = v3;
        v12 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
        if (v12)
        {
          v13 = v12;
          v74 = *v95;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v95 != v74)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v94 + 1) + 8 * v14);
            changedObjectIDs = selfCopy->_changedObjectIDs;
            objectID = [v15 objectID];
            if (([(NSMutableSet *)changedObjectIDs containsObject:objectID]& 1) != 0)
            {
              break;
            }

            calendarColorMapping = selfCopy->_calendarColorMapping;
            calendar = [v15 calendar];
            objectID2 = [calendar objectID];
            v21 = [(NSMutableDictionary *)calendarColorMapping objectForKeyedSubscript:objectID2];
            calendar2 = [v15 calendar];
            colorString = [calendar2 colorString];
            v24 = [v21 isEqualToString:colorString];

            if (!v24)
            {
LABEL_50:
              v4 = 1;
              goto LABEL_51;
            }

            if (v13 == ++v14)
            {
              v13 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
              v5 = v80;
              if (v13)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          obj = v5;
          v25 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
          if (!v25)
          {
LABEL_24:
            v4 = 0;
LABEL_51:
            v8 = v71;
            v3 = v72;
            v10 = &selRef__splitViewController_didEndResizingColumn_;
            v9 = &selRef__splitViewController_didEndResizingColumn_;
            goto LABEL_52;
          }

          v26 = v25;
          v75 = *v91;
LABEL_17:
          v27 = 0;
          while (1)
          {
            if (*v91 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v90 + 1) + 8 * v27);
            v29 = selfCopy->_changedObjectIDs;
            objectID = [v28 objectID];
            if (([(NSMutableSet *)v29 containsObject:objectID]& 1) != 0)
            {
              break;
            }

            v30 = selfCopy->_calendarColorMapping;
            calendar3 = [v28 calendar];
            objectID3 = [calendar3 objectID];
            v33 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:objectID3];
            calendar4 = [v28 calendar];
            colorString2 = [calendar4 colorString];
            v36 = [v33 isEqualToString:colorString2];

            if (!v36)
            {
              goto LABEL_50;
            }

            if (v26 == ++v27)
            {
              v26 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
              if (v26)
              {
                goto LABEL_17;
              }

              goto LABEL_24;
            }
          }
        }

        v8 = v71;
        v3 = v72;
        v9 = &selRef__splitViewController_didEndResizingColumn_;

        v4 = 1;
        v10 = &selRef__splitViewController_didEndResizingColumn_;
LABEL_52:

        goto LABEL_26;
      }

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

LABEL_26:
  v76 = v4;
  [*(&selfCopy->super.super.super.isa + *(v9 + 264)) removeAllObjects];
  *(&selfCopy->super.super.super.isa + v8) = 0;
  v37 = *(v10 + 266);
  [*(&selfCopy->super.super.super.isa + v37) removeAllObjects];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v79 = v3;
  v38 = [v79 countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v87;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v87 != v40)
        {
          objc_enumerationMutation(v79);
        }

        v42 = *(*(&v86 + 1) + 8 * i);
        v43 = *(&selfCopy->super.super.super.isa + v37);
        calendar5 = [v42 calendar];
        objectID4 = [calendar5 objectID];
        v46 = [v43 objectForKeyedSubscript:objectID4];

        if (!v46)
        {
          calendar6 = [v42 calendar];
          colorString3 = [calendar6 colorString];
          v49 = *(&selfCopy->super.super.super.isa + v37);
          calendar7 = [v42 calendar];
          objectID5 = [calendar7 objectID];
          [v49 setObject:colorString3 forKeyedSubscript:objectID5];
        }
      }

      v39 = [v79 countByEnumeratingWithState:&v86 objects:v99 count:16];
    }

    while (v39);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = v80;
  v53 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v83;
    do
    {
      for (j = 0; j != v54; j = j + 1)
      {
        if (*v83 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v82 + 1) + 8 * j);
        v58 = *(&selfCopy->super.super.super.isa + v37);
        calendar8 = [v57 calendar];
        objectID6 = [calendar8 objectID];
        v61 = [v58 objectForKeyedSubscript:objectID6];

        if (!v61)
        {
          calendar9 = [v57 calendar];
          colorString4 = [calendar9 colorString];
          v63 = *(&selfCopy->super.super.super.isa + v37);
          calendar10 = [v57 calendar];
          [calendar10 objectID];
          v65 = v37;
          v66 = v54;
          v67 = v55;
          v68 = selfCopy;
          v70 = v69 = v52;
          [v63 setObject:colorString4 forKeyedSubscript:v70];

          v52 = v69;
          selfCopy = v68;
          v55 = v67;
          v54 = v66;
          v37 = v65;
        }
      }

      v54 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v54);
  }

  if (v76)
  {
    [(CarplayTableViewSection *)selfCopy->_todaySection updateWithEvents:v79];
    [(CarplayTableViewSection *)selfCopy->_tomorrowSection updateWithEvents:v52];
    [(UITableView *)selfCopy->_listView reloadData];
  }
}

- (void)_setShowingNoEventsMode:(BOOL)mode
{
  if (mode)
  {
    [(UITableView *)self->_listView removeFromSuperview];

    [(CarplayListViewController *)self _showNoEventsView];
  }

  else
  {
    [(CarplayNoEventsView *)self->_noEventsView removeFromSuperview];

    [(CarplayListViewController *)self _showListView];
  }
}

- (void)_showNoEventsView
{
  [(CarplayNoEventsView *)self->_noEventsView removeFromSuperview];
  view = [(CarplayListViewController *)self view];
  [view addSubview:self->_noEventsView];

  leadingAnchor = [(CarplayNoEventsView *)self->_noEventsView leadingAnchor];
  view2 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  trailingAnchor = [(CarplayNoEventsView *)self->_noEventsView trailingAnchor];
  view3 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v15;
  bottomAnchor = [(CarplayNoEventsView *)self->_noEventsView bottomAnchor];
  view4 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[2] = v7;
  topAnchor = [(CarplayNoEventsView *)self->_noEventsView topAnchor];
  view5 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_showListView
{
  v3 = self->_listView;
  v25 = objc_opt_new();
  [(UITableView *)v3 removeFromSuperview];
  view = [(CarplayListViewController *)self view];
  [view addSubview:v3];

  topAnchor = [(UITableView *)v3 topAnchor];
  view2 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v25 addObject:v9];

  leadingAnchor = [(UITableView *)v3 leadingAnchor];
  view3 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v25 addObject:v14];

  view4 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [(UITableView *)v3 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v25 addObject:v19];

  bottomAnchor = [(UITableView *)v3 bottomAnchor];

  view5 = [(CarplayListViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v25 addObject:v24];

  [NSLayoutConstraint activateConstraints:v25];
}

- (id)_currentDateComponents
{
  v2 = CUIKCalendar();
  v3 = CUIKNowDate();
  v4 = [v2 components:254 fromDate:v3];

  v5 = CUIKCalendar();
  [v4 setCalendar:v5];

  return v4;
}

- (BOOL)_anyOccurrencesAvailable:(int64_t)available
{
  v3 = [(CarplayListViewController *)self _allFetchedOccurrences:available];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_allFetchedOccurrences:(int64_t)occurrences
{
  sharedManager = [(CarplayListViewController *)self sharedManager];
  v5 = [sharedManager collectionForDayType:occurrences];
  occurrences = [v5 occurrences];

  return occurrences;
}

- (id)_timedOccurrences:(int64_t)occurrences
{
  sharedManager = [(CarplayListViewController *)self sharedManager];
  v5 = [sharedManager collectionForDayType:occurrences];
  timedOccurrences = [v5 timedOccurrences];

  return timedOccurrences;
}

- (id)_allDayOccurrences:(int64_t)occurrences
{
  sharedManager = [(CarplayListViewController *)self sharedManager];
  v5 = [sharedManager collectionForDayType:occurrences];
  allDayOccurrences = [v5 allDayOccurrences];

  return allDayOccurrences;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(CarplayListViewController *)self showingTomorrowSection])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  [v4 heightForHeaderInSection];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSArray *)sections objectAtIndexedSubscript:section];
  v8 = [v7 headerForSectionInTableView:viewCopy];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CarplayUtilities dateForSection:](CarplayUtilities, "dateForSection:", [pathCopy section]);
  v9 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v10 = [pathCopy row];

  v11 = [v9 cellForRow:v10 underDate:v8 inTableView:viewCopy];

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v8 = [v7 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];

  if (v8)
  {
    -[CarplayListViewController setViewControllerTitleForSelectedEventInSection:](self, "setViewControllerTitleForSelectedEventInSection:", [pathCopy section]);
    navigationController = [(CarplayListViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  [(CarplayListViewController *)self _forceUpdateCell:v5];
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  [(CarplayListViewController *)self _forceUpdateCell:v5];
}

- (void)_forceUpdateCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy forceUpdateOfAllElements];
  }
}

@end
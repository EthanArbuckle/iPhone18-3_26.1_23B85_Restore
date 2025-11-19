@interface CarplayListViewController
- (BOOL)_anyOccurrencesAvailable:(int64_t)a3;
- (BOOL)_shouldShowNoEventsView;
- (BOOL)_shouldShowTomorrowSection;
- (CarplayListViewController)initWithModel:(id)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_allDayOccurrences:(int64_t)a3;
- (id)_allFetchedOccurrences:(int64_t)a3;
- (id)_createListView;
- (id)_currentDateComponents;
- (id)_timedOccurrences:(int64_t)a3;
- (id)sharedManager;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)sectionForEvent:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_databaseDidChange:(id)a3;
- (void)_eventFetchCompleted;
- (void)_focusModeConfigurationChanged;
- (void)_forceUpdateCell:(id)a3;
- (void)_loadAndShowAppropriateContentView;
- (void)_localeChanged;
- (void)_refreshTodayView;
- (void)_setShowingNoEventsMode:(BOOL)a3;
- (void)_setViewStatesForCachedEventCollection;
- (void)_showListView;
- (void)_showNoEventsView;
- (void)_significantTimeChange:(id)a3;
- (void)_updateContent;
- (void)scrollToDate:(id)a3;
- (void)setViewControllerTitleForSelectedEventInSection:(int64_t)a3;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (CarplayListViewController)initWithModel:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = CarplayListViewController;
  v6 = [(CarplayListViewController *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [(CarplayListViewController *)v7 _createListView];
    listView = v7->_listView;
    v7->_listView = v8;

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
    v17 = [v5 eventStore];
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_100034194;
    v37 = &unk_10020EB00;
    v18 = v7;
    v38 = v18;
    v19 = [v16 initWithEventStore:v17 visibilityChangedCallback:&v34 queue:&_dispatch_main_q];
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

- (int64_t)sectionForEvent:(id)a3
{
  v4 = a3;
  if ([(CarplayListViewController *)self _shouldShowNoEventsView])
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(CarplayListViewController *)self _allFetchedOccurrences:0];
    v5 = 0;
    if (([v6 containsObject:v4] & 1) == 0)
    {
      if (!-[CarplayListViewController _shouldShowTomorrowSection](self, "_shouldShowTomorrowSection") || (v5 = 1, -[CarplayListViewController _allFetchedOccurrences:](self, "_allFetchedOccurrences:", 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v4], v7, (v8 & 1) == 0))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v5;
}

- (void)scrollToDate:(id)a3
{
  v16 = a3;
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
            v10 = [v9 event];
            v11 = [v10 startCalendarDate];

            if (v11)
            {
              [v16 differenceInSeconds:v11];
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
            v11 = 0;
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

- (void)setViewControllerTitleForSelectedEventInSection:(int64_t)a3
{
  v5 = CUIKNowDate();
  if (a3 == 1)
  {
    v10 = v5;
    v6 = CUIKCalendar();
    v7 = [v10 dateByAddingDays:1 inCalendar:v6];

    v5 = v7;
  }

  v11 = v5;
  v8 = CUIKStringForDate();
  v9 = [(CarplayListViewController *)self navigationItem];
  [v9 setTitle:v8];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarplayListViewController *)self navigationController];
  [v5 setNavigationBarHidden:1];

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
  [(CarplayListViewController *)&v7 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EKEventStoreChangedNotification object:0];
  [v5 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v5 removeObserver:self name:CUIKTodayChangedNotification object:0];
  [v5 removeObserver:self name:@"com.apple.mobilecal.carplay.kEventFetchCompletedNotification" object:0];
  [v5 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v5 removeObserver:self name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:self->_model];
  v6 = [(CarplayListViewController *)self navigationController];
  [v6 setNavigationBarHidden:0];

  v7.receiver = self;
  v7.super_class = CarplayListViewController;
  [(CarplayListViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CarplayListViewController;
  [(CarplayListViewController *)&v5 viewDidLoad];
  if (CalSystemSolariumEnabled())
  {
    v3 = [(CarplayListViewController *)self view];
    v4 = +[UIColor clearColor];
    [v3 setBackgroundColor:v4];
  }
}

- (void)_databaseDidChange:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034A28;
  v5[3] = &unk_10020EC68;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_significantTimeChange:(id)a3
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
  v4 = [(CarplayListViewController *)self sharedManager];
  v3 = [(CarplayListViewController *)self _currentDateComponents];
  [v4 reloadEvents:v3];
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

  v3 = [(CarplayListViewController *)self _currentDateComponents];
  v4 = [v3 hour] > 16;

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
  v3 = [(CarplayListViewController *)self _shouldShowNoEventsView];

  [(CarplayListViewController *)self _setShowingNoEventsMode:v3];
}

- (void)_updateContent
{
  v2 = self;
  if ([(CarplayListViewController *)self _shouldShowNoEventsView])
  {
    return;
  }

  [(CarplayListViewController *)v2 setShowingTomorrowSection:[(CarplayListViewController *)v2 _shouldShowTomorrowSection]];
  [(CarplayTableViewSection *)v2->_todaySection setPaddingCellEnabled:[(CarplayListViewController *)v2 showingTomorrowSection]];
  v3 = [(CarplayListViewController *)v2 _allFetchedOccurrences:0];
  v4 = 1;
  v5 = [(CarplayListViewController *)v2 _allFetchedOccurrences:1];
  v6 = [(CarplayTableViewSection *)v2->_todaySection events];
  v7 = [(CarplayTableViewSection *)v2->_tomorrowSection events];
  v8 = 72;
  v9 = &selRef__splitViewController_didEndResizingColumn_;
  v10 = &selRef__splitViewController_didEndResizingColumn_;
  v77 = v7;
  v78 = v6;
  v80 = v5;
  if (!v2->_needsForceRefresh)
  {
    v11 = v7;
    if ([v3 isEqualToArray:v6] && objc_msgSend(v5, "isEqualToArray:", v11))
    {
      if ([(NSMutableSet *)v2->_changedObjectIDs count])
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
            changedObjectIDs = v2->_changedObjectIDs;
            v17 = [v15 objectID];
            if (([(NSMutableSet *)changedObjectIDs containsObject:v17]& 1) != 0)
            {
              break;
            }

            calendarColorMapping = v2->_calendarColorMapping;
            v19 = [v15 calendar];
            v20 = [v19 objectID];
            v21 = [(NSMutableDictionary *)calendarColorMapping objectForKeyedSubscript:v20];
            v22 = [v15 calendar];
            v23 = [v22 colorString];
            v24 = [v21 isEqualToString:v23];

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
            v29 = v2->_changedObjectIDs;
            v17 = [v28 objectID];
            if (([(NSMutableSet *)v29 containsObject:v17]& 1) != 0)
            {
              break;
            }

            v30 = v2->_calendarColorMapping;
            v31 = [v28 calendar];
            v32 = [v31 objectID];
            v33 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:v32];
            v34 = [v28 calendar];
            v35 = [v34 colorString];
            v36 = [v33 isEqualToString:v35];

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
  [*(&v2->super.super.super.isa + *(v9 + 264)) removeAllObjects];
  *(&v2->super.super.super.isa + v8) = 0;
  v37 = *(v10 + 266);
  [*(&v2->super.super.super.isa + v37) removeAllObjects];
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
        v43 = *(&v2->super.super.super.isa + v37);
        v44 = [v42 calendar];
        v45 = [v44 objectID];
        v46 = [v43 objectForKeyedSubscript:v45];

        if (!v46)
        {
          v47 = [v42 calendar];
          v48 = [v47 colorString];
          v49 = *(&v2->super.super.super.isa + v37);
          v50 = [v42 calendar];
          v51 = [v50 objectID];
          [v49 setObject:v48 forKeyedSubscript:v51];
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
        v58 = *(&v2->super.super.super.isa + v37);
        v59 = [v57 calendar];
        v60 = [v59 objectID];
        v61 = [v58 objectForKeyedSubscript:v60];

        if (!v61)
        {
          v81 = [v57 calendar];
          v62 = [v81 colorString];
          v63 = *(&v2->super.super.super.isa + v37);
          v64 = [v57 calendar];
          [v64 objectID];
          v65 = v37;
          v66 = v54;
          v67 = v55;
          v68 = v2;
          v70 = v69 = v52;
          [v63 setObject:v62 forKeyedSubscript:v70];

          v52 = v69;
          v2 = v68;
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
    [(CarplayTableViewSection *)v2->_todaySection updateWithEvents:v79];
    [(CarplayTableViewSection *)v2->_tomorrowSection updateWithEvents:v52];
    [(UITableView *)v2->_listView reloadData];
  }
}

- (void)_setShowingNoEventsMode:(BOOL)a3
{
  if (a3)
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
  v3 = [(CarplayListViewController *)self view];
  [v3 addSubview:self->_noEventsView];

  v23 = [(CarplayNoEventsView *)self->_noEventsView leadingAnchor];
  v24 = [(CarplayListViewController *)self view];
  v22 = [v24 safeAreaLayoutGuide];
  v21 = [v22 leadingAnchor];
  v20 = [v23 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v18 = [(CarplayNoEventsView *)self->_noEventsView trailingAnchor];
  v19 = [(CarplayListViewController *)self view];
  v17 = [v19 safeAreaLayoutGuide];
  v16 = [v17 trailingAnchor];
  v15 = [v18 constraintEqualToAnchor:v16];
  v25[1] = v15;
  v14 = [(CarplayNoEventsView *)self->_noEventsView bottomAnchor];
  v4 = [(CarplayListViewController *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  v6 = [v5 bottomAnchor];
  v7 = [v14 constraintEqualToAnchor:v6];
  v25[2] = v7;
  v8 = [(CarplayNoEventsView *)self->_noEventsView topAnchor];
  v9 = [(CarplayListViewController *)self view];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [v10 topAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_showListView
{
  v3 = self->_listView;
  v25 = objc_opt_new();
  [(UITableView *)v3 removeFromSuperview];
  v4 = [(CarplayListViewController *)self view];
  [v4 addSubview:v3];

  v5 = [(UITableView *)v3 topAnchor];
  v6 = [(CarplayListViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 topAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  [v25 addObject:v9];

  v10 = [(UITableView *)v3 leadingAnchor];
  v11 = [(CarplayListViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v25 addObject:v14];

  v15 = [(CarplayListViewController *)self view];
  v16 = [v15 safeAreaLayoutGuide];
  v17 = [v16 trailingAnchor];
  v18 = [(UITableView *)v3 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v25 addObject:v19];

  v20 = [(UITableView *)v3 bottomAnchor];

  v21 = [(CarplayListViewController *)self view];
  v22 = [v21 safeAreaLayoutGuide];
  v23 = [v22 bottomAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];
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

- (BOOL)_anyOccurrencesAvailable:(int64_t)a3
{
  v3 = [(CarplayListViewController *)self _allFetchedOccurrences:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_allFetchedOccurrences:(int64_t)a3
{
  v4 = [(CarplayListViewController *)self sharedManager];
  v5 = [v4 collectionForDayType:a3];
  v6 = [v5 occurrences];

  return v6;
}

- (id)_timedOccurrences:(int64_t)a3
{
  v4 = [(CarplayListViewController *)self sharedManager];
  v5 = [v4 collectionForDayType:a3];
  v6 = [v5 timedOccurrences];

  return v6;
}

- (id)_allDayOccurrences:(int64_t)a3
{
  v4 = [(CarplayListViewController *)self sharedManager];
  v5 = [v4 collectionForDayType:a3];
  v6 = [v5 allDayOccurrences];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:a4];
  [v4 heightForHeaderInSection];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSArray *)sections objectAtIndexedSubscript:a4];
  v8 = [v7 headerForSectionInTableView:v6];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 numberOfRows];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CarplayUtilities dateForSection:](CarplayUtilities, "dateForSection:", [v6 section]);
  v9 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v6 section]);
  v10 = [v6 row];

  v11 = [v9 cellForRow:v10 underDate:v8 inTableView:v7];

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v6 = a3;
  [v6 deselectRowAtIndexPath:v10 animated:1];
  v7 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v10 section]);
  v8 = [v7 tableView:v6 didSelectRowAtIndexPath:v10];

  if (v8)
  {
    -[CarplayListViewController setViewControllerTitleForSelectedEventInSection:](self, "setViewControllerTitleForSelectedEventInSection:", [v10 section]);
    v9 = [(CarplayListViewController *)self navigationController];
    [v9 pushViewController:v8 animated:1];
  }
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  [(CarplayListViewController *)self _forceUpdateCell:v5];
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  [(CarplayListViewController *)self _forceUpdateCell:v5];
}

- (void)_forceUpdateCell:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 forceUpdateOfAllElements];
  }
}

@end
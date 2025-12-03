@interface CompactMonthListViewController
- (BOOL)_rowDrawsBackground:(id)background;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CompactMonthListViewController)initWithModel:(id)model;
- (id)_eventForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_deleteEventAtIndexPath:(id)path withCompletionHandler:(id)handler;
- (void)_flashOccurrenceTableScrollIndicators;
- (void)_ignoreSelectedOccurrencesChangedNotification:(id)notification;
- (void)_multiSelect:(id)select;
- (void)_occurrencesChanged:(id)changed;
- (void)_purgeCachedOccurrence:(id)occurrence;
- (void)_reloadOccurrenceData;
- (void)_reloadTableViewAndScrollIfNeededWithForceScroll:(BOOL)scroll;
- (void)_scrollToIdealPosition;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_significantTimeChange:(id)change;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateOccurrenceTableWithForce:(BOOL)force;
- (void)attemptDisplayReviewPrompt;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)deselectAllRowsAnimated:(BOOL)animated;
- (void)eventIconButtonPressed:(id)pressed;
- (void)paste:(id)paste;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)setDisabled:(BOOL)disabled;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CompactMonthListViewController

- (CompactMonthListViewController)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = CompactMonthListViewController;
  v6 = [(CompactMonthListViewController *)&v9 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    v7->_cachedRowHeight = -1.0;
  }

  return v7;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = CompactMonthListViewController;
  [(CompactMonthListViewController *)&v26 viewDidLoad];
  tableView = [(CompactMonthListViewController *)self tableView];
  [tableView setSeparatorStyle:0];

  tableView2 = [(CompactMonthListViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  tableView3 = [(CompactMonthListViewController *)self tableView];
  [tableView3 setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  tableView4 = [(CompactMonthListViewController *)self tableView];
  [tableView4 setAllowsMultipleSelection:1];

  tableView5 = [(CompactMonthListViewController *)self tableView];
  [tableView5 setAccessibilityIdentifier:@"CompactMonthListViewTable"];

  tableView6 = [(CompactMonthListViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [tableView6 registerClass:v12 forCellReuseIdentifier:v14];

  tableView7 = [(CompactMonthListViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [tableView7 registerClass:v16 forCellReuseIdentifier:v18];

  tableView8 = [(CompactMonthListViewController *)self tableView];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [tableView8 registerClass:v20 forCellReuseIdentifier:v22];

  v23 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_multiSelect:"];
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  self->_multiSelectGestureRecognizer = v23;

  [(UITapGestureRecognizer *)self->_multiSelectGestureRecognizer setAllowedTouchTypes:&off_100219F30];
  [(UITapGestureRecognizer *)self->_multiSelectGestureRecognizer setDelegate:self];
  tableView9 = [(CompactMonthListViewController *)self tableView];
  [tableView9 addGestureRecognizer:self->_multiSelectGestureRecognizer];

  self->_shouldScrollToIdealPosition = 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = CompactMonthListViewController;
  [(CompactMonthListViewController *)&v16 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = selectedDate;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  view = [(CompactMonthListViewController *)self view];
  window = [view window];

  if (window || (-[CompactMonthListViewController navigationController](self, "navigationController"), v11 = objc_claimAutoreleasedReturnValue(), [v11 view], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "window"), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    [(CompactMonthListViewController *)self _reloadOccurrenceData];
  }

  else
  {
    EKUIPushFallbackSizingContextWithViewHierarchy();
    [(CompactMonthListViewController *)self _reloadOccurrenceData];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_selectedDateChanged:" name:CUIKCalendarModelSelectedDateChangedNotification object:self->_model];
  [v14 addObserver:self selector:"_occurrencesChanged:" name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->_model];
  [v14 addObserver:self selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->_model];
  [v14 addObserver:self selector:"_significantTimeChange:" name:CUIKCalendarModelSignificantTimeChangeNotification object:self->_model];
  [v14 addObserver:self selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
  [v14 addObserver:self selector:"_contentCategorySizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  tableView = [(CompactMonthListViewController *)self tableView];
  [tableView selectRowAtIndexPath:0 animated:1 scrollPosition:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CompactMonthListViewController;
  [(CompactMonthListViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CUIKCalendarModelSelectedDateChangedNotification object:self->_model];
  [v4 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->_model];
  [v4 removeObserver:self name:CUIKCalendarModelSignificantTimeChangeNotification object:self->_model];
  [v4 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v4 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_flashOccurrenceTableScrollIndicators" object:0];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    if (!disabled)
    {
      [(CompactMonthListViewController *)self _reloadTableViewAndScrollIfNeededWithForceScroll:1];
    }
  }
}

- (void)_occurrencesChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v21 = [userInfo objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

  userInfo2 = [changedCopy userInfo];

  v7 = [userInfo2 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

  if (v21)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v21 timeIntervalSinceReferenceDate];
    v10 = v9;
    [v7 timeIntervalSinceReferenceDate];
    v12 = v11;
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    calendarDateForDay = [selectedDate calendarDateForDay];
    [calendarDateForDay absoluteTime];
    v16 = v15;

    calendarDateForEndOfDay = [selectedDate calendarDateForEndOfDay];
    [calendarDateForEndOfDay absoluteTime];
    v19 = v18;

    if (v10 <= v19 && v12 >= v16)
    {
      [(CompactMonthListViewController *)self _updateOccurrenceTable];
    }
  }
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  if (!self->_shouldIgnoreSelectedOccurrencesChangedNotification)
  {
    [(CompactMonthListViewController *)self deselectAllRowsAnimated:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    v5 = [selectedOccurrences countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(selectedOccurrences);
          }

          v9 = [(NSMutableArray *)self->_selectedDayOccurrences indexOfObject:*(*(&v13 + 1) + 8 * v8)];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
            tableView = [(CompactMonthListViewController *)self tableView];
            v12 = [NSIndexPath indexPathForRow:v10 inSection:0];
            [tableView selectRowAtIndexPath:v12 animated:0 scrollPosition:0];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [selectedOccurrences countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)_significantTimeChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

  if (([v5 BOOLValue] & 1) != 0 || !v5)
  {
    [(CompactMonthListViewController *)self _reloadTableViewAndScrollIfNeededWithForceScroll:1];
  }

  _objc_release_x1();
}

- (void)_reloadOccurrenceData
{
  if ([(CUIKCalendarModel *)self->_model cachedOccurrencesAreLoaded])
  {
    [(CompactMonthListViewController *)self _updateOccurrenceTable];

    [(CompactMonthListViewController *)self _scrollToIdealPosition];
  }

  else if (!self->_loadingOccurrenceCache)
  {
    self->_loadingOccurrenceCache = 1;
    v3 = [(CUIKCalendarModel *)self->_model selectedDateOccurrences:0 loadIsComplete:0];
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100042B60;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)_updateOccurrenceTableWithForce:(BOOL)force
{
  if (!self->_loadingOccurrenceCache || force)
  {
    forceCopy = force;
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];

    if (selectedDate)
    {
      v8 = [(CUIKCalendarModel *)self->_model selectedDateOccurrences:forceCopy loadIsComplete:0];
      v9 = [NSMutableArray arrayWithArray:v8];
      selectedDayOccurrences = self->_selectedDayOccurrences;
      self->_selectedDayOccurrences = v9;

      v11 = [(NSMutableArray *)self->_selectedDayOccurrences count];
      [(CompactMonthListViewController *)self _reloadTableViewAndScrollIfNeededWithForceScroll:0];
      if (v11)
      {
        if (self->_willFlashOccurrenceTableScrollIndicators)
        {
          [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_flashOccurrenceTableScrollIndicators" object:0];
        }

        self->_willFlashOccurrenceTableScrollIndicators = 1;
        tableView = [(CompactMonthListViewController *)self tableView];
        [tableView setShowsVerticalScrollIndicator:0];

        [(CompactMonthListViewController *)self performSelector:"_flashOccurrenceTableScrollIndicators" withObject:0 afterDelay:0.2];
      }
    }

    else
    {
      v8 = self->_selectedDayOccurrences;
      self->_selectedDayOccurrences = 0;
    }

    [(CompactMonthListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  }
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  if ([(NSMutableArray *)self->_selectedDayOccurrences count])
  {

    [(CompactMonthListViewController *)self _setContentUnavailableConfiguration:0];
  }

  else
  {
    v8 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"No Events" value:&stru_1002133B8 table:0];
    [v8 setText:v5];

    v6 = +[UIColor secondaryLabelColor];
    textProperties = [v8 textProperties];
    [textProperties setColor:v6];

    [(CompactMonthListViewController *)self _setContentUnavailableConfiguration:v8];
  }
}

- (void)_flashOccurrenceTableScrollIndicators
{
  tableView = [(CompactMonthListViewController *)self tableView];
  [tableView setShowsVerticalScrollIndicator:1];

  tableView2 = [(CompactMonthListViewController *)self tableView];
  [tableView2 flashScrollIndicators];

  self->_willFlashOccurrenceTableScrollIndicators = 0;
}

- (void)deselectAllRowsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tableView = [(CompactMonthListViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = indexPathsForSelectedRows;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        tableView2 = [(CompactMonthListViewController *)self tableView];
        [tableView2 deselectRowAtIndexPath:v12 animated:animatedCopy];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_ignoreSelectedOccurrencesChangedNotification:(id)notification
{
  self->_shouldIgnoreSelectedOccurrencesChangedNotification = 1;
  (*(notification + 2))(notification, a2);
  self->_shouldIgnoreSelectedOccurrencesChangedNotification = 0;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  if (path)
  {
    v6 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:path, point.x, point.y];
    if (v6)
    {
      selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v8 = [selectedOccurrences containsObject:v6];

      if ((v8 & 1) == 0)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100043250;
        v14[3] = &unk_10020EC68;
        v14[4] = self;
        v15 = v6;
        [(CompactMonthListViewController *)self _ignoreSelectedOccurrencesChangedNotification:v14];
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000432E4;
      v12[3] = &unk_10020EBF0;
      v13 = v6;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100043328;
      v11[3] = &unk_10020EC40;
      v11[4] = self;
      v9 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v12 actionProvider:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    previewViewController2 = [animatorCopy previewViewController];
  }

  else
  {
    previewViewController2 = 0;
  }

  [previewViewController2 willCommitPreview];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100043508;
  v10[3] = &unk_10020EC68;
  v10[4] = self;
  v11 = previewViewController2;
  v9 = previewViewController2;
  [animatorCopy addAnimations:v10];
}

- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences:view];
  v7 = [v6 count];

  if (v7 == 1)
  {
    model = self->_model;

    [(CUIKCalendarModel *)model setSelectedOccurrences:&__NSArray0__struct];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(CompactMonthListViewController *)self disabled:view])
  {
    return 0;
  }

  selectedDayOccurrences = self->_selectedDayOccurrences;

  return [(NSMutableArray *)selectedDayOccurrences count];
}

- (id)_eventForRowAtIndexPath:(id)path
{
  if (path)
  {
    v4 = -[NSMutableArray objectAtIndex:](self->_selectedDayOccurrences, "objectAtIndex:", [path row]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:pathCopy];
  selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
  calendarDateForDay = [selectedDate calendarDateForDay];
  date = [calendarDateForDay date];

  if (CUIKNSDateIsToday())
  {
    endDate = [v8 endDate];
    v13 = CUIKNowDate();
    v14 = [endDate compare:v13] == -1;
  }

  else
  {
    v14 = 0;
  }

  if ([v8 isReminderIntegrationEvent])
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v16 forIndexPath:pathCopy];

    [v17 setDelegate:self];
  }

  else
  {
    if (![v8 isAllDay])
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v17 = [viewCopy dequeueReusableCellWithIdentifier:v21 forIndexPath:pathCopy];

      v22 = CUIKCalendar();
      [v8 startDate];
      v32 = date;
      v24 = v23 = viewCopy;
      endDateUnadjustedForLegacyClients = [v8 endDateUnadjustedForLegacyClients];
      v26 = [v22 cal_isMultidayEventForUIWithStartDate:v24 endDate:endDateUnadjustedForLegacyClients];

      viewCopy = v23;
      date = v32;

      [v17 updateWithEvent:v8 isMultiday:v26 occurrenceStartDate:v32 dimmed:v14];
      goto LABEL_10;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v19 forIndexPath:pathCopy];
  }

  [v17 updateWithEvent:v8 dimmed:v14];
LABEL_10:
  [objc_opt_class() adjustedSeparatorInsets];
  [v17 setSeparatorInset:?];
  v27 = [(NSMutableArray *)self->_selectedDayOccurrences count];
  if ([pathCopy row] >= (v27 - 1) || -[CompactMonthListViewController _rowDrawsBackground:](self, "_rowDrawsBackground:", pathCopy))
  {
    v28 = 0;
  }

  else
  {
    v29 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] + 1, objc_msgSend(pathCopy, "section"));
    v30 = [(CompactMonthListViewController *)self _rowDrawsBackground:v29];

    v28 = v30 ^ 1;
  }

  [v17 setDrawsOwnRowSeparators:v28];

  return v17;
}

- (BOOL)_rowDrawsBackground:(id)background
{
  v3 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:background];
  v4 = [EKUIListViewCell drawsBackgroundForEvent:v3];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  presentedViewController = [(CompactMonthListViewController *)self presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = [(CompactMonthListViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  if ((isKindOfClass & 1) != 0 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_compactMonthListViewDelegate)
    {
      v11 = [(NSMutableArray *)self->_selectedDayOccurrences count];
      if ((v7 & 0x8000000000000000) == 0 && v7 < v11)
      {
        v12 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:pathCopy];
        [(CompactMonthListViewControllerDelegate *)self->_compactMonthListViewDelegate compactMonthListViewController:self didSelectEvent:v12 showMode:1];
        [(CompactMonthListViewController *)self deselectAllRowsAnimated:1];
        [viewCopy selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
      }
    }
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v5 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:path];
  [(CUIKCalendarModel *)self->_model deselectOccurrence:v5];
}

- (void)_reloadTableViewAndScrollIfNeededWithForceScroll:(BOOL)scroll
{
  tableView = [(CompactMonthListViewController *)self tableView];
  [tableView reloadData];

  self->_shouldScrollToIdealPosition |= scroll;

  [(CompactMonthListViewController *)self _scrollToIdealPosition];
}

- (void)_scrollToIdealPosition
{
  if (self->_shouldScrollToIdealPosition && !self->_disabled)
  {
    self->_shouldScrollToIdealPosition = 0;
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    calendarDateForDay = [selectedDate calendarDateForDay];
    date = [calendarDateForDay date];

    IsToday = CUIKNSDateIsToday();
    if ([(NSMutableArray *)self->_selectedDayOccurrences count])
    {
      v6 = 0;
      while (1)
      {
        v7 = [(NSMutableArray *)self->_selectedDayOccurrences objectAtIndexedSubscript:v6];
        endDate = [v7 endDate];
        v9 = CUIKNowDate();
        v10 = [endDate CalIsAfterDate:v9];

        if (IsToday & v10)
        {
          break;
        }

        if (++v6 >= [(NSMutableArray *)self->_selectedDayOccurrences count])
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v6 = 0;
    }

    v11 = [(NSMutableArray *)self->_selectedDayOccurrences count];
    tableView = [(CompactMonthListViewController *)self tableView];
    v13 = tableView;
    if (v11)
    {
      v14 = [NSIndexPath indexPathForRow:v6 inSection:0];
      [v13 scrollToRowAtIndexPath:v14 atScrollPosition:1 animated:0];
    }

    else
    {
      [tableView setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = +[CUIKPreferences sharedPreferences];
  swipeToDeleteEnabled = [v10 swipeToDeleteEnabled];

  if (style == 1 && swipeToDeleteEnabled)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100043F68;
    v12[3] = &unk_10020EC90;
    v12[4] = self;
    v13 = pathCopy;
    v14 = viewCopy;
    [(CompactMonthListViewController *)self _deleteEventAtIndexPath:v13 withCompletionHandler:v12];
  }
}

- (void)_purgeCachedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  tableView = [(CompactMonthListViewController *)self tableView];
  v5 = [(CompactMonthListViewController *)self tableView:tableView numberOfRowsInSection:0];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [NSIndexPath indexPathForRow:v6 inSection:0];
      v8 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v7];
      if ([v8 isEqual:occurrenceCopy])
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)self->_selectedDayOccurrences removeObjectAtIndex:v6];
  }

LABEL_7:
}

- (void)_deleteEventAtIndexPath:(id)path withCompletionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v8 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:pathCopy];
  objc_initWeak(&location, self);
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Delete" value:&stru_1002133B8 table:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000442C0;
  v15[3] = &unk_10020F578;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v16 = v11;
  v12 = handlerCopy;
  v17 = v12;
  v13 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:0 viewController:self barButtonItem:0 forEvent:v11 stringForDeleteButton:v10 withCompletionHandler:v15];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v13;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:path];
  v5 = +[CUIKPreferences sharedPreferences];
  if (![v5 swipeToDeleteEnabled])
  {

    goto LABEL_5;
  }

  isEditable = [v4 isEditable];

  if ((isEditable & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)attemptDisplayReviewPrompt
{
  view = [(CompactMonthListViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:windowScene calendarModel:self->_model];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:action withSender:senderCopy]& 1) == 0)
  {
    if ("paste:" == action)
    {
      pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
      canPerformPaste = [pasteboardManager canPerformPaste];

      goto LABEL_11;
    }

    if ("copy:" == action)
    {
      selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v10 = 1;
    }

    else
    {
      if ("cut:" != action)
      {
        v12.receiver = self;
        v12.super_class = CompactMonthListViewController;
        canPerformPaste = [(CompactMonthListViewController *)&v12 canPerformAction:action withSender:senderCopy];
        goto LABEL_11;
      }

      selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v10 = 0;
    }

    canPerformPaste = [CUIKPasteboardUtilities allEventsValidForAction:v10 fromEvents:selectedOccurrences];

    goto LABEL_11;
  }

  canPerformPaste = 0;
LABEL_11:

  return canPerformPaste;
}

- (void)cut:(id)cut
{
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager cutEvents:v5 delegate:self];
  }
}

- (void)copy:(id)copy
{
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager copyEvents:v5 delegate:self];
  }
}

- (void)paste:(id)paste
{
  selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  if (selectedOccurrence)
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    startDate = [selectedOccurrence startDate];
    [pasteboardManager setDateForPaste:startDate];
  }

  pasteboardManager2 = [(CUIKCalendarModel *)self->_model pasteboardManager];
  [pasteboardManager2 pasteEventsWithDateMode:0 delegate:self];
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(CompactMonthListViewController *)self attemptDisplayReviewPrompt];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  v6 = multiSelectGestureRecognizer != beginCopy || ([(UITapGestureRecognizer *)multiSelectGestureRecognizer modifierFlags]& 0x120000) != 0;

  return v6;
}

- (void)_multiSelect:(id)select
{
  selectCopy = select;
  tableView = [(CompactMonthListViewController *)self tableView];
  [selectCopy locationInView:tableView];
  v7 = v6;
  v9 = v8;

  tableView2 = [(CompactMonthListViewController *)self tableView];
  v18 = [tableView2 indexPathForRowAtPoint:{v7, v9}];

  v11 = v18;
  if (v18)
  {
    tableView3 = [(CompactMonthListViewController *)self tableView];
    indexPathsForSelectedRows = [tableView3 indexPathsForSelectedRows];

    v14 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v18];
    v15 = [indexPathsForSelectedRows containsObject:v18];
    tableView4 = [(CompactMonthListViewController *)self tableView];
    v17 = tableView4;
    if (v15)
    {
      [tableView4 deselectRowAtIndexPath:v18 animated:1];

      [(CUIKCalendarModel *)self->_model deselectOccurrence:v14];
    }

    else
    {
      [tableView4 selectRowAtIndexPath:v18 animated:1 scrollPosition:0];

      [(CUIKCalendarModel *)self->_model selectOccurrence:v14];
    }

    v11 = v18;
  }
}

- (void)eventIconButtonPressed:(id)pressed
{
  event = [pressed event];
  [event setCompleted:{objc_msgSend(event, "completed") ^ 1}];
  eKUI_editor = [(CompactMonthListViewController *)self EKUI_editor];
  v9 = 0;
  v6 = [eKUI_editor saveEvent:event span:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't complete/uncomplete event: %@", buf, 0xCu);
    }
  }
}

@end
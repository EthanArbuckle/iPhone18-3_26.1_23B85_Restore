@interface CompactMonthListViewController
- (BOOL)_rowDrawsBackground:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CompactMonthListViewController)initWithModel:(id)a3;
- (id)_eventForRowAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_deleteEventAtIndexPath:(id)a3 withCompletionHandler:(id)a4;
- (void)_flashOccurrenceTableScrollIndicators;
- (void)_ignoreSelectedOccurrencesChangedNotification:(id)a3;
- (void)_multiSelect:(id)a3;
- (void)_occurrencesChanged:(id)a3;
- (void)_purgeCachedOccurrence:(id)a3;
- (void)_reloadOccurrenceData;
- (void)_reloadTableViewAndScrollIfNeededWithForceScroll:(BOOL)a3;
- (void)_scrollToIdealPosition;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_significantTimeChange:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateOccurrenceTableWithForce:(BOOL)a3;
- (void)attemptDisplayReviewPrompt;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)deselectAllRowsAnimated:(BOOL)a3;
- (void)eventIconButtonPressed:(id)a3;
- (void)paste:(id)a3;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)setDisabled:(BOOL)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CompactMonthListViewController

- (CompactMonthListViewController)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CompactMonthListViewController;
  v6 = [(CompactMonthListViewController *)&v9 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v7->_cachedRowHeight = -1.0;
  }

  return v7;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = CompactMonthListViewController;
  [(CompactMonthListViewController *)&v26 viewDidLoad];
  v3 = [(CompactMonthListViewController *)self tableView];
  [v3 setSeparatorStyle:0];

  v4 = [(CompactMonthListViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = [(CompactMonthListViewController *)self tableView];
  [v8 setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v9 = [(CompactMonthListViewController *)self tableView];
  [v9 setAllowsMultipleSelection:1];

  v10 = [(CompactMonthListViewController *)self tableView];
  [v10 setAccessibilityIdentifier:@"CompactMonthListViewTable"];

  v11 = [(CompactMonthListViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v11 registerClass:v12 forCellReuseIdentifier:v14];

  v15 = [(CompactMonthListViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [v15 registerClass:v16 forCellReuseIdentifier:v18];

  v19 = [(CompactMonthListViewController *)self tableView];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v19 registerClass:v20 forCellReuseIdentifier:v22];

  v23 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_multiSelect:"];
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  self->_multiSelectGestureRecognizer = v23;

  [(UITapGestureRecognizer *)self->_multiSelectGestureRecognizer setAllowedTouchTypes:&off_100219F30];
  [(UITapGestureRecognizer *)self->_multiSelectGestureRecognizer setDelegate:self];
  v25 = [(CompactMonthListViewController *)self tableView];
  [v25 addGestureRecognizer:self->_multiSelectGestureRecognizer];

  self->_shouldScrollToIdealPosition = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CompactMonthListViewController;
  [(CompactMonthListViewController *)&v16 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(CUIKCalendarModel *)self->_model selectedDate];
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  v9 = [(CompactMonthListViewController *)self view];
  v10 = [v9 window];

  if (v10 || (-[CompactMonthListViewController navigationController](self, "navigationController"), v11 = objc_claimAutoreleasedReturnValue(), [v11 view], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "window"), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
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
  v15 = [(CompactMonthListViewController *)self tableView];
  [v15 selectRowAtIndexPath:0 animated:1 scrollPosition:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CompactMonthListViewController;
  [(CompactMonthListViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CUIKCalendarModelSelectedDateChangedNotification object:self->_model];
  [v4 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->_model];
  [v4 removeObserver:self name:CUIKCalendarModelSignificantTimeChangeNotification object:self->_model];
  [v4 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v4 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_flashOccurrenceTableScrollIndicators" object:0];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    if (!a3)
    {
      [(CompactMonthListViewController *)self _reloadTableViewAndScrollIfNeededWithForceScroll:1];
    }
  }
}

- (void)_occurrencesChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v21 = [v5 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

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
    v13 = [(CUIKCalendarModel *)self->_model selectedDate];
    v14 = [v13 calendarDateForDay];
    [v14 absoluteTime];
    v16 = v15;

    v17 = [v13 calendarDateForEndOfDay];
    [v17 absoluteTime];
    v19 = v18;

    if (v10 <= v19 && v12 >= v16)
    {
      [(CompactMonthListViewController *)self _updateOccurrenceTable];
    }
  }
}

- (void)_selectedOccurrencesChanged:(id)a3
{
  if (!self->_shouldIgnoreSelectedOccurrencesChangedNotification)
  {
    [(CompactMonthListViewController *)self deselectAllRowsAnimated:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableArray *)self->_selectedDayOccurrences indexOfObject:*(*(&v13 + 1) + 8 * v8)];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
            v11 = [(CompactMonthListViewController *)self tableView];
            v12 = [NSIndexPath indexPathForRow:v10 inSection:0];
            [v11 selectRowAtIndexPath:v12 animated:0 scrollPosition:0];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)_significantTimeChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

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

- (void)_updateOccurrenceTableWithForce:(BOOL)a3
{
  if (!self->_loadingOccurrenceCache || a3)
  {
    v5 = a3;
    v7 = [(CUIKCalendarModel *)self->_model selectedDate];

    if (v7)
    {
      v8 = [(CUIKCalendarModel *)self->_model selectedDateOccurrences:v5 loadIsComplete:0];
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
        v12 = [(CompactMonthListViewController *)self tableView];
        [v12 setShowsVerticalScrollIndicator:0];

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

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
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
    v7 = [v8 textProperties];
    [v7 setColor:v6];

    [(CompactMonthListViewController *)self _setContentUnavailableConfiguration:v8];
  }
}

- (void)_flashOccurrenceTableScrollIndicators
{
  v3 = [(CompactMonthListViewController *)self tableView];
  [v3 setShowsVerticalScrollIndicator:1];

  v4 = [(CompactMonthListViewController *)self tableView];
  [v4 flashScrollIndicators];

  self->_willFlashOccurrenceTableScrollIndicators = 0;
}

- (void)deselectAllRowsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CompactMonthListViewController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
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
        v13 = [(CompactMonthListViewController *)self tableView];
        [v13 deselectRowAtIndexPath:v12 animated:v3];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_ignoreSelectedOccurrencesChangedNotification:(id)a3
{
  self->_shouldIgnoreSelectedOccurrencesChangedNotification = 1;
  (*(a3 + 2))(a3, a2);
  self->_shouldIgnoreSelectedOccurrencesChangedNotification = 0;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  if (a4)
  {
    v6 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:a4, a5.x, a5.y];
    if (v6)
    {
      v7 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v8 = [v7 containsObject:v6];

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

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [v6 previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 previewViewController];
  }

  else
  {
    v8 = 0;
  }

  [v8 willCommitPreview];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100043508;
  v10[3] = &unk_10020EC68;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v6 addAnimations:v10];
}

- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences:a3];
  v7 = [v6 count];

  if (v7 == 1)
  {
    model = self->_model;

    [(CUIKCalendarModel *)model setSelectedOccurrences:&__NSArray0__struct];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(CompactMonthListViewController *)self disabled:a3])
  {
    return 0;
  }

  selectedDayOccurrences = self->_selectedDayOccurrences;

  return [(NSMutableArray *)selectedDayOccurrences count];
}

- (id)_eventForRowAtIndexPath:(id)a3
{
  if (a3)
  {
    v4 = -[NSMutableArray objectAtIndex:](self->_selectedDayOccurrences, "objectAtIndex:", [a3 row]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v7];
  v9 = [(CUIKCalendarModel *)self->_model selectedDate];
  v10 = [v9 calendarDateForDay];
  v11 = [v10 date];

  if (CUIKNSDateIsToday())
  {
    v12 = [v8 endDate];
    v13 = CUIKNowDate();
    v14 = [v12 compare:v13] == -1;
  }

  else
  {
    v14 = 0;
  }

  if ([v8 isReminderIntegrationEvent])
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v6 dequeueReusableCellWithIdentifier:v16 forIndexPath:v7];

    [v17 setDelegate:self];
  }

  else
  {
    if (![v8 isAllDay])
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v17 = [v6 dequeueReusableCellWithIdentifier:v21 forIndexPath:v7];

      v22 = CUIKCalendar();
      [v8 startDate];
      v32 = v11;
      v24 = v23 = v6;
      v25 = [v8 endDateUnadjustedForLegacyClients];
      v26 = [v22 cal_isMultidayEventForUIWithStartDate:v24 endDate:v25];

      v6 = v23;
      v11 = v32;

      [v17 updateWithEvent:v8 isMultiday:v26 occurrenceStartDate:v32 dimmed:v14];
      goto LABEL_10;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v17 = [v6 dequeueReusableCellWithIdentifier:v19 forIndexPath:v7];
  }

  [v17 updateWithEvent:v8 dimmed:v14];
LABEL_10:
  [objc_opt_class() adjustedSeparatorInsets];
  [v17 setSeparatorInset:?];
  v27 = [(NSMutableArray *)self->_selectedDayOccurrences count];
  if ([v7 row] >= (v27 - 1) || -[CompactMonthListViewController _rowDrawsBackground:](self, "_rowDrawsBackground:", v7))
  {
    v28 = 0;
  }

  else
  {
    v29 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v7 row] + 1, objc_msgSend(v7, "section"));
    v30 = [(CompactMonthListViewController *)self _rowDrawsBackground:v29];

    v28 = v30 ^ 1;
  }

  [v17 setDrawsOwnRowSeparators:v28];

  return v17;
}

- (BOOL)_rowDrawsBackground:(id)a3
{
  v3 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:a3];
  v4 = [EKUIListViewCell drawsBackgroundForEvent:v3];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [(CompactMonthListViewController *)self presentedViewController];
  if (v8)
  {
    v9 = [(CompactMonthListViewController *)self presentedViewController];
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
        v12 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v6];
        [(CompactMonthListViewControllerDelegate *)self->_compactMonthListViewDelegate compactMonthListViewController:self didSelectEvent:v12 showMode:1];
        [(CompactMonthListViewController *)self deselectAllRowsAnimated:1];
        [v13 selectRowAtIndexPath:v6 animated:1 scrollPosition:0];
      }
    }
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:a4];
  [(CUIKCalendarModel *)self->_model deselectOccurrence:v5];
}

- (void)_reloadTableViewAndScrollIfNeededWithForceScroll:(BOOL)a3
{
  v5 = [(CompactMonthListViewController *)self tableView];
  [v5 reloadData];

  self->_shouldScrollToIdealPosition |= a3;

  [(CompactMonthListViewController *)self _scrollToIdealPosition];
}

- (void)_scrollToIdealPosition
{
  if (self->_shouldScrollToIdealPosition && !self->_disabled)
  {
    self->_shouldScrollToIdealPosition = 0;
    v3 = [(CUIKCalendarModel *)self->_model selectedDate];
    v4 = [v3 calendarDateForDay];
    v15 = [v4 date];

    IsToday = CUIKNSDateIsToday();
    if ([(NSMutableArray *)self->_selectedDayOccurrences count])
    {
      v6 = 0;
      while (1)
      {
        v7 = [(NSMutableArray *)self->_selectedDayOccurrences objectAtIndexedSubscript:v6];
        v8 = [v7 endDate];
        v9 = CUIKNowDate();
        v10 = [v8 CalIsAfterDate:v9];

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
    v12 = [(CompactMonthListViewController *)self tableView];
    v13 = v12;
    if (v11)
    {
      v14 = [NSIndexPath indexPathForRow:v6 inSection:0];
      [v13 scrollToRowAtIndexPath:v14 atScrollPosition:1 animated:0];
    }

    else
    {
      [v12 setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];
    }
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[CUIKPreferences sharedPreferences];
  v11 = [v10 swipeToDeleteEnabled];

  if (a4 == 1 && v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100043F68;
    v12[3] = &unk_10020EC90;
    v12[4] = self;
    v13 = v9;
    v14 = v8;
    [(CompactMonthListViewController *)self _deleteEventAtIndexPath:v13 withCompletionHandler:v12];
  }
}

- (void)_purgeCachedOccurrence:(id)a3
{
  v9 = a3;
  v4 = [(CompactMonthListViewController *)self tableView];
  v5 = [(CompactMonthListViewController *)self tableView:v4 numberOfRowsInSection:0];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [NSIndexPath indexPathForRow:v6 inSection:0];
      v8 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v7];
      if ([v8 isEqual:v9])
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

- (void)_deleteEventAtIndexPath:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v6];
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
  v12 = v7;
  v17 = v12;
  v13 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:0 viewController:self barButtonItem:0 forEvent:v11 stringForDeleteButton:v10 withCompletionHandler:v15];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v13;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:a4];
  v5 = +[CUIKPreferences sharedPreferences];
  if (![v5 swipeToDeleteEnabled])
  {

    goto LABEL_5;
  }

  v6 = [v4 isEditable];

  if ((v6 & 1) == 0)
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
  v5 = [(CompactMonthListViewController *)self view];
  v3 = [v5 window];
  v4 = [v3 windowScene];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:v4 calendarModel:self->_model];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:a3 withSender:v6]& 1) == 0)
  {
    if ("paste:" == a3)
    {
      v8 = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v7 = [v8 canPerformPaste];

      goto LABEL_11;
    }

    if ("copy:" == a3)
    {
      v9 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v10 = 1;
    }

    else
    {
      if ("cut:" != a3)
      {
        v12.receiver = self;
        v12.super_class = CompactMonthListViewController;
        v7 = [(CompactMonthListViewController *)&v12 canPerformAction:a3 withSender:v6];
        goto LABEL_11;
      }

      v9 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v10 = 0;
    }

    v7 = [CUIKPasteboardUtilities allEventsValidForAction:v10 fromEvents:v9];

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)cut:(id)a3
{
  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([v6 count])
  {
    v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:v6];
    [v4 cutEvents:v5 delegate:self];
  }
}

- (void)copy:(id)a3
{
  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([v6 count])
  {
    v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:v6];
    [v4 copyEvents:v5 delegate:self];
  }
}

- (void)paste:(id)a3
{
  v7 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  if (v7)
  {
    v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [v7 startDate];
    [v4 setDateForPaste:v5];
  }

  v6 = [(CUIKCalendarModel *)self->_model pasteboardManager];
  [v6 pasteEventsWithDateMode:0 delegate:self];
}

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(CompactMonthListViewController *)self attemptDisplayReviewPrompt];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  v6 = multiSelectGestureRecognizer != v4 || ([(UITapGestureRecognizer *)multiSelectGestureRecognizer modifierFlags]& 0x120000) != 0;

  return v6;
}

- (void)_multiSelect:(id)a3
{
  v4 = a3;
  v5 = [(CompactMonthListViewController *)self tableView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CompactMonthListViewController *)self tableView];
  v18 = [v10 indexPathForRowAtPoint:{v7, v9}];

  v11 = v18;
  if (v18)
  {
    v12 = [(CompactMonthListViewController *)self tableView];
    v13 = [v12 indexPathsForSelectedRows];

    v14 = [(CompactMonthListViewController *)self _eventForRowAtIndexPath:v18];
    v15 = [v13 containsObject:v18];
    v16 = [(CompactMonthListViewController *)self tableView];
    v17 = v16;
    if (v15)
    {
      [v16 deselectRowAtIndexPath:v18 animated:1];

      [(CUIKCalendarModel *)self->_model deselectOccurrence:v14];
    }

    else
    {
      [v16 selectRowAtIndexPath:v18 animated:1 scrollPosition:0];

      [(CUIKCalendarModel *)self->_model selectOccurrence:v14];
    }

    v11 = v18;
  }
}

- (void)eventIconButtonPressed:(id)a3
{
  v4 = [a3 event];
  [v4 setCompleted:{objc_msgSend(v4, "completed") ^ 1}];
  v5 = [(CompactMonthListViewController *)self EKUI_editor];
  v9 = 0;
  v6 = [v5 saveEvent:v4 span:0 error:&v9];
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
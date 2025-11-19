@interface MonthScrollViewController
- (BOOL)_isLastVisibleWeek:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (FitMonthWeekViewDatasource)monthWeekDatasource;
- (MonthScrollViewController)initWithDateCache:(id)a3 workoutsDataProvider:(id)a4 pauseRingsCoordinator:(id)a5;
- (MonthScrollViewDelegate)monthScrollDelegate;
- (double)_centerXForRingAt:(int64_t)a3 percent:(double)a4;
- (double)_heightOffsetForWeekRow:(int64_t)a3;
- (id)_calculateLastVisibleDate;
- (id)earliestDateToTileForMonth:(id)a3;
- (id)weekWithStartDate:(id)a3;
- (void)_activitySummaryCacheChanged:(id)a3;
- (void)_addAndRearrangeWeekviewsAndGroups;
- (void)_animateRingOnTouch:(BOOL)a3 completion:(id)a4;
- (void)_buildFreshViews;
- (void)_createRingsView;
- (void)_didBecomeActive:(id)a3;
- (void)_findCenteredWeekAndUpdateTitleIfNecessary;
- (void)_loadActivitySummariesForWeek:(id)a3 ringGroupIndex:(unint64_t)a4;
- (void)_loadWorkoutsForWeek:(id)a3;
- (void)_readjustFrom:(unint64_t)a3 to:(unint64_t)a4 fromGroupRange:(_NSRange)a5 toGroupRange:(_NSRange)a6 down:(BOOL)a7;
- (void)_readjustRings;
- (void)_readjustScrollViewToOffset:(double)a3 weekOffset:(double)a4;
- (void)_relayoutRingGroups;
- (void)_reloadAllActivitySummariesFromCache;
- (void)_reloadAllWorkoutsFromCache;
- (void)_timeZoneChanged:(id)a3;
- (void)_workoutsCacheChanged:(id)a3;
- (void)dealloc;
- (void)scrollToDate:(id)a3 windowHeight:(double)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)todayChanged;
- (void)viewDidLoad;
- (void)week:(id)a3 cellSelected:(id)a4;
- (void)week:(id)a3 pressedOnDay:(int64_t)a4 down:(BOOL)a5;
@end

@implementation MonthScrollViewController

- (MonthScrollViewController)initWithDateCache:(id)a3 workoutsDataProvider:(id)a4 pauseRingsCoordinator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = MonthScrollViewController;
  v12 = [(MonthScrollViewController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateCache, a3);
    objc_storeStrong(&v13->_workoutsDataProvider, a4);
    objc_storeStrong(&v13->_pauseRingsCoordinator, a5);
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v13 selector:"_timeZoneChanged:" name:NSSystemTimeZoneDidChangeNotification object:0];
    [v14 addObserver:v13 selector:"_activitySummaryCacheChanged:" name:@"ActivitySummaryCacheChangedNotification" object:0];
    v15 = +[FIPauseRingsCoordinator didUpdatePauseStateNotification];
    [v14 addObserver:v13 selector:"_activitySummaryCacheChanged:" name:v15 object:0];

    [v14 addObserver:v13 selector:"_workoutsCacheChanged:" name:@"FitnessActivityWorkoutsChangedNotification" object:0];
    [v14 addObserver:v13 selector:"_didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
    [v14 addObserver:v13 selector:"todayChanged" name:@"FitnessCurrentDeviceDateChangedNotification" object:0];
    v16 = objc_alloc_init(UIScrollView);
    scrollView = v13->_scrollView;
    v13->_scrollView = v16;

    [(UIScrollView *)v13->_scrollView setDelegate:v13];
    [(UIScrollView *)v13->_scrollView setContentInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(UIScrollView *)v13->_scrollView setContentInsetAdjustmentBehavior:2];
    v18 = +[ActivitySummaryCache sharedInstance];
    summaryCache = v13->_summaryCache;
    v13->_summaryCache = v18;

    v20 = [[FitnessWorkoutsCache alloc] initWithDataProvider:v13->_workoutsDataProvider];
    workoutCache = v13->_workoutCache;
    v13->_workoutCache = v20;
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MonthScrollViewController;
  [(MonthScrollViewController *)&v4 dealloc];
}

- (void)_didBecomeActive:(id)a3
{
  v3 = +[ActivitySummaryCache sharedInstance];
  [v3 loadDataIfNeeded];
}

- (void)_workoutsCacheChanged:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MSVC] Workouts cache changed, reloading.", v5, 2u);
  }

  [(MonthScrollViewController *)self _reloadAllWorkoutsFromCache];
}

- (void)_activitySummaryCacheChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"range"];

  v6 = [(NSMutableArray *)self->_weekViews firstObject];
  v7 = [v6 summaryIndexes];
  v8 = [v7 firstObject];
  [v8 doubleValue];
  v10 = v9;

  v11 = [(NSMutableArray *)self->_weekViews lastObject];
  v12 = [v11 summaryIndexes];
  v13 = [v12 lastObject];
  [v13 doubleValue];
  v15 = v14;

  if (sub_1000EA830(v5, v10, v15, @"MSVC") || !v5)
  {
    _HKInitializeLogging();
    v16 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MSVC] Activity summaries changed, reloading.", v17, 2u);
    }

    [(MonthScrollViewController *)self _reloadAllActivitySummariesFromCache];
  }
}

- (void)_timeZoneChanged:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MSVC] Time zone changed, build fresh views.", v5, 2u);
  }

  [(MonthScrollViewController *)self _buildFreshViews];
  [(MonthScrollViewController *)self _relayoutRingGroups];
  self->_scrollViewAdjustedToBottom = 0;
  [(MonthScrollViewController *)self _reloadAllWorkoutsFromCache];
  [(MonthScrollViewController *)self _reloadAllActivitySummariesFromCache];
}

- (void)_buildFreshViews
{
  v3 = [(MonthScrollViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = +[NSDate date];
  v13 = [(MonthScrollViewController *)self earliestDateToTileForMonth:v12];

  v14 = [(MonthScrollViewController *)self _calculateLastVisibleDate];
  lastVisibleWeekDate = self->_lastVisibleWeekDate;
  self->_lastVisibleWeekDate = v14;

  weekViews = self->_weekViews;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000EB098;
  v18[3] = &unk_10083BDF8;
  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v19 = v13;
  v20 = self;
  v17 = v13;
  [(NSMutableArray *)weekViews enumerateObjectsUsingBlock:v18];
  self->_incrementAmount = 0.0;
}

- (void)todayChanged
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_weekViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * i) reloadCells];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v8 = self->_lastVisibleWeekDate;
  v9 = [(MonthScrollViewController *)self _calculateLastVisibleDate];
  lastVisibleWeekDate = self->_lastVisibleWeekDate;
  self->_lastVisibleWeekDate = v9;

  [(NSDate *)self->_lastVisibleWeekDate timeIntervalSinceReferenceDate];
  v12 = v11;
  [(NSDate *)v8 timeIntervalSinceReferenceDate];
  if (v12 >= v13)
  {
    if (self->_scrollViewAdjustedToBottom)
    {
      self->_scrollViewAdjustedToBottom = 0;
      [(MonthScrollViewController *)self _readjustScrollViewToOffset:64.0 weekOffset:-64.0];
      [(MonthScrollViewController *)self _readjustRings];
    }
  }

  else
  {
    self->_scrollViewAdjustedToBottom = 0;
    v14 = +[NSDate date];
    v15 = [(MonthScrollViewController *)self view];
    [v15 bounds];
    [(MonthScrollViewController *)self scrollToDate:v14 windowHeight:v16];
  }

  v17 = [(MonthScrollViewController *)self weekWithStartDate:self->_lastVisibleWeekDate, v19];
  lastVisibleWeek = self->_lastVisibleWeek;
  self->_lastVisibleWeek = v17;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = MonthScrollViewController;
  [(MonthScrollViewController *)&v19 viewDidLoad];
  v3 = [(MonthScrollViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = objc_alloc_init(NSMutableArray);
  weekViews = self->_weekViews;
  self->_weekViews = v12;

  v14 = 11;
  do
  {
    v15 = [MonthWeekView alloc];
    v16 = [(ActivityDateCache *)self->_dateCache dateCache];
    v17 = [(MonthWeekView *)v15 initWithDateCache:v16];

    [(MonthWeekView *)v17 setDelegate:self];
    [(UIScrollView *)self->_scrollView addSubview:v17];
    [(NSMutableArray *)self->_weekViews addObject:v17];

    --v14;
  }

  while (v14);
  [(MonthScrollViewController *)self _buildFreshViews];
  [(UIScrollView *)self->_scrollView setContentSize:v9, v11 + 128.0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
  v18 = [(MonthScrollViewController *)self view];
  [v18 addSubview:self->_scrollView];

  [(MonthScrollViewController *)self _createRingsView];
  [(MonthScrollViewController *)self _relayoutRingGroups];
  [(MonthScrollViewController *)self _reloadAllActivitySummariesFromCache];
}

- (id)_calculateLastVisibleDate
{
  v3 = [(ActivityDateCache *)self->_dateCache calendar];
  v4 = +[NSDate date];
  v5 = [v3 components:14 fromDate:v4];

  [v5 setMonth:{objc_msgSend(v5, "month") + 1}];
  [v5 setDay:0];
  v6 = [(ActivityDateCache *)self->_dateCache calendar];
  v7 = [v6 dateFromComponents:v5];

  v8 = [(ActivityDateCache *)self->_dateCache calendar];
  v9 = [v8 hk_startOfFitnessWeekBeforeDate:v7];

  return v9;
}

- (BOOL)_isLastVisibleWeek:(id)a3
{
  v4 = a3;
  if (!self->_lastVisibleWeekDate)
  {
    v5 = [(MonthScrollViewController *)self _calculateLastVisibleDate];
    lastVisibleWeekDate = self->_lastVisibleWeekDate;
    self->_lastVisibleWeekDate = v5;
  }

  v7 = [v4 currentWeekStartDate];
  v8 = [v7 isEqualToDate:self->_lastVisibleWeekDate];

  return v8;
}

- (void)_createRingsView
{
  v3 = objc_alloc_init(NSMutableArray);
  if (HKDaysInAWeek)
  {
    v4 = 0;
    if ((11 * HKDaysInAWeek) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 11 * HKDaysInAWeek;
    }

    do
    {
      v6 = [MonthRingGroup activityRingGroupForRingType:3];
      *&v7 = 40.0;
      [v6 setGroupDiameter:v7];
      *&v8 = 1.5;
      [v6 setInterspacing:v8];
      [v6 groupDiameter];
      v10 = floor(v9 * 0.1);
      *&v10 = v10;
      [v6 setThickness:v10];
      v11 = [v6 rings];
      v12 = [v11 count];

      if (v12)
      {
        v14 = 0;
        do
        {
          LODWORD(v13) = ARUIRingPercentageValueNoRing;
          [v6 setPercentage:v14++ ofRingAtIndex:0 animated:v13];
          v15 = [v6 rings];
          v16 = [v15 count];
        }

        while (v14 < v16);
      }

      v17 = objc_alloc_init(UIImageView);
      [v17 setFrame:{0.0, 0.0, 40.0, 40.0}];
      v18 = [(MonthScrollViewController *)self view];
      [v18 center];
      [v17 setCenter:?];

      [v6 setRingImageView:v17];
      v19 = [(MonthScrollViewController *)self view];
      [v19 addSubview:v17];

      [(NSMutableArray *)v3 addObject:v6];
      [v6 setBackingOriginOffset:0.0];
      v20 = dispatch_get_global_queue(25, 0);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000EB9D4;
      v24[3] = &unk_10083A970;
      v25 = v6;
      v26 = v17;
      v21 = v17;
      v22 = v6;
      dispatch_async(v20, v24);

      ++v4;
    }

    while (v4 != v5);
  }

  ringGroups = self->_ringGroups;
  self->_ringGroups = v3;
}

- (id)earliestDateToTileForMonth:(id)a3
{
  dateCache = self->_dateCache;
  v4 = a3;
  v5 = [(ActivityDateCache *)dateCache calendar];
  v6 = [v5 components:14 fromDate:v4];

  [v6 setDay:1];
  v7 = [v5 dateFromComponents:v6];
  v8 = [v5 hk_startOfFitnessWeekBeforeDate:v7];
  v9 = [v5 dateByAddingUnit:0x2000 value:-1 toDate:v8 options:0];

  return v9;
}

- (void)scrollToDate:(id)a3 windowHeight:(double)a4
{
  v25 = a3;
  v6 = [(ActivityDateCache *)self->_dateCache calendar];
  v7 = [v6 components:14 fromDate:v25];
  [v7 setDay:1];
  v8 = [v6 dateFromComponents:v7];
  v9 = [v6 hk_startOfFitnessWeekBeforeDate:v8];

  v10 = [(MonthScrollViewController *)self weekWithStartDate:v9];
  v11 = [(MonthScrollViewController *)self view];
  [v11 frame];
  v13 = v12;

  v14 = [v6 hk_startOfFitnessWeekBeforeDate:v25];
  v15 = [v6 components:0x2000 fromDate:v9 toDate:v14 options:0];
  v16 = ([v15 weekOfYear] + 1) * 65.0 + 50.0;
  if (v10)
  {
    v17 = [(MonthScrollViewController *)self view];
    [v17 scaledValueForSmallWidth:10.0 bigWidth:30.0];
    v19 = v18;

    [v10 frame];
    v21 = v20 - v19;
    v22 = v13 * 0.5 - v19 + v20 - v19;
    if (v16 <= a4)
    {
      v22 = v21;
    }

    [(UIScrollView *)self->_scrollView setContentOffset:1 animated:0.0, v22];
  }

  else
  {
    [(MonthScrollViewController *)self _buildFreshViews];
    [(MonthScrollViewController *)self _relayoutRingGroups];
    [(MonthScrollViewController *)self _reloadAllActivitySummariesFromCache];
    [(MonthScrollViewController *)self _reloadAllWorkoutsFromCache];
    if (v16 > a4)
    {
      [(UIScrollView *)self->_scrollView contentOffset];
      [(UIScrollView *)self->_scrollView setContentOffset:?];
      [(UIScrollView *)self->_scrollView contentOffset];
      self->_panAmount.y = v23;
    }

    v24 = [(MonthScrollViewController *)self monthScrollDelegate];
    [v24 scrolledPastMonthWithDate:v25];
  }
}

- (void)_relayoutRingGroups
{
  if ([(NSMutableArray *)self->_ringGroups count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_ringGroups objectAtIndexedSubscript:v3];
      [(MonthScrollViewController *)self _heightOffsetForWeekRow:(v3 / 7)];
      [v4 setBackingOriginOffset:v5 + 40.0 * 0.5];
      v6 = [(NSMutableArray *)self->_weekViews objectAtIndex:(v3 / 7)];
      [v6 heightForCellAtIndex:v3 % 7 oneTime:1];
      [v4 setAdditionalSpacing:?];
      y = self->_panAmount.y;
      [v4 backingOriginOffset];
      v9 = v8 - y;
      [v4 additionalSpacing];
      v11 = v9 + v10;
      [(MonthScrollViewController *)self _centerXForRingAt:v3 % 7 percent:0.0];
      v13 = v12;
      v14 = [v4 ringImageView];
      [v14 setCenter:{v13, v11}];

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_ringGroups count]);
  }
}

- (void)_readjustRings
{
  ringGroups = self->_ringGroups;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EBFF0;
  v3[3] = &unk_10083BE20;
  v3[4] = self;
  [(NSMutableArray *)ringGroups enumerateObjectsUsingBlock:v3];
}

- (void)_readjustScrollViewToOffset:(double)a3 weekOffset:(double)a4
{
  [(UIScrollView *)self->_scrollView setContentOffset:0.0, a3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_weekViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 frame];
        [v11 setFrame:?];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  self->_incrementAmount = self->_incrementAmount + a4;
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  self->_scrollViewAdjustedToBottom = 0;
  v4 = +[NSDate date];
  v5 = [(MonthScrollViewController *)self view];
  [v5 bounds];
  [(MonthScrollViewController *)self scrollToDate:v4 windowHeight:v6];

  return 0;
}

- (void)scrollViewDidScroll:(id)a3
{
  p_panAmount = &self->_panAmount;
  [(UIScrollView *)self->_scrollView contentOffset];
  p_panAmount->x = v5;
  p_panAmount->y = v6;
  [(UIScrollView *)self->_scrollView contentOffset];
  v8 = v7;
  v9 = [(MonthScrollViewController *)self view];
  [v9 bounds];
  v11 = v10;

  v12 = [(MonthScrollViewController *)self view];
  v13 = [v12 safeAreaLayoutGuide];
  [v13 layoutFrame];
  MaxY = CGRectGetMaxY(v36);

  v15 = v11 - MaxY;
  [(MonthWeekView *)self->_lastVisibleWeek frame];
  v16 = CGRectGetMaxY(v37) - p_panAmount->y;
  v17 = v11 - v15;
  if (self->_lastVisibleWeek)
  {
    v18 = v16 < v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 && !self->_scrollViewAdjustedToBottom)
  {
    self->_scrollViewAdjustedToBottom = 1;
    [(UIScrollView *)self->_scrollView contentSize];
    v20 = v19 + -128.0;
    [(MonthWeekView *)self->_lastVisibleWeek frame];
    v22 = v20 - v21;
    [(MonthWeekView *)self->_lastVisibleWeek frame];
    [(MonthScrollViewController *)self _readjustScrollViewToOffset:128.0 weekOffset:v22 - v23 - v15];
  }

  if (fabs(v8 + -64.0) > 32.0 && (!self->_lastVisibleWeek || v16 > v17 || !self->_scrollViewAdjustedToBottom))
  {
    [(UIScrollView *)self->_scrollView setContentOffset:0.0, 64.0];
    self->_scrollViewAdjustedToBottom = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = self->_weekViews;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      v28 = 64.0 - fabs(v8);
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v31 + 1) + 8 * i);
          [v30 frame];
          [v30 setFrame:?];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v26);
    }

    else
    {
      v28 = 64.0 - fabs(v8);
    }

    self->_incrementAmount = v28 + self->_incrementAmount;
    [(MonthScrollViewController *)self _addAndRearrangeWeekviewsAndGroups];
  }

  [(MonthScrollViewController *)self _findCenteredWeekAndUpdateTitleIfNecessary];
  [(MonthScrollViewController *)self _readjustRings];
}

- (void)_findCenteredWeekAndUpdateTitleIfNecessary
{
  v3 = [(MonthScrollViewController *)self monthScrollDelegate];

  if (v3)
  {
    v4 = [(MonthScrollViewController *)self view];
    [v4 frame];
    v6 = v5;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = self->_weekViews;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = v6 * 0.5;
      v11 = *v35;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          scrollView = self->_scrollView;
          [v13 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [(MonthScrollViewController *)self view];
          [(UIScrollView *)scrollView convertRect:v23 toView:v16, v18, v20, v22];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v39.origin.x = v25;
          v39.origin.y = v27;
          v39.size.width = v29;
          v39.size.height = v31;
          if (CGRectGetMinY(v39) < v10)
          {
            v40.origin.x = v25;
            v40.origin.y = v27;
            v40.size.width = v29;
            v40.size.height = v31;
            if (CGRectGetMaxY(v40) > v10)
            {
              v32 = [(MonthScrollViewController *)self monthScrollDelegate];
              v33 = [v13 currentWeekStartDate];
              [v32 scrolledPastMonthWithDate:v33];
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v9);
    }
  }
}

- (double)_heightOffsetForWeekRow:(int64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_weekViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    v9 = 0.0;
LABEL_3:
    v10 = 0;
    if (v7 <= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v7;
    }

    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      if (v11 == v7)
      {
        break;
      }

      [*(*(&v14 + 1) + 8 * v10) preferredHeight];
      v9 = v9 + v12;
      ++v7;
      if (v6 == ++v10)
      {
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)_addAndRearrangeWeekviewsAndGroups
{
  v22 = [(NSMutableArray *)self->_weekViews firstObject];
  v3 = [(NSMutableArray *)self->_weekViews lastObject];
  v4 = [(NSMutableArray *)self->_ringGroups count];
  v5 = HKDaysInAWeek;
  v6 = &v4[-HKDaysInAWeek];
  [v22 frame];
  if (v7 <= 0.0)
  {
    [v3 frame];
    v15 = v14;
    v16 = [(MonthScrollViewController *)self view];
    [v16 frame];
    v18 = v17;
    [v3 frame];
    v20 = v18 + v19;

    if (v15 >= v20)
    {
      goto LABEL_6;
    }

    v10 = [(NSMutableArray *)self->_weekViews count]- 1;
    LOBYTE(v21) = 1;
    v9 = self;
    v8 = 0;
    v11 = 0;
    v12 = v5;
    v13 = v6;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_weekViews count]- 1;
    LOBYTE(v21) = 0;
    v9 = self;
    v10 = 0;
    v11 = v6;
    v12 = v5;
    v13 = 0;
  }

  [(MonthScrollViewController *)v9 _readjustFrom:v10 to:v8 fromGroupRange:v11 toGroupRange:v12 down:v13, v5, v21];
LABEL_6:
}

- (void)_readjustFrom:(unint64_t)a3 to:(unint64_t)a4 fromGroupRange:(_NSRange)a5 toGroupRange:(_NSRange)a6 down:(BOOL)a7
{
  length = a5.length;
  location = a5.location;
  v42 = [(NSMutableArray *)self->_weekViews lastObject];
  v11 = [(NSMutableArray *)self->_weekViews objectAtIndexedSubscript:a3];
  v12 = [(NSMutableArray *)self->_weekViews objectAtIndexedSubscript:a4];
  ringGroups = self->_ringGroups;
  if (a7)
  {
    v14 = [(NSMutableArray *)ringGroups lastObject];
    [v14 backingOriginOffset];
    v16 = v15;

    [(NSMutableArray *)self->_weekViews removeObjectAtIndex:a4];
    v17 = [v11 nextWeekStartDate];
    [(MonthWeekView *)v12 setMonthWeekStart:v17];
    if (self->_lastVisibleWeek || ![(MonthScrollViewController *)self _isLastVisibleWeek:v12])
    {
      goto LABEL_8;
    }

    v18 = v12;
    lastVisibleWeek = self->_lastVisibleWeek;
    self->_lastVisibleWeek = v18;
  }

  else
  {
    v20 = [(NSMutableArray *)ringGroups firstObject];
    [v20 backingOriginOffset];
    v16 = v21;

    [(NSMutableArray *)self->_weekViews removeObjectAtIndex:a4];
    v17 = [v11 previousWeekStartDate];
    [(MonthWeekView *)v12 setMonthWeekStart:v17];
    lastVisibleWeek = self->_lastVisibleWeek;
    if (v12 != lastVisibleWeek)
    {
      goto LABEL_8;
    }

    self->_lastVisibleWeek = 0;
  }

LABEL_8:
  [v11 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(MonthWeekView *)v12 preferredHeight];
  v29 = v28;
  if (a7)
  {
    [v11 frame];
  }

  else
  {
    [(MonthWeekView *)v12 preferredHeight];
    v30 = -v31;
  }

  [(MonthWeekView *)v12 setFrame:v23, v25 + v30, v27, v29];
  [(NSMutableArray *)self->_weekViews insertObject:v12 atIndex:a3];
  if (a7)
  {
    [v42 frame];
  }

  else
  {
    [v42 preferredHeight];
    v32 = -v33;
  }

  v34 = v16 + v32;
  v35 = [(NSMutableArray *)self->_ringGroups subarrayWithRange:location, length];
  [(NSMutableArray *)self->_ringGroups removeObjectsInRange:location, length];
  v36 = [NSIndexSet indexSetWithIndexesInRange:a6.location, a6.length];
  [(NSMutableArray *)self->_ringGroups insertObjects:v35 atIndexes:v36];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000ECD2C;
  v43[3] = &unk_10083BE48;
  v46 = a7;
  v43[4] = self;
  v45 = v34;
  v37 = v12;
  v44 = v37;
  [v35 enumerateObjectsUsingBlock:v43];
  [(MonthScrollViewController *)self _loadWorkoutsForWeek:v37];
  if (a7)
  {
    v38 = HKDaysInAWeek;
    v39 = ([(NSMutableArray *)self->_weekViews count]- 1) * v38;
  }

  else
  {
    v39 = 0;
  }

  [(MonthScrollViewController *)self _loadActivitySummariesForWeek:v37 ringGroupIndex:v39];
}

- (id)weekWithStartDate:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_weekViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 currentWeekStartDate];
        v11 = [v10 isEqualToDate:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (double)_centerXForRingAt:(int64_t)a3 percent:(double)a4
{
  v6 = [(MonthScrollViewController *)self view];
  [v6 centerXForElementAt:a3 % 7 width:40.0 percent:a4];
  v8 = v7;

  return 40.0 * 0.5 + v8 + 40.0 * -0.5 * a4;
}

- (void)week:(id)a3 pressedOnDay:(int64_t)a4 down:(BOOL)a5
{
  v5 = a5;
  v8 = [(NSMutableArray *)self->_weekViews indexOfObject:a3];
  v9 = a4 + HKDaysInAWeek * v8;
  if ((v9 & 0x8000000000000000) == 0 && v9 < [(NSMutableArray *)self->_ringGroups count])
  {
    v10 = [(NSMutableArray *)self->_ringGroups objectAtIndexedSubscript:v9];
    pressedRingGroup = self->_pressedRingGroup;
    self->_pressedRingGroup = v10;

    [(MonthScrollViewController *)self _animateRingOnTouch:v5 completion:0];
  }
}

- (void)_animateRingOnTouch:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  LODWORD(v8) = 1064178811;
  if (!v4)
  {
    *&v8 = 1.0;
  }

  v9 = [ARUIFloatPropertyAnimation animationWithEndingFloatValue:v7 duration:v6 timingFunction:v8 completion:0.2];

  v10 = [v9 _endValue];
  [v10 floatValue];
  v12 = v11;

  [v9 duration];
  v14 = v13;
  LODWORD(v17) = v12;
  v15 = [v9 completionHandler];
  [ARUIRingGroup animateWithDuration:&v16 animations:0 curve:v15 completion:v14];
}

- (void)week:(id)a3 cellSelected:(id)a4
{
  v5 = [a4 date];
  _HKInitializeLogging();
  v6 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MSVC] Cell selected: %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000ED3C8;
  v8[3] = &unk_10083A970;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(MonthScrollViewController *)self _animateRingOnTouch:0 completion:v8];
}

- (void)_reloadAllWorkoutsFromCache
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_weekViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MonthScrollViewController *)self _loadWorkoutsForWeek:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_reloadAllActivitySummariesFromCache
{
  weekViews = self->_weekViews;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000ED5BC;
  v3[3] = &unk_10083BE98;
  v3[4] = self;
  [(NSMutableArray *)weekViews enumerateObjectsUsingBlock:v3];
}

- (void)_loadActivitySummariesForWeek:(id)a3 ringGroupIndex:(unint64_t)a4
{
  v6 = [a3 summaryIndexes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ED670;
  v7[3] = &unk_10083BEC0;
  v7[4] = self;
  v7[5] = a4;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)_loadWorkoutsForWeek:(id)a3
{
  v4 = a3;
  v5 = [v4 summaryIndexes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ED9C0;
  v7[3] = &unk_10083BEE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (FitMonthWeekViewDatasource)monthWeekDatasource
{
  WeakRetained = objc_loadWeakRetained(&self->_monthWeekDatasource);

  return WeakRetained;
}

- (MonthScrollViewDelegate)monthScrollDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_monthScrollDelegate);

  return WeakRetained;
}

@end
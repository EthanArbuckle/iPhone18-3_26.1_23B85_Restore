@interface PaletteScrollViewController
- (ActivitySummaryProviding)activitySummaryProvider;
- (BOOL)scrollOrRelayoutWeekIfNeededToDate:(id)date;
- (CGPoint)_centerForRingAtIndex:(unint64_t)index;
- (FIPauseRingsCoordinator)pauseRingsCoordinator;
- (PaletteScrollViewController)initWithPauseRingsCoordinator:(id)coordinator;
- (PaletteScrollViewDelegate)delegate;
- (id)_currentWeekStartDate;
- (id)_getDayWithTouches:(id)touches;
- (id)startOfFitnessWeekAfterWeekStarting:(id)starting;
- (id)startOfFitnessWeekBeforeWeekStarting:(id)starting;
- (void)_add:(BOOL)_add;
- (void)_createRingsView;
- (void)_paletteActivitySummaryCacheChanged:(id)changed;
- (void)_prepareForScrollAnimationStart;
- (void)_readjustOffsetIfNecessary;
- (void)_rearrangeWeeks:(BOOL)weeks;
- (void)_reloadActivitySummariesFromCache;
- (void)_scrollAnimationFinished;
- (void)_setDataForGroups:(id)groups withStartingDate:(id)date;
- (void)dealloc;
- (void)reloadViewDataAtDate:(id)date;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setActivitySummaryProvider:(id)provider;
- (void)setIsUserInteractionEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateScrollviewOnTodayChanged;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PaletteScrollViewController

- (PaletteScrollViewController)initWithPauseRingsCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = PaletteScrollViewController;
  v5 = [(PaletteScrollViewController *)&v11 init];
  if (v5)
  {
    v6 = +[ActivitySummaryCache sharedInstance];
    objc_storeWeak(&v5->_activitySummaryProvider, v6);

    objc_storeWeak(&v5->_pauseRingsCoordinator, coordinatorCopy);
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[FIPauseRingsCoordinator didUpdatePauseStateNotification];
    [v7 addObserver:v5 selector:"_paletteActivitySummaryCacheChanged:" name:v8 object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"_paletteActivitySummaryCacheChanged:" name:@"ActivitySummaryCacheChangedNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PaletteScrollViewController;
  [(PaletteScrollViewController *)&v4 dealloc];
}

- (void)updateScrollviewOnTodayChanged
{
  v15 = +[NSDate date];
  view = [(PaletteScrollViewController *)self view];
  [view bounds];
  v5 = v4;

  v6 = v5 + self->_panAmount.x;
  [(UIScrollView *)self->_scrollView contentSize];
  if (v6 == v7)
  {
    lastObject = [(NSMutableArray *)self->_weekStartingDates lastObject];
    v9 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:lastObject];

    [v15 timeIntervalSinceReferenceDate];
    v11 = v10;
    [v9 timeIntervalSinceReferenceDate];
    if (v11 >= v12)
    {
      [(PaletteScrollViewController *)self _rearrangeWeeks:0];
      [(PaletteScrollViewController *)self _add:0];
      [(UIScrollView *)self->_scrollView setContentOffset:v5, 0.0];
      [(UIScrollView *)self->_scrollView contentOffset];
      self->_panAmount.x = v13;
      self->_panAmount.y = v14;
      self->_previousContentOffsetX = v13;
    }
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PaletteScrollViewController;
  [(PaletteScrollViewController *)&v12 viewDidLoad];
  view = [(PaletteScrollViewController *)self view];
  [view bounds];
  self->_panAmount.x = v4 + v4;
  self->_panAmount.y = 0.0;

  [(PaletteScrollViewController *)self _createRingsView];
  view2 = [(PaletteScrollViewController *)self view];
  [view2 addSubview:self->_ringsView];

  [(ARUIRingsView *)self->_ringsView setOpaque:0];
  ringsView = self->_ringsView;
  v7 = +[UIColor clearColor];
  [(ARUIRingsView *)ringsView setBackgroundColor:v7];

  v8 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v8;

  [(UIScrollView *)self->_scrollView setHidden:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setPagingEnabled:1];
  [(UIScrollView *)self->_scrollView setDirectionalLockEnabled:1];
  [(ARUIRingsView *)self->_ringsView addSubview:self->_scrollView];
  panGestureRecognizer = [(UIScrollView *)self->_scrollView panGestureRecognizer];
  [(ARUIRingsView *)self->_ringsView addGestureRecognizer:panGestureRecognizer];
  self->_wasTouched = 0;
  v11 = +[NSDate date];
  [(PaletteScrollViewController *)self reloadViewDataAtDate:v11];
}

- (void)_createRingsView
{
  v3 = [NSMutableArray arrayWithCapacity:21];
  for (i = 0; i != 21; ++i)
  {
    v5 = [ARUIRingGroup activityRingGroupForRingType:3];
    *&v6 = 40.0;
    [v5 setGroupDiameter:v6];
    *&v7 = 1.5;
    [v5 setInterspacing:v7];
    [v5 groupDiameter];
    v9 = floor(v8 * 0.1);
    *&v9 = v9;
    [v5 setThickness:v9];
    rings = [v5 rings];
    v11 = [rings count];

    if (v11)
    {
      v13 = 0;
      do
      {
        LODWORD(v12) = ARUIRingPercentageValueNoRing;
        [v5 setPercentage:v13++ ofRingAtIndex:0 animated:v12];
        rings2 = [v5 rings];
        v15 = [rings2 count];
      }

      while (v13 < v15);
    }

    [(NSMutableArray *)v3 addObject:v5];
  }

  ringGroups = self->_ringGroups;
  self->_ringGroups = v3;
  v19 = v3;

  v17 = [[ARUIRingsView alloc] initWithRingGroups:v19];
  ringsView = self->_ringsView;
  self->_ringsView = v17;

  [(ARUIRingsView *)self->_ringsView setDiscardBackBuffers:0];
  [(ARUIRingsView *)self->_ringsView setContentMode:6];
  [(ARUIRingsView *)self->_ringsView setAutoresizingMask:0];
}

- (void)_paletteActivitySummaryCacheChanged:(id)changed
{
  weekStartingDates = self->_weekStartingDates;
  changedCopy = changed;
  firstObject = [(NSMutableArray *)weekStartingDates firstObject];
  lastObject = [(NSMutableArray *)self->_weekStartingDates lastObject];
  v7 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:lastObject];

  v8 = sub_1000EA7A8(firstObject);
  v9 = sub_1000EA7A8(v7);
  userInfo = [changedCopy userInfo];

  v11 = [userInfo objectForKeyedSubscript:@"range"];

  if (sub_1000EA830(v11, v8, v9, @"Palette") || !v11)
  {
    [(PaletteScrollViewController *)self _reloadActivitySummariesFromCache];
  }
}

- (void)setActivitySummaryProvider:(id)provider
{
  objc_storeWeak(&self->_activitySummaryProvider, provider);
  v4 = +[NSDate date];
  [(PaletteScrollViewController *)self reloadViewDataAtDate:v4];
}

- (void)setIsUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_isUserInteractionEnabled = enabled;
  view = [(PaletteScrollViewController *)self view];
  [view setUserInteractionEnabled:enabledCopy];
}

- (void)_reloadActivitySummariesFromCache
{
  firstObject = [(NSMutableArray *)self->_weekStartingDates firstObject];
  v4 = +[NSCalendar currentCalendar];
  ringGroups = self->_ringGroups;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100102A0C;
  v8[3] = &unk_10083C4B8;
  v9 = v4;
  v10 = firstObject;
  selfCopy = self;
  v6 = firstObject;
  v7 = v4;
  [(NSMutableArray *)ringGroups enumerateObjectsUsingBlock:v8];
}

- (id)startOfFitnessWeekBeforeWeekStarting:(id)starting
{
  startingCopy = starting;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 dateByAddingUnit:0x2000 value:-1 toDate:startingCopy options:0];

  return v5;
}

- (id)startOfFitnessWeekAfterWeekStarting:(id)starting
{
  startingCopy = starting;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 dateByAddingUnit:0x2000 value:1 toDate:startingCopy options:0];

  return v5;
}

- (CGPoint)_centerForRingAtIndex:(unint64_t)index
{
  v5 = -7 * (index / 7);
  v6 = (index / 7);
  view = [(PaletteScrollViewController *)self view];
  [view frame];
  v9 = (40.0 - v8) * 0.5;

  view2 = [(PaletteScrollViewController *)self view];
  [view2 frame];
  v12 = v9 + v6 * v11;
  view3 = [(PaletteScrollViewController *)self view];
  [view3 centerXForElementAt:index + v5 width:40.0 percent:0.0];
  v15 = v12 + v14 - self->_panAmount.x;

  v16 = 10.0;
  v17 = v15;
  result.y = v16;
  result.x = v17;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PaletteScrollViewController;
  [(PaletteScrollViewController *)&v17 viewWillLayoutSubviews];
  view = [(PaletteScrollViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(ARUIRingsView *)self->_ringsView frame];
  if (v11 >= v12)
  {
    [(ARUIRingsView *)self->_ringsView setFrame:v5, v7, v9, v11];
  }

  [(ARUIRingsView *)self->_ringsView bounds];
  [(UIScrollView *)self->_scrollView setFrame:?];
  [(ARUIRingsView *)self->_ringsView frame];
  v14 = v13 * 3.0;
  view2 = [(PaletteScrollViewController *)self view];
  [view2 frame];
  [(UIScrollView *)self->_scrollView setContentSize:v14, v16];

  [(UIScrollView *)self->_scrollView setContentOffset:self->_panAmount.x, self->_panAmount.y];
}

- (void)_prepareForScrollAnimationStart
{
  view = [(PaletteScrollViewController *)self view];
  [view setUserInteractionEnabled:1];
}

- (void)_scrollAnimationFinished
{
  [(PaletteScrollViewController *)self _readjustOffsetIfNecessary];
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_weekStartingDates count];
    if (v4 < 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_weekStartingDates objectAtIndexedSubscript:1];
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Palette] Palette was scrolled to date: %@", &v7, 0xCu);
    if (v4 >= 2)
    {
    }
  }

  view = [(PaletteScrollViewController *)self view];
  [view setUserInteractionEnabled:1];
}

- (void)_readjustOffsetIfNecessary
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  view = [(PaletteScrollViewController *)self view];
  [view bounds];
  v7 = v6;

  previousContentOffsetX = self->_previousContentOffsetX;
  if (v4 != previousContentOffsetX)
  {
    lastObject = [(NSMutableArray *)self->_weekStartingDates lastObject];
    v20 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:lastObject];

    [v20 timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    v15 = v11 < v14 || v4 < previousContentOffsetX;
    if (v4 != v7 && v15)
    {
      [(PaletteScrollViewController *)self _rearrangeWeeks:v4 < previousContentOffsetX];
      [(PaletteScrollViewController *)self _add:v4 < previousContentOffsetX];
      [(UIScrollView *)self->_scrollView setContentOffset:v7, 0.0];
    }

    if (self->_wasTouched)
    {
      delegate = [(PaletteScrollViewController *)self delegate];
      [delegate paletteScrolledInDirection:v4 < previousContentOffsetX];
    }

    [(UIScrollView *)self->_scrollView contentOffset];
    self->_panAmount.x = v18;
    self->_panAmount.y = v19;
    self->_previousContentOffsetX = v18;
  }
}

- (id)_currentWeekStartDate
{
  previousContentOffsetX = self->_previousContentOffsetX;
  view = [(PaletteScrollViewController *)self view];
  [view bounds];
  v6 = (previousContentOffsetX / v5);

  weekStartingDates = self->_weekStartingDates;

  return [(NSMutableArray *)weekStartingDates objectAtIndexedSubscript:v6];
}

- (BOOL)scrollOrRelayoutWeekIfNeededToDate:(id)date
{
  dateCopy = date;
  firstObject = [(NSMutableArray *)self->_weekStartingDates firstObject];
  lastObject = [(NSMutableArray *)self->_weekStartingDates lastObject];
  v7 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:lastObject];

  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;
  _currentWeekStartDate = [(PaletteScrollViewController *)self _currentWeekStartDate];
  v11 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:_currentWeekStartDate];
  [firstObject timeIntervalSinceReferenceDate];
  if (v9 < v12 || ([v7 timeIntervalSinceReferenceDate], v9 >= v13))
  {
    [(PaletteScrollViewController *)self reloadViewDataAtDate:dateCopy];
    v16 = 1;
  }

  else
  {
    [_currentWeekStartDate timeIntervalSinceReferenceDate];
    if (v9 < v14 || ([v11 timeIntervalSinceReferenceDate], v9 >= v15))
    {
      [_currentWeekStartDate timeIntervalSinceReferenceDate];
      v19 = v18;
      view = [(PaletteScrollViewController *)self view];
      [view bounds];
      v22 = v21;

      v23 = 1.0;
      if (v9 < v19)
      {
        v23 = -1.0;
      }

      v16 = 1;
      [(UIScrollView *)self->_scrollView setContentOffset:1 animated:self->_previousContentOffsetX + v23 * v22, 0.0];
      [(PaletteScrollViewController *)self _prepareForScrollAnimationStart];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)_rearrangeWeeks:(BOOL)weeks
{
  weeksCopy = weeks;
  firstObject = [(NSMutableArray *)self->_weekStartingDates firstObject];
  lastObject = [(NSMutableArray *)self->_weekStartingDates lastObject];
  if (weeksCopy)
  {
    [(NSMutableArray *)self->_weekStartingDates removeLastObject];
    v6 = [(PaletteScrollViewController *)self startOfFitnessWeekBeforeWeekStarting:firstObject];
    [(NSMutableArray *)self->_weekStartingDates insertObject:v6 atIndex:0];
  }

  else
  {
    v6 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:lastObject];
    [(NSMutableArray *)self->_weekStartingDates removeObjectAtIndex:0];
    [(NSMutableArray *)self->_weekStartingDates addObject:v6];
  }
}

- (void)_add:(BOOL)_add
{
  _addCopy = _add;
  v5 = [(NSMutableArray *)self->_ringGroups count];
  v6 = HKDaysInAWeek;
  v7 = &v5[-HKDaysInAWeek];
  ringGroups = self->_ringGroups;
  if (_addCopy)
  {
    hKDaysInAWeek = [(NSMutableArray *)ringGroups subarrayWithRange:v7, HKDaysInAWeek];
    [(NSMutableArray *)self->_ringGroups removeObjectsInRange:v7, v6];
    v10 = [NSIndexSet indexSetWithIndexesInRange:0, v6];
    [(NSMutableArray *)self->_ringGroups insertObjects:hKDaysInAWeek atIndexes:v10];
    v11 = self->_ringGroups;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100103770;
    v16[3] = &unk_10083C4E0;
    v16[4] = self;
    [(NSMutableArray *)v11 enumerateObjectsUsingBlock:v16];
    firstObject = [(NSMutableArray *)self->_weekStartingDates firstObject];
  }

  else
  {
    hKDaysInAWeek = [(NSMutableArray *)ringGroups subarrayWithRange:0, HKDaysInAWeek];
    [(NSMutableArray *)self->_ringGroups removeObjectsInRange:0, v6];
    v10 = [NSIndexSet indexSetWithIndexesInRange:v7, v6];
    [(NSMutableArray *)self->_ringGroups insertObjects:hKDaysInAWeek atIndexes:v10];
    v13 = self->_ringGroups;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001037CC;
    v15[3] = &unk_10083C4E0;
    v15[4] = self;
    [(NSMutableArray *)v13 enumerateObjectsUsingBlock:v15];
    firstObject = [(NSMutableArray *)self->_weekStartingDates lastObject];
  }

  v14 = firstObject;
  [(PaletteScrollViewController *)self _setDataForGroups:hKDaysInAWeek withStartingDate:firstObject];
}

- (void)_setDataForGroups:(id)groups withStartingDate:(id)date
{
  dateCopy = date;
  groupsCopy = groups;
  +[NSCalendar currentCalendar];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100103908;
  v11 = v10[3] = &unk_10083C4B8;
  v12 = dateCopy;
  selfCopy = self;
  v8 = dateCopy;
  v9 = v11;
  [groupsCopy enumerateObjectsUsingBlock:v10];
}

- (void)reloadViewDataAtDate:(id)date
{
  dateCopy = date;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = dateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PaletteScrollView] Reloading data from cache at date: %@", buf, 0xCu);
  }

  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 hk_startOfFitnessWeekBeforeDate:dateCopy];
  WeakRetained = objc_loadWeakRetained(&self->_activitySummaryProvider);
  v9 = [v6 hk_dateByAddingDays:-objc_msgSend(WeakRetained toDate:{"fitnessStartOfWeekOffset"), v7}];

  v10 = [(PaletteScrollViewController *)self startOfFitnessWeekBeforeWeekStarting:v9];
  v11 = [(PaletteScrollViewController *)self startOfFitnessWeekAfterWeekStarting:v9];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = +[NSDate date];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  if (v13 >= v16)
  {
    v24 = [(PaletteScrollViewController *)self startOfFitnessWeekBeforeWeekStarting:v10];
    v25 = [NSMutableArray alloc];
    v33[0] = v24;
    v33[1] = v10;
    v33[2] = v9;
    v26 = [NSArray arrayWithObjects:v33 count:3];
    v27 = [v25 initWithArray:v26];
    weekStartingDates = self->_weekStartingDates;
    self->_weekStartingDates = v27;

    [(PaletteScrollViewController *)self _reloadActivitySummariesFromCache];
    p_panAmount = &self->_panAmount;
    view = [(PaletteScrollViewController *)self view];
    [view bounds];
    self->_panAmount.x = v29 + v29;
  }

  else
  {
    v17 = [NSMutableArray alloc];
    v32[0] = v10;
    v32[1] = v9;
    v32[2] = v11;
    v18 = [NSArray arrayWithObjects:v32 count:3];
    v19 = [v17 initWithArray:v18];
    v20 = self->_weekStartingDates;
    self->_weekStartingDates = v19;

    [(PaletteScrollViewController *)self _reloadActivitySummariesFromCache];
    p_panAmount = &self->_panAmount;
    view = [(PaletteScrollViewController *)self view];
    [view bounds];
    self->_panAmount.x = v23;
  }

  p_panAmount->y = 0.0;

  self->_previousContentOffsetX = p_panAmount->x;
  [(UIScrollView *)self->_scrollView contentSize];
  if (v31 != CGSizeZero.width || v30 != CGSizeZero.height)
  {
    [(UIScrollView *)self->_scrollView setContentOffset:p_panAmount->x, p_panAmount->y];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  p_panAmount = &self->_panAmount;
  [(UIScrollView *)self->_scrollView contentOffset];
  p_panAmount->x = v5;
  p_panAmount->y = v6;
  if ([(NSMutableArray *)self->_ringGroups count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_ringGroups objectAtIndexedSubscript:v7];
      [(PaletteScrollViewController *)self _centerForRingAtIndex:v7];
      [v8 setCenter:?];

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_ringGroups count]);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  event = [(PaletteScrollViewController *)self _getDayWithTouches:began, event];
  dateTouched = self->_dateTouched;
  self->_dateTouched = event;

  _objc_release_x1(event, dateTouched);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  dateTouched = self->_dateTouched;
  if (dateTouched)
  {
    [(NSDate *)dateTouched timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = +[NSDate date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;

    if (v9 <= v12)
    {
      delegate = [(PaletteScrollViewController *)self delegate];
      [delegate paletteDateSelected:self->_dateTouched];
    }
  }
}

- (id)_getDayWithTouches:(id)touches
{
  anyObject = [touches anyObject];
  view = [(PaletteScrollViewController *)self view];
  [anyObject locationInView:view];
  v7 = v6;

  view2 = [(PaletteScrollViewController *)self view];
  [view2 bounds];
  v10 = v9 / 7.0;

  _currentWeekStartDate = [(PaletteScrollViewController *)self _currentWeekStartDate];
  v12 = +[NSCalendar currentCalendar];
  v13 = [v12 dateByAddingUnit:16 value:vcvtmd_s64_f64(v7 / v10) toDate:_currentWeekStartDate options:0];

  return v13;
}

- (FIPauseRingsCoordinator)pauseRingsCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_pauseRingsCoordinator);

  return WeakRetained;
}

- (ActivitySummaryProviding)activitySummaryProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_activitySummaryProvider);

  return WeakRetained;
}

- (PaletteScrollViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
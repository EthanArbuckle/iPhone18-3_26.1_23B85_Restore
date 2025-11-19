@interface YearViewController
- (BOOL)_containsPreciseTouch:(id)a3;
- (BOOL)_isTodayCircleFrameFullyUnobstructed;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)shouldAnimateScrollToDate:(id)a3 fromClosestDate:(id)a4;
- (CGPoint)monthHeaderLocationForCalendarDate:(id)a3;
- (CGRect)frameForTodayHighlight;
- (CGRect)monthFrameForCalendarDate:(id)a3 adjustHeightUp:(BOOL)a4;
- (Class)multipleMonthViewClass;
- (NextLevelMainViewControllerContainerPushDelegate)pushDelegate;
- (YearViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5;
- (double)heightForSubviewWithCalendarDate:(id)a3;
- (double)topInsetForSubviewWithCalendarDate:(id)a3;
- (id)_flooredCalendarDateForCalendarDate:(id)a3;
- (id)_viewForCalendarDate:(id)a3;
- (id)bestDateForNewEvent;
- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)a3;
- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)a3;
- (id)createInitialViewForDate:(id)a3;
- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)a3;
- (id)monthViewForCalendarDate:(id)a3;
- (id)newBottomViewBelowViewWithCalendarDate:(id)a3;
- (id)newTopViewAboveViewWithCalendarDate:(id)a3;
- (id)pushedMonthViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)sceneTitle;
- (int64_t)intendedSizeClass;
- (unint64_t)monthsPerRow;
- (void)_contentSizeCategoryChanged:(id)a3;
- (void)_fadePressHighlightViewToAlpha:(double)a3 duration:(double)a4 completion:(id)a5;
- (void)_localeChanged:(id)a3;
- (void)_pushMonthViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (void)_reloadAllViews;
- (void)_reloadIfBoundsChanged;
- (void)_reloadIfMonthsPerRowChanged;
- (void)_selectedDateChanged;
- (void)_timeZoneChanged:(id)a3;
- (void)_updateBackButtonToSelectedDate;
- (void)_updateNavigationTitleControllerToDate:(id)a3;
- (void)_viewLongPressed:(id)a3;
- (void)_viewTapped:(id)a3;
- (void)didEndScrolling;
- (void)didScroll;
- (void)disableGestureRecognizers;
- (void)enableGestureRecognizers;
- (void)loadView;
- (void)pushContentViewOfType:(int64_t)a3 date:(id)a4 animated:(BOOL)a5;
- (void)receivedTapAtLocation:(CGPoint)a3 usingDate:(id)a4 precise:(BOOL)a5;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)showDate:(id)a3 animated:(BOOL)a4;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)transitionToSizeDidEnd;
- (void)updateBackButtonToDate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4;
@end

@implementation YearViewController

- (YearViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = YearViewController;
  v11 = [(InfiniteScrollViewController *)&v21 initWithCalendarDate:v8 model:v9 window:v10];
  if (v11)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v13 = CUIKCalendarModelSignificantTimeChangeNotification;
    v14 = [(MainViewController *)v11 model];
    [v12 addObserver:v11 selector:"_significantTimeChanged:" name:v13 object:v14];

    [v12 addObserver:v11 selector:"_timeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:0];
    [v12 addObserver:v11 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v12 addObserver:v11 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [(YearViewController *)v11 updateBackButtonToDate:v8];
    }

    v15 = objc_opt_new();
    overlaySignificantDatesProvider = v11->_overlaySignificantDatesProvider;
    v11->_overlaySignificantDatesProvider = v15;

    objc_initWeak(&location, v11);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100111C10;
    v18[3] = &unk_1002119E0;
    objc_copyWeak(&v19, &location);
    [(EKUIOverlayCalendarSignificantDatesProvider *)v11->_overlaySignificantDatesProvider setSignificantDatesChangedHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v12 loadView];
  if (CalCanvasPocketEnabled())
  {
    v3 = [(YearViewController *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [(YearViewController *)self navigationController];
      v6 = [v5 navigationBar];
      v7 = [v6 _backgroundView];
      v8 = [_UIScrollPocketInteraction alloc];
      v9 = [(InfiniteScrollViewController *)self scrollView];
      v10 = [v8 initWithScrollView:v9 edge:1 style:0];
      [v7 addInteraction:v10];
    }
  }

  if ([(YearViewController *)self useHardStylePocket])
  {
    v11 = [(InfiniteScrollViewController *)self scrollView];
    [v11 _setPocketStyle:1 forEdge:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v7 viewWillAppear:?];
  if (!a3)
  {
    v5 = [(YearViewController *)self view];
    [v5 setHidden:0];
  }

  if (self->_requiresReload)
  {
    [(YearViewController *)self _reloadAllViews];
  }

  v6 = [(YearViewController *)self navigationItem];
  [v6 setTitle:&stru_1002133B8];

  [(InfiniteScrollViewController *)self showSelectedDateIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v6 viewDidAppear:a3];
  v4 = [(MainViewController *)self model];
  [v4 startNotificationMonitor];

  [(YearViewController *)self didScroll];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111F7C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  if (qword_100251CD0 != -1)
  {
    dispatch_once(&qword_100251CD0, block);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v4 viewWillDisappear:a3];
  [(YearViewController *)self _hidePressHighlightWithFadeDuration:0.0];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v9 viewDidLoad];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_viewTapped:"];
  tapRecognizer = self->_tapRecognizer;
  self->_tapRecognizer = v3;

  v5 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_viewLongPressed:"];
  longPressRecognizer = self->_longPressRecognizer;
  self->_longPressRecognizer = v5;

  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setMinimumPressDuration:0.1];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setAllowableMovement:0.0];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setDelegate:self];
  v7 = [(YearViewController *)self view];
  [v7 addGestureRecognizer:self->_tapRecognizer];

  v8 = [(YearViewController *)self view];
  [v8 addGestureRecognizer:self->_longPressRecognizer];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v9 viewDidLayoutSubviews];
  if (CalUIKitNavBarEnabled())
  {
    v3 = +[UIDevice currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 && (-[MainViewController window](self, "window"), v5 = objc_claimAutoreleasedReturnValue(), [v5 windowScene], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "activationState"), v6, v5, v7 != 2))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001121F4;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      [(YearViewController *)self _reloadIfBoundsChanged];
    }
  }
}

- (void)_reloadIfBoundsChanged
{
  v3 = [(YearViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(YearViewController *)self view];
  v9 = [v8 window];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v31 = 138413058;
    v32 = v17;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v7;
    v37 = 2048;
    v38 = [(YearViewController *)self monthsPerRow];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ _reloadIfBoundsChanged: bounds=%.0fx%.0f, monthsPerRow=%lu", &v31, 0x2Au);
  }

  p_lastBoundsSize = &self->_lastBoundsSize;
  if (self->_lastBoundsSize.width != v5 || self->_lastBoundsSize.height != v7)
  {
    v20 = [(YearViewController *)self view];
    v21 = [v20 ekui_interfaceOrientation];

    v22 = [(objc_class *)[(YearViewController *)self multipleMonthViewClass] monthClass];
    v23 = [(YearViewController *)self view];
    [v22 heightForInterfaceOrientation:v21 windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{p_lastBoundsSize->width, self->_lastBoundsSize.height}];
    v25 = v24;

    v26 = [(objc_class *)[(YearViewController *)self multipleMonthViewClass] monthClass];
    v27 = [(YearViewController *)self view];
    [v26 heightForInterfaceOrientation:v21 windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{v5, v7}];
    v29 = v28;

    p_lastBoundsSize->width = v5;
    self->_lastBoundsSize.height = v7;
    self->_lastWindowBoundsSize.width = v11;
    self->_lastWindowBoundsSize.height = v13;
    if (vabdd_f64(v25, v29) >= 2.22044605e-16)
    {
      [(YearViewController *)self _reloadAllViews];
      return;
    }

    goto LABEL_14;
  }

  if (self->_lastWindowBoundsSize.width != v11 || self->_lastWindowBoundsSize.height != v13)
  {
    p_lastBoundsSize->width = v5;
    self->_lastBoundsSize.height = v7;
    self->_lastWindowBoundsSize.width = v11;
    self->_lastWindowBoundsSize.height = v13;
LABEL_14:
    [(YearViewController *)self _reloadIfMonthsPerRowChanged];
  }
}

- (BOOL)shouldAnimateScrollToDate:(id)a3 fromClosestDate:(id)a4
{
  v4 = [a3 differenceInMonths:a4];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return v5 < 0x31;
}

- (id)createInitialViewForDate:(id)a3
{
  v4 = [(YearViewController *)self _flooredCalendarDateForCalendarDate:a3];
  v5 = [(YearViewController *)self _viewForCalendarDate:v4];

  return v5;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)a3
{
  v4 = [(YearViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:a3];
  v5 = [(YearViewController *)self _viewForCalendarDate:v4];

  return v5;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)a3
{
  v4 = [(YearViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:a3];
  v5 = [(YearViewController *)self _viewForCalendarDate:v4];

  return v5;
}

- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)a3
{
  v4 = [(YearViewController *)self _flooredCalendarDateForCalendarDate:a3];
  v5 = [v4 calendarDateByAddingMonths:{--[YearViewController monthsPerRow](self, "monthsPerRow")}];

  return v5;
}

- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)a3
{
  v4 = [(YearViewController *)self _flooredCalendarDateForCalendarDate:a3];
  v5 = [v4 calendarDateByAddingMonths:{-[YearViewController monthsPerRow](self, "monthsPerRow")}];

  return v5;
}

- (double)heightForSubviewWithCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self window];
  if (v5)
  {
    v6 = [(MainViewController *)self window];
    [v6 mainContentSize];
  }

  else
  {
    v6 = [(YearViewController *)self view];
    EKUICurrentWindowSize();
  }

  v9 = v7;
  v10 = v8;

  v11 = [(YearViewController *)self multipleMonthViewClass];
  v12 = [(YearViewController *)self view];
  v13 = EKUIHeightSizeClassForViewHierarchy();
  v14 = [(YearViewController *)self view];
  [(objc_class *)v11 heightForViewWithCalendarDate:v4 windowSize:v13 heightSizeClass:EKUIInterfaceOrientationForViewHierarchy() orientation:v9, v10];
  v16 = v15;

  return v16;
}

- (double)topInsetForSubviewWithCalendarDate:(id)a3
{
  v3 = [(YearViewController *)self multipleMonthViewClass];

  [(objc_class *)v3 topInset];
  return result;
}

- (void)showDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MainViewController *)self model];
  v8 = [v7 calendar];
  v9 = [v8 timeZone];
  v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:v9];

  v11 = [v10 calendarDateForYear];
  v12 = [(YearViewController *)self traitCollection];
  LODWORD(v8) = EKUIUsesLargeTextYearView();

  if (v8)
  {
    v13 = v10;

    v11 = v13;
  }

  [(YearViewController *)self _hidePressHighlightWithFadeDuration:0.0];
  v14 = [v11 date];
  v15.receiver = self;
  v15.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v15 showDate:v14 animated:v4];
}

- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4
{
  v6 = [(InfiniteScrollViewController *)self scrollView:a3.x];
  [v6 contentOffset];
  v8 = v7;

  y = a4->y;
  v10 = [(YearViewController *)self view];
  [v10 bounds];
  v11 = CGRectGetHeight(v25) * 0.7;

  if (vabdd_f64(y, v8) > v11)
  {
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:a4->x, a4->y];
    x = v13;
    v15 = v12;
    if (y <= v8)
    {
      if (v12 <= v8)
      {
        v16 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromCGPoint(*a4);
          v21 = 138412546;
          v22 = v19;
          v23 = 2112;
          v24 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Major boundary settling triggered in [%@].  Will settle on offset: [%@]", &v21, 0x16u);
        }

        goto LABEL_7;
      }
    }

    else if (v12 >= v8)
    {
      goto LABEL_7;
    }

    x = a4->x;
    v15 = a4->y;
LABEL_7:
    a4->x = x;
    a4->y = v15;
  }
}

- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)a3
{
  v3 = [(YearViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:a3];
  v4 = [v3 calendarDateByAddingYears:1];

  return v4;
}

- (void)didEndScrolling
{
  v3.receiver = self;
  v3.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v3 didEndScrolling];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
}

- (void)enableGestureRecognizers
{
  v3 = [(YearViewController *)self view];
  [v3 addGestureRecognizer:self->_tapRecognizer];

  v4 = [(YearViewController *)self view];
  [v4 addGestureRecognizer:self->_longPressRecognizer];
}

- (void)disableGestureRecognizers
{
  v3 = [(YearViewController *)self view];
  [v3 removeGestureRecognizer:self->_tapRecognizer];

  v4 = [(YearViewController *)self view];
  [v4 removeGestureRecognizer:self->_longPressRecognizer];
}

- (void)selectDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MainViewController *)self model];
  [v7 setSelectedDate:v6];

  v8 = [v6 date];

  [(YearViewController *)self showDate:v8 animated:v4];
}

- (void)_updateNavigationTitleControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(YearViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateTitleToDate:v5 yearOnly:1];
  }
}

- (void)didScroll
{
  if (CalSolariumEnabled())
  {
    v3 = [(YearViewController *)self bestDateForNewEvent];
    [(YearViewController *)self _updateNavigationTitleControllerToDate:v3];
  }
}

- (BOOL)_isTodayCircleFrameFullyUnobstructed
{
  [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
  v4 = v3;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v5 safeAreaInsets];
  v7 = v6;
  v8 = [(InfiniteScrollViewController *)self scrollView];
  [v8 bounds];
  Width = CGRectGetWidth(v24);

  [(YearViewController *)self frameForTodayHighlight];
  x = v25.origin.x;
  y = v25.origin.y;
  v12 = v25.size.width;
  height = v25.size.height;
  if (CGRectIsNull(v25))
  {
    return 0;
  }

  v15 = 0;
  v16 = v7;
  v17 = Width;
  v18 = v4;
  v19 = x;
  v20 = y;
  v21 = v12;
  v22 = height;

  return CGRectContainsRect(*&v15, *&v19);
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    v12 = [v10 startCalendarDate];
    v13 = [(YearViewController *)self pushedMonthViewControllerWithDate:v12 animated:0];

    [v13 showEvent:v10 animated:v8 showMode:a5 context:v11];
  }

  else
  {
    v14 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No event given.  Will not show event through Year View.", v15, 2u);
    }
  }
}

- (id)bestDateForNewEvent
{
  v3 = CUIKTodayDate();
  v4 = [(MainViewController *)self model];
  v5 = [v4 eventStore];
  v6 = [v5 timeZone];
  v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v6];

  [(YearViewController *)self frameForTodayHighlight];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  LOBYTE(v3) = CGRectIsNull(v24);
  v12 = [(InfiniteScrollViewController *)self scrollView];
  [v12 contentInset];
  v14 = v13;

  v15 = [(YearViewController *)self view];
  [v15 bounds];
  v16 = CGRectGetHeight(v25);
  v17 = [(InfiniteScrollViewController *)self scrollView];
  [v17 contentInset];
  v19 = v18;

  if ((v3 & 1) != 0 || (v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, CGRectGetMinY(v26) > v16 - v19) || (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, CGRectGetMaxY(v27) < v14))
  {
    v20 = [(InfiniteScrollViewController *)self dateOfCenterViewInBuffer];
    v21 = [v20 calendarDateForYear];
  }

  else
  {
    v21 = v7;
  }

  return v21;
}

- (id)sceneTitle
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 selectedDay];
  v4 = [v3 date];

  if (v4)
  {
    v5 = CUIKStringForYear();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)transitionToSizeDidEnd
{
  v3.receiver = self;
  v3.super_class = YearViewController;
  [(MainViewController *)&v3 transitionToSizeDidEnd];
  [(YearViewController *)self _reloadIfMonthsPerRowChanged];
}

- (void)_reloadIfMonthsPerRowChanged
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011334C;
  v10[3] = &unk_10020F958;
  v10[4] = &v11;
  v10[5] = [(YearViewController *)self monthsPerRow];
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v10];
  if (*(v12 + 24) == 1)
  {
    [(YearViewController *)self _reloadAllViews];
    v3 = [(YearViewController *)self view];
    [v3 bounds];
    self->_lastBoundsSize.width = v4;
    self->_lastBoundsSize.height = v5;

    v6 = [(YearViewController *)self view];
    v7 = [v6 window];
    [v7 bounds];
    self->_lastWindowBoundsSize.width = v8;
    self->_lastWindowBoundsSize.height = v9;
  }

  _Block_object_dispose(&v11, 8);
}

- (void)_selectedDateChanged
{
  v3 = [(YearViewController *)self navigationController];
  v9 = [v3 viewControllers];

  v4 = [v9 count];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  v7 = v9;
  if (v5)
  {
    v8 = [v9 objectAtIndex:v6];
    if (v8 == self)
    {
      [(YearViewController *)self _updateBackButtonToSelectedDate];
    }

    v7 = v9;
  }
}

- (void)_timeZoneChanged:(id)a3
{
  v4 = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  [(YearViewController *)self _reloadAllViews];
  [(YearViewController *)self timeZoneDidChange];
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:&stru_100211A20];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)_localeChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113528;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_contentSizeCategoryChanged:(id)a3
{
  +[EKUILargeTextUtilities clearCache];
  v7 = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  v4 = [(YearViewController *)self view];
  v5 = [v4 window];
  if (v5)
  {

LABEL_4:
    [(YearViewController *)self _reloadAllViews];
    goto LABEL_5;
  }

  v6 = EKUIHasFallbackSizingContext();

  if (v6)
  {
    goto LABEL_4;
  }

  self->_requiresReload = 1;
LABEL_5:
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)_reloadAllViews
{
  [(YearViewController *)self _updateBackButtonToSelectedDate];
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedDate];
  v5 = [(MainViewController *)self model];
  v6 = [v5 calendar];
  v7 = [v6 timeZone];
  v8 = [v4 calendarDateInTimeZone:v7];

  [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:v8];
}

- (void)_viewTapped:(id)a3
{
  v19 = a3;
  v4 = [(YearViewController *)self view];
  [v19 locationInView:v4];
  v6 = v5;
  v8 = v7;

  v9 = [(InfiniteScrollViewController *)self subviewForPoint:v6, v8];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [(YearViewController *)self view];
      [v10 convertPoint:v11 fromView:{v6, v8}];
      v13 = v12;
      v15 = v14;

      v16 = [v10 startOfMonthForPoint:{v13, v15}];
      if (v16)
      {
        v17 = [v19 touches];
        v18 = [(YearViewController *)self _containsPreciseTouch:v17];

        [(YearViewController *)self receivedTapAtLocation:v16 usingDate:v18 precise:v6, v8];
      }
    }
  }
}

- (BOOL)_containsPreciseTouch:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)receivedTapAtLocation:(CGPoint)a3 usingDate:(id)a4 precise:(BOOL)a5
{
  v6 = a4;
  [(YearViewController *)self _pushMonthViewControllerWithDate:v6 animated:[(YearViewController *)self shouldAnimateTransitionsToMonthView]];
}

- (void)_pushMonthViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(YearViewController *)self _updateBackButtonToSelectedDate];
  v6 = [(YearViewController *)self pushedMonthViewControllerWithDate:v7 animated:v4];
}

- (void)_fadePressHighlightViewToAlpha:(double)a3 duration:(double)a4 completion:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100113AEC;
  v5[3] = &unk_10020EE00;
  v5[4] = self;
  *&v5[5] = a3;
  [UIView animateWithDuration:327684 delay:v5 options:a5 animations:a4 completion:0.0];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = self->_longPressRecognizer != v6 || [v7 type] != 1;

  return v9;
}

- (void)_viewLongPressed:(id)a3
{
  v4 = a3;
  v5 = [(YearViewController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(InfiniteScrollViewController *)self subviewForPoint:v7, v9];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = [(YearViewController *)self view];
      [v11 convertPoint:v12 fromView:{v7, v9}];
      v14 = v13;
      v16 = v15;

      v17 = [v11 startOfMonthForPoint:{v14, v16}];
      if (!v17)
      {
        [(YearViewController *)self _hidePressHighlightWithFadeDuration:0.2];
LABEL_19:

        goto LABEL_20;
      }

      v18 = [v11 monthViewForCalendarDate:v17];
      if (!self->_pressHighlight)
      {
        v19 = objc_opt_new();
        pressHighlight = self->_pressHighlight;
        self->_pressHighlight = v19;

        [(UIView *)self->_pressHighlight setAlpha:0.0];
        [(UIView *)self->_pressHighlight setUserInteractionEnabled:0];
        v21 = [(YearViewController *)self view];
        [v21 addSubview:self->_pressHighlight];

        v22 = [(YearViewController *)self view];
        [v22 bringSubviewToFront:self->_pressHighlight];
      }

      v23 = [v11 traitCollection];
      [UITraitCollection _setCurrentTraitCollection:v23];

      v24 = +[UIColor systemBackgroundColor];
      v25 = [v24 colorWithAlphaComponent:0.8];
      [(UIView *)self->_pressHighlight setBackgroundColor:v25];

      v26 = [v4 state];
      if (v26 == 3)
      {
        v32 = [(YearViewController *)self view];
        [v18 bounds];
        [v32 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight frame];
        IsRectEffectivelyEqualToRect = CalIsRectEffectivelyEqualToRect();

        if (IsRectEffectivelyEqualToRect)
        {
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100113FFC;
          v34[3] = &unk_10020F7A8;
          v34[4] = self;
          v35 = v17;
          [(YearViewController *)self _fadePressHighlightViewToAlpha:v34 duration:0.0 completion:0.1];
        }

        goto LABEL_18;
      }

      if (v26 == 2)
      {
        v28 = [(YearViewController *)self view];
        [v18 bounds];
        [v28 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight frame];
        v29 = CalIsRectEffectivelyEqualToRect();

        if ((v29 & 1) == 0)
        {
          [(YearViewController *)self _hidePressHighlightWithFadeDuration:0.2];
          goto LABEL_18;
        }

        v30 = [(YearViewController *)self view];
        [v18 bounds];
        [v30 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight frame];
        v31 = CalIsRectEffectivelyEqualToRect();

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v26 != 1)
        {
LABEL_18:

          goto LABEL_19;
        }

        v27 = [(YearViewController *)self view];
        [v18 bounds];
        [v27 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight setFrame:?];
      }

      [(YearViewController *)self _showPressHighlightWithFadeDuration:0.2];
      goto LABEL_18;
    }
  }

LABEL_20:
}

- (id)pushedMonthViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pushDelegate);
  v8 = [WeakRetained pushNextLevelMainViewControllerContainerWithDate:v6 animated:v4];

  return v8;
}

- (void)pushContentViewOfType:(int64_t)a3 date:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pushDelegate);
  [WeakRetained pushContentViewOfType:a3 date:v8 animated:v5];
}

- (CGRect)frameForTodayHighlight
{
  v3 = CUIKTodayDate();
  v4 = [(MainViewController *)self model];
  v5 = [v4 eventStore];
  v6 = [v5 timeZone];
  v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v6];
  v8 = [(YearViewController *)self monthViewForCalendarDate:v7];

  if (v8)
  {
    [v8 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(YearViewController *)self view];
    [v17 convertRect:v8 fromView:{v10, v12, v14, v16}];
    x = v18;
    y = v20;
    width = v22;
    height = v24;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)monthFrameForCalendarDate:(id)a3 adjustHeightUp:(BOOL)a4
{
  v4 = a4;
  v6 = [(YearViewController *)self monthViewForCalendarDate:a3];
  [v6 frameForGridOfDays:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(YearViewController *)self view];
  [v15 convertRect:v6 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGPoint)monthHeaderLocationForCalendarDate:(id)a3
{
  v4 = [(YearViewController *)self monthViewForCalendarDate:a3];
  [v4 headerOrigin];
  v6 = v5;
  v8 = v7;
  v9 = [(YearViewController *)self view];
  [v9 convertPoint:v4 fromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)monthViewForCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [(InfiniteScrollViewController *)self subviewForDate:v4];
  [v5 layoutIfNeeded];
  v6 = [v5 monthViewForCalendarDate:v4];

  return v6;
}

- (void)_updateBackButtonToSelectedDate
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedDate];

  if (v4)
  {
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [(YearViewController *)self updateBackButtonToDate:v4];
    }
  }

  else
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No selected date.  Will not update back back title.", v6, 2u);
    }
  }
}

- (void)updateBackButtonToDate:(id)a3
{
  v4 = a3;
  v22 = [(YearViewController *)self parentViewController];
  v5 = [v22 navigationItem];
  v6 = [v4 date];

  v7 = CUIKStringForYear();
  [v5 setBackButtonTitle:v7];

  v8 = [(YearViewController *)self navigationController];
  v9 = [v8 navigationBar];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(YearViewController *)self navigationController];
  v19 = [v18 navigationBar];
  [v19 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v20 = [(YearViewController *)self navigationController];
  v21 = [v20 navigationBar];
  [v21 setFrame:{v11, v13, v15 + 0.0000001, v17}];
}

- (id)_flooredCalendarDateForCalendarDate:(id)a3
{
  v4 = [a3 calendarDateForMonth];
  v5 = [v4 date];
  v6 = [(MainViewController *)self model];
  v7 = [v6 calendar];
  v8 = [v7 ordinalityOfUnit:8 inUnit:4 forDate:v5];

  v9 = [(YearViewController *)self monthsPerRow];
  v10 = [v4 calendarDateByAddingMonths:(1 - (v8 + v9) + (v8 + v9 - 1) / v9 * v9)];

  return v10;
}

- (id)_viewForCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  v6 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v6)
  {
    v7 = v6;
    [v6 setCalendarDate:v4];
  }

  else
  {
    v8 = [(MainViewController *)self model];
    v9 = [v8 calendar];

    v7 = [objc_alloc(-[YearViewController multipleMonthViewClass](self "multipleMonthViewClass"))];
    [v7 setOverlaySignificantDatesProvider:self->_overlaySignificantDatesProvider];
  }

  EKUIPopFallbackSizingContextWithViewHierarchy();

  return v7;
}

- (NextLevelMainViewControllerContainerPushDelegate)pushDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pushDelegate);

  return WeakRetained;
}

- (int64_t)intendedSizeClass
{
  objc_opt_class();
  sub_100026F2C();
  return 0;
}

- (Class)multipleMonthViewClass
{
  objc_opt_class();
  sub_100026F2C();
  return 0;
}

- (unint64_t)monthsPerRow
{
  objc_opt_class();
  sub_100026F2C();
  return 1;
}

@end
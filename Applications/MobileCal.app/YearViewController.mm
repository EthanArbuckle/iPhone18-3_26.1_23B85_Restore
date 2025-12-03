@interface YearViewController
- (BOOL)_containsPreciseTouch:(id)touch;
- (BOOL)_isTodayCircleFrameFullyUnobstructed;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)shouldAnimateScrollToDate:(id)date fromClosestDate:(id)closestDate;
- (CGPoint)monthHeaderLocationForCalendarDate:(id)date;
- (CGRect)frameForTodayHighlight;
- (CGRect)monthFrameForCalendarDate:(id)date adjustHeightUp:(BOOL)up;
- (Class)multipleMonthViewClass;
- (NextLevelMainViewControllerContainerPushDelegate)pushDelegate;
- (YearViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window;
- (double)heightForSubviewWithCalendarDate:(id)date;
- (double)topInsetForSubviewWithCalendarDate:(id)date;
- (id)_flooredCalendarDateForCalendarDate:(id)date;
- (id)_viewForCalendarDate:(id)date;
- (id)bestDateForNewEvent;
- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)date;
- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)date;
- (id)createInitialViewForDate:(id)date;
- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)date;
- (id)monthViewForCalendarDate:(id)date;
- (id)newBottomViewBelowViewWithCalendarDate:(id)date;
- (id)newTopViewAboveViewWithCalendarDate:(id)date;
- (id)pushedMonthViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)sceneTitle;
- (int64_t)intendedSizeClass;
- (unint64_t)monthsPerRow;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_fadePressHighlightViewToAlpha:(double)alpha duration:(double)duration completion:(id)completion;
- (void)_localeChanged:(id)changed;
- (void)_pushMonthViewControllerWithDate:(id)date animated:(BOOL)animated;
- (void)_reloadAllViews;
- (void)_reloadIfBoundsChanged;
- (void)_reloadIfMonthsPerRowChanged;
- (void)_selectedDateChanged;
- (void)_timeZoneChanged:(id)changed;
- (void)_updateBackButtonToSelectedDate;
- (void)_updateNavigationTitleControllerToDate:(id)date;
- (void)_viewLongPressed:(id)pressed;
- (void)_viewTapped:(id)tapped;
- (void)didEndScrolling;
- (void)didScroll;
- (void)disableGestureRecognizers;
- (void)enableGestureRecognizers;
- (void)loadView;
- (void)pushContentViewOfType:(int64_t)type date:(id)date animated:(BOOL)animated;
- (void)receivedTapAtLocation:(CGPoint)location usingDate:(id)date precise:(BOOL)precise;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)showDate:(id)date animated:(BOOL)animated;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)transitionToSizeDidEnd;
- (void)updateBackButtonToDate:(id)date;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation YearViewController

- (YearViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window
{
  dateCopy = date;
  modelCopy = model;
  windowCopy = window;
  v21.receiver = self;
  v21.super_class = YearViewController;
  v11 = [(InfiniteScrollViewController *)&v21 initWithCalendarDate:dateCopy model:modelCopy window:windowCopy];
  if (v11)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v13 = CUIKCalendarModelSignificantTimeChangeNotification;
    model = [(MainViewController *)v11 model];
    [v12 addObserver:v11 selector:"_significantTimeChanged:" name:v13 object:model];

    [v12 addObserver:v11 selector:"_timeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:0];
    [v12 addObserver:v11 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v12 addObserver:v11 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [(YearViewController *)v11 updateBackButtonToDate:dateCopy];
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
    navigationController = [(YearViewController *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController2 = [(YearViewController *)self navigationController];
      navigationBar = [navigationController2 navigationBar];
      _backgroundView = [navigationBar _backgroundView];
      v8 = [_UIScrollPocketInteraction alloc];
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      v10 = [v8 initWithScrollView:scrollView edge:1 style:0];
      [_backgroundView addInteraction:v10];
    }
  }

  if ([(YearViewController *)self useHardStylePocket])
  {
    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 _setPocketStyle:1 forEdge:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v7 viewWillAppear:?];
  if (!appear)
  {
    view = [(YearViewController *)self view];
    [view setHidden:0];
  }

  if (self->_requiresReload)
  {
    [(YearViewController *)self _reloadAllViews];
  }

  navigationItem = [(YearViewController *)self navigationItem];
  [navigationItem setTitle:&stru_1002133B8];

  [(InfiniteScrollViewController *)self showSelectedDateIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v6 viewDidAppear:appear];
  model = [(MainViewController *)self model];
  [model startNotificationMonitor];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v4 viewWillDisappear:disappear];
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
  view = [(YearViewController *)self view];
  [view addGestureRecognizer:self->_tapRecognizer];

  view2 = [(YearViewController *)self view];
  [view2 addGestureRecognizer:self->_longPressRecognizer];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v9 viewDidLayoutSubviews];
  if (CalUIKitNavBarEnabled())
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if (userInterfaceIdiom && (-[MainViewController window](self, "window"), v5 = objc_claimAutoreleasedReturnValue(), [v5 windowScene], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "activationState"), v6, v5, v7 != 2))
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
  view = [(YearViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  view2 = [(YearViewController *)self view];
  window = [view2 window];
  [window bounds];
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
    monthsPerRow = [(YearViewController *)self monthsPerRow];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ _reloadIfBoundsChanged: bounds=%.0fx%.0f, monthsPerRow=%lu", &v31, 0x2Au);
  }

  p_lastBoundsSize = &self->_lastBoundsSize;
  if (self->_lastBoundsSize.width != v5 || self->_lastBoundsSize.height != v7)
  {
    view3 = [(YearViewController *)self view];
    ekui_interfaceOrientation = [view3 ekui_interfaceOrientation];

    monthClass = [(objc_class *)[(YearViewController *)self multipleMonthViewClass] monthClass];
    view4 = [(YearViewController *)self view];
    [monthClass heightForInterfaceOrientation:ekui_interfaceOrientation windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{p_lastBoundsSize->width, self->_lastBoundsSize.height}];
    v25 = v24;

    monthClass2 = [(objc_class *)[(YearViewController *)self multipleMonthViewClass] monthClass];
    view5 = [(YearViewController *)self view];
    [monthClass2 heightForInterfaceOrientation:ekui_interfaceOrientation windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{v5, v7}];
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

- (BOOL)shouldAnimateScrollToDate:(id)date fromClosestDate:(id)closestDate
{
  v4 = [date differenceInMonths:closestDate];
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

- (id)createInitialViewForDate:(id)date
{
  v4 = [(YearViewController *)self _flooredCalendarDateForCalendarDate:date];
  v5 = [(YearViewController *)self _viewForCalendarDate:v4];

  return v5;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)date
{
  v4 = [(YearViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:date];
  v5 = [(YearViewController *)self _viewForCalendarDate:v4];

  return v5;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)date
{
  v4 = [(YearViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:date];
  v5 = [(YearViewController *)self _viewForCalendarDate:v4];

  return v5;
}

- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)date
{
  v4 = [(YearViewController *)self _flooredCalendarDateForCalendarDate:date];
  v5 = [v4 calendarDateByAddingMonths:{--[YearViewController monthsPerRow](self, "monthsPerRow")}];

  return v5;
}

- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)date
{
  v4 = [(YearViewController *)self _flooredCalendarDateForCalendarDate:date];
  v5 = [v4 calendarDateByAddingMonths:{-[YearViewController monthsPerRow](self, "monthsPerRow")}];

  return v5;
}

- (double)heightForSubviewWithCalendarDate:(id)date
{
  dateCopy = date;
  window = [(MainViewController *)self window];
  if (window)
  {
    window2 = [(MainViewController *)self window];
    [window2 mainContentSize];
  }

  else
  {
    window2 = [(YearViewController *)self view];
    EKUICurrentWindowSize();
  }

  v9 = v7;
  v10 = v8;

  multipleMonthViewClass = [(YearViewController *)self multipleMonthViewClass];
  view = [(YearViewController *)self view];
  v13 = EKUIHeightSizeClassForViewHierarchy();
  view2 = [(YearViewController *)self view];
  [(objc_class *)multipleMonthViewClass heightForViewWithCalendarDate:dateCopy windowSize:v13 heightSizeClass:EKUIInterfaceOrientationForViewHierarchy() orientation:v9, v10];
  v16 = v15;

  return v16;
}

- (double)topInsetForSubviewWithCalendarDate:(id)date
{
  multipleMonthViewClass = [(YearViewController *)self multipleMonthViewClass];

  [(objc_class *)multipleMonthViewClass topInset];
  return result;
}

- (void)showDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  timeZone = [calendar timeZone];
  v10 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  calendarDateForYear = [v10 calendarDateForYear];
  traitCollection = [(YearViewController *)self traitCollection];
  LODWORD(calendar) = EKUIUsesLargeTextYearView();

  if (calendar)
  {
    v13 = v10;

    calendarDateForYear = v13;
  }

  [(YearViewController *)self _hidePressHighlightWithFadeDuration:0.0];
  date = [calendarDateForYear date];
  v15.receiver = self;
  v15.super_class = YearViewController;
  [(InfiniteScrollViewController *)&v15 showDate:date animated:animatedCopy];
}

- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v6 = [(InfiniteScrollViewController *)self scrollView:velocity.x];
  [v6 contentOffset];
  v8 = v7;

  y = offset->y;
  view = [(YearViewController *)self view];
  [view bounds];
  v11 = CGRectGetHeight(v25) * 0.7;

  if (vabdd_f64(y, v8) > v11)
  {
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:offset->x, offset->y];
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
          v20 = NSStringFromCGPoint(*offset);
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

    x = offset->x;
    v15 = offset->y;
LABEL_7:
    offset->x = x;
    offset->y = v15;
  }
}

- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)date
{
  v3 = [(YearViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:date];
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
  view = [(YearViewController *)self view];
  [view addGestureRecognizer:self->_tapRecognizer];

  view2 = [(YearViewController *)self view];
  [view2 addGestureRecognizer:self->_longPressRecognizer];
}

- (void)disableGestureRecognizers
{
  view = [(YearViewController *)self view];
  [view removeGestureRecognizer:self->_tapRecognizer];

  view2 = [(YearViewController *)self view];
  [view2 removeGestureRecognizer:self->_longPressRecognizer];
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(MainViewController *)self model];
  [model setSelectedDate:dateCopy];

  date = [dateCopy date];

  [(YearViewController *)self showDate:date animated:animatedCopy];
}

- (void)_updateNavigationTitleControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(YearViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateTitleToDate:dateCopy yearOnly:1];
  }
}

- (void)didScroll
{
  if (CalSolariumEnabled())
  {
    bestDateForNewEvent = [(YearViewController *)self bestDateForNewEvent];
    [(YearViewController *)self _updateNavigationTitleControllerToDate:bestDateForNewEvent];
  }
}

- (BOOL)_isTodayCircleFrameFullyUnobstructed
{
  [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
  v4 = v3;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView safeAreaInsets];
  v7 = v6;
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 bounds];
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

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (eventCopy)
  {
    startCalendarDate = [eventCopy startCalendarDate];
    v13 = [(YearViewController *)self pushedMonthViewControllerWithDate:startCalendarDate animated:0];

    [v13 showEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
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
  model = [(MainViewController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];
  v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];

  [(YearViewController *)self frameForTodayHighlight];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  LOBYTE(v3) = CGRectIsNull(v24);
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentInset];
  v14 = v13;

  view = [(YearViewController *)self view];
  [view bounds];
  v16 = CGRectGetHeight(v25);
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 contentInset];
  v19 = v18;

  if ((v3 & 1) != 0 || (v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, CGRectGetMinY(v26) > v16 - v19) || (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, CGRectGetMaxY(v27) < v14))
  {
    dateOfCenterViewInBuffer = [(InfiniteScrollViewController *)self dateOfCenterViewInBuffer];
    calendarDateForYear = [dateOfCenterViewInBuffer calendarDateForYear];
  }

  else
  {
    calendarDateForYear = v7;
  }

  return calendarDateForYear;
}

- (id)sceneTitle
{
  model = [(MainViewController *)self model];
  selectedDay = [model selectedDay];
  date = [selectedDay date];

  if (date)
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
    view = [(YearViewController *)self view];
    [view bounds];
    self->_lastBoundsSize.width = v4;
    self->_lastBoundsSize.height = v5;

    view2 = [(YearViewController *)self view];
    window = [view2 window];
    [window bounds];
    self->_lastWindowBoundsSize.width = v8;
    self->_lastWindowBoundsSize.height = v9;
  }

  _Block_object_dispose(&v11, 8);
}

- (void)_selectedDateChanged
{
  navigationController = [(YearViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v4 = [viewControllers count];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  v7 = viewControllers;
  if (v5)
  {
    v8 = [viewControllers objectAtIndex:v6];
    if (v8 == self)
    {
      [(YearViewController *)self _updateBackButtonToSelectedDate];
    }

    v7 = viewControllers;
  }
}

- (void)_timeZoneChanged:(id)changed
{
  window = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  [(YearViewController *)self _reloadAllViews];
  [(YearViewController *)self timeZoneDidChange];
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:&stru_100211A20];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)_localeChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113528;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  +[EKUILargeTextUtilities clearCache];
  window = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  view = [(YearViewController *)self view];
  window2 = [view window];
  if (window2)
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
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  model2 = [(MainViewController *)self model];
  calendar = [model2 calendar];
  timeZone = [calendar timeZone];
  v8 = [selectedDate calendarDateInTimeZone:timeZone];

  [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:v8];
}

- (void)_viewTapped:(id)tapped
{
  tappedCopy = tapped;
  view = [(YearViewController *)self view];
  [tappedCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  v9 = [(InfiniteScrollViewController *)self subviewForPoint:v6, v8];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      view2 = [(YearViewController *)self view];
      [v10 convertPoint:view2 fromView:{v6, v8}];
      v13 = v12;
      v15 = v14;

      v16 = [v10 startOfMonthForPoint:{v13, v15}];
      if (v16)
      {
        touches = [tappedCopy touches];
        v18 = [(YearViewController *)self _containsPreciseTouch:touches];

        [(YearViewController *)self receivedTapAtLocation:v16 usingDate:v18 precise:v6, v8];
      }
    }
  }
}

- (BOOL)_containsPreciseTouch:(id)touch
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  touchCopy = touch;
  v4 = [touchCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(touchCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [touchCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)receivedTapAtLocation:(CGPoint)location usingDate:(id)date precise:(BOOL)precise
{
  dateCopy = date;
  [(YearViewController *)self _pushMonthViewControllerWithDate:dateCopy animated:[(YearViewController *)self shouldAnimateTransitionsToMonthView]];
}

- (void)_pushMonthViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  [(YearViewController *)self _updateBackButtonToSelectedDate];
  v6 = [(YearViewController *)self pushedMonthViewControllerWithDate:dateCopy animated:animatedCopy];
}

- (void)_fadePressHighlightViewToAlpha:(double)alpha duration:(double)duration completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100113AEC;
  v5[3] = &unk_10020EE00;
  v5[4] = self;
  *&v5[5] = alpha;
  [UIView animateWithDuration:327684 delay:v5 options:completion animations:duration completion:0.0];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = touchCopy;
  v9 = self->_longPressRecognizer != recognizerCopy || [touchCopy type] != 1;

  return v9;
}

- (void)_viewLongPressed:(id)pressed
{
  pressedCopy = pressed;
  view = [(YearViewController *)self view];
  [pressedCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  v10 = [(InfiniteScrollViewController *)self subviewForPoint:v7, v9];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      view2 = [(YearViewController *)self view];
      [v11 convertPoint:view2 fromView:{v7, v9}];
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
        view3 = [(YearViewController *)self view];
        [view3 addSubview:self->_pressHighlight];

        view4 = [(YearViewController *)self view];
        [view4 bringSubviewToFront:self->_pressHighlight];
      }

      traitCollection = [v11 traitCollection];
      [UITraitCollection _setCurrentTraitCollection:traitCollection];

      v24 = +[UIColor systemBackgroundColor];
      v25 = [v24 colorWithAlphaComponent:0.8];
      [(UIView *)self->_pressHighlight setBackgroundColor:v25];

      state = [pressedCopy state];
      if (state == 3)
      {
        view5 = [(YearViewController *)self view];
        [v18 bounds];
        [view5 convertRect:v18 fromView:?];
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

      if (state == 2)
      {
        view6 = [(YearViewController *)self view];
        [v18 bounds];
        [view6 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight frame];
        v29 = CalIsRectEffectivelyEqualToRect();

        if ((v29 & 1) == 0)
        {
          [(YearViewController *)self _hidePressHighlightWithFadeDuration:0.2];
          goto LABEL_18;
        }

        view7 = [(YearViewController *)self view];
        [v18 bounds];
        [view7 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight frame];
        v31 = CalIsRectEffectivelyEqualToRect();

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (state != 1)
        {
LABEL_18:

          goto LABEL_19;
        }

        view8 = [(YearViewController *)self view];
        [v18 bounds];
        [view8 convertRect:v18 fromView:?];
        [(UIView *)self->_pressHighlight setFrame:?];
      }

      [(YearViewController *)self _showPressHighlightWithFadeDuration:0.2];
      goto LABEL_18;
    }
  }

LABEL_20:
}

- (id)pushedMonthViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_pushDelegate);
  v8 = [WeakRetained pushNextLevelMainViewControllerContainerWithDate:dateCopy animated:animatedCopy];

  return v8;
}

- (void)pushContentViewOfType:(int64_t)type date:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_pushDelegate);
  [WeakRetained pushContentViewOfType:type date:dateCopy animated:animatedCopy];
}

- (CGRect)frameForTodayHighlight
{
  v3 = CUIKTodayDate();
  model = [(MainViewController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];
  v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];
  v8 = [(YearViewController *)self monthViewForCalendarDate:v7];

  if (v8)
  {
    [v8 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [(YearViewController *)self view];
    [view convertRect:v8 fromView:{v10, v12, v14, v16}];
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

- (CGRect)monthFrameForCalendarDate:(id)date adjustHeightUp:(BOOL)up
{
  upCopy = up;
  v6 = [(YearViewController *)self monthViewForCalendarDate:date];
  [v6 frameForGridOfDays:upCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view = [(YearViewController *)self view];
  [view convertRect:v6 fromView:{v8, v10, v12, v14}];
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

- (CGPoint)monthHeaderLocationForCalendarDate:(id)date
{
  v4 = [(YearViewController *)self monthViewForCalendarDate:date];
  [v4 headerOrigin];
  v6 = v5;
  v8 = v7;
  view = [(YearViewController *)self view];
  [view convertPoint:v4 fromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)monthViewForCalendarDate:(id)date
{
  dateCopy = date;
  v5 = [(InfiniteScrollViewController *)self subviewForDate:dateCopy];
  [v5 layoutIfNeeded];
  v6 = [v5 monthViewForCalendarDate:dateCopy];

  return v6;
}

- (void)_updateBackButtonToSelectedDate
{
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];

  if (selectedDate)
  {
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [(YearViewController *)self updateBackButtonToDate:selectedDate];
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

- (void)updateBackButtonToDate:(id)date
{
  dateCopy = date;
  parentViewController = [(YearViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  date = [dateCopy date];

  v7 = CUIKStringForYear();
  [navigationItem setBackButtonTitle:v7];

  navigationController = [(YearViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  navigationController2 = [(YearViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  navigationController3 = [(YearViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setFrame:{v11, v13, v15 + 0.0000001, v17}];
}

- (id)_flooredCalendarDateForCalendarDate:(id)date
{
  calendarDateForMonth = [date calendarDateForMonth];
  date = [calendarDateForMonth date];
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  v8 = [calendar ordinalityOfUnit:8 inUnit:4 forDate:date];

  monthsPerRow = [(YearViewController *)self monthsPerRow];
  v10 = [calendarDateForMonth calendarDateByAddingMonths:(1 - (v8 + monthsPerRow) + (v8 + monthsPerRow - 1) / monthsPerRow * monthsPerRow)];

  return v10;
}

- (id)_viewForCalendarDate:(id)date
{
  dateCopy = date;
  window = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v7 = dequeueReusableView;
    [dequeueReusableView setCalendarDate:dateCopy];
  }

  else
  {
    model = [(MainViewController *)self model];
    calendar = [model calendar];

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
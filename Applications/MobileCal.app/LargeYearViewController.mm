@interface LargeYearViewController
+ (unint64_t)_monthsPerRowForWindowSize:(CGSize)size;
+ (unint64_t)defaultMonthsPerRowForWindowSize:(CGSize)size;
- (BOOL)shouldAnimateScrollToDate:(id)date fromClosestDate:(id)closestDate;
- (Class)multipleMonthViewClass;
- (double)leftBarButtonBlankFixedSpaceWidth;
- (double)showDateVerticalOffsetForDate:(id)date;
- (id)_currentlyViewingCalendarDate;
- (id)sceneTitle;
- (int64_t)_currentOrientation;
- (int64_t)_orientationForSize:(CGSize)size;
- (unint64_t)monthsPerRow;
- (void)_queueForcedUpdateToYearNumbers;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated;
- (void)_updateYearNumbersAnimated:(BOOL)animated withForce:(BOOL)force;
- (void)didEndScrolling;
- (void)didScroll;
- (void)receivedTapAtLocation:(CGPoint)location usingDate:(id)date precise:(BOOL)precise;
- (void)reinitializeAllViewsWithCalendarDate:(id)date;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation LargeYearViewController

- (int64_t)_orientationForSize:(CGSize)size
{
  if ([(LargeYearViewController *)self _usePortraitLayoutForSize:size.width, size.height])
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (int64_t)_currentOrientation
{
  view = [(LargeYearViewController *)self view];
  [view frame];
  v6 = [(LargeYearViewController *)self _orientationForSize:v4, v5];

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (!self->_viewHasAppearedBefore || (orientationForCurrentViewLayout = self->_orientationForCurrentViewLayout, orientationForCurrentViewLayout != [(LargeYearViewController *)self _currentOrientation]) || !self->_viewHasAppearedBefore)
  {
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];

    [(LargeYearViewController *)self reinitializeAllViewsWithCalendarDate:selectedDate];
    self->_viewHasAppearedBefore = 1;
    self->_orientationForCurrentViewLayout = [(LargeYearViewController *)self _currentOrientation];
  }

  view = [(LargeYearViewController *)self view];
  [view setNeedsLayout];

  v9.receiver = self;
  v9.super_class = LargeYearViewController;
  [(YearViewController *)&v9 viewWillAppear:appearCopy];
}

- (void)reinitializeAllViewsWithCalendarDate:(id)date
{
  v4.receiver = self;
  v4.super_class = LargeYearViewController;
  [(InfiniteScrollViewController *)&v4 reinitializeAllViewsWithCalendarDate:date];
  self->_orientationForCurrentViewLayout = [(LargeYearViewController *)self _currentOrientation];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];
    date = [selectedDate date];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = date;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  self->_viewIsVisible = 1;
  currentYearNumber = self->_currentYearNumber;
  self->_currentYearNumber = 0;

  [(LargeYearViewController *)self _updateYearNumbersAnimated:1 withForce:1];
  v13.receiver = self;
  v13.super_class = LargeYearViewController;
  [(YearViewController *)&v13 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = LargeYearViewController;
  [(YearViewController *)&v5 viewWillDisappear:disappear];
  self->_viewIsVisible = 0;
  currentYearNumber = self->_currentYearNumber;
  self->_currentYearNumber = 0;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v13.receiver = self;
  v13.super_class = LargeYearViewController;
  [(InfiniteScrollViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(LargeYearViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (activationState != 2)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100122470;
    v12[3] = &unk_100211D70;
    v12[4] = self;
    [coordinatorCopy animateAlongsideTransition:&stru_100211D48 completion:v12];
  }
}

- (BOOL)shouldAnimateScrollToDate:(id)date fromClosestDate:(id)closestDate
{
  if (self->_activeDateDuringRotation)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = LargeYearViewController;
  return [(YearViewController *)&v7 shouldAnimateScrollToDate:date fromClosestDate:closestDate];
}

- (double)showDateVerticalOffsetForDate:(id)date
{
  dateCopy = date;
  view = [(LargeYearViewController *)self view];
  v6 = EKUICurrentWindowSizeParadigmForViewHierarchy();

  v7 = 32.0;
  if (v6 >= 0x800000)
  {
    if (v6 > 0x7FFFFFF)
    {
      if (v6 == 0x8000000)
      {
        goto LABEL_15;
      }

      v8 = 0x20000000;
    }

    else
    {
      if (v6 == 0x800000)
      {
        goto LABEL_15;
      }

      v8 = 0x2000000;
    }

    if (v6 != v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v6 <= 4095)
  {
    if (v6 == 512)
    {
      v7 = 10.0;
      goto LABEL_16;
    }

    if (v6 != 1024)
    {
      goto LABEL_16;
    }

LABEL_15:
    v7 = 0.0;
    goto LABEL_16;
  }

  if (v6 == 4096)
  {
    v7 = 18.0;
    goto LABEL_16;
  }

  if (v6 == 0x80000)
  {
    goto LABEL_15;
  }

LABEL_16:
  traitCollection = [(LargeYearViewController *)self traitCollection];
  if (EKUIUsesLargeTextYearView())
  {
    month = [dateCopy month];
    monthsPerRow = [(LargeYearViewController *)self monthsPerRow];

    v12 = 0.0;
    if (month > monthsPerRow)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v13 = __ROR8__(v6 - 512, 9);
  if (v13 <= 7 && ((1 << v13) & 0x83) != 0)
  {
    v14 = 63.0;
  }

  else
  {
    v14 = 43.0;
  }

  v12 = v7 + v14;
LABEL_25:

  return v12;
}

- (void)didScroll
{
  if (self->_viewIsVisible)
  {
    [(LargeYearViewController *)self _updateYearNumbersAnimated:1 withForce:0];
  }
}

- (void)didEndScrolling
{
  v5.receiver = self;
  v5.super_class = LargeYearViewController;
  [(YearViewController *)&v5 didEndScrolling];
  if (self->_viewIsVisible)
  {
    _currentlyViewingCalendarDate = [(LargeYearViewController *)self _currentlyViewingCalendarDate];
    model = [(MainViewController *)self model];
    [model setSelectedDate:_currentlyViewingCalendarDate];
  }

  [(LargeYearViewController *)self _updateYearNumbersAnimated:1 withForce:1];
}

- (Class)multipleMonthViewClass
{
  traitCollection = [(LargeYearViewController *)self traitCollection];
  EKUIUsesLargeTextYearView();

  v3 = objc_opt_class();

  return v3;
}

- (unint64_t)monthsPerRow
{
  window = [(MainViewController *)self window];
  EKUICurrentWindowSize();
  v4 = v3;
  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [window mainContentSize];
    v4 = v7;
  }

  v8 = [objc_opt_class() _monthsPerRowForWindowSize:{v4, v6}];

  return v8;
}

+ (unint64_t)_monthsPerRowForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (EKUIUsesLargeTextYearView())
  {

    return [LargeTextLargeYearMultipleMonthView numberOfMonthsPerRowForWindowSize:width, height];
  }

  else
  {

    return [self defaultMonthsPerRowForWindowSize:{width, height}];
  }
}

+ (unint64_t)defaultMonthsPerRowForWindowSize:(CGSize)size
{
  width = size.width;
  v4 = EKUIWindowSizeParadigmForWindowSize();
  if ((EKUIUsesLargeTextYearView() & 1) == 0)
  {
    result = 6;
    if (v4 <= 0x1FFFFFF)
    {
      if (v4 == 0x80000 || v4 == 0x800000)
      {
        return result;
      }
    }

    else if (v4 == 0x2000000 || v4 == 0x8000000 || v4 == 0x20000000)
    {
      return result;
    }
  }

  if (EKUIWindowInterfaceParadigmForWindowSize() == 8)
  {
    return 4;
  }

  if (EKUIWindowSizeParadigmForWindowSize() == 0x2000)
  {
    return 3;
  }

  if (qword_100251D58 != -1)
  {
    sub_100170D28();
  }

  [qword_100251D50 valueForSize:width];
  return v6;
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (eventCopy)
  {
    model = [(MainViewController *)self model];
    [model setSelectedOccurrence:eventCopy];

    startCalendarDate = [eventCopy startCalendarDate];
    v14 = [(YearViewController *)self pushedMonthViewControllerWithDate:startCalendarDate animated:0];
    currentChildViewController = [v14 currentChildViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [currentChildViewController setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
    }

    [currentChildViewController showEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
  }

  else
  {
    v16 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No event given.  Will not show event through Year View.", v17, 2u);
    }
  }
}

- (void)receivedTapAtLocation:(CGPoint)location usingDate:(id)date precise:(BOOL)precise
{
  preciseCopy = precise;
  y = location.y;
  x = location.x;
  dateCopy = date;
  v10 = [(InfiniteScrollViewController *)self subviewForPoint:x, y];
  if (!preciseCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = v10;
  view = [(LargeYearViewController *)self view];
  [v11 convertPoint:view fromView:{x, y}];
  v14 = v13;
  v16 = v15;

  v17 = [v11 startOfMonthForPoint:{v14, v16}];
  v18 = [v11 monthViewForCalendarDate:v17];
  if (!v18)
  {
LABEL_7:

LABEL_8:
    v29.receiver = self;
    v29.super_class = LargeYearViewController;
    [(YearViewController *)&v29 receivedTapAtLocation:dateCopy usingDate:preciseCopy precise:x, y];
    goto LABEL_9;
  }

  v19 = v18;
  view2 = [(LargeYearViewController *)self view];
  [v19 convertPoint:view2 fromView:{x, y}];
  v22 = v21;
  v24 = v23;

  v25 = [v19 calendarDateForPoint:{v22, v24}];
  if (!v25)
  {

    goto LABEL_7;
  }

  v26 = v25;
  model = [(MainViewController *)self model];
  persistedSceneState = [model persistedSceneState];
  -[YearViewController pushContentViewOfType:date:animated:](self, "pushContentViewOfType:date:animated:", [persistedSceneState lastUsedNonYearView], v26, 0);

LABEL_9:
}

- (double)leftBarButtonBlankFixedSpaceWidth
{
  view = [(LargeYearViewController *)self view];
  v4 = EKUICurrentWindowSizeParadigmForViewHierarchy();

  if (v4 <= 0x1FFFFFF)
  {
    if (v4 != 0x80000 && v4 != 0x800000)
    {
      goto LABEL_10;
    }

LABEL_8:
    view2 = [(LargeYearViewController *)self view];
    [view2 bounds];
    view3 = [(LargeYearViewController *)self view];
    EKUILayoutMarginsForFullscreenLayoutRectWithSize();
    v8 = v7;

    return -v8;
  }

  if (v4 == 0x2000000 || v4 == 0x20000000 || v4 == 0x8000000)
  {
    goto LABEL_8;
  }

LABEL_10:
  view4 = [(LargeYearViewController *)self view];
  if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x100000)
  {
LABEL_11:

    return -11.0;
  }

  view5 = [(LargeYearViewController *)self view];
  v12 = EKUICurrentWindowSizeParadigmForViewHierarchy();

  result = -11.0;
  if (v12 != 0x200000)
  {
    view4 = [(LargeYearViewController *)self view];
    if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x4000)
    {
      goto LABEL_11;
    }

    view6 = [(LargeYearViewController *)self view];
    v14 = EKUICurrentWindowSizeParadigmForViewHierarchy();

    result = -15.0;
    if (v14 == 0x2000)
    {
      return -11.0;
    }
  }

  return result;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setWeekdayHeaderVisible:0];
  [paletteCopy setDayScrubberController:0];
  [paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  [paletteCopy setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDateStringVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDividerLineVisible:0];
  if (CalSolariumEnabled())
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [paletteCopy setFocusBannerPlacement:v4];
  [paletteCopy sizeToFit];
  [paletteCopy frame];
  v6 = v5;
  containingPalette = [paletteCopy containingPalette];

  [containingPalette setPreferredHeight:v6];
}

- (id)sceneTitle
{
  _currentlyViewingCalendarDate = [(LargeYearViewController *)self _currentlyViewingCalendarDate];
  v4 = _currentlyViewingCalendarDate;
  if (_currentlyViewingCalendarDate)
  {
    date = [_currentlyViewingCalendarDate date];
    if (date)
    {
LABEL_3:
      v6 = CUIKStringForYear();
      goto LABEL_6;
    }
  }

  else
  {
    model = [(MainViewController *)self model];
    selectedDay = [model selectedDay];
    date = [selectedDay date];

    if (date)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  directionCopy = direction;
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];

  if (directionCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = [selectedDate calendarDateByAddingYears:v8];
  [(YearViewController *)self selectDate:v9 animated:animatedCopy];
}

- (void)_queueForcedUpdateToYearNumbers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012320C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_currentlyViewingCalendarDate
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView adjustedContentInset];
  v5 = v4;

  v6 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v5];
  calendarDate = [v6 calendarDate];

  return calendarDate;
}

- (void)_updateYearNumbersAnimated:(BOOL)animated withForce:(BOOL)force
{
  forceCopy = force;
  _currentlyViewingCalendarDate = [(LargeYearViewController *)self _currentlyViewingCalendarDate];
  v8 = _currentlyViewingCalendarDate;
  if (forceCopy || _currentlyViewingCalendarDate && ((currentYearNumber = self->_currentYearNumber) == 0 || [(EKCalendarDate *)currentYearNumber compare:v8]))
  {
    objc_storeStrong(&self->_currentYearNumber, v8);
    navigationController = [(LargeYearViewController *)self navigationController];
    topMainViewControllerContainer = [navigationController topMainViewControllerContainer];
    currentChildViewController = [topMainViewControllerContainer currentChildViewController];

    if (currentChildViewController == self)
    {
      navigationController2 = [(LargeYearViewController *)self navigationController];
      [navigationController2 setNavBarStringFromDate:v8 includeMonth:0 includeYear:1];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100123420;
    v14[3] = &unk_100211DB8;
    v14[4] = self;
    animatedCopy = animated;
    [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v14];
  }
}

@end
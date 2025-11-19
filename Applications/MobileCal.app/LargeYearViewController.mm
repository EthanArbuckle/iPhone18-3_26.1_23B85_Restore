@interface LargeYearViewController
+ (unint64_t)_monthsPerRowForWindowSize:(CGSize)a3;
+ (unint64_t)defaultMonthsPerRowForWindowSize:(CGSize)a3;
- (BOOL)shouldAnimateScrollToDate:(id)a3 fromClosestDate:(id)a4;
- (Class)multipleMonthViewClass;
- (double)leftBarButtonBlankFixedSpaceWidth;
- (double)showDateVerticalOffsetForDate:(id)a3;
- (id)_currentlyViewingCalendarDate;
- (id)sceneTitle;
- (int64_t)_currentOrientation;
- (int64_t)_orientationForSize:(CGSize)a3;
- (unint64_t)monthsPerRow;
- (void)_queueForcedUpdateToYearNumbers;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateYearNumbersAnimated:(BOOL)a3 withForce:(BOOL)a4;
- (void)didEndScrolling;
- (void)didScroll;
- (void)receivedTapAtLocation:(CGPoint)a3 usingDate:(id)a4 precise:(BOOL)a5;
- (void)reinitializeAllViewsWithCalendarDate:(id)a3;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation LargeYearViewController

- (int64_t)_orientationForSize:(CGSize)a3
{
  if ([(LargeYearViewController *)self _usePortraitLayoutForSize:a3.width, a3.height])
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
  v3 = [(LargeYearViewController *)self view];
  [v3 frame];
  v6 = [(LargeYearViewController *)self _orientationForSize:v4, v5];

  return v6;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (!self->_viewHasAppearedBefore || (orientationForCurrentViewLayout = self->_orientationForCurrentViewLayout, orientationForCurrentViewLayout != [(LargeYearViewController *)self _currentOrientation]) || !self->_viewHasAppearedBefore)
  {
    v6 = [(MainViewController *)self model];
    v7 = [v6 selectedDate];

    [(LargeYearViewController *)self reinitializeAllViewsWithCalendarDate:v7];
    self->_viewHasAppearedBefore = 1;
    self->_orientationForCurrentViewLayout = [(LargeYearViewController *)self _currentOrientation];
  }

  v8 = [(LargeYearViewController *)self view];
  [v8 setNeedsLayout];

  v9.receiver = self;
  v9.super_class = LargeYearViewController;
  [(YearViewController *)&v9 viewWillAppear:v3];
}

- (void)reinitializeAllViewsWithCalendarDate:(id)a3
{
  v4.receiver = self;
  v4.super_class = LargeYearViewController;
  [(InfiniteScrollViewController *)&v4 reinitializeAllViewsWithCalendarDate:a3];
  self->_orientationForCurrentViewLayout = [(LargeYearViewController *)self _currentOrientation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(MainViewController *)self model];
    v10 = [v9 selectedDate];
    v11 = [v10 date];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  self->_viewIsVisible = 1;
  currentYearNumber = self->_currentYearNumber;
  self->_currentYearNumber = 0;

  [(LargeYearViewController *)self _updateYearNumbersAnimated:1 withForce:1];
  v13.receiver = self;
  v13.super_class = LargeYearViewController;
  [(YearViewController *)&v13 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LargeYearViewController;
  [(YearViewController *)&v5 viewWillDisappear:a3];
  self->_viewIsVisible = 0;
  currentYearNumber = self->_currentYearNumber;
  self->_currentYearNumber = 0;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LargeYearViewController;
  [(InfiniteScrollViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(LargeYearViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 activationState];

  if (v11 != 2)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100122470;
    v12[3] = &unk_100211D70;
    v12[4] = self;
    [v7 animateAlongsideTransition:&stru_100211D48 completion:v12];
  }
}

- (BOOL)shouldAnimateScrollToDate:(id)a3 fromClosestDate:(id)a4
{
  if (self->_activeDateDuringRotation)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = LargeYearViewController;
  return [(YearViewController *)&v7 shouldAnimateScrollToDate:a3 fromClosestDate:a4];
}

- (double)showDateVerticalOffsetForDate:(id)a3
{
  v4 = a3;
  v5 = [(LargeYearViewController *)self view];
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
  v9 = [(LargeYearViewController *)self traitCollection];
  if (EKUIUsesLargeTextYearView())
  {
    v10 = [v4 month];
    v11 = [(LargeYearViewController *)self monthsPerRow];

    v12 = 0.0;
    if (v10 > v11)
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
    v3 = [(LargeYearViewController *)self _currentlyViewingCalendarDate];
    v4 = [(MainViewController *)self model];
    [v4 setSelectedDate:v3];
  }

  [(LargeYearViewController *)self _updateYearNumbersAnimated:1 withForce:1];
}

- (Class)multipleMonthViewClass
{
  v2 = [(LargeYearViewController *)self traitCollection];
  EKUIUsesLargeTextYearView();

  v3 = objc_opt_class();

  return v3;
}

- (unint64_t)monthsPerRow
{
  v2 = [(MainViewController *)self window];
  EKUICurrentWindowSize();
  v4 = v3;
  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 mainContentSize];
    v4 = v7;
  }

  v8 = [objc_opt_class() _monthsPerRowForWindowSize:{v4, v6}];

  return v8;
}

+ (unint64_t)_monthsPerRowForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (EKUIUsesLargeTextYearView())
  {

    return [LargeTextLargeYearMultipleMonthView numberOfMonthsPerRowForWindowSize:width, height];
  }

  else
  {

    return [a1 defaultMonthsPerRowForWindowSize:{width, height}];
  }
}

+ (unint64_t)defaultMonthsPerRowForWindowSize:(CGSize)a3
{
  width = a3.width;
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

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    v12 = [(MainViewController *)self model];
    [v12 setSelectedOccurrence:v10];

    v13 = [v10 startCalendarDate];
    v14 = [(YearViewController *)self pushedMonthViewControllerWithDate:v13 animated:0];
    v15 = [v14 currentChildViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
    }

    [v15 showEvent:v10 animated:v8 showMode:a5 context:v11];
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

- (void)receivedTapAtLocation:(CGPoint)a3 usingDate:(id)a4 precise:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(InfiniteScrollViewController *)self subviewForPoint:x, y];
  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(LargeYearViewController *)self view];
  [v11 convertPoint:v12 fromView:{x, y}];
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
    [(YearViewController *)&v29 receivedTapAtLocation:v9 usingDate:v5 precise:x, y];
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [(LargeYearViewController *)self view];
  [v19 convertPoint:v20 fromView:{x, y}];
  v22 = v21;
  v24 = v23;

  v25 = [v19 calendarDateForPoint:{v22, v24}];
  if (!v25)
  {

    goto LABEL_7;
  }

  v26 = v25;
  v27 = [(MainViewController *)self model];
  v28 = [v27 persistedSceneState];
  -[YearViewController pushContentViewOfType:date:animated:](self, "pushContentViewOfType:date:animated:", [v28 lastUsedNonYearView], v26, 0);

LABEL_9:
}

- (double)leftBarButtonBlankFixedSpaceWidth
{
  v3 = [(LargeYearViewController *)self view];
  v4 = EKUICurrentWindowSizeParadigmForViewHierarchy();

  if (v4 <= 0x1FFFFFF)
  {
    if (v4 != 0x80000 && v4 != 0x800000)
    {
      goto LABEL_10;
    }

LABEL_8:
    v5 = [(LargeYearViewController *)self view];
    [v5 bounds];
    v6 = [(LargeYearViewController *)self view];
    EKUILayoutMarginsForFullscreenLayoutRectWithSize();
    v8 = v7;

    return -v8;
  }

  if (v4 == 0x2000000 || v4 == 0x20000000 || v4 == 0x8000000)
  {
    goto LABEL_8;
  }

LABEL_10:
  v10 = [(LargeYearViewController *)self view];
  if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x100000)
  {
LABEL_11:

    return -11.0;
  }

  v11 = [(LargeYearViewController *)self view];
  v12 = EKUICurrentWindowSizeParadigmForViewHierarchy();

  result = -11.0;
  if (v12 != 0x200000)
  {
    v10 = [(LargeYearViewController *)self view];
    if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x4000)
    {
      goto LABEL_11;
    }

    v13 = [(LargeYearViewController *)self view];
    v14 = EKUICurrentWindowSizeParadigmForViewHierarchy();

    result = -15.0;
    if (v14 == 0x2000)
    {
      return -11.0;
    }
  }

  return result;
}

- (void)updatePalette:(id)a3
{
  v3 = a3;
  [v3 setWeekdayHeaderVisible:0];
  [v3 setDayScrubberController:0];
  [v3 setWeekdayHeaderFillsHalfWidth:0];
  [v3 setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [v3 setDateStringVisible:CalSolariumEnabled() ^ 1];
  [v3 setDividerLineVisible:0];
  if (CalSolariumEnabled())
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [v3 setFocusBannerPlacement:v4];
  [v3 sizeToFit];
  [v3 frame];
  v6 = v5;
  v7 = [v3 containingPalette];

  [v7 setPreferredHeight:v6];
}

- (id)sceneTitle
{
  v3 = [(LargeYearViewController *)self _currentlyViewingCalendarDate];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 date];
    if (v5)
    {
LABEL_3:
      v6 = CUIKStringForYear();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [(MainViewController *)self model];
    v8 = [v7 selectedDay];
    v5 = [v8 date];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MainViewController *)self model];
  v10 = [v7 selectedDate];

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = [v10 calendarDateByAddingYears:v8];
  [(YearViewController *)self selectDate:v9 animated:v4];
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
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 adjustedContentInset];
  v5 = v4;

  v6 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v5];
  v7 = [v6 calendarDate];

  return v7;
}

- (void)_updateYearNumbersAnimated:(BOOL)a3 withForce:(BOOL)a4
{
  v4 = a4;
  v7 = [(LargeYearViewController *)self _currentlyViewingCalendarDate];
  v8 = v7;
  if (v4 || v7 && ((currentYearNumber = self->_currentYearNumber) == 0 || [(EKCalendarDate *)currentYearNumber compare:v8]))
  {
    objc_storeStrong(&self->_currentYearNumber, v8);
    v9 = [(LargeYearViewController *)self navigationController];
    v10 = [v9 topMainViewControllerContainer];
    v11 = [v10 currentChildViewController];

    if (v11 == self)
    {
      v12 = [(LargeYearViewController *)self navigationController];
      [v12 setNavBarStringFromDate:v8 includeMonth:0 includeYear:1];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100123420;
    v14[3] = &unk_100211DB8;
    v14[4] = self;
    v15 = a3;
    [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v14];
  }
}

@end
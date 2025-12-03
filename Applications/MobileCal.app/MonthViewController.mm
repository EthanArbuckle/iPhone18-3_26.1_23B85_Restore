@interface MonthViewController
- (BOOL)_isTodayCircleFrameFullyUnobstructed;
- (BOOL)eventGestureControllerShouldAllowLongPress:(id)press;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider;
- (BOOL)shouldAnimateScrollToDate:(id)date fromClosestDate:(id)closestDate;
- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible;
- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)point;
- (CGRect)_mainFrameForEvent:(id)event atLastPosition:(BOOL)position atPoint:(CGPoint)point;
- (CGRect)_startingFrameForEvent:(id)event atPoint:(CGPoint)point;
- (CGRect)eventGestureController:(id)controller finalFrameAfterCommitAtPoint:(CGPoint)point;
- (CGRect)frameForTodayHighlight;
- (CGRect)frameForWeekContainingDate:(id)date;
- (MonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window;
- (id)_slowComputeCalendarDateForWeekFromStartDate:(id)date weekOffset:(int64_t)offset;
- (id)adjustSelectedDateForNewMonth:(id)month;
- (id)bestDateForNewEvent;
- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)date;
- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)date;
- (id)cellFramesForWeekContainingDate:(id)date;
- (id)dateAtPoint:(CGPoint)point;
- (id)eventGestureController:(id)controller eventToStartInteractionWithAtPoint:(CGPoint)point;
- (id)eventGestureController:(id)controller setUpAtPoint:(CGPoint)point withOccurrence:(id)occurrence forceNewEvent:(BOOL)event;
- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)date;
- (id)monthWeekSubviewForScrollPoint:(CGPoint)point pointInWeek:(CGPoint *)week;
- (id)pasteboardManager;
- (id)sceneTitle;
- (int64_t)intendedSizeClass;
- (void)_animateDraggingOccurrenceToDate:(id)date atLastPosition:(BOOL)position dropPoint:(CGPoint)point completion:(id)completion;
- (void)_displayDongleForDraggedOccurrence;
- (void)_reloadAllViews;
- (void)_saveDraggedEventWithSpan:(int64_t)span;
- (void)_selectedDateChanged:(id)changed;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)date;
- (void)_updateDraggingOffsetTimesForPoint:(CGPoint)point;
- (void)_updateMonthTitle;
- (void)_updateNavigationTitleControllerToDate:(id)date;
- (void)_updateWeekHighlightsForDragPoint:(CGPoint)point;
- (void)contentSizeCategoryChanged;
- (void)dealloc;
- (void)didEndScrolling;
- (void)didScroll;
- (void)eventGestureController:(id)controller commitToPoint:(CGPoint)point;
- (void)eventGestureController:(id)controller requestedCancellationAnimationAtPoint:(CGPoint)point withOccurrence:(id)occurrence;
- (void)eventGestureController:(id)controller requestsShowEvent:(id)event;
- (void)eventGestureController:(id)controller setDraggingViewHidden:(BOOL)hidden;
- (void)eventGestureController:(id)controller updateToPoint:(CGPoint)point;
- (void)eventGestureControllerCancelled:(id)cancelled;
- (void)eventGestureControllerScrollTimerFired:(id)fired;
- (void)eventViewController:(id)controller requestsShowEvent:(id)event;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (void)loadView;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)removeDraggingOccurrenceAnimated:(BOOL)animated;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)showDate:(id)date animated:(BOOL)animated toMonthStart:(BOOL)start;
- (void)updateBackButtonToDate:(id)date;
- (void)updateDraggedOccurrenceView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBeginDragging;
- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation MonthViewController

- (MonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = MonthViewController;
  v10 = [(InfiniteScrollViewController *)&v14 initWithCalendarDate:date model:modelCopy window:window];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->super.super._model, model);
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"_significantTimeChangeOccurred:" name:CUIKCalendarModelSignificantTimeChangeNotification object:modelCopy];
    [v12 addObserver:v11 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v12 addObserver:v11 selector:"_calendarModelTimeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:0];
    [v12 addObserver:v11 selector:"weekNumbersPrefChanged" name:CUIKPreferencesNotification_ShowWeekNumbers object:0];
    [v12 addObserver:v11 selector:"contentSizeCategoryChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v11;
}

- (void)dealloc
{
  [(EKEventGestureController *)self->_gestureController invalidate];
  v3.receiver = self;
  v3.super_class = MonthViewController;
  [(MainViewController *)&v3 dealloc];
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v13 loadView];
  v3 = objc_alloc_init(MonthTitleView);
  monthTitleView = self->_monthTitleView;
  self->_monthTitleView = v3;

  if (CalCanvasPocketEnabled())
  {
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView _setPocketStyle:1 forEdge:1];

    navigationController = [(MonthViewController *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController2 = [(MonthViewController *)self navigationController];
      paletteView = [navigationController2 paletteView];
      v10 = [_UIScrollPocketInteraction alloc];
      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      v12 = [v10 initWithScrollView:scrollView2 edge:1 style:0];
      [paletteView addInteraction:v12];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_selectedDateChanged:" name:CUIKCalendarModelSelectedDateChangedNotification object:self->super.super._model];
  v6.receiver = self;
  v6.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v14 viewDidAppear:appear];
  view = [(MonthViewController *)self view];
  window = [view window];
  if (window)
  {
  }

  else
  {
    v6 = EKUIHasFallbackSizingContext();

    if ((v6 & 1) == 0)
    {
      navigationController = [(MonthViewController *)self navigationController];
      view2 = [navigationController view];
      window2 = [view2 window];

      if (window2)
      {
        EKUIPushFallbackSizingContextWithViewHierarchy();
        [(InfiniteScrollViewController *)self showSelectedDateIfNeeded];
        EKUIPopFallbackSizingContextWithViewHierarchy();

        goto LABEL_7;
      }
    }
  }

  [(InfiniteScrollViewController *)self showSelectedDateIfNeeded];
LABEL_7:
  [(CUIKCalendarModel *)self->super.super._model setDesiredPaddingDays:14];
  [(CUIKCalendarModel *)self->super.super._model setComponentForExpandingPadding:4096];
  if (!self->_gestureController)
  {
    v10 = [EKEventGestureController alloc];
    view3 = [(MonthViewController *)self view];
    v12 = [v10 initWithView:view3];
    gestureController = self->_gestureController;
    self->_gestureController = v12;

    [(EKEventGestureController *)self->_gestureController setUntimedDelegate:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CUIKCalendarModelSelectedDateChangedNotification object:self->super.super._model];
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

  return v5 < 5;
}

- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)date
{
  v3 = [(MonthViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:date];
  v4 = [v3 calendarDateByAddingMonths:1];

  return v4;
}

- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy calendarDateByAddingWeeks:-1];
  month = [v5 month];
  if (month != [dateCopy month])
  {
    dayOfWeek = [dateCopy dayOfWeek];
    if (dayOfWeek == CUIKOneIndexedWeekStart())
    {
      if ([dateCopy day] < 2)
      {
        goto LABEL_9;
      }

      calendarDateForMonth = [dateCopy calendarDateForMonth];
    }

    else
    {
      v9 = [dateCopy calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

      [v9 absoluteTime];
      v11 = v10;
      [dateCopy absoluteTime];
      if (v11 < v12)
      {
        v5 = v9;
        goto LABEL_9;
      }

      calendarDateForMonth = [(MonthViewController *)self _slowComputeCalendarDateForWeekFromStartDate:dateCopy weekOffset:-1];
      v5 = v9;
    }

    v5 = calendarDateForMonth;
  }

LABEL_9:

  return v5;
}

- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy calendarDateByAddingWeeks:1];
  month = [v5 month];
  if (month == [dateCopy month])
  {
    v7 = [v5 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

    [v7 absoluteTime];
    v9 = v8;
    v10 = [dateCopy calendarDateForEndOfWeekWithWeekStart:CUIKOneIndexedWeekStart()];
    [v10 absoluteTime];
    v12 = v11;

    if (v9 > v12)
    {
      goto LABEL_6;
    }

    calendarDateForMonth = [(MonthViewController *)self _slowComputeCalendarDateForWeekFromStartDate:dateCopy weekOffset:1];
    v5 = v7;
  }

  else
  {
    calendarDateForMonth = [v5 calendarDateForMonth];
  }

  v7 = calendarDateForMonth;
LABEL_6:

  return v7;
}

- (id)_slowComputeCalendarDateForWeekFromStartDate:(id)date weekOffset:(int64_t)offset
{
  dateCopy = date;
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  v9 = [calendar copy];

  [v9 setFirstWeekday:CUIKOneIndexedWeekStart()];
  date = [dateCopy date];

  v11 = [v9 dateByAddingUnit:4096 value:offset toDate:date options:0];

  v12 = [v9 components:8206 fromDate:v11];
  [v12 setWeekday:{objc_msgSend(v9, "firstWeekday")}];
  v13 = [v9 dateFromComponents:v12];
  v14 = [EKCalendarDate alloc];
  model2 = [(MainViewController *)self model];
  calendar2 = [model2 calendar];
  timeZone = [calendar2 timeZone];
  v18 = [v14 initWithDate:v13 timeZone:timeZone];

  return v18;
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(MainViewController *)self model];
  [model setSelectedDate:dateCopy];

  date = [dateCopy date];

  [(MonthViewController *)self showDate:date animated:animatedCopy toMonthStart:1];
}

- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible
{
  model = [(MainViewController *)self model];
  showMonthAsDivided = [model showMonthAsDivided];

  return showMonthAsDivided ^ 1;
}

- (BOOL)_isTodayCircleFrameFullyUnobstructed
{
  [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
  v4 = v3;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentInset];
  v7 = v6;
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 bounds];
  Width = CGRectGetWidth(v24);

  [(MonthViewController *)self frameForTodayHighlight];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = 0;
  v19 = v7;
  v20 = Width;
  v21 = v4;

  return CGRectContainsRect(*&v18, *&v11);
}

- (void)showDate:(id)date animated:(BOOL)animated toMonthStart:(BOOL)start
{
  startCopy = start;
  animatedCopy = animated;
  dateCopy = date;
  if (startCopy)
  {
    v39 = animatedCopy;
    calendar = [(CUIKCalendarModel *)self->super.super._model calendar];
    timeZone = [calendar timeZone];

    v37 = timeZone;
    v11 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];
    v12 = [(MonthViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:v11];
    [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
    v14 = v13;
    v15 = v12;
    v16 = objc_opt_new();
    [v15 absoluteTime];
    v18 = v17;
    [v11 absoluteTime];
    v19 = v15;
    if (v18 <= v20)
    {
      v21 = v15;
      do
      {
        [v16 addObject:v21];
        v19 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:v21];

        [v19 absoluteTime];
        v23 = v22;
        [v11 absoluteTime];
        v21 = v19;
      }

      while (v23 <= v24);
    }

    v38 = dateCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    reverseObjectEnumerator = [v16 reverseObjectEnumerator];
    v26 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v42;
      v30 = -10.0;
LABEL_7:
      v31 = 0;
      v32 = v28;
      v28 = v19;
      while (1)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v33 = *(*(&v41 + 1) + 8 * v31);

        [(InfiniteScrollViewController *)self heightForSubviewWithCalendarDate:v33];
        v30 = v30 + v34;
        if (v30 > v14)
        {
          break;
        }

        v28 = v33;

        v31 = v31 + 1;
        v32 = v28;
        if (v27 == v31)
        {
          v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v47 count:16];
          v19 = v28;
          if (v27)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      v28 = 0;
LABEL_15:

      v33 = 0;
      v32 = v28;
    }

    if (!v32)
    {
      v35 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "failed to find best week for showing date: %@", buf, 0xCu);
      }

      v32 = v36;
    }

    dateCopy = [v32 date];

    animatedCopy = v39;
  }

  v40.receiver = self;
  v40.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v40 showDate:dateCopy animated:animatedCopy];
}

- (id)bestDateForNewEvent
{
  v3 = CUIKTodayDate();
  [(MonthViewController *)self frameForTodayHighlight];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v26.origin.x = CGRectZero.origin.x;
  v26.origin.y = CGRectZero.origin.y;
  v26.size.width = CGRectZero.size.width;
  v26.size.height = CGRectZero.size.height;
  v8 = CGRectEqualToRect(v22, v26);
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentInset];
  v11 = v10;

  view = [(MonthViewController *)self view];
  [view bounds];
  v13 = CGRectGetHeight(v23);
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 contentInset];
  v16 = v15;

  if (v8 || (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, CGRectGetMinY(v24) > v13 - v16) || (v25.origin.x = x, v25.origin.y = y, v25.size.width = width, v25.size.height = height, CGRectGetMaxY(v25) < v11))
  {
    dateOfCenterViewInBuffer = [(InfiniteScrollViewController *)self dateOfCenterViewInBuffer];
  }

  else
  {
    eventStore = [(CUIKCalendarModel *)self->super.super._model eventStore];
    timeZone = [eventStore timeZone];

    dateOfCenterViewInBuffer = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];
  }

  return dateOfCenterViewInBuffer;
}

- (id)sceneTitle
{
  bestDateForNewEvent = [(MonthViewController *)self bestDateForNewEvent];
  v4 = bestDateForNewEvent;
  if (bestDateForNewEvent)
  {
    date = [bestDateForNewEvent date];
    if (date)
    {
LABEL_3:
      v6 = CUIKStringForMonthYear();
      goto LABEL_6;
    }
  }

  else
  {
    selectedDay = [(CUIKCalendarModel *)self->super.super._model selectedDay];
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

- (void)willBeginDragging
{
  v3.receiver = self;
  v3.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v3 willBeginDragging];
  [(MonthViewController *)self _updateMonthTitle];
}

- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v6 = [(InfiniteScrollViewController *)self scrollView:velocity.x];
  [v6 contentOffset];
  v8 = v7;

  y = offset->y;
  v10 = vabdd_f64(y, v8);
  [(MonthViewController *)self decelerationDistanceThresholdForPreferringMonthBoundary];
  if (v10 > v11)
  {
    [(MonthViewController *)self nearestMajorBoundaryForPoint:offset->x, offset->y];
    x = v13;
    v15 = v12;
    if (y <= v8)
    {
      if (v12 <= v8)
      {
        v30 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v31 = v30;
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = NSStringFromPoint(*offset);
          v35 = 138412546;
          v36 = v33;
          v37 = 2112;
          v38 = v34;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Major boundary settling triggered in [%@].  Will settle on offset: [%@]", &v35, 0x16u);
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
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView contentOffset];
    v10 = vabdd_f64(v15, v17);
  }

  if (self->_shouldShowMonthTitleHUDWhenScrolling)
  {
    [(MonthViewController *)self decelerationDistanceThresholdForDisplayingMonthBanner];
    if (v10 > v18)
    {
      self->_monthTitleViewIsVisible = 1;
      superview = [(MonthTitleView *)self->_monthTitleView superview];

      if (!superview)
      {
        [(MonthTitleView *)self->_monthTitleView frame];
        v21 = v20;
        v23 = v22;
        scrollView2 = [(InfiniteScrollViewController *)self scrollView];
        [scrollView2 safeAreaInsets];
        v26 = v25;

        view = [(MonthViewController *)self view];
        [view bounds];
        Width = CGRectGetWidth(v39);

        [(MonthTitleView *)self->_monthTitleView setFrame:v21, v26, Width, v23];
        view2 = [(MonthViewController *)self view];
        [view2 addSubview:self->_monthTitleView];
      }

      [(MonthTitleView *)self->_monthTitleView animateVisible:1 duration:0 completion:0.25];
    }
  }
}

- (void)didScroll
{
  v3.receiver = self;
  v3.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v3 didScroll];
  [(MonthViewController *)self _updateMonthTitle];
}

- (void)didEndScrolling
{
  v4.receiver = self;
  v4.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v4 didEndScrolling];
  [(MonthViewController *)self _updateMonthTitle];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MonthViewController_ScrollDidEndAnimationNotification" object:self userInfo:0];
}

- (void)_selectedDateChanged:(id)changed
{
  v4 = CalSolariumEnabled();
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  if (v4)
  {
    [(MonthViewController *)self _updateNavigationTitleControllerToDate:selectedDate];
  }

  else
  {
    [(MonthViewController *)self _updateBackButtonOnBackViewControllerToDate:selectedDate];
  }

  [(MainViewController *)self setSceneTitleNeedsUpdate];
}

- (void)contentSizeCategoryChanged
{
  +[EKUILargeTextUtilities clearCache];

  [(MonthViewController *)self _reloadAllViews];
}

- (void)_reloadAllViews
{
  dateOfCenterViewInBuffer = [(InfiniteScrollViewController *)self dateOfCenterViewInBuffer];
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  timeZone = [calendar timeZone];
  v9 = [dateOfCenterViewInBuffer calendarDateInTimeZone:timeZone];

  [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:v9];
  model2 = [(MainViewController *)self model];
  selectedDate = [model2 selectedDate];

  if ((CalSolariumEnabled() & 1) == 0)
  {
    [(MonthViewController *)self updateBackButtonToDate:selectedDate];
  }
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(MonthViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateBackButtonToDate:dateCopy];
  }
}

- (void)updateBackButtonToDate:(id)date
{
  dateCopy = date;
  year = [dateCopy year];
  v6 = CUIKTodayComponents();
  year2 = [v6 year];

  if (year == year2)
  {
    [dateCopy month];

    v8 = CUIKStringForMonthNumber();
  }

  else
  {
    date = [dateCopy date];

    v8 = CUIKShortStringForMonthYear();
  }

  v10 = +[NSLocale currentLocale];
  v11 = [v8 capitalizedStringWithLocale:v10];

  v12 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412290;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Setting back button title for Month view to: [%@]", &v29, 0xCu);
  }

  parentViewController = [(MonthViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setBackButtonTitle:v11];
  navigationController = [(MonthViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  navigationController2 = [(MonthViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  navigationController3 = [(MonthViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setFrame:{v18, v20, v22, v24}];
}

- (void)_updateNavigationTitleControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(MonthViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateTitleToDate:dateCopy];
  }
}

- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)point
{
  v11.receiver = self;
  v11.super_class = MonthViewController;
  obj = 0;
  [(InfiniteScrollViewController *)&v11 nearestMajorBoundaryForPoint:&obj date:point.x, point.y];
  v5 = v4;
  v7 = v6;
  v8 = obj;
  self->_decelerationTargetY = v6;
  objc_storeStrong(&self->_decelerationTargetDate, v8);
  v9 = v5;
  v10 = v7;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_updateMonthTitle
{
  if (!self->_shouldShowMonthTitleHUDWhenScrolling)
  {
    return;
  }

  decelerationTargetY = self->_decelerationTargetY;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentOffset];
  v6 = v5;

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView2 isDragging])
  {
    isUserFingerDown = [(InfiniteScrollViewController *)self isUserFingerDown];

    if ((isUserFingerDown & 1) == 0 && self->_monthTitleViewIsVisible)
    {
      [(MonthViewController *)self decelerationDistanceThresholdToStopShowingMonthBanner];
      if (vabdd_f64(decelerationTargetY, v6) > v9)
      {
        scrollView3 = [(InfiniteScrollViewController *)self scrollView];
        [scrollView3 contentInset];
        v12 = v11;

        v13 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v12];
        if (!v13)
        {
LABEL_23:

          return;
        }

        v14 = decelerationTargetY - v6;
        v33 = v13;
        view = [(MonthViewController *)self view];
        [v33 convertPoint:view fromView:{0.0, v12}];
        v17 = v16;

        calendarDate = [v33 calendarDate];
        [(InfiniteScrollViewController *)self showDateVerticalOffsetForDate:calendarDate];
        v20 = v19;

        calendarDate2 = [v33 calendarDate];
        v22 = calendarDate2;
        if (v14 <= 0.0)
        {
          v28 = [calendarDate2 day];
          month = [v22 month];
          v30 = month == [(EKCalendarDate *)self->_decelerationTargetDate month];
          v25 = v33;
          if (!v30 && (v28 < 8 || (v28 - 8) <= 6 && v17 - v20 < 44.0))
          {
            v26 = -1;
            goto LABEL_21;
          }
        }

        else
        {
          daysInMonth = [calendarDate2 daysInMonth];
          v24 = (daysInMonth - [v22 day]) >= 0xF;
          v25 = v33;
          if (!v24)
          {
            v26 = 1;
LABEL_21:
            calendarDate3 = [v25 calendarDate];
            calendarDate4 = [calendarDate3 calendarDateByAddingMonths:v26];

            goto LABEL_22;
          }
        }

        calendarDate4 = [v25 calendarDate];
LABEL_22:
        [(MonthTitleView *)self->_monthTitleView setCalendarDate:calendarDate4];

        v13 = v33;
        goto LABEL_23;
      }
    }
  }

  else
  {
  }

  if (self->_monthTitleViewIsVisible)
  {
    self->_monthTitleViewIsVisible = 0;
    monthTitleView = self->_monthTitleView;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100023388;
    v34[3] = &unk_10020EB98;
    v34[4] = self;
    [(MonthTitleView *)monthTitleView animateVisible:0 duration:v34 completion:0.75];
  }
}

- (id)adjustSelectedDateForNewMonth:(id)month
{
  monthCopy = month;
  v5 = CUIKTodayDate();
  calendar = [(CUIKCalendarModel *)self->super.super._model calendar];
  timeZone = [calendar timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:timeZone];

  month = [v8 month];
  if (month == [monthCopy month] && (v10 = objc_msgSend(v8, "year"), v10 == objc_msgSend(monthCopy, "year")))
  {
    calendarDateForMonth = v8;
  }

  else
  {
    calendarDateForMonth = [monthCopy calendarDateForMonth];
  }

  v12 = calendarDateForMonth;

  return v12;
}

- (id)dateAtPoint:(CGPoint)point
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000235B8;
  v11 = sub_1000235C8;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000235D0;
  v5[3] = &unk_10020ECF8;
  pointCopy = point;
  v5[4] = self;
  v5[5] = &v7;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)updateDraggedOccurrenceView
{
  if (self->_draggedOccurrenceView)
  {
    startCalendarDate = [(EKEvent *)self->_draggedOccurrence startCalendarDate];
    v23 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];

    if ([v23 conformsToProtocol:&OBJC_PROTOCOL___InfiniteScrollViewSubview])
    {
      draggedOccurrence = self->_draggedOccurrence;
      startCalendarDate2 = [(EKEvent *)draggedOccurrence startCalendarDate];
      [v23 frameForOccurrence:draggedOccurrence onDay:startCalendarDate2];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      view = [(MonthViewController *)self view];
      [view convertRect:v23 fromView:{v7, v9, v11, v13}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:v16, v18, v20, v22];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setNeedsDisplay];
    }
  }
}

- (void)removeDraggingOccurrenceAnimated:(BOOL)animated
{
  if (animated)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100023914;
    v7[3] = &unk_10020EB00;
    v7[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002392C;
    v6[3] = &unk_10020EB98;
    v6[4] = self;
    [UIView animateWithDuration:v7 animations:v6 completion:0.4];
  }

  else
  {
    [(MonthViewOccurrence *)self->_draggedOccurrenceView removeFromSuperview];
    draggedOccurrenceView = self->_draggedOccurrenceView;
    self->_draggedOccurrenceView = 0;

    draggedOccurrence = self->_draggedOccurrence;
    self->_draggedOccurrence = 0;
  }

  [(EKEventGestureController *)self->_gestureController endForcedStart:0];
}

- (id)pasteboardManager
{
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  if (forward)
  {
    [event nextOccurrence];
  }

  else
  {
    [event previousOccurrence];
  }
  v4 = ;
  reminderOccurrenceType = [v4 reminderOccurrenceType];
  if (v4)
  {
    v6 = reminderOccurrenceType == 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  forwardCopy = forward;
  eventCopy = event;
  v10 = eventCopy;
  if (forwardCopy)
  {
    [eventCopy nextOccurrence];
  }

  else
  {
    [eventCopy previousOccurrence];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    startCalendarDate = [v7 startCalendarDate];
    [(MonthViewController *)self selectDate:startCalendarDate animated:1];

    [(MainViewController *)self showEvent:v8 animated:1 showMode:0 context:0];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  nextOccurrence = [event nextOccurrence];

  if (nextOccurrence)
  {
    [(MonthViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    context = [tappedCopy context];
    [(MainViewController *)self showEvent:nextOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  previousOccurrence = [event previousOccurrence];

  if (previousOccurrence)
  {
    [(MonthViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    context = [tappedCopy context];
    [(MainViewController *)self showEvent:previousOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewController:(id)controller requestsShowEvent:(id)event
{
  eventCopy = event;
  controllerCopy = controller;
  [(MonthViewController *)self eventViewController:controllerCopy didCompleteWithAction:0];
  context = [controllerCopy context];

  [(MainViewController *)self showEvent:eventCopy animated:1 showMode:1 context:context];
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (id)monthWeekSubviewForScrollPoint:(CGPoint)point pointInWeek:(CGPoint *)week
{
  y = point.y;
  x = point.x;
  v8 = [(InfiniteScrollViewController *)self subviewForPoint:?];
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
  {
    if (week)
    {
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [scrollView convertPoint:v8 toView:{x, y}];
      week->x = v10;
      week->y = v11;
    }

    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)_startingFrameForEvent:(id)event atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  v8 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:0 pointInWeek:x, y];
  startCalendarDate = [eventCopy startCalendarDate];
  calendarDateForDay = [startCalendarDate calendarDateForDay];

  [(EKCalendarDate *)self->_draggedStartDate absoluteTime];
  v12 = v11;
  calendarDate = [v8 calendarDate];
  [calendarDate absoluteTime];
  v15 = v14;

  if (v12 < v15)
  {
    calendarDate2 = [v8 calendarDate];

    calendarDateForDay = calendarDate2;
  }

  [v8 frameForOccurrence:eventCopy onDay:calendarDateForDay];
  v17 = v40.origin.x;
  v18 = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectIsNull(v40))
  {
    startCalendarDate2 = [eventCopy startCalendarDate];
    v22 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate2];

    if ([v22 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
    {
      [v22 frameForOccurrence:eventCopy onDay:calendarDateForDay];
      v17 = v23;
      v18 = v24;
      width = v25;
      height = v26;
    }
  }

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView convertRect:v8 fromView:{v17, v18, width, height}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = v29;
  v37 = v31;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)_updateDraggingOffsetTimesForPoint:(CGPoint)point
{
  v4 = [(MonthViewController *)self dateAtPoint:point.x, point.y];
  v13 = v4;
  if (self->_draggingExistingEvent)
  {
    v5 = [v4 differenceInDays:self->_initialDragDate];
    startCalendarDate = [(EKEvent *)self->_draggedOccurrence startCalendarDate];
    v7 = [startCalendarDate calendarDateByAddingDays:v5];
    draggedStartDate = self->_draggedStartDate;
    self->_draggedStartDate = v7;

    endCalendarDate = [(EKEvent *)self->_draggedOccurrence endCalendarDate];
    v10 = [endCalendarDate calendarDateByAddingDays:v5];
    draggedEndDate = self->_draggedEndDate;
    self->_draggedEndDate = v10;
  }

  else
  {
    objc_storeStrong(&self->_draggedStartDate, v4);
    calendarDateForEndOfDay = [v13 calendarDateForEndOfDay];
    endCalendarDate = self->_draggedEndDate;
    self->_draggedEndDate = calendarDateForEndOfDay;
  }
}

- (void)_updateWeekHighlightsForDragPoint:(CGPoint)point
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000241B0;
  v3[3] = &unk_10020ED60;
  v3[4] = self;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v3];
}

- (void)_animateDraggingOccurrenceToDate:(id)date atLastPosition:(BOOL)position dropPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  positionCopy = position;
  completionCopy = completion;
  [(MonthViewController *)self _mainFrameForEvent:self->_draggedOccurrence atLastPosition:positionCopy atPoint:x, y];
  v11 = v34.origin.x;
  v12 = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (CGRectIsNull(v34) || (v35.origin.x = v11, v35.origin.y = v12, v35.size.width = width, v35.size.height = height, CGRectIsEmpty(v35)))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    view = [(MonthViewController *)self view];
    [scrollView convertRect:view fromView:{v17, v19, v21, v23}];
    v26 = v25;
    v28 = v27;

    v29 = (v12 - v28) * (v12 - v28) + (v11 - v26) * (v11 - v26);
    v30 = dbl_1001F80D0[sqrtf(v29) < 50.0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100024528;
    v33[3] = &unk_10020ED88;
    v33[4] = self;
    *&v33[5] = v11;
    *&v33[6] = v12;
    *&v33[7] = width;
    *&v33[8] = height;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100024604;
    v31[3] = &unk_10020EDB0;
    v32 = completionCopy;
    [UIView animateWithDuration:131076 delay:v33 options:v31 animations:v30 completion:0.0];
  }
}

- (CGRect)_mainFrameForEvent:(id)event atLastPosition:(BOOL)position atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  positionCopy = position;
  eventCopy = event;
  v10 = CGRectZero.origin.x;
  v11 = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v34 = CGPointZero;
  v14 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:&v34 pointInWeek:x, y];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 dateAtPoint:v34];
    if (v16)
    {
      if (positionCopy)
      {
        [v15 frameForOccurrenceAfterLastOnDay:v16];
      }

      else
      {
        [v15 frameForOccurrence:eventCopy onDay:v16];
      }

      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [scrollView convertRect:v15 fromView:{v21, v22, v23, v24}];
      v10 = v26;
      v11 = v27;
      width = v28;
      height = v29;
    }
  }

  v30 = v10;
  v31 = v11;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_saveDraggedEventWithSpan:(int64_t)span
{
  if (([(EKEvent *)self->_draggedOccurrence isNew]& 1) == 0)
  {
    if (span && [(EKEvent *)self->_draggedOccurrence isOrWasPartOfRecurringSeries])
    {
      if ([(EKEvent *)self->_draggedOccurrence isOrWasPartOfRecurringSeries])
      {
        singleRecurrenceRule = [(EKEvent *)self->_draggedOccurrence singleRecurrenceRule];
      }

      else
      {
        singleRecurrenceRule = 0;
      }

      recurrenceEnd = [singleRecurrenceRule recurrenceEnd];
      endDate = [recurrenceEnd endDate];

      if (endDate)
      {
        v8 = [(EKEvent *)self->_draggedOccurrence committedValueForKey:@"startDate"];
        [v8 timeIntervalSinceReferenceDate];
        v10 = v9;

        startDate = [(EKEvent *)self->_draggedOccurrence startDate];
        [startDate timeIntervalSinceReferenceDate];
        v13 = v12;

        v14 = [endDate dateByAddingTimeInterval:v13 - v10];
        v15 = [EKRecurrenceEnd recurrenceEndWithEndDate:v14];
        [singleRecurrenceRule setRecurrenceEnd:v15];
      }
    }

    eKUI_editor = [(MonthViewController *)self EKUI_editor];
    draggedOccurrence = self->_draggedOccurrence;
    v21 = 0;
    v18 = [eKUI_editor saveEvent:draggedOccurrence span:span error:&v21];
    v19 = v21;

    if ((v18 & 1) == 0)
    {
      v20 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error moving event: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_displayDongleForDraggedOccurrence
{
  v3 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 400.0, 50.0}];
  traitCollection = [(MonthViewController *)self traitCollection];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection];

  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  v7 = [UIFont fontWithDescriptor:v6 size:0.0];
  if (([(EKEvent *)self->_draggedOccurrence isNew]& 1) != 0)
  {
    title = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [title localizedStringForKey:@"New Event" value:&stru_1002133B8 table:0];
    [v3 setText:v9];
  }

  else
  {
    title = [(EKEvent *)self->_draggedOccurrence title];
    [v3 setText:title];
  }

  v10 = +[UIColor whiteColor];
  [v3 setTextColor:v10];

  v11 = [UIFont fontWithDescriptor:v6 size:0.0];
  [v3 setFont:v11];

  [v3 setTextAlignment:1];
  v12 = +[UIColor blackColor];
  [v3 setShadowColor:v12];

  [v3 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];
  [v3 setShadowBlur:2.0];
  [v3 sizeToFit];
  [v3 frame];
  v14 = v13;
  v16 = v15;
  [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
  v37.origin.x = (v17 - v14) * 0.5;
  v37.origin.y = -50.0;
  v37.size.width = v14;
  v37.size.height = v16;
  v38 = CGRectInset(v37, -8.0, -8.0);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  [(MonthViewOccurrence *)self->_draggedOccurrenceView bounds];
  [v3 setFrame:x];
  layer = [v3 layer];
  [layer setCornerRadius:8.0];

  layer2 = [v3 layer];
  [layer2 setMaskedCorners:15];

  [v3 setClipsToBounds:1];
  eventStore = [(EKEvent *)self->_draggedOccurrence eventStore];
  calendar = [(EKEvent *)self->_draggedOccurrence calendar];
  v26 = [eventStore colorForCalendar:calendar];

  v27 = CUIKColorLightenedToPercentageWithFinalAlpha();
  [v3 setBackgroundColor:v27];

  [(MonthViewOccurrence *)self->_draggedOccurrenceView addSubview:v3];
  [(MonthViewOccurrence *)self->_draggedOccurrenceView setClipsToBounds:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100024D8C;
  v31[3] = &unk_10020ED88;
  v32 = v3;
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100024D9C;
  v29[3] = &unk_10020EB98;
  v30 = v32;
  v28 = v32;
  [UIView animateWithDuration:v31 animations:v29 completion:0.2];
}

- (BOOL)eventGestureControllerShouldAllowLongPress:(id)press
{
  pressCopy = press;
  if ([(MonthViewController *)self dragAndDropAllowLongPress])
  {
    defaultCalendarForNewEvents = [(CUIKCalendarModel *)self->super.super._model defaultCalendarForNewEvents];
    if (defaultCalendarForNewEvents)
    {
      v6 = [pressCopy dragGestureInProgress] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)eventGestureController:(id)controller eventToStartInteractionWithAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MonthViewController *)self occurrenceAtPoint:x, y];
    if (!v7)
    {
      eventStore = [(CUIKCalendarModel *)self->super.super._model eventStore];
      v7 = [EKEvent eventWithEventStore:eventStore];

      defaultCalendarForNewEvents = [(CUIKCalendarModel *)self->super.super._model defaultCalendarForNewEvents];
      [v7 setCalendar:defaultCalendarForNewEvents];

      v10 = [(MonthViewController *)self dateAtPoint:x, y];
      date = [v10 date];
      if (date)
      {
        [v7 setStartDate:date];
      }

      else
      {
        v12 = +[NSDate date];
        [v7 setStartDate:v12];
      }

      startDate = [v7 startDate];
      v14 = [startDate dateByAddingTimeInterval:1.0];
      [v7 setEndDate:v14];

      [v7 setAllDay:1];
    }
  }

  return v7;
}

- (id)eventGestureController:(id)controller setUpAtPoint:(CGPoint)point withOccurrence:(id)occurrence forceNewEvent:(BOOL)event
{
  y = point.y;
  x = point.x;
  occurrenceCopy = occurrence;
  if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
  {
    [(MonthViewController *)self dragAndDropScrubAtPoint:x, y];
    v11 = 0;
    v12 = occurrenceCopy;
    goto LABEL_33;
  }

  if (occurrenceCopy)
  {
    startCalendarDate = [occurrenceCopy startCalendarDate];
    calendarDateForDay = [startCalendarDate calendarDateForDay];
    initialDragDate = self->_initialDragDate;
    self->_initialDragDate = calendarDateForDay;

    v12 = occurrenceCopy;
  }

  else
  {
    v16 = [(MonthViewController *)self dateAtPoint:x, y];
    v17 = self->_initialDragDate;
    self->_initialDragDate = v16;

    if (event)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(MonthViewController *)self occurrenceAtPoint:x, y];
    }
  }

  v60 = CGPointZero;
  v18 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:&v60 pointInWeek:x, y];
  if (v12)
  {
    isNew = [v12 isNew];
    p_draggingExistingEvent = &self->_draggingExistingEvent;
    self->_draggingExistingEvent = isNew ^ 1;
    if ((isNew ^ 1))
    {
      goto LABEL_16;
    }
  }

  else
  {
    p_draggingExistingEvent = &self->_draggingExistingEvent;
    self->_draggingExistingEvent = 0;
    eventStore = [(CUIKCalendarModel *)self->super.super._model eventStore];
    v12 = [EKEvent eventWithEventStore:eventStore];
  }

  defaultCalendarForNewEvents = [(CUIKCalendarModel *)self->super.super._model defaultCalendarForNewEvents];
  [v12 setCalendar:defaultCalendarForNewEvents];

  date = [(EKCalendarDate *)self->_initialDragDate date];
  if (date)
  {
    [v12 setStartDate:date];
  }

  else
  {
    v24 = +[NSDate date];
    [v12 setStartDate:v24];
  }

  startDate = [v12 startDate];
  v26 = [startDate dateByAddingTimeInterval:1.0];
  [v12 setEndDate:v26];

  [v12 setAllDay:1];
  [v12 setTitle:&stru_1002133B8];
LABEL_16:
  objc_storeStrong(&self->_draggedOccurrence, v12);
  v27 = [v18 newFeedbackViewForDraggingOccurrence:v12 atPoint:v60];
  draggedOccurrenceView = self->_draggedOccurrenceView;
  self->_draggedOccurrenceView = v27;

  if (self->_draggedOccurrenceView)
  {
    view = [(MonthViewController *)self view];
    [view addSubview:self->_draggedOccurrenceView];

    if (!*p_draggingExistingEvent)
    {
      [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
      v43 = CGRectGetWidth(v63) * -0.5;
      [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
      Height = CGRectGetHeight(v64);
      self->_dragOffset.x = v43;
      self->_dragOffset.y = Height * -0.5;
      [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
      v46 = v45;
      v48 = v47;
      v49 = x + self->_dragOffset.x;
      v50 = y + self->_dragOffset.y;
      view2 = [(MonthViewController *)self view];
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [view2 convertRect:scrollView fromView:{v49, v50, v46, v48}];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:?];

LABEL_27:
      [(MonthViewController *)self _updateDraggingOffsetTimesForPoint:x, y];
      [(MonthViewController *)self _updateWeekHighlightsForDragPoint:x, y];
      if (occurrenceCopy)
      {
        CalPopViewIn();
      }

      v11 = v12;
      goto LABEL_32;
    }

    [(MonthViewController *)self _startingFrameForEvent:v12 atPoint:x, y];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    p_dragOffset = &self->_dragOffset;
    if (occurrenceCopy)
    {
      v39 = CGRectGetWidth(*&v30) * -0.5;
      v62.origin.x = v34;
      v62.origin.y = v35;
      v62.size.width = v36;
      v62.size.height = v37;
      v40 = CGRectGetHeight(v62) * -0.5;
      p_dragOffset->x = v39;
      self->_dragOffset.y = v40;
      v34 = x + v39;
      v35 = y + v40;
    }

    else
    {
      v53 = CGRectGetMinX(*&v30) - x;
      v65.origin.x = v34;
      v65.origin.y = v35;
      v65.size.width = v36;
      v65.size.height = v37;
      MinY = CGRectGetMinY(v65);
      p_dragOffset->x = v53;
      self->_dragOffset.y = MinY - y;
    }

    view3 = [(MonthViewController *)self view];
    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [view3 convertRect:scrollView2 fromView:{v34, v35, v36, v37}];
    [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:?];

    if ([(MonthViewController *)self scaleForDragging])
    {
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000256AC;
      v59[3] = &unk_10020EB00;
      v59[4] = self;
      v57 = objc_retainBlock(v59);
      [UIView animateWithDuration:4 delay:v57 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setAlpha:0.8];
    }

    if ([v12 isEditable])
    {
      goto LABEL_27;
    }

    CalPlopViewWithScaleFactorAndCompletion();
    [(MonthViewController *)self selectOccurrence:0 inWeek:0, _NSConcreteStackBlock, 3221225472, sub_10002582C, &unk_10020EDD8, self, *&x, *&y];
  }

  else
  {
    v41 = self->_initialDragDate;
    self->_initialDragDate = 0;

    draggedOccurrence = self->_draggedOccurrence;
    self->_draggedOccurrence = 0;
  }

  v11 = 0;
LABEL_32:

LABEL_33:

  return v11;
}

- (void)eventGestureController:(id)controller updateToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
  {

    [(MonthViewController *)self dragAndDropScrubAtPoint:x, y];
  }

  else
  {
    if ([(MonthViewController *)self scaleForDragging])
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100025ACC;
      v27[3] = &unk_10020EDD8;
      v27[4] = self;
      *&v27[5] = x;
      *&v27[6] = y;
      [UIView animateWithDuration:4 delay:v27 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      view = [(MonthViewController *)self view];
      [scrollView convertRect:view fromView:{v9, v11, v13, v15}];

      view2 = [(MonthViewController *)self view];
      CalRoundRectToScreenScale();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      [view2 convertRect:scrollView2 fromView:{v19, v21, v23, v25}];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:?];
    }

    [(MonthViewController *)self _updateDraggingOffsetTimesForPoint:x, y];
    [(MonthViewController *)self _updateWeekHighlightsForDragPoint:x, y];
  }
}

- (void)eventGestureController:(id)controller commitToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (!shownEventEditViewController)
  {
    v76 = CGPointZero;
    v9 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:&v76 pointInWeek:x, y];
    if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
    {
      [(MonthViewController *)self dragAndDropScrubAtPoint:x, y];
      model = [(MainViewController *)self model];
      selectedOccurrence = [model selectedOccurrence];

      if (!selectedOccurrence)
      {
        [(MonthViewController *)self dismissDraggedOccurrencePresentationAnimated:1];
        goto LABEL_18;
      }

      model2 = [(MainViewController *)self model];
      selectedOccurrence2 = [model2 selectedOccurrence];
      v14 = [(MonthViewController *)self dateAtPoint:x, y];
      [(MonthViewController *)self showDetailsForDraggedOccurrence:selectedOccurrence2 inWeekView:v9 onDay:v14 creationMethod:1];

      goto LABEL_5;
    }

    v15 = [v9 dateAtPoint:v76];
    if (v15 && self->_draggedStartDate)
    {
      draggedEndDate = self->_draggedEndDate;

      if (draggedEndDate)
      {
        [(MonthViewController *)self _updateDraggingOffsetTimesForPoint:x, y];
        date = [(EKCalendarDate *)self->_draggedStartDate date];
        [(EKEvent *)self->_draggedOccurrence setStartDate:date];

        date2 = [(EKCalendarDate *)self->_draggedEndDate date];
        [(EKEvent *)self->_draggedOccurrence setEndDate:date2];

        model2 = +[UIApplication sharedApplication];
        if ([model2 optionKeyIsDown])
        {
          draggedOccurrence = self->_draggedOccurrence;
          v19 = [NSArray arrayWithObjects:&draggedOccurrence count:1];
          v20 = [CUIKPasteboardUtilities allEventsValidForAction:2 fromEvents:v19];

          if (v20)
          {
            v21 = kCalUILogHandle;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "duplicating event(s) in large month view because option key is down", buf, 2u);
            }

            model3 = [(MainViewController *)self model];
            pasteboardManager = [model3 pasteboardManager];
            startDate = [(EKEvent *)self->_draggedOccurrence startDate];
            [pasteboardManager setDateForPaste:startDate];

            model4 = [(MainViewController *)self model];
            pasteboardManager2 = [model4 pasteboardManager];
            [pasteboardManager2 setCalendarForPaste:0];

            model5 = [(MainViewController *)self model];
            pasteboardManager3 = [model5 pasteboardManager];
            v29 = [NSSet setWithObject:self->_draggedOccurrence];
            [pasteboardManager3 duplicateEvents:v29 withDateMode:2 delegate:self];

            [(EKEvent *)self->_draggedOccurrence revert];
            [(MonthViewController *)self draggedOccurrenceWasCancelled:self->_draggedOccurrence atPoint:x, y];
            [(MonthViewController *)self removeDraggingOccurrenceAnimated:0];
            [(MonthViewController *)self removeAllWeekHighlights];
            [(MonthViewController *)self selectOccurrence:0 inWeek:0];
            goto LABEL_6;
          }
        }

        if (([(EKEvent *)self->_draggedOccurrence hasChanges]& 1) != 0)
        {
          [(EKEvent *)self->_draggedOccurrence isNew];
          CalAnalyticsSendEvent();
          if (self->_draggingExistingEvent && [(EKEvent *)self->_draggedOccurrence isOrWasPartOfRecurringSeries])
          {
            v34 = self->_draggedOccurrence;
            v69[0] = _NSConcreteStackBlock;
            v69[1] = 3221225472;
            v69[2] = sub_1000264E0;
            v69[3] = &unk_10020EE28;
            v69[4] = self;
            v71 = x;
            v72 = y;
            v70 = v9;
            v73 = v76;
            [controllerCopy promptUserForRecurrenceActionOnOccurrence:v34 whenFinished:v69];

            goto LABEL_6;
          }

          [(MonthViewController *)self _saveDraggedEventWithSpan:0];
          isNew = [(EKEvent *)self->_draggedOccurrence isNew];
          selectedOccurrence2 = [v9 dateAtPoint:v76];
          if (isNew)
          {
            [v9 frameForOccurrenceAfterLastOnDay:selectedOccurrence2];
            v37 = v36;
            v39 = v38;
            v41 = v40;
            v43 = v42;
            view = [(MonthViewController *)self view];
            [view convertRect:v9 fromView:{v37, v39, v41, v43}];
            v46 = v45;
            v48 = v47;
            v50 = v49;
            v52 = v51;

            [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
            v54 = v53;
            v56 = v55;
            v58 = v57;
            v60 = v59;
            [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:v46, v48, v50, v52];
            [(MonthViewOccurrence *)self->_draggedOccurrenceView setNeedsDisplay];
            layer = [(MonthViewOccurrence *)self->_draggedOccurrenceView layer];
            [layer displayIfNeeded];

            [(MonthViewOccurrence *)self->_draggedOccurrenceView setClipsToBounds:1];
            [(MonthViewOccurrence *)self->_draggedOccurrenceView setContentMode:0];
            [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:v54, v56, v58, v60];
            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = sub_100026658;
            v68[3] = &unk_10020ED88;
            v68[4] = self;
            *&v68[5] = v46;
            *&v68[6] = v48;
            *&v68[7] = v50;
            *&v68[8] = v52;
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_100026678;
            v67[3] = &unk_10020EB98;
            v67[4] = self;
            [UIView animateWithDuration:4 delay:v68 options:v67 animations:0.4 completion:0.0];
            [(MonthViewController *)self showEditorForNewDraggedEvent:self->_draggedOccurrence inWeek:v9];
LABEL_5:

LABEL_6:
LABEL_18:

            goto LABEL_19;
          }

          v62 = _NSConcreteStackBlock;
          v63 = 3221225472;
          v64 = sub_1000266C8;
          v65 = &unk_10020EB00;
          selfCopy = self;
          v30 = &v62;
          selfCopy3 = self;
          v32 = selectedOccurrence2;
          v33 = 1;
        }

        else
        {
          selectedOccurrence2 = [v9 dateAtPoint:v76];
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100026490;
          v74[3] = &unk_10020EB00;
          v74[4] = self;
          v30 = v74;
          selfCopy3 = self;
          v32 = selectedOccurrence2;
          v33 = 0;
        }

        [(MonthViewController *)selfCopy3 _animateDraggingOccurrenceToDate:v32 atLastPosition:v33 dropPoint:v30 completion:x, y, v62, v63, v64, v65, selfCopy];
        goto LABEL_5;
      }
    }

    else
    {
    }

    [(MonthViewController *)self draggedOccurrenceWasCancelled:self->_draggedOccurrence atPoint:x, y];
    [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
    [(MonthViewController *)self removeAllWeekHighlights];
    goto LABEL_18;
  }

LABEL_19:
}

- (CGRect)eventGestureController:(id)controller finalFrameAfterCommitAtPoint:(CGPoint)point
{
  [(MonthViewController *)self _mainFrameForEvent:self->_draggedOccurrence atLastPosition:0 atPoint:point.x, point.y];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)eventGestureControllerCancelled:(id)cancelled
{
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];

  [(MonthViewController *)self removeAllWeekHighlights];
}

- (void)eventGestureControllerScrollTimerFired:(id)fired
{
  if (!self->_draggedOccurrence)
  {
    return;
  }

  existingPalette = [(MainViewController *)self existingPalette];
  superview = [existingPalette superview];
  [existingPalette frame];
  MaxY = CGRectGetMaxY(v33);
  view = [(MonthViewController *)self view];
  [superview convertPoint:view toView:{0.0, MaxY}];
  v8 = v7;

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  superview2 = [scrollView superview];
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 frame];
  v12 = CGRectGetMaxY(v34);
  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 contentInset];
  v15 = v12 - v14;
  view2 = [(MonthViewController *)self view];
  [superview2 convertPoint:view2 toView:{0.0, v15}];
  v18 = v17;

  [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  if (CGRectGetMinY(v35) < v8 + 15.0)
  {
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v23 = CGRectGetMinY(v36) - v8 + -15.0;
LABEL_7:
    if (v23 != 0.0 && CGFloatIsValid())
    {
      v24 = v23 * 0.25;
      scrollView4 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView4 contentOffset];
      v27 = v26;
      v29 = v28;

      scrollView5 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView5 setContentOffset:{v27, v24 + v29}];
    }

    goto LABEL_10;
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (CGRectGetMaxY(v37) > v18 + -15.0)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v23 = CGRectGetMaxY(v38) - (v18 + -15.0);
    goto LABEL_7;
  }

LABEL_10:
}

- (void)eventGestureController:(id)controller setDraggingViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  [(MonthViewOccurrence *)self->_draggedOccurrenceView setHidden:hidden];
  if (hiddenCopy)
  {

    [(MonthViewController *)self removeAllWeekHighlights];
  }
}

- (void)eventGestureController:(id)controller requestsShowEvent:(id)event
{
  eventCopy = event;
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:0];
  [(MainViewController *)self showEvent:eventCopy animated:1 showMode:1 context:0];
}

- (void)eventGestureController:(id)controller requestedCancellationAnimationAtPoint:(CGPoint)point withOccurrence:(id)occurrence
{
  y = point.y;
  x = point.x;
  occurrenceCopy = occurrence;
  shownEventViewController = [(MainViewController *)self shownEventViewController];

  if (!shownEventViewController)
  {
    if (!occurrenceCopy)
    {
      occurrenceCopy = [(MonthViewController *)self occurrenceAtPoint:x, y];
    }

    v24 = CGPointZero;
    v10 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:&v24 pointInWeek:x, y];
    v11 = [v10 newFeedbackViewForDraggingOccurrence:occurrenceCopy atPoint:v24];
    if (v11)
    {
      view = [(MonthViewController *)self view];
      [view addSubview:v11];

      [(MonthViewController *)self _startingFrameForEvent:occurrenceCopy atPoint:x, y];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      view2 = [(MonthViewController *)self view];
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [view2 convertRect:scrollView fromView:{v14, v16, v18, v20}];
      [v11 setFrame:?];

      [v11 setAlpha:0.8];
      v23 = v11;
      CalPlopViewWithScaleFactorAndCompletion();
      [(MonthViewController *)self selectOccurrence:0 inWeek:0, _NSConcreteStackBlock, 3221225472, sub_100026C74, &unk_10020EC68, self];
    }
  }
}

- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider
{
  eventCopy = event;
  providerCopy = provider;
  if ([eventCopy isReminderIntegrationEvent])
  {
    v7 = [CUIKIReminderDragProvider itemProviderWriterForReminderEvent:eventCopy];
    if (v7)
    {
      [providerCopy registerObject:v7 visibility:0];

      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int64_t)intendedSizeClass
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (CGRect)frameForWeekContainingDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForTodayHighlight
{
  sub_100026F48();
  sub_100026F2C();
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)cellFramesForWeekContainingDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

@end
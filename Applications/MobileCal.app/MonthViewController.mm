@interface MonthViewController
- (BOOL)_isTodayCircleFrameFullyUnobstructed;
- (BOOL)eventGestureControllerShouldAllowLongPress:(id)a3;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4;
- (BOOL)shouldAnimateScrollToDate:(id)a3 fromClosestDate:(id)a4;
- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible;
- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)a3;
- (CGRect)_mainFrameForEvent:(id)a3 atLastPosition:(BOOL)a4 atPoint:(CGPoint)a5;
- (CGRect)_startingFrameForEvent:(id)a3 atPoint:(CGPoint)a4;
- (CGRect)eventGestureController:(id)a3 finalFrameAfterCommitAtPoint:(CGPoint)a4;
- (CGRect)frameForTodayHighlight;
- (CGRect)frameForWeekContainingDate:(id)a3;
- (MonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5;
- (id)_slowComputeCalendarDateForWeekFromStartDate:(id)a3 weekOffset:(int64_t)a4;
- (id)adjustSelectedDateForNewMonth:(id)a3;
- (id)bestDateForNewEvent;
- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)a3;
- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)a3;
- (id)cellFramesForWeekContainingDate:(id)a3;
- (id)dateAtPoint:(CGPoint)a3;
- (id)eventGestureController:(id)a3 eventToStartInteractionWithAtPoint:(CGPoint)a4;
- (id)eventGestureController:(id)a3 setUpAtPoint:(CGPoint)a4 withOccurrence:(id)a5 forceNewEvent:(BOOL)a6;
- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)a3;
- (id)monthWeekSubviewForScrollPoint:(CGPoint)a3 pointInWeek:(CGPoint *)a4;
- (id)pasteboardManager;
- (id)sceneTitle;
- (int64_t)intendedSizeClass;
- (void)_animateDraggingOccurrenceToDate:(id)a3 atLastPosition:(BOOL)a4 dropPoint:(CGPoint)a5 completion:(id)a6;
- (void)_displayDongleForDraggedOccurrence;
- (void)_reloadAllViews;
- (void)_saveDraggedEventWithSpan:(int64_t)a3;
- (void)_selectedDateChanged:(id)a3;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3;
- (void)_updateDraggingOffsetTimesForPoint:(CGPoint)a3;
- (void)_updateMonthTitle;
- (void)_updateNavigationTitleControllerToDate:(id)a3;
- (void)_updateWeekHighlightsForDragPoint:(CGPoint)a3;
- (void)contentSizeCategoryChanged;
- (void)dealloc;
- (void)didEndScrolling;
- (void)didScroll;
- (void)eventGestureController:(id)a3 commitToPoint:(CGPoint)a4;
- (void)eventGestureController:(id)a3 requestedCancellationAnimationAtPoint:(CGPoint)a4 withOccurrence:(id)a5;
- (void)eventGestureController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventGestureController:(id)a3 setDraggingViewHidden:(BOOL)a4;
- (void)eventGestureController:(id)a3 updateToPoint:(CGPoint)a4;
- (void)eventGestureControllerCancelled:(id)a3;
- (void)eventGestureControllerScrollTimerFired:(id)a3;
- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (void)loadView;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)removeDraggingOccurrenceAnimated:(BOOL)a3;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)showDate:(id)a3 animated:(BOOL)a4 toMonthStart:(BOOL)a5;
- (void)updateBackButtonToDate:(id)a3;
- (void)updateDraggedOccurrenceView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBeginDragging;
- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4;
@end

@implementation MonthViewController

- (MonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MonthViewController;
  v10 = [(InfiniteScrollViewController *)&v14 initWithCalendarDate:a3 model:v9 window:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->super.super._model, a4);
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"_significantTimeChangeOccurred:" name:CUIKCalendarModelSignificantTimeChangeNotification object:v9];
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
    v5 = [(InfiniteScrollViewController *)self scrollView];
    [v5 _setPocketStyle:1 forEdge:1];

    v6 = [(MonthViewController *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(MonthViewController *)self navigationController];
      v9 = [v8 paletteView];
      v10 = [_UIScrollPocketInteraction alloc];
      v11 = [(InfiniteScrollViewController *)self scrollView];
      v12 = [v10 initWithScrollView:v11 edge:1 style:0];
      [v9 addInteraction:v12];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_selectedDateChanged:" name:CUIKCalendarModelSelectedDateChangedNotification object:self->super.super._model];
  v6.receiver = self;
  v6.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v6 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v14 viewDidAppear:a3];
  v4 = [(MonthViewController *)self view];
  v5 = [v4 window];
  if (v5)
  {
  }

  else
  {
    v6 = EKUIHasFallbackSizingContext();

    if ((v6 & 1) == 0)
    {
      v7 = [(MonthViewController *)self navigationController];
      v8 = [v7 view];
      v9 = [v8 window];

      if (v9)
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
    v11 = [(MonthViewController *)self view];
    v12 = [v10 initWithView:v11];
    gestureController = self->_gestureController;
    self->_gestureController = v12;

    [(EKEventGestureController *)self->_gestureController setUntimedDelegate:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CUIKCalendarModelSelectedDateChangedNotification object:self->super.super._model];
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

  return v5 < 5;
}

- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)a3
{
  v3 = [(MonthViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:a3];
  v4 = [v3 calendarDateByAddingMonths:1];

  return v4;
}

- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarDateByAddingWeeks:-1];
  v6 = [v5 month];
  if (v6 != [v4 month])
  {
    v7 = [v4 dayOfWeek];
    if (v7 == CUIKOneIndexedWeekStart())
    {
      if ([v4 day] < 2)
      {
        goto LABEL_9;
      }

      v8 = [v4 calendarDateForMonth];
    }

    else
    {
      v9 = [v4 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

      [v9 absoluteTime];
      v11 = v10;
      [v4 absoluteTime];
      if (v11 < v12)
      {
        v5 = v9;
        goto LABEL_9;
      }

      v8 = [(MonthViewController *)self _slowComputeCalendarDateForWeekFromStartDate:v4 weekOffset:-1];
      v5 = v9;
    }

    v5 = v8;
  }

LABEL_9:

  return v5;
}

- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarDateByAddingWeeks:1];
  v6 = [v5 month];
  if (v6 == [v4 month])
  {
    v7 = [v5 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

    [v7 absoluteTime];
    v9 = v8;
    v10 = [v4 calendarDateForEndOfWeekWithWeekStart:CUIKOneIndexedWeekStart()];
    [v10 absoluteTime];
    v12 = v11;

    if (v9 > v12)
    {
      goto LABEL_6;
    }

    v13 = [(MonthViewController *)self _slowComputeCalendarDateForWeekFromStartDate:v4 weekOffset:1];
    v5 = v7;
  }

  else
  {
    v13 = [v5 calendarDateForMonth];
  }

  v7 = v13;
LABEL_6:

  return v7;
}

- (id)_slowComputeCalendarDateForWeekFromStartDate:(id)a3 weekOffset:(int64_t)a4
{
  v6 = a3;
  v7 = [(MainViewController *)self model];
  v8 = [v7 calendar];
  v9 = [v8 copy];

  [v9 setFirstWeekday:CUIKOneIndexedWeekStart()];
  v10 = [v6 date];

  v11 = [v9 dateByAddingUnit:4096 value:a4 toDate:v10 options:0];

  v12 = [v9 components:8206 fromDate:v11];
  [v12 setWeekday:{objc_msgSend(v9, "firstWeekday")}];
  v13 = [v9 dateFromComponents:v12];
  v14 = [EKCalendarDate alloc];
  v15 = [(MainViewController *)self model];
  v16 = [v15 calendar];
  v17 = [v16 timeZone];
  v18 = [v14 initWithDate:v13 timeZone:v17];

  return v18;
}

- (void)selectDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MainViewController *)self model];
  [v7 setSelectedDate:v6];

  v8 = [v6 date];

  [(MonthViewController *)self showDate:v8 animated:v4 toMonthStart:1];
}

- (BOOL)shouldPushNextLevelViewControllerWhenTodayIsVisible
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 showMonthAsDivided];

  return v3 ^ 1;
}

- (BOOL)_isTodayCircleFrameFullyUnobstructed
{
  [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
  v4 = v3;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v5 contentInset];
  v7 = v6;
  v8 = [(InfiniteScrollViewController *)self scrollView];
  [v8 bounds];
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

- (void)showDate:(id)a3 animated:(BOOL)a4 toMonthStart:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v5)
  {
    v39 = v6;
    v9 = [(CUIKCalendarModel *)self->super.super._model calendar];
    v10 = [v9 timeZone];

    v37 = v10;
    v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:v10];
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

    v38 = v8;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = [v16 reverseObjectEnumerator];
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          objc_enumerationMutation(v25);
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
          v27 = [v25 countByEnumeratingWithState:&v41 objects:v47 count:16];
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

    v8 = [v32 date];

    v6 = v39;
  }

  v40.receiver = self;
  v40.super_class = MonthViewController;
  [(InfiniteScrollViewController *)&v40 showDate:v8 animated:v6];
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
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 contentInset];
  v11 = v10;

  v12 = [(MonthViewController *)self view];
  [v12 bounds];
  v13 = CGRectGetHeight(v23);
  v14 = [(InfiniteScrollViewController *)self scrollView];
  [v14 contentInset];
  v16 = v15;

  if (v8 || (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, CGRectGetMinY(v24) > v13 - v16) || (v25.origin.x = x, v25.origin.y = y, v25.size.width = width, v25.size.height = height, CGRectGetMaxY(v25) < v11))
  {
    v17 = [(InfiniteScrollViewController *)self dateOfCenterViewInBuffer];
  }

  else
  {
    v19 = [(CUIKCalendarModel *)self->super.super._model eventStore];
    v20 = [v19 timeZone];

    v17 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v20];
  }

  return v17;
}

- (id)sceneTitle
{
  v3 = [(MonthViewController *)self bestDateForNewEvent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 date];
    if (v5)
    {
LABEL_3:
      v6 = CUIKStringForMonthYear();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [(CUIKCalendarModel *)self->super.super._model selectedDay];
    v5 = [v7 date];

    if (v5)
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

- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4
{
  v6 = [(InfiniteScrollViewController *)self scrollView:a3.x];
  [v6 contentOffset];
  v8 = v7;

  y = a4->y;
  v10 = vabdd_f64(y, v8);
  [(MonthViewController *)self decelerationDistanceThresholdForPreferringMonthBoundary];
  if (v10 > v11)
  {
    [(MonthViewController *)self nearestMajorBoundaryForPoint:a4->x, a4->y];
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
          v34 = NSStringFromPoint(*a4);
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

    x = a4->x;
    v15 = a4->y;
LABEL_7:
    a4->x = x;
    a4->y = v15;
    v16 = [(InfiniteScrollViewController *)self scrollView];
    [v16 contentOffset];
    v10 = vabdd_f64(v15, v17);
  }

  if (self->_shouldShowMonthTitleHUDWhenScrolling)
  {
    [(MonthViewController *)self decelerationDistanceThresholdForDisplayingMonthBanner];
    if (v10 > v18)
    {
      self->_monthTitleViewIsVisible = 1;
      v19 = [(MonthTitleView *)self->_monthTitleView superview];

      if (!v19)
      {
        [(MonthTitleView *)self->_monthTitleView frame];
        v21 = v20;
        v23 = v22;
        v24 = [(InfiniteScrollViewController *)self scrollView];
        [v24 safeAreaInsets];
        v26 = v25;

        v27 = [(MonthViewController *)self view];
        [v27 bounds];
        Width = CGRectGetWidth(v39);

        [(MonthTitleView *)self->_monthTitleView setFrame:v21, v26, Width, v23];
        v29 = [(MonthViewController *)self view];
        [v29 addSubview:self->_monthTitleView];
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

- (void)_selectedDateChanged:(id)a3
{
  v4 = CalSolariumEnabled();
  v5 = [(MainViewController *)self model];
  v6 = [v5 selectedDate];
  if (v4)
  {
    [(MonthViewController *)self _updateNavigationTitleControllerToDate:v6];
  }

  else
  {
    [(MonthViewController *)self _updateBackButtonOnBackViewControllerToDate:v6];
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
  v3 = [(InfiniteScrollViewController *)self dateOfCenterViewInBuffer];
  v4 = [(MainViewController *)self model];
  v5 = [v4 calendar];
  v6 = [v5 timeZone];
  v9 = [v3 calendarDateInTimeZone:v6];

  [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:v9];
  v7 = [(MainViewController *)self model];
  v8 = [v7 selectedDate];

  if ((CalSolariumEnabled() & 1) == 0)
  {
    [(MonthViewController *)self updateBackButtonToDate:v8];
  }
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(MonthViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateBackButtonToDate:v5];
  }
}

- (void)updateBackButtonToDate:(id)a3
{
  v4 = a3;
  v5 = [v4 year];
  v6 = CUIKTodayComponents();
  v7 = [v6 year];

  if (v5 == v7)
  {
    [v4 month];

    v8 = CUIKStringForMonthNumber();
  }

  else
  {
    v9 = [v4 date];

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

  v13 = [(MonthViewController *)self parentViewController];
  v14 = [v13 navigationItem];
  [v14 setBackButtonTitle:v11];
  v15 = [(MonthViewController *)self navigationController];
  v16 = [v15 navigationBar];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(MonthViewController *)self navigationController];
  v26 = [v25 navigationBar];
  [v26 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v27 = [(MonthViewController *)self navigationController];
  v28 = [v27 navigationBar];
  [v28 setFrame:{v18, v20, v22, v24}];
}

- (void)_updateNavigationTitleControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(MonthViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateTitleToDate:v5];
  }
}

- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)a3
{
  v11.receiver = self;
  v11.super_class = MonthViewController;
  obj = 0;
  [(InfiniteScrollViewController *)&v11 nearestMajorBoundaryForPoint:&obj date:a3.x, a3.y];
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
  v4 = [(InfiniteScrollViewController *)self scrollView];
  [v4 contentOffset];
  v6 = v5;

  v7 = [(InfiniteScrollViewController *)self scrollView];
  if ([v7 isDragging])
  {
    v8 = [(InfiniteScrollViewController *)self isUserFingerDown];

    if ((v8 & 1) == 0 && self->_monthTitleViewIsVisible)
    {
      [(MonthViewController *)self decelerationDistanceThresholdToStopShowingMonthBanner];
      if (vabdd_f64(decelerationTargetY, v6) > v9)
      {
        v10 = [(InfiniteScrollViewController *)self scrollView];
        [v10 contentInset];
        v12 = v11;

        v13 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v12];
        if (!v13)
        {
LABEL_23:

          return;
        }

        v14 = decelerationTargetY - v6;
        v33 = v13;
        v15 = [(MonthViewController *)self view];
        [v33 convertPoint:v15 fromView:{0.0, v12}];
        v17 = v16;

        v18 = [v33 calendarDate];
        [(InfiniteScrollViewController *)self showDateVerticalOffsetForDate:v18];
        v20 = v19;

        v21 = [v33 calendarDate];
        v22 = v21;
        if (v14 <= 0.0)
        {
          v28 = [v21 day];
          v29 = [v22 month];
          v30 = v29 == [(EKCalendarDate *)self->_decelerationTargetDate month];
          v25 = v33;
          if (!v30 && (v28 < 8 || (v28 - 8) <= 6 && v17 - v20 < 44.0))
          {
            v26 = -1;
            goto LABEL_21;
          }
        }

        else
        {
          v23 = [v21 daysInMonth];
          v24 = (v23 - [v22 day]) >= 0xF;
          v25 = v33;
          if (!v24)
          {
            v26 = 1;
LABEL_21:
            v32 = [v25 calendarDate];
            v31 = [v32 calendarDateByAddingMonths:v26];

            goto LABEL_22;
          }
        }

        v31 = [v25 calendarDate];
LABEL_22:
        [(MonthTitleView *)self->_monthTitleView setCalendarDate:v31];

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

- (id)adjustSelectedDateForNewMonth:(id)a3
{
  v4 = a3;
  v5 = CUIKTodayDate();
  v6 = [(CUIKCalendarModel *)self->super.super._model calendar];
  v7 = [v6 timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

  v9 = [v8 month];
  if (v9 == [v4 month] && (v10 = objc_msgSend(v8, "year"), v10 == objc_msgSend(v4, "year")))
  {
    v11 = v8;
  }

  else
  {
    v11 = [v4 calendarDateForMonth];
  }

  v12 = v11;

  return v12;
}

- (id)dateAtPoint:(CGPoint)a3
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
  v6 = a3;
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
    v3 = [(EKEvent *)self->_draggedOccurrence startCalendarDate];
    v23 = [(InfiniteScrollViewController *)self subviewForDate:v3];

    if ([v23 conformsToProtocol:&OBJC_PROTOCOL___InfiniteScrollViewSubview])
    {
      draggedOccurrence = self->_draggedOccurrence;
      v5 = [(EKEvent *)draggedOccurrence startCalendarDate];
      [v23 frameForOccurrence:draggedOccurrence onDay:v5];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = [(MonthViewController *)self view];
      [v14 convertRect:v23 fromView:{v7, v9, v11, v13}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:v16, v18, v20, v22];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setNeedsDisplay];
    }
  }
}

- (void)removeDraggingOccurrenceAnimated:(BOOL)a3
{
  if (a3)
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
  v2 = [(MainViewController *)self model];
  v3 = [v2 pasteboardManager];

  return v3;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  if (a4)
  {
    [a3 nextOccurrence];
  }

  else
  {
    [a3 previousOccurrence];
  }
  v4 = ;
  v5 = [v4 reminderOccurrenceType];
  if (v4)
  {
    v6 = v5 == 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if (v4)
  {
    [v6 nextOccurrence];
  }

  else
  {
    [v6 previousOccurrence];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 startCalendarDate];
    [(MonthViewController *)self selectDate:v9 animated:1];

    [(MainViewController *)self showEvent:v8 animated:1 showMode:0 context:0];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 event];
  v5 = [v4 nextOccurrence];

  if (v5)
  {
    [(MonthViewController *)self eventViewController:v7 didCompleteWithAction:0];
    v6 = [v7 context];
    [(MainViewController *)self showEvent:v5 animated:1 showMode:1 context:v6];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 event];
  v5 = [v4 previousOccurrence];

  if (v5)
  {
    [(MonthViewController *)self eventViewController:v7 didCompleteWithAction:0];
    v6 = [v7 context];
    [(MainViewController *)self showEvent:v5 animated:1 showMode:1 context:v6];
  }
}

- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MonthViewController *)self eventViewController:v7 didCompleteWithAction:0];
  v8 = [v7 context];

  [(MainViewController *)self showEvent:v6 animated:1 showMode:1 context:v8];
}

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (id)monthWeekSubviewForScrollPoint:(CGPoint)a3 pointInWeek:(CGPoint *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(InfiniteScrollViewController *)self subviewForPoint:?];
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
  {
    if (a4)
    {
      v9 = [(InfiniteScrollViewController *)self scrollView];
      [v9 convertPoint:v8 toView:{x, y}];
      a4->x = v10;
      a4->y = v11;
    }

    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)_startingFrameForEvent:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:0 pointInWeek:x, y];
  v9 = [v7 startCalendarDate];
  v10 = [v9 calendarDateForDay];

  [(EKCalendarDate *)self->_draggedStartDate absoluteTime];
  v12 = v11;
  v13 = [v8 calendarDate];
  [v13 absoluteTime];
  v15 = v14;

  if (v12 < v15)
  {
    v16 = [v8 calendarDate];

    v10 = v16;
  }

  [v8 frameForOccurrence:v7 onDay:v10];
  v17 = v40.origin.x;
  v18 = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectIsNull(v40))
  {
    v21 = [v7 startCalendarDate];
    v22 = [(InfiniteScrollViewController *)self subviewForDate:v21];

    if ([v22 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
    {
      [v22 frameForOccurrence:v7 onDay:v10];
      v17 = v23;
      v18 = v24;
      width = v25;
      height = v26;
    }
  }

  v27 = [(InfiniteScrollViewController *)self scrollView];
  [v27 convertRect:v8 fromView:{v17, v18, width, height}];
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

- (void)_updateDraggingOffsetTimesForPoint:(CGPoint)a3
{
  v4 = [(MonthViewController *)self dateAtPoint:a3.x, a3.y];
  v13 = v4;
  if (self->_draggingExistingEvent)
  {
    v5 = [v4 differenceInDays:self->_initialDragDate];
    v6 = [(EKEvent *)self->_draggedOccurrence startCalendarDate];
    v7 = [v6 calendarDateByAddingDays:v5];
    draggedStartDate = self->_draggedStartDate;
    self->_draggedStartDate = v7;

    v9 = [(EKEvent *)self->_draggedOccurrence endCalendarDate];
    v10 = [v9 calendarDateByAddingDays:v5];
    draggedEndDate = self->_draggedEndDate;
    self->_draggedEndDate = v10;
  }

  else
  {
    objc_storeStrong(&self->_draggedStartDate, v4);
    v12 = [v13 calendarDateForEndOfDay];
    v9 = self->_draggedEndDate;
    self->_draggedEndDate = v12;
  }
}

- (void)_updateWeekHighlightsForDragPoint:(CGPoint)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000241B0;
  v3[3] = &unk_10020ED60;
  v3[4] = self;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v3];
}

- (void)_animateDraggingOccurrenceToDate:(id)a3 atLastPosition:(BOOL)a4 dropPoint:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v10 = a6;
  [(MonthViewController *)self _mainFrameForEvent:self->_draggedOccurrence atLastPosition:v8 atPoint:x, y];
  v11 = v34.origin.x;
  v12 = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (CGRectIsNull(v34) || (v35.origin.x = v11, v35.origin.y = v12, v35.size.width = width, v35.size.height = height, CGRectIsEmpty(v35)))
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v15 = [(InfiniteScrollViewController *)self scrollView];
    [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(MonthViewController *)self view];
    [v15 convertRect:v24 fromView:{v17, v19, v21, v23}];
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
    v32 = v10;
    [UIView animateWithDuration:131076 delay:v33 options:v31 animations:v30 completion:0.0];
  }
}

- (CGRect)_mainFrameForEvent:(id)a3 atLastPosition:(BOOL)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v9 = a3;
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
      if (v7)
      {
        [v15 frameForOccurrenceAfterLastOnDay:v16];
      }

      else
      {
        [v15 frameForOccurrence:v9 onDay:v16];
      }

      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = [(InfiniteScrollViewController *)self scrollView];
      [v25 convertRect:v15 fromView:{v21, v22, v23, v24}];
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

- (void)_saveDraggedEventWithSpan:(int64_t)a3
{
  if (([(EKEvent *)self->_draggedOccurrence isNew]& 1) == 0)
  {
    if (a3 && [(EKEvent *)self->_draggedOccurrence isOrWasPartOfRecurringSeries])
    {
      if ([(EKEvent *)self->_draggedOccurrence isOrWasPartOfRecurringSeries])
      {
        v5 = [(EKEvent *)self->_draggedOccurrence singleRecurrenceRule];
      }

      else
      {
        v5 = 0;
      }

      v6 = [v5 recurrenceEnd];
      v7 = [v6 endDate];

      if (v7)
      {
        v8 = [(EKEvent *)self->_draggedOccurrence committedValueForKey:@"startDate"];
        [v8 timeIntervalSinceReferenceDate];
        v10 = v9;

        v11 = [(EKEvent *)self->_draggedOccurrence startDate];
        [v11 timeIntervalSinceReferenceDate];
        v13 = v12;

        v14 = [v7 dateByAddingTimeInterval:v13 - v10];
        v15 = [EKRecurrenceEnd recurrenceEndWithEndDate:v14];
        [v5 setRecurrenceEnd:v15];
      }
    }

    v16 = [(MonthViewController *)self EKUI_editor];
    draggedOccurrence = self->_draggedOccurrence;
    v21 = 0;
    v18 = [v16 saveEvent:draggedOccurrence span:a3 error:&v21];
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
  v4 = [(MonthViewController *)self traitCollection];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v4];

  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  v7 = [UIFont fontWithDescriptor:v6 size:0.0];
  if (([(EKEvent *)self->_draggedOccurrence isNew]& 1) != 0)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"New Event" value:&stru_1002133B8 table:0];
    [v3 setText:v9];
  }

  else
  {
    v8 = [(EKEvent *)self->_draggedOccurrence title];
    [v3 setText:v8];
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
  v22 = [v3 layer];
  [v22 setCornerRadius:8.0];

  v23 = [v3 layer];
  [v23 setMaskedCorners:15];

  [v3 setClipsToBounds:1];
  v24 = [(EKEvent *)self->_draggedOccurrence eventStore];
  v25 = [(EKEvent *)self->_draggedOccurrence calendar];
  v26 = [v24 colorForCalendar:v25];

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

- (BOOL)eventGestureControllerShouldAllowLongPress:(id)a3
{
  v4 = a3;
  if ([(MonthViewController *)self dragAndDropAllowLongPress])
  {
    v5 = [(CUIKCalendarModel *)self->super.super._model defaultCalendarForNewEvents];
    if (v5)
    {
      v6 = [v4 dragGestureInProgress] ^ 1;
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

- (id)eventGestureController:(id)a3 eventToStartInteractionWithAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MonthViewController *)self occurrenceAtPoint:x, y];
    if (!v7)
    {
      v8 = [(CUIKCalendarModel *)self->super.super._model eventStore];
      v7 = [EKEvent eventWithEventStore:v8];

      v9 = [(CUIKCalendarModel *)self->super.super._model defaultCalendarForNewEvents];
      [v7 setCalendar:v9];

      v10 = [(MonthViewController *)self dateAtPoint:x, y];
      v11 = [v10 date];
      if (v11)
      {
        [v7 setStartDate:v11];
      }

      else
      {
        v12 = +[NSDate date];
        [v7 setStartDate:v12];
      }

      v13 = [v7 startDate];
      v14 = [v13 dateByAddingTimeInterval:1.0];
      [v7 setEndDate:v14];

      [v7 setAllDay:1];
    }
  }

  return v7;
}

- (id)eventGestureController:(id)a3 setUpAtPoint:(CGPoint)a4 withOccurrence:(id)a5 forceNewEvent:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a5;
  if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
  {
    [(MonthViewController *)self dragAndDropScrubAtPoint:x, y];
    v11 = 0;
    v12 = v10;
    goto LABEL_33;
  }

  if (v10)
  {
    v13 = [v10 startCalendarDate];
    v14 = [v13 calendarDateForDay];
    initialDragDate = self->_initialDragDate;
    self->_initialDragDate = v14;

    v12 = v10;
  }

  else
  {
    v16 = [(MonthViewController *)self dateAtPoint:x, y];
    v17 = self->_initialDragDate;
    self->_initialDragDate = v16;

    if (a6)
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
    v19 = [v12 isNew];
    p_draggingExistingEvent = &self->_draggingExistingEvent;
    self->_draggingExistingEvent = v19 ^ 1;
    if ((v19 ^ 1))
    {
      goto LABEL_16;
    }
  }

  else
  {
    p_draggingExistingEvent = &self->_draggingExistingEvent;
    self->_draggingExistingEvent = 0;
    v21 = [(CUIKCalendarModel *)self->super.super._model eventStore];
    v12 = [EKEvent eventWithEventStore:v21];
  }

  v22 = [(CUIKCalendarModel *)self->super.super._model defaultCalendarForNewEvents];
  [v12 setCalendar:v22];

  v23 = [(EKCalendarDate *)self->_initialDragDate date];
  if (v23)
  {
    [v12 setStartDate:v23];
  }

  else
  {
    v24 = +[NSDate date];
    [v12 setStartDate:v24];
  }

  v25 = [v12 startDate];
  v26 = [v25 dateByAddingTimeInterval:1.0];
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
    v29 = [(MonthViewController *)self view];
    [v29 addSubview:self->_draggedOccurrenceView];

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
      v51 = [(MonthViewController *)self view];
      v52 = [(InfiniteScrollViewController *)self scrollView];
      [v51 convertRect:v52 fromView:{v49, v50, v46, v48}];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:?];

LABEL_27:
      [(MonthViewController *)self _updateDraggingOffsetTimesForPoint:x, y];
      [(MonthViewController *)self _updateWeekHighlightsForDragPoint:x, y];
      if (v10)
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
    if (v10)
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

    v55 = [(MonthViewController *)self view];
    v56 = [(InfiniteScrollViewController *)self scrollView];
    [v55 convertRect:v56 fromView:{v34, v35, v36, v37}];
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

- (void)eventGestureController:(id)a3 updateToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
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
      v7 = [(InfiniteScrollViewController *)self scrollView];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(MonthViewController *)self view];
      [v7 convertRect:v16 fromView:{v9, v11, v13, v15}];

      v17 = [(MonthViewController *)self view];
      CalRoundRectToScreenScale();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [(InfiniteScrollViewController *)self scrollView];
      [v17 convertRect:v26 fromView:{v19, v21, v23, v25}];
      [(MonthViewOccurrence *)self->_draggedOccurrenceView setFrame:?];
    }

    [(MonthViewController *)self _updateDraggingOffsetTimesForPoint:x, y];
    [(MonthViewController *)self _updateWeekHighlightsForDragPoint:x, y];
  }
}

- (void)eventGestureController:(id)a3 commitToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(MainViewController *)self shownEventEditViewController];

  if (!v8)
  {
    v76 = CGPointZero;
    v9 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:&v76 pointInWeek:x, y];
    if ([(MonthViewController *)self dragAndDropIsCurrentlyScrubbing])
    {
      [(MonthViewController *)self dragAndDropScrubAtPoint:x, y];
      v10 = [(MainViewController *)self model];
      v11 = [v10 selectedOccurrence];

      if (!v11)
      {
        [(MonthViewController *)self dismissDraggedOccurrencePresentationAnimated:1];
        goto LABEL_18;
      }

      v12 = [(MainViewController *)self model];
      v13 = [v12 selectedOccurrence];
      v14 = [(MonthViewController *)self dateAtPoint:x, y];
      [(MonthViewController *)self showDetailsForDraggedOccurrence:v13 inWeekView:v9 onDay:v14 creationMethod:1];

      goto LABEL_5;
    }

    v15 = [v9 dateAtPoint:v76];
    if (v15 && self->_draggedStartDate)
    {
      draggedEndDate = self->_draggedEndDate;

      if (draggedEndDate)
      {
        [(MonthViewController *)self _updateDraggingOffsetTimesForPoint:x, y];
        v17 = [(EKCalendarDate *)self->_draggedStartDate date];
        [(EKEvent *)self->_draggedOccurrence setStartDate:v17];

        v18 = [(EKCalendarDate *)self->_draggedEndDate date];
        [(EKEvent *)self->_draggedOccurrence setEndDate:v18];

        v12 = +[UIApplication sharedApplication];
        if ([v12 optionKeyIsDown])
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

            v22 = [(MainViewController *)self model];
            v23 = [v22 pasteboardManager];
            v24 = [(EKEvent *)self->_draggedOccurrence startDate];
            [v23 setDateForPaste:v24];

            v25 = [(MainViewController *)self model];
            v26 = [v25 pasteboardManager];
            [v26 setCalendarForPaste:0];

            v27 = [(MainViewController *)self model];
            v28 = [v27 pasteboardManager];
            v29 = [NSSet setWithObject:self->_draggedOccurrence];
            [v28 duplicateEvents:v29 withDateMode:2 delegate:self];

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
            [v7 promptUserForRecurrenceActionOnOccurrence:v34 whenFinished:v69];

            goto LABEL_6;
          }

          [(MonthViewController *)self _saveDraggedEventWithSpan:0];
          v35 = [(EKEvent *)self->_draggedOccurrence isNew];
          v13 = [v9 dateAtPoint:v76];
          if (v35)
          {
            [v9 frameForOccurrenceAfterLastOnDay:v13];
            v37 = v36;
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v44 = [(MonthViewController *)self view];
            [v44 convertRect:v9 fromView:{v37, v39, v41, v43}];
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
            v61 = [(MonthViewOccurrence *)self->_draggedOccurrenceView layer];
            [v61 displayIfNeeded];

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
          v66 = self;
          v30 = &v62;
          v31 = self;
          v32 = v13;
          v33 = 1;
        }

        else
        {
          v13 = [v9 dateAtPoint:v76];
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100026490;
          v74[3] = &unk_10020EB00;
          v74[4] = self;
          v30 = v74;
          v31 = self;
          v32 = v13;
          v33 = 0;
        }

        [(MonthViewController *)v31 _animateDraggingOccurrenceToDate:v32 atLastPosition:v33 dropPoint:v30 completion:x, y, v62, v63, v64, v65, v66];
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

- (CGRect)eventGestureController:(id)a3 finalFrameAfterCommitAtPoint:(CGPoint)a4
{
  [(MonthViewController *)self _mainFrameForEvent:self->_draggedOccurrence atLastPosition:0 atPoint:a4.x, a4.y];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)eventGestureControllerCancelled:(id)a3
{
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];

  [(MonthViewController *)self removeAllWeekHighlights];
}

- (void)eventGestureControllerScrollTimerFired:(id)a3
{
  if (!self->_draggedOccurrence)
  {
    return;
  }

  v31 = [(MainViewController *)self existingPalette];
  v4 = [v31 superview];
  [v31 frame];
  MaxY = CGRectGetMaxY(v33);
  v6 = [(MonthViewController *)self view];
  [v4 convertPoint:v6 toView:{0.0, MaxY}];
  v8 = v7;

  v9 = [(InfiniteScrollViewController *)self scrollView];
  v10 = [v9 superview];
  v11 = [(InfiniteScrollViewController *)self scrollView];
  [v11 frame];
  v12 = CGRectGetMaxY(v34);
  v13 = [(InfiniteScrollViewController *)self scrollView];
  [v13 contentInset];
  v15 = v12 - v14;
  v16 = [(MonthViewController *)self view];
  [v10 convertPoint:v16 toView:{0.0, v15}];
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
      v25 = [(InfiniteScrollViewController *)self scrollView];
      [v25 contentOffset];
      v27 = v26;
      v29 = v28;

      v30 = [(InfiniteScrollViewController *)self scrollView];
      [v30 setContentOffset:{v27, v24 + v29}];
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

- (void)eventGestureController:(id)a3 setDraggingViewHidden:(BOOL)a4
{
  v4 = a4;
  [(MonthViewOccurrence *)self->_draggedOccurrenceView setHidden:a4];
  if (v4)
  {

    [(MonthViewController *)self removeAllWeekHighlights];
  }
}

- (void)eventGestureController:(id)a3 requestsShowEvent:(id)a4
{
  v5 = a4;
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:0];
  [(MainViewController *)self showEvent:v5 animated:1 showMode:1 context:0];
}

- (void)eventGestureController:(id)a3 requestedCancellationAnimationAtPoint:(CGPoint)a4 withOccurrence:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(MainViewController *)self shownEventViewController];

  if (!v9)
  {
    if (!v8)
    {
      v8 = [(MonthViewController *)self occurrenceAtPoint:x, y];
    }

    v24 = CGPointZero;
    v10 = [(MonthViewController *)self monthWeekSubviewForScrollPoint:&v24 pointInWeek:x, y];
    v11 = [v10 newFeedbackViewForDraggingOccurrence:v8 atPoint:v24];
    if (v11)
    {
      v12 = [(MonthViewController *)self view];
      [v12 addSubview:v11];

      [(MonthViewController *)self _startingFrameForEvent:v8 atPoint:x, y];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(MonthViewController *)self view];
      v22 = [(InfiniteScrollViewController *)self scrollView];
      [v21 convertRect:v22 fromView:{v14, v16, v18, v20}];
      [v11 setFrame:?];

      [v11 setAlpha:0.8];
      v23 = v11;
      CalPlopViewWithScaleFactorAndCompletion();
      [(MonthViewController *)self selectOccurrence:0 inWeek:0, _NSConcreteStackBlock, 3221225472, sub_100026C74, &unk_10020EC68, self];
    }
  }
}

- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isReminderIntegrationEvent])
  {
    v7 = [CUIKIReminderDragProvider itemProviderWriterForReminderEvent:v5];
    if (v7)
    {
      [v6 registerObject:v7 visibility:0];

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

- (CGRect)frameForWeekContainingDate:(id)a3
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

- (id)cellFramesForWeekContainingDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

@end
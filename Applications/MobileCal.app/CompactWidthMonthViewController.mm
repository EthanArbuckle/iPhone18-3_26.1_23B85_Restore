@interface CompactWidthMonthViewController
+ (double)monthWeekScale;
+ (double)scaleForSize:(unint64_t)a3;
+ (void)setMonthWeekScaleSize:(unint64_t)a3;
- (BOOL)_isTodayCircleFrameFullyUnobstructed;
- (BOOL)_isTodayHighlightVisible;
- (BOOL)_shouldAnimateDots;
- (BOOL)dragAndDropAllowLongPress;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isTodayVisible;
- (CGPoint)_originForSelectedMonthViewInScrollViewWithState:(BOOL)a3;
- (CGRect)frameForTodayHighlight;
- (CGRect)frameForWeekContainingDate:(id)a3;
- (CGRect)frameOfListView;
- (CompactWidthMonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5;
- (double)_bottomOfCurrentMonth;
- (double)_scrollViewVerticalVelocity;
- (double)_showDateVerticalOffset;
- (double)decelerationDistanceThresholdForDisplayingMonthBanner;
- (double)decelerationDistanceThresholdForPreferringMonthBoundary;
- (double)decelerationDistanceThresholdToStopShowingMonthBanner;
- (double)heightForSubviewWithCalendarDate:(id)a3;
- (double)monthWeekScale;
- (double)showDateVerticalOffsetForDate:(id)a3;
- (id)_dayInMonth:(id)a3 fromGesture:(id)a4;
- (id)_eventInMonthWeekView:(id)a3 fromGesture:(id)a4;
- (id)_loadEventsForStartDate:(id)a3 endDate:(id)a4;
- (id)_monthForLastVisibleMonth;
- (id)_paletteView;
- (id)_snapshotViewForDividedListTransition:(id)a3 useFastPath:(BOOL)a4;
- (id)_viewFromGesture:(id)a3;
- (id)_weekViewAtScrollPoint:(CGPoint)a3 pointInWeek:(CGPoint *)a4;
- (id)bestDateForNewEvent;
- (id)cellFramesForWeekContainingDate:(id)a3;
- (id)createInitialViewForDate:(id)a3;
- (id)dateForCurrentMonthOnScreen;
- (id)dateForTopVisibleMonthOnScreen;
- (id)newBottomViewBelowViewWithCalendarDate:(id)a3;
- (id)newTopViewAboveViewWithCalendarDate:(id)a3;
- (id)occurrenceAtPoint:(CGPoint)a3;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)pushedDayViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)pushedListViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)pushedMultiDayViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)sceneTitle;
- (id)targetCalendarDate;
- (id)updateBackButtonWhileTopViewControllerToDate:(id)a3;
- (int64_t)eventCountDisplayedForDate:(id)a3;
- (unint64_t)_numberOfWeeksInSelectedMonth;
- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth;
- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth;
- (void)_animateChangeToWeekSize:(unint64_t)a3 divided:(BOOL)a4;
- (void)_cachedOccurrencesChanged:(id)a3;
- (void)_createMonthHighlightForMonthView:(id)a3 day:(id)a4;
- (void)_dayIndexesForRangeStart:(id)a3 rangeEnd:(id)a4 outFirstDayIndex:(int64_t *)a5 outLastDayIndex:(int64_t *)a6;
- (void)_loadEventDataForMonthWeekView:(id)a3;
- (void)_loadEventsForAllSubviews;
- (void)_loadEventsForViewsInRangeStartingAt:(id)a3 endingAt:(id)a4;
- (void)_modelUnlocked;
- (void)_monthScrollerPinched:(id)a3;
- (void)_occurrencesChanged:(id)a3;
- (void)_registerGestureRecognizers;
- (void)_removeMonthHighlight;
- (void)_resetSelectionForDividedListState:(BOOL)a3;
- (void)_scrubGestureCallback:(id)a3;
- (void)_selectedDateChangedExternally;
- (void)_setSelectedDay:(id)a3 onMonthWeekView:(id)a4 animated:(BOOL)a5;
- (void)_setupListViewController;
- (void)_showDetailsForEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)_tapGestureCallback:(id)a3;
- (void)_unregisterGestureRecognizers;
- (void)_updateDateForDividedList;
- (void)_updateDividedListTopLineForDividedMode:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateListViewFrame;
- (void)_updateMonthTitleViewFont;
- (void)_updateNavigationControllerBackButton;
- (void)_updateNavigationControllerBackButtonToDate:(id)a3;
- (void)_updateViewsForTimeZoneChange;
- (void)_weekStartChanged:(id)a3;
- (void)animateToMonthWeekSize:(unint64_t)a3 divided:(BOOL)a4;
- (void)applySizeToPinchView:(unint64_t)a3 compressed:(BOOL)a4 snapToBoundary:(BOOL)a5;
- (void)calendarModelTimeZoneChanged;
- (void)contentSizeCategoryChanged;
- (void)dealloc;
- (void)didEndScrolling;
- (void)didLoadInitialViews;
- (void)didScroll;
- (void)dragAndDropRequestsPresentationOfViewController:(id)a3;
- (void)endAnimationSplitState;
- (void)enterAnimationSplitStateWithCutOutArea:(CGRect)a3 topBoundary:(double)a4;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)finishChangeScale;
- (void)forceUpdateListView;
- (void)loadView;
- (void)localeChanged;
- (void)monthView:(id)a3 gestureBegan:(id)a4;
- (void)monthView:(id)a3 gestureCancelled:(id)a4;
- (void)monthView:(id)a3 gestureChanged:(id)a4;
- (void)monthView:(id)a3 gestureEnded:(id)a4;
- (void)prepareToChangeScaleFromPinch:(BOOL)a3;
- (void)relayoutPinchView;
- (void)setSplitStateOpen:(BOOL)a3;
- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)showEditorForNewDraggedEvent:(id)a3 inWeek:(id)a4;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)significantTimeChangeOccurred;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4;
@end

@implementation CompactWidthMonthViewController

- (CompactWidthMonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CompactWidthMonthViewController;
  v11 = [(MonthViewController *)&v25 initWithCalendarDate:v8 model:v9 window:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [(MainViewController *)v11 model];
    BYTE2(v12->_reloadQueue) = [v13 showMonthAsDivided];

    v14 = objc_opt_new();
    v15 = *(&v12->_lastSnapScale + 1);
    *(&v12->_lastSnapScale + 1) = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("monthReload", v16);
    v18 = *(&v12->_pinchViews + 1);
    *(&v12->_pinchViews + 1) = v17;

    objc_initWeak(&location, v12);
    v26 = objc_opt_class();
    v19 = [NSArray arrayWithObjects:&v26 count:1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100091994;
    v22[3] = &unk_10020E9E0;
    objc_copyWeak(&v23, &location);
    v20 = [(CompactWidthMonthViewController *)v12 registerForTraitChanges:v19 withHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CUIKPreferencesNotification_EventsInPhoneMonthView object:0];
  [v3 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super.super._model];
  [v3 removeObserver:self name:CUIKCalendarModelCachedOccurrencesChangedNotification object:self->super.super.super.super._model];
  [v3 removeObserver:self name:CUIKPreferencesNotification_WeekStart object:0];
  [v3 removeObserver:self name:CUIKCalendarModelDidUnlockNotification object:self->super.super.super.super._model];

  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v4 dealloc];
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v10 loadView];
  [(CompactWidthMonthViewController *)self _updateMonthTitleViewFont];
  v3 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:"_monthScrollerPinched:"];
  [(CompactWidthMonthViewController *)self setPinchRecognizer:v3];

  v4 = [(CompactWidthMonthViewController *)self view];
  v5 = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [v4 addGestureRecognizer:v5];

  v6 = [(CompactWidthMonthViewController *)self pinchToZoomAllowed];
  v7 = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [v7 setEnabled:v6];

  v8 = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [v8 setDelegate:self];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_selectedDateChangedExternally" name:CUIKCalendarModelSelectedDateChangedNotification object:self->super.super.super.super._model];
  [v9 addObserver:self selector:"_cachedOccurrencesChanged:" name:CUIKCalendarModelCachedOccurrencesChangedNotification object:self->super.super.super.super._model];
  [v9 addObserver:self selector:"_occurrencesChanged:" name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super.super._model];
  [v9 addObserver:self selector:"_weekStartChanged:" name:CUIKPreferencesNotification_WeekStart object:0];
  [v9 addObserver:self selector:"_modelUnlocked" name:CUIKCalendarModelDidUnlockNotification object:self->super.super.super.super._model];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CompactWidthMonthViewController;
  [(InfiniteScrollViewController *)&v13 viewDidLoad];
  v3 = [(CompactWidthMonthViewController *)self dividedListMode];
  v4 = &UIScrollViewDecelerationRateFast;
  if (!v3)
  {
    v4 = &UIScrollViewDecelerationRateNormal;
  }

  v5 = *v4;
  v6 = [(InfiniteScrollViewController *)self scrollView];
  [v6 setDecelerationRate:v5];

  v7 = [(CompactWidthMonthViewController *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v7];

  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _setupListViewController];
    [(CompactWidthMonthViewController *)self _updateListViewFrame];
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v8 = [objc_opt_class() dividedModeBackgroundColor];
      v9 = [(InfiniteScrollViewController *)self scrollView];
      [v9 setBackgroundColor:v8];
    }

    v10 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v11 = [(MonthViewController *)self adjustSelectedDateForNewMonth:v10];

    [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
  }

  else
  {
    v11 = +[UIColor systemBackgroundColor];
    v12 = [(InfiniteScrollViewController *)self scrollView];
    [v12 setBackgroundColor:v11];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v4 viewWillAppear:a3];
  *(&self->super._applicationResuming + 1) = 1;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v4 viewIsAppearing:a3];
  [(CompactWidthMonthViewController *)self ekui_adjustNavBarToTranslucentGrayStyleWithSeparator];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v16 viewDidAppear:?];
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _updateDividedListTopLineForDividedMode:[(CompactWidthMonthViewController *)self dividedListMode] animated:v3];
    v5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
    v6 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
    v7 = [(InfiniteScrollViewController *)self subviewForDate:v6];
    [(CompactWidthMonthViewController *)self _setSelectedDay:v5 onMonthWeekView:v7 animated:v3];

    v8 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v9 = [v8 calendarDateForEndOfMonth];

    v10 = [(InfiniteScrollViewController *)self subviewForDate:v9];
    if (v10)
    {
      v11 = [(CompactWidthMonthViewController *)self view];
      v12 = [v11 window];

      if (v12 || (-[CompactWidthMonthViewController navigationController](self, "navigationController"), v13 = objc_claimAutoreleasedReturnValue(), [v13 view], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "window"), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, !v15))
      {
        [(CompactWidthMonthViewController *)self _updateListViewFrame];
      }

      else
      {
        EKUIPushFallbackSizingContextWithViewHierarchy();
        [(CompactWidthMonthViewController *)self _updateListViewFrame];
        EKUIPopFallbackSizingContextWithViewHierarchy();
      }
    }
  }

  if ([(MainViewController *)self updateModelPreferredReloadRangeAndReturnWhetherLoadingNeeded])
  {
    BYTE2(self->_selectedMonthWeekView) = 1;
  }

  BYTE4(self->_selectedMonthWeekView) = 0;
  if (BYTE2(self->_selectedMonthWeekView) == 1 || (BYTE3(self->_selectedMonthWeekView) & 1) != 0 || BYTE6(self->_selectedMonthWeekView) == 1)
  {
    BYTE2(self->_selectedMonthWeekView) = 0;
    BYTE3(self->_selectedMonthWeekView) = 0;
    BYTE6(self->_selectedMonthWeekView) = 0;
    [(CompactWidthMonthViewController *)self _loadEventsForAllSubviews];
  }

  [(CompactWidthMonthViewController *)self _registerGestureRecognizers];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v4 viewWillDisappear:a3];
  [(CompactWidthMonthViewController *)self _unregisterGestureRecognizers];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(CompactWidthMonthViewController *)self _removeMonthHighlight];
  v5 = *&self->_needToReloadEventsOnAppear;
  *&self->_needToReloadEventsOnAppear = 0;

  v6.receiver = self;
  v6.super_class = CompactWidthMonthViewController;
  [(CompactWidthMonthViewController *)&v6 viewDidDisappear:v3];
}

- (void)_setupListViewController
{
  if (!*(&self->_pressedMonthView + 1))
  {
    v3 = objc_alloc_init(UIView);
    v4 = *(&self->_listViewController + 1);
    *(&self->_listViewController + 1) = v3;

    [*(&self->_listViewController + 1) setAutoresizingMask:10];
    v5 = [(CompactWidthMonthViewController *)self view];
    [v5 bounds];
    [*(&self->_listViewController + 1) setFrame:?];

    v6 = +[UIColor systemBackgroundColor];
    [*(&self->_listViewController + 1) setBackgroundColor:v6];

    v7 = [(CompactWidthMonthViewController *)self view];
    [v7 addSubview:*(&self->_listViewController + 1)];

    v8 = [[CompactMonthListViewController alloc] initWithModel:self->super.super.super.super._model];
    v9 = *(&self->_pressedMonthView + 1);
    *(&self->_pressedMonthView + 1) = v8;

    [*(&self->_pressedMonthView + 1) setCompactMonthListViewDelegate:self];
    [(CompactWidthMonthViewController *)self addChildViewController:*(&self->_pressedMonthView + 1)];
    v10 = [*(&self->_pressedMonthView + 1) view];
    [v10 setAutoresizingMask:18];

    [*(&self->_listViewController + 1) bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [*(&self->_pressedMonthView + 1) view];
    [v19 setFrame:{v12, v14, v16, v18}];

    [*(&self->_pressedMonthView + 1) setDisabled:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") ^ 1}];
    v20 = *(&self->_listViewController + 1);
    v21 = [*(&self->_pressedMonthView + 1) view];
    [v20 addSubview:v21];

    v22 = [(CompactWidthMonthViewController *)self view];
    [v22 frame];
    v24 = v23;
    v26 = v25;

    v27 = [(CompactWidthMonthViewController *)self view];
    [v27 bounds];
    Height = CGRectGetHeight(v36);

    [*(&self->_listViewController + 1) setFrame:{v24, Height, v26, 320.0}];
    [*(&self->_listViewController + 1) setHidden:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") ^ 1}];
    [*(&self->_listViewController + 1) setUserInteractionEnabled:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    v29 = objc_alloc_init(UIView);
    v30 = +[UIColor separatorColor];
    [(UIView *)v29 setBackgroundColor:v30];

    [(UIView *)v29 setAutoresizingMask:34];
    [*(&self->_listViewController + 1) frame];
    v32 = v31;
    EKUIScaleFactor();
    CalRoundToScreenScale();
    [(UIView *)v29 setFrame:0.0, 0.0, v32, v33];
    [*(&self->_listViewController + 1) addSubview:v29];
    v34 = *(&self->_listViewContainer + 1);
    *(&self->_listViewContainer + 1) = v29;
  }
}

- (double)monthWeekScale
{
  if (![(CompactWidthMonthViewController *)self dividedListMode]|| (result = 1.0, HIBYTE(self->_selectedMonthWeekView) == 1))
  {
    result = *&self->_needsUpdateOnModelUnlock;
    if (result <= 0.0)
    {
      v4 = objc_opt_class();

      [v4 monthWeekScale];
    }
  }

  return result;
}

+ (double)scaleForSize:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 1.0;
  }

  if (a3 == 2)
  {
    +[CompactMonthWeekView narrowScale];
  }

  else
  {
    [CompactMonthWeekView eventScaleForNumberOfRows:?];
  }

  return result;
}

+ (double)monthWeekScale
{
  v3 = +[CUIKPreferences sharedPreferences];
  v4 = [v3 monthViewScaleSize];

  [a1 scaleForSize:v4];
  return result;
}

+ (void)setMonthWeekScaleSize:(unint64_t)a3
{
  v4 = +[CUIKPreferences sharedPreferences];
  [v4 setMonthViewScaleSize:a3];

  if (a3 >= 3)
  {
    v5 = +[CUIKPreferences sharedPreferences];
    [v5 setMonthViewEventScaleSize:a3];
  }
}

- (void)relayoutPinchView
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(&self->_pinchScrollView + 1);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [*(&self->_lastSnapScale + 1) bounds];
        [v9 sizeThatFits:{v10, v11}];
        v13 = v12;
        [v9 frame];
        [v9 setFrame:?];
        v7 = v7 + v13;
        [v9 layoutSubviews];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14 = *(&self->_lastSnapScale + 1);
  [v14 contentSize];
  [v14 setContentSize:?];
}

- (void)prepareToChangeScaleFromPinch:(BOOL)a3
{
  v3 = a3;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v5 setHidden:1];

  [(InfiniteScrollViewController *)self setSuppressViewAdjustments:1];
  BYTE3(self->_viewsToMove) = 1;
  v6 = [(CompactWidthMonthViewController *)self view];
  [v6 addSubview:*(&self->_lastSnapScale + 1)];

  v7 = [(CompactWidthMonthViewController *)self view];
  [v7 frame];
  [*(&self->_lastSnapScale + 1) setFrame:?];

  v8 = *(&self->_pinchScrollView + 1);
  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = *(&self->_pinchScrollView + 1);
    *(&self->_pinchScrollView + 1) = v9;

    v8 = *(&self->_pinchScrollView + 1);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v62 + 1) + 8 * i) removeFromSuperview];
      }

      v13 = [v11 countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v13);
  }

  [*(&self->_pinchScrollView + 1) removeAllObjects];
  v16 = [(InfiniteScrollViewController *)self allViews];
  v17 = [v16 firstObject];

  v18 = [(CompactWidthMonthViewController *)self view];
  [v17 frame];
  v20 = v19;
  v22 = v21;
  v23 = [(InfiniteScrollViewController *)self scrollView];
  [v18 convertPoint:v23 fromView:{v20, v22}];
  v25 = v24;
  v27 = v26;

  v28 = -v27;
  v29 = [v17 calendarDate];
  v30 = [(InfiniteScrollViewController *)self allViews];
  v31 = [v30 lastObject];
  v32 = [v31 calendarDate];

  v33 = [(InfiniteScrollViewController *)self allViews];
  v34 = [NSMutableArray arrayWithArray:v33];

  [(CompactWidthMonthViewController *)self setSuspendEventLoading:1];
  v57 = v17;
  if (v3)
  {
    v35 = 0;
  }

  else
  {
    v35 = [v34 count];
    if (v35 > 8)
    {
      v49 = v32;
      goto LABEL_20;
    }
  }

  v36 = v35 - 9;
  do
  {
    if (v3)
    {
      v37 = [(CompactWidthMonthViewController *)self newTopViewAboveViewWithCalendarDate:v29];
      [v34 insertObject:v37 atIndex:0];
      v38 = [v37 calendarDate];

      [*(&self->_lastSnapScale + 1) bounds];
      [v37 sizeThatFits:{v39, v40}];
      v42 = v41;
      [v37 setFrame:{0.0, 0.0, v43, v41}];
      v28 = v28 + v42;

      v29 = v38;
    }

    v44 = [(CompactWidthMonthViewController *)self newBottomViewBelowViewWithCalendarDate:v32];
    [v34 addObject:v44];
    [*(&self->_lastSnapScale + 1) bounds];
    [v44 sizeThatFits:{v45, v46}];
    [v44 setFrame:{0.0, 0.0, v47, v48}];
    v49 = [v44 calendarDate];

    v32 = v49;
  }

  while (!__CFADD__(v36++, 1));
LABEL_20:
  [(CompactWidthMonthViewController *)self setSuspendEventLoading:0];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = v34;
  v52 = [v51 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v59;
    do
    {
      for (j = 0; j != v53; j = j + 1)
      {
        if (*v59 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v58 + 1) + 8 * j);
        [v56 setDrawWithViews:1];
        [*(&self->_lastSnapScale + 1) addSubview:v56];
        [*(&self->_pinchScrollView + 1) addObject:v56];
        [v56 setHidden:0];
      }

      v53 = [v51 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v53);
  }

  [(CompactWidthMonthViewController *)self relayoutPinchView];
  [*(&self->_lastSnapScale + 1) setContentOffset:{v25, v28}];
}

- (void)applySizeToPinchView:(unint64_t)a3 compressed:(BOOL)a4 snapToBoundary:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 adjustedContentInset];
  v11 = v10;

  [*(&self->_lastSnapScale + 1) contentOffset];
  v13 = v12;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = *(&self->_pinchScrollView + 1);
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v15)
  {
    v43 = a3;
    v16 = v5;
    v17 = v11 + v13;
    v18 = *v49;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        [v21 frame];
        v19 = v19 + v22;
        if (v19 > v17)
        {
          v15 = v21;
          [v15 frame];
          v25 = v17 - (v19 - v24);
          [v15 frame];
          v23 = v25 / v26;
          goto LABEL_11;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v23 = 0.0;
LABEL_11:
    v5 = v16;
    a3 = v43;
  }

  else
  {
    v23 = 0.0;
  }

  [objc_opt_class() setMonthWeekScaleSize:a3];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = *(&self->_pinchScrollView + 1);
  v28 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    v31 = 0.0;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v44 + 1) + 8 * j);
        [v33 setCompressedVerticalMode:v6];
        [*(&self->_lastSnapScale + 1) bounds];
        [v33 sizeThatFits:{v34, v35}];
        v37 = v36;
        [v33 frame];
        [v33 setFrame:?];
        v31 = v31 + v37;
      }

      v29 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v29);
  }

  v38 = *(&self->_lastSnapScale + 1);
  [v38 contentSize];
  [v38 setContentSize:?];
  if (v5)
  {
    v39 = 0.0;
    if ([v15 containsFirstDayOfMonth])
    {
      +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
      v39 = v40;
    }
  }

  else
  {
    [v15 frame];
    v39 = v23 * v41;
  }

  [v15 frame];
  [*(&self->_lastSnapScale + 1) setContentOffset:0 animated:{0.0, v39 + v42 - v11}];
}

- (void)finishChangeScale
{
  v3 = [*(&self->_lastSnapScale + 1) subviews];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v5 = [*(&self->_lastSnapScale + 1) subviews];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  *&self->_needsUpdateOnModelUnlock = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(&self->_pinchScrollView + 1);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 frame];
        v13 = [NSNumber numberWithDouble:v12];
        [v6 addObject:v13];

        v14 = [v11 calendarDate];
        [v4 addObject:v14];

        [v11 layoutSubviews];
        [v11 setDrawWithViews:0];
        [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  [(InfiniteScrollViewController *)self insertViews:*(&self->_pinchScrollView + 1)];
  v15 = [(InfiniteScrollViewController *)self scrollView];
  [v15 setHidden:0];

  [(InfiniteScrollViewController *)self resizeAllViews];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009335C;
  v17[3] = &unk_100210088;
  v17[4] = self;
  v16 = v6;
  v18 = v16;
  v19 = v20;
  [v4 enumerateObjectsUsingBlock:v17];
  [(InfiniteScrollViewController *)self setSuppressViewAdjustments:0];
  BYTE3(self->_viewsToMove) = 0;
  [*(&self->_lastSnapScale + 1) removeFromSuperview];
  [(InfiniteScrollViewController *)self adjustLoadedViewRange];
  [(CompactWidthMonthViewController *)self _resetSelectionForDividedListState:[(CompactWidthMonthViewController *)self dividedListMode]];

  _Block_object_dispose(v20, 8);
}

- (id)_paletteView
{
  v2 = [(CompactWidthMonthViewController *)self navigationController];
  v3 = [v2 paletteView];

  return v3;
}

- (void)_animateChangeToWeekSize:(unint64_t)a3 divided:(BOOL)a4
{
  v34 = a4;
  [CompactWidthMonthViewController scaleForSize:?];
  v6 = v5;
  v7 = +[CUIKPreferences sharedPreferences];
  +[CompactWidthMonthViewController scaleForSize:](CompactWidthMonthViewController, "scaleForSize:", [v7 monthViewScaleSize]);
  v9 = v8;

  [(CompactWidthMonthViewController *)self prepareToChangeScaleFromPinch:0];
  v10 = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [v10 setEnabled:0];

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100093B08;
  v54[3] = &unk_1002100B0;
  v57 = v58;
  v11 = objc_opt_new();
  v55 = v11;
  v56 = self;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100093BD8;
  v52[3] = &unk_1002100D8;
  v52[4] = self;
  v52[5] = a3;
  v53 = v34;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100093BEC;
  v49[3] = &unk_100210100;
  v51 = v58;
  v12 = objc_retainBlock(v54);
  v50 = v12;
  [UIView animateWithSpringDuration:65540 bounce:v52 initialSpringVelocity:v49 delay:0.25 options:0.0 animations:0.0 completion:0.0];
  if (v6 != v9)
  {
    [v11 addObjectsFromArray:*(&self->_pinchScrollView + 1)];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v13 = *(&self->_pinchScrollView + 1);
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v14)
    {
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v45 + 1) + 8 * i);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100093C0C;
          v41[3] = &unk_10020F9D0;
          v42 = v11;
          v43 = v17;
          v44 = v12;
          [v17 animateToScale:v41 fromScale:v6 completionBlock:v9];
        }

        v14 = [v13 countByEnumeratingWithState:&v45 objects:v60 count:16];
      }

      while (v14);
    }
  }

  if ([(CompactWidthMonthViewController *)self dividedListMode]!= v34)
  {
    v18 = [(CompactWidthMonthViewController *)self view];
    [v18 bringSubviewToFront:*(&self->_listViewController + 1)];

    if (v34)
    {
      [*(&self->_listViewController + 1) setHidden:0];
      [*(&self->_pressedMonthView + 1) setDisabled:0];
      v19 = [*(&self->_pressedMonthView + 1) view];
      [v19 setAlpha:1.0];

      [*(&self->_listViewContainer + 1) setAlpha:1.0];
      [*(&self->_listViewController + 1) frame];
      v21 = v20;
      v23 = v22;
      v24 = [(CompactWidthMonthViewController *)self view];
      [v24 frame];
      v26 = v25;

      [*(&self->_listViewController + 1) setFrame:{0.0, v26, v21, v23}];
    }

    else
    {
      [(CompactWidthMonthViewController *)self _resetSelectionForDividedListState:0];
    }

    [(CompactWidthMonthViewController *)self _updateDividedListTopLineForDividedMode:v34 animated:0];
    v27 = [(InfiniteScrollViewController *)self scrollView];
    v28 = v27;
    v29 = UIScrollViewDecelerationRateFast;
    if (!v34)
    {
      v29 = UIScrollViewDecelerationRateNormal;
    }

    [v27 setDecelerationRate:v29];

    v30 = [(MainViewController *)self model];
    [v30 setShowMonthAsDivided:v34];

    [(CompactWidthMonthViewController *)self setDividedListMode:v34];
    v31 = [(CompactWidthMonthViewController *)self _paletteView];
    [(CompactWidthMonthViewController *)self updatePalette:v31];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100093C54;
    v39[3] = &unk_10020EAD8;
    v40 = v34;
    v39[4] = self;
    v32 = objc_retainBlock(v39);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100093D4C;
    v36[3] = &unk_10020FCA8;
    v36[4] = self;
    v38 = v34;
    v37 = v12;
    v33 = objc_retainBlock(v36);
    [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v32 options:v33 animations:0.0 completion:0.0];
  }

  _Block_object_dispose(v58, 8);
}

- (void)animateToMonthWeekSize:(unint64_t)a3 divided:(BOOL)a4
{
  v4 = a4;
  v7 = +[CUIKPreferences sharedPreferences];
  v8 = [v7 monthViewScaleSize];

  if (v8 != a3 || [(CompactWidthMonthViewController *)self dividedListMode]!= v4)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = *(&self->_pinchScrollView + 1);
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v40 + 1) + 8 * v13) animating])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

LABEL_24:

      return;
    }

LABEL_11:

    v14 = [(InfiniteScrollViewController *)self scrollView];
    if (([v14 isScrollAnimating] & 1) == 0)
    {
      v15 = [(InfiniteScrollViewController *)self scrollView];
      if (![v15 isDecelerating])
      {
        v31 = [(InfiniteScrollViewController *)self scrollView];
        v32 = [v31 isDragging];

        if ((v32 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

LABEL_15:
    v16 = [(InfiniteScrollViewController *)self scrollView];
    [v16 contentOffset];
    v18 = v17;
    v20 = v19;

    v21 = [(InfiniteScrollViewController *)self scrollView];
    [v21 stopScrollingAndZooming];

    v22 = [(InfiniteScrollViewController *)self scrollView];
    [v22 setContentOffset:0 animated:{v18, v20}];

LABEL_16:
    if ([(CompactWidthMonthViewController *)self dividedListMode]== v4)
    {
      [(CompactWidthMonthViewController *)self _animateChangeToWeekSize:a3 divided:v4];
      return;
    }

    HIBYTE(self->_selectedMonthWeekView) = 1;
    [(CompactWidthMonthViewController *)self _setupListViewController];
    v23 = CUIKTodayDate();
    v24 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v25 = [v24 timeZone];
    v9 = [EKCalendarDate calendarDateWithDate:v23 timeZone:v25];

    v26 = [(InfiniteScrollViewController *)self subviewForDate:v9];
    [v26 setDisableTodayPulse:1];
    if (v4)
    {
      v27 = [(CompactWidthMonthViewController *)self dateForTopVisibleMonthOnScreen];
      v28 = [v27 calendarDateForMonth];
      v29 = [v28 date];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100094204;
      v33[3] = &unk_100210128;
      v34 = v26;
      v35 = v27;
      v36 = self;
      v37 = v9;
      v38 = a3;
      v39 = v4;
      v30 = v27;
      [(CompactWidthMonthViewController *)self showDate:v29 animated:1 completionBlock:v33];
    }

    else
    {
      [v26 setDisableTodayPulse:0];
      [(CompactWidthMonthViewController *)self _animateChangeToWeekSize:a3 divided:0];
    }

    goto LABEL_24;
  }
}

- (void)_monthScrollerPinched:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) <= 2)
  {
    BYTE6(self->_selectedMonthWeekView) = 0;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v6 = *(&self->_pinchScrollView + 1);
    v7 = [v6 countByEnumeratingWithState:&v117 objects:v123 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v118;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v118 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v117 + 1) + 8 * i) finishAnimations];
        }

        v8 = [v6 countByEnumeratingWithState:&v117 objects:v123 count:16];
      }

      while (v8);
    }

    v11 = [*(&self->_pinchScrollView + 1) firstObject];
    [(CompactWidthMonthViewController *)self monthWeekScale];
    v12 = [v11 nearestSnapBoundaryForScale:?];
    *&self->_needsUpdateOnModelUnlock = 0;
    v13 = [(CompactWidthMonthViewController *)self pinchRecognizer];
    [v13 setEnabled:0];

    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_100094BD8;
    v116[3] = &unk_10020EE00;
    v116[4] = self;
    v116[5] = v12;
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_100094BEC;
    v115[3] = &unk_10020EB98;
    v115[4] = self;
    [UIView animateWithSpringDuration:65540 bounce:v116 initialSpringVelocity:v115 delay:0.25 options:0.0 animations:0.0 completion:0.0];
  }

  v14 = [v4 numberOfTouches];
  if ((v14 | 2) == 2)
  {
    v15 = v14;
    v16 = (&self->_lastPinchDistance.y + 1);
    v17 = *(&self->_lastPinchDistance.y + 1);
    v18 = *(&self->_lastPinchPoint.x + 1);
    if (v14)
    {
      v19 = [(CompactWidthMonthViewController *)self view];
      [v4 locationOfTouch:0 inView:v19];
      v21 = v20;

      v22 = [(CompactWidthMonthViewController *)self view];
      [v4 locationOfTouch:1 inView:v22];
      v24 = v23;

      v25 = [(InfiniteScrollViewController *)self scrollView];
      [v25 safeAreaInsets];
      *v16 = 0.0;
      *(&self->_lastPinchPoint.x + 1) = (v21 + v24) * 0.5 - v26;
    }

    if (v5 != 2)
    {
      if (v5 == 1)
      {
        BYTE6(self->_selectedMonthWeekView) = 1;
        v27 = [(InfiniteScrollViewController *)self scrollView];
        v28 = [v27 panGestureRecognizer];
        [v28 setEnabled:0];

        v29 = [(InfiniteScrollViewController *)self scrollView];
        v30 = [v29 panGestureRecognizer];
        [v30 setEnabled:1];

        if (v15)
        {
          v31 = [(CompactWidthMonthViewController *)self view];
          pinchDistanceForGestureRecognizer();
          *(&self->_pinchingMonthWeekScale + 1) = v32;
          *(&self->_lastPinchDistance.x + 1) = v33;
        }

        [(CompactWidthMonthViewController *)self prepareToChangeScaleFromPinch:1];
        *(&self->_lastPinchPoint.y + 1) = *(&self->_lastPinchDistance.x + 1);
        [(CompactWidthMonthViewController *)self monthWeekScale];
        *(&self->_originalPinchDistance + 1) = v34;
        *&self->_needsUpdateOnModelUnlock = v34;
      }

      goto LABEL_74;
    }

    v35 = 441;
    v36 = *&self->_needsUpdateOnModelUnlock;
    if (v15)
    {
      v37 = [(CompactWidthMonthViewController *)self view];
      pinchDistanceForGestureRecognizer();
      v39 = v38;

      v40 = *(&self->_originalPinchDistance + 1) * (v39 / *(&self->_lastPinchPoint.y + 1));
    }

    else
    {
      v41 = *(&self->_originalPinchDistance + 1);
      [v4 scale];
      v40 = v41 * v42;
    }

    +[CompactMonthViewController minimumWeekScale];
    if (v40 < v43)
    {
      +[CompactMonthViewController minimumWeekScale];
      v40 = v44;
    }

    +[CompactMonthViewController maximumWeekScale];
    if (v40 > v45)
    {
      +[CompactMonthViewController maximumWeekScale];
      v40 = v46;
    }

    v47 = v40 / v36;
    if (v40 / v36 == 1.0)
    {
      +[CompactMonthViewController minimumWeekScale];
      +[CompactMonthViewController maximumWeekScale];
      v47 = 1.0;
    }

    v48 = *(&self->_lastSnapScale + 1);
    if (v15)
    {
      v49 = [(CompactWidthMonthViewController *)self view];
      [v48 convertPoint:v49 fromView:{v17, v18}];
      v51 = v50;
      v53 = v52;
    }

    else
    {
      [v4 locationInView:v48];
      v51 = v54;
      v53 = v55;
    }

    v106 = v48;
    if (v40 / v36 == 1.0)
    {
      goto LABEL_59;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v56 = *(&self->_pinchScrollView + 1);
    v57 = [v56 countByEnumeratingWithState:&v111 objects:v122 count:16];
    if (v57)
    {
      v58 = v57;
      v101 = 441;
      v102 = (&self->_lastPinchDistance.y + 1);
      v103 = v15;
      v104 = self;
      v105 = v4;
      v59 = 0;
      v60 = 0;
      v61 = *v112;
      do
      {
        for (j = 0; j != v58; j = j + 1)
        {
          if (*v112 != v61)
          {
            objc_enumerationMutation(v56);
          }

          v63 = *(*(&v111 + 1) + 8 * j);
          v64 = [v63 hideDaySummariesWithScale:{v36, v101}];
          v65 = [v63 hideDaySummariesWithScale:v40];
          if (v64)
          {
            v59 |= v65 ^ 1;
          }

          else
          {
            v59 |= v65;
          }

          if (v64)
          {
            v60 |= v65 ^ 1;
          }

          else
          {
            v60 |= v65;
          }

          v66 = [v63 isNarrowWithScale:v36];
          v67 = [v63 isNarrowWithScale:v40];
          if (!(v66 & 1 | ((v67 & 1) == 0)))
          {
            v60 |= v65;
          }

          if (v66 && (v67 & 1) == 0 && ((v65 ^ 1) & 1) == 0)
          {
            [v63 finishAnimations];
            v60 = 1;
          }

          if (([v63 animating] | v59))
          {
            [v63 animateToScale:0 fromScale:v40 completionBlock:v36];
          }

          v68 = [v63 nearestSnapBoundaryForScale:v40];
        }

        v69 = v68;
        v58 = [v56 countByEnumeratingWithState:&v111 objects:v122 count:16];
      }

      while (v58);

      v16 = v102;
      if (v60)
      {
        v70 = +[CUIKPreferences sharedPreferences];
        [v70 setMonthViewScaleSize:v69];

        v71 = objc_opt_new();
        [v71 impactOccurredWithIntensity:2.0];
        self = v104;
        v4 = v105;
        v15 = v103;
        v35 = v101;
LABEL_58:
        *(&self->_originalPinchScale + 1) = v69;
        *(&self->super.super.super.super.super.super.super.isa + v35) = v40;

LABEL_59:
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v73 = *(&self->_pinchScrollView + 1);
        v74 = [v73 countByEnumeratingWithState:&v107 objects:v121 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v108;
          v77 = 0.0;
          do
          {
            for (k = 0; k != v75; k = k + 1)
            {
              if (*v108 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v79 = *(*(&v107 + 1) + 8 * k);
              [*(&self->_lastSnapScale + 1) bounds];
              [v79 sizeThatFits:{v80, v81}];
              v83 = v82;
              [v79 frame];
              [v79 setFrame:?];
              v77 = v77 + v83;
              [v79 layoutSubviews];
            }

            v75 = [v73 countByEnumeratingWithState:&v107 objects:v121 count:16];
          }

          while (v75);
        }

        v84 = *(&self->_lastSnapScale + 1);
        [v84 contentSize];
        [v84 setContentSize:?];
        [*(&self->_lastSnapScale + 1) contentOffset];
        v86 = v85;
        v88 = v87;
        v89 = v47 * v53;
        if (v15)
        {
          v90 = [(CompactWidthMonthViewController *)self view];
          v91 = v106;
          [v90 convertPoint:v106 fromView:{v51, v89}];
          v93 = v92;

          v94 = v93 - v16[1];
        }

        else
        {
          v91 = v106;
          [v4 locationInView:v106];
          v94 = v89 - v95;
        }

        v96 = v88 + v94;
        [*(&self->_lastSnapScale + 1) contentSize];
        v98 = v97;
        [*(&self->_lastSnapScale + 1) frame];
        v100 = 0.0;
        if (v96 >= 0.0)
        {
          v100 = v96;
        }

        if (v100 >= v98 - v99)
        {
          v100 = v98 - v99;
        }

        [*(&self->_lastSnapScale + 1) setContentOffset:0 animated:{v86, v100}];

        goto LABEL_74;
      }

      self = v104;
      v4 = v105;
      v15 = v103;
      v35 = v101;
    }

    else
    {

      v69 = 0;
    }

    v72 = objc_opt_new();
    v71 = v72;
    if (v69 != *(&self->_originalPinchScale + 1))
    {
      [v72 impactOccurredWithIntensity:0.0];
    }

    goto LABEL_58;
  }

LABEL_74:
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CompactWidthMonthViewController;
  v7 = a4;
  [(InfiniteScrollViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100094D24;
  v8[3] = &unk_10020F240;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (id)createInitialViewForDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([v4 day] != 1)
  {
    v5 = [v4 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  }

  v6 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v6)
  {
    v7 = v6;
    [v6 setCompressedVerticalMode:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    [v7 setCalendarDate:v5];
  }

  else
  {
    v8 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "monthWeekViewClass"))];
  }

  [v7 setWeekDelegate:self];
  if ([(CompactWidthMonthViewController *)self dividedListMode]&& !*(&self->_listViewContainerTopLine + 1))
  {
    v9 = [v7 calendarDate];
    [v9 absoluteTime];
    v11 = v10;
    v12 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v12 absoluteTime];
    if (v11 <= v13)
    {
      v14 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [v14 absoluteTime];
      v16 = v15;
      v17 = [v7 endCalendarDate];
      [v17 absoluteTime];
      v19 = v18;

      if (v16 > v19)
      {
        goto LABEL_13;
      }

      v9 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:v9 onMonthWeekView:v7 animated:0];
    }

    else
    {
    }
  }

LABEL_13:
  [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v7];
  v20 = +[CUIKPreferences sharedPreferences];
  [v7 setShowWeekNumber:{objc_msgSend(v20, "showWeekNumbers")}];

  return v7;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)a3
{
  v4 = [(MonthViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:a3];
  v5 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v5)
  {
    v6 = v5;
    [v5 setCompressedVerticalMode:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    [v6 setCalendarDate:v4];
  }

  else
  {
    v7 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "monthWeekViewClass"))];
  }

  [v6 setWeekDelegate:self];
  if (![(CompactWidthMonthViewController *)self suspendEventLoading])
  {
    [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v6];
  }

  if ([(CompactWidthMonthViewController *)self dividedListMode]&& !*(&self->_listViewContainerTopLine + 1))
  {
    v8 = [v6 calendarDate];
    [v8 absoluteTime];
    v10 = v9;
    v11 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v11 absoluteTime];
    if (v10 > v12)
    {

LABEL_12:
      goto LABEL_13;
    }

    v13 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v13 absoluteTime];
    v15 = v14;
    v16 = [v6 endCalendarDate];
    [v16 absoluteTime];
    v18 = v17;

    if (v15 <= v18)
    {
      v8 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:v8 onMonthWeekView:v6 animated:0];
      goto LABEL_12;
    }
  }

LABEL_13:
  v19 = +[CUIKPreferences sharedPreferences];
  [v6 setShowWeekNumber:{objc_msgSend(v19, "showWeekNumbers")}];

  return v6;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)a3
{
  v4 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:a3];
  v5 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v5)
  {
    v6 = v5;
    [v5 setCompressedVerticalMode:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    [v6 setCalendarDate:v4];
  }

  else
  {
    v7 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "monthWeekViewClass"))];
  }

  [v6 setWeekDelegate:self];
  if (![(CompactWidthMonthViewController *)self suspendEventLoading])
  {
    [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v6];
  }

  if ([(CompactWidthMonthViewController *)self dividedListMode]&& !*(&self->_listViewContainerTopLine + 1))
  {
    v8 = [v6 calendarDate];
    [v8 absoluteTime];
    v10 = v9;
    v11 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v11 absoluteTime];
    if (v10 < v12)
    {

LABEL_12:
      goto LABEL_13;
    }

    v13 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v13 absoluteTime];
    v15 = v14;
    v16 = [v6 endCalendarDate];
    [v16 absoluteTime];
    v18 = v17;

    if (v15 <= v18)
    {
      v8 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:v8 onMonthWeekView:v6 animated:0];
      goto LABEL_12;
    }
  }

LABEL_13:
  v19 = +[CUIKPreferences sharedPreferences];
  [v6 setShowWeekNumber:{objc_msgSend(v19, "showWeekNumbers")}];

  return v6;
}

- (void)didEndScrolling
{
  v9.receiver = self;
  v9.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v9 didEndScrolling];
  if (BYTE3(self->_selectedMonthWeekView) == 1 && (BYTE4(self->_selectedMonthWeekView) & 1) == 0)
  {
    BYTE4(self->_selectedMonthWeekView) = 1;
    v3 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000955F0;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_after(v3, &_dispatch_main_q, block);
  }

  if ([(CompactWidthMonthViewController *)self dividedListMode]&& [(InfiniteScrollViewController *)self viewIsVisible])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100095628;
    v7[3] = &unk_10020EB00;
    v7[4] = self;
    [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v7 options:0 animations:0.0 completion:0.0];
    v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v5 = [(InfiniteScrollViewController *)self subviewForDate:v4];

    if (v5 != *(&self->_listViewContainerTopLine + 1))
    {
      v6 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:v6 onMonthWeekView:v5 animated:1];
    }
  }

  else if ([(CompactWidthMonthViewController *)self dividedListMode]&& ![(InfiniteScrollViewController *)self viewIsVisible])
  {
    BYTE5(self->_selectedMonthWeekView) = 1;
  }
}

- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4
{
  y = a3.y;
  x = a3.x;
  if (![(CompactWidthMonthViewController *)self dividedListMode])
  {
    v77.receiver = self;
    v77.super_class = CompactWidthMonthViewController;
    [(MonthViewController *)&v77 willEndDraggingWithVelocity:a4 targetContentOffset:x, y];
    return;
  }

  v8 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v9 = -y;
  if (y >= 0.0)
  {
    v9 = y;
  }

  if (v9 <= 0.3)
  {
    v34 = [(InfiniteScrollViewController *)self scrollView];
    [v34 contentOffset];
    v36 = v35;
    v38 = v37;

    v39 = [(InfiniteScrollViewController *)self scrollView];
    [v39 frame];
    v41 = v40;

    v42 = [(InfiniteScrollViewController *)self scrollView];
    [v42 safeAreaInsets];
    v44 = v43;
    v45 = [(InfiniteScrollViewController *)self scrollView];
    [v45 safeAreaInsets];
    v47 = v41 - (v44 + v46);

    [*(&self->_listViewController + 1) bounds];
    v75 = 0;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v75 date:v36, v38 + (v47 - CGRectGetHeight(v78)) * 0.5];
    v49 = v48;
    v51 = v50;
    v33 = v75;
    a4->x = v49;
    a4->y = v51;
    v10 = v8;
  }

  else
  {
    v10 = *(&self->_listViewContainerTopLine + 1);
    if (!v10)
    {
      v10 = [(InfiniteScrollViewController *)self firstView];
    }

    v11 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v12 = v11;
    if (y > 0.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    v14 = [v11 calendarDateByAddingMonths:v13];
    v15 = [v14 calendarDateForMonth];

    v16 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v17 = [v10 calendarDate];
    v18 = [v17 date];
    v19 = [v15 date];
    v20 = [v16 components:0x2000 fromDate:v18 toDate:v19 options:0];

    [v10 frame];
    v22 = v21;
    [v10 frame];
    v24 = v23;
    v25 = y <= 0.0;
    v27 = v26 + [v20 weekOfYear] * v22;
    if (v25)
    {
      [objc_msgSend(objc_opt_class() "monthWeekViewClass")];
      v27 = v27 - v28;
    }

    v76 = v15;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v76 date:v24, v27];
    v30 = v29;
    v32 = v31;
    v33 = v76;

    a4->x = v30;
    a4->y = v32;
  }

  v52 = [(InfiniteScrollViewController *)self scrollView];
  [v52 stopScrollingAndZooming];

  v73 = *a4;
  v74 = v73;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095BF0;
  block[3] = &unk_10020EDD8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v53 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v54 = [v53 month];
  if (v54 != [v33 month])
  {

LABEL_20:
    v58 = [(MonthViewController *)self adjustSelectedDateForNewMonth:v33];

    v59 = [(MainViewController *)self model];
    [v59 setSelectedDate:v58];

    if ([(InfiniteScrollViewController *)self viewIsVisible])
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100095C48;
      v71[3] = &unk_10020EB00;
      v71[4] = self;
      [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v71 options:0 animations:0.0 completion:0.0];
      v60 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      v61 = [(InfiniteScrollViewController *)self subviewForDate:v60];

      v62 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:v62 onMonthWeekView:v61 animated:1];
    }

    goto LABEL_22;
  }

  v55 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v56 = [v55 year];
  v57 = [v33 year];

  if (v56 != v57)
  {
    goto LABEL_20;
  }

  v58 = v33;
LABEL_22:
  v63 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v64 = [v63 calendarDateForMonth];
  v65 = [(InfiniteScrollViewController *)self subviewForDate:v64];

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100095C50;
  v69[3] = &unk_10020EB00;
  v70 = v65;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100095C5C;
  v67[3] = &unk_10020EB98;
  v68 = v70;
  v66 = v70;
  [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v69 options:v67 animations:0.0 completion:0.0];
}

- (void)didScroll
{
  v9.receiver = self;
  v9.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v9 didScroll];
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedOccurrence];
  v5 = [v4 startCalendarDate];

  v6 = [(CompactWidthMonthViewController *)self targetCalendarDate];
  v7 = v6;
  v8 = v5;
  if (v5 || (v8 = v6) != 0)
  {
    [(CompactWidthMonthViewController *)self _updateNavigationControllerBackButtonToDate:v8];
  }

  BYTE4(self->_selectedMonthWeekView) = 0;
}

- (id)targetCalendarDate
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [(InfiniteScrollViewController *)self scrollView];
  [v8 frame];
  v10 = v9;

  v11 = [(InfiniteScrollViewController *)self scrollView];
  [v11 safeAreaInsets];
  v13 = v12;
  v14 = [(InfiniteScrollViewController *)self scrollView];
  [v14 safeAreaInsets];
  v16 = v10 - (v13 + v15);

  if ([(CompactWidthMonthViewController *)self dividedListMode]&& (HIBYTE(self->_selectedMonthWeekView) & 1) == 0)
  {
    [*(&self->_listViewController + 1) frame];
    if (v17 >= v16)
    {
      [(CompactWidthMonthViewController *)self _updateListViewFrame];
    }
  }

  [*(&self->_listViewController + 1) bounds];
  Height = CGRectGetHeight(v23);
  if ([(InfiniteScrollViewController *)self subviewCount]< 1)
  {
    v19 = 0;
  }

  else
  {
    v21 = 0;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v21 date:v5, v7 + (v16 - Height) * 0.5];
    v19 = v21;
  }

  return v19;
}

- (void)didLoadInitialViews
{
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {

    [(CompactWidthMonthViewController *)self _updateListViewFrame];
  }
}

- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (BYTE3(self->_viewsToMove) == 1)
  {
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CompactWidthMonthViewController;
    [(InfiniteScrollViewController *)&v14 showDate:v8 animated:v6 completionBlock:v9];
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v11 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      v12 = [(InfiniteScrollViewController *)self subviewForDate:v11];

      v13 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:v13 onMonthWeekView:v12 animated:v6];
    }
  }
}

- (id)cellFramesForWeekContainingDate:(id)a3
{
  model = self->super.super.super.super._model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model calendar];
  v7 = [v6 timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];
  v10 = [v9 dayNumberCellFrames];

  return v10;
}

- (void)contentSizeCategoryChanged
{
  v3.receiver = self;
  v3.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v3 contentSizeCategoryChanged];
  [(CompactWidthMonthViewController *)self _updateMonthTitleViewFont];
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    v12 = [(CompactWidthMonthViewController *)self dividedListMode];
    v13 = [v10 startCalendarDate];
    [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v13];

    if (!v12 || a5)
    {
      [(CompactWidthMonthViewController *)self _showDetailsForEvent:v10 animated:v8 showMode:a5 context:v11];
    }
  }

  else
  {
    v14 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No event given.  Will not show event through Month View.", v15, 2u);
    }
  }
}

- (void)updatePalette:(id)a3
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  v3 = a3;
  [(CompactMonthViewController *)&v4 updatePalette:v3];
  [v3 setWeekdayHeaderFillsHalfWidth:{0, v4.receiver, v4.super_class}];
}

- (void)_updateNavigationControllerBackButtonToDate:(id)a3
{
  v5 = a3;
  v4 = [(CompactWidthMonthViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateBackButtonToDate:v5];
  }
}

- (void)_updateNavigationControllerBackButton
{
  v3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  [(CompactWidthMonthViewController *)self _updateNavigationControllerBackButtonToDate:v3];
}

- (id)updateBackButtonWhileTopViewControllerToDate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (*&self->_needToReloadEventsOnAppear && (v7 = [v5 month], v7 == objc_msgSend(*&self->_needToReloadEventsOnAppear, "month")) && (v8 = objc_msgSend(v6, "year"), v8 == objc_msgSend(*&self->_needToReloadEventsOnAppear, "year")) && (v9 = objc_msgSend(v6, "day"), v9 == objc_msgSend(*&self->_needToReloadEventsOnAppear, "day")))
  {
    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_needToReloadEventsOnAppear, a3);
    v11 = [v6 date];
    v10 = CUIKStringForYear();
  }

  return v10;
}

- (id)bestDateForNewEvent
{
  if ([(CompactWidthMonthViewController *)self dividedListMode]&& ([(CUIKCalendarModel *)self->super.super.super.super._model selectedDate], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CompactWidthMonthViewController;
    v4 = [(MonthViewController *)&v6 bestDateForNewEvent];
  }

  return v4;
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  if ([(CompactWidthMonthViewController *)self isTodayVisible]&& ![(CompactWidthMonthViewController *)self dividedListMode])
  {
    v3 = CUIKTodayDate();
    v6 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v7 = [v6 timeZone];
    v4 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v7];
  }

  else
  {
    v3 = [(CompactWidthMonthViewController *)self bestDateForNewEvent];
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v3 = v3;
      v4 = v3;
    }

    else
    {
      v5 = [v3 calendarDateForMonth];
      v4 = [v5 calendarDateByAddingDays:2];
    }
  }

  return v4;
}

- (id)sceneTitle
{
  if ([(CompactWidthMonthViewController *)self dividedListMode]&& ([(CUIKCalendarModel *)self->super.super.super.super._model selectedDay], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
    v5 = [v4 date];
    v6 = CUIKStringForMonthYear();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CompactWidthMonthViewController;
    v6 = [(MonthViewController *)&v8 sceneTitle];
  }

  return v6;
}

- (CGRect)frameForWeekContainingDate:(id)a3
{
  model = self->super.super.super.super._model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model calendar];
  v7 = [v6 timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];
  v10 = v9;
  if (v9)
  {
    [v9 rectForCells];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(CompactWidthMonthViewController *)self view];
    [v19 convertRect:v10 fromView:{v12, v14, v16, v18}];
    x = v20;
    y = v22;
    width = v24;
    height = v26;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)frameForTodayHighlight
{
  v3 = CUIKTodayDate();
  v4 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v5 = [v4 timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v5];

  v7 = [(CompactWidthMonthViewController *)self monthWeekViewForCalendarDate:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CompactWidthMonthViewController *)self view];
    [v17 convertRect:v8 fromView:{v10, v12, v14, v16}];
    x = v18;
    y = v20;
    width = v22;
    height = v24;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
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

- (BOOL)_isTodayHighlightVisible
{
  v3 = CUIKTodayDate();
  v4 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v5 = [v4 timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v5];

  v7 = [(CompactWidthMonthViewController *)self monthWeekViewForCalendarDate:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isTodayHighlightVisible];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isTodayVisible
{
  v3 = [(CompactWidthMonthViewController *)self _isTodayCircleFrameFullyUnobstructed];
  if (v3)
  {

    LOBYTE(v3) = [(CompactWidthMonthViewController *)self _isTodayHighlightVisible];
  }

  return v3;
}

- (BOOL)_isTodayCircleFrameFullyUnobstructed
{
  [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
  v4 = v3;
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self frameOfListView];
    v6 = v4 - v5;
    v7 = [(InfiniteScrollViewController *)self scrollView];
    [v7 safeAreaInsets];
    v4 = v6 + v8;
  }

  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 safeAreaInsets];
  v11 = v10;
  v12 = [(InfiniteScrollViewController *)self scrollView];
  [v12 bounds];
  Width = CGRectGetWidth(v28);

  [(CompactWidthMonthViewController *)self frameForTodayHighlight];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = 0;
  v23 = v11;
  v24 = Width;
  v25 = v4;

  return CGRectContainsRect(*&v22, *&v15);
}

- (double)heightForSubviewWithCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() monthWeekViewClass];
  v6 = [(CompactWidthMonthViewController *)self dividedListMode];
  v7 = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowSize();
  v9 = v8;
  v11 = v10;
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [v5 heightForViewWithCalendarDate:v4 compressed:v6 windowSize:v9 scale:{v11, v12}];
  v14 = v13;

  return v14;
}

- (double)decelerationDistanceThresholdForPreferringMonthBoundary
{
  v3 = [(CompactWidthMonthViewController *)self dividedListMode];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [CompactMonthWeekView heightForViewThatContainsFirstDayOfMonth:0 compressed:v3 scale:?];
  return v4 * 3.5;
}

- (double)decelerationDistanceThresholdForDisplayingMonthBanner
{
  v3 = [(CompactWidthMonthViewController *)self dividedListMode];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [CompactMonthWeekView heightForViewThatContainsFirstDayOfMonth:0 compressed:v3 scale:?];
  return v4 * 5.5;
}

- (double)decelerationDistanceThresholdToStopShowingMonthBanner
{
  v3 = [(CompactWidthMonthViewController *)self dividedListMode];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [CompactMonthWeekView heightForViewThatContainsFirstDayOfMonth:0 compressed:v3 scale:?];
  return v4 * 1.1;
}

- (double)showDateVerticalOffsetForDate:(id)a3
{
  if ([a3 weekOfMonth] != 1)
  {
    return 0.0;
  }

  [(CompactWidthMonthViewController *)self _showDateVerticalOffset];
  return result;
}

- (double)_showDateVerticalOffset
{
  v2 = [objc_opt_class() monthWeekViewClass];
  [v2 headerHeight];
  v4 = v3;
  [v2 grayLineHeight];
  return v4 + v5 + -0.5;
}

- (id)pushedDayViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:a3];
  v6 = [DayViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  v8 = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:v8];

  v10 = [(CompactWidthMonthViewController *)self navigationController];
  [v10 pushViewController:v9 animated:v4];

  return v9;
}

- (id)pushedMultiDayViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:a3];
  v6 = [MultiDayWeekViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  v8 = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:v8];

  v10 = [(CompactWidthMonthViewController *)self navigationController];
  [v10 pushViewController:v9 animated:v4];

  return v9;
}

- (id)pushedListViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:a3];
  v6 = [ListViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  v8 = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:v8];

  v10 = [(CompactWidthMonthViewController *)self navigationController];
  [v10 pushViewController:v9 animated:v4];

  return v9;
}

- (int64_t)eventCountDisplayedForDate:(id)a3
{
  v4 = a3;
  v5 = [(InfiniteScrollViewController *)self subviewForDate:v4];
  v6 = [v4 day];

  v7 = [v5 calendarDate];
  v8 = [v7 day];

  if (!v5)
  {
    goto LABEL_7;
  }

  v9 = [v5 eventData];
  v10 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = v6 - v8;
  if (v11 < 0)
  {
    goto LABEL_6;
  }

  v12 = [v5 eventData];
  v13 = [v12 count];

  if (v11 >= v13)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v14 = [v5 eventData];
  v9 = [v14 objectAtIndex:v11];

  v10 = [v9 eventCount];
LABEL_6:

LABEL_8:
  return v10;
}

- (CGRect)frameOfListView
{
  v3 = *(&self->_listViewController + 1);
  if (v3)
  {
    if (BYTE5(self->_selectedMonthWeekView) == 1)
    {
      [(CompactWidthMonthViewController *)self _updateListViewFrame];
      v3 = *(&self->_listViewController + 1);
    }

    [v3 frame];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)dateForTopVisibleMonthOnScreen
{
  v3 = [(InfiniteScrollViewController *)self firstViewOnScreen];
  v4 = v3;
  if (v3 && ([v3 calendarDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 calendarDate];
  }

  else
  {
    v6 = [(InfiniteScrollViewController *)self dateOfCenterViewOnScreen];
  }

  v7 = v6;

  return v7;
}

- (id)dateForCurrentMonthOnScreen
{
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self dateForTopVisibleMonthOnScreen];
  }

  else
  {
    [(InfiniteScrollViewController *)self dateOfCenterViewOnScreen];
  }
  v3 = ;

  return v3;
}

- (void)forceUpdateListView
{
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _updateListViewFrame];
    v3 = *(&self->_pressedMonthView + 1);

    [v3 forceUpdate];
  }
}

- (void)_updateMonthTitleViewFont
{
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 addingSymbolicTraits:32770 options:2];
  v3 = [(MonthViewController *)self monthTitleView];
  v4 = [UIFont fontWithDescriptor:v5 size:0.0];
  [v3 setFont:v4];
}

- (void)_updateDateForDividedList
{
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    v3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v4 = [v3 calendarDateByAddingDays:1];
    v16 = [v4 calendarDateForDay];

    v5 = [v16 date];
    v6 = CUIKTodayDate();
    v7 = [v5 compare:v6];

    if (!v7)
    {
      v8 = CUIKTodayDate();
      v9 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
      v10 = [v9 timeZone];
      v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:v10];
      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
    }

    v12 = [(CompactWidthMonthViewController *)self view];
    v13 = [v12 window];

    if (v13)
    {
      v14 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      v15 = [v14 date];
      [(MonthViewController *)self showDate:v15 animated:0];

      [(CompactWidthMonthViewController *)self _updateListViewFrame];
    }
  }
}

- (void)significantTimeChangeOccurred
{
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:&stru_100210148];
  v3 = *(&self->_topLineView + 1);
  *(&self->_topLineView + 1) = 0;

  if ([(CUIKCalendarModel *)self->super.super.super.super._model currentlyLocked])
  {
    BYTE2(self->_viewsToMove) = 1;
  }

  else
  {

    [(CompactWidthMonthViewController *)self _updateDateForDividedList];
  }
}

- (void)_modelUnlocked
{
  if (BYTE2(self->_viewsToMove) == 1)
  {
    BYTE2(self->_viewsToMove) = 0;
    [(CompactWidthMonthViewController *)self _updateDateForDividedList];
  }
}

- (void)localeChanged
{
  v3.receiver = self;
  v3.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v3 localeChanged];
  [(CompactWidthMonthViewController *)self _updateViewsForTimeZoneChange];
}

- (void)calendarModelTimeZoneChanged
{
  [(CUIKCalendarModel *)self->super.super.super.super._model updateSelectedDateTimeZone];
  v3.receiver = self;
  v3.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v3 calendarModelTimeZoneChanged];
  [(CompactWidthMonthViewController *)self _updateViewsForTimeZoneChange];
}

- (void)_weekStartChanged:(id)a3
{
  v4 = *(&self->_topLineView + 1);
  *(&self->_topLineView + 1) = 0;

  v5 = [(MainViewController *)self model];
  v6 = [v5 selectedDate];
  [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:v6];

  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {

    [(CompactWidthMonthViewController *)self _updateListViewFrame];
  }
}

- (void)_updateViewsForTimeZoneChange
{
  v3 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v4 = [v3 timeZone];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100097788;
  v7[3] = &unk_10020ED60;
  v5 = v4;
  v8 = v5;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v7];
  v6 = *(&self->_topLineView + 1);
  *(&self->_topLineView + 1) = 0;

  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _updateListViewFrame];
  }
}

- (void)_registerGestureRecognizers
{
  [(CompactWidthMonthViewController *)self _unregisterGestureRecognizers];
  v3 = objc_alloc_init(UITapGestureRecognizer);
  [(CompactWidthMonthViewController *)self setDayCellsTapGestureRecognizer:v3];

  v4 = [(CompactWidthMonthViewController *)self dayCellsTapGestureRecognizer];
  [v4 addTarget:self action:"_tapGestureCallback:"];

  v5 = [(InfiniteScrollViewController *)self scrollView];
  v6 = [(CompactWidthMonthViewController *)self dayCellsTapGestureRecognizer];
  [v5 addGestureRecognizer:v6];

  v7 = objc_alloc_init(UILongPressGestureRecognizer);
  [(CompactWidthMonthViewController *)self setDayCellsScrubbingGestureRecognizer:v7];

  v8 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v8 addTarget:self action:"_scrubGestureCallback:"];

  v9 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v9 setDelegate:self];

  v10 = [(InfiniteScrollViewController *)self scrollView];
  v11 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v10 addGestureRecognizer:v11];

  [objc_opt_class() scrubbingMinimumPressDuration];
  v13 = v12;
  v14 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v14 setMinimumPressDuration:v13];

  v17 = [(InfiniteScrollViewController *)self scrollView];
  v15 = [v17 panGestureRecognizer];
  v16 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v15 requireGestureRecognizerToFail:v16];
}

- (void)_unregisterGestureRecognizers
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  v4 = [(CompactWidthMonthViewController *)self dayCellsTapGestureRecognizer];
  [v3 removeGestureRecognizer:v4];

  v5 = [(InfiniteScrollViewController *)self scrollView];
  v6 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v5 removeGestureRecognizer:v6];

  [(CompactWidthMonthViewController *)self setDayCellsTapGestureRecognizer:0];

  [(CompactWidthMonthViewController *)self setDayCellsScrubbingGestureRecognizer:0];
}

- (void)_tapGestureCallback:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100097BC0;
  v18 = sub_100097BD0;
  v19 = 0;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  v6 = [v5 subviews];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100097BD8;
  v11 = &unk_100210170;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];

  [(CompactWidthMonthViewController *)self monthView:v15[5] gestureBegan:v7, v8, v9, v10, v11];
  [(CompactWidthMonthViewController *)self monthView:v15[5] gestureEnded:v7];

  _Block_object_dispose(&v14, 8);
}

- (void)_scrubGestureCallback:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100097BC0;
  v19 = sub_100097BD0;
  v20 = 0;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  v6 = [v5 subviews];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100097E64;
  v12 = &unk_100210170;
  v7 = v4;
  v13 = v7;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:&v9];

  v8 = [v7 state];
  if (v8 > 3)
  {
    if ((v8 - 4) < 2)
    {
      [(CompactWidthMonthViewController *)self monthView:v16[5] gestureCancelled:v7];
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        [(CompactWidthMonthViewController *)self monthView:v16[5] gestureBegan:v7];
        break;
      case 2:
        [(CompactWidthMonthViewController *)self monthView:v16[5] gestureChanged:v7];
        break;
      case 3:
        [(CompactWidthMonthViewController *)self monthView:v16[5] gestureEnded:v7];
        break;
    }
  }

  _Block_object_dispose(&v15, 8);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];

  if (v5 != v4)
  {

    return 1;
  }

  v6 = [(CompactWidthMonthViewController *)self dividedListMode];

  return (v6 & 1) != 0;
}

- (id)_viewFromGesture:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100097BC0;
  v17 = sub_100097BD0;
  v18 = 0;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009813C;
  v12[3] = &unk_10020ECF8;
  v12[6] = v7;
  v12[7] = v9;
  v12[4] = self;
  v12[5] = &v13;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)monthView:(id)a3 gestureBegan:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") || (-[InfiniteScrollViewController scrollView](self, "scrollView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isDecelerating], v7, (v8 & 1) == 0))
  {
    v9 = [(CompactWidthMonthViewController *)self _dayInMonth:v16 fromGesture:v6];
    if (v9)
    {
      if (*(&self->_pressHighlight + 1) != v16 || [v9 compare:*(&self->_shouldSetSelectedDate + 1)])
      {
        [(CompactWidthMonthViewController *)self _createMonthHighlightForMonthView:v16 day:v9];
        [*(&self->_pressedDay + 1) setPressed:1];
      }

      if ([(CompactWidthMonthViewController *)self dividedListMode])
      {
        v10 = [(InfiniteScrollViewController *)self scrollView];
        [v10 setScrollEnabled:0];

        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v9];
        v11 = CUIKTodayDate();
        v12 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
        v13 = [v12 timeZone];
        v14 = [EKCalendarDate calendarDateWithDate:v11 timeZone:v13];
        v15 = [(InfiniteScrollViewController *)self subviewForDate:v14];

        if (v15)
        {
          [v15 haltTodayPulse];
        }
      }

      else
      {
        *(&self->super._applicationResuming + 1) = 1;
      }
    }
  }
}

- (void)monthView:(id)a3 gestureChanged:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (!-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") || (-[InfiniteScrollViewController scrollView](self, "scrollView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isDecelerating], v7, (v8 & 1) == 0))
  {
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v9 = [(CompactWidthMonthViewController *)self _viewFromGesture:v6];

      v10 = v9;
    }

    else
    {
      v10 = v14;
    }

    v14 = v10;
    v11 = [(CompactWidthMonthViewController *)self _dayInMonth:v10 fromGesture:v6];
    v12 = v14 == *(&self->_pressHighlight + 1) && [*(&self->_shouldSetSelectedDate + 1) compare:v11] == 0;
    if (v12 != [*(&self->_pressedDay + 1) isSelected])
    {
      [*(&self->_pressedDay + 1) setPressed:v12];
    }

    v13 = ![(CompactWidthMonthViewController *)self dividedListMode];
    if (!v11)
    {
      v13 = 1;
    }

    if (!(v12 | v13))
    {
      [(CompactWidthMonthViewController *)self _removeMonthHighlight];
      [(CompactWidthMonthViewController *)self _createMonthHighlightForMonthView:v14 day:v11];
      [*(&self->_pressedDay + 1) setPressed:1];
      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
    }
  }
}

- (void)monthView:(id)a3 gestureEnded:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") || (-[InfiniteScrollViewController scrollView](self, "scrollView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isDecelerating], v8, (v9 & 1) == 0))
  {
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v10 = [(CompactWidthMonthViewController *)self _viewFromGesture:v7];

      v6 = v10;
    }

    v11 = [(CompactWidthMonthViewController *)self _dayInMonth:v6 fromGesture:v7];
    v12 = [(CompactWidthMonthViewController *)self presentedViewController];
    if (v12)
    {
      v13 = [(CompactWidthMonthViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }

    if (v6 != *(&self->_pressHighlight + 1) || v11 == 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = ([v11 compare:*(&self->_shouldSetSelectedDate + 1)] == 0) & isKindOfClass;
    }

    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v17 = [(InfiniteScrollViewController *)self scrollView];
      [v17 setScrollEnabled:1];
    }

    [*(&self->_pressedDay + 1) setPressed:0];
    [*(&self->_pressedDay + 1) setHidden:1];
    if (v16)
    {
      v18 = [(CompactWidthMonthViewController *)self _eventInMonthWeekView:v6 fromGesture:v7];
      if (v18)
      {
        [(CompactWidthMonthViewController *)self _showDetailsForEvent:v18 animated:1 showMode:1 context:0];
      }

      else if ([(CompactWidthMonthViewController *)self dividedListMode])
      {
        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
        [(CompactWidthMonthViewController *)self _removeMonthHighlight];
        [(CompactWidthMonthViewController *)self _setSelectedDay:v11 onMonthWeekView:v6 animated:0];
      }

      else if (*(&self->super._applicationResuming + 1))
      {
        *(&self->super._applicationResuming + 1) = 0;
        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
        v20 = [objc_opt_class() shouldAnimateTransitionToDay];
        if ([(CUIKCalendarModel *)self->super.super.super.super._model showDayAsList])
        {
          v21 = [(CompactWidthMonthViewController *)self pushedListViewControllerWithDate:v11 animated:v20];
        }

        else
        {
          v22 = (_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl();
          v23 = [(CUIKCalendarModel *)self->super.super.super.super._model numDaysToShow];
          if (v22 || v23 != 2)
          {
            v25 = [(CompactWidthMonthViewController *)self pushedDayViewControllerWithDate:v11 animated:v20];
          }

          else
          {
            v24 = [(CompactWidthMonthViewController *)self pushedMultiDayViewControllerWithDate:v11 animated:v20];
          }
        }
      }
    }

    else
    {
      v19 = dispatch_time(0, 300000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100098978;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_after(v19, &_dispatch_main_q, block);
    }
  }
}

- (void)monthView:(id)a3 gestureCancelled:(id)a4
{
  if ([(CompactWidthMonthViewController *)self dividedListMode:a3])
  {
    v5 = [(InfiniteScrollViewController *)self scrollView];
    [v5 setScrollEnabled:1];
  }

  [(CompactWidthMonthViewController *)self _removeMonthHighlight];
}

- (id)_dayInMonth:(id)a3 fromGesture:(id)a4
{
  v5 = a3;
  [a4 locationInView:v5];
  v6 = [v5 dayForPoint:?];

  return v6;
}

- (id)_eventInMonthWeekView:(id)a3 fromGesture:(id)a4
{
  v5 = a3;
  [a4 locationInView:v5];
  v6 = [v5 occurrenceAtPoint:?];

  return v6;
}

- (void)_createMonthHighlightForMonthView:(id)a3 day:(id)a4
{
  v13 = a3;
  v7 = a4;
  [(CompactWidthMonthViewController *)self _removeMonthHighlight];
  objc_storeStrong((&self->_shouldSetSelectedDate + 1), a4);
  objc_storeStrong((&self->_pressHighlight + 1), a3);
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _setSelectedDay:v7 onMonthWeekView:v13 animated:0];
  }

  else
  {
    v8 = [[TappableDayNumber alloc] initWithSizeClass:1];
    v9 = *(&self->_pressedDay + 1);
    *(&self->_pressedDay + 1) = v8;

    v10 = +[UIColor systemBackgroundColor];
    [*(&self->_pressedDay + 1) setBackgroundColor:v10];

    [*(&self->_pressedDay + 1) setUserInteractionEnabled:0];
    [v13 adjustHighlight:*(&self->_pressedDay + 1) forDay:v7];
    v11 = [(InfiniteScrollViewController *)self scrollView];
    [*(&self->_pressedDay + 1) frame];
    [v11 convertRect:v13 fromView:?];
    [*(&self->_pressedDay + 1) setFrame:?];

    v12 = [(InfiniteScrollViewController *)self scrollView];
    [v12 addSubview:*(&self->_pressedDay + 1)];

    [*(&self->_pressedDay + 1) layoutSubviews];
  }
}

- (void)_removeMonthHighlight
{
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _setSelectedDay:0 onMonthWeekView:*(&self->_listViewContainerTopLine + 1) animated:0];
    v3 = *(&self->_pressedDay + 1);
  }

  else
  {
    v3 = *(&self->_pressedDay + 1);
    if (!v3)
    {
      return;
    }
  }

  v4 = v3;
  v5 = *(&self->_pressedDay + 1);
  *(&self->_pressedDay + 1) = 0;

  v6 = *(&self->_shouldSetSelectedDate + 1);
  *(&self->_shouldSetSelectedDate + 1) = 0;

  v7 = *(&self->_pressHighlight + 1);
  *(&self->_pressHighlight + 1) = 0;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100098D80;
  v11[3] = &unk_10020EB00;
  v12 = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100098D8C;
  v9[3] = &unk_10020EB98;
  v10 = v12;
  v8 = v12;
  [UIView animateWithDuration:v11 animations:v9 completion:0.2];
}

- (void)_selectedDateChangedExternally
{
  v3 = [(CompactWidthMonthViewController *)self presentedViewController];

  if (v3)
  {
    v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v6 = [(InfiniteScrollViewController *)self subviewForDate:v4];

    v5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [(CompactWidthMonthViewController *)self _setSelectedDay:v5 onMonthWeekView:v6 animated:0];
  }
}

- (void)_setSelectedDay:(id)a3 onMonthWeekView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = *(&self->_listViewContainerTopLine + 1);
  if (v9 != v8)
  {
    [v9 setSelectedDay:0 animated:0];
    v10 = *(&self->_listViewContainerTopLine + 1);
    *(&self->_listViewContainerTopLine + 1) = 0;
  }

  if (v11)
  {
    if (v8)
    {
      [v8 setSelectedDay:v11 animated:v5];
      objc_storeStrong((&self->_listViewContainerTopLine + 1), a4);
    }

    [(CompactWidthMonthViewController *)self _updateNavigationControllerBackButtonToDate:v11];
  }
}

- (void)_resetSelectionForDividedListState:(BOOL)a3
{
  v3 = a3;
  if ([(InfiniteScrollViewController *)self subviewCount])
  {
    v5 = CUIKTodayDate();
    v6 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v7 = [v6 timeZone];
    v19 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

    v8 = [(InfiniteScrollViewController *)self subviewForDate:v19];
    if (v3)
    {
      v9 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
      v10 = [(InfiniteScrollViewController *)self subviewForDate:v9];
      v11 = *(&self->_listViewContainerTopLine + 1);
      if (v11)
      {
        v12 = v11 == v10;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        [v11 setSelectedDay:0 animated:0];
        v13 = *(&self->_listViewContainerTopLine + 1);
        *(&self->_listViewContainerTopLine + 1) = 0;
      }

      v14 = [v19 month];
      if (v14 != [v9 month] || ((v15 = objc_msgSend(v19, "year"), v15 == objc_msgSend(v9, "year")) ? (v16 = v8 == 0) : (v16 = 1), v16))
      {
        [v8 setSelectedDay:0 animated:0];
        [v10 setSelectedDay:v9 animated:1];
        objc_storeStrong((&self->_listViewContainerTopLine + 1), v10);
      }

      else
      {
        objc_storeStrong((&self->_listViewContainerTopLine + 1), v8);
        [v8 setSelectedDay:v19 animated:1];
      }
    }

    else
    {
      v17 = *(&self->_listViewContainerTopLine + 1);
      if (v17)
      {
        [v17 setSelectedDay:0 animated:0];
        v18 = *(&self->_listViewContainerTopLine + 1);
        *(&self->_listViewContainerTopLine + 1) = 0;
      }

      if (v8)
      {
        [v8 setSelectedDay:v19 animated:0];
      }

      v9 = *(&self->_listViewContainerTopLine + 1);
      *(&self->_listViewContainerTopLine + 1) = 0;
    }
  }
}

- (void)_cachedOccurrencesChanged:(id)a3
{
  if ([(InfiniteScrollViewController *)self viewIsVisible])
  {

    [(CompactWidthMonthViewController *)self _loadEventsForAllSubviews];
  }

  else
  {
    BYTE2(self->_selectedMonthWeekView) = 1;
  }
}

- (void)_occurrencesChanged:(id)a3
{
  v8 = a3;
  if ([(InfiniteScrollViewController *)self viewIsVisible])
  {
    v4 = [v8 userInfo];
    v5 = [v4 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

    v6 = [v8 userInfo];
    v7 = [v6 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

    [(CompactWidthMonthViewController *)self _loadEventsForViewsInRangeStartingAt:v5 endingAt:v7];
  }

  else
  {
    BYTE2(self->_selectedMonthWeekView) = 1;
  }
}

- (void)_loadEventsForViewsInRangeStartingAt:(id)a3 endingAt:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (BYTE3(self->_selectedMonthWeekView) == 1)
  {
    if (![(CompactWidthMonthViewController *)self dividedListMode])
    {
      [(CompactWidthMonthViewController *)self _scrollViewVerticalVelocity];
      if (v8 < 0.0)
      {
        v8 = -v8;
      }

      if (v8 < 0.4)
      {
        BYTE3(self->_selectedMonthWeekView) = 0;
        [(CompactWidthMonthViewController *)self _loadEventsForAllSubviews];
      }
    }
  }

  else
  {
    [(CompactWidthMonthViewController *)self _scrollViewVerticalVelocity];
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 1.0)
    {
      BYTE3(self->_selectedMonthWeekView) = 1;
    }

    else if ((BYTE6(self->_selectedMonthWeekView) & 1) == 0)
    {
      [v6 timeIntervalSinceReferenceDate];
      v11 = v10;
      [v7 timeIntervalSinceReferenceDate];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000993C8;
      v13[3] = &unk_100210198;
      v13[5] = v12;
      v13[6] = v11;
      v13[4] = self;
      [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v13];
    }
  }
}

- (void)_loadEventDataForMonthWeekView:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarDate];
  v6 = [v4 endCalendarDate];
  v7 = *(&self->_pinchViews + 1);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100099574;
  v11[3] = &unk_10020F290;
  v11[4] = self;
  v12 = v5;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

- (void)_loadEventsForAllSubviews
{
  if ([(InfiniteScrollViewController *)self viewIsVisible])
  {
    if (BYTE1(self->_selectedMonthWeekView))
    {
      return;
    }

    [(CompactWidthMonthViewController *)self _scrollViewVerticalVelocity];
    if (v3 < 0.0)
    {
      v3 = -v3;
    }

    v4 = 315;
    if (v3 < 0.4)
    {
      BYTE3(self->_selectedMonthWeekView) = 0;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000998E0;
      v6[3] = &unk_10020ED60;
      v6[4] = self;
      [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v6];
      v5 = [(MainViewController *)self model];
      [v5 startNotificationMonitor];

      return;
    }
  }

  else
  {
    v4 = 314;
  }

  *(&self->super.super.super.super.super.super.super.isa + v4) = 1;
}

- (void)_dayIndexesForRangeStart:(id)a3 rangeEnd:(id)a4 outFirstDayIndex:(int64_t *)a5 outLastDayIndex:(int64_t *)a6
{
  v23 = a4;
  model = self->super.super.super.super._model;
  v11 = a3;
  v12 = [(CUIKCalendarModel *)model sectionForCachedOccurrencesOnDate:v11];
  v13 = [(CUIKCalendarModel *)self->super.super.super.super._model sectionForCachedOccurrencesOnDate:v23];
  v14 = [(CUIKCalendarModel *)self->super.super.super.super._model dateForCachedOccurrencesInSection:v12];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [(CUIKCalendarModel *)self->super.super.super.super._model dateForCachedOccurrencesInSection:v13];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  [v11 timeIntervalSinceReferenceDate];
  v21 = v20;

  if (v16 < v21)
  {
    ++v12;
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a5 = v12;
    goto LABEL_8;
  }

  [v23 timeIntervalSinceReferenceDate];
  if (v19 > v22)
  {
    --v13;
  }

  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a6)
  {
    *a6 = v13;
  }
}

- (id)_loadEventsForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (BYTE3(self->_selectedMonthWeekView) == 1)
  {
    if (![(CompactWidthMonthViewController *)self dividedListMode])
    {
      [(CompactWidthMonthViewController *)self _scrollViewVerticalVelocity];
      if (v8 < 0.0)
      {
        v8 = -v8;
      }

      if (v8 < 0.4)
      {
        BYTE3(self->_selectedMonthWeekView) = 0;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009A3E4;
        block[3] = &unk_10020EB00;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    goto LABEL_11;
  }

  [(CompactWidthMonthViewController *)self _scrollViewVerticalVelocity];
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= 1.0)
  {
    v10 = 0;
    BYTE3(self->_selectedMonthWeekView) = 1;
    goto LABEL_13;
  }

  if (BYTE6(self->_selectedMonthWeekView))
  {
LABEL_11:
    v10 = 0;
LABEL_13:
    v11 = v7;
    v12 = v6;
    goto LABEL_14;
  }

  v12 = [v6 calendarDateForDay];

  v11 = [v7 calendarDateForEndOfDay];

  v84 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v14 = [v84 timeZone];
  v88 = [v12 date];
  v85 = [v11 date];
  v97 = 0;
  v98 = 0;
  CalEventOccurrenceCacheCopyBoundsForTimeZone();
  if (v14)
  {
    CFRelease(v14);
  }

  v16 = v97;
  v15 = v98;
  v17 = [v11 differenceInDays:v12];
  if ((v17 & 0x8000000000000000) != 0)
  {
    v51 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      v102 = 2112;
      v103 = v11;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Loading events for week failed, End Date is before Start Date %@ %@", buf, 0x16u);
    }

    v10 = 0;
    v22 = v85;
    goto LABEL_55;
  }

  v18 = (v17 + 1);
  v19 = [NSMutableArray arrayWithCapacity:v17 + 1];
  do
  {
    v20 = [CompactMonthWeekDayData dayDataWithEventCount:0 dayType:0];
    [v19 addObject:v20];

    --v18;
  }

  while (v18);
  if ([v88 compare:v98] == 1 && objc_msgSend(v85, "compare:", v97) == -1)
  {
    if (([(CUIKCalendarModel *)self->super.super.super.super._model cachedOccurrencesAreLoaded]& 1) != 0)
    {
      if ((BYTE1(self->_selectedMonthWeekView) & 1) == 0)
      {
        *buf = 0;
        v93 = 0;
        [(CompactWidthMonthViewController *)self _dayIndexesForRangeStart:v88 rangeEnd:v85 outFirstDayIndex:buf outLastDayIndex:&v93];
        v52 = *buf;
        if (*buf <= v93)
        {
          v78 = v15;
          v80 = v11;
          v81 = v16;
          do
          {
            v53 = [(CUIKCalendarModel *)self->super.super.super.super._model numberOfCachedOccurrencesInSection:v52];
            if (v53 >= 1)
            {
              v54 = v53;
              v83 = [(CUIKCalendarModel *)self->super.super.super.super._model cachedSpecialDayDataForSection:v52];
              v87 = v52;
              v77 = [(CUIKCalendarModel *)self->super.super.super.super._model dateForCachedOccurrencesInSection:v52];
              v55 = [v84 components:30 fromDate:?];
              v56 = [v55 month];
              if (v56 == [v12 month])
              {
                v57 = [v55 day];
                v58 = v57 - [v12 day];
                if (v58 >= 0 && v58 < [v19 count])
                {
                  v75 = v58;
                  v76 = v55;
                  if (v83)
                  {
                    v59 = v83;
                    v60 = [v83 dayType];
                    v61 = v87;
                  }

                  else
                  {
                    v60 = 0;
                    v61 = v87;
                    v59 = 0;
                  }

                  v62 = [CompactMonthWeekDayData dayDataWithEventCount:v54 dayType:v60];
                  v63 = [v59 color];
                  [v62 setDayTypeBadgeColor:v63];

                  v64 = [v59 locale];
                  v74 = v62;
                  [v62 setDayTypeBadgeLocale:v64];

                  v65 = [(CUIKCalendarModel *)self->super.super.super.super._model cachedOccurrencesForSection:v61];
                  v66 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v65 count]);
                  v89 = 0u;
                  v90 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v67 = v65;
                  v68 = [v67 countByEnumeratingWithState:&v89 objects:v100 count:16];
                  if (v68)
                  {
                    v69 = v68;
                    v70 = *v90;
                    do
                    {
                      for (i = 0; i != v69; i = i + 1)
                      {
                        if (*v90 != v70)
                        {
                          objc_enumerationMutation(v67);
                        }

                        v72 = [EventSummaryData eventSummaryDataFromEKEvent:*(*(&v89 + 1) + 8 * i)];
                        [v66 addObject:v72];
                      }

                      v69 = [v67 countByEnumeratingWithState:&v89 objects:v100 count:16];
                    }

                    while (v69);
                  }

                  [v74 setEventSummaryData:v66];
                  [v19 setObject:v74 atIndexedSubscript:v75];

                  v15 = v78;
                  v11 = v80;
                  v55 = v76;
                }
              }

              v52 = v87;
              v16 = v81;
            }

            v50 = v52++ < v93;
          }

          while (v50);
        }

        v22 = v85;
        goto LABEL_50;
      }
    }

    else if ((BYTE1(self->_selectedMonthWeekView) & 1) == 0)
    {
      BYTE1(self->_selectedMonthWeekView) = 1;
      v73 = dispatch_get_global_queue(2, 0);
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_10009A3EC;
      v94[3] = &unk_10020F2E0;
      v94[4] = self;
      v95 = v88;
      v22 = v85;
      v96 = v85;
      dispatch_async(v73, v94);

      v10 = 0;
      goto LABEL_51;
    }

    v10 = 0;
    v22 = v85;
    goto LABEL_51;
  }

  v79 = v11;
  model = self->super.super.super.super._model;
  v22 = v85;
  v23 = [(CUIKCalendarModel *)model occurrencesForStartDate:v88 endDate:v85 preSorted:1 waitForLoad:0];
  v24 = [v23 occurrences];

  v86 = [v24 count];
  if (v86 >= 1)
  {
    v25 = 0;
    v82 = v24;
    do
    {
      v26 = [v24 objectAtIndex:v25];
      v27 = [v26 startDate];
      [v27 timeIntervalSinceReferenceDate];
      v29 = v28;

      v30 = [v26 endDate];
      [v30 timeIntervalSinceReferenceDate];
      v32 = v31;

      [v88 timeIntervalSinceReferenceDate];
      v34 = v33;
      [v22 timeIntervalSinceReferenceDate];
      v36 = v35;
      v37 = [v26 endCalendarDate];
      v38 = [v37 allComponents];

      if (![v38 hour] && !objc_msgSend(v38, "minute"))
      {
        v39 = [v38 second];
        if (v29 != v32 && v39 == 0)
        {
          v32 = v32 + -1.0;
        }
      }

      if (v29 > v36 || v32 < v34)
      {
        v45 = v38;
      }

      else
      {
        if (v29 < v34)
        {
          v29 = v34;
        }

        if (v32 > v36)
        {
          v32 = v36;
        }

        v41 = [EventSummaryData eventSummaryDataFromEKEvent:v26];
        v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:v29];
        v43 = [v84 components:30 fromDate:v42];

        v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:v32];
        v45 = [v84 components:30 fromDate:v44];

        v46 = [v43 day];
        if (v46 <= [v45 day])
        {
          do
          {
            v47 = v46 - [v12 day];
            if (v47 >= 0 && v47 < [v19 count])
            {
              v48 = [v19 objectAtIndex:v47];
              [v48 setEventCount:{objc_msgSend(v48, "eventCount") + 1}];
              [v48 setDayType:0];
              [v48 setDayTypeBadgeColor:0];
              [v48 setDayTypeBadgeLocale:0];
              v49 = [v48 eventSummaryData];
              if (!v49)
              {
                v49 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
                [v48 setEventSummaryData:v49];
              }

              [v49 addObject:v41];
            }

            v50 = v46++ < [v45 day];
          }

          while (v50);
        }

        v22 = v85;
        v24 = v82;
      }

      ++v25;
    }

    while (v25 != v86);
  }

  v15 = v98;
  v11 = v79;
  v16 = v97;
LABEL_50:
  v10 = v19;
LABEL_51:

LABEL_55:
LABEL_14:

  return v10;
}

- (BOOL)_shouldAnimateDots
{
  [(CompactWidthMonthViewController *)self _scrollViewVerticalVelocity];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  return v2 < 0.05;
}

- (double)_scrollViewVerticalVelocity
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  if ([v3 isDragging])
  {
    goto LABEL_6;
  }

  v4 = [(InfiniteScrollViewController *)self scrollView];
  if ([v4 isTracking])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v6 = [(InfiniteScrollViewController *)self scrollView];
    [v6 _verticalVelocity];
    v8 = v7;

    return v8;
  }

  v5 = [(InfiniteScrollViewController *)self scrollView];
  if ([v5 isDecelerating])
  {

    goto LABEL_5;
  }

  v10 = [(InfiniteScrollViewController *)self scrollView];
  v11 = [v10 isScrollAnimating];

  if (v11)
  {
    goto LABEL_7;
  }

  return 0.0;
}

- (void)enterAnimationSplitStateWithCutOutArea:(CGRect)a3 topBoundary:(double)a4
{
  if ((BYTE1(self->_weekCalculationCalendar) & 1) == 0)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(InfiniteScrollViewController *)self setSuppressViewAdjustments:1];
    BYTE1(self->_weekCalculationCalendar) = 1;
    *(&self->_originalScrollViewBackgroundColor + 1) = x;
    *(&self->_splitCutOutRect.origin.x + 1) = y;
    *(&self->_splitCutOutRect.origin.y + 1) = width;
    *(&self->_splitCutOutRect.size.width + 1) = height;
    *(&self->_splitCutOutRect.size.height + 1) = a4;
    v10 = [(InfiniteScrollViewController *)self scrollView];
    v11 = [(CompactWidthMonthViewController *)self view];
    [v10 convertRect:v11 fromView:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [NSMutableArray arrayWithCapacity:[(InfiniteScrollViewController *)self subviewCount]];
    v21 = +[NSMutableArray array];
    v22 = [NSMutableArray arrayWithCapacity:[(InfiniteScrollViewController *)self subviewCount]];
    v23 = [(CompactWidthMonthViewController *)self view];
    v24 = [v23 backgroundColor];
    v25 = *&self->_splitOpen;
    *&self->_splitOpen = v24;

    v26 = [(InfiniteScrollViewController *)self scrollView];
    v27 = [v26 backgroundColor];
    v28 = *(&self->_originalBackgroundColor + 1);
    *(&self->_originalBackgroundColor + 1) = v27;

    v29 = +[UIColor clearColor];
    v30 = [(CompactWidthMonthViewController *)self view];
    [v30 setBackgroundColor:v29];

    v31 = +[UIColor clearColor];
    v32 = [(InfiniteScrollViewController *)self scrollView];
    [v32 setBackgroundColor:v31];

    v43 = _NSConcreteStackBlock;
    v44 = 3221225472;
    v45 = sub_10009A960;
    v46 = &unk_1002101E8;
    v47 = self;
    v33 = v20;
    v48 = v33;
    v51 = v13;
    v52 = v15;
    v53 = v17;
    v54 = v19;
    v34 = v21;
    v49 = v34;
    v35 = v22;
    v50 = v35;
    [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:&v43];
    v36 = *(&self->_pressedDay + 1);
    if (v36)
    {
      [v36 setHidden:{1, v43, v44, v45, v46, v47, v48, v49}];
    }

    v37 = *(&self->_clipViews + 1);
    *(&self->_clipViews + 1) = v33;
    v38 = v33;

    v39 = *(&self->_topBoundaryY + 1);
    *(&self->_topBoundaryY + 1) = v34;
    v40 = v34;

    v41 = *(&self->_originalSubviewYs + 1);
    *(&self->_originalSubviewYs + 1) = v35;
    v42 = v35;

    BYTE2(self->_weekCalculationCalendar) = 0;
  }
}

- (void)endAnimationSplitState
{
  if (BYTE1(self->_weekCalculationCalendar) == 1)
  {
    v3 = *&self->_splitOpen;
    v4 = [(CompactWidthMonthViewController *)self view];
    [v4 setBackgroundColor:v3];

    v5 = *(&self->_originalBackgroundColor + 1);
    v6 = [(InfiniteScrollViewController *)self scrollView];
    [v6 setBackgroundColor:v5];

    if ([*(&self->_clipViews + 1) count])
    {
      v7 = 0;
      do
      {
        v8 = [*(&self->_originalSubviewYs + 1) objectAtIndexedSubscript:v7];
        v9 = [*(&self->_clipViews + 1) objectAtIndexedSubscript:v7];
        [v8 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [v9 doubleValue];
        [v8 setFrame:{v11, v16, v13, v15}];

        ++v7;
      }

      while (v7 < [*(&self->_clipViews + 1) count]);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = *(&self->_topBoundaryY + 1);
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = [v22 superview];
          [v23 setTemporarilyHideWeekNumber:0];
          [v22 removeFromSuperview];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:&stru_100210208];
    v24 = *(&self->_clipViews + 1);
    *(&self->_clipViews + 1) = 0;

    v25 = *(&self->_topBoundaryY + 1);
    *(&self->_topBoundaryY + 1) = 0.0;

    v26 = *(&self->_originalSubviewYs + 1);
    *(&self->_originalSubviewYs + 1) = 0;

    v27 = *&self->_splitOpen;
    *&self->_splitOpen = 0;

    v28 = *(&self->_originalBackgroundColor + 1);
    *(&self->_originalBackgroundColor + 1) = 0;

    [(InfiniteScrollViewController *)self setSuppressViewAdjustments:0];
    BYTE1(self->_weekCalculationCalendar) = 0;
  }
}

- (void)setSplitStateOpen:(BOOL)a3
{
  if (BYTE1(self->_weekCalculationCalendar) == 1 && BYTE2(self->_weekCalculationCalendar) != a3)
  {
    BYTE2(self->_weekCalculationCalendar) = a3;
    v5 = (&self->_originalScrollViewBackgroundColor + 1);
    v6 = *(&self->_splitCutOutRect.origin.x + 1);
    v7 = *(&self->_splitCutOutRect.size.height + 1);
    v8 = [(CompactWidthMonthViewController *)self view];
    [v8 frame];
    v10 = v9 - (*(&self->_splitCutOutRect.origin.x + 1) + *(&self->_splitCutOutRect.size.width + 1));

    v11 = [(InfiniteScrollViewController *)self scrollView];
    v12 = [(CompactWidthMonthViewController *)self view];
    [v11 convertRect:v12 fromView:{*v5, *(&self->_splitCutOutRect.origin.x + 1), *(&self->_splitCutOutRect.origin.y + 1), *(&self->_splitCutOutRect.size.width + 1)}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v54.origin.x = v14;
    v54.origin.y = v16;
    v54.size.width = v18;
    v54.size.height = v20;
    MaxY = CGRectGetMaxY(v54);
    v22 = BYTE2(self->_weekCalculationCalendar);
    if (!BYTE2(self->_weekCalculationCalendar))
    {
      v10 = -v10;
    }

    if (a3)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v23 = *(&self->_originalSubviewYs + 1);
      v24 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v50;
        if (v22)
        {
          v27 = -(v6 - v7);
        }

        else
        {
          v27 = v6 - v7;
        }

        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v50 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v49 + 1) + 8 * i);
            [v29 frame];
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v37 = v36;
            [v29 frame];
            if (CGRectGetMinY(v55) >= MaxY)
            {
              v38 = v10;
            }

            else
            {
              v38 = v27;
            }

            [v29 setFrame:{v31, v33 + v38, v35, v37}];
          }

          v25 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v25);
      }
    }

    else if ([*(&self->_clipViews + 1) count])
    {
      v39 = 0;
      do
      {
        v40 = [*(&self->_originalSubviewYs + 1) objectAtIndexedSubscript:v39];
        v41 = [*(&self->_clipViews + 1) objectAtIndexedSubscript:v39];
        [v40 frame];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        [v41 doubleValue];
        [v40 setFrame:{v43, v48, v45, v47}];

        ++v39;
      }

      while (v39 < [*(&self->_clipViews + 1) count]);
    }
  }
}

- (void)_updateDividedListTopLineForDividedMode:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!*(&self->_currentBackButtonDate + 1))
  {
    v7 = [UIView alloc];
    v8 = [(InfiniteScrollViewController *)self scrollView];
    [v8 safeAreaInsets];
    v10 = v9;
    v11 = [(CompactWidthMonthViewController *)self view];
    [v11 bounds];
    Width = CGRectGetWidth(v29);
    EKUIScaleFactor();
    CalRoundToScreenScale();
    v14 = [v7 initWithFrame:{0.0, v10, Width, v13}];
    v15 = *(&self->_currentBackButtonDate + 1);
    *(&self->_currentBackButtonDate + 1) = v14;

    [*(&self->_currentBackButtonDate + 1) setAutoresizingMask:34];
    v16 = +[UIColor separatorColor];
    [*(&self->_currentBackButtonDate + 1) setBackgroundColor:v16];

    v17 = [(CompactWidthMonthViewController *)self view];
    [v17 addSubview:*(&self->_currentBackButtonDate + 1)];
  }

  v18 = [(InfiniteScrollViewController *)self scrollView];
  [v18 safeAreaInsets];
  v20 = v19;
  v21 = [(CompactWidthMonthViewController *)self view];
  [v21 bounds];
  v22 = CGRectGetWidth(v30);
  EKUIScaleFactor();
  CalRoundToScreenScale();
  [*(&self->_currentBackButtonDate + 1) setFrame:{0.0, v20, v22, v23}];

  v24 = *(&self->_currentBackButtonDate + 1);
  if (v4)
  {
    if (v5)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 1.0;
    }

    [v24 setAlpha:v25];
    [*(&self->_currentBackButtonDate + 1) setHidden:0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10009B450;
    v26[3] = &unk_10020EAD8;
    v26[4] = self;
    v27 = v5;
    [UIView animateWithDuration:v26 animations:0.2];
  }

  else
  {

    [v24 setHidden:!v5];
  }
}

- (void)_updateListViewFrame
{
  [*(&self->_listViewController + 1) frame];
  v4 = v3;
  v5 = [(CompactWidthMonthViewController *)self view];
  [v5 bounds];
  v7 = v6;

  v8 = [(CompactWidthMonthViewController *)self view];
  [v8 frame];
  v10 = v9;

  [(CompactWidthMonthViewController *)self _bottomOfCurrentMonth];
  [*(&self->_listViewController + 1) setFrame:{v4, v11, v7, v10 - v11}];
  v12 = *(&self->_pressedMonthView + 1);
  if (v12)
  {
    v13 = [v12 tableView];
    [v13 safeAreaInsets];
    left = v14;
    right = v16;
  }

  else
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  EKUIScaleFactor();
  CalRoundToScreenScale();
  v19 = v18;
  v20 = [*(&self->_pressedMonthView + 1) tableView];
  [v20 setContentInset:{v19, left, 0.0, right}];

  BYTE5(self->_selectedMonthWeekView) = 0;
}

- (id)_monthForLastVisibleMonth
{
  v3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v4 = [v3 calendarDateForEndOfMonth];
  v5 = [v4 calendarDateByAddingWeeks:{-[CompactWidthMonthViewController _offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth](self, "_offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth") + 1}];
  v6 = [v5 calendarDateForMonth];

  return v6;
}

- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth
{
  v3 = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v5 = v4;
  EKUIHeightForWindowSizeParadigm();
  v7 = v6;

  v8 = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v10 = v9;
  EKUIHeightForWindowSizeParadigm();
  v12 = v11;

  v13 = [(CompactWidthMonthViewController *)self _numberOfWeeksInSelectedMonth];
  v14 = [(CompactWidthMonthViewController *)self _offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth];
  v15 = 8 - (v13 + v14);
  if (v5 < v7)
  {
    v15 = 0;
  }

  if (v10 >= v12)
  {
    return 11 - (v13 + v14);
  }

  else
  {
    return v15;
  }
}

- (unint64_t)_numberOfWeeksInSelectedMonth
{
  v3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  v4 = [v3 date];

  if (v4)
  {
    v5 = *(&self->_topLineView + 1);
    if (!v5)
    {
      v6 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
      v7 = [v6 copy];
      v8 = *(&self->_topLineView + 1);
      *(&self->_topLineView + 1) = v7;

      [*(&self->_topLineView + 1) setFirstWeekday:CUIKOneIndexedWeekStart()];
      v5 = *(&self->_topLineView + 1);
    }

    v9 = [v3 date];
    [v5 rangeOfUnit:4096 inUnit:8 forDate:v9];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth
{
  v3 = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v5 = v4;
  EKUIHeightForWindowSizeParadigm();
  v7 = v6;

  v8 = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v10 = v9;
  EKUIHeightForWindowSizeParadigm();
  v12 = v11;

  if (v10 >= v12)
  {
    return 2;
  }

  else
  {
    return v5 >= v7;
  }
}

- (double)_bottomOfCurrentMonth
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  v4 = [(InfiniteScrollViewController *)self scrollView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CompactWidthMonthViewController *)self view];
  [v3 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(InfiniteScrollViewController *)self scrollView];
  [v22 safeAreaInsets];
  v24 = v23;

  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v25 = v24 + CGRectGetMinY(v30);
  v26 = [(CompactWidthMonthViewController *)self _numberOfWeeksInSelectedMonth];
  v27 = [objc_opt_class() monthWeekViewClass];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [v27 heightForViewThatContainsFirstDayOfMonth:0 compressed:1 scale:?];
  return v25 + v28 * v26;
}

- (CGPoint)_originForSelectedMonthViewInScrollViewWithState:(BOOL)a3
{
  v3 = a3;
  v5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  v6 = [objc_opt_class() monthWeekViewClass];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [v6 heightForViewThatContainsFirstDayOfMonth:0 compressed:v3 scale:?];
  v8 = v7;
  v9 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v10 = [v5 calendarDateForMonth];
  v11 = [v10 date];
  v12 = [v5 calendarDateForEndOfWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  v13 = [v12 date];
  v14 = [v9 components:4096 fromDate:v11 toDate:v13 options:0];

  v15 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v16 = [(InfiniteScrollViewController *)self subviewForDate:v15];

  [v16 frame];
  v18 = v17 - [v14 weekOfMonth] * v8;
  if (([v16 containsFirstDayOfMonth] & 1) == 0)
  {
    [v6 headerHeight];
    v18 = v18 - v19;
  }

  v20 = 0.0;
  v21 = v18;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)_snapshotViewForDividedListTransition:(id)a3 useFastPath:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 calendarDateForMonth];
  [v7 absoluteTime];
  v9 = v8;

  v10 = [v6 calendarDateForEndOfMonth];
  [v10 absoluteTime];
  v12 = v11;

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v13 = [(InfiniteScrollViewController *)self scrollView];
  [v13 contentSize];
  v15 = v14;

  v46 = v15;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10009BE20;
  v38[3] = &unk_100210230;
  v38[6] = v9;
  v38[7] = v12;
  v38[4] = &v43;
  v38[5] = &v39;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v38];
  if (*(v40 + 24) == 1 && (v16 = v44[3] + -4.0, v44[3] = v16, -[CompactWidthMonthViewController view](self, "view"), v17 = objc_claimAutoreleasedReturnValue(), -[InfiniteScrollViewController scrollView](self, "scrollView"), v18 = objc_claimAutoreleasedReturnValue(), [v17 convertPoint:v18 fromView:{0.0, v16}], v20 = v19, v18, v17, -[CompactWidthMonthViewController view](self, "view"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "frame"), v23 = v22, v21, v20 < v23))
  {
    v24 = [(CompactWidthMonthViewController *)self view];
    [v24 bounds];
    Width = CGRectGetWidth(v48);

    v26 = [(CompactWidthMonthViewController *)self view];
    [v26 bounds];
    Height = CGRectGetHeight(v49);

    v28 = [(InfiniteScrollViewController *)self scrollView];
    v29 = [(CompactWidthMonthViewController *)self view];
    [v28 convertPoint:v29 fromView:{0.0, v20}];
    v31 = v30;
    v33 = v32;

    v34 = Height - v20;
    v35 = [[UISnapshotView alloc] initWithFrame:{0.0, v20, Width, v34}];
    v36 = [(InfiniteScrollViewController *)self scrollView];
    [v35 captureSnapshotRect:v36 fromView:v4 withSnapshotType:{v31, v33, Width, v34}];
  }

  else
  {
    v35 = 0;
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  return v35;
}

- (void)_showDetailsForEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [(MainViewController *)self model];
  [v12 setSelectedOccurrence:v11];

  v13 = [(MainViewController *)self augmentEventDetailsContext:v10];

  v14 = [EKEventViewController eventDetailViewControllerWithEvent:v11 delegate:self context:v13 canvasView:2];

  [(CompactWidthMonthViewController *)self ekui_adjustNavAndToolBarToTransparentStyles];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C040;
  v16[3] = &unk_10020EE00;
  v17 = v14;
  v18 = a5;
  v15 = v14;
  [(MainViewController *)self showViewController:v15 sender:self animated:v7 completion:v16];
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v5 = a3;
  [v5 setDelegate:0];
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedOccurrence:0];
  v6 = [(CompactWidthMonthViewController *)self navigationController];
  [v6 popViewControllersAfterAndIncluding:v5 animated:(BYTE1(self->_viewsToMove) & 1) == 0];

  BYTE1(self->_viewsToMove) = 0;
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (a4 == 1)
  {
    v9 = [a3 calendarToMakeVisibleOnSave];
    v10 = [v9 objectID];
    if (v10)
    {
      [(CUIKCalendarModel *)self->super.super.super.super._model ensureCalendarVisibleWithId:v10];
    }
  }

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10009C294;
  v15 = &unk_10020EBC8;
  v16 = self;
  v17 = v8;
  v11 = v8;
  [(CompactWidthMonthViewController *)self dismissViewControllerAnimated:1 completion:&v12];
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:1, v12, v13, v14, v15, v16];
  [(MonthViewController *)self removeAllWeekHighlights];
}

- (id)_weekViewAtScrollPoint:(CGPoint)a3 pointInWeek:(CGPoint *)a4
{
  y = a3.y;
  x = a3.x;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100097BC0;
  v37 = sub_100097BD0;
  v38 = 0;
  v8 = [(InfiniteScrollViewController *)self scrollView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(InfiniteScrollViewController *)self scrollView];
  [v15 contentOffset];
  v17 = v16;
  v18 = [(InfiniteScrollViewController *)self scrollView];
  [v18 safeAreaInsets];
  v20 = v19;

  v21 = [(InfiniteScrollViewController *)self scrollView];
  [v21 safeAreaInsets];
  v23 = v22;

  [*(&self->_listViewController + 1) frame];
  if (v24 <= 0.01)
  {
    v29 = v14 - v23;
  }

  else
  {
    [*(&self->_listViewController + 1) frame];
    v26 = v25;
    v27 = [(InfiniteScrollViewController *)self scrollView];
    [v27 safeAreaInsets];
    v29 = v26 - v28;
  }

  v41.origin.y = v17 + v20;
  v41.origin.x = v10;
  v41.size.width = v12;
  v41.size.height = v29;
  v40.x = x;
  v40.y = y;
  if (CGRectContainsPoint(v41, v40))
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10009C4FC;
    v32[3] = &unk_100210258;
    *&v32[6] = x;
    *&v32[7] = y;
    v32[8] = a4;
    v32[4] = self;
    v32[5] = &v33;
    [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v32];
    v30 = v34[5];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v30;
}

- (BOOL)dragAndDropAllowLongPress
{
  if (BYTE2(self->_reloadQueue))
  {
    return 0;
  }

  [(CompactWidthMonthViewController *)self monthWeekScale];
  v4 = v3;
  +[CompactMonthWeekView eventScale];
  return v4 >= v5;
}

- (id)occurrenceAtPoint:(CGPoint)a3
{
  v6 = CGPointZero;
  v3 = [(CompactWidthMonthViewController *)self _weekViewAtScrollPoint:&v6 pointInWeek:a3.x, a3.y];
  v4 = [v3 occurrenceAtPoint:v6];

  return v4;
}

- (void)showEditorForNewDraggedEvent:(id)a3 inWeek:(id)a4
{
  v5 = a3;
  v6 = [(MainViewController *)self model];
  v9 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:v5 model:v6 creationMethod:1 viewStart:2 eventEditViewDelegate:self];

  if (CalDraftUIEnabled() && [(DockableEventContainerController *)v9 conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
  {
    v7 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:v9];

    v8 = v7;
  }

  else
  {
    v8 = v9;
  }

  v10 = v8;
  [(CompactWidthMonthViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)dragAndDropRequestsPresentationOfViewController:(id)a3
{
  v4 = a3;
  v5 = [[UnadaptableNavigationController alloc] initWithRootViewController:v4];

  [(UnadaptableNavigationController *)v5 setModalPresentationStyle:2];
  [(CompactWidthMonthViewController *)self presentViewController:v5 animated:1 completion:0];
}

@end
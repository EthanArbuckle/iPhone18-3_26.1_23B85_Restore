@interface CompactWidthMonthViewController
+ (double)monthWeekScale;
+ (double)scaleForSize:(unint64_t)size;
+ (void)setMonthWeekScaleSize:(unint64_t)size;
- (BOOL)_isTodayCircleFrameFullyUnobstructed;
- (BOOL)_isTodayHighlightVisible;
- (BOOL)_shouldAnimateDots;
- (BOOL)dragAndDropAllowLongPress;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isTodayVisible;
- (CGPoint)_originForSelectedMonthViewInScrollViewWithState:(BOOL)state;
- (CGRect)frameForTodayHighlight;
- (CGRect)frameForWeekContainingDate:(id)date;
- (CGRect)frameOfListView;
- (CompactWidthMonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window;
- (double)_bottomOfCurrentMonth;
- (double)_scrollViewVerticalVelocity;
- (double)_showDateVerticalOffset;
- (double)decelerationDistanceThresholdForDisplayingMonthBanner;
- (double)decelerationDistanceThresholdForPreferringMonthBoundary;
- (double)decelerationDistanceThresholdToStopShowingMonthBanner;
- (double)heightForSubviewWithCalendarDate:(id)date;
- (double)monthWeekScale;
- (double)showDateVerticalOffsetForDate:(id)date;
- (id)_dayInMonth:(id)month fromGesture:(id)gesture;
- (id)_eventInMonthWeekView:(id)view fromGesture:(id)gesture;
- (id)_loadEventsForStartDate:(id)date endDate:(id)endDate;
- (id)_monthForLastVisibleMonth;
- (id)_paletteView;
- (id)_snapshotViewForDividedListTransition:(id)transition useFastPath:(BOOL)path;
- (id)_viewFromGesture:(id)gesture;
- (id)_weekViewAtScrollPoint:(CGPoint)point pointInWeek:(CGPoint *)week;
- (id)bestDateForNewEvent;
- (id)cellFramesForWeekContainingDate:(id)date;
- (id)createInitialViewForDate:(id)date;
- (id)dateForCurrentMonthOnScreen;
- (id)dateForTopVisibleMonthOnScreen;
- (id)newBottomViewBelowViewWithCalendarDate:(id)date;
- (id)newTopViewAboveViewWithCalendarDate:(id)date;
- (id)occurrenceAtPoint:(CGPoint)point;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)pushedDayViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)pushedListViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)pushedMultiDayViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)sceneTitle;
- (id)targetCalendarDate;
- (id)updateBackButtonWhileTopViewControllerToDate:(id)date;
- (int64_t)eventCountDisplayedForDate:(id)date;
- (unint64_t)_numberOfWeeksInSelectedMonth;
- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth;
- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth;
- (void)_animateChangeToWeekSize:(unint64_t)size divided:(BOOL)divided;
- (void)_cachedOccurrencesChanged:(id)changed;
- (void)_createMonthHighlightForMonthView:(id)view day:(id)day;
- (void)_dayIndexesForRangeStart:(id)start rangeEnd:(id)end outFirstDayIndex:(int64_t *)index outLastDayIndex:(int64_t *)dayIndex;
- (void)_loadEventDataForMonthWeekView:(id)view;
- (void)_loadEventsForAllSubviews;
- (void)_loadEventsForViewsInRangeStartingAt:(id)at endingAt:(id)endingAt;
- (void)_modelUnlocked;
- (void)_monthScrollerPinched:(id)pinched;
- (void)_occurrencesChanged:(id)changed;
- (void)_registerGestureRecognizers;
- (void)_removeMonthHighlight;
- (void)_resetSelectionForDividedListState:(BOOL)state;
- (void)_scrubGestureCallback:(id)callback;
- (void)_selectedDateChangedExternally;
- (void)_setSelectedDay:(id)day onMonthWeekView:(id)view animated:(BOOL)animated;
- (void)_setupListViewController;
- (void)_showDetailsForEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)_tapGestureCallback:(id)callback;
- (void)_unregisterGestureRecognizers;
- (void)_updateDateForDividedList;
- (void)_updateDividedListTopLineForDividedMode:(BOOL)mode animated:(BOOL)animated;
- (void)_updateListViewFrame;
- (void)_updateMonthTitleViewFont;
- (void)_updateNavigationControllerBackButton;
- (void)_updateNavigationControllerBackButtonToDate:(id)date;
- (void)_updateViewsForTimeZoneChange;
- (void)_weekStartChanged:(id)changed;
- (void)animateToMonthWeekSize:(unint64_t)size divided:(BOOL)divided;
- (void)applySizeToPinchView:(unint64_t)view compressed:(BOOL)compressed snapToBoundary:(BOOL)boundary;
- (void)calendarModelTimeZoneChanged;
- (void)contentSizeCategoryChanged;
- (void)dealloc;
- (void)didEndScrolling;
- (void)didLoadInitialViews;
- (void)didScroll;
- (void)dragAndDropRequestsPresentationOfViewController:(id)controller;
- (void)endAnimationSplitState;
- (void)enterAnimationSplitStateWithCutOutArea:(CGRect)area topBoundary:(double)boundary;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)finishChangeScale;
- (void)forceUpdateListView;
- (void)loadView;
- (void)localeChanged;
- (void)monthView:(id)view gestureBegan:(id)began;
- (void)monthView:(id)view gestureCancelled:(id)cancelled;
- (void)monthView:(id)view gestureChanged:(id)changed;
- (void)monthView:(id)view gestureEnded:(id)ended;
- (void)prepareToChangeScaleFromPinch:(BOOL)pinch;
- (void)relayoutPinchView;
- (void)setSplitStateOpen:(BOOL)open;
- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block;
- (void)showEditorForNewDraggedEvent:(id)event inWeek:(id)week;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)significantTimeChangeOccurred;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation CompactWidthMonthViewController

- (CompactWidthMonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window
{
  dateCopy = date;
  modelCopy = model;
  windowCopy = window;
  v25.receiver = self;
  v25.super_class = CompactWidthMonthViewController;
  v11 = [(MonthViewController *)&v25 initWithCalendarDate:dateCopy model:modelCopy window:windowCopy];
  v12 = v11;
  if (v11)
  {
    model = [(MainViewController *)v11 model];
    BYTE2(v12->_reloadQueue) = [model showMonthAsDivided];

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

  view = [(CompactWidthMonthViewController *)self view];
  pinchRecognizer = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [view addGestureRecognizer:pinchRecognizer];

  pinchToZoomAllowed = [(CompactWidthMonthViewController *)self pinchToZoomAllowed];
  pinchRecognizer2 = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [pinchRecognizer2 setEnabled:pinchToZoomAllowed];

  pinchRecognizer3 = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [pinchRecognizer3 setDelegate:self];

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
  dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];
  v4 = &UIScrollViewDecelerationRateFast;
  if (!dividedListMode)
  {
    v4 = &UIScrollViewDecelerationRateNormal;
  }

  v5 = *v4;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setDecelerationRate:v5];

  traitCollection = [(CompactWidthMonthViewController *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:traitCollection];

  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _setupListViewController];
    [(CompactWidthMonthViewController *)self _updateListViewFrame];
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      dividedModeBackgroundColor = [objc_opt_class() dividedModeBackgroundColor];
      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView2 setBackgroundColor:dividedModeBackgroundColor];
    }

    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v11 = [(MonthViewController *)self adjustSelectedDateForNewMonth:selectedDate];

    [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
  }

  else
  {
    v11 = +[UIColor systemBackgroundColor];
    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 setBackgroundColor:v11];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v4 viewWillAppear:appear];
  *(&self->super._applicationResuming + 1) = 1;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v4 viewIsAppearing:appearing];
  [(CompactWidthMonthViewController *)self ekui_adjustNavBarToTranslucentGrayStyleWithSeparator];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v16.receiver = self;
  v16.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v16 viewDidAppear:?];
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _updateDividedListTopLineForDividedMode:[(CompactWidthMonthViewController *)self dividedListMode] animated:appearCopy];
    selectedDay = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
    selectedDay2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
    v7 = [(InfiniteScrollViewController *)self subviewForDate:selectedDay2];
    [(CompactWidthMonthViewController *)self _setSelectedDay:selectedDay onMonthWeekView:v7 animated:appearCopy];

    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    calendarDateForEndOfMonth = [selectedDate calendarDateForEndOfMonth];

    v10 = [(InfiniteScrollViewController *)self subviewForDate:calendarDateForEndOfMonth];
    if (v10)
    {
      view = [(CompactWidthMonthViewController *)self view];
      window = [view window];

      if (window || (-[CompactWidthMonthViewController navigationController](self, "navigationController"), v13 = objc_claimAutoreleasedReturnValue(), [v13 view], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "window"), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, !v15))
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  [(MonthViewController *)&v4 viewWillDisappear:disappear];
  [(CompactWidthMonthViewController *)self _unregisterGestureRecognizers];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CompactWidthMonthViewController *)self _removeMonthHighlight];
  v5 = *&self->_needToReloadEventsOnAppear;
  *&self->_needToReloadEventsOnAppear = 0;

  v6.receiver = self;
  v6.super_class = CompactWidthMonthViewController;
  [(CompactWidthMonthViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)_setupListViewController
{
  if (!*(&self->_pressedMonthView + 1))
  {
    v3 = objc_alloc_init(UIView);
    v4 = *(&self->_listViewController + 1);
    *(&self->_listViewController + 1) = v3;

    [*(&self->_listViewController + 1) setAutoresizingMask:10];
    view = [(CompactWidthMonthViewController *)self view];
    [view bounds];
    [*(&self->_listViewController + 1) setFrame:?];

    v6 = +[UIColor systemBackgroundColor];
    [*(&self->_listViewController + 1) setBackgroundColor:v6];

    view2 = [(CompactWidthMonthViewController *)self view];
    [view2 addSubview:*(&self->_listViewController + 1)];

    v8 = [[CompactMonthListViewController alloc] initWithModel:self->super.super.super.super._model];
    v9 = *(&self->_pressedMonthView + 1);
    *(&self->_pressedMonthView + 1) = v8;

    [*(&self->_pressedMonthView + 1) setCompactMonthListViewDelegate:self];
    [(CompactWidthMonthViewController *)self addChildViewController:*(&self->_pressedMonthView + 1)];
    view3 = [*(&self->_pressedMonthView + 1) view];
    [view3 setAutoresizingMask:18];

    [*(&self->_listViewController + 1) bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    view4 = [*(&self->_pressedMonthView + 1) view];
    [view4 setFrame:{v12, v14, v16, v18}];

    [*(&self->_pressedMonthView + 1) setDisabled:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") ^ 1}];
    v20 = *(&self->_listViewController + 1);
    view5 = [*(&self->_pressedMonthView + 1) view];
    [v20 addSubview:view5];

    view6 = [(CompactWidthMonthViewController *)self view];
    [view6 frame];
    v24 = v23;
    v26 = v25;

    view7 = [(CompactWidthMonthViewController *)self view];
    [view7 bounds];
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

+ (double)scaleForSize:(unint64_t)size
{
  if (size == 1)
  {
    return 1.0;
  }

  if (size == 2)
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
  monthViewScaleSize = [v3 monthViewScaleSize];

  [self scaleForSize:monthViewScaleSize];
  return result;
}

+ (void)setMonthWeekScaleSize:(unint64_t)size
{
  v4 = +[CUIKPreferences sharedPreferences];
  [v4 setMonthViewScaleSize:size];

  if (size >= 3)
  {
    v5 = +[CUIKPreferences sharedPreferences];
    [v5 setMonthViewEventScaleSize:size];
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

- (void)prepareToChangeScaleFromPinch:(BOOL)pinch
{
  pinchCopy = pinch;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setHidden:1];

  [(InfiniteScrollViewController *)self setSuppressViewAdjustments:1];
  BYTE3(self->_viewsToMove) = 1;
  view = [(CompactWidthMonthViewController *)self view];
  [view addSubview:*(&self->_lastSnapScale + 1)];

  view2 = [(CompactWidthMonthViewController *)self view];
  [view2 frame];
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
  allViews = [(InfiniteScrollViewController *)self allViews];
  firstObject = [allViews firstObject];

  view3 = [(CompactWidthMonthViewController *)self view];
  [firstObject frame];
  v20 = v19;
  v22 = v21;
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [view3 convertPoint:scrollView2 fromView:{v20, v22}];
  v25 = v24;
  v27 = v26;

  v28 = -v27;
  calendarDate = [firstObject calendarDate];
  allViews2 = [(InfiniteScrollViewController *)self allViews];
  lastObject = [allViews2 lastObject];
  calendarDate2 = [lastObject calendarDate];

  allViews3 = [(InfiniteScrollViewController *)self allViews];
  v34 = [NSMutableArray arrayWithArray:allViews3];

  [(CompactWidthMonthViewController *)self setSuspendEventLoading:1];
  v57 = firstObject;
  if (pinchCopy)
  {
    v35 = 0;
  }

  else
  {
    v35 = [v34 count];
    if (v35 > 8)
    {
      calendarDate4 = calendarDate2;
      goto LABEL_20;
    }
  }

  v36 = v35 - 9;
  do
  {
    if (pinchCopy)
    {
      v37 = [(CompactWidthMonthViewController *)self newTopViewAboveViewWithCalendarDate:calendarDate];
      [v34 insertObject:v37 atIndex:0];
      calendarDate3 = [v37 calendarDate];

      [*(&self->_lastSnapScale + 1) bounds];
      [v37 sizeThatFits:{v39, v40}];
      v42 = v41;
      [v37 setFrame:{0.0, 0.0, v43, v41}];
      v28 = v28 + v42;

      calendarDate = calendarDate3;
    }

    v44 = [(CompactWidthMonthViewController *)self newBottomViewBelowViewWithCalendarDate:calendarDate2];
    [v34 addObject:v44];
    [*(&self->_lastSnapScale + 1) bounds];
    [v44 sizeThatFits:{v45, v46}];
    [v44 setFrame:{0.0, 0.0, v47, v48}];
    calendarDate4 = [v44 calendarDate];

    calendarDate2 = calendarDate4;
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

- (void)applySizeToPinchView:(unint64_t)view compressed:(BOOL)compressed snapToBoundary:(BOOL)boundary
{
  boundaryCopy = boundary;
  compressedCopy = compressed;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView adjustedContentInset];
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
    viewCopy = view;
    v16 = boundaryCopy;
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
    boundaryCopy = v16;
    view = viewCopy;
  }

  else
  {
    v23 = 0.0;
  }

  [objc_opt_class() setMonthWeekScaleSize:view];
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
        [v33 setCompressedVerticalMode:compressedCopy];
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
  if (boundaryCopy)
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
  subviews = [*(&self->_lastSnapScale + 1) subviews];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [subviews count]);

  subviews2 = [*(&self->_lastSnapScale + 1) subviews];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [subviews2 count]);

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

        calendarDate = [v11 calendarDate];
        [v4 addObject:calendarDate];

        [v11 layoutSubviews];
        [v11 setDrawWithViews:0];
        [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  [(InfiniteScrollViewController *)self insertViews:*(&self->_pinchScrollView + 1)];
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setHidden:0];

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
  navigationController = [(CompactWidthMonthViewController *)self navigationController];
  paletteView = [navigationController paletteView];

  return paletteView;
}

- (void)_animateChangeToWeekSize:(unint64_t)size divided:(BOOL)divided
{
  dividedCopy = divided;
  [CompactWidthMonthViewController scaleForSize:?];
  v6 = v5;
  v7 = +[CUIKPreferences sharedPreferences];
  +[CompactWidthMonthViewController scaleForSize:](CompactWidthMonthViewController, "scaleForSize:", [v7 monthViewScaleSize]);
  v9 = v8;

  [(CompactWidthMonthViewController *)self prepareToChangeScaleFromPinch:0];
  pinchRecognizer = [(CompactWidthMonthViewController *)self pinchRecognizer];
  [pinchRecognizer setEnabled:0];

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
  selfCopy = self;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100093BD8;
  v52[3] = &unk_1002100D8;
  v52[4] = self;
  v52[5] = size;
  v53 = dividedCopy;
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

  if ([(CompactWidthMonthViewController *)self dividedListMode]!= dividedCopy)
  {
    view = [(CompactWidthMonthViewController *)self view];
    [view bringSubviewToFront:*(&self->_listViewController + 1)];

    if (dividedCopy)
    {
      [*(&self->_listViewController + 1) setHidden:0];
      [*(&self->_pressedMonthView + 1) setDisabled:0];
      view2 = [*(&self->_pressedMonthView + 1) view];
      [view2 setAlpha:1.0];

      [*(&self->_listViewContainer + 1) setAlpha:1.0];
      [*(&self->_listViewController + 1) frame];
      v21 = v20;
      v23 = v22;
      view3 = [(CompactWidthMonthViewController *)self view];
      [view3 frame];
      v26 = v25;

      [*(&self->_listViewController + 1) setFrame:{0.0, v26, v21, v23}];
    }

    else
    {
      [(CompactWidthMonthViewController *)self _resetSelectionForDividedListState:0];
    }

    [(CompactWidthMonthViewController *)self _updateDividedListTopLineForDividedMode:dividedCopy animated:0];
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    v28 = scrollView;
    v29 = UIScrollViewDecelerationRateFast;
    if (!dividedCopy)
    {
      v29 = UIScrollViewDecelerationRateNormal;
    }

    [scrollView setDecelerationRate:v29];

    model = [(MainViewController *)self model];
    [model setShowMonthAsDivided:dividedCopy];

    [(CompactWidthMonthViewController *)self setDividedListMode:dividedCopy];
    _paletteView = [(CompactWidthMonthViewController *)self _paletteView];
    [(CompactWidthMonthViewController *)self updatePalette:_paletteView];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100093C54;
    v39[3] = &unk_10020EAD8;
    v40 = dividedCopy;
    v39[4] = self;
    v32 = objc_retainBlock(v39);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100093D4C;
    v36[3] = &unk_10020FCA8;
    v36[4] = self;
    v38 = dividedCopy;
    v37 = v12;
    v33 = objc_retainBlock(v36);
    [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v32 options:v33 animations:0.0 completion:0.0];
  }

  _Block_object_dispose(v58, 8);
}

- (void)animateToMonthWeekSize:(unint64_t)size divided:(BOOL)divided
{
  dividedCopy = divided;
  v7 = +[CUIKPreferences sharedPreferences];
  monthViewScaleSize = [v7 monthViewScaleSize];

  if (monthViewScaleSize != size || [(CompactWidthMonthViewController *)self dividedListMode]!= dividedCopy)
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

    scrollView = [(InfiniteScrollViewController *)self scrollView];
    if (([scrollView isScrollAnimating] & 1) == 0)
    {
      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      if (![scrollView2 isDecelerating])
      {
        scrollView3 = [(InfiniteScrollViewController *)self scrollView];
        isDragging = [scrollView3 isDragging];

        if ((isDragging & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

LABEL_15:
    scrollView4 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView4 contentOffset];
    v18 = v17;
    v20 = v19;

    scrollView5 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView5 stopScrollingAndZooming];

    scrollView6 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView6 setContentOffset:0 animated:{v18, v20}];

LABEL_16:
    if ([(CompactWidthMonthViewController *)self dividedListMode]== dividedCopy)
    {
      [(CompactWidthMonthViewController *)self _animateChangeToWeekSize:size divided:dividedCopy];
      return;
    }

    HIBYTE(self->_selectedMonthWeekView) = 1;
    [(CompactWidthMonthViewController *)self _setupListViewController];
    v23 = CUIKTodayDate();
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    timeZone = [calendar timeZone];
    v9 = [EKCalendarDate calendarDateWithDate:v23 timeZone:timeZone];

    v26 = [(InfiniteScrollViewController *)self subviewForDate:v9];
    [v26 setDisableTodayPulse:1];
    if (dividedCopy)
    {
      dateForTopVisibleMonthOnScreen = [(CompactWidthMonthViewController *)self dateForTopVisibleMonthOnScreen];
      calendarDateForMonth = [dateForTopVisibleMonthOnScreen calendarDateForMonth];
      date = [calendarDateForMonth date];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100094204;
      v33[3] = &unk_100210128;
      v34 = v26;
      v35 = dateForTopVisibleMonthOnScreen;
      selfCopy = self;
      v37 = v9;
      sizeCopy = size;
      v39 = dividedCopy;
      v30 = dateForTopVisibleMonthOnScreen;
      [(CompactWidthMonthViewController *)self showDate:date animated:1 completionBlock:v33];
    }

    else
    {
      [v26 setDisableTodayPulse:0];
      [(CompactWidthMonthViewController *)self _animateChangeToWeekSize:size divided:0];
    }

    goto LABEL_24;
  }
}

- (void)_monthScrollerPinched:(id)pinched
{
  pinchedCopy = pinched;
  state = [pinchedCopy state];
  if ((state - 3) <= 2)
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

    firstObject = [*(&self->_pinchScrollView + 1) firstObject];
    [(CompactWidthMonthViewController *)self monthWeekScale];
    v12 = [firstObject nearestSnapBoundaryForScale:?];
    *&self->_needsUpdateOnModelUnlock = 0;
    pinchRecognizer = [(CompactWidthMonthViewController *)self pinchRecognizer];
    [pinchRecognizer setEnabled:0];

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

  numberOfTouches = [pinchedCopy numberOfTouches];
  if ((numberOfTouches | 2) == 2)
  {
    v15 = numberOfTouches;
    v16 = (&self->_lastPinchDistance.y + 1);
    v17 = *(&self->_lastPinchDistance.y + 1);
    v18 = *(&self->_lastPinchPoint.x + 1);
    if (numberOfTouches)
    {
      view = [(CompactWidthMonthViewController *)self view];
      [pinchedCopy locationOfTouch:0 inView:view];
      v21 = v20;

      view2 = [(CompactWidthMonthViewController *)self view];
      [pinchedCopy locationOfTouch:1 inView:view2];
      v24 = v23;

      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [scrollView safeAreaInsets];
      *v16 = 0.0;
      *(&self->_lastPinchPoint.x + 1) = (v21 + v24) * 0.5 - v26;
    }

    if (state != 2)
    {
      if (state == 1)
      {
        BYTE6(self->_selectedMonthWeekView) = 1;
        scrollView2 = [(InfiniteScrollViewController *)self scrollView];
        panGestureRecognizer = [scrollView2 panGestureRecognizer];
        [panGestureRecognizer setEnabled:0];

        scrollView3 = [(InfiniteScrollViewController *)self scrollView];
        panGestureRecognizer2 = [scrollView3 panGestureRecognizer];
        [panGestureRecognizer2 setEnabled:1];

        if (v15)
        {
          view3 = [(CompactWidthMonthViewController *)self view];
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
      view4 = [(CompactWidthMonthViewController *)self view];
      pinchDistanceForGestureRecognizer();
      v39 = v38;

      v40 = *(&self->_originalPinchDistance + 1) * (v39 / *(&self->_lastPinchPoint.y + 1));
    }

    else
    {
      v41 = *(&self->_originalPinchDistance + 1);
      [pinchedCopy scale];
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
      view5 = [(CompactWidthMonthViewController *)self view];
      [v48 convertPoint:view5 fromView:{v17, v18}];
      v51 = v50;
      v53 = v52;
    }

    else
    {
      [pinchedCopy locationInView:v48];
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
      selfCopy = self;
      v105 = pinchedCopy;
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
        self = selfCopy;
        pinchedCopy = v105;
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
          view6 = [(CompactWidthMonthViewController *)self view];
          v91 = v106;
          [view6 convertPoint:v106 fromView:{v51, v89}];
          v93 = v92;

          v94 = v93 - v16[1];
        }

        else
        {
          v91 = v106;
          [pinchedCopy locationInView:v106];
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

      self = selfCopy;
      pinchedCopy = v105;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CompactWidthMonthViewController;
  coordinatorCopy = coordinator;
  [(InfiniteScrollViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100094D24;
  v8[3] = &unk_10020F240;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (id)createInitialViewForDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if ([dateCopy day] != 1)
  {
    v5 = [dateCopy calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  }

  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v7 = dequeueReusableView;
    [dequeueReusableView setCompressedVerticalMode:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    [v7 setCalendarDate:v5];
  }

  else
  {
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "monthWeekViewClass"))];
  }

  [v7 setWeekDelegate:self];
  if ([(CompactWidthMonthViewController *)self dividedListMode]&& !*(&self->_listViewContainerTopLine + 1))
  {
    calendarDate = [v7 calendarDate];
    [calendarDate absoluteTime];
    v11 = v10;
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate absoluteTime];
    if (v11 <= v13)
    {
      selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [selectedDate2 absoluteTime];
      v16 = v15;
      endCalendarDate = [v7 endCalendarDate];
      [endCalendarDate absoluteTime];
      v19 = v18;

      if (v16 > v19)
      {
        goto LABEL_13;
      }

      calendarDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:calendarDate onMonthWeekView:v7 animated:0];
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

- (id)newTopViewAboveViewWithCalendarDate:(id)date
{
  v4 = [(MonthViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:date];
  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v6 = dequeueReusableView;
    [dequeueReusableView setCompressedVerticalMode:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    [v6 setCalendarDate:v4];
  }

  else
  {
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "monthWeekViewClass"))];
  }

  [v6 setWeekDelegate:self];
  if (![(CompactWidthMonthViewController *)self suspendEventLoading])
  {
    [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v6];
  }

  if ([(CompactWidthMonthViewController *)self dividedListMode]&& !*(&self->_listViewContainerTopLine + 1))
  {
    calendarDate = [v6 calendarDate];
    [calendarDate absoluteTime];
    v10 = v9;
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate absoluteTime];
    if (v10 > v12)
    {

LABEL_12:
      goto LABEL_13;
    }

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate2 absoluteTime];
    v15 = v14;
    endCalendarDate = [v6 endCalendarDate];
    [endCalendarDate absoluteTime];
    v18 = v17;

    if (v15 <= v18)
    {
      calendarDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:calendarDate onMonthWeekView:v6 animated:0];
      goto LABEL_12;
    }
  }

LABEL_13:
  v19 = +[CUIKPreferences sharedPreferences];
  [v6 setShowWeekNumber:{objc_msgSend(v19, "showWeekNumbers")}];

  return v6;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)date
{
  v4 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:date];
  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v6 = dequeueReusableView;
    [dequeueReusableView setCompressedVerticalMode:{-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode")}];
    [v6 setCalendarDate:v4];
  }

  else
  {
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "monthWeekViewClass"))];
  }

  [v6 setWeekDelegate:self];
  if (![(CompactWidthMonthViewController *)self suspendEventLoading])
  {
    [(CompactWidthMonthViewController *)self _loadEventDataForMonthWeekView:v6];
  }

  if ([(CompactWidthMonthViewController *)self dividedListMode]&& !*(&self->_listViewContainerTopLine + 1))
  {
    calendarDate = [v6 calendarDate];
    [calendarDate absoluteTime];
    v10 = v9;
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate absoluteTime];
    if (v10 < v12)
    {

LABEL_12:
      goto LABEL_13;
    }

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate2 absoluteTime];
    v15 = v14;
    endCalendarDate = [v6 endCalendarDate];
    [endCalendarDate absoluteTime];
    v18 = v17;

    if (v15 <= v18)
    {
      calendarDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:calendarDate onMonthWeekView:v6 animated:0];
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
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v5 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate];

    if (v5 != *(&self->_listViewContainerTopLine + 1))
    {
      selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:selectedDate2 onMonthWeekView:v5 animated:1];
    }
  }

  else if ([(CompactWidthMonthViewController *)self dividedListMode]&& ![(InfiniteScrollViewController *)self viewIsVisible])
  {
    BYTE5(self->_selectedMonthWeekView) = 1;
  }
}

- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  if (![(CompactWidthMonthViewController *)self dividedListMode])
  {
    v77.receiver = self;
    v77.super_class = CompactWidthMonthViewController;
    [(MonthViewController *)&v77 willEndDraggingWithVelocity:offset targetContentOffset:x, y];
    return;
  }

  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v9 = -y;
  if (y >= 0.0)
  {
    v9 = y;
  }

  if (v9 <= 0.3)
  {
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView contentOffset];
    v36 = v35;
    v38 = v37;

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 frame];
    v41 = v40;

    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 safeAreaInsets];
    v44 = v43;
    scrollView4 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView4 safeAreaInsets];
    v47 = v41 - (v44 + v46);

    [*(&self->_listViewController + 1) bounds];
    v75 = 0;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v75 date:v36, v38 + (v47 - CGRectGetHeight(v78)) * 0.5];
    v49 = v48;
    v51 = v50;
    v33 = v75;
    offset->x = v49;
    offset->y = v51;
    firstView = selectedDate;
  }

  else
  {
    firstView = *(&self->_listViewContainerTopLine + 1);
    if (!firstView)
    {
      firstView = [(InfiniteScrollViewController *)self firstView];
    }

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v12 = selectedDate2;
    if (y > 0.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    v14 = [selectedDate2 calendarDateByAddingMonths:v13];
    calendarDateForMonth = [v14 calendarDateForMonth];

    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    calendarDate = [firstView calendarDate];
    date = [calendarDate date];
    date2 = [calendarDateForMonth date];
    v20 = [calendar components:0x2000 fromDate:date toDate:date2 options:0];

    [firstView frame];
    v22 = v21;
    [firstView frame];
    v24 = v23;
    v25 = y <= 0.0;
    v27 = v26 + [v20 weekOfYear] * v22;
    if (v25)
    {
      [objc_msgSend(objc_opt_class() "monthWeekViewClass")];
      v27 = v27 - v28;
    }

    v76 = calendarDateForMonth;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v76 date:v24, v27];
    v30 = v29;
    v32 = v31;
    v33 = v76;

    offset->x = v30;
    offset->y = v32;
  }

  scrollView5 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView5 stopScrollingAndZooming];

  v73 = *offset;
  v74 = v73;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095BF0;
  block[3] = &unk_10020EDD8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  selectedDate3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  month = [selectedDate3 month];
  if (month != [v33 month])
  {

LABEL_20:
    v58 = [(MonthViewController *)self adjustSelectedDateForNewMonth:v33];

    model = [(MainViewController *)self model];
    [model setSelectedDate:v58];

    if ([(InfiniteScrollViewController *)self viewIsVisible])
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100095C48;
      v71[3] = &unk_10020EB00;
      v71[4] = self;
      [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v71 options:0 animations:0.0 completion:0.0];
      selectedDate4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      v61 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate4];

      selectedDate5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:selectedDate5 onMonthWeekView:v61 animated:1];
    }

    goto LABEL_22;
  }

  selectedDate6 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  year = [selectedDate6 year];
  year2 = [v33 year];

  if (year != year2)
  {
    goto LABEL_20;
  }

  v58 = v33;
LABEL_22:
  selectedDate7 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  calendarDateForMonth2 = [selectedDate7 calendarDateForMonth];
  v65 = [(InfiniteScrollViewController *)self subviewForDate:calendarDateForMonth2];

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
  model = [(MainViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];
  startCalendarDate = [selectedOccurrence startCalendarDate];

  targetCalendarDate = [(CompactWidthMonthViewController *)self targetCalendarDate];
  v7 = targetCalendarDate;
  v8 = startCalendarDate;
  if (startCalendarDate || (v8 = targetCalendarDate) != 0)
  {
    [(CompactWidthMonthViewController *)self _updateNavigationControllerBackButtonToDate:v8];
  }

  BYTE4(self->_selectedMonthWeekView) = 0;
}

- (id)targetCalendarDate
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  v7 = v6;

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 frame];
  v10 = v9;

  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 safeAreaInsets];
  v13 = v12;
  scrollView4 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView4 safeAreaInsets];
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

- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  dateCopy = date;
  blockCopy = block;
  v10 = blockCopy;
  if (BYTE3(self->_viewsToMove) == 1)
  {
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CompactWidthMonthViewController;
    [(InfiniteScrollViewController *)&v14 showDate:dateCopy animated:animatedCopy completionBlock:blockCopy];
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      v12 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate];

      selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(CompactWidthMonthViewController *)self _setSelectedDay:selectedDate2 onMonthWeekView:v12 animated:animatedCopy];
    }
  }
}

- (id)cellFramesForWeekContainingDate:(id)date
{
  model = self->super.super.super.super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  timeZone = [calendar timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];
  dayNumberCellFrames = [v9 dayNumberCellFrames];

  return dayNumberCellFrames;
}

- (void)contentSizeCategoryChanged
{
  v3.receiver = self;
  v3.super_class = CompactWidthMonthViewController;
  [(CompactMonthViewController *)&v3 contentSizeCategoryChanged];
  [(CompactWidthMonthViewController *)self _updateMonthTitleViewFont];
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (eventCopy)
  {
    dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];
    startCalendarDate = [eventCopy startCalendarDate];
    [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:startCalendarDate];

    if (!dividedListMode || mode)
    {
      [(CompactWidthMonthViewController *)self _showDetailsForEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
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

- (void)updatePalette:(id)palette
{
  v4.receiver = self;
  v4.super_class = CompactWidthMonthViewController;
  paletteCopy = palette;
  [(CompactMonthViewController *)&v4 updatePalette:paletteCopy];
  [paletteCopy setWeekdayHeaderFillsHalfWidth:{0, v4.receiver, v4.super_class}];
}

- (void)_updateNavigationControllerBackButtonToDate:(id)date
{
  dateCopy = date;
  navigationController = [(CompactWidthMonthViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateBackButtonToDate:dateCopy];
  }
}

- (void)_updateNavigationControllerBackButton
{
  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  [(CompactWidthMonthViewController *)self _updateNavigationControllerBackButtonToDate:selectedDate];
}

- (id)updateBackButtonWhileTopViewControllerToDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (*&self->_needToReloadEventsOnAppear && (v7 = [dateCopy month], v7 == objc_msgSend(*&self->_needToReloadEventsOnAppear, "month")) && (v8 = objc_msgSend(v6, "year"), v8 == objc_msgSend(*&self->_needToReloadEventsOnAppear, "year")) && (v9 = objc_msgSend(v6, "day"), v9 == objc_msgSend(*&self->_needToReloadEventsOnAppear, "day")))
  {
    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_needToReloadEventsOnAppear, date);
    date = [v6 date];
    v10 = CUIKStringForYear();
  }

  return v10;
}

- (id)bestDateForNewEvent
{
  if ([(CompactWidthMonthViewController *)self dividedListMode]&& ([(CUIKCalendarModel *)self->super.super.super.super._model selectedDate], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CompactWidthMonthViewController;
    selectedDate = [(MonthViewController *)&v6 bestDateForNewEvent];
  }

  return selectedDate;
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  if ([(CompactWidthMonthViewController *)self isTodayVisible]&& ![(CompactWidthMonthViewController *)self dividedListMode])
  {
    bestDateForNewEvent = CUIKTodayDate();
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    timeZone = [calendar timeZone];
    v4 = [EKCalendarDate calendarDateWithDate:bestDateForNewEvent timeZone:timeZone];
  }

  else
  {
    bestDateForNewEvent = [(CompactWidthMonthViewController *)self bestDateForNewEvent];
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      bestDateForNewEvent = bestDateForNewEvent;
      v4 = bestDateForNewEvent;
    }

    else
    {
      calendarDateForMonth = [bestDateForNewEvent calendarDateForMonth];
      v4 = [calendarDateForMonth calendarDateByAddingDays:2];
    }
  }

  return v4;
}

- (id)sceneTitle
{
  if ([(CompactWidthMonthViewController *)self dividedListMode]&& ([(CUIKCalendarModel *)self->super.super.super.super._model selectedDay], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    selectedDay = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
    date = [selectedDay date];
    sceneTitle = CUIKStringForMonthYear();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CompactWidthMonthViewController;
    sceneTitle = [(MonthViewController *)&v8 sceneTitle];
  }

  return sceneTitle;
}

- (CGRect)frameForWeekContainingDate:(id)date
{
  model = self->super.super.super.super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  timeZone = [calendar timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];
  v10 = v9;
  if (v9)
  {
    [v9 rectForCells];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    view = [(CompactWidthMonthViewController *)self view];
    [view convertRect:v10 fromView:{v12, v14, v16, v18}];
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
  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];

  v7 = [(CompactWidthMonthViewController *)self monthWeekViewForCalendarDate:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [(CompactWidthMonthViewController *)self view];
    [view convertRect:v8 fromView:{v10, v12, v14, v16}];
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
  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];

  v7 = [(CompactWidthMonthViewController *)self monthWeekViewForCalendarDate:v6];
  v8 = v7;
  if (v7)
  {
    isTodayHighlightVisible = [v7 isTodayHighlightVisible];
  }

  else
  {
    isTodayHighlightVisible = 0;
  }

  return isTodayHighlightVisible;
}

- (BOOL)isTodayVisible
{
  _isTodayCircleFrameFullyUnobstructed = [(CompactWidthMonthViewController *)self _isTodayCircleFrameFullyUnobstructed];
  if (_isTodayCircleFrameFullyUnobstructed)
  {

    LOBYTE(_isTodayCircleFrameFullyUnobstructed) = [(CompactWidthMonthViewController *)self _isTodayHighlightVisible];
  }

  return _isTodayCircleFrameFullyUnobstructed;
}

- (BOOL)_isTodayCircleFrameFullyUnobstructed
{
  [(InfiniteScrollViewController *)self unobstructedScrollViewHeight];
  v4 = v3;
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self frameOfListView];
    v6 = v4 - v5;
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView safeAreaInsets];
    v4 = v6 + v8;
  }

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 safeAreaInsets];
  v11 = v10;
  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 bounds];
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

- (double)heightForSubviewWithCalendarDate:(id)date
{
  dateCopy = date;
  monthWeekViewClass = [objc_opt_class() monthWeekViewClass];
  dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];
  view = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowSize();
  v9 = v8;
  v11 = v10;
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [monthWeekViewClass heightForViewWithCalendarDate:dateCopy compressed:dividedListMode windowSize:v9 scale:{v11, v12}];
  v14 = v13;

  return v14;
}

- (double)decelerationDistanceThresholdForPreferringMonthBoundary
{
  dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [CompactMonthWeekView heightForViewThatContainsFirstDayOfMonth:0 compressed:dividedListMode scale:?];
  return v4 * 3.5;
}

- (double)decelerationDistanceThresholdForDisplayingMonthBanner
{
  dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [CompactMonthWeekView heightForViewThatContainsFirstDayOfMonth:0 compressed:dividedListMode scale:?];
  return v4 * 5.5;
}

- (double)decelerationDistanceThresholdToStopShowingMonthBanner
{
  dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [CompactMonthWeekView heightForViewThatContainsFirstDayOfMonth:0 compressed:dividedListMode scale:?];
  return v4 * 1.1;
}

- (double)showDateVerticalOffsetForDate:(id)date
{
  if ([date weekOfMonth] != 1)
  {
    return 0.0;
  }

  [(CompactWidthMonthViewController *)self _showDateVerticalOffset];
  return result;
}

- (double)_showDateVerticalOffset
{
  monthWeekViewClass = [objc_opt_class() monthWeekViewClass];
  [monthWeekViewClass headerHeight];
  v4 = v3;
  [monthWeekViewClass grayLineHeight];
  return v4 + v5 + -0.5;
}

- (id)pushedDayViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:date];
  v6 = [DayViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  window = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:window];

  navigationController = [(CompactWidthMonthViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:animatedCopy];

  return v9;
}

- (id)pushedMultiDayViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:date];
  v6 = [MultiDayWeekViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  window = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:window];

  navigationController = [(CompactWidthMonthViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:animatedCopy];

  return v9;
}

- (id)pushedListViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:date];
  v6 = [ListViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  window = [(MainViewController *)self window];
  v9 = [(MainViewControllerContainer *)v6 initWithModel:model window:window];

  navigationController = [(CompactWidthMonthViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:animatedCopy];

  return v9;
}

- (int64_t)eventCountDisplayedForDate:(id)date
{
  dateCopy = date;
  v5 = [(InfiniteScrollViewController *)self subviewForDate:dateCopy];
  v6 = [dateCopy day];

  calendarDate = [v5 calendarDate];
  v8 = [calendarDate day];

  if (!v5)
  {
    goto LABEL_7;
  }

  eventData = [v5 eventData];
  eventCount = 0;
  if (!eventData)
  {
    goto LABEL_6;
  }

  v11 = v6 - v8;
  if (v11 < 0)
  {
    goto LABEL_6;
  }

  eventData2 = [v5 eventData];
  v13 = [eventData2 count];

  if (v11 >= v13)
  {
LABEL_7:
    eventCount = 0;
    goto LABEL_8;
  }

  eventData3 = [v5 eventData];
  eventData = [eventData3 objectAtIndex:v11];

  eventCount = [eventData eventCount];
LABEL_6:

LABEL_8:
  return eventCount;
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
  firstViewOnScreen = [(InfiniteScrollViewController *)self firstViewOnScreen];
  v4 = firstViewOnScreen;
  if (firstViewOnScreen && ([firstViewOnScreen calendarDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    calendarDate = [v4 calendarDate];
  }

  else
  {
    calendarDate = [(InfiniteScrollViewController *)self dateOfCenterViewOnScreen];
  }

  v7 = calendarDate;

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
  monthTitleView = [(MonthViewController *)self monthTitleView];
  v4 = [UIFont fontWithDescriptor:v5 size:0.0];
  [monthTitleView setFont:v4];
}

- (void)_updateDateForDividedList
{
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v4 = [selectedDate calendarDateByAddingDays:1];
    calendarDateForDay = [v4 calendarDateForDay];

    date = [calendarDateForDay date];
    v6 = CUIKTodayDate();
    v7 = [date compare:v6];

    if (!v7)
    {
      v8 = CUIKTodayDate();
      calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
      timeZone = [calendar timeZone];
      v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:timeZone];
      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
    }

    view = [(CompactWidthMonthViewController *)self view];
    window = [view window];

    if (window)
    {
      selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      date2 = [selectedDate2 date];
      [(MonthViewController *)self showDate:date2 animated:0];

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

- (void)_weekStartChanged:(id)changed
{
  v4 = *(&self->_topLineView + 1);
  *(&self->_topLineView + 1) = 0;

  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:selectedDate];

  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {

    [(CompactWidthMonthViewController *)self _updateListViewFrame];
  }
}

- (void)_updateViewsForTimeZoneChange
{
  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar timeZone];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100097788;
  v7[3] = &unk_10020ED60;
  v5 = timeZone;
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

  dayCellsTapGestureRecognizer = [(CompactWidthMonthViewController *)self dayCellsTapGestureRecognizer];
  [dayCellsTapGestureRecognizer addTarget:self action:"_tapGestureCallback:"];

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  dayCellsTapGestureRecognizer2 = [(CompactWidthMonthViewController *)self dayCellsTapGestureRecognizer];
  [scrollView addGestureRecognizer:dayCellsTapGestureRecognizer2];

  v7 = objc_alloc_init(UILongPressGestureRecognizer);
  [(CompactWidthMonthViewController *)self setDayCellsScrubbingGestureRecognizer:v7];

  dayCellsScrubbingGestureRecognizer = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [dayCellsScrubbingGestureRecognizer addTarget:self action:"_scrubGestureCallback:"];

  dayCellsScrubbingGestureRecognizer2 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [dayCellsScrubbingGestureRecognizer2 setDelegate:self];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  dayCellsScrubbingGestureRecognizer3 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [scrollView2 addGestureRecognizer:dayCellsScrubbingGestureRecognizer3];

  [objc_opt_class() scrubbingMinimumPressDuration];
  v13 = v12;
  dayCellsScrubbingGestureRecognizer4 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [dayCellsScrubbingGestureRecognizer4 setMinimumPressDuration:v13];

  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  panGestureRecognizer = [scrollView3 panGestureRecognizer];
  dayCellsScrubbingGestureRecognizer5 = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [panGestureRecognizer requireGestureRecognizerToFail:dayCellsScrubbingGestureRecognizer5];
}

- (void)_unregisterGestureRecognizers
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  dayCellsTapGestureRecognizer = [(CompactWidthMonthViewController *)self dayCellsTapGestureRecognizer];
  [scrollView removeGestureRecognizer:dayCellsTapGestureRecognizer];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  dayCellsScrubbingGestureRecognizer = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [scrollView2 removeGestureRecognizer:dayCellsScrubbingGestureRecognizer];

  [(CompactWidthMonthViewController *)self setDayCellsTapGestureRecognizer:0];

  [(CompactWidthMonthViewController *)self setDayCellsScrubbingGestureRecognizer:0];
}

- (void)_tapGestureCallback:(id)callback
{
  callbackCopy = callback;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100097BC0;
  v18 = sub_100097BD0;
  v19 = 0;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  subviews = [scrollView subviews];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100097BD8;
  v11 = &unk_100210170;
  v7 = callbackCopy;
  v12 = v7;
  v13 = &v14;
  [subviews enumerateObjectsUsingBlock:&v8];

  [(CompactWidthMonthViewController *)self monthView:v15[5] gestureBegan:v7, v8, v9, v10, v11];
  [(CompactWidthMonthViewController *)self monthView:v15[5] gestureEnded:v7];

  _Block_object_dispose(&v14, 8);
}

- (void)_scrubGestureCallback:(id)callback
{
  callbackCopy = callback;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100097BC0;
  v19 = sub_100097BD0;
  v20 = 0;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  subviews = [scrollView subviews];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100097E64;
  v12 = &unk_100210170;
  v7 = callbackCopy;
  v13 = v7;
  v14 = &v15;
  [subviews enumerateObjectsUsingBlock:&v9];

  state = [v7 state];
  if (state > 3)
  {
    if ((state - 4) < 2)
    {
      [(CompactWidthMonthViewController *)self monthView:v16[5] gestureCancelled:v7];
    }
  }

  else
  {
    switch(state)
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  dayCellsScrubbingGestureRecognizer = [(CompactWidthMonthViewController *)self dayCellsScrubbingGestureRecognizer];

  if (dayCellsScrubbingGestureRecognizer != beginCopy)
  {

    return 1;
  }

  dividedListMode = [(CompactWidthMonthViewController *)self dividedListMode];

  return (dividedListMode & 1) != 0;
}

- (id)_viewFromGesture:(id)gesture
{
  gestureCopy = gesture;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100097BC0;
  v17 = sub_100097BD0;
  v18 = 0;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [gestureCopy locationInView:scrollView];
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

- (void)monthView:(id)view gestureBegan:(id)began
{
  viewCopy = view;
  beganCopy = began;
  if (!-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") || (-[InfiniteScrollViewController scrollView](self, "scrollView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isDecelerating], v7, (v8 & 1) == 0))
  {
    v9 = [(CompactWidthMonthViewController *)self _dayInMonth:viewCopy fromGesture:beganCopy];
    if (v9)
    {
      if (*(&self->_pressHighlight + 1) != viewCopy || [v9 compare:*(&self->_shouldSetSelectedDate + 1)])
      {
        [(CompactWidthMonthViewController *)self _createMonthHighlightForMonthView:viewCopy day:v9];
        [*(&self->_pressedDay + 1) setPressed:1];
      }

      if ([(CompactWidthMonthViewController *)self dividedListMode])
      {
        scrollView = [(InfiniteScrollViewController *)self scrollView];
        [scrollView setScrollEnabled:0];

        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v9];
        v11 = CUIKTodayDate();
        calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
        timeZone = [calendar timeZone];
        v14 = [EKCalendarDate calendarDateWithDate:v11 timeZone:timeZone];
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

- (void)monthView:(id)view gestureChanged:(id)changed
{
  viewCopy = view;
  changedCopy = changed;
  if (!-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") || (-[InfiniteScrollViewController scrollView](self, "scrollView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isDecelerating], v7, (v8 & 1) == 0))
  {
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v9 = [(CompactWidthMonthViewController *)self _viewFromGesture:changedCopy];

      v10 = v9;
    }

    else
    {
      v10 = viewCopy;
    }

    viewCopy = v10;
    v11 = [(CompactWidthMonthViewController *)self _dayInMonth:v10 fromGesture:changedCopy];
    v12 = viewCopy == *(&self->_pressHighlight + 1) && [*(&self->_shouldSetSelectedDate + 1) compare:v11] == 0;
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
      [(CompactWidthMonthViewController *)self _createMonthHighlightForMonthView:viewCopy day:v11];
      [*(&self->_pressedDay + 1) setPressed:1];
      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
    }
  }
}

- (void)monthView:(id)view gestureEnded:(id)ended
{
  viewCopy = view;
  endedCopy = ended;
  if (!-[CompactWidthMonthViewController dividedListMode](self, "dividedListMode") || (-[InfiniteScrollViewController scrollView](self, "scrollView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isDecelerating], v8, (v9 & 1) == 0))
  {
    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      v10 = [(CompactWidthMonthViewController *)self _viewFromGesture:endedCopy];

      viewCopy = v10;
    }

    v11 = [(CompactWidthMonthViewController *)self _dayInMonth:viewCopy fromGesture:endedCopy];
    presentedViewController = [(CompactWidthMonthViewController *)self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [(CompactWidthMonthViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }

    if (viewCopy != *(&self->_pressHighlight + 1) || v11 == 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = ([v11 compare:*(&self->_shouldSetSelectedDate + 1)] == 0) & isKindOfClass;
    }

    if ([(CompactWidthMonthViewController *)self dividedListMode])
    {
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [scrollView setScrollEnabled:1];
    }

    [*(&self->_pressedDay + 1) setPressed:0];
    [*(&self->_pressedDay + 1) setHidden:1];
    if (v16)
    {
      v18 = [(CompactWidthMonthViewController *)self _eventInMonthWeekView:viewCopy fromGesture:endedCopy];
      if (v18)
      {
        [(CompactWidthMonthViewController *)self _showDetailsForEvent:v18 animated:1 showMode:1 context:0];
      }

      else if ([(CompactWidthMonthViewController *)self dividedListMode])
      {
        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
        [(CompactWidthMonthViewController *)self _removeMonthHighlight];
        [(CompactWidthMonthViewController *)self _setSelectedDay:v11 onMonthWeekView:viewCopy animated:0];
      }

      else if (*(&self->super._applicationResuming + 1))
      {
        *(&self->super._applicationResuming + 1) = 0;
        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v11];
        shouldAnimateTransitionToDay = [objc_opt_class() shouldAnimateTransitionToDay];
        if ([(CUIKCalendarModel *)self->super.super.super.super._model showDayAsList])
        {
          v21 = [(CompactWidthMonthViewController *)self pushedListViewControllerWithDate:v11 animated:shouldAnimateTransitionToDay];
        }

        else
        {
          v22 = (_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl();
          numDaysToShow = [(CUIKCalendarModel *)self->super.super.super.super._model numDaysToShow];
          if (v22 || numDaysToShow != 2)
          {
            v25 = [(CompactWidthMonthViewController *)self pushedDayViewControllerWithDate:v11 animated:shouldAnimateTransitionToDay];
          }

          else
          {
            v24 = [(CompactWidthMonthViewController *)self pushedMultiDayViewControllerWithDate:v11 animated:shouldAnimateTransitionToDay];
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

- (void)monthView:(id)view gestureCancelled:(id)cancelled
{
  if ([(CompactWidthMonthViewController *)self dividedListMode:view])
  {
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView setScrollEnabled:1];
  }

  [(CompactWidthMonthViewController *)self _removeMonthHighlight];
}

- (id)_dayInMonth:(id)month fromGesture:(id)gesture
{
  monthCopy = month;
  [gesture locationInView:monthCopy];
  v6 = [monthCopy dayForPoint:?];

  return v6;
}

- (id)_eventInMonthWeekView:(id)view fromGesture:(id)gesture
{
  viewCopy = view;
  [gesture locationInView:viewCopy];
  v6 = [viewCopy occurrenceAtPoint:?];

  return v6;
}

- (void)_createMonthHighlightForMonthView:(id)view day:(id)day
{
  viewCopy = view;
  dayCopy = day;
  [(CompactWidthMonthViewController *)self _removeMonthHighlight];
  objc_storeStrong((&self->_shouldSetSelectedDate + 1), day);
  objc_storeStrong((&self->_pressHighlight + 1), view);
  if ([(CompactWidthMonthViewController *)self dividedListMode])
  {
    [(CompactWidthMonthViewController *)self _setSelectedDay:dayCopy onMonthWeekView:viewCopy animated:0];
  }

  else
  {
    v8 = [[TappableDayNumber alloc] initWithSizeClass:1];
    v9 = *(&self->_pressedDay + 1);
    *(&self->_pressedDay + 1) = v8;

    v10 = +[UIColor systemBackgroundColor];
    [*(&self->_pressedDay + 1) setBackgroundColor:v10];

    [*(&self->_pressedDay + 1) setUserInteractionEnabled:0];
    [viewCopy adjustHighlight:*(&self->_pressedDay + 1) forDay:dayCopy];
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [*(&self->_pressedDay + 1) frame];
    [scrollView convertRect:viewCopy fromView:?];
    [*(&self->_pressedDay + 1) setFrame:?];

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 addSubview:*(&self->_pressedDay + 1)];

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
  presentedViewController = [(CompactWidthMonthViewController *)self presentedViewController];

  if (presentedViewController)
  {
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v6 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate];

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [(CompactWidthMonthViewController *)self _setSelectedDay:selectedDate2 onMonthWeekView:v6 animated:0];
  }
}

- (void)_setSelectedDay:(id)day onMonthWeekView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  dayCopy = day;
  viewCopy = view;
  v9 = *(&self->_listViewContainerTopLine + 1);
  if (v9 != viewCopy)
  {
    [v9 setSelectedDay:0 animated:0];
    v10 = *(&self->_listViewContainerTopLine + 1);
    *(&self->_listViewContainerTopLine + 1) = 0;
  }

  if (dayCopy)
  {
    if (viewCopy)
    {
      [viewCopy setSelectedDay:dayCopy animated:animatedCopy];
      objc_storeStrong((&self->_listViewContainerTopLine + 1), view);
    }

    [(CompactWidthMonthViewController *)self _updateNavigationControllerBackButtonToDate:dayCopy];
  }
}

- (void)_resetSelectionForDividedListState:(BOOL)state
{
  stateCopy = state;
  if ([(InfiniteScrollViewController *)self subviewCount])
  {
    v5 = CUIKTodayDate();
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    timeZone = [calendar timeZone];
    v19 = [EKCalendarDate calendarDateWithDate:v5 timeZone:timeZone];

    v8 = [(InfiniteScrollViewController *)self subviewForDate:v19];
    if (stateCopy)
    {
      selectedDay = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
      v10 = [(InfiniteScrollViewController *)self subviewForDate:selectedDay];
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

      month = [v19 month];
      if (month != [selectedDay month] || ((v15 = objc_msgSend(v19, "year"), v15 == objc_msgSend(selectedDay, "year")) ? (v16 = v8 == 0) : (v16 = 1), v16))
      {
        [v8 setSelectedDay:0 animated:0];
        [v10 setSelectedDay:selectedDay animated:1];
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

      selectedDay = *(&self->_listViewContainerTopLine + 1);
      *(&self->_listViewContainerTopLine + 1) = 0;
    }
  }
}

- (void)_cachedOccurrencesChanged:(id)changed
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

- (void)_occurrencesChanged:(id)changed
{
  changedCopy = changed;
  if ([(InfiniteScrollViewController *)self viewIsVisible])
  {
    userInfo = [changedCopy userInfo];
    v5 = [userInfo objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

    userInfo2 = [changedCopy userInfo];
    v7 = [userInfo2 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

    [(CompactWidthMonthViewController *)self _loadEventsForViewsInRangeStartingAt:v5 endingAt:v7];
  }

  else
  {
    BYTE2(self->_selectedMonthWeekView) = 1;
  }
}

- (void)_loadEventsForViewsInRangeStartingAt:(id)at endingAt:(id)endingAt
{
  atCopy = at;
  endingAtCopy = endingAt;
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
      [atCopy timeIntervalSinceReferenceDate];
      v11 = v10;
      [endingAtCopy timeIntervalSinceReferenceDate];
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

- (void)_loadEventDataForMonthWeekView:(id)view
{
  viewCopy = view;
  calendarDate = [viewCopy calendarDate];
  endCalendarDate = [viewCopy endCalendarDate];
  v7 = *(&self->_pinchViews + 1);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100099574;
  v11[3] = &unk_10020F290;
  v11[4] = self;
  v12 = calendarDate;
  v13 = endCalendarDate;
  v14 = viewCopy;
  v8 = viewCopy;
  v9 = endCalendarDate;
  v10 = calendarDate;
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
      model = [(MainViewController *)self model];
      [model startNotificationMonitor];

      return;
    }
  }

  else
  {
    v4 = 314;
  }

  *(&self->super.super.super.super.super.super.super.isa + v4) = 1;
}

- (void)_dayIndexesForRangeStart:(id)start rangeEnd:(id)end outFirstDayIndex:(int64_t *)index outLastDayIndex:(int64_t *)dayIndex
{
  endCopy = end;
  model = self->super.super.super.super._model;
  startCopy = start;
  v12 = [(CUIKCalendarModel *)model sectionForCachedOccurrencesOnDate:startCopy];
  v13 = [(CUIKCalendarModel *)self->super.super.super.super._model sectionForCachedOccurrencesOnDate:endCopy];
  v14 = [(CUIKCalendarModel *)self->super.super.super.super._model dateForCachedOccurrencesInSection:v12];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [(CUIKCalendarModel *)self->super.super.super.super._model dateForCachedOccurrencesInSection:v13];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  [startCopy timeIntervalSinceReferenceDate];
  v21 = v20;

  if (v16 < v21)
  {
    ++v12;
    if (!index)
    {
      goto LABEL_8;
    }

LABEL_7:
    *index = v12;
    goto LABEL_8;
  }

  [endCopy timeIntervalSinceReferenceDate];
  if (v19 > v22)
  {
    --v13;
  }

  if (index)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (dayIndex)
  {
    *dayIndex = v13;
  }
}

- (id)_loadEventsForStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
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
    calendarDateForEndOfDay = endDateCopy;
    calendarDateForDay = dateCopy;
    goto LABEL_14;
  }

  calendarDateForDay = [dateCopy calendarDateForDay];

  calendarDateForEndOfDay = [endDateCopy calendarDateForEndOfDay];

  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar timeZone];
  date = [calendarDateForDay date];
  date2 = [calendarDateForEndOfDay date];
  v97 = 0;
  v98 = 0;
  CalEventOccurrenceCacheCopyBoundsForTimeZone();
  if (timeZone)
  {
    CFRelease(timeZone);
  }

  v16 = v97;
  v15 = v98;
  v17 = [calendarDateForEndOfDay differenceInDays:calendarDateForDay];
  if ((v17 & 0x8000000000000000) != 0)
  {
    v51 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = calendarDateForDay;
      v102 = 2112;
      v103 = calendarDateForEndOfDay;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Loading events for week failed, End Date is before Start Date %@ %@", buf, 0x16u);
    }

    v10 = 0;
    v22 = date2;
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
  if ([date compare:v98] == 1 && objc_msgSend(date2, "compare:", v97) == -1)
  {
    if (([(CUIKCalendarModel *)self->super.super.super.super._model cachedOccurrencesAreLoaded]& 1) != 0)
    {
      if ((BYTE1(self->_selectedMonthWeekView) & 1) == 0)
      {
        *buf = 0;
        v93 = 0;
        [(CompactWidthMonthViewController *)self _dayIndexesForRangeStart:date rangeEnd:date2 outFirstDayIndex:buf outLastDayIndex:&v93];
        v52 = *buf;
        if (*buf <= v93)
        {
          v78 = v15;
          v80 = calendarDateForEndOfDay;
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
              v55 = [calendar components:30 fromDate:?];
              month = [v55 month];
              if (month == [calendarDateForDay month])
              {
                v57 = [v55 day];
                v58 = v57 - [calendarDateForDay day];
                if (v58 >= 0 && v58 < [v19 count])
                {
                  v75 = v58;
                  v76 = v55;
                  if (v83)
                  {
                    v59 = v83;
                    dayType = [v83 dayType];
                    v61 = v87;
                  }

                  else
                  {
                    dayType = 0;
                    v61 = v87;
                    v59 = 0;
                  }

                  v62 = [CompactMonthWeekDayData dayDataWithEventCount:v54 dayType:dayType];
                  color = [v59 color];
                  [v62 setDayTypeBadgeColor:color];

                  locale = [v59 locale];
                  v74 = v62;
                  [v62 setDayTypeBadgeLocale:locale];

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
                  calendarDateForEndOfDay = v80;
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

        v22 = date2;
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
      v95 = date;
      v22 = date2;
      v96 = date2;
      dispatch_async(v73, v94);

      v10 = 0;
      goto LABEL_51;
    }

    v10 = 0;
    v22 = date2;
    goto LABEL_51;
  }

  v79 = calendarDateForEndOfDay;
  model = self->super.super.super.super._model;
  v22 = date2;
  v23 = [(CUIKCalendarModel *)model occurrencesForStartDate:date endDate:date2 preSorted:1 waitForLoad:0];
  occurrences = [v23 occurrences];

  v86 = [occurrences count];
  if (v86 >= 1)
  {
    v25 = 0;
    v82 = occurrences;
    do
    {
      v26 = [occurrences objectAtIndex:v25];
      startDate = [v26 startDate];
      [startDate timeIntervalSinceReferenceDate];
      v29 = v28;

      endDate = [v26 endDate];
      [endDate timeIntervalSinceReferenceDate];
      v32 = v31;

      [date timeIntervalSinceReferenceDate];
      v34 = v33;
      [v22 timeIntervalSinceReferenceDate];
      v36 = v35;
      endCalendarDate = [v26 endCalendarDate];
      allComponents = [endCalendarDate allComponents];

      if (![allComponents hour] && !objc_msgSend(allComponents, "minute"))
      {
        second = [allComponents second];
        if (v29 != v32 && second == 0)
        {
          v32 = v32 + -1.0;
        }
      }

      if (v29 > v36 || v32 < v34)
      {
        v45 = allComponents;
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
        v43 = [calendar components:30 fromDate:v42];

        v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:v32];
        v45 = [calendar components:30 fromDate:v44];

        v46 = [v43 day];
        if (v46 <= [v45 day])
        {
          do
          {
            v47 = v46 - [calendarDateForDay day];
            if (v47 >= 0 && v47 < [v19 count])
            {
              v48 = [v19 objectAtIndex:v47];
              [v48 setEventCount:{objc_msgSend(v48, "eventCount") + 1}];
              [v48 setDayType:0];
              [v48 setDayTypeBadgeColor:0];
              [v48 setDayTypeBadgeLocale:0];
              eventSummaryData = [v48 eventSummaryData];
              if (!eventSummaryData)
              {
                eventSummaryData = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
                [v48 setEventSummaryData:eventSummaryData];
              }

              [eventSummaryData addObject:v41];
            }

            v50 = v46++ < [v45 day];
          }

          while (v50);
        }

        v22 = date2;
        occurrences = v82;
      }

      ++v25;
    }

    while (v25 != v86);
  }

  v15 = v98;
  calendarDateForEndOfDay = v79;
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
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView isDragging])
  {
    goto LABEL_6;
  }

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView2 isTracking])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 _verticalVelocity];
    v8 = v7;

    return v8;
  }

  scrollView4 = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView4 isDecelerating])
  {

    goto LABEL_5;
  }

  scrollView5 = [(InfiniteScrollViewController *)self scrollView];
  isScrollAnimating = [scrollView5 isScrollAnimating];

  if (isScrollAnimating)
  {
    goto LABEL_7;
  }

  return 0.0;
}

- (void)enterAnimationSplitStateWithCutOutArea:(CGRect)area topBoundary:(double)boundary
{
  if ((BYTE1(self->_weekCalculationCalendar) & 1) == 0)
  {
    height = area.size.height;
    width = area.size.width;
    y = area.origin.y;
    x = area.origin.x;
    [(InfiniteScrollViewController *)self setSuppressViewAdjustments:1];
    BYTE1(self->_weekCalculationCalendar) = 1;
    *(&self->_originalScrollViewBackgroundColor + 1) = x;
    *(&self->_splitCutOutRect.origin.x + 1) = y;
    *(&self->_splitCutOutRect.origin.y + 1) = width;
    *(&self->_splitCutOutRect.size.width + 1) = height;
    *(&self->_splitCutOutRect.size.height + 1) = boundary;
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    view = [(CompactWidthMonthViewController *)self view];
    [scrollView convertRect:view fromView:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [NSMutableArray arrayWithCapacity:[(InfiniteScrollViewController *)self subviewCount]];
    v21 = +[NSMutableArray array];
    v22 = [NSMutableArray arrayWithCapacity:[(InfiniteScrollViewController *)self subviewCount]];
    view2 = [(CompactWidthMonthViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    v25 = *&self->_splitOpen;
    *&self->_splitOpen = backgroundColor;

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    backgroundColor2 = [scrollView2 backgroundColor];
    v28 = *(&self->_originalBackgroundColor + 1);
    *(&self->_originalBackgroundColor + 1) = backgroundColor2;

    v29 = +[UIColor clearColor];
    view3 = [(CompactWidthMonthViewController *)self view];
    [view3 setBackgroundColor:v29];

    v31 = +[UIColor clearColor];
    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 setBackgroundColor:v31];

    v43 = _NSConcreteStackBlock;
    v44 = 3221225472;
    v45 = sub_10009A960;
    v46 = &unk_1002101E8;
    selfCopy = self;
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
      [v36 setHidden:{1, v43, v44, v45, v46, selfCopy, v48, v49}];
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
    view = [(CompactWidthMonthViewController *)self view];
    [view setBackgroundColor:v3];

    v5 = *(&self->_originalBackgroundColor + 1);
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView setBackgroundColor:v5];

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
          superview = [v22 superview];
          [superview setTemporarilyHideWeekNumber:0];
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

- (void)setSplitStateOpen:(BOOL)open
{
  if (BYTE1(self->_weekCalculationCalendar) == 1 && BYTE2(self->_weekCalculationCalendar) != open)
  {
    BYTE2(self->_weekCalculationCalendar) = open;
    v5 = (&self->_originalScrollViewBackgroundColor + 1);
    v6 = *(&self->_splitCutOutRect.origin.x + 1);
    v7 = *(&self->_splitCutOutRect.size.height + 1);
    view = [(CompactWidthMonthViewController *)self view];
    [view frame];
    v10 = v9 - (*(&self->_splitCutOutRect.origin.x + 1) + *(&self->_splitCutOutRect.size.width + 1));

    scrollView = [(InfiniteScrollViewController *)self scrollView];
    view2 = [(CompactWidthMonthViewController *)self view];
    [scrollView convertRect:view2 fromView:{*v5, *(&self->_splitCutOutRect.origin.x + 1), *(&self->_splitCutOutRect.origin.y + 1), *(&self->_splitCutOutRect.size.width + 1)}];
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

    if (open)
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

- (void)_updateDividedListTopLineForDividedMode:(BOOL)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  modeCopy = mode;
  if (!*(&self->_currentBackButtonDate + 1))
  {
    v7 = [UIView alloc];
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView safeAreaInsets];
    v10 = v9;
    view = [(CompactWidthMonthViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v29);
    EKUIScaleFactor();
    CalRoundToScreenScale();
    v14 = [v7 initWithFrame:{0.0, v10, Width, v13}];
    v15 = *(&self->_currentBackButtonDate + 1);
    *(&self->_currentBackButtonDate + 1) = v14;

    [*(&self->_currentBackButtonDate + 1) setAutoresizingMask:34];
    v16 = +[UIColor separatorColor];
    [*(&self->_currentBackButtonDate + 1) setBackgroundColor:v16];

    view2 = [(CompactWidthMonthViewController *)self view];
    [view2 addSubview:*(&self->_currentBackButtonDate + 1)];
  }

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 safeAreaInsets];
  v20 = v19;
  view3 = [(CompactWidthMonthViewController *)self view];
  [view3 bounds];
  v22 = CGRectGetWidth(v30);
  EKUIScaleFactor();
  CalRoundToScreenScale();
  [*(&self->_currentBackButtonDate + 1) setFrame:{0.0, v20, v22, v23}];

  v24 = *(&self->_currentBackButtonDate + 1);
  if (animatedCopy)
  {
    if (modeCopy)
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
    v27 = modeCopy;
    [UIView animateWithDuration:v26 animations:0.2];
  }

  else
  {

    [v24 setHidden:!modeCopy];
  }
}

- (void)_updateListViewFrame
{
  [*(&self->_listViewController + 1) frame];
  v4 = v3;
  view = [(CompactWidthMonthViewController *)self view];
  [view bounds];
  v7 = v6;

  view2 = [(CompactWidthMonthViewController *)self view];
  [view2 frame];
  v10 = v9;

  [(CompactWidthMonthViewController *)self _bottomOfCurrentMonth];
  [*(&self->_listViewController + 1) setFrame:{v4, v11, v7, v10 - v11}];
  v12 = *(&self->_pressedMonthView + 1);
  if (v12)
  {
    tableView = [v12 tableView];
    [tableView safeAreaInsets];
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
  tableView2 = [*(&self->_pressedMonthView + 1) tableView];
  [tableView2 setContentInset:{v19, left, 0.0, right}];

  BYTE5(self->_selectedMonthWeekView) = 0;
}

- (id)_monthForLastVisibleMonth
{
  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  calendarDateForEndOfMonth = [selectedDate calendarDateForEndOfMonth];
  v5 = [calendarDateForEndOfMonth calendarDateByAddingWeeks:{-[CompactWidthMonthViewController _offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth](self, "_offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth") + 1}];
  calendarDateForMonth = [v5 calendarDateForMonth];

  return calendarDateForMonth;
}

- (unint64_t)_offsetNumberOfWeeksFromSelectedMonthForBottomVisibleMonth
{
  view = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v5 = v4;
  EKUIHeightForWindowSizeParadigm();
  v7 = v6;

  view2 = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v10 = v9;
  EKUIHeightForWindowSizeParadigm();
  v12 = v11;

  _numberOfWeeksInSelectedMonth = [(CompactWidthMonthViewController *)self _numberOfWeeksInSelectedMonth];
  _offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth = [(CompactWidthMonthViewController *)self _offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth];
  v15 = 8 - (_numberOfWeeksInSelectedMonth + _offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth);
  if (v5 < v7)
  {
    v15 = 0;
  }

  if (v10 >= v12)
  {
    return 11 - (_numberOfWeeksInSelectedMonth + _offsetNumberOfWeeksFromSelectedMonthForTopVisibleMonth);
  }

  else
  {
    return v15;
  }
}

- (unint64_t)_numberOfWeeksInSelectedMonth
{
  selectedDay = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  date = [selectedDay date];

  if (date)
  {
    v5 = *(&self->_topLineView + 1);
    if (!v5)
    {
      calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
      v7 = [calendar copy];
      v8 = *(&self->_topLineView + 1);
      *(&self->_topLineView + 1) = v7;

      [*(&self->_topLineView + 1) setFirstWeekday:CUIKOneIndexedWeekStart()];
      v5 = *(&self->_topLineView + 1);
    }

    date2 = [selectedDay date];
    [v5 rangeOfUnit:4096 inUnit:8 forDate:date2];
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
  view = [(CompactWidthMonthViewController *)self view];
  EKUICurrentWindowHeightWithViewHierarchy();
  v5 = v4;
  EKUIHeightForWindowSizeParadigm();
  v7 = v6;

  view2 = [(CompactWidthMonthViewController *)self view];
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
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(CompactWidthMonthViewController *)self view];
  [scrollView convertRect:view toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 safeAreaInsets];
  v24 = v23;

  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v25 = v24 + CGRectGetMinY(v30);
  _numberOfWeeksInSelectedMonth = [(CompactWidthMonthViewController *)self _numberOfWeeksInSelectedMonth];
  monthWeekViewClass = [objc_opt_class() monthWeekViewClass];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [monthWeekViewClass heightForViewThatContainsFirstDayOfMonth:0 compressed:1 scale:?];
  return v25 + v28 * _numberOfWeeksInSelectedMonth;
}

- (CGPoint)_originForSelectedMonthViewInScrollViewWithState:(BOOL)state
{
  stateCopy = state;
  selectedDay = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  monthWeekViewClass = [objc_opt_class() monthWeekViewClass];
  [(CompactWidthMonthViewController *)self monthWeekScale];
  [monthWeekViewClass heightForViewThatContainsFirstDayOfMonth:0 compressed:stateCopy scale:?];
  v8 = v7;
  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  calendarDateForMonth = [selectedDay calendarDateForMonth];
  date = [calendarDateForMonth date];
  v12 = [selectedDay calendarDateForEndOfWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  date2 = [v12 date];
  v14 = [calendar components:4096 fromDate:date toDate:date2 options:0];

  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v16 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate];

  [v16 frame];
  v18 = v17 - [v14 weekOfMonth] * v8;
  if (([v16 containsFirstDayOfMonth] & 1) == 0)
  {
    [monthWeekViewClass headerHeight];
    v18 = v18 - v19;
  }

  v20 = 0.0;
  v21 = v18;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)_snapshotViewForDividedListTransition:(id)transition useFastPath:(BOOL)path
{
  pathCopy = path;
  transitionCopy = transition;
  calendarDateForMonth = [transitionCopy calendarDateForMonth];
  [calendarDateForMonth absoluteTime];
  v9 = v8;

  calendarDateForEndOfMonth = [transitionCopy calendarDateForEndOfMonth];
  [calendarDateForEndOfMonth absoluteTime];
  v12 = v11;

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentSize];
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
    view = [(CompactWidthMonthViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v48);

    view2 = [(CompactWidthMonthViewController *)self view];
    [view2 bounds];
    Height = CGRectGetHeight(v49);

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    view3 = [(CompactWidthMonthViewController *)self view];
    [scrollView2 convertPoint:view3 fromView:{0.0, v20}];
    v31 = v30;
    v33 = v32;

    v34 = Height - v20;
    v35 = [[UISnapshotView alloc] initWithFrame:{0.0, v20, Width, v34}];
    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [v35 captureSnapshotRect:scrollView3 fromView:pathCopy withSnapshotType:{v31, v33, Width, v34}];
  }

  else
  {
    v35 = 0;
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  return v35;
}

- (void)_showDetailsForEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  contextCopy = context;
  eventCopy = event;
  model = [(MainViewController *)self model];
  [model setSelectedOccurrence:eventCopy];

  v13 = [(MainViewController *)self augmentEventDetailsContext:contextCopy];

  v14 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v13 canvasView:2];

  [(CompactWidthMonthViewController *)self ekui_adjustNavAndToolBarToTransparentStyles];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C040;
  v16[3] = &unk_10020EE00;
  v17 = v14;
  modeCopy = mode;
  v15 = v14;
  [(MainViewController *)self showViewController:v15 sender:self animated:animatedCopy completion:v16];
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedOccurrence:0];
  navigationController = [(CompactWidthMonthViewController *)self navigationController];
  [navigationController popViewControllersAfterAndIncluding:controllerCopy animated:(BYTE1(self->_viewsToMove) & 1) == 0];

  BYTE1(self->_viewsToMove) = 0;
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  handlerCopy = handler;
  if (action == 1)
  {
    calendarToMakeVisibleOnSave = [controller calendarToMakeVisibleOnSave];
    objectID = [calendarToMakeVisibleOnSave objectID];
    if (objectID)
    {
      [(CUIKCalendarModel *)self->super.super.super.super._model ensureCalendarVisibleWithId:objectID];
    }
  }

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10009C294;
  v15 = &unk_10020EBC8;
  selfCopy = self;
  v17 = handlerCopy;
  v11 = handlerCopy;
  [(CompactWidthMonthViewController *)self dismissViewControllerAnimated:1 completion:&v12];
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:1, v12, v13, v14, v15, selfCopy];
  [(MonthViewController *)self removeAllWeekHighlights];
}

- (id)_weekViewAtScrollPoint:(CGPoint)point pointInWeek:(CGPoint *)week
{
  y = point.y;
  x = point.x;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100097BC0;
  v37 = sub_100097BD0;
  v38 = 0;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 contentOffset];
  v17 = v16;
  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 safeAreaInsets];
  v20 = v19;

  scrollView4 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView4 safeAreaInsets];
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
    scrollView5 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView5 safeAreaInsets];
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
    v32[8] = week;
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

- (id)occurrenceAtPoint:(CGPoint)point
{
  v6 = CGPointZero;
  v3 = [(CompactWidthMonthViewController *)self _weekViewAtScrollPoint:&v6 pointInWeek:point.x, point.y];
  v4 = [v3 occurrenceAtPoint:v6];

  return v4;
}

- (void)showEditorForNewDraggedEvent:(id)event inWeek:(id)week
{
  eventCopy = event;
  model = [(MainViewController *)self model];
  v9 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:eventCopy model:model creationMethod:1 viewStart:2 eventEditViewDelegate:self];

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

- (void)dragAndDropRequestsPresentationOfViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[UnadaptableNavigationController alloc] initWithRootViewController:controllerCopy];

  [(UnadaptableNavigationController *)v5 setModalPresentationStyle:2];
  [(CompactWidthMonthViewController *)self presentViewController:v5 animated:1 completion:0];
}

@end
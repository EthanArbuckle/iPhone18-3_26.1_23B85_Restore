@interface EKDayViewController
- (BOOL)_delegateRespondsToDisplayedOccurrencesChangedMethod;
- (BOOL)_isCalendarDate:(id)date sameDayAsComponents:(id)components;
- (BOOL)_isCurrentDayToday;
- (BOOL)_isResizing;
- (BOOL)_isViewInVisibleRect:(id)rect;
- (BOOL)_shouldEndGestureEditingOnTap;
- (BOOL)_shouldRespondToApplicationDidBecomeActiveStateChange;
- (BOOL)blockableScrollViewShouldAllowScrolling;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)dayViewShouldDrawSynchronously:(id)synchronously;
- (BOOL)didScrollWhenEventGestureController:(id)controller scrollTimerFiredToMoveLeft:(BOOL)left right:(BOOL)right vertically:(BOOL)vertically towardPoint:(CGPoint)point;
- (BOOL)eventEditorPopoverActiveWhileDraggingForEventGestureController:(id)controller;
- (BOOL)eventGestureController:(id)controller didCommitOccurrence:(id)occurrence toDate:(double)date isAllDay:(BOOL)day span:(int64_t)span;
- (BOOL)eventGestureController:(id)controller isAllDayAtPoint:(CGPoint)point requireInsistence:(BOOL)insistence;
- (BOOL)eventGestureControllerShouldAllowLongPress:(id)press;
- (BOOL)interaction:(id)interaction canCreateEventAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction canCreateReminderAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction canPasteEventAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider;
- (BOOL)showWeekNumberLabel;
- (CGPoint)eventGestureController:(id)controller pointAtDate:(double)date isAllDay:(BOOL)day;
- (CGPoint)normalizedContentOffset;
- (CGPoint)pointAtDate:(double)date isAllDay:(BOOL)day;
- (EKDayViewController)initWithTargetSizeClass:(int64_t)class;
- (EKDayViewControllerDataSource)dataSource;
- (EKDayViewControllerDelegate)delegate;
- (NSArray)currentDayContentGridViewSubviews;
- (double)_weightedAllDayHeightForView:(id)view visibleRect:(CGRect)rect;
- (double)eventGestureController:(id)controller dateAtPoint:(CGPoint)point;
- (double)eventGestureController:(id)controller heightForAllDayOccurrenceView:(id)view;
- (double)eventGestureController:(id)controller heightForOccurrenceViewOfDuration:(double)duration;
- (double)eventGestureController:(id)controller widthForOccurrenceViewOfDays:(unint64_t)days;
- (double)eventGestureController:(id)controller yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence atPoint:(CGPoint)point;
- (double)horizontalOffsetForPagingForEventGestureController:(id)controller;
- (double)timedRegionOriginForEventGestureController:(id)controller;
- (double)trackingAreaMinimumYPosition;
- (id)_createGutterDayViewWithDayView:(id)view;
- (id)_eventGestureSuperview;
- (id)_eventsForCutOrCopy;
- (id)_eventsForDay:(id)day;
- (id)_occurrencesForDayView:(id)view;
- (id)createEventForEventGestureController:(id)controller;
- (id)createOccurrenceViewForEventGestures;
- (id)dayView:(id)view selectedCopyViewForOccurrence:(id)occurrence;
- (id)eventGestureController:(id)controller occurrenceViewAtPoint:(CGPoint)point ignoreSelectedCopyView:(BOOL)view;
- (id)eventsForStartDate:(id)date endDate:(id)endDate;
- (id)interaction:(id)interaction subtitleForPasteActionAtPoint:(CGPoint)point inView:(id)view;
- (id)interaction:(id)interaction titleForPasteActionAtPoint:(CGPoint)point inView:(id)view;
- (id)occurrenceViewForEvent:(id)event includeNextAndPreviousDays:(BOOL)days;
- (id)preferredEventsToSelectOnDate:(id)date;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (int64_t)_effectiveInterfaceOrientationForSize:(CGSize)size;
- (int64_t)dayViewContentInsetAdjustmentBehavior:(id)behavior;
- (void)_cancelAllLongTailCuttingCallbacks;
- (void)_cleanUpTargetDateComponents;
- (void)_completeDecelerationIfNeeded;
- (void)_completeScrollingAnimationIfNeeded;
- (void)_cutAnimationTailAfterDelayForDecelerationFromUserInput;
- (void)_cutAnimationTailAfterDelayForScrollAnimationFromExternalSource;
- (void)_didRespondToApplicationDidBecomeActiveStateChange;
- (void)_highlightEvent:(id)event dayViewDate:(double)date isAllDay:(BOOL)day;
- (void)_localeChanged:(id)changed;
- (void)_logUserStateDiagnostics:(id)diagnostics;
- (void)_notifyDelegateOfSelectedDateChange;
- (void)_performDisplayedOccurrencesChangedDelegateMethodWithTrigger:(int)trigger;
- (void)_relayoutDays;
- (void)_relayoutDaysDuringScrollingAndPerformDayChanges:(BOOL)changes;
- (void)_scrollToNowOnScrollViewDidEndScrollingAnimation:(id)animation;
- (void)_scrollViewDidEndDecelerating:(id)decelerating;
- (void)_setDayView:(id)view toDate:(id)date;
- (void)_setDisplayDate:(id)date forRepeat:(BOOL)repeat animate:(BOOL)animate;
- (void)_setDisplayDateInternal:(id)internal;
- (void)_setHorizontalContentOffsetUsingSpringAnimation:(CGPoint)animation;
- (void)_setNextAndPreviousFirstVisibleSecondToCurrent;
- (void)_showNowAfterScrollViewDidEndDecelerating:(id)decelerating;
- (void)_showNowTimerFired:(id)fired;
- (void)_showWeekNumbersPreferenceChanged:(id)changed;
- (void)_stopShowNowTimer;
- (void)_updateAllDayAreaHeight;
- (void)attemptDisplayReviewPrompt;
- (void)blockableScrollViewDidChangeFrameSize;
- (void)cleanUpAfterGestureFailureForEventGestureController:(id)controller;
- (void)copy:(id)copy;
- (void)createEvent:(BOOL)event atPoint:(CGPoint)point inView:(id)view;
- (void)cut:(id)cut;
- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source;
- (void)dayView:(id)view didCreateOccurrenceViews:(id)views;
- (void)dayView:(id)view didScaleDayViewWithScale:(double)scale;
- (void)dayView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated;
- (void)dayView:(id)view didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (void)dayView:(id)view didUpdateScrollPosition:(CGPoint)position;
- (void)dayView:(id)view firstVisibleSecondChanged:(unint64_t)changed;
- (void)dayView:(id)view isPinchingDayViewWithScale:(double)scale;
- (void)dayView:(id)view pointerDidTargetOccurrences:(id)occurrences;
- (void)dayViewDidCompleteAsyncLoadAndLayout:(id)layout;
- (void)dayViewDidTapEmptySpace:(id)space onDate:(id)date;
- (void)dealloc;
- (void)editorDidCancelEditingEvent:(id)event;
- (void)editorDidDeleteEvent:(id)event;
- (void)editorDidSaveEvent:(id)event;
- (void)eventGestureController:(id)controller addViewToScroller:(id)scroller isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller adjustDraggingView:(id)view forAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didCancelEditingOccurrence:(id)occurrence fadedOut:(BOOL)out;
- (void)eventGestureController:(id)controller didMoveToDate:(double)date isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didSetUpAtDate:(double)date isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didSingleTapOccurrence:(id)occurrence shouldExtendSelection:(BOOL)selection;
- (void)eventGestureController:(id)controller requestsPresentationOfViewController:(id)viewController;
- (void)eventGestureController:(id)controller requestsShowEvent:(id)event;
- (void)eventGestureControllerDidEndDragSession:(id)session;
- (void)externallyEndedGestureDragging;
- (void)hideTimelineHighlight;
- (void)interaction:(id)interaction pasteEventAtPoint:(CGPoint)point inView:(id)view;
- (void)layoutContainerView:(id)view;
- (void)loadData:(BOOL)data withTrigger:(int)trigger withCompletion:(id)completion;
- (void)loadDataBetweenStart:(id)start end:(id)end withTrigger:(int)trigger generation:(int)generation completionForCurrentDayReload:(id)reload;
- (void)loadView;
- (void)paste:(id)paste;
- (void)pasteboardManager:(id)manager beginEditingEvent:(id)event;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)pasteboardManager:(id)manager presentAlert:(id)alert;
- (void)preferredContentSizeDidChanged:(id)changed;
- (void)reloadDataForOccurrenceChangeWithGeneration:(int)generation;
- (void)reloadDataIfNeeded;
- (void)scrollDayViewAppropriatelyWithAnimation:(BOOL)animation;
- (void)scrollEventIntoView:(id)view animated:(BOOL)animated;
- (void)scrollToDate:(id)date animated:(BOOL)animated;
- (void)scrollToNow:(BOOL)now;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setAllowsDaySwitching:(BOOL)switching;
- (void)setAllowsSelection:(BOOL)selection;
- (void)setAnimateAllDayAreaHeight:(BOOL)height;
- (void)setCalendar:(id)calendar;
- (void)setDisplayDate:(id)date;
- (void)setFrame:(CGRect)frame gutterWidth:(double)width;
- (void)setGestureOccurrenceSuperview:(id)superview;
- (void)setGutterWidth:(double)width;
- (void)setPreloadExtraDays:(BOOL)days;
- (void)setTimeZone:(id)zone;
- (void)showTimelineHighlightForTime:(id)time;
- (void)significantTimeChangeOccurred;
- (void)timeZoneChanged;
- (void)updateGutterTopLabelsAppearance;
- (void)validateInterfaceOrientationWithFutureOrientation:(int64_t)orientation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation EKDayViewController

- (void)updateGutterTopLabelsAppearance
{
  [(EKDayViewWithGutters *)self->_previousDayWithGutter setShowWeekNumberLabel:[(EKDayViewController *)self showWeekNumberLabel]];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter setShowWeekDayLabel:[(EKDayViewController *)self showWeekdayLabel]];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter updateLabelTexts];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter updateDividerLineVisibility];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter setNeedsLayout];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter setShowWeekNumberLabel:[(EKDayViewController *)self showWeekNumberLabel]];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter setShowWeekDayLabel:[(EKDayViewController *)self showWeekdayLabel]];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter updateLabelTexts];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter updateDividerLineVisibility];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter setNeedsLayout];
  [(EKDayViewWithGutters *)self->_nextDayWithGutter setShowWeekNumberLabel:[(EKDayViewController *)self showWeekNumberLabel]];
  [(EKDayViewWithGutters *)self->_nextDayWithGutter setShowWeekDayLabel:[(EKDayViewController *)self showWeekdayLabel]];
  [(EKDayViewWithGutters *)self->_nextDayWithGutter updateLabelTexts];
  [(EKDayViewWithGutters *)self->_nextDayWithGutter updateDividerLineVisibility];
  nextDayWithGutter = self->_nextDayWithGutter;

  [(EKDayViewWithGutters *)nextDayWithGutter setNeedsLayout];
}

- (void)_completeScrollingAnimationIfNeeded
{
  if (self->_needToCompleteScrollingAnimation)
  {
    self->_needToCompleteScrollingAnimation = 0;
    [(EKDayViewController *)self _relayoutDaysDuringScrollingAndPerformDayChanges:0];

    [(EKDayViewController *)self _cleanUpTargetDateComponents];
  }
}

- (void)_completeDecelerationIfNeeded
{
  if (self->_needToCompleteDeceleration)
  {
    self->_needToCompleteDeceleration = 0;
    [(EKDayViewController *)self _scrollViewDidEndDecelerating:self->_horizontalScrollingView];
  }
}

- (BOOL)_isCurrentDayToday
{
  displayDate = [(EKDayView *)self->_currentDay displayDate];
  v3 = CUIKTodayComponents();
  v4 = [displayDate isEqual:v3];

  return v4;
}

- (void)loadView
{
  EKUIMultiwindowAssert(self->_targetSizeClass != 0, @"Target size class was not specified.", v2, v3, v4, v5, v6, v7, v71);
  targetSizeClass = self->_targetSizeClass;
  v10 = dispatch_queue_create("dayControllerReload", 0);
  reloadQueue = self->_reloadQueue;
  self->_reloadQueue = v10;

  v12 = dispatch_queue_create("dayControllerProtection", 0);
  protectionQueue = self->_protectionQueue;
  self->_protectionQueue = v12;

  v14 = 0.0;
  v76 = [[EKLayoutContainerView alloc] initWithFrame:0.0, 0.0, 400.0, 600.0];
  [(EKLayoutContainerView *)v76 setAutoresizingMask:18];
  [(EKLayoutContainerView *)v76 setDelegate:self];
  [(EKDayViewController *)self setView:v76];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(EKLayoutContainerView *)v76 setBackgroundColor:whiteColor];

  if (!self->_eventGestureController)
  {
    v16 = [[EKEventGestureController alloc] initWithView:v76];
    eventGestureController = self->_eventGestureController;
    self->_eventGestureController = v16;

    [(EKEventGestureController *)self->_eventGestureController setDelegate:self];
    [(EKEventGestureController *)self->_eventGestureController setUsesHorizontalDragLocking:1];
  }

  view = [(EKDayViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v78);

  view2 = [(EKDayViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v79);

  if ([(EKDayViewController *)self showWeekdayLabel])
  {
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v14 = v22;
  }

  if (targetSizeClass != 2)
  {
    Height = Height + -88.0;
  }

  v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, Width, Height}];
  clipView = self->_clipView;
  self->_clipView = v23;

  [(UIView *)self->_clipView setAutoresizingMask:18];
  [(UIView *)self->_clipView setClipsToBounds:1];
  gutterWidth = self->_gutterWidth;
  if (targetSizeClass == 2)
  {
    v26 = self->_gutterWidth;
  }

  else
  {
    v26 = -gutterWidth;
  }

  if (targetSizeClass == 2)
  {
    Width = Width + gutterWidth * -4.0;
  }

  height = [[BlockableScrollView alloc] initWithFrame:v26, 0.0, Width + gutterWidth * 2.0, Height];
  [(BlockableScrollView *)height setBlockableDelegate:self];
  v75 = height;
  objc_storeStrong(&self->_horizontalScrollingView, height);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UIScrollView *)self->_horizontalScrollingView setBackgroundColor:systemBackgroundColor];

  if (CalCanvasPocketEnabled())
  {
    [(UIScrollView *)self->_horizontalScrollingView _setPocketStyle:1 forEdge:2];
    [(UIScrollView *)self->_horizontalScrollingView _setHiddenPocketEdges:1];
  }

  [(UIScrollView *)self->_horizontalScrollingView setBounces:1];
  [(UIScrollView *)self->_horizontalScrollingView setPagingEnabled:1];
  [(UIScrollView *)self->_horizontalScrollingView setOpaque:1];
  [(UIScrollView *)self->_horizontalScrollingView setDelegate:self];
  [(UIScrollView *)self->_horizontalScrollingView setScrollsToTop:0];
  [(UIScrollView *)self->_horizontalScrollingView setContentSize:self->_gutterWidth + self->_gutterWidth + Width * 3.0, 0.0];
  [(UIScrollView *)self->_horizontalScrollingView setAutoresizingMask:18];
  [(UIScrollView *)self->_horizontalScrollingView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_horizontalScrollingView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_horizontalScrollingView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(UIScrollView *)self->_horizontalScrollingView setDirectionalLockEnabled:1];
  [(UIScrollView *)self->_horizontalScrollingView setScrollEnabled:[(EKDayViewController *)self allowsDaySwitching]];
  [(UIScrollView *)self->_horizontalScrollingView setClipsToBounds:targetSizeClass != 2];
  [(UIScrollView *)self->_horizontalScrollingView setContentInsetAdjustmentBehavior:2];
  [(UIView *)self->_clipView addSubview:self->_horizontalScrollingView];
  [(EKLayoutContainerView *)v76 addSubview:self->_clipView];
  v29 = self->_gutterWidth;
  v30 = Height - v14;
  interfaceOrientation = [(EKDayViewController *)self interfaceOrientation];
  v32 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:0xFFFFFFFFLL calendar:self->_calendar];
  v33 = [EKDayView alloc];
  v34 = self->_targetSizeClass;
  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  LOBYTE(v72) = 0;
  v36 = [(EKDayView *)v33 initWithFrame:v34 sizeClass:interfaceOrientation orientation:v32 displayDate:systemBackgroundColor2 backgroundColor:1 opaque:1 scrollbarShowsInside:v29 isMiniPreviewInEventDetail:v14 rightClickDelegate:Width, v30, v72, self];
  previousDay = self->_previousDay;
  self->_previousDay = v36;

  v38 = [EKDayView alloc];
  v39 = self->_targetSizeClass;
  displayDate = self->_displayDate;
  systemBackgroundColor3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  LOBYTE(v73) = 0;
  v42 = [(EKDayView *)v38 initWithFrame:v39 sizeClass:interfaceOrientation orientation:displayDate displayDate:systemBackgroundColor3 backgroundColor:1 opaque:1 scrollbarShowsInside:v29 isMiniPreviewInEventDetail:v14 rightClickDelegate:Width, v30, v73, self];
  currentDay = self->_currentDay;
  self->_currentDay = v42;

  v44 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:1 calendar:self->_calendar];
  v45 = [EKDayView alloc];
  v46 = self->_targetSizeClass;
  v47 = v44;
  systemBackgroundColor4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  LOBYTE(v74) = 0;
  v49 = [(EKDayView *)v45 initWithFrame:v46 sizeClass:interfaceOrientation orientation:v47 displayDate:systemBackgroundColor4 backgroundColor:1 opaque:1 scrollbarShowsInside:v29 isMiniPreviewInEventDetail:v14 rightClickDelegate:Width, v30, v74, self];
  nextDay = self->_nextDay;
  self->_nextDay = v49;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v45) = objc_opt_respondsToSelector();

  if ((v45 & 1) != 0 && (v52 = objc_loadWeakRetained(&self->_delegate), [v52 dayViewControllerPersistedHourScalePreference:self], v54 = v53, v52, v54 > 0.0))
  {
    [(EKDayView *)self->_currentDay setHourScale:v54];
    [(EKDayView *)self->_previousDay setHourScale:v54];
    [(EKDayView *)self->_nextDay setHourScale:v54];
  }

  else
  {
    mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
    dayViewHourScale = [mEMORY[0x1E6993470] dayViewHourScale];

    if (dayViewHourScale)
    {
      [dayViewHourScale floatValue];
      v58 = v57;
      [(EKDayView *)self->_currentDay setHourScale:v57];
      [(EKDayView *)self->_previousDay setHourScale:v58];
      [(EKDayView *)self->_nextDay setHourScale:v58];
    }
  }

  v59 = [(EKDayViewController *)self _createGutterDayViewWithDayView:self->_previousDay];
  previousDayWithGutter = self->_previousDayWithGutter;
  self->_previousDayWithGutter = v59;

  v61 = [(EKDayViewController *)self _createGutterDayViewWithDayView:self->_currentDay];
  currentDayWithGutter = self->_currentDayWithGutter;
  self->_currentDayWithGutter = v61;

  v63 = [(EKDayViewController *)self _createGutterDayViewWithDayView:self->_nextDay];
  nextDayWithGutter = self->_nextDayWithGutter;
  self->_nextDayWithGutter = v63;

  [(UIScrollView *)self->_horizontalScrollingView addSubview:self->_currentDayWithGutter];
  [(EKDayView *)self->_currentDay setCalendar:self->_calendar];
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  [(EKDayView *)self->_currentDay setTimeZone:timeZone];

  [(EKDayView *)self->_currentDay setDelegate:self];
  [(EKDayView *)self->_currentDay setDataSource:self];
  [(EKDayView *)self->_currentDay setAllowsOccurrenceSelection:self->_allowsSelection];
  if (CalSolariumEnabled())
  {
    [(UIScrollView *)self->_horizontalScrollingView _setHiddenPocketEdges:1];
  }

  v66 = self->_nextDay;
  if (v66)
  {
    [(EKDayView *)v66 setCalendar:self->_calendar];
    timeZone2 = [(NSCalendar *)self->_calendar timeZone];
    [(EKDayView *)self->_nextDay setTimeZone:timeZone2];

    [(EKDayView *)self->_nextDay setDelegate:self];
    [(EKDayView *)self->_nextDay setDataSource:self];
    [(EKDayView *)self->_nextDay setAllowsOccurrenceSelection:self->_allowsSelection];
  }

  v68 = self->_previousDay;
  if (v68)
  {
    [(EKDayView *)v68 setCalendar:self->_calendar];
    timeZone3 = [(NSCalendar *)self->_calendar timeZone];
    [(EKDayView *)self->_previousDay setTimeZone:timeZone3];

    [(EKDayView *)self->_previousDay setDelegate:self];
    [(EKDayView *)self->_previousDay setDataSource:self];
    [(EKDayView *)self->_previousDay setAllowsOccurrenceSelection:self->_allowsSelection];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeChanged_ name:*MEMORY[0x1E6993308] object:0];
  [defaultCenter addObserver:self selector:sel__showWeekNumbersPreferenceChanged_ name:*MEMORY[0x1E6993348] object:0];
  [defaultCenter addObserver:self selector:sel_preferredContentSizeDidChanged_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (BOOL)showWeekNumberLabel
{
  mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
  showWeekNumbers = [mEMORY[0x1E6993470] showWeekNumbers];

  return showWeekNumbers;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewDidLoad];
  if ([(EKDayViewController *)self shouldLogVisibleEvents])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__logUserStateDiagnostics_ name:*MEMORY[0x1E6993368] object:0];
  }
}

- (void)blockableScrollViewDidChangeFrameSize
{
  self->_requiresFullDayRelayout = 1;
  view = [(EKDayViewController *)self view];
  [view setNeedsLayout];
}

- (EKDayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reloadDataIfNeeded
{
  if (self->_needsReload)
  {
    [(EKDayViewController *)self reloadData];
  }
}

- (void)_relayoutDays
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  [(UIScrollView *)self->_horizontalScrollingView bounds];
  v5 = v4;
  v7 = v6;
  if (IsLeftToRight)
  {
    v8 = &OBJC_IVAR___EKDayViewController__previousDayWithGutter;
  }

  else
  {
    v8 = &OBJC_IVAR___EKDayViewController__nextDayWithGutter;
  }

  if (IsLeftToRight)
  {
    v9 = &OBJC_IVAR___EKDayViewController__nextDayWithGutter;
  }

  else
  {
    v9 = &OBJC_IVAR___EKDayViewController__previousDayWithGutter;
  }

  [*(&self->super.super.super.isa + *v8) setFrame:{0.0, 0.0}];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter setFrame:v5, 0.0, v5, v7];
  [*(&self->super.super.super.isa + *v9) setFrame:{v5 + v5, 0.0, v5, v7}];
  [(UIScrollView *)self->_horizontalScrollingView setContentSize:v5 * 3.0, v7];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter frame];
  [(UIScrollView *)self->_horizontalScrollingView setContentOffset:?];

  [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
}

- (BOOL)_isResizing
{
  if (self->_sizeTransitionsInProgress > 0 || self->_requiresFullDayRelayout)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  horizontalScrollingView = self->_horizontalScrollingView;

  return [(UIScrollView *)horizontalScrollingView isResizing];
}

- (void)_setNextAndPreviousFirstVisibleSecondToCurrent
{
  superview = [(EKDayViewWithGutters *)self->_previousDayWithGutter superview];
  if (superview && (v4 = superview, [(EKDayViewWithGutters *)self->_nextDayWithGutter superview], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = 0;
  }

  else
  {
    navigationController = [(EKDayViewController *)self navigationController];
    view = [navigationController view];
    window = [view window];
    EKUIPushFallbackSizingContextWithViewHierarchy(window);

    v6 = 1;
  }

  [(EKDayView *)self->_previousDay setFirstVisibleSecond:[(EKDayView *)self->_currentDay firstVisibleSecond]];
  [(EKDayView *)self->_nextDay setFirstVisibleSecond:[(EKDayView *)self->_currentDay firstVisibleSecond]];
  if (v6)
  {
    navigationController2 = [(EKDayViewController *)self navigationController];
    view2 = [navigationController2 view];
    window2 = [view2 window];
    EKUIPopFallbackSizingContextWithViewHierarchy(window2);
  }
}

- (void)viewDidLayoutSubviews
{
  delegate = [(EKDayViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKDayViewController *)self delegate];
    [delegate2 updateSelectedOccurrenceView];
  }
}

- (void)_updateAllDayAreaHeight
{
  if ([(EKDayViewController *)self animateAllDayAreaHeight])
  {
    horizontalScrollingView = self->_horizontalScrollingView;
    [(UIScrollView *)horizontalScrollingView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    superview = [(UIScrollView *)self->_horizontalScrollingView superview];
    [(UIScrollView *)horizontalScrollingView convertRect:superview fromView:v5, v7, v9, v11];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [(EKDayViewController *)self _weightedAllDayHeightForView:self->_previousDayWithGutter visibleRect:v14, v16, v18, v20];
    v22 = v21 + 0.0;
    [(EKDayViewController *)self _weightedAllDayHeightForView:self->_currentDayWithGutter visibleRect:v14, v16, v18, v20];
    v24 = v22 + v23;
    [(EKDayViewController *)self _weightedAllDayHeightForView:self->_nextDayWithGutter visibleRect:v14, v16, v18, v20];
    v26 = v24 + v25;
    [(EKDayViewWithGutters *)self->_previousDayWithGutter setAllDayHeight:v24 + v25];
    [(EKDayViewWithGutters *)self->_currentDayWithGutter setAllDayHeight:v26];
    [(EKDayViewWithGutters *)self->_nextDayWithGutter setAllDayHeight:v26];
    dayView = [(EKDayViewWithGutters *)self->_previousDayWithGutter dayView];
    allDayView = [dayView allDayView];
    [allDayView setFixedHeight:v26];

    dayView2 = [(EKDayViewWithGutters *)self->_currentDayWithGutter dayView];
    allDayView2 = [dayView2 allDayView];
    [allDayView2 setFixedHeight:v26];

    dayView3 = [(EKDayViewWithGutters *)self->_nextDayWithGutter dayView];
    allDayView3 = [dayView3 allDayView];
    [allDayView3 setFixedHeight:v26];
  }
}

- (EKDayViewController)initWithTargetSizeClass:(int64_t)class
{
  v13.receiver = self;
  v13.super_class = EKDayViewController;
  v4 = [(EKDayViewController *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_shouldScrollToNowOnViewWillAppear = 1;
    v4->_allowsDaySwitching = 1;
    v4->_allowsSelection = 1;
    v6 = CUIKTodayComponents();
    displayDate = v5->_displayDate;
    v5->_displayDate = v6;

    v8 = CUIKCalendar();
    calendar = v5->_calendar;
    v5->_calendar = v8;

    v5->_gutterWidth = 0.0;
    v10 = objc_opt_new();
    decelerationSpringFactory = v5->_decelerationSpringFactory;
    v5->_decelerationSpringFactory = v10;

    v5->_preloadExtraDays = 1;
    v5->_targetSizeClass = class;
    v5->_needsReload = 1;
    [(EKDayViewController *)v5 _setDisplayDateInternal:v5->_displayDate];
  }

  return v5;
}

- (void)dealloc
{
  [(UIScrollView *)self->_horizontalScrollingView setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(EKEventGestureController *)self->_eventGestureController invalidate];
  [(EKDayViewController *)self _stopShowNowTimer];
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 dealloc];
}

- (void)scrollDayViewAppropriatelyWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 selectedOccurrencesForDayViewController:self];

    v9 = [v8 count] == 0;
  }

  else
  {
    v9 = 1;
  }

  displayDate = self->_displayDate;
  v11 = CUIKTodayComponents();
  LODWORD(displayDate) = [(NSDateComponents *)displayDate isEqual:v11];

  if (displayDate)
  {
    v12 = !v9;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

    [(EKDayViewController *)self scrollEventsIntoViewAnimated:animationCopy];
  }

  else
  {

    [(EKDayViewController *)self scrollToNow:animationCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = EKDayViewController;
  [(EKDayViewController *)&v5 viewWillAppear:appear];
  if (self->_shouldScrollToNowOnViewWillAppear)
  {
    self->_shouldScrollToNowOnViewWillAppear = 0;
    currentDay = self->_currentDay;
    if (self->_startingFirstVisibleSecond < 0)
    {
      [(EKDayView *)currentDay scrollToNowAnimated:0 whenFinished:0];
    }

    else
    {
      [(EKDayView *)currentDay setFirstVisibleSecond:?];
      [(EKDayView *)self->_currentDay layoutIfNeeded];
    }
  }

  [(EKDayViewController *)self reloadDataIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewDidAppear:appear];
  self->_viewAppeared = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewWillDisappear:disappear];
  self->_viewAppeared = 0;
  [(EKDayViewController *)self _stopShowNowTimer];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewDidDisappear:disappear];
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
}

- (void)setFrame:(CGRect)frame gutterWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ++self->_sizeTransitionsInProgress;
  view = [(EKDayViewController *)self view];
  [view setFrame:{x, y, width, height}];

  view2 = [(EKDayViewController *)self view];
  [view2 layoutSubviews];

  [(EKDayViewController *)self setGutterWidth:width];
  [(EKDayViewController *)self scrollDayViewAppropriatelyWithAnimation:0];
  if ((*(self + 1056) & 1) == 0)
  {
    [(EKDayViewController *)self _relayoutDays];
  }

  --self->_sizeTransitionsInProgress;
}

- (void)setAllowsDaySwitching:(BOOL)switching
{
  if (self->_allowsDaySwitching != switching)
  {
    self->_allowsDaySwitching = switching;
    [(UIScrollView *)self->_horizontalScrollingView setScrollEnabled:?];
  }
}

- (void)setAllowsSelection:(BOOL)selection
{
  if (self->_allowsSelection != selection)
  {
    self->_allowsSelection = selection;
    [(EKDayView *)self->_currentDay setAllowsOccurrenceSelection:?];
  }
}

- (void)setPreloadExtraDays:(BOOL)days
{
  if (self->_preloadExtraDays != days)
  {
    self->_preloadExtraDays = days;
    if (days)
    {
      if (self->_needsReload)
      {
        [(EKDayViewController *)self reloadData];
      }

      else
      {
        [(EKDayViewController *)self loadData:1 withTrigger:3 withCompletion:0];
      }
    }
  }
}

- (void)layoutContainerView:(id)view
{
  self->_requiresFullDayRelayout = 0;
  [view bounds];
  v7 = v4;
  v8 = v5;
  v9 = v6;
  clipView = self->_clipView;
  if (clipView)
  {
    [(UIView *)clipView setFrame:v4, 0.0, v5, v6];
    gutterWidth = self->_gutterWidth;
    v19.origin.y = 0.0;
    v19.origin.x = v7;
    v19.size.width = v8;
    v19.size.height = v9;
    v12 = CGRectGetWidth(v19) + gutterWidth * 2.0;
    view = [(EKDayViewController *)self view];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

    if (IsRegularInViewHierarchy)
    {
      v15 = self->_gutterWidth;
      v12 = v12 + v15 * -4.0;
    }

    else
    {
      v15 = -gutterWidth;
    }

    v20.origin.y = 0.0;
    v20.origin.x = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    Height = CGRectGetHeight(v20);
    [(UIScrollView *)self->_horizontalScrollingView setFrame:v15, 0.0, v12, Height];
    v21.origin.y = 0.0;
    v21.origin.x = v15;
    v21.size.width = v12;
    v21.size.height = Height;
    [(UIScrollView *)self->_horizontalScrollingView setContentSize:CGRectGetWidth(v21) * 3.0, 0.0];
  }

  else
  {
    [(EKDayView *)self->_currentDay setFrame:v4, 0.0, v5, v6];
  }

  if ([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress])
  {
    isScrollAnimating = [(UIScrollView *)self->_horizontalScrollingView isScrollAnimating];
  }

  else
  {
    isScrollAnimating = 0;
  }

  if ((*(self + 1056) & 1) == 0 && ![(UIScrollView *)self->_horizontalScrollingView isTracking]&& !((self->_springAnimatedDecelerationsInProgress > 0) | isScrollAnimating & 1) && !self->_needToCompleteScrollingAnimation && !self->_needToCompleteDeceleration)
  {

    [(EKDayViewController *)self _relayoutDays];
  }
}

- (void)setGutterWidth:(double)width
{
  self->_gutterWidth = width;
  [(EKDayViewWithGutters *)self->_nextDayWithGutter setGutterWidth:?];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter setGutterWidth:width];
  currentDayWithGutter = self->_currentDayWithGutter;

  [(EKDayViewWithGutters *)currentDayWithGutter setGutterWidth:width];
}

- (id)occurrenceViewForEvent:(id)event includeNextAndPreviousDays:(BOOL)days
{
  daysCopy = days;
  eventCopy = event;
  v7 = self->_currentDay;
  v8 = [(EKDayView *)self->_currentDay occurrenceViewForEvent:eventCopy];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !daysCopy;
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v10 = self->_nextDay;

    v11 = [(EKDayView *)self->_nextDay occurrenceViewForEvent:eventCopy];
    v7 = v10;
  }

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !daysCopy;
  }

  if (!v12)
  {
    v13 = self->_previousDay;

    v11 = [(EKDayView *)self->_previousDay occurrenceViewForEvent:eventCopy];
    v7 = v13;
  }

  if (v11)
  {
    view = [(EKDayViewController *)self view];
    window = [view window];
    EKUIPushFallbackSizingContextWithViewHierarchy(window);

    [(EKDayView *)v7 layoutIfNeeded];
    view2 = [(EKDayViewController *)self view];
    window2 = [view2 window];
    EKUIPopFallbackSizingContextWithViewHierarchy(window2);
  }

  return v11;
}

- (NSArray)currentDayContentGridViewSubviews
{
  dayContent = [(EKDayView *)self->_currentDay dayContent];
  grid = [dayContent grid];
  occurrenceContainerView = [grid occurrenceContainerView];
  subviews = [occurrenceContainerView subviews];

  return subviews;
}

- (void)setAnimateAllDayAreaHeight:(BOOL)height
{
  if (self->_animateAllDayAreaHeight != height)
  {
    self->_animateAllDayAreaHeight = height;
    if (height)
    {

      [(EKDayViewController *)self _updateAllDayAreaHeight];
    }

    else
    {
      dayView = [(EKDayViewWithGutters *)self->_currentDayWithGutter dayView];
      allDayView = [dayView allDayView];
      [allDayView setFixedHeight:-1.0];

      dayView2 = [(EKDayViewWithGutters *)self->_previousDayWithGutter dayView];
      allDayView2 = [dayView2 allDayView];
      [allDayView2 setFixedHeight:-1.0];

      dayView3 = [(EKDayViewWithGutters *)self->_nextDayWithGutter dayView];
      allDayView3 = [dayView3 allDayView];
      [allDayView3 setFixedHeight:-1.0];
    }
  }
}

- (BOOL)_isCalendarDate:(id)date sameDayAsComponents:(id)components
{
  dateCopy = date;
  componentsCopy = components;
  v7 = [dateCopy era];
  if (v7 == [componentsCopy era] && (v8 = objc_msgSend(dateCopy, "year"), v8 == objc_msgSend(componentsCopy, "year")) && (v9 = objc_msgSend(dateCopy, "month"), v9 == objc_msgSend(componentsCopy, "month")))
  {
    v10 = [dateCopy day];
    v11 = v10 == [componentsCopy day];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)preferredEventsToSelectOnDate:(id)date
{
  v77 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  p_currentDay = &self->_currentDay;
  displayDate = [(EKDayView *)self->_currentDay displayDate];
  v7 = [(EKDayViewController *)self _isCalendarDate:dateCopy sameDayAsComponents:displayDate];

  if (v7 || (p_currentDay = &self->_previousDay, [(EKDayView *)self->_previousDay displayDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(EKDayViewController *)self _isCalendarDate:dateCopy sameDayAsComponents:v8], v8, v9) || (p_currentDay = &self->_nextDay, [(EKDayView *)self->_nextDay displayDate], v10 = objc_claimAutoreleasedReturnValue(), v11 = [(EKDayViewController *)self _isCalendarDate:dateCopy sameDayAsComponents:v10], v10, v11))
  {
    v12 = *p_currentDay;
  }

  else
  {
    v12 = 0;
  }

  v13 = CUIKTodayComponents();
  displayDate2 = [(EKDayView *)v12 displayDate];
  v15 = [displayDate2 era];
  if (v15 == [v13 era])
  {
    displayDate3 = [(EKDayView *)v12 displayDate];
    year = [displayDate3 year];
    if (year == [v13 year])
    {
      displayDate4 = [(EKDayView *)v12 displayDate];
      month = [displayDate4 month];
      if (month == [v13 month])
      {
        displayDate5 = [(EKDayView *)v12 displayDate];
        v21 = v12;
        v22 = dateCopy;
        v23 = [displayDate5 day];
        v24 = v23 == [v13 day];
        dateCopy = v22;
        v12 = v21;
        v25 = v24;
        v68 = v25;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  v65 = CUIKNowDate();
  occurrenceViews = [(EKDayView *)v12 occurrenceViews];
  v27 = occurrenceViews;
  if (occurrenceViews && [occurrenceViews count])
  {
    v63 = v27;
    v64 = v13;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v29)
    {
      v30 = v29;
      v62 = v12;
      v69 = 0;
      v70 = dateCopy;
      v66 = 0;
      selfCopy = self;
      v71 = *v73;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v73 != v71)
          {
            objc_enumerationMutation(v28);
          }

          v32 = v28;
          v33 = *(*(&v72 + 1) + 8 * i);
          occurrence = [v33 occurrence];
          startCalendarDate = [occurrence startCalendarDate];
          endCalendarDate = [occurrence endCalendarDate];
          dayComponents = [endCalendarDate dayComponents];
          v38 = [(EKDayViewController *)self _isCalendarDate:startCalendarDate sameDayAsComponents:dayComponents];

          if (v38 || ([occurrence startDate], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "date"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v39, "compare:", v40), v40, v39, v41 != -1))
          {
            if ([occurrence status] != 3 && (CUIKEventDisplaysAsDeclined() & 1) == 0 && objc_msgSend(occurrence, "existsInStore"))
            {
              if (v69)
              {
                occurrence2 = [v69 occurrence];
                startDate = [occurrence2 startDate];
                startDate2 = [occurrence startDate];
                v45 = [startDate compare:startDate2];

                if (v45 == 1)
                {
                  v46 = v33;

                  v47 = v46;
                }

                else
                {
                  v47 = v69;
                }
              }

              else
              {
                v47 = v33;
              }

              v69 = v47;
              self = selfCopy;
              if (v68)
              {
                endDateUnadjustedForLegacyClients = [occurrence endDateUnadjustedForLegacyClients];
                v49 = [endDateUnadjustedForLegacyClients compare:v65];

                if (v49 == 1)
                {
                  if (v66)
                  {
                    occurrence3 = [v66 occurrence];
                    startDate3 = [occurrence3 startDate];
                    startDate4 = [occurrence startDate];
                    v53 = [startDate3 compare:startDate4];

                    if (v53 == 1)
                    {
                      v54 = v33;

                      v66 = v54;
                    }
                  }

                  else
                  {
                    v66 = v33;
                  }
                }
              }
            }
          }

          v28 = v32;
        }

        v30 = [v32 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v30);

      v12 = v62;
      if (v66)
      {
        occurrences = [v66 occurrences];

        v56 = v69;
        dateCopy = v70;
        v27 = v63;
        v13 = v64;
        goto LABEL_53;
      }

      dateCopy = v70;
      v27 = v63;
      v13 = v64;
      if (v69)
      {
        occurrences = [v69 occurrences];
        v56 = v69;
        goto LABEL_53;
      }
    }

    else
    {
    }
  }

  allDayView = [(EKDayView *)v12 allDayView];
  occurrences = [allDayView occurrenceViews];

  v56 = occurrences;
  if (occurrences)
  {
    if ([occurrences count])
    {
      v58 = occurrences;
      firstObject = [occurrences firstObject];
      occurrence4 = [firstObject occurrence];

      if (occurrence4)
      {
        occurrences = [firstObject occurrences];
      }

      else
      {
        occurrences = 0;
      }

      v56 = v58;
    }

    else
    {
      occurrences = 0;
    }
  }

LABEL_53:

  return occurrences;
}

- (int64_t)_effectiveInterfaceOrientationForSize:(CGSize)size
{
  if (size.height > size.width)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)_eventsForCutOrCopy
{
  event = [(EKEventGestureController *)self->_eventGestureController event];

  if (event)
  {
    v4 = MEMORY[0x1E695DFD8];
    event2 = [(EKEventGestureController *)self->_eventGestureController event];
    v6 = [v4 setWithObject:event2];
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    event2 = [v11 selectedOccurrencesForDayViewController:self];

    if (![event2 count])
    {
      v7 = 0;
      goto LABEL_4;
    }

    v6 = [MEMORY[0x1E695DFD8] setWithArray:event2];
LABEL_3:
    v7 = v6;
LABEL_4:

    goto LABEL_5;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (void)copy:(id)copy
{
  _eventsForCutOrCopy = [(EKDayViewController *)self _eventsForCutOrCopy];
  if ([_eventsForCutOrCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained pasteboardManagerForDayViewController:self];

    [v5 copyEvents:_eventsForCutOrCopy delegate:self];
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }
}

- (void)cut:(id)cut
{
  _eventsForCutOrCopy = [(EKDayViewController *)self _eventsForCutOrCopy];
  if ([_eventsForCutOrCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained pasteboardManagerForDayViewController:self];

    [v5 cutEvents:_eventsForCutOrCopy delegate:self];
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }
}

- (void)paste:(id)paste
{
  _eventsForCutOrCopy = [(EKDayViewController *)self _eventsForCutOrCopy];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained pasteboardManagerForDayViewController:self];

  if ([_eventsForCutOrCopy count] == 1)
  {
    anyObject = [_eventsForCutOrCopy anyObject];
    startDate = [anyObject startDate];
    [v5 setDateForPaste:startDate];
  }

  else
  {
    anyObject = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
    [v5 setDateForPaste:anyObject];
  }

  [v5 pasteEventsWithDateMode:0 delegate:self];
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (([MEMORY[0x1E6993458] declinesToPerformCutCopyPasteAction:action withSender:senderCopy] & 1) == 0)
  {
    if (sel_paste_ == action)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      _eventsForCutOrCopy = [WeakRetained pasteboardManagerForDayViewController:self];

      canPerformPaste = [_eventsForCutOrCopy canPerformPaste];
    }

    else
    {
      if (sel_copy_ == action)
      {
        v11 = MEMORY[0x1E6993458];
        _eventsForCutOrCopy = [(EKDayViewController *)self _eventsForCutOrCopy];
        v12 = v11;
        v13 = 1;
      }

      else
      {
        if (sel_cut_ != action)
        {
          v16.receiver = self;
          v16.super_class = EKDayViewController;
          v7 = [(EKDayViewController *)&v16 canPerformAction:action withSender:senderCopy];
          goto LABEL_12;
        }

        v14 = MEMORY[0x1E6993458];
        _eventsForCutOrCopy = [(EKDayViewController *)self _eventsForCutOrCopy];
        v12 = v14;
        v13 = 0;
      }

      canPerformPaste = [v12 allEventsValidForAction:v13 fromEvents:_eventsForCutOrCopy];
    }

    v7 = canPerformPaste;

    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)dayView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventCopy = event;
  event = [(EKEventGestureController *)self->_eventGestureController event];

  if (!event)
  {
    if (!eventCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  if ([(EKDayViewController *)self _shouldEndGestureEditingOnTap]&& ![(EKEventGestureController *)self->_eventGestureController dragGestureInProgress])
  {
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

  if ([(EKDayViewController *)self notifyWhenTapOtherEventDuringDragging])
  {
LABEL_8:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        [v12 dayViewController:self didSelectEvent:eventCopy animated:1 userInitiated:initiatedCopy];
      }
    }
  }

LABEL_11:
}

- (void)dayView:(id)view didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 dayViewController:self didSelectEvents:eventsCopy animated:1 userInitiated:initiatedCopy];
    }
  }
}

- (void)dayView:(id)view pointerDidTargetOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 dayViewController:self pointerDidTargetOccurrences:occurrencesCopy];
    }
  }
}

- (void)dayView:(id)view didCreateOccurrenceViews:(id)views
{
  v5 = [(EKEventGestureController *)self->_eventGestureController draggingView:view];

  if (v5)
  {
    draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];
    layer = [draggingView layer];
    animationKeys = [layer animationKeys];
    v9 = [animationKeys count];

    if (!v9)
    {
      eventGestureController = self->_eventGestureController;

      [(EKEventGestureController *)eventGestureController updateDraggingOccurrence];
    }
  }
}

- (void)dayView:(id)view didScaleDayViewWithScale:(double)scale
{
  [(EKDayView *)self->_previousDay setHourScale:view];
  [(EKDayView *)self->_previousDay setNeedsLayout];
  [(EKDayView *)self->_nextDay setHourScale:scale];
  [(EKDayView *)self->_nextDay setNeedsLayout];
  mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
  *&v7 = scale;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [mEMORY[0x1E6993470] setDayViewHourScale:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 dayViewController:self requestsSaveHourScalePreference:scale];
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 dayViewControllerDidFinishPinchingDayView:self];
  }

  eventGestureController = self->_eventGestureController;

  [(EKEventGestureController *)eventGestureController updateDraggingOccurrenceFrame];
}

- (void)dayView:(id)view isPinchingDayViewWithScale:(double)scale
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewControllerIsPinchingDayView:self];
  }

  eventGestureController = self->_eventGestureController;

  [(EKEventGestureController *)eventGestureController updateDraggingOccurrenceFrame];
}

- (void)dayViewDidCompleteAsyncLoadAndLayout:(id)layout
{
  if (self->_currentDay == layout)
  {
    draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];

    if (draggingView)
    {
      [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrenceForced:1 animated:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dayViewControllerCurrentDayDidCompleteAsyncLoadAndLayout:self];
    }
  }
}

- (id)dayView:(id)view selectedCopyViewForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 dayViewController:self selectedCopyViewForView:occurrenceCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)dayViewShouldDrawSynchronously:(id)synchronously
{
  if (self->_currentDay != synchronously)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 dayViewControllerShouldDrawTodaySynchronously:self];

  return v7;
}

- (id)presentationControllerForEditMenu
{
  currentPresentationController = [(EKDayViewController *)self currentPresentationController];
  presentedViewController = [currentPresentationController presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [currentPresentationController presentedViewController];
  }

  else
  {
    presentedViewController2 = currentPresentationController;
  }

  v5 = presentedViewController2;

  return v5;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  selectedEventsForEditMenu = [WeakRetained selectedEventsForEditMenu];

  return selectedEventsForEditMenu;
}

- (int64_t)dayViewContentInsetAdjustmentBehavior:(id)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 2;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 dayViewControllerContentInsetAdjustmentBehavior:self];

  return v7;
}

- (void)_setDisplayDateInternal:(id)internal
{
  internalCopy = internal;
  v10 = [internalCopy copy];
  [v10 setHour:0];
  [v10 setMinute:0];
  [v10 setSecond:0];
  v5 = [internalCopy copy];

  [v5 setHour:23];
  [v5 setMinute:59];
  [v5 setSecond:59];
  v6 = [(NSCalendar *)self->_calendar dateFromComponents:v10];
  [v6 timeIntervalSinceReferenceDate];
  self->_dayStart = v7;

  v8 = [(NSCalendar *)self->_calendar dateFromComponents:v10];
  [v8 timeIntervalSinceReferenceDate];
  self->_dayEnd = v9;
}

- (void)dayView:(id)view firstVisibleSecondChanged:(unint64_t)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    currentDayView = [(EKDayViewController *)self currentDayView];
    [v8 dayViewController:self requestsSaveFirstVisibleSecondPreference:{objc_msgSend(currentDayView, "firstVisibleSecond")}];
  }
}

- (void)_setDisplayDate:(id)date forRepeat:(BOOL)repeat animate:(BOOL)animate
{
  animateCopy = animate;
  dateCopy = date;
  [(EKDayViewController *)self _completeScrollingAnimationIfNeeded];
  [(EKDayViewController *)self _completeDecelerationIfNeeded];
  obj = [dateCopy dateComponentsForDateOnly];

  if (!self->_instigatedDateChange && ([obj isEqual:self->_displayDate] & 1) == 0)
  {
    v9 = [obj copy];
    displayDate = self->_displayDate;
    self->_displayDate = v9;

    dayStart = self->_dayStart;
    [(EKDayViewController *)self _setDisplayDateInternal:obj];
    [(EKDayView *)self->_currentDay stopScrolling];
    if ((*(self + 1088) & 2) != 0)
    {
LABEL_41:
      [(EKDayViewController *)self _performDisplayedOccurrencesChangedDelegateMethodWithTrigger:0];
      goto LABEL_42;
    }

    if (!self->_horizontalScrollingView)
    {
      v15 = 0;
      goto LABEL_35;
    }

    v12 = obj;
    if (repeat)
    {
      goto LABEL_32;
    }

    if (self->_viewAppeared)
    {
      displayDate = [(EKDayView *)self->_previousDay displayDate];
      v14 = [displayDate isEqual:obj];

      if (v14 && animateCopy)
      {
        [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
        *(self + 1056) |= 1u;
        v15 = 1;
        [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:1];
        v16 = 1032;
        goto LABEL_10;
      }

      v12 = obj;
      if (self->_viewAppeared)
      {
        displayDate2 = [(EKDayView *)self->_nextDay displayDate];
        v19 = [displayDate2 isEqual:obj];

        if (v19 && animateCopy)
        {
          [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
          *(self + 1056) |= 1u;
          v15 = 1;
          [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:1];
          v16 = 1048;
LABEL_10:
          [*(&self->super.super.super.isa + v16) frame];
          [(EKDayViewController *)self _setHorizontalContentOffsetUsingSpringAnimation:?];
          superview = [*(&self->super.super.super.isa + v16) superview];

          if (!superview)
          {
            [(UIScrollView *)self->_horizontalScrollingView addSubview:*(&self->super.super.super.isa + v16)];
          }

          goto LABEL_35;
        }

        v12 = obj;
        if (self->_viewAppeared)
        {
          displayDate3 = [(EKDayView *)self->_currentDay displayDate];
          if ([displayDate3 isEqual:obj] && animateCopy)
          {
            [(EKDayViewWithGutters *)self->_currentDayWithGutter frame];
            v22 = v21;
            v24 = v23;
            [(UIScrollView *)self->_horizontalScrollingView contentOffset];
            v26 = v25;
            v28 = v27;

            v12 = obj;
            if (v22 != v26 || v24 != v28)
            {
              [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
              *(self + 1056) |= 1u;
              v15 = 1;
              [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:1];
              [(EKDayViewWithGutters *)self->_currentDayWithGutter frame];
              [(EKDayViewController *)self _setHorizontalContentOffsetUsingSpringAnimation:?];
              goto LABEL_35;
            }
          }

          else
          {

            v12 = obj;
          }
        }
      }
    }

    if (!self->_viewAppeared || !self->_alwaysAnimate || !animateCopy)
    {
LABEL_32:
      v38 = [v12 dateComponents:30 byAddingDays:0xFFFFFFFFLL calendar:self->_calendar];
      v39 = [obj dateComponents:30 byAddingDays:1 calendar:self->_calendar];
      [(EKDayViewController *)self _setDayView:self->_previousDay toDate:v38];
      [(EKDayViewController *)self _setDayView:self->_currentDay toDate:obj];
      [(EKDayViewController *)self _setDayView:self->_nextDay toDate:v39];
      [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
      if ((*(self + 1056) & 1) == 0)
      {
        [(EKDayViewController *)self _relayoutDays];
      }

      v15 = 0;
      goto LABEL_35;
    }

    calendar = [(EKDayViewController *)self calendar];
    displayDate4 = [(EKDayView *)self->_currentDay displayDate];
    v31 = [calendar dateFromComponents:displayDate4];

    calendar2 = [(EKDayViewController *)self calendar];
    v33 = [calendar2 dateFromComponents:obj];

    v34 = [v31 compare:v33];
    [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
    *(self + 1056) |= 1u;
    [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:1];
    self->_correctAfterScroll = 1;
    objc_storeStrong(&self->_targetDateComponents, obj);
    if (v34 == 1)
    {
      p_previousDayWithGutter = &self->_previousDayWithGutter;
      superview2 = [(EKDayViewWithGutters *)self->_previousDayWithGutter superview];

      v37 = &OBJC_IVAR___EKDayViewController__previousDay;
      if (superview2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v34 != -1)
      {
        v15 = 0;
        goto LABEL_48;
      }

      p_previousDayWithGutter = &self->_nextDayWithGutter;
      superview3 = [(EKDayViewWithGutters *)self->_nextDayWithGutter superview];

      v37 = &OBJC_IVAR___EKDayViewController__nextDay;
      if (superview3)
      {
LABEL_31:
        [(EKDayViewController *)self _setDayView:*(&self->super.super.super.isa + *v37) toDate:obj];
        [(EKDayViewWithGutters *)*p_previousDayWithGutter frame];
        [(EKDayViewController *)self _setHorizontalContentOffsetUsingSpringAnimation:?];
        v15 = 1;
LABEL_48:

LABEL_35:
        if ((*(self + 1056) & 1) == 0 && dayStart != self->_dayStart && [(EKDayViewController *)self isViewLoaded])
        {
          [(EKDayView *)self->_currentDay setDisplayDate:obj];
          [(EKDayViewController *)self reloadData];
        }

        if ((v15 & 1) == 0)
        {
          [(EKDayViewController *)self scrollToNow:0];
        }

        goto LABEL_41;
      }
    }

    [(UIScrollView *)self->_horizontalScrollingView addSubview:*p_previousDayWithGutter];
    goto LABEL_31;
  }

LABEL_42:
}

- (void)setDisplayDate:(id)date
{
  dateCopy = date;
  if ((*(self + 1056) & 1) == 0 && ([dateCopy isEqual:self->_displayDate] & 1) == 0 && !-[EKEventGestureController dragGestureInProgress](self->_eventGestureController, "dragGestureInProgress"))
  {
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayViewController *)self _setDisplayDate:dateCopy forRepeat:0];
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (([calendarCopy isEqual:self->_calendar] & 1) == 0)
  {
    v4 = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v6 = [calendarCopy copy];
    calendar = self->_calendar;
    self->_calendar = v6;

    [(NSCalendar *)self->_calendar setTimeZone:timeZone];
    [(EKDayViewController *)self _setDisplayDateInternal:self->_displayDate];
    v8 = [(NSCalendar *)self->_calendar components:30 fromDate:v4];
    [(EKDayViewController *)self setDisplayDate:v8];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v5 = [zoneCopy isEqualToTimeZone:timeZone];

  if ((v5 & 1) == 0)
  {
    [(NSCalendar *)self->_calendar setTimeZone:zoneCopy];
    [(EKDayViewController *)self _setDisplayDateInternal:self->_displayDate];
    [(EKDayView *)self->_currentDay setTimeZone:zoneCopy];
    [(EKDayView *)self->_previousDay setTimeZone:zoneCopy];
    [(EKDayView *)self->_nextDay setTimeZone:zoneCopy];
  }
}

- (void)setGestureOccurrenceSuperview:(id)superview
{
  superviewCopy = superview;
  if (self->_gestureOccurrenceSuperview != superviewCopy)
  {
    objc_storeStrong(&self->_gestureOccurrenceSuperview, superview);
    draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];

    if (draggingView)
    {
      draggingView2 = [(EKEventGestureController *)self->_eventGestureController draggingView];
      _eventGestureSuperview = [(EKDayViewController *)self _eventGestureSuperview];
      CalSwitchViewToSuperview(draggingView2, _eventGestureSuperview);
    }
  }
}

- (void)scrollToNow:(BOOL)now
{
  nowCopy = now;
  if ([(EKDayViewController *)self _shouldScrollToNow])
  {
    currentDay = self->_currentDay;

    [(EKDayView *)currentDay scrollToNowAnimated:nowCopy whenFinished:0];
  }
}

- (void)scrollToDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  currentDay = self->_currentDay;
  date = [date date];
  [(EKDayView *)currentDay scrollToDate:date animated:animatedCopy whenFinished:0];
}

- (void)scrollEventIntoView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  previousDay = self->_previousDay;
  viewCopy = view;
  [(EKDayView *)previousDay scrollToEvent:viewCopy animated:animatedCopy completionBlock:0];
  [(EKDayView *)self->_nextDay scrollToEvent:viewCopy animated:animatedCopy completionBlock:0];
  currentDay = self->_currentDay;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__EKDayViewController_scrollEventIntoView_animated___block_invoke;
  v9[3] = &unk_1E843EC60;
  v9[4] = self;
  [(EKDayView *)currentDay scrollToEvent:viewCopy animated:animatedCopy completionBlock:v9];
}

void __52__EKDayViewController_scrollEventIntoView_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gestureController];
  [v1 updateDraggingOccurrenceOrigin];
}

- (void)editorDidSaveEvent:(id)event
{
  eventCopy = event;
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dayViewController:self awaitsRefreshingOccurrence:eventCopy];
  }

  [(EKDayViewController *)self reloadData];
}

- (void)editorDidDeleteEvent:(id)event
{
  eventCopy = event;
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dayViewController:self awaitsDeletingOccurrence:eventCopy];
  }

  [(EKDayViewController *)self reloadData];
}

- (void)editorDidCancelEditingEvent:(id)event
{
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:1];
  currentDay = self->_currentDay;

  [(EKDayView *)currentDay setDimmedOccurrence:0];
}

- (id)eventsForStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_dataSource);
    v10 = [v9 dayViewController:self eventsForStartDate:dateCopy endDate:endDateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_eventsForDay:(id)day
{
  dayCopy = day;
  displayDate = [dayCopy displayDate];
  v6 = [displayDate copy];

  [v6 setHour:23];
  [v6 setMinute:59];
  [v6 setSecond:59];
  calendar = self->_calendar;
  displayDate2 = [dayCopy displayDate];

  v9 = [(NSCalendar *)calendar dateFromComponents:displayDate2];

  v10 = [(NSCalendar *)self->_calendar dateFromComponents:v6];
  v11 = [(EKDayViewController *)self eventsForStartDate:v9 endDate:v10];

  return v11;
}

- (BOOL)_delegateRespondsToDisplayedOccurrencesChangedMethod
{
  delegate = [(EKDayViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    delegate2 = [(EKDayViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)_performDisplayedOccurrencesChangedDelegateMethodWithTrigger:(int)trigger
{
  v3 = *&trigger;
  delegate = [(EKDayViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  delegate2 = [(EKDayViewController *)self delegate];
  delegate3 = delegate2;
  if (v6)
  {
    [delegate2 dayViewController:self didChangeDisplayedOccurrencesDueToTrigger:v3];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    delegate3 = [(EKDayViewController *)self delegate];
    [delegate3 dayViewControllerDidChangeDisplayedOccurrences:self];
  }
}

- (void)reloadDataForOccurrenceChangeWithGeneration:(int)generation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  protectionQueue = self->_protectionQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__EKDayViewController_reloadDataForOccurrenceChangeWithGeneration___block_invoke;
  block[3] = &unk_1E8441758;
  block[4] = self;
  block[5] = &v7;
  generationCopy = generation;
  dispatch_sync(protectionQueue, block);
  if (*(v8 + 24) == 1)
  {
    [(EKDayViewController *)self reloadData];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __67__EKDayViewController_reloadDataForOccurrenceChangeWithGeneration___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1104) generation];
  v3 = [*(*(a1 + 32) + 1096) generation];
  result = [*(*(a1 + 32) + 1112) generation];
  if (v2 && v2 < *(a1 + 48) || v3 && v3 < *(a1 + 48))
  {
    v5 = 1;
  }

  else if (result)
  {
    v5 = result < *(a1 + 48);
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  return result;
}

- (void)loadData:(BOOL)data withTrigger:(int)trigger withCompletion:(id)completion
{
  completionCopy = completion;
  if ([(EKDayViewController *)self isViewLoaded])
  {
    [(EKDayView *)self->_currentDay layoutSubviews];
    [(EKDayView *)self->_previousDay layoutSubviews];
    [(EKDayView *)self->_nextDay layoutSubviews];
    reloadQueue = self->_reloadQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke;
    block[3] = &unk_1E84417A8;
    block[4] = self;
    triggerCopy = trigger;
    dataCopy = data;
    v11 = completionCopy;
    dispatch_async(reloadQueue, block);
  }
}

void __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1208);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_2;
  block[3] = &unk_1E8440298;
  v25 = *(a1 + 48);
  block[4] = v2;
  dispatch_sync(v3, block);
  v4 = dispatch_group_create();
  v5 = v4;
  if (*(a1 + 48) != 3)
  {
    dispatch_group_enter(v4);
    v6 = *(*(a1 + 32) + 1016);
    v7 = *(a1 + 52);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_3;
    v22[3] = &unk_1E843EC60;
    v23 = v5;
    [v6 loadData:v7 withCompletion:v22];
  }

  if (*(*(a1 + 32) + 1233) == 1)
  {
    dispatch_group_enter(v5);
    v8 = *(*(a1 + 32) + 1008);
    v9 = *(a1 + 52);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_4;
    v20[3] = &unk_1E843EC60;
    v10 = v5;
    v21 = v10;
    [v8 loadData:v9 withCompletion:v20];
    dispatch_group_enter(v10);
    v11 = *(*(a1 + 32) + 1024);
    v12 = *(a1 + 52);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_5;
    v18[3] = &unk_1E843EC60;
    v19 = v10;
    [v11 loadData:v12 withCompletion:v18];
  }

  v13 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v5, v13);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_6;
  v15[3] = &unk_1E8441780;
  v14 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v17 = *(a1 + 48);
  v16 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) != 3)
  {
    v2 = [*(a1 + 32) _eventsForDay:*(*(a1 + 32) + 1016)];
    v3 = [v2 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1096);
    *(v4 + 1096) = v3;
  }

  v6 = *(a1 + 32);
  if (*(v6 + 1233) == 1)
  {
    v7 = [v6 _eventsForDay:*(v6 + 1024)];
    v8 = [v7 copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 1112);
    *(v9 + 1112) = v8;

    v14 = [*(a1 + 32) _eventsForDay:*(*(a1 + 32) + 1008)];
    v11 = [v14 copy];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1104);
    *(v12 + 1104) = v11;
  }
}

uint64_t __59__EKDayViewController_loadData_withTrigger_withCompletion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dayViewControllerDidReloadData:*(a1 + 32)];
  }

  [*(a1 + 32) _performDisplayedOccurrencesChangedDelegateMethodWithTrigger:*(a1 + 48)];
  [*(a1 + 32) _updateAllDayAreaHeight];
  [*(a1 + 32) updateGutterTopLabelsAppearance];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)loadDataBetweenStart:(id)start end:(id)end withTrigger:(int)trigger generation:(int)generation completionForCurrentDayReload:(id)reload
{
  reloadCopy = reload;
  endCopy = end;
  [start timeIntervalSinceReferenceDate];
  v15 = v14;
  [endCopy timeIntervalSinceReferenceDate];
  v17 = v16;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke;
  aBlock[3] = &unk_1E8440298;
  aBlock[4] = self;
  triggerCopy = trigger;
  v18 = _Block_copy(aBlock);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_3;
  v39[3] = &unk_1E8441780;
  v39[4] = self;
  triggerCopy2 = trigger;
  v19 = reloadCopy;
  v40 = v19;
  v20 = _Block_copy(v39);
  [(EKDayView *)self->_currentDay dayEnd];
  if (v15 < v21)
  {
    [(EKDayView *)self->_currentDay dayStart];
    if (v17 >= v22)
    {
      reloadQueue = self->_reloadQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_5;
      block[3] = &unk_1E8441780;
      block[4] = self;
      generationCopy = generation;
      v37 = v20;
      dispatch_async(reloadQueue, block);
    }
  }

  if (self->_preloadExtraDays)
  {
    [(EKDayView *)self->_previousDay dayEnd];
    if (v15 < v24)
    {
      [(EKDayView *)self->_previousDay dayStart];
      if (v17 >= v25)
      {
        v26 = self->_reloadQueue;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_7;
        v33[3] = &unk_1E8441780;
        v33[4] = self;
        generationCopy2 = generation;
        v34 = v18;
        dispatch_async(v26, v33);
      }
    }

    [(EKDayView *)self->_nextDay dayEnd];
    if (v15 < v27)
    {
      [(EKDayView *)self->_nextDay dayStart];
      if (v17 >= v28)
      {
        v29 = self->_reloadQueue;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_9;
        v30[3] = &unk_1E8441780;
        v30[4] = self;
        generationCopy3 = generation;
        v31 = v18;
        dispatch_async(v29, v30);
      }
    }
  }
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _delegateRespondsToDisplayedOccurrencesChangedMethod])
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_2;
    v2[3] = &unk_1E8440298;
    v2[4] = *(a1 + 32);
    v3 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) _delegateRespondsToDisplayedOccurrencesChangedMethod])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_4;
    block[3] = &unk_1E8441780;
    v2 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _performDisplayedOccurrencesChangedDelegateMethodWithTrigger:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_5(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 1208);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_6;
  block[3] = &unk_1E8441758;
  block[4] = v2;
  block[5] = &v6;
  v5 = *(a1 + 48);
  dispatch_sync(v3, block);
  if (*(v7 + 24) == 1)
  {
    [*(*(a1 + 32) + 1016) loadData:1 withCompletion:*(a1 + 40)];
  }

  _Block_object_dispose(&v6, 8);
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_6(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1096) generation];
  if (v2)
  {
    v3 = v2 < *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v7 = [*(a1 + 32) _eventsForDay:*(*(a1 + 32) + 1016)];
    v4 = [v7 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1096);
    *(v5 + 1096) = v4;
  }
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_7(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 1208);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_8;
  block[3] = &unk_1E8441758;
  block[4] = v2;
  block[5] = &v6;
  v5 = *(a1 + 48);
  dispatch_sync(v3, block);
  if (*(v7 + 24) == 1)
  {
    [*(*(a1 + 32) + 1008) loadData:1 withCompletion:*(a1 + 40)];
  }

  _Block_object_dispose(&v6, 8);
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1104) generation];
  if (v2)
  {
    v3 = v2 < *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v7 = [*(a1 + 32) _eventsForDay:*(*(a1 + 32) + 1008)];
    v4 = [v7 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1104);
    *(v5 + 1104) = v4;
  }
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_9(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 1208);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_10;
  block[3] = &unk_1E8441758;
  block[4] = v2;
  block[5] = &v6;
  v5 = *(a1 + 48);
  dispatch_sync(v3, block);
  if (*(v7 + 24) == 1)
  {
    [*(*(a1 + 32) + 1024) loadData:1 withCompletion:*(a1 + 40)];
  }

  _Block_object_dispose(&v6, 8);
}

void __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_10(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1112) generation];
  if (v2)
  {
    v3 = v2 < *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v7 = [*(a1 + 32) _eventsForDay:*(*(a1 + 32) + 1024)];
    v4 = [v7 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1112);
    *(v5 + 1112) = v4;
  }
}

- (void)significantTimeChangeOccurred
{
  [(EKDayView *)self->_nextDay adjustForSignificantTimeChange];
  [(EKDayView *)self->_currentDay adjustForSignificantTimeChange];
  previousDay = self->_previousDay;

  [(EKDayView *)previousDay adjustForSignificantTimeChange];
}

- (void)timeZoneChanged
{
  calendar = [(EKDayViewController *)self calendar];
  v8 = [calendar dateFromComponents:self->_displayDate];

  calendar2 = [(EKDayViewController *)self calendar];
  v5 = [v8 dateByAddingDays:1 inCalendar:calendar2];

  calendar3 = [(EKDayViewController *)self calendar];
  v7 = [v8 dateByAddingDays:-1 inCalendar:calendar3];

  [(EKDayViewWithGutters *)self->_nextDayWithGutter timeZoneChangedWithNewDate:v5];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter timeZoneChangedWithNewDate:v8];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter timeZoneChangedWithNewDate:v7];
  [(EKDayView *)self->_nextDay adjustForTimeZoneChanged];
  [(EKDayView *)self->_currentDay adjustForTimeZoneChanged];
  [(EKDayView *)self->_previousDay adjustForTimeZoneChanged];
}

- (void)dayView:(id)view didUpdateScrollPosition:(CGPoint)position
{
  v5 = [(EKDayViewController *)self delegate:view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(EKDayViewController *)self delegate];
    [delegate dayViewControllerDidUpdateScrollPosition:self];
  }
}

- (id)_occurrencesForDayView:(id)view
{
  viewCopy = view;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13;
  protectionQueue = self->_protectionQueue;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKDayViewController__occurrencesForDayView___block_invoke;
  block[3] = &unk_1E84417D0;
  v10 = viewCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = viewCopy;
  dispatch_sync(protectionQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __46__EKDayViewController__occurrencesForDayView___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  if (v2 == v1[128])
  {
    v5 = v1[139];
    v3 = (*(a1[6] + 8) + 40);
  }

  else
  {
    v3 = (*(a1[6] + 8) + 40);
    if (v2 == v1[126])
    {
      v4 = 138;
    }

    else
    {
      v4 = 137;
    }

    v5 = v1[v4];
  }

  v6 = v5;
  v7 = *v3;
  *v3 = v6;
}

- (void)_localeChanged:(id)changed
{
  view = [(EKDayViewController *)self view];
  [view setNeedsLayout];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EKDayViewController__localeChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_showWeekNumbersPreferenceChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__EKDayViewController__showWeekNumbersPreferenceChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)preferredContentSizeDidChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EKDayViewController_preferredContentSizeDidChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__EKDayViewController_preferredContentSizeDidChanged___block_invoke(uint64_t a1)
{
  +[EKUILargeTextUtilities clearCache];
  v2 = *(a1 + 32);

  return [v2 updateGutterTopLabelsAppearance];
}

- (id)_createGutterDayViewWithDayView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v9 = CGRectGetWidth(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v10 = CGRectGetHeight(v18);
  gutterWidth = self->_gutterWidth;
  if ([(EKDayViewController *)self showWeekdayLabel])
  {
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v10 = v10 + v12;
  }

  v13 = [[EKDayViewWithGutters alloc] initWithFrame:viewCopy dayView:self->_targetSizeClass sizeClass:[(EKDayViewController *)self showWeekdayLabel] showWeekDayLabel:[(EKDayViewController *)self showWeekNumberLabel] showWeekNumberLabel:0.0, 0.0, v9 + gutterWidth * 2.0, v10];
  [(EKDayViewWithGutters *)v13 setAutoresizingMask:18];
  hasAllDaySection = [viewCopy hasAllDaySection];

  [(EKDayViewWithGutters *)v13 setShowDividerLine:hasAllDaySection ^ 1u];

  return v13;
}

- (void)_highlightEvent:(id)event dayViewDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  eventCopy = event;
  gestureController = [(EKDayViewController *)self gestureController];
  currentDragSnappingType = [gestureController currentDragSnappingType];

  v11 = CalSnapDateTo15MinuteOr5MinuteInterval(eventCopy, currentDragSnappingType, date - self->_dayStart);
  v12 = v11 / 3600.0;
  if (dayCopy)
  {
    v12 = -1.0;
  }

  [(EKDayView *)self->_currentDay highlightHour:v12];
  currentDay = self->_currentDay;

  [(EKDayView *)currentDay setAllDayLabelHighlighted:dayCopy];
}

- (void)dayViewDidTapEmptySpace:(id)space onDate:(id)date
{
  dateCopy = date;
  if (self->_currentDay == space)
  {
    v7 = dispatch_group_create();
    if ([(EKDayViewController *)self _shouldEndGestureEditingOnTap])
    {
      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
      [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
      dispatch_group_enter(v7);
      currentDay = self->_currentDay;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__EKDayViewController_dayViewDidTapEmptySpace_onDate___block_invoke;
      v11[3] = &unk_1E843EC60;
      v12 = v7;
      [(EKDayView *)currentDay loadData:1 withCompletion:v11];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__EKDayViewController_dayViewDidTapEmptySpace_onDate___block_invoke_2;
    block[3] = &unk_1E843EFB8;
    block[4] = self;
    v10 = dateCopy;
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__EKDayViewController_dayViewDidTapEmptySpace_onDate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dayViewControllerDidTapEmptySpace:*(a1 + 32) onDate:*(a1 + 40)];
  }

  v5 = *(a1 + 32);

  return [v5 _performDisplayedOccurrencesChangedDelegateMethodWithTrigger:0];
}

- (id)_eventGestureSuperview
{
  gestureOccurrenceSuperview = [(EKDayViewController *)self gestureOccurrenceSuperview];
  if (gestureOccurrenceSuperview)
  {
    gestureOccurrenceSuperview2 = [(EKDayViewController *)self gestureOccurrenceSuperview];
  }

  else
  {
    gestureOccurrenceSuperview2 = self->_clipView;
  }

  v5 = gestureOccurrenceSuperview2;

  return v5;
}

- (double)trackingAreaMinimumYPosition
{
  currentDayView = [(EKDayViewController *)self currentDayView];
  [currentDayView topContentInset];
  v5 = v4;
  currentAllDayView = [(EKDayViewController *)self currentAllDayView];
  [currentAllDayView frame];
  v8 = v5 + v7;

  return v8;
}

- (double)horizontalOffsetForPagingForEventGestureController:(id)controller
{
  view = [(EKDayViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  if (IsRegularInViewHierarchy)
  {
    return self->_gutterWidth * 2.0 + 80.0;
  }

  else
  {
    return 80.0;
  }
}

- (id)createOccurrenceViewForEventGestures
{
  v3 = [EKDayOccurrenceView alloc];
  v4 = [(EKDayOccurrenceView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(EKDayOccurrenceView *)v4 setDelegate:self];

  return v4;
}

- (void)eventGestureController:(id)controller adjustDraggingView:(id)view forAllDay:(BOOL)day
{
  dayCopy = day;
  viewCopy = view;
  [viewCopy setAllDayDrawingStyle:dayCopy];
  currentDay = self->_currentDay;
  if (dayCopy)
  {
    allDayView = [(EKDayView *)currentDay allDayView];
    [allDayView configureOccurrenceViewForGestureController:viewCopy];
  }

  else
  {
    [(EKDayView *)currentDay configureOccurrenceViewForGestureController:viewCopy];
  }
}

- (id)createEventForEventGestureController:(id)controller
{
  v4 = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained dayViewController:self createEventAtDate:v4 allDay:0];

  return v6;
}

- (void)showTimelineHighlightForTime:(id)time
{
  [time timeIntervalSinceReferenceDate];

  [(EKDayViewController *)self _highlightEvent:0 dayViewDate:0 isAllDay:?];
}

- (void)hideTimelineHighlight
{
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  [(EKDayView *)self->_previousDay highlightHour:-1.0];
  [(EKDayView *)self->_previousDay setAllDayLabelHighlighted:0];
  [(EKDayView *)self->_nextDay highlightHour:-1.0];
  nextDay = self->_nextDay;

  [(EKDayView *)nextDay setAllDayLabelHighlighted:0];
}

- (double)eventGestureController:(id)controller yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence atPoint:(CGPoint)point
{
  occurrenceCopy = occurrence;
  v8 = [(EKDayViewController *)self touchTrackingViewForEventGestureController:controller];
  [(EKDayView *)self->_currentDay yPositionPerhapsMatchingAllDayOccurrence:occurrenceCopy];
  v10 = v9;

  [v8 convertPoint:self->_currentDay fromView:{0.0, v10}];
  v12 = v11;

  return v12;
}

- (void)eventGestureController:(id)controller addViewToScroller:(id)scroller isAllDay:(BOOL)day
{
  dayCopy = day;
  controllerCopy = controller;
  scrollerCopy = scroller;
  gestureOccurrenceSuperview = [(EKDayViewController *)self gestureOccurrenceSuperview];
  if (gestureOccurrenceSuperview && (v10 = gestureOccurrenceSuperview, [controllerCopy draggingView], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == scrollerCopy))
  {
    gestureOccurrenceSuperview2 = [(EKDayViewController *)self gestureOccurrenceSuperview];
    CalSwitchViewToSuperview(scrollerCopy, gestureOccurrenceSuperview2);
  }

  else
  {
    [(EKDayView *)self->_currentDay addViewToScroller:scrollerCopy isAllDay:dayCopy];
  }
}

- (id)eventGestureController:(id)controller occurrenceViewAtPoint:(CGPoint)point ignoreSelectedCopyView:(BOOL)view
{
  y = point.y;
  x = point.x;
  currentDay = self->_currentDay;
  v9 = [(EKDayViewController *)self _eventGestureSuperview:controller];
  [(EKDayView *)currentDay convertPoint:v9 fromView:x, y];
  v11 = v10;
  v13 = v12;

  v14 = self->_currentDay;

  return [(EKDayView *)v14 occurrenceViewAtPoint:v11, v13];
}

- (BOOL)eventGestureController:(id)controller isAllDayAtPoint:(CGPoint)point requireInsistence:(BOOL)insistence
{
  insistenceCopy = insistence;
  y = point.y;
  x = point.x;
  currentDayWithGutter = self->_currentDayWithGutter;
  _eventGestureSuperview = [(EKDayViewController *)self _eventGestureSuperview];
  [(EKDayViewWithGutters *)currentDayWithGutter convertPoint:_eventGestureSuperview fromView:x, y];
  v12 = v11;
  v14 = v13;

  v15 = self->_currentDayWithGutter;

  return [(EKDayViewWithGutters *)v15 isPointAllDay:insistenceCopy requireAllDayRegionInsistence:v12, v14];
}

- (double)eventGestureController:(id)controller dateAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  currentDay = self->_currentDay;
  _eventGestureSuperview = [(EKDayViewController *)self _eventGestureSuperview];
  [(EKDayView *)currentDay convertPoint:_eventGestureSuperview fromView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = self->_currentDay;

  [(EKDayView *)v13 dateAtPoint:0 isAllDay:v10, v12];
  return result;
}

- (CGPoint)pointAtDate:(double)date isAllDay:(BOOL)day
{
  [(EKDayView *)self->_currentDay pointAtDate:day isAllDay:date];
  v6 = v5;
  v8 = v7;
  CalRoundToScreenScale(0.5);
  v10 = v9;
  CalTimeDirectionIsLeftToRight();
  _eventGestureSuperview = [(EKDayViewController *)self _eventGestureSuperview];
  [_eventGestureSuperview convertPoint:self->_currentDay fromView:{v6 + 2.0, v8 - v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)eventGestureController:(id)controller pointAtDate:(double)date isAllDay:(BOOL)day
{
  [(EKDayViewController *)self pointAtDate:day isAllDay:date];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)eventGestureController:(id)controller widthForOccurrenceViewOfDays:(unint64_t)days
{
  [(EKDayView *)self->_currentDay frame:controller];
  v6 = v5;
  [(EKDayView *)self->_currentDay leftContentInset];
  return v6 - v7 + -4.0;
}

- (double)eventGestureController:(id)controller heightForOccurrenceViewOfDuration:(double)duration
{
  interfaceOrientation = [(EKDayViewController *)self interfaceOrientation];
  view = [(EKDayViewController *)self view];
  [EKDayTimeView hourHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy(view) orientation:interfaceOrientation];
  v9 = v8;
  [(EKDayView *)self->_currentDay hourScale];
  v11 = v9 * v10 * duration / 3600.0;
  +[EKDayOccurrenceView bottomShadowMargin];
  v13 = v12 + v11;

  CalRoundToScreenScale(0.5);
  v15 = v13 + v14;
  view2 = [(EKDayViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy(view2) orientation:interfaceOrientation];
  v18 = v17;

  if (v15 >= v18)
  {
    return v15;
  }

  else
  {
    return v18;
  }
}

- (double)eventGestureController:(id)controller heightForAllDayOccurrenceView:(id)view
{
  viewCopy = view;
  interfaceOrientation = [(EKDayViewController *)self interfaceOrientation];
  view = [(EKDayViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy(view) orientation:interfaceOrientation isAllDay:1];
  v9 = v8;

  currentImageState = [viewCopy currentImageState];
  LODWORD(interfaceOrientation) = [currentImageState requiresLanguageAwarePadding];

  if (interfaceOrientation)
  {
    currentImageState2 = [viewCopy currentImageState];
    [currentImageState2 totalLanguageAwareHeightPadding];
    v9 = v9 + v12;
  }

  return v9;
}

- (double)timedRegionOriginForEventGestureController:(id)controller
{
  v4 = [(EKDayViewController *)self touchTrackingViewForEventGestureController:controller];
  [(EKDayView *)self->_currentDay timedRegionYOrigin];
  [v4 convertPoint:self->_currentDay fromView:{0.0, v5}];
  v7 = v6;

  return v7;
}

- (void)eventGestureController:(id)controller requestsPresentationOfViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewController:self requestsPresentationOfViewControllerForGestures:viewControllerCopy];
  }
}

- (void)eventGestureController:(id)controller requestsShowEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewController:self requestsShowEvent:eventCopy showDetails:1];
  }
}

- (BOOL)eventGestureControllerShouldAllowLongPress:(id)press
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 dayViewControllerShouldAllowLongPress:self];

  return v7;
}

- (void)eventGestureController:(id)controller didSetUpAtDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  controllerCopy = controller;
  event = [controllerCopy event];
  [(EKDayViewController *)self _highlightEvent:event dayViewDate:dayCopy isAllDay:date];

  event2 = [controllerCopy event];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:event2];

  v10 = [(NSDateComponents *)self->_displayDate copy];
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = v10;

  draggingView = [controllerCopy draggingView];
  _eventGestureSuperview = [(EKDayViewController *)self _eventGestureSuperview];
  CalSwitchViewToSuperview(draggingView, _eventGestureSuperview);

  delegate = [(EKDayViewController *)self delegate];
  LOBYTE(_eventGestureSuperview) = objc_opt_respondsToSelector();

  if (_eventGestureSuperview)
  {
    delegate2 = [(EKDayViewController *)self delegate];
    [delegate2 dayViewcontrollerDidBeginMovingEventWithGesture:self];
  }

  mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
  event3 = [controllerCopy event];
  [mEMORY[0x1E6966A10] prepareForEventUpdate:event3];
}

- (void)eventGestureController:(id)controller didMoveToDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  event = [controller event];
  [(EKDayViewController *)self _highlightEvent:event dayViewDate:dayCopy isAllDay:date];
}

- (BOOL)eventGestureController:(id)controller didCommitOccurrence:(id)occurrence toDate:(double)date isAllDay:(BOOL)day span:(int64_t)span
{
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  if ([occurrenceCopy isNew])
  {
    currentEditor = [(EKDayViewController *)self currentEditor];

    if (currentEditor)
    {
LABEL_32:
      v23 = 1;
      goto LABEL_33;
    }

    currentEditor3 = +[EKEventEditor defaultTitleForCalendarItem];
    title = [occurrenceCopy title];
    v15 = [currentEditor3 isEqualToString:title];

    if (v15)
    {
      [occurrenceCopy setTitle:&stru_1F4EF6790];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 dayViewController:self beginEditingOccurrence:occurrenceCopy creationMethod:1];
    }

LABEL_13:

    goto LABEL_32;
  }

  delegate = [(EKDayViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_11:
    currentEditor2 = [(EKDayViewController *)self currentEditor];

    if (currentEditor2)
    {
      currentEditor3 = [(EKDayViewController *)self currentEditor];
      [currentEditor3 refreshStartAndEndDates];
      goto LABEL_13;
    }

    delegate2 = [(EKDayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate3 = [(EKDayViewController *)self delegate];
      if ([delegate3 delegateWantsToHandleDayViewController:self gestureCommittingOccurrence:occurrenceCopy])
      {
        delegate4 = [(EKDayViewController *)self delegate];
        v28 = objc_opt_respondsToSelector();

        if (v28)
        {
          currentEditor3 = [(EKDayViewController *)self delegate];
          [currentEditor3 dayViewController:self handleGestureCommittingOccurrence:occurrenceCopy];
          goto LABEL_13;
        }

LABEL_20:
        isNew = [occurrenceCopy isNew];
        mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
        v31 = mEMORY[0x1E6966A10];
        if (isNew)
        {
          [mEMORY[0x1E6966A10] handleEventCreation:occurrenceCopy];
        }

        else
        {
          [mEMORY[0x1E6966A10] handleEventUpdate:occurrenceCopy];
        }

        eKUI_editor = [(UIResponder *)self EKUI_editor];
        if ([eKUI_editor saveEvent:occurrenceCopy span:span error:0])
        {
          if (([(NSDateComponents *)self->_originalDisplayDate isEqual:self->_displayDate]& 1) == 0)
          {
            v33 = objc_loadWeakRetained(&self->_delegate);
            [v33 dayViewController:self didChangeDisplayDate:self->_displayDate];
          }
        }

        else
        {
          v34 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
          {
            *v42 = 0;
            _os_log_impl(&dword_1D3400000, v34, OS_LOG_TYPE_ERROR, "Error moving event", v42, 2u);
          }
        }

        event = [controllerCopy event];

        if (event == occurrenceCopy)
        {
          occurrenceDate = [controllerCopy occurrenceDate];
          [controllerCopy forceStartWithOccurrence:occurrenceCopy occurrenceDate:occurrenceDate shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:0];

          v37 = objc_loadWeakRetained(&self->_delegate);
          v38 = objc_opt_respondsToSelector();

          if (v38)
          {
            v39 = objc_loadWeakRetained(&self->_delegate);
            [v39 dayViewController:self awaitsRefreshingOccurrence:occurrenceCopy];
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_20;
  }

  delegate5 = [(EKDayViewController *)self delegate];
  v21 = [delegate5 dayViewController:self willDuplicateOccurrence:occurrenceCopy];

  if (!v21)
  {
    goto LABEL_11;
  }

  gestureController = [(EKDayViewController *)self gestureController];
  [gestureController endForcedStart:0];

  [occurrenceCopy revert];
  v23 = 0;
LABEL_33:
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;

  return v23;
}

- (void)eventGestureController:(id)controller didCancelEditingOccurrence:(id)occurrence fadedOut:(BOOL)out
{
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  if (out)
  {
    if (([occurrenceCopy isNew] & 1) == 0)
    {
      [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
      [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
      [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
      [controllerCopy endForcedStart:0];
    }
  }

  else
  {
    occurrenceDate = [controllerCopy occurrenceDate];
    [controllerCopy forceStartWithOccurrence:occurrenceCopy occurrenceDate:occurrenceDate shouldUpdateViewSource:0 shouldUpdateOrigin:1 shouldPresentEditMenu:1];

    [(EKDayView *)self->_currentDay setDimmedOccurrence:occurrenceCopy];
  }

  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;
}

- (void)eventGestureControllerDidEndDragSession:(id)session
{
  [(EKDayView *)self->_currentDay highlightHour:session, -1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
  [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;
}

- (void)eventGestureController:(id)controller didSingleTapOccurrence:(id)occurrence shouldExtendSelection:(BOOL)selection
{
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (selection)
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 dayViewController:self modifySelection:occurrenceCopy];
  }

  else
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    event = [(EKEventGestureController *)self->_eventGestureController event];
    [v11 dayViewController:self didSelectEvent:event animated:1 userInitiated:1];
  }

LABEL_7:
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
  [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
  if ([(EKDayViewController *)self _shouldEndGestureEditingOnTap])
  {
    [controllerCopy endForcedStart:0];
  }
}

- (BOOL)didScrollWhenEventGestureController:(id)controller scrollTimerFiredToMoveLeft:(BOOL)left right:(BOOL)right vertically:(BOOL)vertically towardPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  verticallyCopy = vertically;
  rightCopy = right;
  leftCopy = left;
  controllerCopy = controller;
  if (((leftCopy & 1) != 0 || rightCopy) && ![(EKDayViewController *)self disableGestureDayChange])
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    if (IsLeftToRight)
    {
      v15 = -leftCopy;
    }

    else
    {
      v15 = leftCopy;
    }

    if (IsLeftToRight)
    {
      v16 = rightCopy;
    }

    else
    {
      v16 = -rightCopy;
    }

    v17 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:(v15 + v16) calendar:self->_calendar];
    [(EKDayViewController *)self _setDisplayDate:v17 forRepeat:0];
    [controllerCopy didCrossDragBoundary:2];
  }

  v18 = verticallyCopy && [(EKDayView *)self->_currentDay scrollTowardPoint:x, y];

  return v18;
}

- (void)externallyEndedGestureDragging
{
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
  [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;
}

- (void)validateInterfaceOrientationWithFutureOrientation:(int64_t)orientation
{
  if ([(EKDayViewController *)self isViewLoaded])
  {
    v5 = orientation - 1;
    if (v5 < 2 != ([(EKDayView *)self->_currentDay orientation]- 1) < 2)
    {
      if (v5 < 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      [(EKDayView *)self->_previousDay setOrientation:v6];
      [(EKDayView *)self->_currentDay setOrientation:v6];
      nextDay = self->_nextDay;

      [(EKDayView *)nextDay setOrientation:v6];
    }
  }
}

- (BOOL)eventEditorPopoverActiveWhileDraggingForEventGestureController:(id)controller
{
  delegate = [(EKDayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(EKDayViewController *)self delegate];
  v7 = [delegate2 dayViewControllerShouldShowDetachDialogOnGestureDraggingEnd:self];

  return v7 ^ 1;
}

- (BOOL)_shouldEndGestureEditingOnTap
{
  if ([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress])
  {
    return 0;
  }

  delegate = [(EKDayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(EKDayViewController *)self delegate];
  v7 = [delegate2 dayViewControllerShouldEndGestureEditingOnTap:self];

  return v7;
}

- (void)cleanUpAfterGestureFailureForEventGestureController:(id)controller
{
  [(EKDayView *)self->_currentDay highlightHour:controller, -1.0];
  currentDay = self->_currentDay;

  [(EKDayView *)currentDay setAllDayLabelHighlighted:0];
}

- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider
{
  eventCopy = event;
  providerCopy = provider;
  delegate = [(EKDayViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate provideExternalRepresentationsForEvent:eventCopy withProvider:providerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_notifyDelegateOfSelectedDateChange
{
  if (![(EKDayViewController *)self disableNotifyDateChangeDuringTracking]|| !self->_fingerDown)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 dayViewController:self didChangeDisplayDate:self->_displayDate];
      }
    }
  }
}

- (void)_relayoutDaysDuringScrollingAndPerformDayChanges:(BOOL)changes
{
  changesCopy = changes;
  [(UIScrollView *)self->_horizontalScrollingView bounds];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_horizontalScrollingView contentOffset];
  v10 = v9;
  v11 = v9 < v6 * 0.5;
  v12 = v9 > v6 * 1.5;
  _isResizing = [(EKDayViewController *)self _isResizing];
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v54 = IsLeftToRight;
  if (IsLeftToRight)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if ((IsLeftToRight & 1) == 0)
  {
    v11 = v12;
  }

  allowsDaySwitching = [(EKDayViewController *)self allowsDaySwitching];
  v17 = allowsDaySwitching && v11;
  v18 = allowsDaySwitching && v15;
  if (changesCopy && !_isResizing)
  {
    if (v18)
    {
      displayDate = [(EKDayView *)self->_nextDay displayDate];
      if (!v17)
      {
LABEL_13:
        if (displayDate && ([(NSDateComponents *)self->_displayDate isEqual:displayDate]& 1) == 0)
        {
          *(self + 1088) |= 2u;
          [(EKDayViewController *)self setDisplayDate:displayDate];
          [(EKDayViewController *)self _notifyDelegateOfSelectedDateChange];
          *(self + 1088) &= ~2u;
        }

        goto LABEL_17;
      }
    }

    else
    {
      displayDate = 0;
      if (!v17)
      {
        goto LABEL_13;
      }
    }

    displayDate2 = [(EKDayView *)self->_previousDay displayDate];

    displayDate = displayDate2;
    goto LABEL_13;
  }

LABEL_17:
  previousDay = self->_previousDay;
  [(EKDayView *)self->_currentDay highlightedHour];
  [(EKDayView *)previousDay highlightHour:?];
  [(EKDayView *)self->_previousDay setAllDayLabelHighlighted:[(EKDayView *)self->_currentDay isAllDayLabelHighlighted]];
  v22 = self->_previousDay;
  event = [(EKEventGestureController *)self->_eventGestureController event];
  [(EKDayView *)v22 setDimmedOccurrence:event];

  nextDay = self->_nextDay;
  [(EKDayView *)self->_currentDay highlightedHour];
  [(EKDayView *)nextDay highlightHour:?];
  [(EKDayView *)self->_nextDay setAllDayLabelHighlighted:[(EKDayView *)self->_currentDay isAllDayLabelHighlighted]];
  v25 = self->_nextDay;
  event2 = [(EKEventGestureController *)self->_eventGestureController event];
  [(EKDayView *)v25 setDimmedOccurrence:event2];

  if ([(UIScrollView *)self->_horizontalScrollingView isTracking]|| ![(UIScrollView *)self->_horizontalScrollingView isDecelerating]) && ((v18 | v17))
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    if (v17)
    {
      nextDayWithGutter = self->_nextDayWithGutter;
      v52 = 1048;
      v53 = nextDayWithGutter;
      objc_storeStrong(&self->_nextDayWithGutter, self->_currentDayWithGutter);
      objc_storeStrong(&self->_currentDayWithGutter, self->_previousDayWithGutter);
      objc_storeStrong(&self->_previousDayWithGutter, nextDayWithGutter);
      v28 = self->_nextDay;
      v29 = v28;
      objc_storeStrong(&self->_nextDay, self->_currentDay);
      objc_storeStrong(&self->_currentDay, self->_previousDay);
      objc_storeStrong(&self->_previousDay, v28);
      dayContent = [(EKDayView *)self->_previousDay dayContent];
      [dayContent prepareForReuseIsReload:0];

      protectionQueue = self->_protectionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__EKDayViewController__relayoutDaysDuringScrollingAndPerformDayChanges___block_invoke;
      block[3] = &unk_1E8441178;
      block[4] = self;
      block[5] = &v57;
      dispatch_sync(protectionQueue, block);
      if ((*(self + 1056) & 2) != 0)
      {
        *(self + 1056) &= ~2u;
      }

      else
      {
        v32 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:0xFFFFFFFFLL calendar:self->_calendar];
        if ([(UIScrollView *)self->_horizontalScrollingView isTracking])
        {
          *(self + 1072) |= 1u;
          [(EKDayViewController *)self setPendingPreviousDate:v32];
        }

        else
        {
          [(EKDayViewController *)self _setDayView:self->_previousDay toDate:v32];
        }
      }
    }

    else
    {
      previousDayWithGutter = self->_previousDayWithGutter;
      v53 = previousDayWithGutter;
      objc_storeStrong(&self->_previousDayWithGutter, self->_currentDayWithGutter);
      objc_storeStrong(&self->_currentDayWithGutter, self->_nextDayWithGutter);
      objc_storeStrong(&self->_nextDayWithGutter, previousDayWithGutter);
      v34 = self->_previousDay;
      v29 = v34;
      objc_storeStrong(&self->_previousDay, self->_currentDay);
      objc_storeStrong(&self->_currentDay, self->_nextDay);
      objc_storeStrong(&self->_nextDay, v34);
      dayContent2 = [(EKDayView *)self->_nextDay dayContent];
      [dayContent2 prepareForReuseIsReload:0];

      v36 = self->_protectionQueue;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __72__EKDayViewController__relayoutDaysDuringScrollingAndPerformDayChanges___block_invoke_2;
      v55[3] = &unk_1E8441178;
      v55[4] = self;
      v55[5] = &v57;
      dispatch_sync(v36, v55);
      if (*(self + 1072))
      {
        *(self + 1072) &= ~1u;
      }

      else
      {
        v37 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:1 calendar:self->_calendar];
        if ([(UIScrollView *)self->_horizontalScrollingView isTracking])
        {
          *(self + 1056) |= 2u;
          [(EKDayViewController *)self setPendingNextDate:v37];
        }

        else
        {
          [(EKDayViewController *)self _setDayView:self->_nextDay toDate:v37];
        }
      }
    }

    if (*(v58 + 24) == 1)
    {
      [(EKDayViewController *)self reloadData];
    }

    superview = [(EKDayViewWithGutters *)self->_currentDayWithGutter superview];

    if (!superview)
    {
      [(UIScrollView *)self->_horizontalScrollingView addSubview:self->_currentDayWithGutter];
    }

    v39 = -v6;
    if (v10 < v6 * 0.5)
    {
      v39 = v6;
    }

    [(UIScrollView *)self->_horizontalScrollingView setContentOffset:v10 + v39, 0.0];
    if ((*(self + 1056) & 2) != 0 && [(EKDayViewController *)self _isViewInVisibleRect:self->_nextDay])
    {
      [(EKDayViewController *)self _setDayView:self->_nextDay toDate:self->_pendingNextDate];
      *(self + 1056) &= ~2u;
    }

    if ((*(self + 1072) & 1) != 0 && [(EKDayViewController *)self _isViewInVisibleRect:self->_previousDay])
    {
      [(EKDayViewController *)self _setDayView:self->_previousDay toDate:self->_pendingPreviousDate];
      *(self + 1072) &= ~1u;
    }

    if (changesCopy)
    {
      displayDate3 = [(EKDayView *)self->_currentDay displayDate];
      [(EKDayViewController *)self setDisplayDate:displayDate3];
    }

    v41 = CalRoundRectToScreenScale(0.0, 0.0, v6, v8);
    v43 = v42;
    v45 = v44;
    v47 = v46;
    if (v54)
    {
      v48 = 1032;
    }

    else
    {
      v48 = 1048;
    }

    [*(&self->super.super.super.isa + v48) setFrame:v41];
    [(EKDayViewWithGutters *)self->_currentDayWithGutter setFrame:v6, v43, v45, v47];
    if (v54)
    {
      v49 = 1048;
    }

    else
    {
      v49 = 1032;
    }

    [*(&self->super.super.super.isa + v49) setFrame:{v6 + v6, v43, v45, v47}];
    [(EKDayViewController *)self _updateAllDayAreaHeight];
    [(EKDayView *)self->_previousDay shouldAnnotateAppEntitiesChanged];
    [(EKDayView *)self->_currentDay shouldAnnotateAppEntitiesChanged];
    [(EKDayView *)self->_nextDay shouldAnnotateAppEntitiesChanged];
    _Block_object_dispose(&v57, 8);
  }

  view = [(EKDayViewController *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
  {
    draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];

    if (!draggingView)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__scrollDayViewAfterRelayoutDays object:0];
      [(EKDayViewController *)self performSelector:sel__scrollDayViewAfterRelayoutDays withObject:0 afterDelay:0.0];
    }
  }

  else
  {
  }
}

void __72__EKDayViewController__relayoutDaysDuringScrollingAndPerformDayChanges___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1112);
  objc_storeStrong((*(a1 + 32) + 1112), *(*(a1 + 32) + 1096));
  objc_storeStrong((*(a1 + 32) + 1096), *(*(a1 + 32) + 1104));
  v3 = *(a1 + 32);
  v4 = *(v3 + 1104);
  *(v3 + 1104) = v2;
  v5 = v2;

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1096) == 0;
}

void __72__EKDayViewController__relayoutDaysDuringScrollingAndPerformDayChanges___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1104);
  objc_storeStrong((*(a1 + 32) + 1104), *(*(a1 + 32) + 1096));
  objc_storeStrong((*(a1 + 32) + 1096), *(*(a1 + 32) + 1112));
  v3 = *(a1 + 32);
  v4 = *(v3 + 1112);
  *(v3 + 1112) = v2;
  v5 = v2;

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1096) == 0;
}

- (void)_setDayView:(id)view toDate:(id)date
{
  viewCopy = view;
  dateCopy = date;
  displayDate = [viewCopy displayDate];
  v9 = [displayDate isEqual:dateCopy];

  if ((v9 & 1) == 0)
  {
    [viewCopy setDisplayDate:dateCopy];
    reloadQueue = self->_reloadQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__EKDayViewController__setDayView_toDate___block_invoke;
    v11[3] = &unk_1E843EFB8;
    v11[4] = self;
    v12 = viewCopy;
    dispatch_async(reloadQueue, v11);
  }
}

void __42__EKDayViewController__setDayView_toDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1208);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __42__EKDayViewController__setDayView_toDate___block_invoke_2;
  v8 = &unk_1E843EFB8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  dispatch_sync(v2, &v5);
  [*(a1 + 40) loadData:0 withCompletion:{0, v5, v6, v7, v8}];
}

void __42__EKDayViewController__setDayView_toDate___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[127])
  {
    v7 = [v2 _eventsForDay:?];
    v8 = [v7 copy];
    v9 = *(a1 + 40);
    v10 = *(v9 + 1096);
    *(v9 + 1096) = v8;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__EKDayViewController__setDayView_toDate___block_invoke_3;
    block[3] = &unk_1E843EC60;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v3 == v2[126])
    {
      v12 = [v2 _eventsForDay:?];
      v4 = [v12 copy];
      v5 = *(a1 + 40);
      v6 = 1104;
    }

    else
    {
      if (v3 != v2[128])
      {
        return;
      }

      v12 = [v2 _eventsForDay:?];
      v4 = [v12 copy];
      v5 = *(a1 + 40);
      v6 = 1112;
    }

    v11 = *(v5 + v6);
    *(v5 + v6) = v4;
  }
}

- (BOOL)_isViewInVisibleRect:(id)rect
{
  rectCopy = rect;
  view = [(EKDayViewController *)self view];
  [rectCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  superview = [rectCopy superview];

  [view convertRect:superview fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(UIScrollView *)self->_horizontalScrollingView frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v16;
  v32 = v18;
  v33 = v20;
  v34 = v22;

  return CGRectIntersectsRect(*&v31, *&v24);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (![(EKDayViewController *)self _isResizing]&& !self->_adjustingForDeceleration)
  {
    superview = [(EKDayViewWithGutters *)self->_nextDayWithGutter superview];
    if (superview)
    {
    }

    else
    {
      [(UIScrollView *)self->_horizontalScrollingView bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(EKDayViewWithGutters *)self->_nextDayWithGutter frame];
      v33.origin.x = v13;
      v33.origin.y = v14;
      v33.size.width = v15;
      v33.size.height = v16;
      v31.origin.x = v6;
      v31.origin.y = v8;
      v31.size.width = v10;
      v31.size.height = v12;
      if (CGRectIntersectsRect(v31, v33))
      {
        [(UIScrollView *)self->_horizontalScrollingView addSubview:self->_nextDayWithGutter];
      }
    }

    superview2 = [(EKDayViewWithGutters *)self->_previousDayWithGutter superview];
    if (superview2)
    {
    }

    else
    {
      [(UIScrollView *)self->_horizontalScrollingView bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [(EKDayViewWithGutters *)self->_previousDayWithGutter frame];
      v34.origin.x = v26;
      v34.origin.y = v27;
      v34.size.width = v28;
      v34.size.height = v29;
      v32.origin.x = v19;
      v32.origin.y = v21;
      v32.size.width = v23;
      v32.size.height = v25;
      if (CGRectIntersectsRect(v32, v34))
      {
        [(UIScrollView *)self->_horizontalScrollingView addSubview:self->_previousDayWithGutter];
      }
    }

    if ((*(self + 1056) & 1) == 0 && self->_viewAppeared)
    {
      [(EKDayViewController *)self _relayoutDaysDuringScrolling];
    }

    if ((*(self + 1088) & 1) != 0 && [(UIScrollView *)self->_horizontalScrollingView isTracking])
    {
      *(self + 1088) &= ~1u;
      if ((*(self + 1056) & 2) != 0)
      {
        [(EKDayViewController *)self _setDayView:self->_nextDay toDate:self->_pendingNextDate];
        *(self + 1056) &= ~2u;
      }

      if (*(self + 1072))
      {
        [(EKDayViewController *)self _setDayView:self->_previousDay toDate:self->_pendingPreviousDate];
        *(self + 1072) &= ~1u;
      }
    }

    [(EKDayViewController *)self _updateAllDayAreaHeight];
  }
}

- (double)_weightedAllDayHeightForView:(id)view visibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  [viewCopy frame];
  v28.origin.x = v9;
  v28.origin.y = v10;
  v28.size.width = v11;
  v28.size.height = v12;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v13 = 0.0;
  if (CGRectIntersectsRect(v25, v28))
  {
    [viewCopy frame];
    v29.origin.x = v14;
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = v17;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectIntersection(v26, v29);
    v18 = v27.size.width;
    [viewCopy frame];
    v20 = v18 / v19;
    dayView = [viewCopy dayView];
    allDayView = [dayView allDayView];
    [allDayView naturalHeight];
    v13 = v20 * v23 + 0.0;
  }

  return v13;
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  *(self + 1088) |= 1u;
  self->_fingerDown = 0;
  [(EKDayViewController *)self setTransitionedToSameDay:0];
  delegate = [(EKDayViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

  [(UIScrollView *)self->_horizontalScrollingView _pageDecelerationTarget];
  v8 = v7;
  [(EKDayViewWithGutters *)self->_currentDayWithGutter frame];
  MinX = CGRectGetMinX(v46);
  [(EKDayViewWithGutters *)self->_currentDayWithGutter frame];
  MaxX = CGRectGetMaxX(v47);
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  if (!IsLeftToRight || v8 < MaxX)
  {
    if (v8 >= MinX)
    {
      v14 = 1;
    }

    else
    {
      v14 = IsLeftToRight;
    }

    if (v8 < MinX)
    {
      v15 = IsLeftToRight;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v8 < MaxX)
      {
        v39 = 1;
      }

      else
      {
        v39 = IsLeftToRight;
      }

      if (v39)
      {
        displayDate = [(EKDayView *)self->_currentDay displayDate];
        [(EKDayViewController *)self setTransitionedToSameDay:1];
        goto LABEL_19;
      }
    }

    if ((*(self + 1072) & 1) == 0)
    {
      v12 = 1008;
      goto LABEL_6;
    }

    v16 = 1080;
LABEL_17:
    displayDate2 = *(&self->super.super.super.isa + v16);
    goto LABEL_18;
  }

LABEL_4:
  if ((*(self + 1056) & 2) != 0)
  {
    v16 = 1064;
    goto LABEL_17;
  }

  v12 = 1024;
LABEL_6:
  displayDate2 = [*(&self->super.super.super.isa + v12) displayDate];
LABEL_18:
  displayDate = displayDate2;
LABEL_19:
  CalAnalyticsSendEventLazy();
  delegate2 = [(EKDayViewController *)self delegate];
  [delegate2 dayViewController:self didStartDeceleratingTargettingDate:displayDate];

LABEL_20:
  self->_adjustingForDeceleration = 1;
  [deceleratingCopy _pageDecelerationTarget];
  v21 = CalRoundPointToScreenScale(v19, v20);
  v23 = v22;
  [deceleratingCopy contentOffset];
  v26 = CalRoundPointToScreenScale(v24, v25);
  v28 = v27;
  [deceleratingCopy _horizontalVelocity];
  if (v29 >= 0.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -v29;
  }

  [deceleratingCopy stopScrollingAndZooming];
  [deceleratingCopy setContentOffset:0 animated:{v26, v28}];
  self->_adjustingForDeceleration = 0;
  v31 = *(self + 1056);
  *(self + 1056) = v31 | 1;
  v32 = v31 & 1;
  v33 = v26 - v21;
  if (v26 - v21 < 0.0)
  {
    v33 = -(v26 - v21);
  }

  [(ScrollSpringFactory *)self->_decelerationSpringFactory setInitialVelocity:v30 / v33 * EKUIScaleFactor() * 1000.0];
  self->_needToCompleteDeceleration = 0;
  v34 = MEMORY[0x1E69DD250];
  v35 = springAnimationDuration();
  decelerationSpringFactory = self->_decelerationSpringFactory;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __55__EKDayViewController_scrollViewWillBeginDecelerating___block_invoke_2;
  v41[3] = &unk_1E8441818;
  v41[4] = self;
  v42 = deceleratingCopy;
  v43 = v21;
  v44 = v23;
  v45 = v32;
  v37 = deceleratingCopy;
  v38 = dayViewScrollAnimationsPreferringFRR(v41);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __55__EKDayViewController_scrollViewWillBeginDecelerating___block_invoke_4;
  v40[3] = &unk_1E843EC10;
  v40[4] = self;
  [v34 _animateWithDuration:393222 delay:decelerationSpringFactory options:v38 factory:v40 animations:v35 completion:0.0];

  [(EKDayViewController *)self _cutAnimationTailAfterDelayForDecelerationFromUserInput];
}

void __55__EKDayViewController_scrollViewWillBeginDecelerating___block_invoke_2(uint64_t a1)
{
  ++*(*(a1 + 32) + 1168);
  [*(a1 + 40) setContentOffset:{*(a1 + 48), *(a1 + 56)}];
  *(*(a1 + 32) + 1193) = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__EKDayViewController_scrollViewWillBeginDecelerating___block_invoke_3;
  v2[3] = &unk_1E84407B0;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)_scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if (!self->_adjustingForDeceleration)
  {
    v8 = deceleratingCopy;
    *(self + 1088) &= ~1u;
    if ((*(self + 1056) & 1) == 0)
    {
      [(EKDayViewController *)self _relayoutDaysDuringScrolling];
    }

    if ((*(self + 1056) & 2) != 0)
    {
      [(EKDayViewController *)self _setDayView:self->_nextDay toDate:self->_pendingNextDate];
      *(self + 1056) &= ~2u;
    }

    if (*(self + 1072))
    {
      [(EKDayViewController *)self _setDayView:self->_previousDay toDate:self->_pendingPreviousDate];
      *(self + 1072) &= ~1u;
    }

    delegate = [(EKDayViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(EKDayViewController *)self delegate];
      [delegate2 dayViewControllerDidEndDecelerating:self];
    }

    [(EKDayViewController *)self _showNowAfterScrollViewDidEndDecelerating:v8];
    deceleratingCopy = v8;
  }
}

- (void)_showNowAfterScrollViewDidEndDecelerating:(id)decelerating
{
  if ([(EKDayViewController *)self _canShowNowAfterScrollViewDidEndDecelerating:decelerating])
  {
    [(EKDayViewController *)self _showNowDelay];
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__showNowTimerFired_ selector:0 userInfo:0 repeats:?];
    showNowTimer = self->_showNowTimer;
    self->_showNowTimer = v4;
  }

  else
  {

    [(EKDayViewController *)self _stopShowNowTimer];
  }
}

- (void)_showNowTimerFired:(id)fired
{
  if ([(EKDayViewController *)self _isCurrentDayToday])
  {
    [(EKDayViewController *)self scrollToNow:1];
  }

  [(EKDayViewController *)self setShowNowTimer:0];
}

- (void)_cleanUpTargetDateComponents
{
  if (self->_correctAfterScroll)
  {
    targetDateComponents = self->_targetDateComponents;
    if (targetDateComponents)
    {
      calendar = self->_calendar;
      v5 = targetDateComponents;
      v8 = [(NSDateComponents *)v5 dateComponents:30 byAddingDays:0xFFFFFFFFLL calendar:calendar];
      v6 = [(NSDateComponents *)v5 dateComponents:30 byAddingDays:1 calendar:self->_calendar];
      [(EKDayViewController *)self _setDayView:self->_previousDay toDate:v8];
      [(EKDayViewController *)self _setDayView:self->_currentDay toDate:v5];
      [(EKDayViewController *)self _setDayView:self->_nextDay toDate:v6];
      self->_correctAfterScroll = 0;
      v7 = self->_targetDateComponents;
      self->_targetDateComponents = 0;
    }
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  [(EKDayViewController *)self _relayoutDaysDuringScrolling];
  [(EKDayViewController *)self _cleanUpTargetDateComponents];
  [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
  *(self + 1056) &= ~1u;
  [(EKDayViewController *)self reloadData];
  [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrence];
  [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:0];
  delegate = [(EKDayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKDayViewController *)self delegate];
    [delegate2 dayViewControllerDidEndScrolling:self];
  }

  [(EKDayViewController *)self _scrollToNowOnScrollViewDidEndScrollingAnimation:animationCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"EKDayViewController_ScrollDidEndAnimationNotification" object:0];
}

- (void)_scrollToNowOnScrollViewDidEndScrollingAnimation:(id)animation
{
  [(EKDayViewController *)self scrollToNow:[(EKDayViewController *)self _shouldRespondToApplicationDidBecomeActiveStateChange]^ 1];
  if ([(EKDayViewController *)self _shouldRespondToApplicationDidBecomeActiveStateChange])
  {

    [(EKDayViewController *)self _didRespondToApplicationDidBecomeActiveStateChange];
  }
}

- (BOOL)_shouldRespondToApplicationDidBecomeActiveStateChange
{
  dataSource = [(EKDayViewController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  dataSource2 = [(EKDayViewController *)self dataSource];
  v6 = [dataSource2 dayViewControllerShouldRespondToApplicationDidBecomeActiveStateChange:self];

  return v6;
}

- (void)_didRespondToApplicationDidBecomeActiveStateChange
{
  delegate = [(EKDayViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKDayViewController *)self delegate];
    [delegate2 dayViewControllerDidRespondToApplicationDidBecomeActiveStateChange:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(EKDayViewController *)self _completeScrollingAnimationIfNeeded];
  *(self + 1056) &= ~1u;
  [(EKDayViewController *)self _completeDecelerationIfNeeded];
  event = [(EKEventGestureController *)self->_eventGestureController event];
  if (event)
  {
    v5 = event;
    dragGestureInProgress = [(EKEventGestureController *)self->_eventGestureController dragGestureInProgress];

    if (!dragGestureInProgress)
    {
      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
      [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
    }
  }

  self->_fingerDown = 1;
  [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
  if ([(EKDayViewController *)self _isCurrentDayToday])
  {
    [(EKDayViewController *)self _stopShowNowTimer];
    currentDay = self->_currentDay;

    [(EKDayView *)currentDay stopScrolling];
  }
}

- (void)_stopShowNowTimer
{
  showNowTimer = [(EKDayViewController *)self showNowTimer];
  [showNowTimer invalidate];

  [(EKDayViewController *)self setShowNowTimer:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    self->_fingerDown = 0;
    [(EKDayViewController *)self _notifyDelegateOfSelectedDateChange];
  }
}

- (BOOL)blockableScrollViewShouldAllowScrolling
{
  delegate = [(EKDayViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(EKDayViewController *)self delegate];
  v6 = [delegate2 dayviewControllerShouldAllowSwipeToChangeDays:self];

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  ++self->_sizeTransitionsInProgress;
  v18.receiver = self;
  v18.super_class = EKDayViewController;
  coordinatorCopy = coordinator;
  [(EKDayViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(EKDayViewController *)self isViewLoaded])
  {
    height = [(EKDayViewController *)self _effectiveInterfaceOrientationForSize:width, height];
    [(EKDayView *)self->_previousDay setOrientation:height];
    [(EKDayView *)self->_currentDay setOrientation:height];
    [(EKDayView *)self->_nextDay setOrientation:height];
  }

  if ([(EKDayViewController *)self isViewLoaded])
  {
    view = [(EKDayViewController *)self view];
    window = [view window];
    v11 = window != 0;
  }

  else
  {
    v11 = 0;
  }

  gestureController = [(EKDayViewController *)self gestureController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__EKDayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_1E8441840;
  v17 = v11;
  v15 = gestureController;
  selfCopy = self;
  v13 = gestureController;
  [coordinatorCopy animateAlongsideTransition:0 completion:v14];
}

uint64_t __74__EKDayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    [*(result + 32) updateDraggingOccurrenceFrameFromSource];
    result = [*(v1 + 32) updateDraggingOccurrenceOrigin];
  }

  --*(*(v1 + 40) + 1172);
  return result;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = EKDayViewController;
  [(EKDayViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if ([(EKDayViewController *)self isViewLoaded])
  {
    v7 = [(EKDayViewController *)self _effectiveInterfaceOrientationForSize:EKUICurrentWindowSize(windowCopy)];
    [(EKDayView *)self->_previousDay setOrientation:v7];
    [(EKDayView *)self->_currentDay setOrientation:v7];
    [(EKDayView *)self->_nextDay setOrientation:v7];
  }
}

- (void)_setHorizontalContentOffsetUsingSpringAnimation:(CGPoint)animation
{
  y = animation.y;
  x = animation.x;
  if (![(EKDayViewController *)self _isResizing])
  {
    self->_needToCompleteScrollingAnimation = 0;
    v6 = MEMORY[0x1E69DD250];
    v7 = springAnimationDuration();
    v8 = +[SpringFactory sharedFactory];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__EKDayViewController__setHorizontalContentOffsetUsingSpringAnimation___block_invoke;
    v10[3] = &unk_1E8441288;
    v10[4] = self;
    *&v10[5] = x;
    *&v10[6] = y;
    v9 = dayViewScrollAnimationsPreferringFRR(v10);
    [v6 _animateWithDuration:393222 delay:v8 options:v9 factory:0 animations:v7 completion:0.0];

    [(EKDayViewController *)self _cutAnimationTailAfterDelayForScrollAnimationFromExternalSource];
  }
}

uint64_t __71__EKDayViewController__setHorizontalContentOffsetUsingSpringAnimation___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1056) |= 1u;
  result = [*(*(a1 + 32) + 1000) setContentOffset:0 animated:{*(a1 + 40), *(a1 + 48)}];
  *(*(a1 + 32) + 1192) = 1;
  return result;
}

- (void)_cutAnimationTailAfterDelayForDecelerationFromUserInput
{
  [(EKDayViewController *)self _cancelAllLongTailCuttingCallbacks];
  v3 = springAnimationDuration() * 0.5;

  [(EKDayViewController *)self performSelector:sel___cutLongCallbackTailForDecelerationFromUserInput withObject:0 afterDelay:v3];
}

- (void)_cutAnimationTailAfterDelayForScrollAnimationFromExternalSource
{
  [(EKDayViewController *)self _cancelAllLongTailCuttingCallbacks];
  v3 = springAnimationDuration() * 0.5;

  [(EKDayViewController *)self performSelector:sel___cutLongTailCallbackForScrollAnimationFromExternalSource withObject:0 afterDelay:v3];
}

- (void)_cancelAllLongTailCuttingCallbacks
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___cutLongCallbackTailForDecelerationFromUserInput object:0];
  v3 = MEMORY[0x1E69E58C0];

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel___cutLongTailCallbackForScrollAnimationFromExternalSource object:0];
}

- (void)pasteboardManager:(id)manager presentAlert:(id)alert
{
  alertCopy = alert;
  currentPresentationController = [(EKDayViewController *)self currentPresentationController];
  [alertCopy presentFromSource:currentPresentationController];
}

- (void)pasteboardManager:(id)manager beginEditingEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewController:self beginEditingOccurrence:eventCopy creationMethod:3];
  }
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(EKDayViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)_logUserStateDiagnostics:(id)diagnostics
{
  v68 = *MEMORY[0x1E69E9840];
  diagnosticsCopy = diagnostics;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__13;
  v59 = __Block_byref_object_dispose__13;
  v60 = 0;
  protectionQueue = self->_protectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKDayViewController__logUserStateDiagnostics___block_invoke;
  block[3] = &unk_1E8441868;
  block[4] = self;
  block[5] = &v55;
  dispatch_sync(protectionQueue, block);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v56[5];
  v4 = [obj countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (v4)
  {
    v43 = *v51;
    do
    {
      v5 = 0;
      v44 = v4;
      do
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v50 + 1) + 8 * v5);
        uUID = [v6 UUID];
        v8 = uUID == 0;

        if (!v8)
        {
          v65[0] = @"startDate";
          startDate = [v6 startDate];
          v49 = startDate;
          v10 = &stru_1F4EF6790;
          if (startDate)
          {
            v10 = startDate;
          }

          v66[0] = v10;
          v65[1] = @"duration";
          v11 = MEMORY[0x1E696AD98];
          [v6 duration];
          v48 = [v11 numberWithDouble:?];
          v66[1] = v48;
          v65[2] = @"allDay";
          isAllDay = [v6 isAllDay];
          v13 = @"NO";
          if (isAllDay)
          {
            v13 = @"YES";
          }

          v66[2] = v13;
          v65[3] = @"UUID";
          uUID2 = [v6 UUID];
          v47 = uUID2;
          v15 = &stru_1F4EF6790;
          if (uUID2)
          {
            v15 = uUID2;
          }

          v66[3] = v15;
          v65[4] = @"uniqueID";
          uniqueID = [v6 uniqueID];
          v46 = uniqueID;
          v17 = &stru_1F4EF6790;
          if (uniqueID)
          {
            v17 = uniqueID;
          }

          v66[4] = v17;
          v65[5] = @"externalURL";
          externalURL = [v6 externalURL];
          v19 = externalURL;
          v20 = &stru_1F4EF6790;
          if (externalURL)
          {
            v20 = externalURL;
          }

          v66[5] = v20;
          v65[6] = @"alarms";
          alarms = [v6 alarms];
          v22 = alarms;
          v23 = &stru_1F4EF6790;
          if (alarms)
          {
            v23 = alarms;
          }

          v66[6] = v23;
          v65[7] = @"hasLocation";
          location = [v6 location];
          v25 = @"NO";
          if (location)
          {
            v25 = @"YES";
          }

          v66[7] = v25;
          v65[8] = @"calendarIdentifier";
          calendar = [v6 calendar];
          calendarIdentifier = [calendar calendarIdentifier];
          v28 = calendarIdentifier;
          v29 = &stru_1F4EF6790;
          if (calendarIdentifier)
          {
            v29 = calendarIdentifier;
          }

          v66[8] = v29;
          v65[9] = @"sourceIdentifier";
          calendar2 = [v6 calendar];
          source = [calendar2 source];
          sourceIdentifier = [source sourceIdentifier];
          v33 = sourceIdentifier;
          v34 = &stru_1F4EF6790;
          if (sourceIdentifier)
          {
            v34 = sourceIdentifier;
          }

          v66[9] = v34;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:10];

          uUID3 = [v6 UUID];
          [dictionary setObject:v45 forKeyedSubscript:uUID3];
        }

        ++v5;
      }

      while (v44 != v5);
      v4 = [obj countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (v4);
  }

  v36 = kEKUILogHandle;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    *buf = 138543618;
    v62 = v38;
    v63 = 2114;
    v64 = dictionary;
    _os_log_impl(&dword_1D3400000, v36, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ Visible Events when viewDidAppear. %{public}@", buf, 0x16u);
  }

  _Block_object_dispose(&v55, 8);
}

void __48__EKDayViewController__logUserStateDiagnostics___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1096) occurrences];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)interaction:(id)interaction canPasteEventAtPoint:(CGPoint)point inView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained pasteboardManagerForDayViewController:self];

  LOBYTE(WeakRetained) = [v7 canPerformPaste];
  return WeakRetained;
}

- (BOOL)interaction:(id)interaction canCreateEventAtPoint:(CGPoint)point inView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  defaultCalendarForNewEvents = [WeakRetained defaultCalendarForNewEvents];
  v7 = defaultCalendarForNewEvents != 0;

  return v7;
}

- (BOOL)interaction:(id)interaction canCreateReminderAtPoint:(CGPoint)point inView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  calendarForNewIntegrationReminders = [WeakRetained calendarForNewIntegrationReminders];
  v7 = calendarForNewIntegrationReminders != 0;

  return v7;
}

- (void)createEvent:(BOOL)event atPoint:(CGPoint)point inView:(id)view
{
  eventCopy = event;
  [(EKDayView *)self->_currentDay convertPoint:view fromView:point.x, point.y];
  v20 = 0;
  [(EKDayView *)self->_currentDay dateAtPoint:&v20 isAllDay:?];
  v8 = CalSnapDateTo15MinuteInterval(0, v7);
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  if (eventCopy)
  {
    v12 = [WeakRetained dayViewController:self createEventAtDate:v9 allDay:v20];
  }

  else
  {
    v12 = [WeakRetained dayViewController:self createReminderAtDate:v9 allDay:v20];
  }

  v13 = v12;

  v14 = MEMORY[0x1E69930C8];
  eventStore = [v13 eventStore];
  timeZone = [eventStore timeZone];
  v17 = [v14 calendarDateWithDate:v9 timeZone:timeZone];

  gestureController = [(EKDayViewController *)self gestureController];
  [gestureController forceStartWithOccurrence:v13 occurrenceDate:v17 shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:0];

  gestureController2 = [(EKDayViewController *)self gestureController];
  [(EKDayViewController *)self eventGestureController:gestureController2 didCommitOccurrence:v13 toDate:v20 isAllDay:0 span:v8];
}

- (void)interaction:(id)interaction pasteEventAtPoint:(CGPoint)point inView:(id)view
{
  [(EKDayView *)self->_currentDay convertPoint:view fromView:point.x, point.y];
  v10 = 0;
  v6 = MEMORY[0x1E695DF00];
  [(EKDayView *)self->_currentDay dateAtPoint:&v10 isAllDay:?];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [WeakRetained pasteboardManagerForDayViewController:self];

  [v9 setDateForPaste:v7];
  [v9 pasteEventsWithDateMode:-[EKDayViewController _dateModeForAllDay:](self delegate:{"_dateModeForAllDay:", v10), self}];
}

- (id)interaction:(id)interaction titleForPasteActionAtPoint:(CGPoint)point inView:(id)view
{
  [(EKDayView *)self->_currentDay convertPoint:view fromView:point.x, point.y];
  v11 = 0;
  [(EKDayView *)self->_currentDay dateAtPoint:&v11 isAllDay:?];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained pasteboardManagerForDayViewController:self];

  numberOfEventsToPaste = [v7 numberOfEventsToPaste];
  v9 = [EKUIRightClickEmptySpaceInteraction localizedPasteStringForEventCount:numberOfEventsToPaste includeHere:(v11 & 1) == 0];

  return v9;
}

- (id)interaction:(id)interaction subtitleForPasteActionAtPoint:(CGPoint)point inView:(id)view
{
  [(EKDayView *)self->_currentDay convertPoint:view fromView:point.x, point.y];
  v14 = 0;
  [(EKDayView *)self->_currentDay dateAtPoint:&v14 isAllDay:?];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  v7 = CUIKCalendar();
  v8 = [MEMORY[0x1E6993458] roundedDateForDate:v6 dateMode:-[EKDayViewController _dateModeForAllDay:](self calendar:{"_dateModeForAllDay:", v14), v7}];

  v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v9 setCalendar:v7];
  timeZone = [v7 timeZone];
  [v9 setTimeZone:timeZone];

  [v9 setDoesRelativeDateFormatting:1];
  v11 = v14;
  [v9 setDateStyle:1];
  [v9 setTimeStyle:v11 ^ 1];
  v12 = [v9 stringFromDate:v8];

  return v12;
}

- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source
{
  selectedCopy = selected;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dayOccurrenceViewSelected:selectedCopy source:source];
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (EKDayViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGPoint)normalizedContentOffset
{
  x = self->_normalizedContentOffset.x;
  y = self->_normalizedContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
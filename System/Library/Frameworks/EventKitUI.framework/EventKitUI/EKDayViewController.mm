@interface EKDayViewController
- (BOOL)_delegateRespondsToDisplayedOccurrencesChangedMethod;
- (BOOL)_isCalendarDate:(id)a3 sameDayAsComponents:(id)a4;
- (BOOL)_isCurrentDayToday;
- (BOOL)_isResizing;
- (BOOL)_isViewInVisibleRect:(id)a3;
- (BOOL)_shouldEndGestureEditingOnTap;
- (BOOL)_shouldRespondToApplicationDidBecomeActiveStateChange;
- (BOOL)blockableScrollViewShouldAllowScrolling;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)dayViewShouldDrawSynchronously:(id)a3;
- (BOOL)didScrollWhenEventGestureController:(id)a3 scrollTimerFiredToMoveLeft:(BOOL)a4 right:(BOOL)a5 vertically:(BOOL)a6 towardPoint:(CGPoint)a7;
- (BOOL)eventEditorPopoverActiveWhileDraggingForEventGestureController:(id)a3;
- (BOOL)eventGestureController:(id)a3 didCommitOccurrence:(id)a4 toDate:(double)a5 isAllDay:(BOOL)a6 span:(int64_t)a7;
- (BOOL)eventGestureController:(id)a3 isAllDayAtPoint:(CGPoint)a4 requireInsistence:(BOOL)a5;
- (BOOL)eventGestureControllerShouldAllowLongPress:(id)a3;
- (BOOL)interaction:(id)a3 canCreateEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 canCreateReminderAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 canPasteEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4;
- (BOOL)showWeekNumberLabel;
- (CGPoint)eventGestureController:(id)a3 pointAtDate:(double)a4 isAllDay:(BOOL)a5;
- (CGPoint)normalizedContentOffset;
- (CGPoint)pointAtDate:(double)a3 isAllDay:(BOOL)a4;
- (EKDayViewController)initWithTargetSizeClass:(int64_t)a3;
- (EKDayViewControllerDataSource)dataSource;
- (EKDayViewControllerDelegate)delegate;
- (NSArray)currentDayContentGridViewSubviews;
- (double)_weightedAllDayHeightForView:(id)a3 visibleRect:(CGRect)a4;
- (double)eventGestureController:(id)a3 dateAtPoint:(CGPoint)a4;
- (double)eventGestureController:(id)a3 heightForAllDayOccurrenceView:(id)a4;
- (double)eventGestureController:(id)a3 heightForOccurrenceViewOfDuration:(double)a4;
- (double)eventGestureController:(id)a3 widthForOccurrenceViewOfDays:(unint64_t)a4;
- (double)eventGestureController:(id)a3 yPositionPerhapsMatchingAllDayOccurrence:(id)a4 atPoint:(CGPoint)a5;
- (double)horizontalOffsetForPagingForEventGestureController:(id)a3;
- (double)timedRegionOriginForEventGestureController:(id)a3;
- (double)trackingAreaMinimumYPosition;
- (id)_createGutterDayViewWithDayView:(id)a3;
- (id)_eventGestureSuperview;
- (id)_eventsForCutOrCopy;
- (id)_eventsForDay:(id)a3;
- (id)_occurrencesForDayView:(id)a3;
- (id)createEventForEventGestureController:(id)a3;
- (id)createOccurrenceViewForEventGestures;
- (id)dayView:(id)a3 selectedCopyViewForOccurrence:(id)a4;
- (id)eventGestureController:(id)a3 occurrenceViewAtPoint:(CGPoint)a4 ignoreSelectedCopyView:(BOOL)a5;
- (id)eventsForStartDate:(id)a3 endDate:(id)a4;
- (id)interaction:(id)a3 subtitleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5;
- (id)interaction:(id)a3 titleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5;
- (id)occurrenceViewForEvent:(id)a3 includeNextAndPreviousDays:(BOOL)a4;
- (id)preferredEventsToSelectOnDate:(id)a3;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (int64_t)_effectiveInterfaceOrientationForSize:(CGSize)a3;
- (int64_t)dayViewContentInsetAdjustmentBehavior:(id)a3;
- (void)_cancelAllLongTailCuttingCallbacks;
- (void)_cleanUpTargetDateComponents;
- (void)_completeDecelerationIfNeeded;
- (void)_completeScrollingAnimationIfNeeded;
- (void)_cutAnimationTailAfterDelayForDecelerationFromUserInput;
- (void)_cutAnimationTailAfterDelayForScrollAnimationFromExternalSource;
- (void)_didRespondToApplicationDidBecomeActiveStateChange;
- (void)_highlightEvent:(id)a3 dayViewDate:(double)a4 isAllDay:(BOOL)a5;
- (void)_localeChanged:(id)a3;
- (void)_logUserStateDiagnostics:(id)a3;
- (void)_notifyDelegateOfSelectedDateChange;
- (void)_performDisplayedOccurrencesChangedDelegateMethodWithTrigger:(int)a3;
- (void)_relayoutDays;
- (void)_relayoutDaysDuringScrollingAndPerformDayChanges:(BOOL)a3;
- (void)_scrollToNowOnScrollViewDidEndScrollingAnimation:(id)a3;
- (void)_scrollViewDidEndDecelerating:(id)a3;
- (void)_setDayView:(id)a3 toDate:(id)a4;
- (void)_setDisplayDate:(id)a3 forRepeat:(BOOL)a4 animate:(BOOL)a5;
- (void)_setDisplayDateInternal:(id)a3;
- (void)_setHorizontalContentOffsetUsingSpringAnimation:(CGPoint)a3;
- (void)_setNextAndPreviousFirstVisibleSecondToCurrent;
- (void)_showNowAfterScrollViewDidEndDecelerating:(id)a3;
- (void)_showNowTimerFired:(id)a3;
- (void)_showWeekNumbersPreferenceChanged:(id)a3;
- (void)_stopShowNowTimer;
- (void)_updateAllDayAreaHeight;
- (void)attemptDisplayReviewPrompt;
- (void)blockableScrollViewDidChangeFrameSize;
- (void)cleanUpAfterGestureFailureForEventGestureController:(id)a3;
- (void)copy:(id)a3;
- (void)createEvent:(BOOL)a3 atPoint:(CGPoint)a4 inView:(id)a5;
- (void)cut:(id)a3;
- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4;
- (void)dayView:(id)a3 didCreateOccurrenceViews:(id)a4;
- (void)dayView:(id)a3 didScaleDayViewWithScale:(double)a4;
- (void)dayView:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5;
- (void)dayView:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5;
- (void)dayView:(id)a3 didUpdateScrollPosition:(CGPoint)a4;
- (void)dayView:(id)a3 firstVisibleSecondChanged:(unint64_t)a4;
- (void)dayView:(id)a3 isPinchingDayViewWithScale:(double)a4;
- (void)dayView:(id)a3 pointerDidTargetOccurrences:(id)a4;
- (void)dayViewDidCompleteAsyncLoadAndLayout:(id)a3;
- (void)dayViewDidTapEmptySpace:(id)a3 onDate:(id)a4;
- (void)dealloc;
- (void)editorDidCancelEditingEvent:(id)a3;
- (void)editorDidDeleteEvent:(id)a3;
- (void)editorDidSaveEvent:(id)a3;
- (void)eventGestureController:(id)a3 addViewToScroller:(id)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 adjustDraggingView:(id)a4 forAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didCancelEditingOccurrence:(id)a4 fadedOut:(BOOL)a5;
- (void)eventGestureController:(id)a3 didMoveToDate:(double)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didSetUpAtDate:(double)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didSingleTapOccurrence:(id)a4 shouldExtendSelection:(BOOL)a5;
- (void)eventGestureController:(id)a3 requestsPresentationOfViewController:(id)a4;
- (void)eventGestureController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventGestureControllerDidEndDragSession:(id)a3;
- (void)externallyEndedGestureDragging;
- (void)hideTimelineHighlight;
- (void)interaction:(id)a3 pasteEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (void)layoutContainerView:(id)a3;
- (void)loadData:(BOOL)a3 withTrigger:(int)a4 withCompletion:(id)a5;
- (void)loadDataBetweenStart:(id)a3 end:(id)a4 withTrigger:(int)a5 generation:(int)a6 completionForCurrentDayReload:(id)a7;
- (void)loadView;
- (void)paste:(id)a3;
- (void)pasteboardManager:(id)a3 beginEditingEvent:(id)a4;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)pasteboardManager:(id)a3 presentAlert:(id)a4;
- (void)preferredContentSizeDidChanged:(id)a3;
- (void)reloadDataForOccurrenceChangeWithGeneration:(int)a3;
- (void)reloadDataIfNeeded;
- (void)scrollDayViewAppropriatelyWithAnimation:(BOOL)a3;
- (void)scrollEventIntoView:(id)a3 animated:(BOOL)a4;
- (void)scrollToDate:(id)a3 animated:(BOOL)a4;
- (void)scrollToNow:(BOOL)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setAllowsDaySwitching:(BOOL)a3;
- (void)setAllowsSelection:(BOOL)a3;
- (void)setAnimateAllDayAreaHeight:(BOOL)a3;
- (void)setCalendar:(id)a3;
- (void)setDisplayDate:(id)a3;
- (void)setFrame:(CGRect)a3 gutterWidth:(double)a4;
- (void)setGestureOccurrenceSuperview:(id)a3;
- (void)setGutterWidth:(double)a3;
- (void)setPreloadExtraDays:(BOOL)a3;
- (void)setTimeZone:(id)a3;
- (void)showTimelineHighlightForTime:(id)a3;
- (void)significantTimeChangeOccurred;
- (void)timeZoneChanged;
- (void)updateGutterTopLabelsAppearance;
- (void)validateInterfaceOrientationWithFutureOrientation:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v2 = [(EKDayView *)self->_currentDay displayDate];
  v3 = CUIKTodayComponents();
  v4 = [v2 isEqual:v3];

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
  v15 = [MEMORY[0x1E69DC888] whiteColor];
  [(EKLayoutContainerView *)v76 setBackgroundColor:v15];

  if (!self->_eventGestureController)
  {
    v16 = [[EKEventGestureController alloc] initWithView:v76];
    eventGestureController = self->_eventGestureController;
    self->_eventGestureController = v16;

    [(EKEventGestureController *)self->_eventGestureController setDelegate:self];
    [(EKEventGestureController *)self->_eventGestureController setUsesHorizontalDragLocking:1];
  }

  v18 = [(EKDayViewController *)self view];
  [v18 bounds];
  Width = CGRectGetWidth(v78);

  v20 = [(EKDayViewController *)self view];
  [v20 bounds];
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

  v27 = [[BlockableScrollView alloc] initWithFrame:v26, 0.0, Width + gutterWidth * 2.0, Height];
  [(BlockableScrollView *)v27 setBlockableDelegate:self];
  v75 = v27;
  objc_storeStrong(&self->_horizontalScrollingView, v27);
  v28 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UIScrollView *)self->_horizontalScrollingView setBackgroundColor:v28];

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
  v31 = [(EKDayViewController *)self interfaceOrientation];
  v32 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:0xFFFFFFFFLL calendar:self->_calendar];
  v33 = [EKDayView alloc];
  v34 = self->_targetSizeClass;
  v35 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  LOBYTE(v72) = 0;
  v36 = [(EKDayView *)v33 initWithFrame:v34 sizeClass:v31 orientation:v32 displayDate:v35 backgroundColor:1 opaque:1 scrollbarShowsInside:v29 isMiniPreviewInEventDetail:v14 rightClickDelegate:Width, v30, v72, self];
  previousDay = self->_previousDay;
  self->_previousDay = v36;

  v38 = [EKDayView alloc];
  v39 = self->_targetSizeClass;
  displayDate = self->_displayDate;
  v41 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  LOBYTE(v73) = 0;
  v42 = [(EKDayView *)v38 initWithFrame:v39 sizeClass:v31 orientation:displayDate displayDate:v41 backgroundColor:1 opaque:1 scrollbarShowsInside:v29 isMiniPreviewInEventDetail:v14 rightClickDelegate:Width, v30, v73, self];
  currentDay = self->_currentDay;
  self->_currentDay = v42;

  v44 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:1 calendar:self->_calendar];
  v45 = [EKDayView alloc];
  v46 = self->_targetSizeClass;
  v47 = v44;
  v48 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  LOBYTE(v74) = 0;
  v49 = [(EKDayView *)v45 initWithFrame:v46 sizeClass:v31 orientation:v47 displayDate:v48 backgroundColor:1 opaque:1 scrollbarShowsInside:v29 isMiniPreviewInEventDetail:v14 rightClickDelegate:Width, v30, v74, self];
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
    v55 = [MEMORY[0x1E6993470] sharedPreferences];
    v56 = [v55 dayViewHourScale];

    if (v56)
    {
      [v56 floatValue];
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
  v65 = [(NSCalendar *)self->_calendar timeZone];
  [(EKDayView *)self->_currentDay setTimeZone:v65];

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
    v67 = [(NSCalendar *)self->_calendar timeZone];
    [(EKDayView *)self->_nextDay setTimeZone:v67];

    [(EKDayView *)self->_nextDay setDelegate:self];
    [(EKDayView *)self->_nextDay setDataSource:self];
    [(EKDayView *)self->_nextDay setAllowsOccurrenceSelection:self->_allowsSelection];
  }

  v68 = self->_previousDay;
  if (v68)
  {
    [(EKDayView *)v68 setCalendar:self->_calendar];
    v69 = [(NSCalendar *)self->_calendar timeZone];
    [(EKDayView *)self->_previousDay setTimeZone:v69];

    [(EKDayView *)self->_previousDay setDelegate:self];
    [(EKDayView *)self->_previousDay setDataSource:self];
    [(EKDayView *)self->_previousDay setAllowsOccurrenceSelection:self->_allowsSelection];
  }

  v70 = [MEMORY[0x1E696AD88] defaultCenter];
  [v70 addObserver:self selector:sel__localeChanged_ name:*MEMORY[0x1E6993308] object:0];
  [v70 addObserver:self selector:sel__showWeekNumbersPreferenceChanged_ name:*MEMORY[0x1E6993348] object:0];
  [v70 addObserver:self selector:sel_preferredContentSizeDidChanged_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (BOOL)showWeekNumberLabel
{
  v2 = [MEMORY[0x1E6993470] sharedPreferences];
  v3 = [v2 showWeekNumbers];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewDidLoad];
  if ([(EKDayViewController *)self shouldLogVisibleEvents])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__logUserStateDiagnostics_ name:*MEMORY[0x1E6993368] object:0];
  }
}

- (void)blockableScrollViewDidChangeFrameSize
{
  self->_requiresFullDayRelayout = 1;
  v2 = [(EKDayViewController *)self view];
  [v2 setNeedsLayout];
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
  v3 = [(EKDayViewWithGutters *)self->_previousDayWithGutter superview];
  if (v3 && (v4 = v3, [(EKDayViewWithGutters *)self->_nextDayWithGutter superview], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(EKDayViewController *)self navigationController];
    v8 = [v7 view];
    v9 = [v8 window];
    EKUIPushFallbackSizingContextWithViewHierarchy(v9);

    v6 = 1;
  }

  [(EKDayView *)self->_previousDay setFirstVisibleSecond:[(EKDayView *)self->_currentDay firstVisibleSecond]];
  [(EKDayView *)self->_nextDay setFirstVisibleSecond:[(EKDayView *)self->_currentDay firstVisibleSecond]];
  if (v6)
  {
    v12 = [(EKDayViewController *)self navigationController];
    v10 = [v12 view];
    v11 = [v10 window];
    EKUIPopFallbackSizingContextWithViewHierarchy(v11);
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(EKDayViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKDayViewController *)self delegate];
    [v5 updateSelectedOccurrenceView];
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
    v12 = [(UIScrollView *)self->_horizontalScrollingView superview];
    [(UIScrollView *)horizontalScrollingView convertRect:v12 fromView:v5, v7, v9, v11];
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
    v27 = [(EKDayViewWithGutters *)self->_previousDayWithGutter dayView];
    v28 = [v27 allDayView];
    [v28 setFixedHeight:v26];

    v29 = [(EKDayViewWithGutters *)self->_currentDayWithGutter dayView];
    v30 = [v29 allDayView];
    [v30 setFixedHeight:v26];

    v32 = [(EKDayViewWithGutters *)self->_nextDayWithGutter dayView];
    v31 = [v32 allDayView];
    [v31 setFixedHeight:v26];
  }
}

- (EKDayViewController)initWithTargetSizeClass:(int64_t)a3
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
    v5->_targetSizeClass = a3;
    v5->_needsReload = 1;
    [(EKDayViewController *)v5 _setDisplayDateInternal:v5->_displayDate];
  }

  return v5;
}

- (void)dealloc
{
  [(UIScrollView *)self->_horizontalScrollingView setDelegate:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(EKEventGestureController *)self->_eventGestureController invalidate];
  [(EKDayViewController *)self _stopShowNowTimer];
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 dealloc];
}

- (void)scrollDayViewAppropriatelyWithAnimation:(BOOL)a3
{
  v3 = a3;
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

    [(EKDayViewController *)self scrollEventsIntoViewAnimated:v3];
  }

  else
  {

    [(EKDayViewController *)self scrollToNow:v3];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EKDayViewController;
  [(EKDayViewController *)&v5 viewWillAppear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewDidAppear:a3];
  self->_viewAppeared = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewWillDisappear:a3];
  self->_viewAppeared = 0;
  [(EKDayViewController *)self _stopShowNowTimer];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKDayViewController;
  [(EKDayViewController *)&v4 viewDidDisappear:a3];
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
}

- (void)setFrame:(CGRect)a3 gutterWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ++self->_sizeTransitionsInProgress;
  v10 = [(EKDayViewController *)self view];
  [v10 setFrame:{x, y, width, height}];

  v11 = [(EKDayViewController *)self view];
  [v11 layoutSubviews];

  [(EKDayViewController *)self setGutterWidth:a4];
  [(EKDayViewController *)self scrollDayViewAppropriatelyWithAnimation:0];
  if ((*(self + 1056) & 1) == 0)
  {
    [(EKDayViewController *)self _relayoutDays];
  }

  --self->_sizeTransitionsInProgress;
}

- (void)setAllowsDaySwitching:(BOOL)a3
{
  if (self->_allowsDaySwitching != a3)
  {
    self->_allowsDaySwitching = a3;
    [(UIScrollView *)self->_horizontalScrollingView setScrollEnabled:?];
  }
}

- (void)setAllowsSelection:(BOOL)a3
{
  if (self->_allowsSelection != a3)
  {
    self->_allowsSelection = a3;
    [(EKDayView *)self->_currentDay setAllowsOccurrenceSelection:?];
  }
}

- (void)setPreloadExtraDays:(BOOL)a3
{
  if (self->_preloadExtraDays != a3)
  {
    self->_preloadExtraDays = a3;
    if (a3)
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

- (void)layoutContainerView:(id)a3
{
  self->_requiresFullDayRelayout = 0;
  [a3 bounds];
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
    v13 = [(EKDayViewController *)self view];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v13);

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
    v17 = [(UIScrollView *)self->_horizontalScrollingView isScrollAnimating];
  }

  else
  {
    v17 = 0;
  }

  if ((*(self + 1056) & 1) == 0 && ![(UIScrollView *)self->_horizontalScrollingView isTracking]&& !((self->_springAnimatedDecelerationsInProgress > 0) | v17 & 1) && !self->_needToCompleteScrollingAnimation && !self->_needToCompleteDeceleration)
  {

    [(EKDayViewController *)self _relayoutDays];
  }
}

- (void)setGutterWidth:(double)a3
{
  self->_gutterWidth = a3;
  [(EKDayViewWithGutters *)self->_nextDayWithGutter setGutterWidth:?];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter setGutterWidth:a3];
  currentDayWithGutter = self->_currentDayWithGutter;

  [(EKDayViewWithGutters *)currentDayWithGutter setGutterWidth:a3];
}

- (id)occurrenceViewForEvent:(id)a3 includeNextAndPreviousDays:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_currentDay;
  v8 = [(EKDayView *)self->_currentDay occurrenceViewForEvent:v6];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v10 = self->_nextDay;

    v11 = [(EKDayView *)self->_nextDay occurrenceViewForEvent:v6];
    v7 = v10;
  }

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !v4;
  }

  if (!v12)
  {
    v13 = self->_previousDay;

    v11 = [(EKDayView *)self->_previousDay occurrenceViewForEvent:v6];
    v7 = v13;
  }

  if (v11)
  {
    v14 = [(EKDayViewController *)self view];
    v15 = [v14 window];
    EKUIPushFallbackSizingContextWithViewHierarchy(v15);

    [(EKDayView *)v7 layoutIfNeeded];
    v16 = [(EKDayViewController *)self view];
    v17 = [v16 window];
    EKUIPopFallbackSizingContextWithViewHierarchy(v17);
  }

  return v11;
}

- (NSArray)currentDayContentGridViewSubviews
{
  v2 = [(EKDayView *)self->_currentDay dayContent];
  v3 = [v2 grid];
  v4 = [v3 occurrenceContainerView];
  v5 = [v4 subviews];

  return v5;
}

- (void)setAnimateAllDayAreaHeight:(BOOL)a3
{
  if (self->_animateAllDayAreaHeight != a3)
  {
    self->_animateAllDayAreaHeight = a3;
    if (a3)
    {

      [(EKDayViewController *)self _updateAllDayAreaHeight];
    }

    else
    {
      v4 = [(EKDayViewWithGutters *)self->_currentDayWithGutter dayView];
      v5 = [v4 allDayView];
      [v5 setFixedHeight:-1.0];

      v6 = [(EKDayViewWithGutters *)self->_previousDayWithGutter dayView];
      v7 = [v6 allDayView];
      [v7 setFixedHeight:-1.0];

      v9 = [(EKDayViewWithGutters *)self->_nextDayWithGutter dayView];
      v8 = [v9 allDayView];
      [v8 setFixedHeight:-1.0];
    }
  }
}

- (BOOL)_isCalendarDate:(id)a3 sameDayAsComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 era];
  if (v7 == [v6 era] && (v8 = objc_msgSend(v5, "year"), v8 == objc_msgSend(v6, "year")) && (v9 = objc_msgSend(v5, "month"), v9 == objc_msgSend(v6, "month")))
  {
    v10 = [v5 day];
    v11 = v10 == [v6 day];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)preferredEventsToSelectOnDate:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_currentDay = &self->_currentDay;
  v6 = [(EKDayView *)self->_currentDay displayDate];
  v7 = [(EKDayViewController *)self _isCalendarDate:v4 sameDayAsComponents:v6];

  if (v7 || (p_currentDay = &self->_previousDay, [(EKDayView *)self->_previousDay displayDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(EKDayViewController *)self _isCalendarDate:v4 sameDayAsComponents:v8], v8, v9) || (p_currentDay = &self->_nextDay, [(EKDayView *)self->_nextDay displayDate], v10 = objc_claimAutoreleasedReturnValue(), v11 = [(EKDayViewController *)self _isCalendarDate:v4 sameDayAsComponents:v10], v10, v11))
  {
    v12 = *p_currentDay;
  }

  else
  {
    v12 = 0;
  }

  v13 = CUIKTodayComponents();
  v14 = [(EKDayView *)v12 displayDate];
  v15 = [v14 era];
  if (v15 == [v13 era])
  {
    v16 = [(EKDayView *)v12 displayDate];
    v17 = [v16 year];
    if (v17 == [v13 year])
    {
      v18 = [(EKDayView *)v12 displayDate];
      v19 = [v18 month];
      if (v19 == [v13 month])
      {
        v20 = [(EKDayView *)v12 displayDate];
        v21 = v12;
        v22 = v4;
        v23 = [v20 day];
        v24 = v23 == [v13 day];
        v4 = v22;
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
  v26 = [(EKDayView *)v12 occurrenceViews];
  v27 = v26;
  if (v26 && [v26 count])
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
      v70 = v4;
      v66 = 0;
      v67 = self;
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
          v34 = [v33 occurrence];
          v35 = [v34 startCalendarDate];
          v36 = [v34 endCalendarDate];
          v37 = [v36 dayComponents];
          v38 = [(EKDayViewController *)self _isCalendarDate:v35 sameDayAsComponents:v37];

          if (v38 || ([v34 startDate], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "date"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v39, "compare:", v40), v40, v39, v41 != -1))
          {
            if ([v34 status] != 3 && (CUIKEventDisplaysAsDeclined() & 1) == 0 && objc_msgSend(v34, "existsInStore"))
            {
              if (v69)
              {
                v42 = [v69 occurrence];
                v43 = [v42 startDate];
                v44 = [v34 startDate];
                v45 = [v43 compare:v44];

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
              self = v67;
              if (v68)
              {
                v48 = [v34 endDateUnadjustedForLegacyClients];
                v49 = [v48 compare:v65];

                if (v49 == 1)
                {
                  if (v66)
                  {
                    v50 = [v66 occurrence];
                    v51 = [v50 startDate];
                    v52 = [v34 startDate];
                    v53 = [v51 compare:v52];

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
        v55 = [v66 occurrences];

        v56 = v69;
        v4 = v70;
        v27 = v63;
        v13 = v64;
        goto LABEL_53;
      }

      v4 = v70;
      v27 = v63;
      v13 = v64;
      if (v69)
      {
        v55 = [v69 occurrences];
        v56 = v69;
        goto LABEL_53;
      }
    }

    else
    {
    }
  }

  v57 = [(EKDayView *)v12 allDayView];
  v55 = [v57 occurrenceViews];

  v56 = v55;
  if (v55)
  {
    if ([v55 count])
    {
      v58 = v55;
      v59 = [v55 firstObject];
      v60 = [v59 occurrence];

      if (v60)
      {
        v55 = [v59 occurrences];
      }

      else
      {
        v55 = 0;
      }

      v56 = v58;
    }

    else
    {
      v55 = 0;
    }
  }

LABEL_53:

  return v55;
}

- (int64_t)_effectiveInterfaceOrientationForSize:(CGSize)a3
{
  if (a3.height > a3.width)
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
  v3 = [(EKEventGestureController *)self->_eventGestureController event];

  if (v3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [(EKEventGestureController *)self->_eventGestureController event];
    v6 = [v4 setWithObject:v5];
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v11 selectedOccurrencesForDayViewController:self];

    if (![v5 count])
    {
      v7 = 0;
      goto LABEL_4;
    }

    v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
LABEL_3:
    v7 = v6;
LABEL_4:

    goto LABEL_5;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (void)copy:(id)a3
{
  v6 = [(EKDayViewController *)self _eventsForCutOrCopy];
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained pasteboardManagerForDayViewController:self];

    [v5 copyEvents:v6 delegate:self];
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }
}

- (void)cut:(id)a3
{
  v6 = [(EKDayViewController *)self _eventsForCutOrCopy];
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained pasteboardManagerForDayViewController:self];

    [v5 cutEvents:v6 delegate:self];
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }
}

- (void)paste:(id)a3
{
  v8 = [(EKDayViewController *)self _eventsForCutOrCopy];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained pasteboardManagerForDayViewController:self];

  if ([v8 count] == 1)
  {
    v6 = [v8 anyObject];
    v7 = [v6 startDate];
    [v5 setDateForPaste:v7];
  }

  else
  {
    v6 = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
    [v5 setDateForPaste:v6];
  }

  [v5 pasteEventsWithDateMode:0 delegate:self];
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (([MEMORY[0x1E6993458] declinesToPerformCutCopyPasteAction:a3 withSender:v6] & 1) == 0)
  {
    if (sel_paste_ == a3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v9 = [WeakRetained pasteboardManagerForDayViewController:self];

      v10 = [v9 canPerformPaste];
    }

    else
    {
      if (sel_copy_ == a3)
      {
        v11 = MEMORY[0x1E6993458];
        v9 = [(EKDayViewController *)self _eventsForCutOrCopy];
        v12 = v11;
        v13 = 1;
      }

      else
      {
        if (sel_cut_ != a3)
        {
          v16.receiver = self;
          v16.super_class = EKDayViewController;
          v7 = [(EKDayViewController *)&v16 canPerformAction:a3 withSender:v6];
          goto LABEL_12;
        }

        v14 = MEMORY[0x1E6993458];
        v9 = [(EKDayViewController *)self _eventsForCutOrCopy];
        v12 = v14;
        v13 = 0;
      }

      v10 = [v12 allEventsValidForAction:v13 fromEvents:v9];
    }

    v7 = v10;

    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)dayView:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v13 = a4;
  v7 = [(EKEventGestureController *)self->_eventGestureController event];

  if (!v7)
  {
    if (!v13)
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
        [v12 dayViewController:self didSelectEvent:v13 animated:1 userInitiated:v5];
      }
    }
  }

LABEL_11:
}

- (void)dayView:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 dayViewController:self didSelectEvents:v12 animated:1 userInitiated:v5];
    }
  }
}

- (void)dayView:(id)a3 pointerDidTargetOccurrences:(id)a4
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 dayViewController:self pointerDidTargetOccurrences:v10];
    }
  }
}

- (void)dayView:(id)a3 didCreateOccurrenceViews:(id)a4
{
  v5 = [(EKEventGestureController *)self->_eventGestureController draggingView:a3];

  if (v5)
  {
    v6 = [(EKEventGestureController *)self->_eventGestureController draggingView];
    v7 = [v6 layer];
    v8 = [v7 animationKeys];
    v9 = [v8 count];

    if (!v9)
    {
      eventGestureController = self->_eventGestureController;

      [(EKEventGestureController *)eventGestureController updateDraggingOccurrence];
    }
  }
}

- (void)dayView:(id)a3 didScaleDayViewWithScale:(double)a4
{
  [(EKDayView *)self->_previousDay setHourScale:a3];
  [(EKDayView *)self->_previousDay setNeedsLayout];
  [(EKDayView *)self->_nextDay setHourScale:a4];
  [(EKDayView *)self->_nextDay setNeedsLayout];
  v6 = [MEMORY[0x1E6993470] sharedPreferences];
  *&v7 = a4;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [v6 setDayViewHourScale:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 dayViewController:self requestsSaveHourScalePreference:a4];
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

- (void)dayView:(id)a3 isPinchingDayViewWithScale:(double)a4
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

- (void)dayViewDidCompleteAsyncLoadAndLayout:(id)a3
{
  if (self->_currentDay == a3)
  {
    v4 = [(EKEventGestureController *)self->_eventGestureController draggingView];

    if (v4)
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

- (id)dayView:(id)a3 selectedCopyViewForOccurrence:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 dayViewController:self selectedCopyViewForView:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)dayViewShouldDrawSynchronously:(id)a3
{
  if (self->_currentDay != a3)
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
  v2 = [(EKDayViewController *)self currentPresentationController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    v4 = [v2 presentedViewController];
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v5;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained selectedEventsForEditMenu];

  return v3;
}

- (int64_t)dayViewContentInsetAdjustmentBehavior:(id)a3
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

- (void)_setDisplayDateInternal:(id)a3
{
  v4 = a3;
  v10 = [v4 copy];
  [v10 setHour:0];
  [v10 setMinute:0];
  [v10 setSecond:0];
  v5 = [v4 copy];

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

- (void)dayView:(id)a3 firstVisibleSecondChanged:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v7 = [(EKDayViewController *)self currentDayView];
    [v8 dayViewController:self requestsSaveFirstVisibleSecondPreference:{objc_msgSend(v7, "firstVisibleSecond")}];
  }
}

- (void)_setDisplayDate:(id)a3 forRepeat:(BOOL)a4 animate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(EKDayViewController *)self _completeScrollingAnimationIfNeeded];
  [(EKDayViewController *)self _completeDecelerationIfNeeded];
  obj = [v8 dateComponentsForDateOnly];

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
    if (a4)
    {
      goto LABEL_32;
    }

    if (self->_viewAppeared)
    {
      v13 = [(EKDayView *)self->_previousDay displayDate];
      v14 = [v13 isEqual:obj];

      if (v14 && v5)
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
        v18 = [(EKDayView *)self->_nextDay displayDate];
        v19 = [v18 isEqual:obj];

        if (v19 && v5)
        {
          [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
          *(self + 1056) |= 1u;
          v15 = 1;
          [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:1];
          v16 = 1048;
LABEL_10:
          [*(&self->super.super.super.isa + v16) frame];
          [(EKDayViewController *)self _setHorizontalContentOffsetUsingSpringAnimation:?];
          v17 = [*(&self->super.super.super.isa + v16) superview];

          if (!v17)
          {
            [(UIScrollView *)self->_horizontalScrollingView addSubview:*(&self->super.super.super.isa + v16)];
          }

          goto LABEL_35;
        }

        v12 = obj;
        if (self->_viewAppeared)
        {
          v20 = [(EKDayView *)self->_currentDay displayDate];
          if ([v20 isEqual:obj] && v5)
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

    if (!self->_viewAppeared || !self->_alwaysAnimate || !v5)
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

    v29 = [(EKDayViewController *)self calendar];
    v30 = [(EKDayView *)self->_currentDay displayDate];
    v31 = [v29 dateFromComponents:v30];

    v32 = [(EKDayViewController *)self calendar];
    v33 = [v32 dateFromComponents:obj];

    v34 = [v31 compare:v33];
    [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
    *(self + 1056) |= 1u;
    [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:1];
    self->_correctAfterScroll = 1;
    objc_storeStrong(&self->_targetDateComponents, obj);
    if (v34 == 1)
    {
      p_previousDayWithGutter = &self->_previousDayWithGutter;
      v40 = [(EKDayViewWithGutters *)self->_previousDayWithGutter superview];

      v37 = &OBJC_IVAR___EKDayViewController__previousDay;
      if (v40)
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
      v36 = [(EKDayViewWithGutters *)self->_nextDayWithGutter superview];

      v37 = &OBJC_IVAR___EKDayViewController__nextDay;
      if (v36)
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

- (void)setDisplayDate:(id)a3
{
  v4 = a3;
  if ((*(self + 1056) & 1) == 0 && ([v4 isEqual:self->_displayDate] & 1) == 0 && !-[EKEventGestureController dragGestureInProgress](self->_eventGestureController, "dragGestureInProgress"))
  {
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayViewController *)self _setDisplayDate:v4 forRepeat:0];
}

- (void)setCalendar:(id)a3
{
  v9 = a3;
  if (([v9 isEqual:self->_calendar] & 1) == 0)
  {
    v4 = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
    v5 = [(NSCalendar *)self->_calendar timeZone];
    v6 = [v9 copy];
    calendar = self->_calendar;
    self->_calendar = v6;

    [(NSCalendar *)self->_calendar setTimeZone:v5];
    [(EKDayViewController *)self _setDisplayDateInternal:self->_displayDate];
    v8 = [(NSCalendar *)self->_calendar components:30 fromDate:v4];
    [(EKDayViewController *)self setDisplayDate:v8];
  }
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  v4 = [(NSCalendar *)self->_calendar timeZone];
  v5 = [v6 isEqualToTimeZone:v4];

  if ((v5 & 1) == 0)
  {
    [(NSCalendar *)self->_calendar setTimeZone:v6];
    [(EKDayViewController *)self _setDisplayDateInternal:self->_displayDate];
    [(EKDayView *)self->_currentDay setTimeZone:v6];
    [(EKDayView *)self->_previousDay setTimeZone:v6];
    [(EKDayView *)self->_nextDay setTimeZone:v6];
  }
}

- (void)setGestureOccurrenceSuperview:(id)a3
{
  v8 = a3;
  if (self->_gestureOccurrenceSuperview != v8)
  {
    objc_storeStrong(&self->_gestureOccurrenceSuperview, a3);
    v5 = [(EKEventGestureController *)self->_eventGestureController draggingView];

    if (v5)
    {
      v6 = [(EKEventGestureController *)self->_eventGestureController draggingView];
      v7 = [(EKDayViewController *)self _eventGestureSuperview];
      CalSwitchViewToSuperview(v6, v7);
    }
  }
}

- (void)scrollToNow:(BOOL)a3
{
  v3 = a3;
  if ([(EKDayViewController *)self _shouldScrollToNow])
  {
    currentDay = self->_currentDay;

    [(EKDayView *)currentDay scrollToNowAnimated:v3 whenFinished:0];
  }
}

- (void)scrollToDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  currentDay = self->_currentDay;
  v6 = [a3 date];
  [(EKDayView *)currentDay scrollToDate:v6 animated:v4 whenFinished:0];
}

- (void)scrollEventIntoView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  previousDay = self->_previousDay;
  v7 = a3;
  [(EKDayView *)previousDay scrollToEvent:v7 animated:v4 completionBlock:0];
  [(EKDayView *)self->_nextDay scrollToEvent:v7 animated:v4 completionBlock:0];
  currentDay = self->_currentDay;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__EKDayViewController_scrollEventIntoView_animated___block_invoke;
  v9[3] = &unk_1E843EC60;
  v9[4] = self;
  [(EKDayView *)currentDay scrollToEvent:v7 animated:v4 completionBlock:v9];
}

void __52__EKDayViewController_scrollEventIntoView_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gestureController];
  [v1 updateDraggingOccurrenceOrigin];
}

- (void)editorDidSaveEvent:(id)a3
{
  v7 = a3;
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dayViewController:self awaitsRefreshingOccurrence:v7];
  }

  [(EKDayViewController *)self reloadData];
}

- (void)editorDidDeleteEvent:(id)a3
{
  v7 = a3;
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dayViewController:self awaitsDeletingOccurrence:v7];
  }

  [(EKDayViewController *)self reloadData];
}

- (void)editorDidCancelEditingEvent:(id)a3
{
  [(EKEventGestureController *)self->_eventGestureController endForcedStart:1];
  currentDay = self->_currentDay;

  [(EKDayView *)currentDay setDimmedOccurrence:0];
}

- (id)eventsForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_dataSource);
    v10 = [v9 dayViewController:self eventsForStartDate:v6 endDate:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_eventsForDay:(id)a3
{
  v4 = a3;
  v5 = [v4 displayDate];
  v6 = [v5 copy];

  [v6 setHour:23];
  [v6 setMinute:59];
  [v6 setSecond:59];
  calendar = self->_calendar;
  v8 = [v4 displayDate];

  v9 = [(NSCalendar *)calendar dateFromComponents:v8];

  v10 = [(NSCalendar *)self->_calendar dateFromComponents:v6];
  v11 = [(EKDayViewController *)self eventsForStartDate:v9 endDate:v10];

  return v11;
}

- (BOOL)_delegateRespondsToDisplayedOccurrencesChangedMethod
{
  v3 = [(EKDayViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EKDayViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)_performDisplayedOccurrencesChangedDelegateMethodWithTrigger:(int)a3
{
  v3 = *&a3;
  v5 = [(EKDayViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(EKDayViewController *)self delegate];
  v9 = v7;
  if (v6)
  {
    [v7 dayViewController:self didChangeDisplayedOccurrencesDueToTrigger:v3];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    v9 = [(EKDayViewController *)self delegate];
    [v9 dayViewControllerDidChangeDisplayedOccurrences:self];
  }
}

- (void)reloadDataForOccurrenceChangeWithGeneration:(int)a3
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
  v6 = a3;
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

- (void)loadData:(BOOL)a3 withTrigger:(int)a4 withCompletion:(id)a5
{
  v8 = a5;
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
    v12 = a4;
    v13 = a3;
    v11 = v8;
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

- (void)loadDataBetweenStart:(id)a3 end:(id)a4 withTrigger:(int)a5 generation:(int)a6 completionForCurrentDayReload:(id)a7
{
  v12 = a7;
  v13 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v13 timeIntervalSinceReferenceDate];
  v17 = v16;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke;
  aBlock[3] = &unk_1E8440298;
  aBlock[4] = self;
  v43 = a5;
  v18 = _Block_copy(aBlock);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __101__EKDayViewController_loadDataBetweenStart_end_withTrigger_generation_completionForCurrentDayReload___block_invoke_3;
  v39[3] = &unk_1E8441780;
  v39[4] = self;
  v41 = a5;
  v19 = v12;
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
      v38 = a6;
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
        v35 = a6;
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
        v32 = a6;
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
  v3 = [(EKDayViewController *)self calendar];
  v8 = [v3 dateFromComponents:self->_displayDate];

  v4 = [(EKDayViewController *)self calendar];
  v5 = [v8 dateByAddingDays:1 inCalendar:v4];

  v6 = [(EKDayViewController *)self calendar];
  v7 = [v8 dateByAddingDays:-1 inCalendar:v6];

  [(EKDayViewWithGutters *)self->_nextDayWithGutter timeZoneChangedWithNewDate:v5];
  [(EKDayViewWithGutters *)self->_currentDayWithGutter timeZoneChangedWithNewDate:v8];
  [(EKDayViewWithGutters *)self->_previousDayWithGutter timeZoneChangedWithNewDate:v7];
  [(EKDayView *)self->_nextDay adjustForTimeZoneChanged];
  [(EKDayView *)self->_currentDay adjustForTimeZoneChanged];
  [(EKDayView *)self->_previousDay adjustForTimeZoneChanged];
}

- (void)dayView:(id)a3 didUpdateScrollPosition:(CGPoint)a4
{
  v5 = [(EKDayViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(EKDayViewController *)self delegate];
    [v7 dayViewControllerDidUpdateScrollPosition:self];
  }
}

- (id)_occurrencesForDayView:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
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

- (void)_localeChanged:(id)a3
{
  v4 = [(EKDayViewController *)self view];
  [v4 setNeedsLayout];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EKDayViewController__localeChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_showWeekNumbersPreferenceChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__EKDayViewController__showWeekNumbersPreferenceChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)preferredContentSizeDidChanged:(id)a3
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

- (id)_createGutterDayViewWithDayView:(id)a3
{
  v4 = a3;
  [v4 frame];
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

  v13 = [[EKDayViewWithGutters alloc] initWithFrame:v4 dayView:self->_targetSizeClass sizeClass:[(EKDayViewController *)self showWeekdayLabel] showWeekDayLabel:[(EKDayViewController *)self showWeekNumberLabel] showWeekNumberLabel:0.0, 0.0, v9 + gutterWidth * 2.0, v10];
  [(EKDayViewWithGutters *)v13 setAutoresizingMask:18];
  v14 = [v4 hasAllDaySection];

  [(EKDayViewWithGutters *)v13 setShowDividerLine:v14 ^ 1u];

  return v13;
}

- (void)_highlightEvent:(id)a3 dayViewDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(EKDayViewController *)self gestureController];
  v10 = [v9 currentDragSnappingType];

  v11 = CalSnapDateTo15MinuteOr5MinuteInterval(v8, v10, a4 - self->_dayStart);
  v12 = v11 / 3600.0;
  if (v5)
  {
    v12 = -1.0;
  }

  [(EKDayView *)self->_currentDay highlightHour:v12];
  currentDay = self->_currentDay;

  [(EKDayView *)currentDay setAllDayLabelHighlighted:v5];
}

- (void)dayViewDidTapEmptySpace:(id)a3 onDate:(id)a4
{
  v6 = a4;
  if (self->_currentDay == a3)
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
    v10 = v6;
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
  v3 = [(EKDayViewController *)self gestureOccurrenceSuperview];
  if (v3)
  {
    v4 = [(EKDayViewController *)self gestureOccurrenceSuperview];
  }

  else
  {
    v4 = self->_clipView;
  }

  v5 = v4;

  return v5;
}

- (double)trackingAreaMinimumYPosition
{
  v3 = [(EKDayViewController *)self currentDayView];
  [v3 topContentInset];
  v5 = v4;
  v6 = [(EKDayViewController *)self currentAllDayView];
  [v6 frame];
  v8 = v5 + v7;

  return v8;
}

- (double)horizontalOffsetForPagingForEventGestureController:(id)a3
{
  v4 = [(EKDayViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v4);

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

- (void)eventGestureController:(id)a3 adjustDraggingView:(id)a4 forAllDay:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  [v9 setAllDayDrawingStyle:v5];
  currentDay = self->_currentDay;
  if (v5)
  {
    v8 = [(EKDayView *)currentDay allDayView];
    [v8 configureOccurrenceViewForGestureController:v9];
  }

  else
  {
    [(EKDayView *)currentDay configureOccurrenceViewForGestureController:v9];
  }
}

- (id)createEventForEventGestureController:(id)a3
{
  v4 = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained dayViewController:self createEventAtDate:v4 allDay:0];

  return v6;
}

- (void)showTimelineHighlightForTime:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

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

- (double)eventGestureController:(id)a3 yPositionPerhapsMatchingAllDayOccurrence:(id)a4 atPoint:(CGPoint)a5
{
  v7 = a4;
  v8 = [(EKDayViewController *)self touchTrackingViewForEventGestureController:a3];
  [(EKDayView *)self->_currentDay yPositionPerhapsMatchingAllDayOccurrence:v7];
  v10 = v9;

  [v8 convertPoint:self->_currentDay fromView:{0.0, v10}];
  v12 = v11;

  return v12;
}

- (void)eventGestureController:(id)a3 addViewToScroller:(id)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  v9 = [(EKDayViewController *)self gestureOccurrenceSuperview];
  if (v9 && (v10 = v9, [v13 draggingView], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == v8))
  {
    v12 = [(EKDayViewController *)self gestureOccurrenceSuperview];
    CalSwitchViewToSuperview(v8, v12);
  }

  else
  {
    [(EKDayView *)self->_currentDay addViewToScroller:v8 isAllDay:v5];
  }
}

- (id)eventGestureController:(id)a3 occurrenceViewAtPoint:(CGPoint)a4 ignoreSelectedCopyView:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  currentDay = self->_currentDay;
  v9 = [(EKDayViewController *)self _eventGestureSuperview:a3];
  [(EKDayView *)currentDay convertPoint:v9 fromView:x, y];
  v11 = v10;
  v13 = v12;

  v14 = self->_currentDay;

  return [(EKDayView *)v14 occurrenceViewAtPoint:v11, v13];
}

- (BOOL)eventGestureController:(id)a3 isAllDayAtPoint:(CGPoint)a4 requireInsistence:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  currentDayWithGutter = self->_currentDayWithGutter;
  v10 = [(EKDayViewController *)self _eventGestureSuperview];
  [(EKDayViewWithGutters *)currentDayWithGutter convertPoint:v10 fromView:x, y];
  v12 = v11;
  v14 = v13;

  v15 = self->_currentDayWithGutter;

  return [(EKDayViewWithGutters *)v15 isPointAllDay:v5 requireAllDayRegionInsistence:v12, v14];
}

- (double)eventGestureController:(id)a3 dateAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  currentDay = self->_currentDay;
  v8 = [(EKDayViewController *)self _eventGestureSuperview];
  [(EKDayView *)currentDay convertPoint:v8 fromView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = self->_currentDay;

  [(EKDayView *)v13 dateAtPoint:0 isAllDay:v10, v12];
  return result;
}

- (CGPoint)pointAtDate:(double)a3 isAllDay:(BOOL)a4
{
  [(EKDayView *)self->_currentDay pointAtDate:a4 isAllDay:a3];
  v6 = v5;
  v8 = v7;
  CalRoundToScreenScale(0.5);
  v10 = v9;
  CalTimeDirectionIsLeftToRight();
  v11 = [(EKDayViewController *)self _eventGestureSuperview];
  [v11 convertPoint:self->_currentDay fromView:{v6 + 2.0, v8 - v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)eventGestureController:(id)a3 pointAtDate:(double)a4 isAllDay:(BOOL)a5
{
  [(EKDayViewController *)self pointAtDate:a5 isAllDay:a4];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)eventGestureController:(id)a3 widthForOccurrenceViewOfDays:(unint64_t)a4
{
  [(EKDayView *)self->_currentDay frame:a3];
  v6 = v5;
  [(EKDayView *)self->_currentDay leftContentInset];
  return v6 - v7 + -4.0;
}

- (double)eventGestureController:(id)a3 heightForOccurrenceViewOfDuration:(double)a4
{
  v6 = [(EKDayViewController *)self interfaceOrientation];
  v7 = [(EKDayViewController *)self view];
  [EKDayTimeView hourHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy(v7) orientation:v6];
  v9 = v8;
  [(EKDayView *)self->_currentDay hourScale];
  v11 = v9 * v10 * a4 / 3600.0;
  +[EKDayOccurrenceView bottomShadowMargin];
  v13 = v12 + v11;

  CalRoundToScreenScale(0.5);
  v15 = v13 + v14;
  v16 = [(EKDayViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy(v16) orientation:v6];
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

- (double)eventGestureController:(id)a3 heightForAllDayOccurrenceView:(id)a4
{
  v5 = a4;
  v6 = [(EKDayViewController *)self interfaceOrientation];
  v7 = [(EKDayViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy(v7) orientation:v6 isAllDay:1];
  v9 = v8;

  v10 = [v5 currentImageState];
  LODWORD(v6) = [v10 requiresLanguageAwarePadding];

  if (v6)
  {
    v11 = [v5 currentImageState];
    [v11 totalLanguageAwareHeightPadding];
    v9 = v9 + v12;
  }

  return v9;
}

- (double)timedRegionOriginForEventGestureController:(id)a3
{
  v4 = [(EKDayViewController *)self touchTrackingViewForEventGestureController:a3];
  [(EKDayView *)self->_currentDay timedRegionYOrigin];
  [v4 convertPoint:self->_currentDay fromView:{0.0, v5}];
  v7 = v6;

  return v7;
}

- (void)eventGestureController:(id)a3 requestsPresentationOfViewController:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewController:self requestsPresentationOfViewControllerForGestures:v8];
  }
}

- (void)eventGestureController:(id)a3 requestsShowEvent:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewController:self requestsShowEvent:v8 showDetails:1];
  }
}

- (BOOL)eventGestureControllerShouldAllowLongPress:(id)a3
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

- (void)eventGestureController:(id)a3 didSetUpAtDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v8 = [v18 event];
  [(EKDayViewController *)self _highlightEvent:v8 dayViewDate:v5 isAllDay:a4];

  v9 = [v18 event];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:v9];

  v10 = [(NSDateComponents *)self->_displayDate copy];
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = v10;

  v12 = [v18 draggingView];
  v13 = [(EKDayViewController *)self _eventGestureSuperview];
  CalSwitchViewToSuperview(v12, v13);

  v14 = [(EKDayViewController *)self delegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  if (v13)
  {
    v15 = [(EKDayViewController *)self delegate];
    [v15 dayViewcontrollerDidBeginMovingEventWithGesture:self];
  }

  v16 = [MEMORY[0x1E6966A10] sharedInstance];
  v17 = [v18 event];
  [v16 prepareForEventUpdate:v17];
}

- (void)eventGestureController:(id)a3 didMoveToDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v8 = [a3 event];
  [(EKDayViewController *)self _highlightEvent:v8 dayViewDate:v5 isAllDay:a4];
}

- (BOOL)eventGestureController:(id)a3 didCommitOccurrence:(id)a4 toDate:(double)a5 isAllDay:(BOOL)a6 span:(int64_t)a7
{
  v10 = a3;
  v11 = a4;
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  if ([v11 isNew])
  {
    v12 = [(EKDayViewController *)self currentEditor];

    if (v12)
    {
LABEL_32:
      v23 = 1;
      goto LABEL_33;
    }

    v13 = +[EKEventEditor defaultTitleForCalendarItem];
    v14 = [v11 title];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      [v11 setTitle:&stru_1F4EF6790];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 dayViewController:self beginEditingOccurrence:v11 creationMethod:1];
    }

LABEL_13:

    goto LABEL_32;
  }

  v19 = [(EKDayViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_11:
    v24 = [(EKDayViewController *)self currentEditor];

    if (v24)
    {
      v13 = [(EKDayViewController *)self currentEditor];
      [v13 refreshStartAndEndDates];
      goto LABEL_13;
    }

    v25 = [(EKDayViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v26 = [(EKDayViewController *)self delegate];
      if ([v26 delegateWantsToHandleDayViewController:self gestureCommittingOccurrence:v11])
      {
        v27 = [(EKDayViewController *)self delegate];
        v28 = objc_opt_respondsToSelector();

        if (v28)
        {
          v13 = [(EKDayViewController *)self delegate];
          [v13 dayViewController:self handleGestureCommittingOccurrence:v11];
          goto LABEL_13;
        }

LABEL_20:
        v29 = [v11 isNew];
        v30 = [MEMORY[0x1E6966A10] sharedInstance];
        v31 = v30;
        if (v29)
        {
          [v30 handleEventCreation:v11];
        }

        else
        {
          [v30 handleEventUpdate:v11];
        }

        v32 = [(UIResponder *)self EKUI_editor];
        if ([v32 saveEvent:v11 span:a7 error:0])
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

        v35 = [v10 event];

        if (v35 == v11)
        {
          v36 = [v10 occurrenceDate];
          [v10 forceStartWithOccurrence:v11 occurrenceDate:v36 shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:0];

          v37 = objc_loadWeakRetained(&self->_delegate);
          v38 = objc_opt_respondsToSelector();

          if (v38)
          {
            v39 = objc_loadWeakRetained(&self->_delegate);
            [v39 dayViewController:self awaitsRefreshingOccurrence:v11];
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_20;
  }

  v20 = [(EKDayViewController *)self delegate];
  v21 = [v20 dayViewController:self willDuplicateOccurrence:v11];

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = [(EKDayViewController *)self gestureController];
  [v22 endForcedStart:0];

  [v11 revert];
  v23 = 0;
LABEL_33:
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;

  return v23;
}

- (void)eventGestureController:(id)a3 didCancelEditingOccurrence:(id)a4 fadedOut:(BOOL)a5
{
  v11 = a3;
  v8 = a4;
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  if (a5)
  {
    if (([v8 isNew] & 1) == 0)
    {
      [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
      [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
      [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
      [v11 endForcedStart:0];
    }
  }

  else
  {
    v9 = [v11 occurrenceDate];
    [v11 forceStartWithOccurrence:v8 occurrenceDate:v9 shouldUpdateViewSource:0 shouldUpdateOrigin:1 shouldPresentEditMenu:1];

    [(EKDayView *)self->_currentDay setDimmedOccurrence:v8];
  }

  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;
}

- (void)eventGestureControllerDidEndDragSession:(id)a3
{
  [(EKDayView *)self->_currentDay highlightHour:a3, -1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
  [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
  originalDisplayDate = self->_originalDisplayDate;
  self->_originalDisplayDate = 0;
}

- (void)eventGestureController:(id)a3 didSingleTapOccurrence:(id)a4 shouldExtendSelection:(BOOL)a5
{
  v14 = a3;
  v8 = a4;
  [(EKDayView *)self->_currentDay highlightHour:-1.0];
  [(EKDayView *)self->_currentDay setAllDayLabelHighlighted:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a5)
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 dayViewController:self modifySelection:v8];
  }

  else
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v13 = [(EKEventGestureController *)self->_eventGestureController event];
    [v11 dayViewController:self didSelectEvent:v13 animated:1 userInitiated:1];
  }

LABEL_7:
  [(EKDayView *)self->_currentDay setDimmedOccurrence:0];
  [(EKDayView *)self->_previousDay setDimmedOccurrence:0];
  [(EKDayView *)self->_nextDay setDimmedOccurrence:0];
  if ([(EKDayViewController *)self _shouldEndGestureEditingOnTap])
  {
    [v14 endForcedStart:0];
  }
}

- (BOOL)didScrollWhenEventGestureController:(id)a3 scrollTimerFiredToMoveLeft:(BOOL)a4 right:(BOOL)a5 vertically:(BOOL)a6 towardPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = a3;
  if (((v11 & 1) != 0 || v10) && ![(EKDayViewController *)self disableGestureDayChange])
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    if (IsLeftToRight)
    {
      v15 = -v11;
    }

    else
    {
      v15 = v11;
    }

    if (IsLeftToRight)
    {
      v16 = v10;
    }

    else
    {
      v16 = -v10;
    }

    v17 = [(NSDateComponents *)self->_displayDate dateComponents:30 byAddingDays:(v15 + v16) calendar:self->_calendar];
    [(EKDayViewController *)self _setDisplayDate:v17 forRepeat:0];
    [v13 didCrossDragBoundary:2];
  }

  v18 = v9 && [(EKDayView *)self->_currentDay scrollTowardPoint:x, y];

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

- (void)validateInterfaceOrientationWithFutureOrientation:(int64_t)a3
{
  if ([(EKDayViewController *)self isViewLoaded])
  {
    v5 = a3 - 1;
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

- (BOOL)eventEditorPopoverActiveWhileDraggingForEventGestureController:(id)a3
{
  v4 = [(EKDayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(EKDayViewController *)self delegate];
  v7 = [v6 dayViewControllerShouldShowDetachDialogOnGestureDraggingEnd:self];

  return v7 ^ 1;
}

- (BOOL)_shouldEndGestureEditingOnTap
{
  if ([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress])
  {
    return 0;
  }

  v4 = [(EKDayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(EKDayViewController *)self delegate];
  v7 = [v6 dayViewControllerShouldEndGestureEditingOnTap:self];

  return v7;
}

- (void)cleanUpAfterGestureFailureForEventGestureController:(id)a3
{
  [(EKDayView *)self->_currentDay highlightHour:a3, -1.0];
  currentDay = self->_currentDay;

  [(EKDayView *)currentDay setAllDayLabelHighlighted:0];
}

- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKDayViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 provideExternalRepresentationsForEvent:v6 withProvider:v7];
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

- (void)_relayoutDaysDuringScrollingAndPerformDayChanges:(BOOL)a3
{
  v3 = a3;
  [(UIScrollView *)self->_horizontalScrollingView bounds];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_horizontalScrollingView contentOffset];
  v10 = v9;
  v11 = v9 < v6 * 0.5;
  v12 = v9 > v6 * 1.5;
  v13 = [(EKDayViewController *)self _isResizing];
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

  v16 = [(EKDayViewController *)self allowsDaySwitching];
  v17 = v16 && v11;
  v18 = v16 && v15;
  if (v3 && !v13)
  {
    if (v18)
    {
      v19 = [(EKDayView *)self->_nextDay displayDate];
      if (!v17)
      {
LABEL_13:
        if (v19 && ([(NSDateComponents *)self->_displayDate isEqual:v19]& 1) == 0)
        {
          *(self + 1088) |= 2u;
          [(EKDayViewController *)self setDisplayDate:v19];
          [(EKDayViewController *)self _notifyDelegateOfSelectedDateChange];
          *(self + 1088) &= ~2u;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
      if (!v17)
      {
        goto LABEL_13;
      }
    }

    v20 = [(EKDayView *)self->_previousDay displayDate];

    v19 = v20;
    goto LABEL_13;
  }

LABEL_17:
  previousDay = self->_previousDay;
  [(EKDayView *)self->_currentDay highlightedHour];
  [(EKDayView *)previousDay highlightHour:?];
  [(EKDayView *)self->_previousDay setAllDayLabelHighlighted:[(EKDayView *)self->_currentDay isAllDayLabelHighlighted]];
  v22 = self->_previousDay;
  v23 = [(EKEventGestureController *)self->_eventGestureController event];
  [(EKDayView *)v22 setDimmedOccurrence:v23];

  nextDay = self->_nextDay;
  [(EKDayView *)self->_currentDay highlightedHour];
  [(EKDayView *)nextDay highlightHour:?];
  [(EKDayView *)self->_nextDay setAllDayLabelHighlighted:[(EKDayView *)self->_currentDay isAllDayLabelHighlighted]];
  v25 = self->_nextDay;
  v26 = [(EKEventGestureController *)self->_eventGestureController event];
  [(EKDayView *)v25 setDimmedOccurrence:v26];

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
      v30 = [(EKDayView *)self->_previousDay dayContent];
      [v30 prepareForReuseIsReload:0];

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
      v35 = [(EKDayView *)self->_nextDay dayContent];
      [v35 prepareForReuseIsReload:0];

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

    v38 = [(EKDayViewWithGutters *)self->_currentDayWithGutter superview];

    if (!v38)
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

    if (v3)
    {
      v40 = [(EKDayView *)self->_currentDay displayDate];
      [(EKDayViewController *)self setDisplayDate:v40];
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

  v50 = [(EKDayViewController *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v50))
  {
    v51 = [(EKEventGestureController *)self->_eventGestureController draggingView];

    if (!v51)
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

- (void)_setDayView:(id)a3 toDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 displayDate];
  v9 = [v8 isEqual:v7];

  if ((v9 & 1) == 0)
  {
    [v6 setDisplayDate:v7];
    reloadQueue = self->_reloadQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__EKDayViewController__setDayView_toDate___block_invoke;
    v11[3] = &unk_1E843EFB8;
    v11[4] = self;
    v12 = v6;
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

- (BOOL)_isViewInVisibleRect:(id)a3
{
  v4 = a3;
  v5 = [(EKDayViewController *)self view];
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 superview];

  [v5 convertRect:v14 fromView:{v7, v9, v11, v13}];
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

- (void)scrollViewDidScroll:(id)a3
{
  if (![(EKDayViewController *)self _isResizing]&& !self->_adjustingForDeceleration)
  {
    v4 = [(EKDayViewWithGutters *)self->_nextDayWithGutter superview];
    if (v4)
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

    v17 = [(EKDayViewWithGutters *)self->_previousDayWithGutter superview];
    if (v17)
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

- (double)_weightedAllDayHeightForView:(id)a3 visibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 frame];
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
    [v8 frame];
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
    [v8 frame];
    v20 = v18 / v19;
    v21 = [v8 dayView];
    v22 = [v21 allDayView];
    [v22 naturalHeight];
    v13 = v20 * v23 + 0.0;
  }

  return v13;
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  *(self + 1088) |= 1u;
  self->_fingerDown = 0;
  [(EKDayViewController *)self setTransitionedToSameDay:0];
  v5 = [(EKDayViewController *)self delegate];
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
        v17 = [(EKDayView *)self->_currentDay displayDate];
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
    v13 = *(&self->super.super.super.isa + v16);
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
  v13 = [*(&self->super.super.super.isa + v12) displayDate];
LABEL_18:
  v17 = v13;
LABEL_19:
  CalAnalyticsSendEventLazy();
  v18 = [(EKDayViewController *)self delegate];
  [v18 dayViewController:self didStartDeceleratingTargettingDate:v17];

LABEL_20:
  self->_adjustingForDeceleration = 1;
  [v4 _pageDecelerationTarget];
  v21 = CalRoundPointToScreenScale(v19, v20);
  v23 = v22;
  [v4 contentOffset];
  v26 = CalRoundPointToScreenScale(v24, v25);
  v28 = v27;
  [v4 _horizontalVelocity];
  if (v29 >= 0.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -v29;
  }

  [v4 stopScrollingAndZooming];
  [v4 setContentOffset:0 animated:{v26, v28}];
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
  v42 = v4;
  v43 = v21;
  v44 = v23;
  v45 = v32;
  v37 = v4;
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

- (void)_scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  if (!self->_adjustingForDeceleration)
  {
    v8 = v4;
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

    v5 = [(EKDayViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(EKDayViewController *)self delegate];
      [v7 dayViewControllerDidEndDecelerating:self];
    }

    [(EKDayViewController *)self _showNowAfterScrollViewDidEndDecelerating:v8];
    v4 = v8;
  }
}

- (void)_showNowAfterScrollViewDidEndDecelerating:(id)a3
{
  if ([(EKDayViewController *)self _canShowNowAfterScrollViewDidEndDecelerating:a3])
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

- (void)_showNowTimerFired:(id)a3
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

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v8 = a3;
  [(EKDayViewController *)self _relayoutDaysDuringScrolling];
  [(EKDayViewController *)self _cleanUpTargetDateComponents];
  [(EKDayViewController *)self _setNextAndPreviousFirstVisibleSecondToCurrent];
  *(self + 1056) &= ~1u;
  [(EKDayViewController *)self reloadData];
  [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrence];
  [(EKEventGestureController *)self->_eventGestureController setCommitBlocked:0];
  v4 = [(EKDayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKDayViewController *)self delegate];
    [v6 dayViewControllerDidEndScrolling:self];
  }

  [(EKDayViewController *)self _scrollToNowOnScrollViewDidEndScrollingAnimation:v8];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"EKDayViewController_ScrollDidEndAnimationNotification" object:0];
}

- (void)_scrollToNowOnScrollViewDidEndScrollingAnimation:(id)a3
{
  [(EKDayViewController *)self scrollToNow:[(EKDayViewController *)self _shouldRespondToApplicationDidBecomeActiveStateChange]^ 1];
  if ([(EKDayViewController *)self _shouldRespondToApplicationDidBecomeActiveStateChange])
  {

    [(EKDayViewController *)self _didRespondToApplicationDidBecomeActiveStateChange];
  }
}

- (BOOL)_shouldRespondToApplicationDidBecomeActiveStateChange
{
  v3 = [(EKDayViewController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(EKDayViewController *)self dataSource];
  v6 = [v5 dayViewControllerShouldRespondToApplicationDidBecomeActiveStateChange:self];

  return v6;
}

- (void)_didRespondToApplicationDidBecomeActiveStateChange
{
  v3 = [(EKDayViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKDayViewController *)self delegate];
    [v5 dayViewControllerDidRespondToApplicationDidBecomeActiveStateChange:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(EKDayViewController *)self _completeScrollingAnimationIfNeeded];
  *(self + 1056) &= ~1u;
  [(EKDayViewController *)self _completeDecelerationIfNeeded];
  v4 = [(EKEventGestureController *)self->_eventGestureController event];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKEventGestureController *)self->_eventGestureController dragGestureInProgress];

    if (!v6)
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
  v3 = [(EKDayViewController *)self showNowTimer];
  [v3 invalidate];

  [(EKDayViewController *)self setShowNowTimer:0];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    self->_fingerDown = 0;
    [(EKDayViewController *)self _notifyDelegateOfSelectedDateChange];
  }
}

- (BOOL)blockableScrollViewShouldAllowScrolling
{
  v3 = [(EKDayViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(EKDayViewController *)self delegate];
  v6 = [v5 dayviewControllerShouldAllowSwipeToChangeDays:self];

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  ++self->_sizeTransitionsInProgress;
  v18.receiver = self;
  v18.super_class = EKDayViewController;
  v7 = a4;
  [(EKDayViewController *)&v18 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(EKDayViewController *)self isViewLoaded])
  {
    v8 = [(EKDayViewController *)self _effectiveInterfaceOrientationForSize:width, height];
    [(EKDayView *)self->_previousDay setOrientation:v8];
    [(EKDayView *)self->_currentDay setOrientation:v8];
    [(EKDayView *)self->_nextDay setOrientation:v8];
  }

  if ([(EKDayViewController *)self isViewLoaded])
  {
    v9 = [(EKDayViewController *)self view];
    v10 = [v9 window];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(EKDayViewController *)self gestureController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__EKDayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_1E8441840;
  v17 = v11;
  v15 = v12;
  v16 = self;
  v13 = v12;
  [v7 animateAlongsideTransition:0 completion:v14];
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = EKDayViewController;
  [(EKDayViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if ([(EKDayViewController *)self isViewLoaded])
  {
    v7 = [(EKDayViewController *)self _effectiveInterfaceOrientationForSize:EKUICurrentWindowSize(v6)];
    [(EKDayView *)self->_previousDay setOrientation:v7];
    [(EKDayView *)self->_currentDay setOrientation:v7];
    [(EKDayView *)self->_nextDay setOrientation:v7];
  }
}

- (void)_setHorizontalContentOffsetUsingSpringAnimation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)pasteboardManager:(id)a3 presentAlert:(id)a4
{
  v5 = a4;
  v6 = [(EKDayViewController *)self currentPresentationController];
  [v5 presentFromSource:v6];
}

- (void)pasteboardManager:(id)a3 beginEditingEvent:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dayViewController:self beginEditingOccurrence:v8 creationMethod:3];
  }
}

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(EKDayViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)_logUserStateDiagnostics:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v42 = [MEMORY[0x1E695DF90] dictionary];
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
        v7 = [v6 UUID];
        v8 = v7 == 0;

        if (!v8)
        {
          v65[0] = @"startDate";
          v9 = [v6 startDate];
          v49 = v9;
          v10 = &stru_1F4EF6790;
          if (v9)
          {
            v10 = v9;
          }

          v66[0] = v10;
          v65[1] = @"duration";
          v11 = MEMORY[0x1E696AD98];
          [v6 duration];
          v48 = [v11 numberWithDouble:?];
          v66[1] = v48;
          v65[2] = @"allDay";
          v12 = [v6 isAllDay];
          v13 = @"NO";
          if (v12)
          {
            v13 = @"YES";
          }

          v66[2] = v13;
          v65[3] = @"UUID";
          v14 = [v6 UUID];
          v47 = v14;
          v15 = &stru_1F4EF6790;
          if (v14)
          {
            v15 = v14;
          }

          v66[3] = v15;
          v65[4] = @"uniqueID";
          v16 = [v6 uniqueID];
          v46 = v16;
          v17 = &stru_1F4EF6790;
          if (v16)
          {
            v17 = v16;
          }

          v66[4] = v17;
          v65[5] = @"externalURL";
          v18 = [v6 externalURL];
          v19 = v18;
          v20 = &stru_1F4EF6790;
          if (v18)
          {
            v20 = v18;
          }

          v66[5] = v20;
          v65[6] = @"alarms";
          v21 = [v6 alarms];
          v22 = v21;
          v23 = &stru_1F4EF6790;
          if (v21)
          {
            v23 = v21;
          }

          v66[6] = v23;
          v65[7] = @"hasLocation";
          v24 = [v6 location];
          v25 = @"NO";
          if (v24)
          {
            v25 = @"YES";
          }

          v66[7] = v25;
          v65[8] = @"calendarIdentifier";
          v26 = [v6 calendar];
          v27 = [v26 calendarIdentifier];
          v28 = v27;
          v29 = &stru_1F4EF6790;
          if (v27)
          {
            v29 = v27;
          }

          v66[8] = v29;
          v65[9] = @"sourceIdentifier";
          v30 = [v6 calendar];
          v31 = [v30 source];
          v32 = [v31 sourceIdentifier];
          v33 = v32;
          v34 = &stru_1F4EF6790;
          if (v32)
          {
            v34 = v32;
          }

          v66[9] = v34;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:10];

          v35 = [v6 UUID];
          [v42 setObject:v45 forKeyedSubscript:v35];
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
    v64 = v42;
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

- (BOOL)interaction:(id)a3 canPasteEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained pasteboardManagerForDayViewController:self];

  LOBYTE(WeakRetained) = [v7 canPerformPaste];
  return WeakRetained;
}

- (BOOL)interaction:(id)a3 canCreateEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained defaultCalendarForNewEvents];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)interaction:(id)a3 canCreateReminderAtPoint:(CGPoint)a4 inView:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained calendarForNewIntegrationReminders];
  v7 = v6 != 0;

  return v7;
}

- (void)createEvent:(BOOL)a3 atPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = a3;
  [(EKDayView *)self->_currentDay convertPoint:a5 fromView:a4.x, a4.y];
  v20 = 0;
  [(EKDayView *)self->_currentDay dateAtPoint:&v20 isAllDay:?];
  v8 = CalSnapDateTo15MinuteInterval(0, v7);
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  if (v5)
  {
    v12 = [WeakRetained dayViewController:self createEventAtDate:v9 allDay:v20];
  }

  else
  {
    v12 = [WeakRetained dayViewController:self createReminderAtDate:v9 allDay:v20];
  }

  v13 = v12;

  v14 = MEMORY[0x1E69930C8];
  v15 = [v13 eventStore];
  v16 = [v15 timeZone];
  v17 = [v14 calendarDateWithDate:v9 timeZone:v16];

  v18 = [(EKDayViewController *)self gestureController];
  [v18 forceStartWithOccurrence:v13 occurrenceDate:v17 shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:0];

  v19 = [(EKDayViewController *)self gestureController];
  [(EKDayViewController *)self eventGestureController:v19 didCommitOccurrence:v13 toDate:v20 isAllDay:0 span:v8];
}

- (void)interaction:(id)a3 pasteEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  [(EKDayView *)self->_currentDay convertPoint:a5 fromView:a4.x, a4.y];
  v10 = 0;
  v6 = MEMORY[0x1E695DF00];
  [(EKDayView *)self->_currentDay dateAtPoint:&v10 isAllDay:?];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [WeakRetained pasteboardManagerForDayViewController:self];

  [v9 setDateForPaste:v7];
  [v9 pasteEventsWithDateMode:-[EKDayViewController _dateModeForAllDay:](self delegate:{"_dateModeForAllDay:", v10), self}];
}

- (id)interaction:(id)a3 titleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5
{
  [(EKDayView *)self->_currentDay convertPoint:a5 fromView:a4.x, a4.y];
  v11 = 0;
  [(EKDayView *)self->_currentDay dateAtPoint:&v11 isAllDay:?];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained pasteboardManagerForDayViewController:self];

  v8 = [v7 numberOfEventsToPaste];
  v9 = [EKUIRightClickEmptySpaceInteraction localizedPasteStringForEventCount:v8 includeHere:(v11 & 1) == 0];

  return v9;
}

- (id)interaction:(id)a3 subtitleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5
{
  [(EKDayView *)self->_currentDay convertPoint:a5 fromView:a4.x, a4.y];
  v14 = 0;
  [(EKDayView *)self->_currentDay dateAtPoint:&v14 isAllDay:?];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  v7 = CUIKCalendar();
  v8 = [MEMORY[0x1E6993458] roundedDateForDate:v6 dateMode:-[EKDayViewController _dateModeForAllDay:](self calendar:{"_dateModeForAllDay:", v14), v7}];

  v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v9 setCalendar:v7];
  v10 = [v7 timeZone];
  [v9 setTimeZone:v10];

  [v9 setDoesRelativeDateFormatting:1];
  v11 = v14;
  [v9 setDateStyle:1];
  [v9 setTimeStyle:v11 ^ 1];
  v12 = [v9 stringFromDate:v8];

  return v12;
}

- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dayOccurrenceViewSelected:v6 source:a4];
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
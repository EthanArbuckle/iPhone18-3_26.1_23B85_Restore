@interface LargeMonthViewController
+ (double)_cellHeightForMultiplier:(double)multiplier windowSize:(CGSize)size;
- (BOOL)canSpaciallyEditOccurrences;
- (BOOL)currentlyEditingEventsWithGestures;
- (BOOL)dragAndDropIsCurrentlyScrubbing;
- (BOOL)interaction:(id)interaction canCreateEventAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction canCreateReminderAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction canPasteEventAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction shouldShowMenuAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)isBackgroundScene;
- (BOOL)isDraggingOccurrence;
- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)controller isPreemptiveCheck:(BOOL)check;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (CGRect)frameForTodayHighlight;
- (LargeMonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window;
- (double)_subviewHeightForDate:(id)date;
- (double)decelerationDistanceThresholdForPreferringMonthBoundary;
- (id)_createLargeMonthWeekViewForDate:(id)date;
- (id)_findNextWeekAfterWeek:(id)week inForwardDirection:(BOOL)direction;
- (id)_paletteView;
- (id)_weekViewAtPoint:(CGPoint)point pointInWeek:(CGPoint *)week;
- (id)_weekViewForDate:(id)date;
- (id)createInitialViewForDate:(id)date;
- (id)interaction:(id)interaction subtitleForPasteActionAtPoint:(CGPoint)point inView:(id)view;
- (id)interaction:(id)interaction titleForPasteActionAtPoint:(CGPoint)point inView:(id)view;
- (id)newBottomViewBelowViewWithCalendarDate:(id)date;
- (id)newTopViewAboveViewWithCalendarDate:(id)date;
- (id)nextLevelWeekViewControllerWithDate:(id)date;
- (id)occurrenceAtPoint:(CGPoint)point;
- (id)occurrencesForStartDate:(id)date endDate:(id)endDate waitForLoad:(BOOL)load;
- (id)pasteboardManagerForEventEditViewController:(id)controller;
- (id)presentationControllerForEditMenu;
- (id)pushedWeekViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)shownEventEditViewController;
- (id)shownEventViewController;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (id)spaciallyEditableOccurrences;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animateGridlinesAndBackgrounds;
- (void)_cleanupGridAnimation;
- (void)_closeEventPresentationAnimated:(BOOL)animated viewController:(id)controller completion:(id)completion;
- (void)_displayedOccurrencesChanged:(id)changed;
- (void)_highlightOccurrenceForPointerTarget:(id)target inWeek:(id)week onDay:(id)day;
- (void)_layoutGridlinesAndBackgrounds:(BOOL)backgrounds;
- (void)_navigateToSelectableItemInForwardDirection:(BOOL)direction;
- (void)_presentationControllerDidDismiss;
- (void)_removeAnimatedGridComponents;
- (void)_scrollToWeekView:(id)view animated:(BOOL)animated completion:(id)completion;
- (void)_scrubAtPoint:(CGPoint)point;
- (void)_scrubWithTouches:(id)touches;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_showEventDetailsForOccurrence:(id)occurrence inWeek:(id)week onDay:(id)day animatedScrollToVisible:(BOOL)visible showMode:(unint64_t)mode context:(id)context creationMethod:(unint64_t)method;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated;
- (void)_updateDayHeaderFrames;
- (void)addEventToSelection:(id)selection inWeek:(id)week updateModel:(BOOL)model;
- (void)completeReminderFromTap:(id)tap;
- (void)contentSizeCategoryChanged;
- (void)didCompleteBackgroundOccurrenceRenderingForLargeMonthWeekView:(id)view;
- (void)didEndScrolling;
- (void)didScroll;
- (void)dragAndDropRequestsPresentationOfViewController:(id)controller;
- (void)draggedOccurrenceWasCancelled:(id)cancelled atPoint:(CGPoint)point;
- (void)enqueuableNavigationController:(id)controller requestsDeferShowViewControllerUntilReady:(id)ready;
- (void)enqueueableManagedNavigationController:(id)controller requestsConfigurationOfPropertiesForPopoverPresentationController:(id)presentationController completion:(id)completion;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventViewController:(id)controller requestsDisplayOfDeleteAlert:(id)alert;
- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated;
- (void)eventViewController:(id)controller requestsShowEvent:(id)event;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)handleCloseKeyCommand;
- (void)interaction:(id)interaction createEventAtPoint:(CGPoint)point inView:(id)view;
- (void)interaction:(id)interaction createReminderAtPoint:(CGPoint)point inView:(id)view;
- (void)interaction:(id)interaction pasteEventAtPoint:(CGPoint)point inView:(id)view;
- (void)largeMonthWeekView:(id)view didDoubleTapOnDay:(id)day;
- (void)largeMonthWeekView:(id)view didTapOccurrence:(id)occurrence onDay:(id)day extendSelection:(BOOL)selection source:(unint64_t)source tappedSymbol:(BOOL)symbol;
- (void)largeMonthWeekView:(id)view touchesBegan:(id)began withEvent:(id)event;
- (void)largeMonthWeekView:(id)view touchesEnded:(id)ended withEvent:(id)event;
- (void)largeMonthWeekView:(id)view touchesMoved:(id)moved withEvent:(id)event;
- (void)loadView;
- (void)localeChanged;
- (void)occurrencesWereSpaciallyEditedFromDate:(id)date toDate:(id)toDate;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)removeEventFromSelection:(id)selection inWeek:(id)week updateModel:(BOOL)model;
- (void)selectOccurrence:(id)occurrence inWeek:(id)week;
- (void)showDetailsForCurrentSelectableItem;
- (void)showDetailsForDraggedOccurrence:(id)occurrence inWeekView:(id)view onDay:(id)day creationMethod:(unint64_t)method;
- (void)showEditorForNewDraggedEvent:(id)event inWeek:(id)week;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)weekNumbersPrefChanged;
@end

@implementation LargeMonthViewController

- (LargeMonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window
{
  dateCopy = date;
  modelCopy = model;
  windowCopy = window;
  v20.receiver = self;
  v20.super_class = LargeMonthViewController;
  v12 = [(MonthViewController *)&v20 initWithCalendarDate:dateCopy model:modelCopy window:windowCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_initialDate, date);
    +[MonthViewOccurrence clearCachedFonts];
    +[LargeMonthWeekView clearCachedFonts];
    [(LargeMonthViewController *)v13 findWeekends];
    objc_initWeak(&location, v13);
    v21 = objc_opt_class();
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000601A4;
    v17[3] = &unk_10020E9E0;
    objc_copyWeak(&v18, &location);
    v15 = [(LargeMonthViewController *)v13 registerForTraitChanges:v14 withHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (unint64_t)supportedInterfaceOrientations
{
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];
  v4 = shownEventEditViewController;
  if (shownEventEditViewController)
  {
    supportedInterfaceOrientations = [shownEventEditViewController supportedInterfaceOrientations];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LargeMonthViewController;
    supportedInterfaceOrientations = [(LargeMonthViewController *)&v8 supportedInterfaceOrientations];
  }

  v6 = supportedInterfaceOrientations;

  return v6;
}

- (void)loadView
{
  v22.receiver = self;
  v22.super_class = LargeMonthViewController;
  [(MonthViewController *)&v22 loadView];
  v3 = 6;
  v4 = [[NSMutableArray alloc] initWithCapacity:6];
  y = CGPointZero.y;
  do
  {
    v6 = objc_alloc_init(CALayer);
    [v6 setAnchorPoint:{CGPointZero.x, y}];
    v7 = +[LargeMonthWeekView gridlineColor];
    [v6 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

    scrollView = [(InfiniteScrollViewController *)self scrollView];
    layer = [scrollView layer];
    [layer addSublayer:v6];

    [(NSArray *)v4 addObject:v6];
    --v3;
  }

  while (v3);
  verticalGridLines = self->_verticalGridLines;
  self->_verticalGridLines = v4;
  v11 = v4;

  v12 = objc_alloc_init(CALayer);
  v13 = objc_alloc_init(CALayer);
  [v12 setAnchorPoint:{CGPointZero.x, y}];
  [v13 setAnchorPoint:{CGPointZero.x, y}];
  v14 = +[LargeMonthWeekView weekendColor];
  [v12 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  v15 = +[LargeMonthWeekView weekendColor];
  [v13 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  layer2 = [scrollView2 layer];
  [layer2 addSublayer:v12];

  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  layer3 = [scrollView3 layer];
  [layer3 addSublayer:v13];

  v23[0] = v12;
  v23[1] = v13;
  v20 = [NSArray arrayWithObjects:v23 count:2];
  weekendDayBackgrounds = self->_weekendDayBackgrounds;
  self->_weekendDayBackgrounds = v20;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = LargeMonthViewController;
  [(MonthViewController *)&v6 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_displayedOccurrencesChanged:" name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super._model];
  [v4 addObserver:self selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->super.super.super._model];
  [(InfiniteScrollViewController *)self showSelectedDateIfNeeded];
  [(InfiniteScrollViewController *)self reloadDataForAllViews];
  navigationBarDisplayedDate = self->_navigationBarDisplayedDate;
  self->_navigationBarDisplayedDate = 0;

  self->_viewIsAppearing = 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = LargeMonthViewController;
  [(MonthViewController *)&v11 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    model = [(MainViewController *)self model];
    selectedDate = [model selectedDate];
    date = [selectedDate date];
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = date;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  self->_viewIsAppearing = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super._model];
  [v5 removeObserver:self name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->super.super.super._model];
  [(LargeMonthViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:0];
  shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    [(LargeMonthViewController *)self _closeEventPresentationAnimated:0];
  }

  self->_viewIsAppearing = 0;
  v7.receiver = self;
  v7.super_class = LargeMonthViewController;
  [(MonthViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LargeMonthViewController;
  [(LargeMonthViewController *)&v4 viewDidDisappear:disappear];
  self->_viewIsAppearing = 0;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  self->_shouldForceAllowUpdateNavigationBarDateString = 1;
  if ([(InfiniteScrollViewController *)self viewIsVisible]|| self->_viewIsAppearing)
  {
    if (coordinatorCopy)
    {
      [coordinatorCopy targetTransform];
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    self->_animateResize = CGAffineTransformIsIdentity(&v14);
    v13.receiver = self;
    v13.super_class = LargeMonthViewController;
    [(InfiniteScrollViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
    view = [(LargeMonthViewController *)self view];
    [view setNeedsLayout];

    v14.a = 0.0;
    *&v14.b = &v14;
    *&v14.c = 0x3010000000;
    *&v14.d = &unk_1001EBD39;
    *&v14.tx = CGPointZero;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_100060C40;
    v11[4] = sub_100060C50;
    v12 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100060C58;
    v10[3] = &unk_10020F8F0;
    v10[4] = self;
    v10[5] = v11;
    v10[6] = &v14;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100060EFC;
    v9[3] = &unk_10020F8F0;
    v9[4] = self;
    v9[5] = v11;
    v9[6] = &v14;
    [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
    _Block_object_dispose(v11, 8);

    _Block_object_dispose(&v14, 8);
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = LargeMonthViewController;
  [(InfiniteScrollViewController *)&v4 viewWillLayoutSubviews];
  _paletteView = [(LargeMonthViewController *)self _paletteView];
  [(LargeMonthViewController *)self updatePalette:_paletteView];

  if (!self->_animateResize)
  {
    [(LargeMonthViewController *)self _layoutGridlinesAndBackgrounds:0];
  }
}

- (void)_animateGridlinesAndBackgrounds
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000611A0;
  v7[3] = &unk_10020EB00;
  v7[4] = self;
  [UIView performWithoutAnimation:v7];
  for (i = 0; i != 6; ++i)
  {
    v4 = [(NSArray *)self->_verticalGridLines objectAtIndexedSubscript:i];
    [v4 setHidden:1];
  }

  v5 = [(NSArray *)self->_weekendDayBackgrounds objectAtIndexedSubscript:0];
  [v5 setHidden:1];

  v6 = [(NSArray *)self->_weekendDayBackgrounds objectAtIndexedSubscript:1];
  [v6 setHidden:1];

  [(LargeMonthViewController *)self _layoutGridlinesAndBackgrounds:1];
}

- (void)_removeAnimatedGridComponents
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_animatableGridLines;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_animatableDayBackgrounds;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12) removeFromSuperview];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  animatableGridLines = self->_animatableGridLines;
  self->_animatableGridLines = 0;

  animatableDayBackgrounds = self->_animatableDayBackgrounds;
  self->_animatableDayBackgrounds = 0;
}

- (void)_cleanupGridAnimation
{
  [(LargeMonthViewController *)self _removeAnimatedGridComponents];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_verticalGridLines;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        [v8 setHidden:0];
        [v8 removeAllAnimations];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_weekendDayBackgrounds;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * j);
        [v14 setHidden:{0, v15}];
        [v14 removeAllAnimations];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)_layoutGridlinesAndBackgrounds:(BOOL)backgrounds
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView bounds];
  v7 = v6;
  v9 = v8;

  EKUISeparatorLineThickness();
  v11 = v10;
  centerViewOnScreen = [(InfiniteScrollViewController *)self centerViewOnScreen];
  dayFrames = [centerViewOnScreen dayFrames];

  v13 = 0;
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  do
  {
    v15 = [dayFrames objectAtIndexedSubscript:IsLeftToRight + v13];
    [v15 CGRectValue];
    v17 = v16;

    v18 = v17 - v11;
    if (backgrounds)
    {
      v19 = [(NSArray *)self->_animatableGridLines objectAtIndexedSubscript:v13];
      [v19 setFrame:{v18, v7, v11, v9}];
    }

    v20 = [(NSArray *)self->_verticalGridLines objectAtIndexedSubscript:v13];
    [v20 setFrame:{v18, v7, v11, v9}];
    [v20 removeAllAnimations];

    ++v13;
  }

  while (v13 != 6);
  v21 = self->_weekendOffsets[0];
  v22 = v21 - CUIKZeroIndexedWeekStart() + 7;
  v23 = self->_weekendOffsets[1];
  v24 = v23 - CUIKZeroIndexedWeekStart() + 7;
  v25 = [dayFrames objectAtIndexedSubscript:v22 % 7];
  [v25 CGRectValue];
  v27 = v26;
  v29 = v28;

  v30 = [dayFrames objectAtIndexedSubscript:v24 % 7];
  [v30 CGRectValue];
  v32 = v31;
  v34 = v33;

  if (backgrounds)
  {
    v35 = [(NSArray *)self->_animatableDayBackgrounds objectAtIndexedSubscript:0];
    [v35 setFrame:{v27, v7, v29, v9}];

    v36 = [(NSArray *)self->_animatableDayBackgrounds objectAtIndexedSubscript:1];
    [v36 setFrame:{v32, v7, v34, v9}];
  }

  v37 = [(NSArray *)self->_weekendDayBackgrounds objectAtIndexedSubscript:0];
  v38 = [(NSArray *)self->_weekendDayBackgrounds objectAtIndexedSubscript:1];
  [v37 setFrame:{v27, v7, v29, v9}];
  [v38 setFrame:{v32, v7, v34, v9}];
  [v37 removeAllAnimations];
  [v38 removeAllAnimations];
}

- (id)_paletteView
{
  navigationController = [(LargeMonthViewController *)self navigationController];
  paletteView = [navigationController paletteView];

  return paletteView;
}

- (void)_updateDayHeaderFrames
{
  _paletteView = [(LargeMonthViewController *)self _paletteView];
  if (_paletteView)
  {
    v24 = _paletteView;
    v4 = [(InfiniteScrollViewController *)self subviewForPoint:CGPointZero.x, CGPointZero.y];
    dayFrames = [v4 dayFrames];
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dayFrames, "count")}];
    if ([dayFrames count])
    {
      v7 = 0;
      do
      {
        v8 = [dayFrames objectAtIndexedSubscript:v7];
        [v8 CGRectValue];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        [v4 convertRect:v24 toView:{v10, v12, v14, v16}];
        v18 = v17;
        v20 = v19;
        [v24 bounds];
        v22 = v21;
        [v24 bounds];
        v23 = [NSValue valueWithCGRect:v18, v22, v20];
        [v6 addObject:v23];

        ++v7;
      }

      while (v7 < [dayFrames count]);
    }

    [v24 setDayHeaderFrames:v6];

    _paletteView = v24;
  }
}

- (void)_presentationControllerDidDismiss
{
  draggedOccurrenceView = [(MonthViewController *)self draggedOccurrenceView];

  if (draggedOccurrenceView)
  {
    [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
    [(MonthViewController *)self removeAllWeekHighlights];
  }

  [(MainViewController *)self invalidateManagedNavigationController];
  startCalendarDate = [(EKEvent *)self->_eventBeingInspected startCalendarDate];
  v9 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];

  [(LargeMonthViewController *)self selectOccurrence:0 inWeek:v9];
  self->_currentlyEditingEvent = 0;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setScrollEnabled:1];

  eventBeingInspected = self->_eventBeingInspected;
  self->_eventBeingInspected = 0;

  tappedDay = self->_tappedDay;
  self->_tappedDay = 0;

  size = CGRectNull.size;
  self->_scrubbingRect.origin = CGRectNull.origin;
  self->_scrubbingRect.size = size;
  self->_shouldAnimateScrollToVisibleWeekViewForSelectedOccurrence = 0;
  [(NSMutableArray *)self->_weeksContainingSelectedOccurrences removeAllObjects];
  self->_shouldPresentEventCommentsForSelectedOccurrence = 0;
  [(LargeMonthViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  startCalendarDate = [(EKEvent *)self->_eventBeingInspected startCalendarDate];
  v19 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];

  eventBeingInspected = self->_eventBeingInspected;
  startCalendarDate2 = [(EKEvent *)eventBeingInspected startCalendarDate];
  [v19 frameForOccurrence:eventBeingInspected onDay:startCalendarDate2];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  if (!CGRectIsNull(v21))
  {
    *view = v19;
    rect->origin.x = v12;
    rect->origin.y = v14;
    rect->size.width = v16;
    rect->size.height = v18;
  }

  [(LargeMonthViewController *)self selectOccurrence:self->_eventBeingInspected inWeek:v19];
}

- (id)_createLargeMonthWeekViewForDate:(id)date
{
  dateCopy = date;
  v5 = CUIKOneIndexedWeekStart();
  v6 = CUIKTodayDate();
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [dateCopy calendarDateForWeekWithWeekStart:v5];
  v10 = [dateCopy calendarDateForEndOfWeekWithWeekStart:v5];
  v11 = [v9 calendarDateByAddingWeeks:1];
  v12 = [v10 calendarDateByAddingWeeks:-1];
  month = [v12 month];
  v55 = v11;
  if (month == [v10 month] && (v14 = objc_msgSend(v9, "month"), v14 == objc_msgSend(v11, "month")))
  {
    v15 = 0;
    v54 = 0;
    v16 = 2;
    v17 = 7;
  }

  else
  {
    month2 = [dateCopy month];
    if (month2 == [v12 month])
    {
      calendarDateForEndOfMonth = [v9 calendarDateForEndOfMonth];

      v20 = [calendarDateForEndOfMonth day];
      v15 = 0;
      v17 = v20 - [v9 day] + 1;
      v54 = 1;
      v16 = 2;
      v10 = calendarDateForEndOfMonth;
    }

    else
    {
      calendarDateForMonth = [v10 calendarDateForMonth];

      v22 = [v10 day];
      v54 = 0;
      v15 = v22 - [calendarDateForMonth day] - 6;
      v16 = 3;
      v17 = 7;
      v9 = calendarDateForMonth;
    }
  }

  [v9 absoluteTime];
  if (v8 >= v23 && ([v10 absoluteTime], v8 <= v24))
  {
    v26 = CUIKTodayComponents();
    v25 = [v26 day];
  }

  else
  {
    v25 = 0;
  }

  view = [(LargeMonthViewController *)self view];
  [view bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [(LargeMonthViewController *)self _subviewHeightForDate:v9];
  v35 = v34;
  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v37 = dequeueReusableView;
    [(LargeMonthWeekView *)dequeueReusableView setFrame:v29, v31, v33, v35];
  }

  else
  {
    v37 = [[LargeMonthWeekView alloc] initWithFrame:v29, v31, v33, v35];
    [(LargeMonthWeekView *)v37 setDataSource:self];
    [(LargeMonthWeekView *)v37 setDelegate:self];
    v38 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:self];
    v53 = v10;
    selfCopy = self;
    v40 = v25;
    v41 = v16;
    v42 = dateCopy;
    v43 = v12;
    v44 = v17;
    v45 = v15;
    v46 = v38;
    [(LargeMonthWeekView *)v37 addInteraction:v38];

    v15 = v45;
    v17 = v44;
    v12 = v43;
    dateCopy = v42;
    v16 = v41;
    v25 = v40;
    self = selfCopy;
    v10 = v53;
  }

  [(LargeMonthWeekView *)v37 setStartDate:v9 endDate:v10 dayCount:v17 + v15 todayDay:v25 reload:0];
  month3 = [v9 month];
  if (month3 == [(EKCalendarDate *)self->_navigationBarDisplayedDate month])
  {
    year = [v9 year];
    v49 = year != [(EKCalendarDate *)self->_navigationBarDisplayedDate year];
  }

  else
  {
    v49 = 1;
  }

  [(LargeMonthWeekView *)v37 setShowsFirstDayOfMonthLabel:v49 animated:0];
  if (v54)
  {
    v50 = v16 | 4;
  }

  else
  {
    v50 = v16;
  }

  [(LargeMonthWeekView *)v37 setAutoresizingMask:v50];
  v51 = +[CUIKPreferences sharedPreferences];
  -[LargeMonthWeekView setShowsWeekNumber:](v37, "setShowsWeekNumber:", [v51 showWeekNumbers]);

  return v37;
}

- (id)createInitialViewForDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

  v6 = [(LargeMonthViewController *)self _createLargeMonthWeekViewForDate:v5];
  [v6 reloadData];

  return v6;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)date
{
  v4 = [(MonthViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:date];
  v5 = [(LargeMonthViewController *)self _createLargeMonthWeekViewForDate:v4];

  return v5;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)date
{
  v4 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:date];
  v5 = [(LargeMonthViewController *)self _createLargeMonthWeekViewForDate:v4];

  return v5;
}

- (double)decelerationDistanceThresholdForPreferringMonthBoundary
{
  v3 = objc_opt_class();
  view = [(LargeMonthViewController *)self view];
  EKUICurrentWindowSize();
  [v3 _cellHeightForMultiplier:3.5 windowSize:{v5, v6}];
  v8 = v7;

  return v8;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [(LargeMonthViewController *)self updateNavigationBarDisplayedDateString];
  [paletteCopy setWeekdayHeaderVisible:1];
  [paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  [paletteCopy setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDateStringVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDividerLineVisible:CalSystemSolariumEnabled()];
  if (CalSolariumEnabled())
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [paletteCopy setFocusBannerPlacement:v5];
  [paletteCopy setDayScrubberController:0];
  [(LargeMonthViewController *)self _updateDayHeaderFrames];
  [paletteCopy sizeToFit];
  [paletteCopy frame];
  v7 = v6;
  containingPalette = [paletteCopy containingPalette];

  [containingPalette setPreferredHeight:v7];
}

- (void)updateNavigationBarDisplayedDateString
{
  dateOfCenterViewOnScreen = [(InfiniteScrollViewController *)self dateOfCenterViewOnScreen];
  v4 = dateOfCenterViewOnScreen;
  if (self->_shouldForceAllowUpdateNavigationBarDateString || !self->_navigationBarDisplayedDate || (v5 = [dateOfCenterViewOnScreen month], v5 != -[EKCalendarDate month](self->_navigationBarDisplayedDate, "month")) || (v6 = objc_msgSend(v4, "year"), v6 != -[EKCalendarDate year](self->_navigationBarDisplayedDate, "year")))
  {
    self->_shouldForceAllowUpdateNavigationBarDateString = 0;
    navigationController = [(LargeMonthViewController *)self navigationController];
    topMainViewControllerContainer = [navigationController topMainViewControllerContainer];
    if ([topMainViewControllerContainer currentChildViewControllerIsLoaded])
    {
      topMainViewControllerContainer2 = [navigationController topMainViewControllerContainer];
      currentChildViewController = [topMainViewControllerContainer2 currentChildViewController];

      if (currentChildViewController == self)
      {
        [navigationController setNavBarStringFromDate:v4 includeMonth:1 includeYear:1];
      }
    }

    else
    {
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000626F0;
    v11[3] = &unk_10020ED60;
    v12 = v4;
    [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v11];
    objc_storeStrong(&self->_navigationBarDisplayedDate, v4);
  }
}

- (void)didScroll
{
  v3.receiver = self;
  v3.super_class = LargeMonthViewController;
  [(MonthViewController *)&v3 didScroll];
  [(LargeMonthViewController *)self updateNavigationBarDisplayedDateString];
  if (!self->_animateResize)
  {
    [(LargeMonthViewController *)self _layoutGridlinesAndBackgrounds:0];
  }
}

- (void)didEndScrolling
{
  v3.receiver = self;
  v3.super_class = LargeMonthViewController;
  [(MonthViewController *)&v3 didEndScrolling];
  [(LargeMonthViewController *)self updateNavigationBarDisplayedDateString];
  [(LargeMonthViewController *)self _layoutGridlinesAndBackgrounds:0];
}

- (CGRect)frameForTodayHighlight
{
  v3 = CUIKTodayDate();
  calendar = [(CUIKCalendarModel *)self->super.super.super._model calendar];
  timeZone = [calendar timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];

  v7 = [(InfiniteScrollViewController *)self subviewForDate:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [(LargeMonthViewController *)self view];
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

- (id)shownEventViewController
{
  viewControllerToShowFrom = [(LargeMonthViewController *)self viewControllerToShowFrom];
  presentingViewController = [viewControllerToShowFrom presentingViewController];

  if (presentingViewController)
  {
    v7.receiver = self;
    v7.super_class = LargeMonthViewController;
    shownEventViewController = [(MainViewController *)&v7 shownEventViewController];
  }

  else
  {
    shownEventViewController = 0;
  }

  return shownEventViewController;
}

- (id)shownEventEditViewController
{
  viewControllerToShowFrom = [(LargeMonthViewController *)self viewControllerToShowFrom];
  presentingViewController = [viewControllerToShowFrom presentingViewController];

  if (presentingViewController)
  {
    v7.receiver = self;
    v7.super_class = LargeMonthViewController;
    shownEventEditViewController = [(MainViewController *)&v7 shownEventEditViewController];
  }

  else
  {
    shownEventEditViewController = 0;
  }

  return shownEventEditViewController;
}

- (BOOL)currentlyEditingEventsWithGestures
{
  draggedOccurrenceView = [(MonthViewController *)self draggedOccurrenceView];
  v3 = draggedOccurrenceView != 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];
  v3 = shownEventEditViewController == 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
    v4 = 0;
  }

  else
  {
    shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];
    v4 = shownEventViewController == 0;
  }

  return v4;
}

- (void)_navigateToSelectableItemInForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  presentedViewController = [(LargeMonthViewController *)self presentedViewController];
  if (![presentedViewController isBeingDismissed])
  {
    presentedViewController2 = [(LargeMonthViewController *)self presentedViewController];
    isBeingPresented = [presentedViewController2 isBeingPresented];

    if (isBeingPresented)
    {
      return;
    }

    model = [(MainViewController *)self model];
    selectedOccurrences = [model selectedOccurrences];
    v9 = [selectedOccurrences count];

    if (v9 != 1)
    {
      return;
    }

    model2 = [(MainViewController *)self model];
    selectedOccurrence = [model2 selectedOccurrence];

    linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
    if (!linearNavigationSelectedWeek)
    {
      startCalendarDate = [selectedOccurrence startCalendarDate];
      v14 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];
      v15 = self->_linearNavigationSelectedWeek;
      self->_linearNavigationSelectedWeek = v14;

      linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
    }

    v29 = 1;
    v16 = linearNavigationSelectedWeek;
    if (v16)
    {
      v17 = 0;
      while (1)
      {
        if (directionCopy)
        {
          [(LargeMonthWeekView *)v16 findNextOccurrenceAndShouldMoveNext:&v29];
        }

        else
        {
          [(LargeMonthWeekView *)v16 findPreviousOccurrenceAndShouldMoveNext:&v29];
        }
        v18 = ;
        if (v18)
        {
          break;
        }

        if (v29 == 1)
        {
          v19 = [(LargeMonthViewController *)self _findNextWeekAfterWeek:v16 inForwardDirection:directionCopy];

          v16 = v19;
        }

        v18 = 0;
        if (v29 == 1)
        {
          if (v16)
          {
            if (v17++ < 2)
            {
              continue;
            }
          }
        }

        goto LABEL_28;
      }

      objc_storeStrong(&self->_linearNavigationSelectedWeek, v16);
      model3 = [(MainViewController *)self model];
      if ([model3 selectedOccurrenceSelectionSource] == 1)
      {
        presentedViewController3 = [(LargeMonthViewController *)self presentedViewController];

        if (!presentedViewController3)
        {
          model4 = [(MainViewController *)self model];
          v24 = [NSArray arrayWithObject:v18];
          model5 = [(MainViewController *)self model];
          [model4 setSelectedOccurrences:v24 source:objc_msgSend(model5 forceChange:{"selectedOccurrenceSelectionSource"), 0}];

          goto LABEL_28;
        }
      }

      else
      {
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100062EDC;
      v27[3] = &unk_10020EC68;
      v27[4] = self;
      v18 = v18;
      v28 = v18;
      [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v27];

      goto LABEL_28;
    }

    v18 = 0;
LABEL_28:

    return;
  }
}

- (id)_findNextWeekAfterWeek:(id)week inForwardDirection:(BOOL)direction
{
  if (direction)
  {
    endDate = [week endDate];
    v6 = endDate;
    v7 = 1;
  }

  else
  {
    endDate = [week startDate];
    v6 = endDate;
    v7 = -1;
  }

  v8 = [endDate calendarDateByAddingDays:v7];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];

  return v9;
}

- (void)showNextOccurrenceOfSelectableItem
{
  shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    shownEventViewController2 = [(LargeMonthViewController *)self shownEventViewController];
    [(LargeMonthViewController *)self eventViewControllerNextButtonWasTapped:shownEventViewController2];
  }
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    shownEventViewController2 = [(LargeMonthViewController *)self shownEventViewController];
    [(LargeMonthViewController *)self eventViewControllerPreviousButtonWasTapped:shownEventViewController2];
  }
}

- (void)showDetailsForCurrentSelectableItem
{
  presentedViewController = [(LargeMonthViewController *)self presentedViewController];
  if (!presentedViewController)
  {
    model = [(MainViewController *)self model];
    pointerTargetedOccurrences = [model pointerTargetedOccurrences];
    v6 = [pointerTargetedOccurrences count];

    if (v6 != 1)
    {
      return;
    }

    model2 = [(MainViewController *)self model];
    pointerTargetedOccurrences2 = [model2 pointerTargetedOccurrences];
    firstObject = [pointerTargetedOccurrences2 firstObject];
    [(LargeMonthViewController *)self showEvent:firstObject animated:1 showMode:1 context:0];

    model3 = [(MainViewController *)self model];
    [model3 setSelectedOccurrenceSelectionSource:0];
    presentedViewController = model3;
  }
}

- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  directionCopy = direction;
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:0];
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

  v9 = [selectedDate calendarDateByAddingMonths:v8];
  [(MonthViewController *)self selectDate:v9 animated:animatedCopy];
}

- (double)_subviewHeightForDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  v6 = [v5 calendarDateByAddingWeeks:1];
  v7 = [v6 day];
  calendarDateForMonth = [dateCopy calendarDateForMonth];

  v9 = [calendarDateForMonth day];
  if (v7 == v9)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = objc_opt_class();
  view = [(LargeMonthViewController *)self view];
  EKUICurrentWindowSize();
  [v11 _cellHeightForMultiplier:v10 windowSize:{v13, v14}];
  v16 = v15;

  return v16;
}

+ (double)_cellHeightForMultiplier:(double)multiplier windowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251950 != -1)
  {
    sub_10016FE2C();
  }

  [qword_100251948 valueForSize:width];
  return v6 * multiplier;
}

- (id)pushedWeekViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(LargeMonthViewController *)self nextLevelWeekViewControllerWithDate:date];
  navigationController = [(LargeMonthViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:animatedCopy];

  return v6;
}

- (id)nextLevelWeekViewControllerWithDate:(id)date
{
  [(CUIKCalendarModel *)self->super.super.super._model setSelectedDate:date];
  v4 = [WeekViewContainerViewController alloc];
  model = self->super.super.super._model;
  window = [(MainViewController *)self window];
  v7 = [(MainViewControllerContainer *)v4 initWithModel:model window:window];

  return v7;
}

- (id)occurrencesForStartDate:(id)date endDate:(id)endDate waitForLoad:(BOOL)load
{
  v5 = [(CUIKCalendarModel *)self->super.super.super._model occurrencesForStartDate:date endDate:endDate preSorted:0 waitForLoad:load];
  occurrences = [v5 occurrences];

  return occurrences;
}

- (void)didCompleteBackgroundOccurrenceRenderingForLargeMonthWeekView:(id)view
{
  viewCopy = view;
  model = [(MainViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  v7 = [(LargeMonthViewController *)self isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:0 isPreemptiveCheck:1];
  if (selectedOccurrence)
  {
    v8 = v7;
    if ([(LargeMonthViewController *)self isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView])
    {
      endCalendarDate = [selectedOccurrence endCalendarDate];
      [endCalendarDate absoluteTime];
      v11 = v10;
      startDate = [viewCopy startDate];
      [startDate absoluteTime];
      if (v11 <= v13)
      {

LABEL_9:
        goto LABEL_10;
      }

      startCalendarDate = [selectedOccurrence startCalendarDate];
      [startCalendarDate absoluteTime];
      v16 = v15;
      endDate = [viewCopy endDate];
      [endDate absoluteTime];
      v19 = (v16 < v18) & v8;

      if (v19 == 1)
      {
        [(LargeMonthViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:0];
        v20 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v21 = v20;
          v22 = objc_opt_class();
          v23 = v22;
          managedNavigationController = [(MainViewController *)self managedNavigationController];
          *v26 = 138412546;
          *&v26[4] = v22;
          *&v26[12] = 2112;
          *&v26[14] = objc_opt_class();
          v25 = *&v26[14];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ notifying %@ that it completed background rendering of the occurrence view for the selected event.", v26, 0x16u);
        }

        endCalendarDate = [(MainViewController *)self managedNavigationController:*v26];
        [endCalendarDate sourceViewController:self notifiesReadinessForPresentation:1];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (BOOL)isBackgroundScene
{
  window = [(MainViewController *)self window];
  windowScene = [window windowScene];
  v4 = [windowScene activationState] == 2;

  return v4;
}

- (void)largeMonthWeekView:(id)view didTapOccurrence:(id)occurrence onDay:(id)day extendSelection:(BOOL)selection source:(unint64_t)source tappedSymbol:(BOOL)symbol
{
  symbolCopy = symbol;
  selectionCopy = selection;
  viewCopy = view;
  occurrenceCopy = occurrence;
  dayCopy = day;
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  if (occurrenceCopy)
  {
    [occurrenceCopy startDate];
  }

  else
  {
    [dayCopy date];
  }
  v18 = ;
  [pasteboardManager setDateForPaste:v18];

  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    goto LABEL_5;
  }

  if ([EKDayOccurrenceView isUserInitiated:source])
  {
    presentedViewController = [(LargeMonthViewController *)self presentedViewController];
    isBeingDismissed = [presentedViewController isBeingDismissed];

    if (isBeingDismissed)
    {
      goto LABEL_5;
    }

    p_isTrackingTouches = &self->_isTrackingTouches;
    if (!self->_isTrackingTouches)
    {
      v23 = [(InfiniteScrollViewController *)self subviewForDate:dayCopy];
      v24 = v23;
      if (occurrenceCopy && v23)
      {
        if (selectionCopy)
        {
          selectedOccurrences = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
          v26 = [selectedOccurrences containsObject:occurrenceCopy];

          if (v26)
          {
            [(LargeMonthViewController *)self removeEventFromSelection:occurrenceCopy inWeek:v24 updateModel:1];
          }

          else
          {
            [(LargeMonthViewController *)self addEventToSelection:occurrenceCopy inWeek:v24 updateModel:1];
          }
        }

        else if (symbolCopy && [occurrenceCopy isIntegrationEvent])
        {
          [(LargeMonthViewController *)self completeReminderFromTap:occurrenceCopy];
        }

        else if (source)
        {
          [(LargeMonthViewController *)self _highlightOccurrenceForPointerTarget:occurrenceCopy inWeek:v24 onDay:dayCopy];
        }

        else
        {
          [(LargeMonthViewController *)self _showEventDetailsForOccurrence:occurrenceCopy inWeek:v24 onDay:dayCopy creationMethod:0];
        }
      }

      else
      {
        shownEventEditViewController2 = [(LargeMonthViewController *)self shownEventEditViewController];
        if (shownEventEditViewController2)
        {
          currentlyEditingEvent = self->_currentlyEditingEvent;

          if (!currentlyEditingEvent)
          {
            [(LargeMonthViewController *)self _closeEventPresentationAnimated:1];
            [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
            [(MonthViewController *)self removeAllWeekHighlights];
            [(LargeMonthViewController *)self selectOccurrence:0 inWeek:0];
            scrollView = [(InfiniteScrollViewController *)self scrollView];
            [scrollView setScrollEnabled:1];
          }
        }
      }

      goto LABEL_5;
    }

    goto LABEL_17;
  }

  p_isTrackingTouches = &self->_isTrackingTouches;
  if (self->_isTrackingTouches)
  {
LABEL_17:
    shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

    if (shownEventViewController)
    {
      selectedOccurrence = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrence];

      if (selectedOccurrence)
      {
        selectedOccurrence2 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrence];
        firstObject = [(NSMutableArray *)self->_weeksContainingSelectedOccurrences firstObject];
        [(LargeMonthViewController *)self _showEventDetailsForOccurrence:selectedOccurrence2 inWeek:firstObject onDay:self->_tappedDay creationMethod:0];
      }

      else
      {
        [(LargeMonthViewController *)self _closeEventPresentationAnimated:1];
      }
    }

    *p_isTrackingTouches = 0;
    goto LABEL_5;
  }

  if (occurrenceCopy)
  {
    selectedOccurrences2 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
    v32 = [selectedOccurrences2 containsObject:occurrenceCopy];

    if ((v32 & 1) == 0)
    {
      [(CUIKCalendarModel *)self->super.super.super._model setSelectedOccurrence:occurrenceCopy];
    }
  }

LABEL_5:
}

- (void)completeReminderFromTap:(id)tap
{
  tapCopy = tap;
  [tapCopy setCompleted:{objc_msgSend(tapCopy, "completed") ^ 1}];
  eKUI_editor = [(LargeMonthViewController *)self EKUI_editor];
  v9 = 0;
  v6 = [eKUI_editor saveEvent:tapCopy span:0 error:&v9];

  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "error completing/uncompleting reminder: %@", buf, 0xCu);
    }
  }
}

- (void)largeMonthWeekView:(id)view didDoubleTapOnDay:(id)day
{
  dayCopy = day;
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:0];
  [(MonthViewController *)self removeAllWeekHighlights];
  [(CUIKCalendarModel *)self->super.super.super._model setSelectedDate:dayCopy];
  v5 = [(LargeMonthViewController *)self pushedWeekViewControllerWithDate:dayCopy animated:0];
  currentChildViewController = [v5 currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v7 = [currentChildViewController pushedDayViewControllerWithDate:dayCopy animated:0];
  }
}

- (void)largeMonthWeekView:(id)view touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!shownEventEditViewController)
  {
    shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

    if (shownEventViewController)
    {
      self->_isTrackingTouches = 1;
      [(LargeMonthViewController *)self _scrubWithTouches:beganCopy];
    }
  }
}

- (void)largeMonthWeekView:(id)view touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!shownEventEditViewController)
  {
    shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

    if (shownEventViewController)
    {
      [(LargeMonthViewController *)self _scrubWithTouches:movedCopy];
    }
  }
}

- (void)largeMonthWeekView:(id)view touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!shownEventEditViewController)
  {
    self->_isTrackingTouches = 0;
    shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

    if (shownEventViewController)
    {
      [(LargeMonthViewController *)self _scrubWithTouches:endedCopy];
      model = [(MainViewController *)self model];
      selectedOccurrence = [model selectedOccurrence];

      if (selectedOccurrence)
      {
        anyObject = [endedCopy anyObject];
        scrollView = [(InfiniteScrollViewController *)self scrollView];
        [anyObject locationInView:scrollView];
        v13 = v12;
        v15 = v14;

        v16 = [(LargeMonthViewController *)self _weekViewAtPoint:0 pointInWeek:v13, v15];
        model2 = [(MainViewController *)self model];
        selectedOccurrence2 = [model2 selectedOccurrence];
        v19 = [(MonthViewController *)self dateAtPoint:v13, v15];
        [(LargeMonthViewController *)self _showEventDetailsForOccurrence:selectedOccurrence2 inWeek:v16 onDay:v19 creationMethod:0];
      }

      else
      {
        [(LargeMonthViewController *)self _closeEventPresentationAnimated:1];
      }

      [(MonthViewController *)self removeAllWeekHighlights];
    }
  }
}

- (id)presentationControllerForEditMenu
{
  currentPresentationController = [(LargeMonthViewController *)self currentPresentationController];
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

- (BOOL)interaction:(id)interaction shouldShowMenuAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [view occurrenceAtPoint:{interaction, point.x, point.y}];
  v6 = v5 == 0;

  return v6;
}

- (BOOL)interaction:(id)interaction canPasteEventAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(MainViewController *)self model:interaction];
  pasteboardManager = [v5 pasteboardManager];
  canPerformPaste = [pasteboardManager canPerformPaste];

  return canPerformPaste;
}

- (BOOL)interaction:(id)interaction canCreateEventAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(MainViewController *)self model:interaction];
  defaultCalendarForNewEvents = [v5 defaultCalendarForNewEvents];
  v7 = defaultCalendarForNewEvents != 0;

  return v7;
}

- (BOOL)interaction:(id)interaction canCreateReminderAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(MainViewController *)self model:interaction];
  reminderCalendar = [v5 reminderCalendar];
  v7 = reminderCalendar != 0;

  return v7;
}

- (void)interaction:(id)interaction createEventAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView convertPoint:viewCopy fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(MonthViewController *)self eventGestureController:0 setUpAtPoint:0 withOccurrence:1 forceNewEvent:v11, v13];

  [(MonthViewController *)self eventGestureController:0 commitToPoint:v11, v13];
}

- (void)interaction:(id)interaction createReminderAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView convertPoint:viewCopy fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v17 = [(MonthViewController *)self eventGestureController:0 setUpAtPoint:0 withOccurrence:1 forceNewEvent:v11, v13];
  model = [(MainViewController *)self model];
  reminderCalendar = [model reminderCalendar];
  [v17 setCalendar:reminderCalendar];

  startDate = [v17 startDate];
  [v17 setEndDate:startDate];

  [(MonthViewController *)self eventGestureController:0 commitToPoint:v11, v13];
}

- (void)interaction:(id)interaction pasteEventAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView convertPoint:viewCopy fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v19 = [(MonthViewController *)self dateAtPoint:v11, v13];
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  date = [v19 date];
  [pasteboardManager setDateForPaste:date];

  model2 = [(MainViewController *)self model];
  pasteboardManager2 = [model2 pasteboardManager];
  [pasteboardManager2 pasteEventsWithDateMode:0 delegate:self];
}

- (id)interaction:(id)interaction titleForPasteActionAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(MainViewController *)self model:interaction];
  pasteboardManager = [v5 pasteboardManager];
  numberOfEventsToPaste = [pasteboardManager numberOfEventsToPaste];

  return [EKUIRightClickEmptySpaceInteraction localizedPasteStringForEventCount:numberOfEventsToPaste includeHere:0];
}

- (id)interaction:(id)interaction subtitleForPasteActionAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView convertPoint:viewCopy fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(MonthViewController *)self dateAtPoint:v11, v13];
  date = [v14 date];
  v16 = CUIKCalendar();
  v17 = [CUIKPasteboardUtilities roundedDateForDate:date dateMode:0 calendar:v16];

  v18 = objc_alloc_init(NSDateFormatter);
  [v18 setCalendar:v16];
  timeZone = [v16 timeZone];
  [v18 setTimeZone:timeZone];

  [v18 setDoesRelativeDateFormatting:1];
  [v18 setDateStyle:1];
  [v18 setTimeStyle:0];
  v20 = [v18 stringFromDate:v17];

  return v20;
}

- (BOOL)canSpaciallyEditOccurrences
{
  presentedViewController = [(LargeMonthViewController *)self presentedViewController];
  v3 = presentedViewController == 0;

  return v3;
}

- (id)spaciallyEditableOccurrences
{
  model = [(MainViewController *)self model];
  pointerTargetedOccurrences = [model pointerTargetedOccurrences];

  return pointerTargetedOccurrences;
}

- (id)spacialEditUpIncrement
{
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:-7];

  return v2;
}

- (id)spacialEditDownIncrement
{
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:7];

  return v2;
}

- (id)spacialEditLeftIncrement
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v3 = objc_alloc_init(NSDateComponents);
  v4 = v3;
  if (IsLeftToRight)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  [v3 setDay:v5];

  return v4;
}

- (id)spacialEditRightIncrement
{
  if (CalTimeDirectionIsLeftToRight())
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  v3 = objc_alloc_init(NSDateComponents);
  [v3 setDay:v2];

  return v3;
}

- (void)occurrencesWereSpaciallyEditedFromDate:(id)date toDate:(id)toDate
{
  v5 = [(LargeMonthViewController *)self _weekViewForDate:toDate];
  if (v5)
  {
    [(LargeMonthViewController *)self _scrollToWeekView:v5 animated:1 completion:0];
  }

  _objc_release_x1();
}

- (id)_weekViewForDate:(id)date
{
  dateCopy = date;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100060C40;
  v13 = sub_100060C50;
  v14 = 0;
  [dateCopy timeIntervalSinceReferenceDate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100064950;
  v8[3] = &unk_10020F958;
  v8[5] = v5;
  v8[4] = &v9;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)_showEventDetailsForOccurrence:(id)occurrence inWeek:(id)week onDay:(id)day animatedScrollToVisible:(BOOL)visible showMode:(unint64_t)mode context:(id)context creationMethod:(unint64_t)method
{
  occurrenceCopy = occurrence;
  weekCopy = week;
  dayCopy = day;
  contextCopy = context;
  model = [(MainViewController *)self model];
  [model setSelectedOccurrence:occurrenceCopy];

  if (!self->_weeksContainingSelectedOccurrences)
  {
    v19 = +[NSMutableArray array];
    weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
    self->_weeksContainingSelectedOccurrences = v19;
  }

  if (weekCopy)
  {
    [(NSMutableArray *)self->_weeksContainingSelectedOccurrences addObject:weekCopy];
  }

  v40 = weekCopy;
  objc_storeStrong(&self->_tappedDay, day);
  self->_shouldAnimateScrollToVisibleWeekViewForSelectedOccurrence = visible;
  v38 = mode == 2;
  self->_shouldPresentEventCommentsForSelectedOccurrence = mode == 2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100060C40;
  v57 = sub_100060C50;
  v58 = 0;
  viewControllerToShowFrom = [(LargeMonthViewController *)self viewControllerToShowFrom];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100064EA0;
  v45[3] = &unk_10020F980;
  v22 = occurrenceCopy;
  v46 = v22;
  selfCopy = self;
  modeCopy = mode;
  methodCopy = method;
  v50 = &v53;
  v23 = contextCopy;
  v48 = v23;
  v24 = viewControllerToShowFrom;
  v49 = v24;
  v25 = objc_retainBlock(v45);
  viewControllers = [v24 viewControllers];
  v27 = [viewControllers count];

  if (!v27)
  {
    goto LABEL_10;
  }

  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];
  event = [shownEventEditViewController event];
  if ([event isEqual:v22])
  {

    goto LABEL_11;
  }

  shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];
  event2 = [shownEventViewController event];
  v32 = [event2 isEqual:v22];

  if ((v32 & 1) == 0)
  {
    [v24 setViewControllers:&__NSArray0__struct animated:0];
    [v24 dismissViewControllerAnimated:0 completion:0];
LABEL_10:
    (v25[2])(v25);
  }

LABEL_11:
  if (v54[5])
  {
    navigationController = [(LargeMonthViewController *)self navigationController];
    view = [navigationController view];
    window = [view window];

    if (window)
    {
      EKUIPushFallbackSizingContextWithViewHierarchy();
    }

    v36 = v54[5];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100064FA0;
    v41[3] = &unk_10020F9A8;
    v44 = v38;
    v43 = &v53;
    v37 = window;
    v42 = v37;
    [v24 showViewController:v36 sender:self animated:1 completion:v41];
  }

  _Block_object_dispose(&v53, 8);
}

- (void)_highlightOccurrenceForPointerTarget:(id)target inWeek:(id)week onDay:(id)day
{
  targetCopy = target;
  model = [(MainViewController *)self model];
  v7 = [NSArray arrayWithObject:targetCopy];

  [model setPointerTargetedOccurrences:v7];
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllerToShowFrom = [(LargeMonthViewController *)self viewControllerToShowFrom];
    [viewControllerToShowFrom setNavigationBarHidden:1 animated:0];
  }

  v14.receiver = self;
  v14.super_class = LargeMonthViewController;
  [(MainViewController *)&v14 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
}

- (void)_scrubAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!shownEventEditViewController)
  {
    v13.x = x;
    v13.y = y;
    if (!CGRectContainsPoint(self->_scrubbingRect, v13) || ([(LargeMonthViewController *)self occurrenceAtPoint:x, y], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      model = [(MainViewController *)self model];
      selectedOccurrence = [model selectedOccurrence];

      if (!selectedOccurrence)
      {
        return;
      }

      v7 = 0;
    }

    v11 = v7;
    v10 = [(LargeMonthViewController *)self _weekViewAtPoint:0 pointInWeek:x, y];
    [(LargeMonthViewController *)self selectOccurrence:v11 inWeek:v10];
  }
}

- (void)_scrubWithTouches:(id)touches
{
  anyObject = [touches anyObject];
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [anyObject locationInView:scrollView];
  v6 = v5;
  v8 = v7;

  [(LargeMonthViewController *)self _scrubAtPoint:v6, v8];
}

- (void)_scrollToWeekView:(id)view animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  viewCopy = view;
  completionCopy = completion;
  if (viewCopy)
  {
    if (animatedCopy)
    {
      v10 = 0.4;
    }

    else
    {
      v10 = 0.0;
    }

    existingPalette = [(MainViewController *)self existingPalette];
    superview = [existingPalette superview];
    [existingPalette frame];
    MaxY = CGRectGetMaxY(v47);
    view = [(LargeMonthViewController *)self view];
    [superview convertPoint:view toView:{0.0, MaxY}];
    v16 = v15;

    view2 = [(LargeMonthViewController *)self view];
    [view2 bounds];
    v18 = CGRectGetMaxY(v48);

    superview2 = [viewCopy superview];
    [viewCopy frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    view3 = [(LargeMonthViewController *)self view];
    [superview2 convertRect:view3 toView:{v21, v23, v25, v27}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v49.origin.x = v30;
    v49.origin.y = v32;
    v49.size.width = v34;
    v49.size.height = v36;
    if (CGRectGetMinY(v49) >= v16)
    {
      v51.origin.x = v30;
      v51.origin.y = v32;
      v51.size.width = v34;
      v51.size.height = v36;
      if (CGRectGetMaxY(v51) <= v18)
      {
        goto LABEL_13;
      }

      v52.origin.x = v30;
      v52.origin.y = v32;
      v52.size.width = v34;
      v52.size.height = v36;
      v37 = CGRectGetMaxY(v52) - v18;
    }

    else
    {
      v50.origin.x = v30;
      v50.origin.y = v32;
      v50.size.width = v34;
      v50.size.height = v36;
      v37 = CGRectGetMinY(v50) - v16;
    }

    if (v37 != 0.0)
    {
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [scrollView contentOffset];
      v41 = v40;
      v43 = v42;

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100065614;
      v44[3] = &unk_10020EDD8;
      v44[4] = self;
      v44[5] = v41;
      *&v44[6] = v37 + v43;
      [UIView animateWithDuration:v44 animations:completionCopy completion:v10];
LABEL_15:

      goto LABEL_16;
    }

LABEL_13:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    goto LABEL_15;
  }

  v38 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v46 = "[LargeMonthViewController _scrollToWeekView:animated:completion:]";
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%s: Can't scroll to nil weekView.", buf, 0xCu);
  }

LABEL_16:
}

- (void)_closeEventPresentationAnimated:(BOOL)animated viewController:(id)controller completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedViewController = [(LargeMonthViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  if (popoverPresentationController)
  {
    if (([popoverPresentationController dismissing] & 1) == 0)
    {
      if (animatedCopy)
      {
        v12 = 0.3;
      }

      else
      {
        v12 = 0.0;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100065858;
      v18[3] = &unk_10020EB00;
      v19 = popoverPresentationController;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000658A0;
      v15[3] = &unk_10020F9F8;
      v15[4] = self;
      v16 = v19;
      v17 = completionCopy;
      [UIView animateWithDuration:v18 animations:v15 completion:v12];
    }
  }

  else if (controllerCopy)
  {
    presentingViewController = [controllerCopy presentingViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13PresentingViewController = [presentingViewController presentingViewController];

      presentingViewController = v13PresentingViewController;
    }

    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)addEventToSelection:(id)selection inWeek:(id)week updateModel:(BOOL)model
{
  modelCopy = model;
  selectionCopy = selection;
  weekCopy = week;
  if (modelCopy)
  {
    [(CUIKCalendarModel *)self->super.super.super._model selectOccurrence:selectionCopy];
  }

  if (weekCopy)
  {
    [weekCopy selectOccurrence:selectionCopy];
    if (([(NSMutableArray *)self->_weeksContainingSelectedOccurrences containsObject:weekCopy]& 1) == 0)
    {
      weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
      if (!weeksContainingSelectedOccurrences)
      {
        v10 = +[NSMutableArray array];
        v11 = self->_weeksContainingSelectedOccurrences;
        self->_weeksContainingSelectedOccurrences = v10;

        weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
      }

      [(NSMutableArray *)weeksContainingSelectedOccurrences addObject:weekCopy];
    }
  }
}

- (void)removeEventFromSelection:(id)selection inWeek:(id)week updateModel:(BOOL)model
{
  modelCopy = model;
  selectionCopy = selection;
  weekCopy = week;
  if (modelCopy)
  {
    [(CUIKCalendarModel *)self->super.super.super._model deselectOccurrence:selectionCopy];
  }

  [weekCopy deselectOccurrence:selectionCopy];
  selectedOccurrences = [weekCopy selectedOccurrences];
  v10 = [selectedOccurrences count];

  if (!v10)
  {
    [(NSMutableArray *)self->_weeksContainingSelectedOccurrences removeObject:weekCopy];
  }

  linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
  self->_linearNavigationSelectedWeek = 0;
}

- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)controller isPreemptiveCheck:(BOOL)check
{
  model = [(MainViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  if (selectedOccurrence)
  {
    startCalendarDate = [selectedOccurrence startCalendarDate];
    v9 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];

    view = [(LargeMonthViewController *)self view];
    startCalendarDate2 = [selectedOccurrence startCalendarDate];
    calendarDateForDay = [startCalendarDate2 calendarDateForDay];
    [v9 frameForOccurrence:selectedOccurrence onDay:calendarDateForDay];
    [view convertRect:v9 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    if (check)
    {
      LOBYTE(v21) = 1;
    }

    else
    {
      v21 = ![(LargeMonthViewController *)self isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView];
    }

    v29.origin.x = v14;
    v29.origin.y = v16;
    v29.size.width = v18;
    v29.size.height = v20;
    v24 = (v9 != 0) & v21 & ~CGRectIsEmpty(v29);
    view2 = [(LargeMonthViewController *)self view];
    [view2 bounds];
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v18;
    v31.size.height = v20;
    v23 = v24 & CGRectContainsRect(v30, v31);
  }

  else
  {
    v22 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315138;
      v28 = "[LargeMonthViewController isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:isPreemptiveCheck:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Couldn't find a selected event to show details for.", &v27, 0xCu);
    }

    LOBYTE(v23) = 0;
  }

  return v23;
}

- (void)enqueuableNavigationController:(id)controller requestsDeferShowViewControllerUntilReady:(id)ready
{
  controllerCopy = controller;
  readyCopy = ready;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    managedNavigationController = [(MainViewController *)self managedNavigationController];
    v11 = objc_opt_class();
    v12 = v11;
    *buf = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = objc_opt_class();
    v13 = v31;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ requested that %@ prepare itself to show the source view for the popover.", buf, 0x16u);
  }

  model = [(MainViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  if (selectedOccurrence)
  {
    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006608C;
    v22[3] = &unk_10020FA20;
    objc_copyWeak(&v27, buf);
    v16 = selectedOccurrence;
    v23 = v16;
    v17 = controllerCopy;
    v24 = v17;
    selfCopy = self;
    v26 = readyCopy;
    v18 = objc_retainBlock(v22);
    if ([(LargeMonthViewController *)self isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:v17])
    {
      (v18[2])(v18, 1);
    }

    else
    {
      startCalendarDate = [v16 startCalendarDate];
      date = [startCalendarDate date];
      [(InfiniteScrollViewController *)self showDate:date animated:self->_shouldAnimateScrollToVisibleWeekViewForSelectedOccurrence completionBlock:v18];
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[LargeMonthViewController enqueuableNavigationController:requestsDeferShowViewControllerUntilReady:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: Couldn't find a selected event to show details for.", buf, 0xCu);
    }

    [controllerCopy enqueueStackResetOperation];
  }
}

- (void)enqueueableManagedNavigationController:(id)controller requestsConfigurationOfPropertiesForPopoverPresentationController:(id)presentationController completion:(id)completion
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  completionCopy = completion;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    managedNavigationController = [(MainViewController *)self managedNavigationController];
    v14 = objc_opt_class();
    v15 = v14;
    *v44 = 138412546;
    *&v44[4] = v14;
    *&v44[12] = 2112;
    *&v44[14] = objc_opt_class();
    v16 = *&v44[14];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ requested that %@ configure the popover.", v44, 0x16u);
  }

  v17 = [(MainViewController *)self model:*v44];
  selectedOccurrence = [v17 selectedOccurrence];

  if (selectedOccurrence)
  {
    startCalendarDate = [selectedOccurrence startCalendarDate];
    v20 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];

    if (v20)
    {
      v21 = +[UIColor clearColor];
      presentedViewController = [presentationControllerCopy presentedViewController];
      view = [presentedViewController view];
      [view setBackgroundColor:v21];

      presentedViewController2 = [presentationControllerCopy presentedViewController];
      [presentedViewController2 setModalPresentationStyle:7];

      draggedOccurrenceView = [(MonthViewController *)self draggedOccurrenceView];

      if (draggedOccurrenceView)
      {
        draggedOccurrenceView2 = [(MonthViewController *)self draggedOccurrenceView];
        [draggedOccurrenceView2 bounds];
        [presentationControllerCopy setSourceRect:?];

        draggedOccurrenceView3 = [(MonthViewController *)self draggedOccurrenceView];
        [presentationControllerCopy setSourceView:draggedOccurrenceView3];
      }

      else
      {
        startCalendarDate2 = [selectedOccurrence startCalendarDate];
        [v20 frameForOccurrence:selectedOccurrence onDay:startCalendarDate2];
        x = v31;
        y = v33;
        width = v35;
        height = v37;

        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        if (CGRectIsNull(v45))
        {
          x = CGRectZero.origin.x;
          y = CGRectZero.origin.y;
          width = CGRectZero.size.width;
          height = CGRectZero.size.height;
        }

        else
        {
          [v20 frame];
          if (width == v39)
          {
            view2 = [(LargeMonthViewController *)self view];
            EKUICurrentWindowSize();
            v42 = v41;

            if (width == v42)
            {
              width = width + -30.0;
            }
          }
        }

        [presentationControllerCopy setSourceRect:{x, y, width, height}];
        [presentationControllerCopy setSourceView:v20];
      }

      [presentationControllerCopy setDelegate:self];
      [presentationControllerCopy setPermittedArrowDirections:12];
      if (self->_tappedDay)
      {
        shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];

        if (!shownEventEditViewController)
        {
          [v20 frameForDate:self->_tappedDay];
          CGRectIsNull(v46);
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v29 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Can't present popover from a nil event.", v44, 2u);
      }
    }
  }

  else
  {
    v28 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Can't present popover from a nil event.", v44, 2u);
    }
  }
}

- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  [viewControllerCopy setInternalEditViewDelegate:self];
  [viewControllerCopy setModalPresentationStyle:3];
  [viewControllerCopy setModalTransitionStyle:2];
  managedNavigationController = [(MainViewController *)self managedNavigationController];
  [managedNavigationController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)eventViewController:(id)controller requestsDisplayOfDeleteAlert:(id)alert
{
  alertCopy = alert;
  controllerCopy = controller;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController sourceRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  popoverPresentationController2 = [alertCopy popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v10, v12, v14, v16}];

  popoverPresentationController3 = [controllerCopy popoverPresentationController];
  sourceView = [popoverPresentationController3 sourceView];
  popoverPresentationController4 = [alertCopy popoverPresentationController];
  [popoverPresentationController4 setSourceView:sourceView];

  popoverPresentationController5 = [controllerCopy popoverPresentationController];

  permittedArrowDirections = [popoverPresentationController5 permittedArrowDirections];
  popoverPresentationController6 = [alertCopy popoverPresentationController];
  [popoverPresentationController6 setPermittedArrowDirections:permittedArrowDirections];

  popoverPresentationController7 = [alertCopy popoverPresentationController];
  [popoverPresentationController7 setDelegate:self];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000669A4;
  v26[3] = &unk_10020EC68;
  v26[4] = self;
  v27 = alertCopy;
  v25 = alertCopy;
  [(LargeMonthViewController *)self dismissViewControllerAnimated:1 completion:v26];
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (action == 1)
  {
    calendarToMakeVisibleOnSave = [controllerCopy calendarToMakeVisibleOnSave];
    objectID = [calendarToMakeVisibleOnSave objectID];
    if (objectID)
    {
      [(CUIKCalendarModel *)self->super.super.super._model ensureCalendarVisibleWithId:objectID];
    }

    if ([calendarToMakeVisibleOnSave sharingStatus])
    {
      if (!v10)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100066C98;
        v19[3] = &unk_10020EB00;
        v19[4] = self;
        v13 = objc_retainBlock(v19);
        goto LABEL_15;
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100066C50;
      v20[3] = &unk_10020EBC8;
      v20[4] = self;
      v21 = v10;
      v13 = objc_retainBlock(v20);
      v14 = v21;
    }

    else
    {
      if (!v10)
      {
        v13 = 0;
        goto LABEL_15;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100066CA0;
      v17[3] = &unk_10020EBC8;
      v17[4] = self;
      v18 = v10;
      v13 = objc_retainBlock(v17);
      v14 = v18;
    }

LABEL_15:
    goto LABEL_16;
  }

  if (handlerCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100066CB4;
    v15[3] = &unk_10020EBC8;
    v15[4] = self;
    v16 = handlerCopy;
    v13 = objc_retainBlock(v15);
    calendarToMakeVisibleOnSave = v16;
LABEL_16:

    goto LABEL_17;
  }

  v13 = 0;
LABEL_17:
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:controllerCopy completion:v13];
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
  [(MonthViewController *)self removeAllWeekHighlights];
  self->_currentlyEditingEvent = 0;
}

- (id)pasteboardManagerForEventEditViewController:(id)controller
{
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (void)eventViewControllerNextButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  nextOccurrence = [event nextOccurrence];

  if (nextOccurrence)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066E04;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = nextOccurrence;
    v9 = tappedCopy;
    [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v7];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  previousOccurrence = [event previousOccurrence];

  if (previousOccurrence)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066F44;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = previousOccurrence;
    v9 = tappedCopy;
    [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v7];
  }
}

- (void)eventViewController:(id)controller requestsShowEvent:(id)event
{
  controllerCopy = controller;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067074;
  v9[3] = &unk_10020F2E0;
  v9[4] = self;
  eventCopy = event;
  v11 = controllerCopy;
  v7 = controllerCopy;
  v8 = eventCopy;
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v9];
}

- (void)_displayedOccurrencesChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

  userInfo2 = [changedCopy userInfo];

  v8 = [userInfo2 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10006722C;
  v17 = &unk_10020FA48;
  v18 = v6;
  v19 = v8;
  v9 = v8;
  v10 = v6;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:&v14];
  v11 = [(MainViewController *)self model:v14];
  pointerTargetedOccurrences = [v11 pointerTargetedOccurrences];
  v13 = [pointerTargetedOccurrences count];

  if (v13)
  {
    [(LargeMonthViewController *)self _selectedOccurrencesChanged:0];
  }
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [(NSMutableArray *)self->_weeksContainingSelectedOccurrences copy];
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        selectedOccurrences = [v9 selectedOccurrences];
        v11 = [selectedOccurrences countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(selectedOccurrences);
              }

              [(LargeMonthViewController *)self removeEventFromSelection:*(*(&v34 + 1) + 8 * j) inWeek:v9 updateModel:0];
            }

            v12 = [selectedOccurrences countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v6);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selectedOccurrences2 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
  v16 = [selectedOccurrences2 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(selectedOccurrences2);
        }

        v20 = *(*(&v30 + 1) + 8 * k);
        startCalendarDate = [v20 startCalendarDate];
        v22 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate];

        [(LargeMonthViewController *)self addEventToSelection:v20 inWeek:v22 updateModel:0];
      }

      v17 = [selectedOccurrences2 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v17);
  }

  selectedOccurrences3 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
  v24 = [selectedOccurrences3 count];

  if (v24 == 1)
  {
    selectedOccurrences4 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
    firstObject = [selectedOccurrences4 firstObject];

    if (self->_linearNavigationSelectedWeek && ([(NSMutableArray *)self->_weeksContainingSelectedOccurrences containsObject:?]& 1) == 0)
    {
      startCalendarDate2 = [firstObject startCalendarDate];
      v28 = [(InfiniteScrollViewController *)self subviewForDate:startCalendarDate2];
      linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
      self->_linearNavigationSelectedWeek = v28;
    }
  }

  else
  {
    firstObject = self->_linearNavigationSelectedWeek;
    self->_linearNavigationSelectedWeek = 0;
  }
}

- (void)contentSizeCategoryChanged
{
  +[MonthViewOccurrence clearCachedFonts];
  +[LargeMonthWeekView clearCachedFonts];
  v3.receiver = self;
  v3.super_class = LargeMonthViewController;
  [(MonthViewController *)&v3 contentSizeCategoryChanged];
}

- (void)weekNumbersPrefChanged
{
  v3 = +[CUIKPreferences sharedPreferences];
  showWeekNumbers = [v3 showWeekNumbers];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100067740;
  v5[3] = &unk_10020FA68;
  v6 = showWeekNumbers;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v5];
}

- (void)localeChanged
{
  [(LargeMonthViewController *)self findWeekends];
  v3.receiver = self;
  v3.super_class = LargeMonthViewController;
  [(MonthViewController *)&v3 localeChanged];
}

- (id)occurrenceAtPoint:(CGPoint)point
{
  v6 = CGPointZero;
  v3 = [(LargeMonthViewController *)self _weekViewAtPoint:&v6 pointInWeek:point.x, point.y];
  v4 = [v3 occurrenceAtPoint:v6];

  return v4;
}

- (BOOL)dragAndDropIsCurrentlyScrubbing
{
  shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];
  v3 = shownEventViewController != 0;

  return v3;
}

- (void)draggedOccurrenceWasCancelled:(id)cancelled atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (([cancelled isNew] & 1) == 0)
  {
    v7 = [(LargeMonthViewController *)self _weekViewAtPoint:0 pointInWeek:x, y];
    [v7 reloadData];
  }
}

- (void)selectOccurrence:(id)occurrence inWeek:(id)week
{
  occurrenceCopy = occurrence;
  weekCopy = week;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = weekCopy;
    if (occurrenceCopy)
    {
      model = [(MainViewController *)self model];
      selectedOccurrence = [model selectedOccurrence];
      v11 = selectedOccurrence;
      if (selectedOccurrence == occurrenceCopy)
      {
        v12 = [(NSMutableArray *)self->_weeksContainingSelectedOccurrences containsObject:v8];

        if (v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    [(CUIKCalendarModel *)self->super.super.super._model setSelectedOccurrence:occurrenceCopy];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = self->_weeksContainingSelectedOccurrences;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * i) setSelectedOccurrence:{0, v20}];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [(NSMutableArray *)self->_weeksContainingSelectedOccurrences removeAllObjects];
    if (!self->_weeksContainingSelectedOccurrences)
    {
      v18 = +[NSMutableArray array];
      weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
      self->_weeksContainingSelectedOccurrences = v18;
    }

    if (v8)
    {
      [(NSMutableArray *)self->_weeksContainingSelectedOccurrences addObject:v8];
    }

    if (occurrenceCopy)
    {
      [v8 setSelectedOccurrence:occurrenceCopy];
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_20:
}

- (void)showDetailsForDraggedOccurrence:(id)occurrence inWeekView:(id)view onDay:(id)day creationMethod:(unint64_t)method
{
  occurrenceCopy = occurrence;
  viewCopy = view;
  dayCopy = day;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LargeMonthViewController *)self _showEventDetailsForOccurrence:occurrenceCopy inWeek:viewCopy onDay:dayCopy creationMethod:1];
  }
}

- (void)showEditorForNewDraggedEvent:(id)event inWeek:(id)week
{
  weekCopy = week;
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = weekCopy;
  }

  else
  {
    v7 = 0;
  }

  [(LargeMonthViewController *)self _showEventDetailsForOccurrence:eventCopy inWeek:v7 onDay:0 creationMethod:1];
}

- (void)dragAndDropRequestsPresentationOfViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [[UnadaptableNavigationController alloc] initWithRootViewController:controllerCopy];

  [(UnadaptableNavigationController *)v6 setModalPresentationStyle:2];
  currentPresentationController = [(LargeMonthViewController *)self currentPresentationController];
  [currentPresentationController presentViewController:v6 animated:1 completion:0];
}

- (BOOL)isDraggingOccurrence
{
  draggedOccurrenceView = [(MonthViewController *)self draggedOccurrenceView];
  v3 = draggedOccurrenceView != 0;

  return v3;
}

- (id)_weekViewAtPoint:(CGPoint)point pointInWeek:(CGPoint *)week
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100060C40;
  v13 = sub_100060C50;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100067DF4;
  v6[3] = &unk_10020FA90;
  pointCopy = point;
  v6[4] = self;
  v6[5] = &v9;
  weekCopy = week;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v6];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)handleCloseKeyCommand
{
  shownEventEditViewController = [(LargeMonthViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
  }

  else
  {
    shownEventViewController = [(LargeMonthViewController *)self shownEventViewController];

    if (shownEventViewController)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100067FB0;
      v5[3] = &unk_10020EB00;
      v5[4] = self;
      [(LargeMonthViewController *)self dismissViewControllerAnimated:1 completion:v5];
    }
  }
}

@end
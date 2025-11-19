@interface LargeMonthViewController
+ (double)_cellHeightForMultiplier:(double)a3 windowSize:(CGSize)a4;
- (BOOL)canSpaciallyEditOccurrences;
- (BOOL)currentlyEditingEventsWithGestures;
- (BOOL)dragAndDropIsCurrentlyScrubbing;
- (BOOL)interaction:(id)a3 canCreateEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 canCreateReminderAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 canPasteEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 shouldShowMenuAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)isBackgroundScene;
- (BOOL)isDraggingOccurrence;
- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)a3 isPreemptiveCheck:(BOOL)a4;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (CGRect)frameForTodayHighlight;
- (LargeMonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5;
- (double)_subviewHeightForDate:(id)a3;
- (double)decelerationDistanceThresholdForPreferringMonthBoundary;
- (id)_createLargeMonthWeekViewForDate:(id)a3;
- (id)_findNextWeekAfterWeek:(id)a3 inForwardDirection:(BOOL)a4;
- (id)_paletteView;
- (id)_weekViewAtPoint:(CGPoint)a3 pointInWeek:(CGPoint *)a4;
- (id)_weekViewForDate:(id)a3;
- (id)createInitialViewForDate:(id)a3;
- (id)interaction:(id)a3 subtitleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5;
- (id)interaction:(id)a3 titleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5;
- (id)newBottomViewBelowViewWithCalendarDate:(id)a3;
- (id)newTopViewAboveViewWithCalendarDate:(id)a3;
- (id)nextLevelWeekViewControllerWithDate:(id)a3;
- (id)occurrenceAtPoint:(CGPoint)a3;
- (id)occurrencesForStartDate:(id)a3 endDate:(id)a4 waitForLoad:(BOOL)a5;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (id)presentationControllerForEditMenu;
- (id)pushedWeekViewControllerWithDate:(id)a3 animated:(BOOL)a4;
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
- (void)_closeEventPresentationAnimated:(BOOL)a3 viewController:(id)a4 completion:(id)a5;
- (void)_displayedOccurrencesChanged:(id)a3;
- (void)_highlightOccurrenceForPointerTarget:(id)a3 inWeek:(id)a4 onDay:(id)a5;
- (void)_layoutGridlinesAndBackgrounds:(BOOL)a3;
- (void)_navigateToSelectableItemInForwardDirection:(BOOL)a3;
- (void)_presentationControllerDidDismiss;
- (void)_removeAnimatedGridComponents;
- (void)_scrollToWeekView:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_scrubAtPoint:(CGPoint)a3;
- (void)_scrubWithTouches:(id)a3;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_showEventDetailsForOccurrence:(id)a3 inWeek:(id)a4 onDay:(id)a5 animatedScrollToVisible:(BOOL)a6 showMode:(unint64_t)a7 context:(id)a8 creationMethod:(unint64_t)a9;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateDayHeaderFrames;
- (void)addEventToSelection:(id)a3 inWeek:(id)a4 updateModel:(BOOL)a5;
- (void)completeReminderFromTap:(id)a3;
- (void)contentSizeCategoryChanged;
- (void)didCompleteBackgroundOccurrenceRenderingForLargeMonthWeekView:(id)a3;
- (void)didEndScrolling;
- (void)didScroll;
- (void)dragAndDropRequestsPresentationOfViewController:(id)a3;
- (void)draggedOccurrenceWasCancelled:(id)a3 atPoint:(CGPoint)a4;
- (void)enqueuableNavigationController:(id)a3 requestsDeferShowViewControllerUntilReady:(id)a4;
- (void)enqueueableManagedNavigationController:(id)a3 requestsConfigurationOfPropertiesForPopoverPresentationController:(id)a4 completion:(id)a5;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventViewController:(id)a3 requestsDisplayOfDeleteAlert:(id)a4;
- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5;
- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)handleCloseKeyCommand;
- (void)interaction:(id)a3 createEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (void)interaction:(id)a3 createReminderAtPoint:(CGPoint)a4 inView:(id)a5;
- (void)interaction:(id)a3 pasteEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (void)largeMonthWeekView:(id)a3 didDoubleTapOnDay:(id)a4;
- (void)largeMonthWeekView:(id)a3 didTapOccurrence:(id)a4 onDay:(id)a5 extendSelection:(BOOL)a6 source:(unint64_t)a7 tappedSymbol:(BOOL)a8;
- (void)largeMonthWeekView:(id)a3 touchesBegan:(id)a4 withEvent:(id)a5;
- (void)largeMonthWeekView:(id)a3 touchesEnded:(id)a4 withEvent:(id)a5;
- (void)largeMonthWeekView:(id)a3 touchesMoved:(id)a4 withEvent:(id)a5;
- (void)loadView;
- (void)localeChanged;
- (void)occurrencesWereSpaciallyEditedFromDate:(id)a3 toDate:(id)a4;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)removeEventFromSelection:(id)a3 inWeek:(id)a4 updateModel:(BOOL)a5;
- (void)selectOccurrence:(id)a3 inWeek:(id)a4;
- (void)showDetailsForCurrentSelectableItem;
- (void)showDetailsForDraggedOccurrence:(id)a3 inWeekView:(id)a4 onDay:(id)a5 creationMethod:(unint64_t)a6;
- (void)showEditorForNewDraggedEvent:(id)a3 inWeek:(id)a4;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)weekNumbersPrefChanged;
@end

@implementation LargeMonthViewController

- (LargeMonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = LargeMonthViewController;
  v12 = [(MonthViewController *)&v20 initWithCalendarDate:v9 model:v10 window:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_initialDate, a3);
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
  v3 = [(LargeMonthViewController *)self shownEventEditViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportedInterfaceOrientations];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LargeMonthViewController;
    v5 = [(LargeMonthViewController *)&v8 supportedInterfaceOrientations];
  }

  v6 = v5;

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

    v8 = [(InfiniteScrollViewController *)self scrollView];
    v9 = [v8 layer];
    [v9 addSublayer:v6];

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

  v16 = [(InfiniteScrollViewController *)self scrollView];
  v17 = [v16 layer];
  [v17 addSublayer:v12];

  v18 = [(InfiniteScrollViewController *)self scrollView];
  v19 = [v18 layer];
  [v19 addSublayer:v13];

  v23[0] = v12;
  v23[1] = v13;
  v20 = [NSArray arrayWithObjects:v23 count:2];
  weekendDayBackgrounds = self->_weekendDayBackgrounds;
  self->_weekendDayBackgrounds = v20;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = LargeMonthViewController;
  [(MonthViewController *)&v6 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_displayedOccurrencesChanged:" name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super._model];
  [v4 addObserver:self selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->super.super.super._model];
  [(InfiniteScrollViewController *)self showSelectedDateIfNeeded];
  [(InfiniteScrollViewController *)self reloadDataForAllViews];
  navigationBarDisplayedDate = self->_navigationBarDisplayedDate;
  self->_navigationBarDisplayedDate = 0;

  self->_viewIsAppearing = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = LargeMonthViewController;
  [(MonthViewController *)&v11 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(MainViewController *)self model];
    v9 = [v8 selectedDate];
    v10 = [v9 date];
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  self->_viewIsAppearing = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super._model];
  [v5 removeObserver:self name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:self->super.super.super._model];
  [(LargeMonthViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:0];
  v6 = [(LargeMonthViewController *)self shownEventViewController];

  if (v6)
  {
    [(LargeMonthViewController *)self _closeEventPresentationAnimated:0];
  }

  self->_viewIsAppearing = 0;
  v7.receiver = self;
  v7.super_class = LargeMonthViewController;
  [(MonthViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LargeMonthViewController;
  [(LargeMonthViewController *)&v4 viewDidDisappear:a3];
  self->_viewIsAppearing = 0;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  self->_shouldForceAllowUpdateNavigationBarDateString = 1;
  if ([(InfiniteScrollViewController *)self viewIsVisible]|| self->_viewIsAppearing)
  {
    if (v7)
    {
      [v7 targetTransform];
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    self->_animateResize = CGAffineTransformIsIdentity(&v14);
    v13.receiver = self;
    v13.super_class = LargeMonthViewController;
    [(InfiniteScrollViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
    v8 = [(LargeMonthViewController *)self view];
    [v8 setNeedsLayout];

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
    [v7 animateAlongsideTransition:v10 completion:v9];
    _Block_object_dispose(v11, 8);

    _Block_object_dispose(&v14, 8);
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = LargeMonthViewController;
  [(InfiniteScrollViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(LargeMonthViewController *)self _paletteView];
  [(LargeMonthViewController *)self updatePalette:v3];

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

- (void)_layoutGridlinesAndBackgrounds:(BOOL)a3
{
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  EKUISeparatorLineThickness();
  v11 = v10;
  v12 = [(InfiniteScrollViewController *)self centerViewOnScreen];
  v39 = [v12 dayFrames];

  v13 = 0;
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  do
  {
    v15 = [v39 objectAtIndexedSubscript:IsLeftToRight + v13];
    [v15 CGRectValue];
    v17 = v16;

    v18 = v17 - v11;
    if (a3)
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
  v25 = [v39 objectAtIndexedSubscript:v22 % 7];
  [v25 CGRectValue];
  v27 = v26;
  v29 = v28;

  v30 = [v39 objectAtIndexedSubscript:v24 % 7];
  [v30 CGRectValue];
  v32 = v31;
  v34 = v33;

  if (a3)
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
  v2 = [(LargeMonthViewController *)self navigationController];
  v3 = [v2 paletteView];

  return v3;
}

- (void)_updateDayHeaderFrames
{
  v3 = [(LargeMonthViewController *)self _paletteView];
  if (v3)
  {
    v24 = v3;
    v4 = [(InfiniteScrollViewController *)self subviewForPoint:CGPointZero.x, CGPointZero.y];
    v5 = [v4 dayFrames];
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    if ([v5 count])
    {
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
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

      while (v7 < [v5 count]);
    }

    [v24 setDayHeaderFrames:v6];

    v3 = v24;
  }
}

- (void)_presentationControllerDidDismiss
{
  v3 = [(MonthViewController *)self draggedOccurrenceView];

  if (v3)
  {
    [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
    [(MonthViewController *)self removeAllWeekHighlights];
  }

  [(MainViewController *)self invalidateManagedNavigationController];
  v4 = [(EKEvent *)self->_eventBeingInspected startCalendarDate];
  v9 = [(InfiniteScrollViewController *)self subviewForDate:v4];

  [(LargeMonthViewController *)self selectOccurrence:0 inWeek:v9];
  self->_currentlyEditingEvent = 0;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v5 setScrollEnabled:1];

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

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v8 = [(EKEvent *)self->_eventBeingInspected startCalendarDate];
  v19 = [(InfiniteScrollViewController *)self subviewForDate:v8];

  eventBeingInspected = self->_eventBeingInspected;
  v10 = [(EKEvent *)eventBeingInspected startCalendarDate];
  [v19 frameForOccurrence:eventBeingInspected onDay:v10];
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
    *a5 = v19;
    a4->origin.x = v12;
    a4->origin.y = v14;
    a4->size.width = v16;
    a4->size.height = v18;
  }

  [(LargeMonthViewController *)self selectOccurrence:self->_eventBeingInspected inWeek:v19];
}

- (id)_createLargeMonthWeekViewForDate:(id)a3
{
  v4 = a3;
  v5 = CUIKOneIndexedWeekStart();
  v6 = CUIKTodayDate();
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v4 calendarDateForWeekWithWeekStart:v5];
  v10 = [v4 calendarDateForEndOfWeekWithWeekStart:v5];
  v11 = [v9 calendarDateByAddingWeeks:1];
  v12 = [v10 calendarDateByAddingWeeks:-1];
  v13 = [v12 month];
  v55 = v11;
  if (v13 == [v10 month] && (v14 = objc_msgSend(v9, "month"), v14 == objc_msgSend(v11, "month")))
  {
    v15 = 0;
    v54 = 0;
    v16 = 2;
    v17 = 7;
  }

  else
  {
    v18 = [v4 month];
    if (v18 == [v12 month])
    {
      v19 = [v9 calendarDateForEndOfMonth];

      v20 = [v19 day];
      v15 = 0;
      v17 = v20 - [v9 day] + 1;
      v54 = 1;
      v16 = 2;
      v10 = v19;
    }

    else
    {
      v21 = [v10 calendarDateForMonth];

      v22 = [v10 day];
      v54 = 0;
      v15 = v22 - [v21 day] - 6;
      v16 = 3;
      v17 = 7;
      v9 = v21;
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

  v27 = [(LargeMonthViewController *)self view];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [(LargeMonthViewController *)self _subviewHeightForDate:v9];
  v35 = v34;
  v36 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v36)
  {
    v37 = v36;
    [(LargeMonthWeekView *)v36 setFrame:v29, v31, v33, v35];
  }

  else
  {
    v37 = [[LargeMonthWeekView alloc] initWithFrame:v29, v31, v33, v35];
    [(LargeMonthWeekView *)v37 setDataSource:self];
    [(LargeMonthWeekView *)v37 setDelegate:self];
    v38 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:self];
    v53 = v10;
    v39 = self;
    v40 = v25;
    v41 = v16;
    v42 = v4;
    v43 = v12;
    v44 = v17;
    v45 = v15;
    v46 = v38;
    [(LargeMonthWeekView *)v37 addInteraction:v38];

    v15 = v45;
    v17 = v44;
    v12 = v43;
    v4 = v42;
    v16 = v41;
    v25 = v40;
    self = v39;
    v10 = v53;
  }

  [(LargeMonthWeekView *)v37 setStartDate:v9 endDate:v10 dayCount:v17 + v15 todayDay:v25 reload:0];
  v47 = [v9 month];
  if (v47 == [(EKCalendarDate *)self->_navigationBarDisplayedDate month])
  {
    v48 = [v9 year];
    v49 = v48 != [(EKCalendarDate *)self->_navigationBarDisplayedDate year];
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

- (id)createInitialViewForDate:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

  v6 = [(LargeMonthViewController *)self _createLargeMonthWeekViewForDate:v5];
  [v6 reloadData];

  return v6;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)a3
{
  v4 = [(MonthViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:a3];
  v5 = [(LargeMonthViewController *)self _createLargeMonthWeekViewForDate:v4];

  return v5;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)a3
{
  v4 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:a3];
  v5 = [(LargeMonthViewController *)self _createLargeMonthWeekViewForDate:v4];

  return v5;
}

- (double)decelerationDistanceThresholdForPreferringMonthBoundary
{
  v3 = objc_opt_class();
  v4 = [(LargeMonthViewController *)self view];
  EKUICurrentWindowSize();
  [v3 _cellHeightForMultiplier:3.5 windowSize:{v5, v6}];
  v8 = v7;

  return v8;
}

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [(LargeMonthViewController *)self updateNavigationBarDisplayedDateString];
  [v4 setWeekdayHeaderVisible:1];
  [v4 setWeekdayHeaderFillsHalfWidth:0];
  [v4 setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [v4 setDateStringVisible:CalSolariumEnabled() ^ 1];
  [v4 setDividerLineVisible:CalSystemSolariumEnabled()];
  if (CalSolariumEnabled())
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [v4 setFocusBannerPlacement:v5];
  [v4 setDayScrubberController:0];
  [(LargeMonthViewController *)self _updateDayHeaderFrames];
  [v4 sizeToFit];
  [v4 frame];
  v7 = v6;
  v8 = [v4 containingPalette];

  [v8 setPreferredHeight:v7];
}

- (void)updateNavigationBarDisplayedDateString
{
  v3 = [(InfiniteScrollViewController *)self dateOfCenterViewOnScreen];
  v4 = v3;
  if (self->_shouldForceAllowUpdateNavigationBarDateString || !self->_navigationBarDisplayedDate || (v5 = [v3 month], v5 != -[EKCalendarDate month](self->_navigationBarDisplayedDate, "month")) || (v6 = objc_msgSend(v4, "year"), v6 != -[EKCalendarDate year](self->_navigationBarDisplayedDate, "year")))
  {
    self->_shouldForceAllowUpdateNavigationBarDateString = 0;
    v7 = [(LargeMonthViewController *)self navigationController];
    v8 = [v7 topMainViewControllerContainer];
    if ([v8 currentChildViewControllerIsLoaded])
    {
      v9 = [v7 topMainViewControllerContainer];
      v10 = [v9 currentChildViewController];

      if (v10 == self)
      {
        [v7 setNavBarStringFromDate:v4 includeMonth:1 includeYear:1];
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
  v4 = [(CUIKCalendarModel *)self->super.super.super._model calendar];
  v5 = [v4 timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v5];

  v7 = [(InfiniteScrollViewController *)self subviewForDate:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(LargeMonthViewController *)self view];
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

- (id)shownEventViewController
{
  v3 = [(LargeMonthViewController *)self viewControllerToShowFrom];
  v4 = [v3 presentingViewController];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = LargeMonthViewController;
    v5 = [(MainViewController *)&v7 shownEventViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)shownEventEditViewController
{
  v3 = [(LargeMonthViewController *)self viewControllerToShowFrom];
  v4 = [v3 presentingViewController];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = LargeMonthViewController;
    v5 = [(MainViewController *)&v7 shownEventEditViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)currentlyEditingEventsWithGestures
{
  v2 = [(MonthViewController *)self draggedOccurrenceView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  v2 = [(LargeMonthViewController *)self shownEventEditViewController];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  v3 = [(LargeMonthViewController *)self shownEventEditViewController];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(LargeMonthViewController *)self shownEventViewController];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)_navigateToSelectableItemInForwardDirection:(BOOL)a3
{
  v3 = a3;
  v26 = [(LargeMonthViewController *)self presentedViewController];
  if (![v26 isBeingDismissed])
  {
    v5 = [(LargeMonthViewController *)self presentedViewController];
    v6 = [v5 isBeingPresented];

    if (v6)
    {
      return;
    }

    v7 = [(MainViewController *)self model];
    v8 = [v7 selectedOccurrences];
    v9 = [v8 count];

    if (v9 != 1)
    {
      return;
    }

    v10 = [(MainViewController *)self model];
    v11 = [v10 selectedOccurrence];

    linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
    if (!linearNavigationSelectedWeek)
    {
      v13 = [v11 startCalendarDate];
      v14 = [(InfiniteScrollViewController *)self subviewForDate:v13];
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
        if (v3)
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
          v19 = [(LargeMonthViewController *)self _findNextWeekAfterWeek:v16 inForwardDirection:v3];

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
      v21 = [(MainViewController *)self model];
      if ([v21 selectedOccurrenceSelectionSource] == 1)
      {
        v22 = [(LargeMonthViewController *)self presentedViewController];

        if (!v22)
        {
          v23 = [(MainViewController *)self model];
          v24 = [NSArray arrayWithObject:v18];
          v25 = [(MainViewController *)self model];
          [v23 setSelectedOccurrences:v24 source:objc_msgSend(v25 forceChange:{"selectedOccurrenceSelectionSource"), 0}];

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

- (id)_findNextWeekAfterWeek:(id)a3 inForwardDirection:(BOOL)a4
{
  if (a4)
  {
    v5 = [a3 endDate];
    v6 = v5;
    v7 = 1;
  }

  else
  {
    v5 = [a3 startDate];
    v6 = v5;
    v7 = -1;
  }

  v8 = [v5 calendarDateByAddingDays:v7];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];

  return v9;
}

- (void)showNextOccurrenceOfSelectableItem
{
  v3 = [(LargeMonthViewController *)self shownEventViewController];

  if (v3)
  {
    v4 = [(LargeMonthViewController *)self shownEventViewController];
    [(LargeMonthViewController *)self eventViewControllerNextButtonWasTapped:v4];
  }
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  v3 = [(LargeMonthViewController *)self shownEventViewController];

  if (v3)
  {
    v4 = [(LargeMonthViewController *)self shownEventViewController];
    [(LargeMonthViewController *)self eventViewControllerPreviousButtonWasTapped:v4];
  }
}

- (void)showDetailsForCurrentSelectableItem
{
  v3 = [(LargeMonthViewController *)self presentedViewController];
  if (!v3)
  {
    v4 = [(MainViewController *)self model];
    v5 = [v4 pointerTargetedOccurrences];
    v6 = [v5 count];

    if (v6 != 1)
    {
      return;
    }

    v7 = [(MainViewController *)self model];
    v8 = [v7 pointerTargetedOccurrences];
    v9 = [v8 firstObject];
    [(LargeMonthViewController *)self showEvent:v9 animated:1 showMode:1 context:0];

    v10 = [(MainViewController *)self model];
    [v10 setSelectedOccurrenceSelectionSource:0];
    v3 = v10;
  }
}

- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:0];
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

  v9 = [v10 calendarDateByAddingMonths:v8];
  [(MonthViewController *)self selectDate:v9 animated:v4];
}

- (double)_subviewHeightForDate:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  v6 = [v5 calendarDateByAddingWeeks:1];
  v7 = [v6 day];
  v8 = [v4 calendarDateForMonth];

  v9 = [v8 day];
  if (v7 == v9)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = objc_opt_class();
  v12 = [(LargeMonthViewController *)self view];
  EKUICurrentWindowSize();
  [v11 _cellHeightForMultiplier:v10 windowSize:{v13, v14}];
  v16 = v15;

  return v16;
}

+ (double)_cellHeightForMultiplier:(double)a3 windowSize:(CGSize)a4
{
  width = a4.width;
  if (qword_100251950 != -1)
  {
    sub_10016FE2C();
  }

  [qword_100251948 valueForSize:width];
  return v6 * a3;
}

- (id)pushedWeekViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(LargeMonthViewController *)self nextLevelWeekViewControllerWithDate:a3];
  v7 = [(LargeMonthViewController *)self navigationController];
  [v7 pushViewController:v6 animated:v4];

  return v6;
}

- (id)nextLevelWeekViewControllerWithDate:(id)a3
{
  [(CUIKCalendarModel *)self->super.super.super._model setSelectedDate:a3];
  v4 = [WeekViewContainerViewController alloc];
  model = self->super.super.super._model;
  v6 = [(MainViewController *)self window];
  v7 = [(MainViewControllerContainer *)v4 initWithModel:model window:v6];

  return v7;
}

- (id)occurrencesForStartDate:(id)a3 endDate:(id)a4 waitForLoad:(BOOL)a5
{
  v5 = [(CUIKCalendarModel *)self->super.super.super._model occurrencesForStartDate:a3 endDate:a4 preSorted:0 waitForLoad:a5];
  v6 = [v5 occurrences];

  return v6;
}

- (void)didCompleteBackgroundOccurrenceRenderingForLargeMonthWeekView:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self model];
  v6 = [v5 selectedOccurrence];

  v7 = [(LargeMonthViewController *)self isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:0 isPreemptiveCheck:1];
  if (v6)
  {
    v8 = v7;
    if ([(LargeMonthViewController *)self isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView])
    {
      v9 = [v6 endCalendarDate];
      [v9 absoluteTime];
      v11 = v10;
      v12 = [v4 startDate];
      [v12 absoluteTime];
      if (v11 <= v13)
      {

LABEL_9:
        goto LABEL_10;
      }

      v14 = [v6 startCalendarDate];
      [v14 absoluteTime];
      v16 = v15;
      v17 = [v4 endDate];
      [v17 absoluteTime];
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
          v24 = [(MainViewController *)self managedNavigationController];
          *v26 = 138412546;
          *&v26[4] = v22;
          *&v26[12] = 2112;
          *&v26[14] = objc_opt_class();
          v25 = *&v26[14];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ notifying %@ that it completed background rendering of the occurrence view for the selected event.", v26, 0x16u);
        }

        v9 = [(MainViewController *)self managedNavigationController:*v26];
        [v9 sourceViewController:self notifiesReadinessForPresentation:1];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (BOOL)isBackgroundScene
{
  v2 = [(MainViewController *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 activationState] == 2;

  return v4;
}

- (void)largeMonthWeekView:(id)a3 didTapOccurrence:(id)a4 onDay:(id)a5 extendSelection:(BOOL)a6 source:(unint64_t)a7 tappedSymbol:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v36 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [(MainViewController *)self model];
  v17 = [v16 pasteboardManager];
  if (v14)
  {
    [v14 startDate];
  }

  else
  {
    [v15 date];
  }
  v18 = ;
  [v17 setDateForPaste:v18];

  v19 = [(LargeMonthViewController *)self shownEventEditViewController];

  if (v19)
  {
    goto LABEL_5;
  }

  if ([EKDayOccurrenceView isUserInitiated:a7])
  {
    v20 = [(LargeMonthViewController *)self presentedViewController];
    v21 = [v20 isBeingDismissed];

    if (v21)
    {
      goto LABEL_5;
    }

    p_isTrackingTouches = &self->_isTrackingTouches;
    if (!self->_isTrackingTouches)
    {
      v23 = [(InfiniteScrollViewController *)self subviewForDate:v15];
      v24 = v23;
      if (v14 && v23)
      {
        if (v10)
        {
          v25 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
          v26 = [v25 containsObject:v14];

          if (v26)
          {
            [(LargeMonthViewController *)self removeEventFromSelection:v14 inWeek:v24 updateModel:1];
          }

          else
          {
            [(LargeMonthViewController *)self addEventToSelection:v14 inWeek:v24 updateModel:1];
          }
        }

        else if (v8 && [v14 isIntegrationEvent])
        {
          [(LargeMonthViewController *)self completeReminderFromTap:v14];
        }

        else if (a7)
        {
          [(LargeMonthViewController *)self _highlightOccurrenceForPointerTarget:v14 inWeek:v24 onDay:v15];
        }

        else
        {
          [(LargeMonthViewController *)self _showEventDetailsForOccurrence:v14 inWeek:v24 onDay:v15 creationMethod:0];
        }
      }

      else
      {
        v33 = [(LargeMonthViewController *)self shownEventEditViewController];
        if (v33)
        {
          currentlyEditingEvent = self->_currentlyEditingEvent;

          if (!currentlyEditingEvent)
          {
            [(LargeMonthViewController *)self _closeEventPresentationAnimated:1];
            [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
            [(MonthViewController *)self removeAllWeekHighlights];
            [(LargeMonthViewController *)self selectOccurrence:0 inWeek:0];
            v35 = [(InfiniteScrollViewController *)self scrollView];
            [v35 setScrollEnabled:1];
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
    v27 = [(LargeMonthViewController *)self shownEventViewController];

    if (v27)
    {
      v28 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrence];

      if (v28)
      {
        v29 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrence];
        v30 = [(NSMutableArray *)self->_weeksContainingSelectedOccurrences firstObject];
        [(LargeMonthViewController *)self _showEventDetailsForOccurrence:v29 inWeek:v30 onDay:self->_tappedDay creationMethod:0];
      }

      else
      {
        [(LargeMonthViewController *)self _closeEventPresentationAnimated:1];
      }
    }

    *p_isTrackingTouches = 0;
    goto LABEL_5;
  }

  if (v14)
  {
    v31 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
    v32 = [v31 containsObject:v14];

    if ((v32 & 1) == 0)
    {
      [(CUIKCalendarModel *)self->super.super.super._model setSelectedOccurrence:v14];
    }
  }

LABEL_5:
}

- (void)completeReminderFromTap:(id)a3
{
  v4 = a3;
  [v4 setCompleted:{objc_msgSend(v4, "completed") ^ 1}];
  v5 = [(LargeMonthViewController *)self EKUI_editor];
  v9 = 0;
  v6 = [v5 saveEvent:v4 span:0 error:&v9];

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

- (void)largeMonthWeekView:(id)a3 didDoubleTapOnDay:(id)a4
{
  v8 = a4;
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:0];
  [(MonthViewController *)self removeAllWeekHighlights];
  [(CUIKCalendarModel *)self->super.super.super._model setSelectedDate:v8];
  v5 = [(LargeMonthViewController *)self pushedWeekViewControllerWithDate:v8 animated:0];
  v6 = [v5 currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 pushedDayViewControllerWithDate:v8 animated:0];
  }
}

- (void)largeMonthWeekView:(id)a3 touchesBegan:(id)a4 withEvent:(id)a5
{
  v8 = a4;
  v6 = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!v6)
  {
    v7 = [(LargeMonthViewController *)self shownEventViewController];

    if (v7)
    {
      self->_isTrackingTouches = 1;
      [(LargeMonthViewController *)self _scrubWithTouches:v8];
    }
  }
}

- (void)largeMonthWeekView:(id)a3 touchesMoved:(id)a4 withEvent:(id)a5
{
  v8 = a4;
  v6 = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!v6)
  {
    v7 = [(LargeMonthViewController *)self shownEventViewController];

    if (v7)
    {
      [(LargeMonthViewController *)self _scrubWithTouches:v8];
    }
  }
}

- (void)largeMonthWeekView:(id)a3 touchesEnded:(id)a4 withEvent:(id)a5
{
  v20 = a4;
  v6 = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!v6)
  {
    self->_isTrackingTouches = 0;
    v7 = [(LargeMonthViewController *)self shownEventViewController];

    if (v7)
    {
      [(LargeMonthViewController *)self _scrubWithTouches:v20];
      v8 = [(MainViewController *)self model];
      v9 = [v8 selectedOccurrence];

      if (v9)
      {
        v10 = [v20 anyObject];
        v11 = [(InfiniteScrollViewController *)self scrollView];
        [v10 locationInView:v11];
        v13 = v12;
        v15 = v14;

        v16 = [(LargeMonthViewController *)self _weekViewAtPoint:0 pointInWeek:v13, v15];
        v17 = [(MainViewController *)self model];
        v18 = [v17 selectedOccurrence];
        v19 = [(MonthViewController *)self dateAtPoint:v13, v15];
        [(LargeMonthViewController *)self _showEventDetailsForOccurrence:v18 inWeek:v16 onDay:v19 creationMethod:0];
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
  v2 = [(LargeMonthViewController *)self currentPresentationController];
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

- (BOOL)interaction:(id)a3 shouldShowMenuAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [a5 occurrenceAtPoint:{a3, a4.x, a4.y}];
  v6 = v5 == 0;

  return v6;
}

- (BOOL)interaction:(id)a3 canPasteEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(MainViewController *)self model:a3];
  v6 = [v5 pasteboardManager];
  v7 = [v6 canPerformPaste];

  return v7;
}

- (BOOL)interaction:(id)a3 canCreateEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(MainViewController *)self model:a3];
  v6 = [v5 defaultCalendarForNewEvents];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)interaction:(id)a3 canCreateReminderAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(MainViewController *)self model:a3];
  v6 = [v5 reminderCalendar];
  v7 = v6 != 0;

  return v7;
}

- (void)interaction:(id)a3 createEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(MonthViewController *)self eventGestureController:0 setUpAtPoint:0 withOccurrence:1 forceNewEvent:v11, v13];

  [(MonthViewController *)self eventGestureController:0 commitToPoint:v11, v13];
}

- (void)interaction:(id)a3 createReminderAtPoint:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v17 = [(MonthViewController *)self eventGestureController:0 setUpAtPoint:0 withOccurrence:1 forceNewEvent:v11, v13];
  v14 = [(MainViewController *)self model];
  v15 = [v14 reminderCalendar];
  [v17 setCalendar:v15];

  v16 = [v17 startDate];
  [v17 setEndDate:v16];

  [(MonthViewController *)self eventGestureController:0 commitToPoint:v11, v13];
}

- (void)interaction:(id)a3 pasteEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v19 = [(MonthViewController *)self dateAtPoint:v11, v13];
  v14 = [(MainViewController *)self model];
  v15 = [v14 pasteboardManager];
  v16 = [v19 date];
  [v15 setDateForPaste:v16];

  v17 = [(MainViewController *)self model];
  v18 = [v17 pasteboardManager];
  [v18 pasteEventsWithDateMode:0 delegate:self];
}

- (id)interaction:(id)a3 titleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(MainViewController *)self model:a3];
  v6 = [v5 pasteboardManager];
  v7 = [v6 numberOfEventsToPaste];

  return [EKUIRightClickEmptySpaceInteraction localizedPasteStringForEventCount:v7 includeHere:0];
}

- (id)interaction:(id)a3 subtitleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 convertPoint:v8 fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(MonthViewController *)self dateAtPoint:v11, v13];
  v15 = [v14 date];
  v16 = CUIKCalendar();
  v17 = [CUIKPasteboardUtilities roundedDateForDate:v15 dateMode:0 calendar:v16];

  v18 = objc_alloc_init(NSDateFormatter);
  [v18 setCalendar:v16];
  v19 = [v16 timeZone];
  [v18 setTimeZone:v19];

  [v18 setDoesRelativeDateFormatting:1];
  [v18 setDateStyle:1];
  [v18 setTimeStyle:0];
  v20 = [v18 stringFromDate:v17];

  return v20;
}

- (BOOL)canSpaciallyEditOccurrences
{
  v2 = [(LargeMonthViewController *)self presentedViewController];
  v3 = v2 == 0;

  return v3;
}

- (id)spaciallyEditableOccurrences
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 pointerTargetedOccurrences];

  return v3;
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

- (void)occurrencesWereSpaciallyEditedFromDate:(id)a3 toDate:(id)a4
{
  v5 = [(LargeMonthViewController *)self _weekViewForDate:a4];
  if (v5)
  {
    [(LargeMonthViewController *)self _scrollToWeekView:v5 animated:1 completion:0];
  }

  _objc_release_x1();
}

- (id)_weekViewForDate:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100060C40;
  v13 = sub_100060C50;
  v14 = 0;
  [v4 timeIntervalSinceReferenceDate];
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

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)_showEventDetailsForOccurrence:(id)a3 inWeek:(id)a4 onDay:(id)a5 animatedScrollToVisible:(BOOL)a6 showMode:(unint64_t)a7 context:(id)a8 creationMethod:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v39 = a5;
  v17 = a8;
  v18 = [(MainViewController *)self model];
  [v18 setSelectedOccurrence:v15];

  if (!self->_weeksContainingSelectedOccurrences)
  {
    v19 = +[NSMutableArray array];
    weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
    self->_weeksContainingSelectedOccurrences = v19;
  }

  if (v16)
  {
    [(NSMutableArray *)self->_weeksContainingSelectedOccurrences addObject:v16];
  }

  v40 = v16;
  objc_storeStrong(&self->_tappedDay, a5);
  self->_shouldAnimateScrollToVisibleWeekViewForSelectedOccurrence = a6;
  v38 = a7 == 2;
  self->_shouldPresentEventCommentsForSelectedOccurrence = a7 == 2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100060C40;
  v57 = sub_100060C50;
  v58 = 0;
  v21 = [(LargeMonthViewController *)self viewControllerToShowFrom];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100064EA0;
  v45[3] = &unk_10020F980;
  v22 = v15;
  v46 = v22;
  v47 = self;
  v51 = a7;
  v52 = a9;
  v50 = &v53;
  v23 = v17;
  v48 = v23;
  v24 = v21;
  v49 = v24;
  v25 = objc_retainBlock(v45);
  v26 = [v24 viewControllers];
  v27 = [v26 count];

  if (!v27)
  {
    goto LABEL_10;
  }

  v28 = [(LargeMonthViewController *)self shownEventEditViewController];
  v29 = [v28 event];
  if ([v29 isEqual:v22])
  {

    goto LABEL_11;
  }

  v30 = [(LargeMonthViewController *)self shownEventViewController];
  v31 = [v30 event];
  v32 = [v31 isEqual:v22];

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
    v33 = [(LargeMonthViewController *)self navigationController];
    v34 = [v33 view];
    v35 = [v34 window];

    if (v35)
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
    v37 = v35;
    v42 = v37;
    [v24 showViewController:v36 sender:self animated:1 completion:v41];
  }

  _Block_object_dispose(&v53, 8);
}

- (void)_highlightOccurrenceForPointerTarget:(id)a3 inWeek:(id)a4 onDay:(id)a5
{
  v6 = a3;
  v8 = [(MainViewController *)self model];
  v7 = [NSArray arrayWithObject:v6];

  [v8 setPointerTargetedOccurrences:v7];
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(LargeMonthViewController *)self viewControllerToShowFrom];
    [v13 setNavigationBarHidden:1 animated:0];
  }

  v14.receiver = self;
  v14.super_class = LargeMonthViewController;
  [(MainViewController *)&v14 showViewController:v10 sender:v11 animated:v7 completion:v12];
}

- (void)_scrubAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(LargeMonthViewController *)self shownEventEditViewController];

  if (!v6)
  {
    v13.x = x;
    v13.y = y;
    if (!CGRectContainsPoint(self->_scrubbingRect, v13) || ([(LargeMonthViewController *)self occurrenceAtPoint:x, y], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = [(MainViewController *)self model];
      v9 = [v8 selectedOccurrence];

      if (!v9)
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

- (void)_scrubWithTouches:(id)a3
{
  v9 = [a3 anyObject];
  v4 = [(InfiniteScrollViewController *)self scrollView];
  [v9 locationInView:v4];
  v6 = v5;
  v8 = v7;

  [(LargeMonthViewController *)self _scrubAtPoint:v6, v8];
}

- (void)_scrollToWeekView:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if (v6)
    {
      v10 = 0.4;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [(MainViewController *)self existingPalette];
    v12 = [v11 superview];
    [v11 frame];
    MaxY = CGRectGetMaxY(v47);
    v14 = [(LargeMonthViewController *)self view];
    [v12 convertPoint:v14 toView:{0.0, MaxY}];
    v16 = v15;

    v17 = [(LargeMonthViewController *)self view];
    [v17 bounds];
    v18 = CGRectGetMaxY(v48);

    v19 = [v8 superview];
    [v8 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(LargeMonthViewController *)self view];
    [v19 convertRect:v28 toView:{v21, v23, v25, v27}];
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
      v39 = [(InfiniteScrollViewController *)self scrollView];
      [v39 contentOffset];
      v41 = v40;
      v43 = v42;

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100065614;
      v44[3] = &unk_10020EDD8;
      v44[4] = self;
      v44[5] = v41;
      *&v44[6] = v37 + v43;
      [UIView animateWithDuration:v44 animations:v9 completion:v10];
LABEL_15:

      goto LABEL_16;
    }

LABEL_13:
    if (v9)
    {
      v9[2](v9, 1);
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

- (void)_closeEventPresentationAnimated:(BOOL)a3 viewController:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(LargeMonthViewController *)self presentedViewController];
  v11 = [v10 popoverPresentationController];

  if (v11)
  {
    if (([v11 dismissing] & 1) == 0)
    {
      if (v6)
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
      v19 = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000658A0;
      v15[3] = &unk_10020F9F8;
      v15[4] = self;
      v16 = v19;
      v17 = v9;
      [UIView animateWithDuration:v18 animations:v15 completion:v12];
    }
  }

  else if (v8)
  {
    v13 = [v8 presentingViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 presentingViewController];

      v13 = v14;
    }

    [v13 dismissViewControllerAnimated:v6 completion:v9];
  }
}

- (void)addEventToSelection:(id)a3 inWeek:(id)a4 updateModel:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  if (v5)
  {
    [(CUIKCalendarModel *)self->super.super.super._model selectOccurrence:v12];
  }

  if (v8)
  {
    [v8 selectOccurrence:v12];
    if (([(NSMutableArray *)self->_weeksContainingSelectedOccurrences containsObject:v8]& 1) == 0)
    {
      weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
      if (!weeksContainingSelectedOccurrences)
      {
        v10 = +[NSMutableArray array];
        v11 = self->_weeksContainingSelectedOccurrences;
        self->_weeksContainingSelectedOccurrences = v10;

        weeksContainingSelectedOccurrences = self->_weeksContainingSelectedOccurrences;
      }

      [(NSMutableArray *)weeksContainingSelectedOccurrences addObject:v8];
    }
  }
}

- (void)removeEventFromSelection:(id)a3 inWeek:(id)a4 updateModel:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  if (v5)
  {
    [(CUIKCalendarModel *)self->super.super.super._model deselectOccurrence:v12];
  }

  [v8 deselectOccurrence:v12];
  v9 = [v8 selectedOccurrences];
  v10 = [v9 count];

  if (!v10)
  {
    [(NSMutableArray *)self->_weeksContainingSelectedOccurrences removeObject:v8];
  }

  linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
  self->_linearNavigationSelectedWeek = 0;
}

- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)a3 isPreemptiveCheck:(BOOL)a4
{
  v6 = [(MainViewController *)self model];
  v7 = [v6 selectedOccurrence];

  if (v7)
  {
    v8 = [v7 startCalendarDate];
    v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];

    v10 = [(LargeMonthViewController *)self view];
    v11 = [v7 startCalendarDate];
    v12 = [v11 calendarDateForDay];
    [v9 frameForOccurrence:v7 onDay:v12];
    [v10 convertRect:v9 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    if (a4)
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
    v25 = [(LargeMonthViewController *)self view];
    [v25 bounds];
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

- (void)enqueuableNavigationController:(id)a3 requestsDeferShowViewControllerUntilReady:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [(MainViewController *)self managedNavigationController];
    v11 = objc_opt_class();
    v12 = v11;
    *buf = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = objc_opt_class();
    v13 = v31;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ requested that %@ prepare itself to show the source view for the popover.", buf, 0x16u);
  }

  v14 = [(MainViewController *)self model];
  v15 = [v14 selectedOccurrence];

  if (v15)
  {
    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006608C;
    v22[3] = &unk_10020FA20;
    objc_copyWeak(&v27, buf);
    v16 = v15;
    v23 = v16;
    v17 = v6;
    v24 = v17;
    v25 = self;
    v26 = v7;
    v18 = objc_retainBlock(v22);
    if ([(LargeMonthViewController *)self isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:v17])
    {
      (v18[2])(v18, 1);
    }

    else
    {
      v20 = [v16 startCalendarDate];
      v21 = [v20 date];
      [(InfiniteScrollViewController *)self showDate:v21 animated:self->_shouldAnimateScrollToVisibleWeekViewForSelectedOccurrence completionBlock:v18];
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

    [v6 enqueueStackResetOperation];
  }
}

- (void)enqueueableManagedNavigationController:(id)a3 requestsConfigurationOfPropertiesForPopoverPresentationController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [(MainViewController *)self managedNavigationController];
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
  v18 = [v17 selectedOccurrence];

  if (v18)
  {
    v19 = [v18 startCalendarDate];
    v20 = [(InfiniteScrollViewController *)self subviewForDate:v19];

    if (v20)
    {
      v21 = +[UIColor clearColor];
      v22 = [v9 presentedViewController];
      v23 = [v22 view];
      [v23 setBackgroundColor:v21];

      v24 = [v9 presentedViewController];
      [v24 setModalPresentationStyle:7];

      v25 = [(MonthViewController *)self draggedOccurrenceView];

      if (v25)
      {
        v26 = [(MonthViewController *)self draggedOccurrenceView];
        [v26 bounds];
        [v9 setSourceRect:?];

        v27 = [(MonthViewController *)self draggedOccurrenceView];
        [v9 setSourceView:v27];
      }

      else
      {
        v30 = [v18 startCalendarDate];
        [v20 frameForOccurrence:v18 onDay:v30];
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
            v40 = [(LargeMonthViewController *)self view];
            EKUICurrentWindowSize();
            v42 = v41;

            if (width == v42)
            {
              width = width + -30.0;
            }
          }
        }

        [v9 setSourceRect:{x, y, width, height}];
        [v9 setSourceView:v20];
      }

      [v9 setDelegate:self];
      [v9 setPermittedArrowDirections:12];
      if (self->_tappedDay)
      {
        v43 = [(LargeMonthViewController *)self shownEventEditViewController];

        if (!v43)
        {
          [v20 frameForDate:self->_tappedDay];
          CGRectIsNull(v46);
        }
      }

      if (v10)
      {
        v10[2](v10);
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

- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  [v7 setInternalEditViewDelegate:self];
  [v7 setModalPresentationStyle:3];
  [v7 setModalTransitionStyle:2];
  v8 = [(MainViewController *)self managedNavigationController];
  [v8 presentViewController:v7 animated:v5 completion:0];
}

- (void)eventViewController:(id)a3 requestsDisplayOfDeleteAlert:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 popoverPresentationController];
  [v8 sourceRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 popoverPresentationController];
  [v17 setSourceRect:{v10, v12, v14, v16}];

  v18 = [v7 popoverPresentationController];
  v19 = [v18 sourceView];
  v20 = [v6 popoverPresentationController];
  [v20 setSourceView:v19];

  v21 = [v7 popoverPresentationController];

  v22 = [v21 permittedArrowDirections];
  v23 = [v6 popoverPresentationController];
  [v23 setPermittedArrowDirections:v22];

  v24 = [v6 popoverPresentationController];
  [v24 setDelegate:self];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000669A4;
  v26[3] = &unk_10020EC68;
  v26[4] = self;
  v27 = v6;
  v25 = v6;
  [(LargeMonthViewController *)self dismissViewControllerAnimated:1 completion:v26];
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 1)
  {
    v11 = [v8 calendarToMakeVisibleOnSave];
    v12 = [v11 objectID];
    if (v12)
    {
      [(CUIKCalendarModel *)self->super.super.super._model ensureCalendarVisibleWithId:v12];
    }

    if ([v11 sharingStatus])
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

  if (v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100066CB4;
    v15[3] = &unk_10020EBC8;
    v15[4] = self;
    v16 = v9;
    v13 = objc_retainBlock(v15);
    v11 = v16;
LABEL_16:

    goto LABEL_17;
  }

  v13 = 0;
LABEL_17:
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:v8 completion:v13];
  [(MonthViewController *)self removeDraggingOccurrenceAnimated:1];
  [(MonthViewController *)self removeAllWeekHighlights];
  self->_currentlyEditingEvent = 0;
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 pasteboardManager];

  return v4;
}

- (void)eventViewControllerNextButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 event];
  v6 = [v5 nextOccurrence];

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066E04;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = v6;
    v9 = v4;
    [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v7];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 event];
  v6 = [v5 previousOccurrence];

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066F44;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = v6;
    v9 = v4;
    [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v7];
  }
}

- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067074;
  v9[3] = &unk_10020F2E0;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(LargeMonthViewController *)self _closeEventPresentationAnimated:1 viewController:0 completion:v9];
}

- (void)_displayedOccurrencesChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

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
  v12 = [v11 pointerTargetedOccurrences];
  v13 = [v12 count];

  if (v13)
  {
    [(LargeMonthViewController *)self _selectedOccurrencesChanged:0];
  }
}

- (void)_selectedOccurrencesChanged:(id)a3
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
        v10 = [v9 selectedOccurrences];
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
                objc_enumerationMutation(v10);
              }

              [(LargeMonthViewController *)self removeEventFromSelection:*(*(&v34 + 1) + 8 * j) inWeek:v9 updateModel:0];
            }

            v12 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
  v15 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * k);
        v21 = [v20 startCalendarDate];
        v22 = [(InfiniteScrollViewController *)self subviewForDate:v21];

        [(LargeMonthViewController *)self addEventToSelection:v20 inWeek:v22 updateModel:0];
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v17);
  }

  v23 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
  v24 = [v23 count];

  if (v24 == 1)
  {
    v25 = [(CUIKCalendarModel *)self->super.super.super._model selectedOccurrences];
    v26 = [v25 firstObject];

    if (self->_linearNavigationSelectedWeek && ([(NSMutableArray *)self->_weeksContainingSelectedOccurrences containsObject:?]& 1) == 0)
    {
      v27 = [v26 startCalendarDate];
      v28 = [(InfiniteScrollViewController *)self subviewForDate:v27];
      linearNavigationSelectedWeek = self->_linearNavigationSelectedWeek;
      self->_linearNavigationSelectedWeek = v28;
    }
  }

  else
  {
    v26 = self->_linearNavigationSelectedWeek;
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
  v4 = [v3 showWeekNumbers];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100067740;
  v5[3] = &unk_10020FA68;
  v6 = v4;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v5];
}

- (void)localeChanged
{
  [(LargeMonthViewController *)self findWeekends];
  v3.receiver = self;
  v3.super_class = LargeMonthViewController;
  [(MonthViewController *)&v3 localeChanged];
}

- (id)occurrenceAtPoint:(CGPoint)a3
{
  v6 = CGPointZero;
  v3 = [(LargeMonthViewController *)self _weekViewAtPoint:&v6 pointInWeek:a3.x, a3.y];
  v4 = [v3 occurrenceAtPoint:v6];

  return v4;
}

- (BOOL)dragAndDropIsCurrentlyScrubbing
{
  v2 = [(LargeMonthViewController *)self shownEventViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)draggedOccurrenceWasCancelled:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (([a3 isNew] & 1) == 0)
  {
    v7 = [(LargeMonthViewController *)self _weekViewAtPoint:0 pointInWeek:x, y];
    [v7 reloadData];
  }
}

- (void)selectOccurrence:(id)a3 inWeek:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if (v6)
    {
      v9 = [(MainViewController *)self model];
      v10 = [v9 selectedOccurrence];
      v11 = v10;
      if (v10 == v6)
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

    [(CUIKCalendarModel *)self->super.super.super._model setSelectedOccurrence:v6];
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

    if (v6)
    {
      [v8 setSelectedOccurrence:v6];
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_20:
}

- (void)showDetailsForDraggedOccurrence:(id)a3 inWeekView:(id)a4 onDay:(id)a5 creationMethod:(unint64_t)a6
{
  v11 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LargeMonthViewController *)self _showEventDetailsForOccurrence:v11 inWeek:v9 onDay:v10 creationMethod:1];
  }
}

- (void)showEditorForNewDraggedEvent:(id)a3 inWeek:(id)a4
{
  v8 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [(LargeMonthViewController *)self _showEventDetailsForOccurrence:v6 inWeek:v7 onDay:0 creationMethod:1];
}

- (void)dragAndDropRequestsPresentationOfViewController:(id)a3
{
  v4 = a3;
  v6 = [[UnadaptableNavigationController alloc] initWithRootViewController:v4];

  [(UnadaptableNavigationController *)v6 setModalPresentationStyle:2];
  v5 = [(LargeMonthViewController *)self currentPresentationController];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (BOOL)isDraggingOccurrence
{
  v2 = [(MonthViewController *)self draggedOccurrenceView];
  v3 = v2 != 0;

  return v3;
}

- (id)_weekViewAtPoint:(CGPoint)a3 pointInWeek:(CGPoint *)a4
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
  v7 = a3;
  v6[4] = self;
  v6[5] = &v9;
  v8 = a4;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v6];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)handleCloseKeyCommand
{
  v3 = [(LargeMonthViewController *)self shownEventEditViewController];
  if (v3)
  {
  }

  else
  {
    v4 = [(LargeMonthViewController *)self shownEventViewController];

    if (v4)
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
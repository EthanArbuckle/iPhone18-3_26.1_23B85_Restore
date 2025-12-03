@interface LargeDayViewController
- (BOOL)_allEventsHaveSameAddressWithFirstArray:(id)array secondArray:(id)secondArray;
- (BOOL)_eventEndDateIsPassed:(id)passed;
- (BOOL)_eventIntersectsDayViewControllerActiveDate:(id)date;
- (BOOL)_eventViewControllerForModelSelectedEventIsAlreadyShown;
- (BOOL)_isTransitioningTraitCollection;
- (BOOL)_selectEvent:(id)event animated:(BOOL)animated context:(int)context;
- (BOOL)_selectEvents:(id)events animated:(BOOL)animated context:(int)context;
- (BOOL)_showsEventViewControllerAsFullScreen:(id)screen;
- (BOOL)allowChangingDate;
- (BOOL)canSpaciallyEditOccurrences;
- (BOOL)comparePointersOfArray:(id)array withArray:(id)withArray;
- (BOOL)dayViewControllerShouldEndGestureEditingOnTap:(id)tap;
- (BOOL)didSelectEvent:(id)event userInitiated:(BOOL)initiated;
- (BOOL)didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (BOOL)eventViewControllerEditButtonTemporarilyDisabled:(id)disabled;
- (BOOL)eventViewControllerShouldHideDeleteButton;
- (BOOL)eventViewDelegateShouldCreateOwnEditViewController:(id)controller;
- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)controller;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (BOOL)performModalDialogsIfNeededWithContinue:(id)continue;
- (BOOL)shouldAdaptEventViewControllers;
- (BOOL)shouldInvalidateManagedNavigationControllerOnPresentationDismissal;
- (BOOL)shouldJournalMainViewControllerParent;
- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder;
- (Class)managedNavigationControllerType;
- (EKEvent)modelSelectedEvent;
- (LargeDayViewController)initWithDay:(id)day model:(id)model window:(id)window;
- (NSArray)modelSelectedEvents;
- (double)_splitViewWidth;
- (double)_totalWidth;
- (double)detailsLeftInsetAdjustment;
- (double)detailsRightInsetAdjustment;
- (id)_clonedViewForSelectedOccurrence:(id)occurrence;
- (id)_fallbackSizingContextWindow;
- (id)_selectedOccurrenceView;
- (id)cellFactory;
- (id)managedNavigationController;
- (id)selectedCopyViewForOccurrenceView:(id)view;
- (id)showDetailViewControllerForEvent:(id)event context:(id)context animated:(BOOL)animated keepNavigationStack:(BOOL)stack;
- (id)showDetailViewControllerForEvents:(id)events animated:(BOOL)animated;
- (id)shownEventEditViewController;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (int64_t)orientationForSize:(CGSize)size;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (int64_t)viewInterfaceOrientation;
- (void)_adjustSelectedOccurrences;
- (void)_autoSelectEventWithAnimatedScroll:(BOOL)scroll;
- (void)_beginAutoScrollingAutoSelectingWithContext:(int)context;
- (void)_clearSplitViewNavigationController;
- (void)_configureSidebarConfigurationOfManagedNavigationController;
- (void)_createSplitView;
- (void)_dismissEditorAndSaveIfPossibleWhileChangingDate:(BOOL)date animated:(BOOL)animated;
- (void)_editingDidCompleteWithAction:(int64_t)action changingDate:(BOOL)date dismissEditor:(BOOL)editor editorToDismiss:(id)dismiss;
- (void)_eventStoreChanged:(id)changed;
- (void)_layOutSplitDividerFrame;
- (void)_layoutDayArea;
- (void)_layoutDayViewPane;
- (void)_layoutEventDetailsPane;
- (void)_layoutForSplitViews;
- (void)_occurrenceViewDidEndSelection:(id)selection;
- (void)_reselectedEventIfNeeded;
- (void)_resetSplitView;
- (void)_selectNextEventInForwardDirection:(BOOL)direction;
- (void)_selectedDateChangedToDate:(id)date;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_setDayViewToSplitViewVisibleState;
- (void)_setModal:(BOOL)modal;
- (void)_setSplitViewPosition;
- (void)_setUpCustomAppearances;
- (void)_setUpGesturesAndModalMode;
- (void)_showEventsWithoutChangingDate:(id)date animated:(BOOL)animated showComments:(BOOL)comments context:(id)context;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated;
- (void)_splitViewNavigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)_teardownSidebarConfigurationOfManagedNavigationController;
- (void)asyncLoadAndLayoutCompleted;
- (void)clearNoContentConfiguration;
- (void)dataReloadedWithTrigger:(int)trigger;
- (void)dayViewDidChangeSelectedDate:(id)date;
- (void)dealloc;
- (void)didBeginMovingOccurrenceWithGesture;
- (void)displayedOccurrencesChangedWithTrigger:(int)trigger;
- (void)endedHorizontalDeceleration;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestsDisplayOfDeleteAlert:(id)alert;
- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated;
- (void)eventViewControllerDidBeginEditingEventWithEditViewController:(id)controller;
- (void)eventViewControllerModifiedEventWithoutEditing:(id)editing;
- (void)eventViewControllerWillBeginEditingEvent:(id)event;
- (void)eventViewControllerWillFinishEditingEvent:(id)event deleted:(BOOL)deleted;
- (void)finishedPinchingDayView;
- (void)handleCloseKeyCommand;
- (void)handleGestureCommittingOccurrence:(id)occurrence;
- (void)isPinchingDayView;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)occurrencesWereSpaciallyEditedFromDate:(id)date toDate:(id)toDate;
- (void)scrubberDidChangeSelectedDate:(id)date;
- (void)setModelSelectedEvent:(id)event;
- (void)setModelSelectedEvents:(id)events;
- (void)setupUIForTraitCollection:(id)collection;
- (void)showEditViewController:(id)controller;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showReminderDetail:(id)detail;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated keepNavigationStack:(BOOL)stack completion:(id)completion;
- (void)updateNavigationBarDisplayedDateString;
- (void)updateNavigationBarDisplayedDateStringWithDate:(id)date;
- (void)updateNoContentConfiguration;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wasAllowedToChangeDate;
- (void)wasBlockedFromChangingDate:(id)date;
@end

@implementation LargeDayViewController

- (LargeDayViewController)initWithDay:(id)day model:(id)model window:(id)window
{
  dayCopy = day;
  modelCopy = model;
  windowCopy = window;
  v21.receiver = self;
  v21.super_class = LargeDayViewController;
  v11 = [(DayViewController *)&v21 initWithDay:dayCopy model:modelCopy window:windowCopy];
  v12 = v11;
  if (v11)
  {
    dayView = [(DayViewController *)v11 dayView];
    [dayView setGutterWidth:0.0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v12 selector:"_occurrenceViewDidEndSelection:" name:EKDayOccurrenceViewDidEndSelectionNotification object:0];

    objc_initWeak(&location, v12);
    v22 = objc_opt_class();
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F0EEC;
    v18[3] = &unk_10020E9E0;
    objc_copyWeak(&v19, &location);
    v16 = [(LargeDayViewController *)v12 registerForTraitChanges:v15 withHandler:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(LargeDayViewController *)self isViewLoaded])
  {
    view = [(LargeDayViewController *)self view];
    window = [view window];

    if (window)
    {
      if (EKUIIsSizeExtended())
      {
        dayScrubberController = [(DayViewController *)self dayScrubberController];
        view2 = [dayScrubberController view];
        preservesSuperviewLayoutMargins = [view2 preservesSuperviewLayoutMargins];

        if ((preservesSuperviewLayoutMargins & 1) == 0)
        {
          dayScrubberController2 = [(DayViewController *)self dayScrubberController];
          view3 = [dayScrubberController2 view];
          [view3 setPreservesSuperviewLayoutMargins:1];

          dayScrubberController3 = [(DayViewController *)self dayScrubberController];
          view4 = [dayScrubberController3 view];
          [view4 setNeedsLayout];
        }
      }

      v17.receiver = self;
      v17.super_class = LargeDayViewController;
      [(DayViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:EKDayOccurrenceViewDidEndSelectionNotification object:0];

  v4.receiver = self;
  v4.super_class = LargeDayViewController;
  [(DayViewController *)&v4 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = LargeDayViewController;
  [(DayViewController *)&v4 loadView];
  dayView = [(DayViewController *)self dayView];
  [dayView setShouldAutoscrollAfterAppearance:0];
}

- (BOOL)_isTransitioningTraitCollection
{
  navigationController = [(LargeDayViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    navigationController2 = [(LargeDayViewController *)self navigationController];
    v5 = [navigationController2 performSelector:"isTransitioningTraitCollection"] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)modelSelectedEvents
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];

  return selectedOccurrences;
}

- (EKEvent)modelSelectedEvent
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  firstObject = [selectedOccurrences firstObject];

  return firstObject;
}

- (void)setModelSelectedEvent:(id)event
{
  eventCopy = event;
  model = [(MainViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  if (selectedOccurrence == eventCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [selectedOccurrence isEqual:eventCopy];
  }

  model2 = [(MainViewController *)self model];
  [model2 setSelectedOccurrence:eventCopy forceChange:v6];

  if (!eventCopy)
  {
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 0;
  }
}

- (BOOL)_allEventsHaveSameAddressWithFirstArray:(id)array secondArray:(id)secondArray
{
  arrayCopy = array;
  secondArrayCopy = secondArray;
  Mutable = CFSetCreateMutable(0, 0, 0);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        CFSetAddValue(Mutable, *(*(&v26 + 1) + 8 * i));
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v13 = CFSetCreateMutable(0, 0, 0);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = secondArrayCopy;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        CFSetAddValue(v13, *(*(&v22 + 1) + 8 * j));
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  Count = CFSetGetCount(Mutable);
  if (Count == CFSetGetCount(v13))
  {
    v20 = [(__CFSet *)Mutable isEqual:v13, v22];
  }

  else
  {
    v20 = 0;
  }

  CFRelease(Mutable);
  CFRelease(v13);

  return v20;
}

- (void)setModelSelectedEvents:(id)events
{
  eventsCopy = events;
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  v6 = [(LargeDayViewController *)self _allEventsHaveSameAddressWithFirstArray:selectedOccurrences secondArray:eventsCopy];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    model2 = [(MainViewController *)self model];
    selectedOccurrences2 = [model2 selectedOccurrences];
    v10 = [NSSet setWithArray:selectedOccurrences2];
    v11 = [NSSet setWithArray:eventsCopy];
    v7 = [v10 isEqualToSet:v11];
  }

  model3 = [(MainViewController *)self model];
  [model3 setSelectedOccurrences:eventsCopy forceChange:v7];

  if (!eventsCopy)
  {
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 0;
  }
}

- (id)cellFactory
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)allowChangingDate
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  willPresentDialogOnSave = [shownEventEditViewController willPresentDialogOnSave];

  if (willPresentDialogOnSave)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = LargeDayViewController;
  return [(DayViewController *)&v6 allowChangingDate];
}

- (void)wasAllowedToChangeDate
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  [shownEventEditViewController completeAndSaveWithContinueBlock:0];
}

- (void)wasBlockedFromChangingDate:(id)date
{
  dateCopy = date;
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  willPresentDialogOnSave = [shownEventEditViewController willPresentDialogOnSave];

  if (willPresentDialogOnSave)
  {
    shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
    [shownEventEditViewController2 completeAndSaveWithContinueBlock:dateCopy];
  }
}

- (void)isPinchingDayView
{
  _selectedOccurrenceFrontmostClonedViews = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [_selectedOccurrenceFrontmostClonedViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(_selectedOccurrenceFrontmostClonedViews);
        }

        [*(*(&v11 + 1) + 8 * v7) setReduceLayoutProcessingForAnimation:1];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [_selectedOccurrenceFrontmostClonedViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dayView = [(DayViewController *)self dayView];
  currentDayView = [dayView currentDayView];
  dayContent = [currentDayView dayContent];
  [dayContent layoutIfNeeded];

  [(LargeDayViewController *)self _adjustSelectedOccurrences];
}

- (void)finishedPinchingDayView
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:selectedOccurrences animated:0 autoScroll:1 resetSelection:1];

  [(LargeDayViewController *)self _adjustSelectedOccurrences];
}

- (void)_adjustSelectedOccurrences
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
  v3 = [_selectedOccurrenceViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_selectedOccurrenceViews);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        selectedCopy = [v7 selectedCopy];
        [v7 frame];
        [selectedCopy setFrame:?];
        [v7 travelTimeSubviewHeightInPoints];
        [selectedCopy setTravelTimeSubviewHeightInPoints:?];
        [v7 bottomPinningProximity];
        [selectedCopy setBottomPinningProximity:?];
        [v7 topPinningProximity];
        [selectedCopy setTopPinningProximity:?];
        [selectedCopy requestContentIfNeeded:16 completion:0];
      }

      v4 = [_selectedOccurrenceViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)_eventViewControllerForModelSelectedEventIsAlreadyShown
{
  modelSelectedEvents = [(LargeDayViewController *)self modelSelectedEvents];
  shownEventViewController = [(MainViewController *)self shownEventViewController];
  event = [shownEventViewController event];

  shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];
  events = [shownExpandedReminderStackViewController events];

  if ([modelSelectedEvents count] == 1)
  {
    firstObject = [modelSelectedEvents firstObject];
    v9 = [event isEqual:firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSSet setWithArray:modelSelectedEvents];
  v11 = [NSSet setWithArray:events];
  v12 = [v10 isEqualToSet:v11];

  if (modelSelectedEvents && ((v9 | v12) & 1) != 0 && !self->_changingDate)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
    enqueuedViewControllers = [managedNavigationController enqueuedViewControllers];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = enqueuedViewControllers;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v25 = events;
      v26 = event;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
            event2 = [v20 event];
            if ([modelSelectedEvents count] == 1)
            {
              firstObject2 = [modelSelectedEvents firstObject];
              v23 = [event2 isEqual:firstObject2];

              if (v23)
              {

                LOBYTE(v16) = 1;
                goto LABEL_20;
              }
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_20:
      events = v25;
      event = v26;
    }
  }

  return v16;
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated keepNavigationStack:(BOOL)stack completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  shownEventViewController = [(MainViewController *)self shownEventViewController];

  if (!stack)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = kCalUILogHandle;
    v18 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG);
    if (isKindOfClass)
    {
      if (v18)
      {
        v19 = v17;
        event = [controllerCopy event];
        title = [event title];
        *buf = 136315394;
        v60 = "[LargeDayViewController showViewController:sender:animated:keepNavigationStack:completion:]";
        v61 = 2112;
        v62 = title;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s: Asked to show a view controller for event %@. Clearing sidebar nav stack first.", buf, 0x16u);
      }
    }

    else if (v18)
    {
      *buf = 136315138;
      v60 = "[LargeDayViewController showViewController:sender:animated:keepNavigationStack:completion:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Not an EKEventViewController.", buf, 0xCu);
    }

    presentedViewController = [(LargeDayViewController *)self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [(LargeDayViewController *)self presentedViewController];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();
    }

    else
    {
      v24 = 0;
    }

    managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
    [managedNavigationController enqueueStackResetOperationDismissingPresentations:v24 & 1 cancelOperations:0 completionBlock:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [(LargeDayViewController *)self view];
    if (EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors())
    {
      v27 = +[UIDevice currentDevice];
      v28 = [v27 userInterfaceIdiom] == 1;

      if (!v28)
      {
        v29 = [[EKUIManagedNavigationController alloc] initWithRootViewController:controllerCopy];
        [v29 setModalPresentationDelegate:self];
        [v29 setForceCanBeDirectlyManagedToNo:1];
        objc_initWeak(buf, v29);
        objc_initWeak(&location, self);
        v30 = [UIBarButtonItem alloc];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000F2448;
        v55[3] = &unk_100211750;
        objc_copyWeak(&v56, &location);
        objc_copyWeak(&v57, buf);
        v31 = [UIAction actionWithTitle:&stru_1002133B8 image:0 identifier:0 handler:v55];
        v32 = [v30 initWithBarButtonSystemItem:0 primaryAction:v31];

        navigationItem = [controllerCopy navigationItem];
        [navigationItem setLeftBarButtonItem:v32];

        navigationController = [(LargeDayViewController *)self navigationController];
        [navigationController presentAdaptiveModalViewController:v29 animated:1 completion:0];

        objc_destroyWeak(&v57);
        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setPreferModalPresentation:0];
  }

  [(LargeDayViewController *)self _fallbackSizingContextWindow];
  v29 = v35 = shownEventViewController == 0;
  if (v29)
  {
    EKUIPushFallbackSizingContextWithViewHierarchy();
    v54.receiver = self;
    v54.super_class = LargeDayViewController;
    [(MainViewController *)&v54 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
    viewControllerToShowFrom = [(LargeDayViewController *)self viewControllerToShowFrom];
    [(LargeDayViewController *)self _splitViewNavigationController:viewControllerToShowFrom willShowViewController:controllerCopy animated:v35 completion:0];

    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  else
  {
    v54.receiver = self;
    v54.super_class = LargeDayViewController;
    [(MainViewController *)&v54 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
    viewControllerToShowFrom2 = [(LargeDayViewController *)self viewControllerToShowFrom];
    [(LargeDayViewController *)self _splitViewNavigationController:viewControllerToShowFrom2 willShowViewController:controllerCopy animated:v35 completion:0];
  }

  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditView])
  {
    view2 = [(LargeDayViewController *)self view];
    v39 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    if (!v39)
    {
      v40 = controllerCopy;
      event2 = [v40 event];
      model = [(MainViewController *)self model];
      selectedOccurrence = [model selectedOccurrence];
      v44 = selectedOccurrence == event2;

      if (v44 || (-[MainViewController model](self, "model"), v45 = objc_claimAutoreleasedReturnValue(), [v45 setSelectedOccurrence:event2], v45, -[MainViewController model](self, "model"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "selectedOccurrence"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 == event2, v47, v46, v48))
      {
        gestureController = [(DayViewController *)self gestureController];
        draggingView = [gestureController draggingView];
        occurrence = [draggingView occurrence];
        v52 = occurrence == event2;

        if (!v52)
        {
          [(LargeDayViewController *)self _setUpGesturesAndModalMode];
        }
      }

      dayView = [(DayViewController *)self dayView];
      [dayView setCurrentEditor:v40];
    }
  }

LABEL_28:
}

- (id)showDetailViewControllerForEvent:(id)event context:(id)context animated:(BOOL)animated keepNavigationStack:(BOOL)stack
{
  stackCopy = stack;
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (-[LargeDayViewController _eventViewControllerForModelSelectedEventIsAlreadyShown](self, "_eventViewControllerForModelSelectedEventIsAlreadyShown") && ([eventCopy isReminderIntegrationEvent] & 1) == 0)
  {
    v17 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
      title = [modelSelectedEvent title];
      *buf = 136315394;
      v35 = "[LargeDayViewController showDetailViewControllerForEvent:context:animated:keepNavigationStack:]";
      v36 = 2112;
      v37 = title;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Asked to show a view controller for event %@, but it is already on the managed navigation controller.", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v12 = [(MainViewController *)self augmentEventDetailsContext:contextCopy];
    LOBYTE(v33) = 0;
    v13 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v12 canvasView:0 allowInlinePreview:0 previewInline:0 minimalMode:v33];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 setIsLargeDayView:1];
    }

    if (!stackCopy)
    {
      presentedViewController = [(LargeDayViewController *)self presentedViewController];
      if (presentedViewController)
      {
        presentedViewController2 = [(LargeDayViewController *)self presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }

      managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
      [managedNavigationController enqueueStackResetOperationDismissingPresentations:isKindOfClass & 1 cancelOperations:0 completionBlock:0];
    }

    [(LargeDayViewController *)self showViewController:v13 sender:self animated:animatedCopy keepNavigationStack:stackCopy completion:0];
    [*(&self->_lastEventShowed + 2) bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    view = [v13 view];
    [view setFrame:{v23, v25, v27, v29}];

    view2 = [v13 view];
    [view2 setAutoresizingMask:18];
  }

  return v13;
}

- (id)showDetailViewControllerForEvents:(id)events animated:(BOOL)animated
{
  eventsCopy = events;
  if ([(LargeDayViewController *)self _eventViewControllerForModelSelectedEventIsAlreadyShown])
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
      title = [modelSelectedEvent title];
      v26 = 136315394;
      v27 = "[LargeDayViewController showDetailViewControllerForEvents:animated:]";
      v28 = 2112;
      v29 = title;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Asked to show a view controller for event %@, but it is already on the managed navigation controller.", &v26, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];
    presentedViewController = [(LargeDayViewController *)self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [(LargeDayViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
    [managedNavigationController enqueueStackResetOperationDismissingPresentations:isKindOfClass & 1 cancelOperations:0 completionBlock:0];

    [(LargeDayViewController *)self showViewController:v10 sender:self animated:0 completion:0];
    [*(&self->_lastEventShowed + 2) bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    view = [v10 view];
    [view setFrame:{v16, v18, v20, v22}];

    view2 = [v10 view];
    [view2 setAutoresizingMask:18];
  }

  return v10;
}

- (BOOL)dayViewControllerShouldEndGestureEditingOnTap:(id)tap
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
    shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
    willPresentDialogOnSave = [shownEventEditViewController2 willPresentDialogOnSave];

    v7 = willPresentDialogOnSave ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)endedHorizontalDeceleration
{
  self->_userSelectedEmptySpace = 0;
  if (self->_selectedEventWasAutoSelected)
  {
    self->_selectedEventWasAutoSelected = 0;
    [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:1];
  }
}

- (void)asyncLoadAndLayoutCompleted
{
  [(LargeDayViewController *)self _adjustSelectedOccurrences];
  _selectedOccurrenceFrontmostClonedViews = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [_selectedOccurrenceFrontmostClonedViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_selectedOccurrenceFrontmostClonedViews);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        superview = [v8 superview];
        [superview bringSubviewToFront:v8];
      }

      v5 = [_selectedOccurrenceFrontmostClonedViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)selectedCopyViewForOccurrenceView:(id)view
{
  viewCopy = view;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000F2E1C;
  v20[3] = &unk_100211778;
  v22 = &v23;
  v6 = viewCopy;
  v21 = v6;
  [_selectedOccurrenceViews enumerateObjectsUsingBlock:v20];

  if (v24[3])
  {
    v7 = 0;
  }

  else
  {
    [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v8 = v17 = 0u;
    v7 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
    if (v7)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          occurrence = [v6 occurrence];
          occurrence2 = [v11 occurrence];
          v14 = [occurrence isEqual:occurrence2];

          if (v14)
          {
            v7 = v11;
            goto LABEL_13;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  _Block_object_dispose(&v23, 8);

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = LargeDayViewController;
  [(DayViewController *)&v6 viewDidLoad];
  [(LargeDayViewController *)self _createSplitView];
  dayView = [(DayViewController *)self dayView];
  [dayView setAnimateAllDayAreaHeight:0];

  dayView2 = [(DayViewController *)self dayView];
  [dayView2 setNotifyWhenTapOtherEventDuringDragging:1];

  [(LargeDayViewController *)self _setUpCustomAppearances];
  dayScrubberController = [(DayViewController *)self dayScrubberController];
  [dayScrubberController setEventSpringLoadingEnabled:1];

  [(LargeDayViewController *)self updateNoContentConfiguration];
}

- (void)_setUpCustomAppearances
{
  if (qword_100251CB8 != -1)
  {
    sub_100170ADC();
  }
}

- (int64_t)presentationStyleOverrideForChildViewControllers
{
  view = [(LargeDayViewController *)self view];
  v3 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 6;
  }
}

- (void)setupUIForTraitCollection:(id)collection
{
  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6))
  {
    _fallbackSizingContextWindow = [(LargeDayViewController *)self _fallbackSizingContextWindow];
    if (_fallbackSizingContextWindow)
    {
      EKUIPushFallbackSizingContextWithViewHierarchy();
      [(LargeDayViewController *)self viewWillAppear:0];
      EKUIPopFallbackSizingContextWithViewHierarchy();
    }

    else
    {
      [(LargeDayViewController *)self viewWillAppear:0];
    }
  }
}

- (id)_fallbackSizingContextWindow
{
  view = [(LargeDayViewController *)self view];
  window = [view window];

  if (!window)
  {
    navigationController = [(LargeDayViewController *)self navigationController];
    view2 = [navigationController view];
    window = [view2 window];

    if (!window)
    {
      EKUIHasFallbackSizingContext();
    }
  }

  EKUIMultiwindowAssert();

  return window;
}

- (void)viewWillAppear:(BOOL)appear
{
  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6))
  {
    v20.receiver = self;
    v20.super_class = LargeDayViewController;
    [(DayViewController *)&v20 viewWillAppear:appear];
    presentedViewController = [(LargeDayViewController *)self presentedViewController];
    if (!presentedViewController || (v5 = *(&self->_lastEventShowed + 2), presentedViewController, !v5))
    {
      [(LargeDayViewController *)self _configureSidebarConfigurationOfManagedNavigationController];
    }

    [(LargeDayViewController *)self _layoutDayArea];
    dayView = [(DayViewController *)self dayView];
    view = [dayView view];
    [view setClipsToBounds:1];

    v8 = +[NSNotificationCenter defaultCenter];
    model = [(MainViewController *)self model];
    eventStore = [model eventStore];
    [v8 addObserver:self selector:"_eventStoreChanged:" name:EKEventStoreChangedNotification object:eventStore];

    *(&self->_dividerView + 2) = 2;
    view2 = [(LargeDayViewController *)self view];
    v12 = EKUIIsExtended();

    if (v12)
    {
      dayScrubberController = [(DayViewController *)self dayScrubberController];
      view3 = [dayScrubberController view];
      preservesSuperviewLayoutMargins = [view3 preservesSuperviewLayoutMargins];

      if ((preservesSuperviewLayoutMargins & 1) == 0)
      {
        dayScrubberController2 = [(DayViewController *)self dayScrubberController];
        view4 = [dayScrubberController2 view];
        [view4 setPreservesSuperviewLayoutMargins:1];

        dayScrubberController3 = [(DayViewController *)self dayScrubberController];
        view5 = [dayScrubberController3 view];
        [view5 setNeedsLayout];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = LargeDayViewController;
  [(DayViewController *)&v13 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(DayViewController *)self day];
    date = [v8 date];
    *buf = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = date;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  if (![(LargeDayViewController *)self _eventViewControllerForModelSelectedEventIsAlreadyShown]&& self->_userInteractedWithSplitviewPane)
  {
    modelSelectedEvents = [(LargeDayViewController *)self modelSelectedEvents];
    v11 = modelSelectedEvents;
    if (modelSelectedEvents && [modelSelectedEvents count])
    {
      modelSelectedEvents2 = [(LargeDayViewController *)self modelSelectedEvents];
      [(LargeDayViewController *)self showEvents:modelSelectedEvents2 animated:0 showMode:1 context:0];
    }

    else
    {
      [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:0];
    }
  }

  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 4) = 0;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6) = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6) = 0;
  presentedViewController = [(LargeDayViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    [(LargeDayViewController *)self _teardownSidebarConfigurationOfManagedNavigationController];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  model = [(MainViewController *)self model];
  eventStore = [model eventStore];
  [v6 removeObserver:self name:EKEventStoreChangedNotification object:eventStore];

  [v6 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  v9.receiver = self;
  v9.super_class = LargeDayViewController;
  [(LargeDayViewController *)&v9 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LargeDayViewController;
  [(DayViewController *)&v4 viewDidDisappear:disappear];
  [(LargeDayViewController *)self _setModal:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  [(DayViewController *)&v5 viewWillLayoutSubviews];
  dayScrubberController = [(DayViewController *)self dayScrubberController];
  view = [dayScrubberController view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  parentViewController = [(LargeDayViewController *)self parentViewController];

  if (parentViewController)
  {
    v8.receiver = self;
    v8.super_class = LargeDayViewController;
    [(LargeDayViewController *)&v8 viewDidLayoutSubviews];
    view = [(LargeDayViewController *)self view];
    dayView = [(DayViewController *)self dayView];
    view2 = [dayView view];
    [view sendSubviewToBack:view2];

    _fallbackSizingContextWindow = [(LargeDayViewController *)self _fallbackSizingContextWindow];
    if (_fallbackSizingContextWindow)
    {
      EKUIPushFallbackSizingContextWithViewHierarchy();
      [(LargeDayViewController *)self _layoutDayArea];
      EKUIPopFallbackSizingContextWithViewHierarchy();
    }

    else
    {
      [(LargeDayViewController *)self _layoutDayArea];
    }
  }
}

- (void)updateNavigationBarDisplayedDateString
{
  dayView = [(DayViewController *)self dayView];
  if (dayView)
  {
    v4 = dayView;
    dayView2 = [(DayViewController *)self dayView];
    displayDate = [dayView2 displayDate];

    if (displayDate)
    {
      dayView3 = [(DayViewController *)self dayView];
      displayDate2 = [dayView3 displayDate];
      model = [(MainViewController *)self model];
      calendar = [model calendar];
      timeZone = [calendar timeZone];
      v12 = [EKCalendarDate calendarDateWithDateComponents:displayDate2 timeZone:timeZone];

      [(LargeDayViewController *)self updateNavigationBarDisplayedDateStringWithDate:v12];
    }
  }
}

- (void)updateNavigationBarDisplayedDateStringWithDate:(id)date
{
  dateCopy = date;
  navigationController = [(LargeDayViewController *)self navigationController];
  [navigationController setNavBarStringFromDate:dateCopy includeMonth:1 includeYear:1];
}

- (Class)managedNavigationControllerType
{
  view = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v4)
  {
    managedNavigationControllerType = objc_opt_class();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LargeDayViewController;
    managedNavigationControllerType = [(MainViewController *)&v7 managedNavigationControllerType];
  }

  return managedNavigationControllerType;
}

- (id)managedNavigationController
{
  if (([(LargeDayViewController *)self isViewLoaded]& 1) == 0)
  {
    [(LargeDayViewController *)self view];
  }

  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  managedNavigationController = [(MainViewController *)&v5 managedNavigationController];

  return managedNavigationController;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  [paletteCopy setWeekdayHeaderVisible:0];
  [paletteCopy setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDateStringVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDividerLineVisible:1];
  if (CalSolariumEnabled())
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [paletteCopy setFocusBannerPlacement:v5];
  dayScrubberController = [(DayViewController *)self dayScrubberController];
  ekui_futureTraitCollection = [(LargeDayViewController *)self ekui_futureTraitCollection];
  [dayScrubberController setShowsWeekNumberWhenEnabled:{objc_msgSend(ekui_futureTraitCollection, "horizontalSizeClass") == 2}];

  [paletteCopy setDayScrubberController:dayScrubberController];
  view = [dayScrubberController view];
  [view setNeedsLayout];

  [paletteCopy sizeToFit];
  [paletteCopy frame];
  v9 = v8;
  containingPalette = [paletteCopy containingPalette];

  [containingPalette setPreferredHeight:v9];
}

- (BOOL)shouldAdaptEventViewControllers
{
  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) || *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 4))
  {
    return 1;
  }

  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
    v3 = 1;
  }

  else
  {
    shownEventViewController = [(MainViewController *)self shownEventViewController];
    presentedViewController = [shownEventViewController presentedViewController];
    v3 = presentedViewController != 0;
  }

  return v3;
}

- (BOOL)shouldJournalMainViewControllerParent
{
  presentedViewController = [(LargeDayViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 1;
  if (isKindOfClass)
  {
    presentedViewController2 = [(LargeDayViewController *)self presentedViewController];
    viewControllers = [presentedViewController2 viewControllers];
    firstObject = [viewControllers firstObject];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)shouldInvalidateManagedNavigationControllerOnPresentationDismissal
{
  selfCopy = self;
  presentedViewController = [(LargeDayViewController *)self presentedViewController];
  managedNavigationController = [(LargeDayViewController *)selfCopy managedNavigationController];
  LOBYTE(selfCopy) = presentedViewController == managedNavigationController;

  return selfCopy;
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  v3 = shownEventEditViewController == 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  v3 = shownEventEditViewController == 0;

  return v3;
}

- (void)_selectNextEventInForwardDirection:(BOOL)direction
{
  dayView = [(DayViewController *)self dayView];
  currentDayView = [dayView currentDayView];

  if (!currentDayView)
  {
    goto LABEL_8;
  }

  v7 = [EKDayOccurrenceViewIterator alloc];
  allOccurrenceViews = [currentDayView allOccurrenceViews];
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
  v10 = [v7 initWithOccurrenceViews:allOccurrenceViews selectedEvent:modelSelectedEvent];

  if (direction)
  {
    [v10 next];
  }

  else
  {
    [v10 previous];
  }
  v13 = ;

  if (v13)
  {
    occurrence = [v13 occurrence];

    if (occurrence)
    {
      occurrence2 = [v13 occurrence];
      [(LargeDayViewController *)self showEvent:occurrence2 animated:1 showMode:1 context:0];
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
  }
}

- (void)showNextOccurrenceOfSelectableItem
{
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
  nextOccurrence = [modelSelectedEvent nextOccurrence];

  v4 = nextOccurrence;
  if (nextOccurrence)
  {
    [(LargeDayViewController *)self showEvent:nextOccurrence animated:1 showMode:1 context:0];
    v4 = nextOccurrence;
  }
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
  previousOccurrence = [modelSelectedEvent previousOccurrence];

  v4 = previousOccurrence;
  if (previousOccurrence)
  {
    [(LargeDayViewController *)self showEvent:previousOccurrence animated:1 showMode:1 context:0];
    v4 = previousOccurrence;
  }
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

  v9 = [selectedDate calendarDateByAddingDays:v8];
  [(DayViewController *)self selectDate:v9 animated:animatedCopy];
}

- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder
{
  shownEventViewController = [(MainViewController *)self shownEventViewController];
  if (shownEventViewController)
  {
    shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
    v5 = shownEventEditViewController == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureSidebarConfigurationOfManagedNavigationController
{
  if (!*(&self->_lastEventShowed + 2))
  {
    managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
    parentViewController = [managedNavigationController parentViewController];

    if (parentViewController != self)
    {
      managedNavigationController2 = [(LargeDayViewController *)self managedNavigationController];
      [(LargeDayViewController *)self addChildViewController:managedNavigationController2];

      managedNavigationController3 = [(LargeDayViewController *)self managedNavigationController];
      [managedNavigationController3 didMoveToParentViewController:self];
    }

    v7 = [LargeDayNavigationWrapperView alloc];
    managedNavigationController4 = [(LargeDayViewController *)self managedNavigationController];
    view = [managedNavigationController4 view];
    v10 = [(LargeDayNavigationWrapperView *)v7 initWithNavigationView:view];
    v11 = *(&self->_lastEventShowed + 2);
    *(&self->_lastEventShowed + 2) = v10;

    [*(&self->_lastEventShowed + 2) setClipsToBounds:1];
    view2 = [(LargeDayViewController *)self view];
    [view2 addSubview:*(&self->_lastEventShowed + 2)];
  }

  managedNavigationController5 = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController5 setDelegate:self];

  managedNavigationController6 = [(LargeDayViewController *)self managedNavigationController];
  traitOverrides = [managedNavigationController6 traitOverrides];
  [traitOverrides setHorizontalSizeClass:1];
}

- (void)_teardownSidebarConfigurationOfManagedNavigationController
{
  [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
  [(LargeDayViewController *)self _clearSplitViewNavigationController];
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController removeFromParentViewController];

  managedNavigationController2 = [(LargeDayViewController *)self managedNavigationController];
  view = [managedNavigationController2 view];
  [view removeFromSuperview];

  managedNavigationController3 = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController3 setDelegate:0];

  [*(&self->_lastEventShowed + 2) removeFromSuperview];
  v7 = *(&self->_lastEventShowed + 2);
  *(&self->_lastEventShowed + 2) = 0;
}

- (void)_createSplitView
{
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  view = [managedNavigationController view];
  [view setClipsToBounds:1];

  managedNavigationController2 = [(LargeDayViewController *)self managedNavigationController];
  [(LargeDayViewController *)self addChildViewController:managedNavigationController2];

  managedNavigationController3 = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController3 didMoveToParentViewController:self];

  v7 = objc_opt_new();
  v8 = *(&self->_navigationWrapperView + 2);
  *(&self->_navigationWrapperView + 2) = v7;

  v9 = +[UIColor separatorColor];
  [*(&self->_navigationWrapperView + 2) setBackgroundColor:v9];

  view2 = [(LargeDayViewController *)self view];
  [view2 addSubview:*(&self->_navigationWrapperView + 2)];
}

- (void)_resetSplitView
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    dayView = [(DayViewController *)self dayView];
    [dayView setCurrentEditor:0];
  }

  [(LargeDayViewController *)self _clearSplitViewNavigationController];
}

- (void)_layoutDayArea
{
  [(LargeDayViewController *)self _setDayViewToSplitViewVisibleState];
  [(LargeDayViewController *)self _setSplitViewPosition];
  [(LargeDayViewController *)self _layoutForSplitViews];
  [(LargeDayViewController *)self _layOutSplitDividerFrame];
  dayView = [(DayViewController *)self dayView];
  gestureController = [dayView gestureController];
  draggingView = [gestureController draggingView];

  if (draggingView)
  {
    dayView2 = [(DayViewController *)self dayView];
    gestureController2 = [dayView2 gestureController];
    [gestureController2 updateDraggingOccurrenceForced:0 animated:0];
  }
}

- (void)_setDayViewToSplitViewVisibleState
{
  view = [(LargeDayViewController *)self view];
  [view bounds];
  [(LargeDayViewController *)self splitterSpace];

  CalRoundToScreenScale();
  v5 = v4;
  dayView = [(DayViewController *)self dayView];
  view2 = [dayView view];
  [view2 frame];
  v9 = v8;
  v11 = v10;

  dayView2 = [(DayViewController *)self dayView];
  view3 = [dayView2 view];
  [view3 setFrame:{0.0, v9, v5, v11}];
}

- (void)_layOutSplitDividerFrame
{
  EKUIScaleFactor();
  CalRoundToScreenScale();
  v4 = v3;
  v5 = 0.0;
  if (CalCanvasPocketEnabled())
  {
    view = [(LargeDayViewController *)self view];
    [view safeAreaInsets];
    v5 = v7;
  }

  [(LargeDayViewController *)self _dayViewWidthWhenSplit];
  v9 = v8;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    view2 = [(LargeDayViewController *)self view];
    [view2 bounds];
    v9 = v11 - v9;
  }

  view3 = [(LargeDayViewController *)self view];
  [view3 bounds];
  v14 = v13 - v5;

  v15 = *(&self->_navigationWrapperView + 2);

  [v15 setFrame:{v9, v5, v4, v14}];
}

- (void)_layoutForSplitViews
{
  [(LargeDayViewController *)self _layoutDayViewPane];

  [(LargeDayViewController *)self _layoutEventDetailsPane];
}

- (void)_layoutDayViewPane
{
  dayView = [(DayViewController *)self dayView];
  view = [dayView view];
  [view frame];

  [(LargeDayViewController *)self _dayViewWidthWhenSplit];
  v6 = v5;
  view2 = [(LargeDayViewController *)self view];
  [view2 bounds];
  v9 = v8;

  v10 = 0.0;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    view3 = [(LargeDayViewController *)self view];
    [view3 bounds];
    v10 = v12 - v6;
  }

  dayView2 = [(DayViewController *)self dayView];
  [dayView2 setFrame:v10 gutterWidth:{0.0, v6, v9, 0.0}];
}

- (void)_layoutEventDetailsPane
{
  dayView = [(DayViewController *)self dayView];
  view = [dayView view];
  [view frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = 0.0;
  v14 = 0.0;
  if (CalCanvasPocketEnabled())
  {
    view2 = [(LargeDayViewController *)self view];
    [view2 safeAreaInsets];
    v14 = v16;
  }

  if (CalInterfaceIsLeftToRight())
  {
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v10;
    v43.size.height = v12;
    MaxX = CGRectGetMaxX(v43);
    [(LargeDayViewController *)self splitterSpace];
    v13 = MaxX + v18;
  }

  [(LargeDayViewController *)self _splitViewWidth];
  v20 = v19;
  view3 = [(LargeDayViewController *)self view];
  [view3 bounds];
  v23 = v22 - v14;

  [*(&self->_lastEventShowed + 2) setFrame:{v13, v14, v20, v23}];
  shownEventViewController = [(MainViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    shownEventViewController2 = [(MainViewController *)self shownEventViewController];
    view4 = [shownEventViewController2 view];
    [view4 layoutMargins];
    v28 = v27;
    v30 = v29;

    [(LargeDayViewController *)self detailsLeftInsetAdjustment];
    v32 = v31;
    [(LargeDayViewController *)self rightSplitViewSideInset];
    v34 = v32 + v33;
    [(LargeDayViewController *)self detailsRightInsetAdjustment];
    v36 = v35;
    [(LargeDayViewController *)self rightSplitViewSideInset];
    v38 = v36 + v37;
    if (CalInterfaceIsLeftToRight())
    {
      v39 = v34;
    }

    else
    {
      v39 = v38;
    }

    if (CalInterfaceIsLeftToRight())
    {
      v34 = v38;
    }

    shownEventViewController3 = [(MainViewController *)self shownEventViewController];
    view5 = [shownEventViewController3 view];
    [view5 setLayoutMargins:{v28, v39, v30, v34}];
  }
}

- (void)_setSplitViewPosition
{
  [*(&self->_lastEventShowed + 2) frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(LargeDayViewController *)self _dayViewWidthWhenSplit];
  v10 = v9;
  [(LargeDayViewController *)self splitterSpace];
  v11 = *(&self->_lastEventShowed + 2);
  v13 = v10 + v12;

  [v11 setFrame:{v13, v4, v6, v8}];
}

- (double)_totalWidth
{
  view = [(LargeDayViewController *)self view];
  [view bounds];
  v5 = v4;
  [(LargeDayViewController *)self splitterSpace];
  v7 = v5 - v6;

  return v7;
}

- (double)_splitViewWidth
{
  [(LargeDayViewController *)self _totalWidth];
  v4 = v3;
  [(LargeDayViewController *)self _dayViewWidthWhenSplit];
  return v4 - v5;
}

- (void)_clearSplitViewNavigationController
{
  self->_changingDate = 1;
  objc_initWeak(&location, self);
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4EF4;
  v4[3] = &unk_100210850;
  objc_copyWeak(&v5, &location);
  [managedNavigationController enqueueStackResetOperationDismissingPresentations:1 cancelOperations:0 completionBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (!shownEventEditViewController || (v10 = shownEventEditViewController, -[LargeDayViewController shownEventEditViewController](self, "shownEventEditViewController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isBeingDismissed], v11, v10, v12))
  {
    window = [(MainViewController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    [(LargeDayViewController *)self _splitViewNavigationController:controllerCopy willShowViewController:viewControllerCopy animated:animatedCopy completion:0];
    window2 = [(MainViewController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }
}

- (void)_splitViewNavigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  v14 = [controllerCopy isEqual:managedNavigationController];

  if (v14)
  {
    if (animatedCopy)
    {
      v15 = 0.15;
    }

    else
    {
      v15 = 0.0;
    }

    viewControllers = [controllerCopy viewControllers];
    v17 = [viewControllers count] < 2;

    [controllerCopy setNavigationBarHidden:v17 animated:0];
    if (viewControllerCopy || ([controllerCopy viewControllers], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "count"), v34, v35) && (objc_msgSend(controllerCopy, "topViewController"), (viewControllerCopy = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        view = [viewControllerCopy view];
        [view layoutMargins];
        v20 = v19;
        v22 = v21;

        [(LargeDayViewController *)self detailsRightInsetAdjustment];
        v24 = v23;
        [(LargeDayViewController *)self rightSplitViewSideInset];
        v26 = v24 + v25;
        [(LargeDayViewController *)self detailsLeftInsetAdjustment];
        v28 = v27;
        [(LargeDayViewController *)self rightSplitViewSideInset];
        v30 = v28 + v29;
        view2 = [viewControllerCopy view];
        [view2 setLayoutMargins:{v20, v30, v22, v26}];
      }

      toolbarItems = [viewControllerCopy toolbarItems];
      [controllerCopy setToolbarHidden:{objc_msgSend(toolbarItems, "count") == 0}];

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000F5414;
      v41[3] = &unk_10020EB00;
      v41[4] = self;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000F541C;
      v39[3] = &unk_10020EDB0;
      v33 = &v40;
      v40 = completionCopy;
      [UIView animateWithDuration:v41 animations:v39 completion:v15];
    }

    else
    {
      [controllerCopy setToolbarHidden:1];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000F5434;
      v38[3] = &unk_10020EB00;
      v38[4] = self;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000F543C;
      v36[3] = &unk_10020EDB0;
      v33 = &v37;
      v37 = completionCopy;
      [UIView animateWithDuration:v38 animations:v36 completion:v15];
      viewControllerCopy = 0;
    }
  }
}

- (int64_t)orientationForSize:(CGSize)size
{
  if ([(LargeDayViewController *)self usePortraitLayoutForSize:size.width, size.height])
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (int64_t)viewInterfaceOrientation
{
  view = [(LargeDayViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    v4 = 4;
LABEL_6:

    return v4;
  }

  view2 = [(LargeDayViewController *)self view];
  IsCompact = EKUICurrentHeightSizeClassIsCompact();

  if ((IsCompact & 1) == 0)
  {
    view = [(LargeDayViewController *)self view];
    [view frame];
    v4 = [(LargeDayViewController *)self orientationForSize:v7, v8];
    goto LABEL_6;
  }

  return 4;
}

- (double)detailsLeftInsetAdjustment
{
  view = [(LargeDayViewController *)self view];
  v3 = EKUICurrentWindowInterfaceParadigm();

  result = 1.0;
  if (v3 == 8)
  {
    return -19.0;
  }

  return result;
}

- (double)detailsRightInsetAdjustment
{
  view = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm();

  result = -1.0;
  if (v4 == 8)
  {
    [(LargeDayViewController *)self rightSplitViewSideInset];
    return -v6;
  }

  return result;
}

- (BOOL)_selectEvent:(id)event animated:(BOOL)animated context:(int)context
{
  LODWORD(shownEventEditViewController7) = context;
  animatedCopy = animated;
  eventCopy = event;
  gestureController = [(DayViewController *)self gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  if ((dragGestureInProgress & 1) == 0)
  {
    shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
    v12 = shownEventEditViewController;
    if (shownEventEditViewController7 == 1 && shownEventEditViewController)
    {
      shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
      event = [shownEventEditViewController2 event];
      uniqueId = [event uniqueId];
      uniqueId2 = [eventCopy uniqueId];
      v17 = [uniqueId isEqualToString:uniqueId2];

      if (v17)
      {

        eventCopy = 0;
        v18 = 1;
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!eventCopy || shownEventEditViewController7 != 1)
    {
LABEL_12:
      shownEventEditViewController3 = [(LargeDayViewController *)self shownEventEditViewController];
      event2 = [shownEventEditViewController3 event];

      if (eventCopy || !event2)
      {
        uniqueID = [event2 uniqueID];
        uniqueID2 = [eventCopy uniqueID];
        if (uniqueID == uniqueID2)
        {
          v21 = 1;
        }

        else
        {
          uniqueID3 = [event2 uniqueID];
          uniqueID4 = [eventCopy uniqueID];
          v21 = [uniqueID3 isEqualToString:uniqueID4];
        }
      }

      else
      {
        v21 = 0;
      }

      shownEventEditViewController4 = [(LargeDayViewController *)self shownEventEditViewController];
      v27 = shownEventEditViewController4;
      if (!shownEventEditViewController4 || v21)
      {
      }

      else
      {
        shownEventEditViewController5 = [(LargeDayViewController *)self shownEventEditViewController];
        isBeingDismissed = [shownEventEditViewController5 isBeingDismissed];

        if ((isBeingDismissed & 1) == 0)
        {
          if (shownEventEditViewController7 == 1)
          {
            shownEventEditViewController6 = [(LargeDayViewController *)self shownEventEditViewController];
            willPresentDialogOnSave = [shownEventEditViewController6 willPresentDialogOnSave];

            if (willPresentDialogOnSave)
            {
              shownEventEditViewController7 = [(LargeDayViewController *)self shownEventEditViewController];
              v44[0] = _NSConcreteStackBlock;
              v44[1] = 3221225472;
              v44[2] = sub_1000F5B48;
              v44[3] = &unk_1002117C0;
              v44[4] = self;
              v45 = eventCopy;
              v47 = animatedCopy;
              v46 = 1;
              [shownEventEditViewController7 completeAndSaveWithContinueBlock:v44];

              LOBYTE(shownEventEditViewController7) = 0;
LABEL_47:

              goto LABEL_48;
            }

            if (!eventCopy)
            {
              *(&self->_dividerView + 2) = 1;
            }
          }

          [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:0 animated:0];
        }
      }

      _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
      if ([_selectedOccurrenceViews count] == 1)
      {
        _selectedOccurrenceViews2 = [(DayViewController *)self _selectedOccurrenceViews];
        firstObject = [_selectedOccurrenceViews2 firstObject];
      }

      else
      {
        firstObject = 0;
      }

      occurrence = [firstObject occurrence];
      v36 = [occurrence isEqual:eventCopy];

      if (v36)
      {
        if (([eventCopy hasChanges] & 1) == 0)
        {
          [(LargeDayViewController *)self _adjustSelectedOccurrences];
        }

        LOBYTE(shownEventEditViewController7) = 1;
      }

      else
      {
        [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
        if (eventCopy)
        {
          *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = shownEventEditViewController7 != 1;
          [(LargeDayViewController *)self setModelSelectedEvent:eventCopy];
          v37 = shownEventEditViewController7 != 2;
          v48 = eventCopy;
          LOBYTE(shownEventEditViewController7) = 1;
          v38 = [NSArray arrayWithObjects:&v48 count:1];
          [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v38 animated:animatedCopy autoScroll:v37 resetSelection:1];
        }

        else
        {
          shownEventViewController = [(MainViewController *)self shownEventViewController];
          if (shownEventViewController || ([(LargeDayViewController *)self shownEventEditViewController], (shownEventViewController = objc_claimAutoreleasedReturnValue()) != 0) || ([(MainViewController *)self shownContactViewController], (shownEventViewController = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            shownEventEditViewController7 = [(MainViewController *)self shownExpandedReminderStackViewController];

            if (!shownEventEditViewController7)
            {
              v41 = 0.15;
              if (!animatedCopy)
              {
                v41 = 0.0;
              }

              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v42[2] = sub_1000F5B64;
              v42[3] = &unk_10020EB00;
              v42[4] = self;
              [UIView animateWithDuration:v42 animations:0 completion:v41];
              goto LABEL_46;
            }
          }

          if (animatedCopy)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000F5B5C;
            block[3] = &unk_10020EB00;
            block[4] = self;
            dispatch_async(&_dispatch_main_q, block);
          }

          else
          {
            [(LargeDayViewController *)self _resetSplitView];
          }

          LOBYTE(shownEventEditViewController7) = 0;
        }
      }

LABEL_46:

      goto LABEL_47;
    }

    v18 = 0;
LABEL_11:
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = v18;
    goto LABEL_12;
  }

  LOBYTE(shownEventEditViewController7) = 0;
LABEL_48:

  return shownEventEditViewController7;
}

- (BOOL)_selectEvents:(id)events animated:(BOOL)animated context:(int)context
{
  animatedCopy = animated;
  eventsCopy = events;
  gestureController = [(DayViewController *)self gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  if ((dragGestureInProgress & 1) == 0)
  {
    shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
    v13 = shownEventEditViewController;
    contextCopy = context;
    if (context == 1 && shownEventEditViewController && [eventsCopy count] == 1)
    {
      shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
      event = [shownEventEditViewController2 event];
      uniqueId = [event uniqueId];
      firstObject = [eventsCopy firstObject];
      [firstObject uniqueId];
      v19 = v18 = animatedCopy;
      v20 = [uniqueId isEqualToString:v19];

      animatedCopy = v18;
      context = 1;

      if (v20)
      {

        eventsCopy = 0;
        v21 = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (!eventsCopy || context != 1 || ![eventsCopy count])
    {
LABEL_14:
      shownEventEditViewController3 = [(LargeDayViewController *)self shownEventEditViewController];
      event2 = [shownEventEditViewController3 event];

      shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];
      events = [shownExpandedReminderStackViewController events];

      if (event2)
      {
        if (eventsCopy)
        {
          v26 = [eventsCopy count] == 0;
          if (!events)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v26 = 1;
          if (!events)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v26 = 0;
        if (!events)
        {
          goto LABEL_24;
        }
      }

      if ([events count])
      {
        if (eventsCopy)
        {
          v27 = [eventsCopy count] == 0;
        }

        else
        {
          v27 = 1;
        }

LABEL_25:
        v71 = events;
        if (v26 || [eventsCopy count] != 1)
        {
          v35 = 0;
          if (!v27)
          {
LABEL_34:
            v37 = [NSSet setWithArray:events];
            if (eventsCopy)
            {
              v38 = eventsCopy;
            }

            else
            {
              v38 = &__NSArray0__struct;
            }

            v39 = [NSSet setWithArray:v38];
            v36 = [v37 isEqualToSet:v39];

LABEL_38:
            shownEventEditViewController4 = [(LargeDayViewController *)self shownEventEditViewController];
            v41 = shownEventEditViewController4;
            if ((shownEventEditViewController4 == 0) | v35 & 1)
            {
            }

            else
            {
              shownEventEditViewController5 = [(LargeDayViewController *)self shownEventEditViewController];
              isBeingDismissed = [shownEventEditViewController5 isBeingDismissed];

              if ((isBeingDismissed & 1) == 0)
              {
                if (contextCopy == 1)
                {
                  shownEventEditViewController6 = [(LargeDayViewController *)self shownEventEditViewController];
                  willPresentDialogOnSave = [shownEventEditViewController6 willPresentDialogOnSave];

                  if (willPresentDialogOnSave)
                  {
                    shownEventEditViewController7 = [(LargeDayViewController *)self shownEventEditViewController];
                    v74[0] = _NSConcreteStackBlock;
                    v74[1] = 3221225472;
                    v74[2] = sub_1000F6350;
                    v74[3] = &unk_1002117C0;
                    v74[4] = self;
                    v75 = eventsCopy;
                    v77 = animatedCopy;
                    v76 = 1;
                    [shownEventEditViewController7 completeAndSaveWithContinueBlock:v74];

                    v11 = 0;
LABEL_80:

                    goto LABEL_81;
                  }

                  if (!eventsCopy || ![eventsCopy count])
                  {
                    *(&self->_dividerView + 2) = 1;
                  }
                }

                else if (eventsCopy)
                {
                  [eventsCopy count];
                }

                [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:0 animated:0];
              }
            }

            shownExpandedReminderStackViewController2 = [(MainViewController *)self shownExpandedReminderStackViewController];
            if ((shownExpandedReminderStackViewController2 == 0) | v36 & 1)
            {
              goto LABEL_57;
            }

            shownExpandedReminderStackViewController3 = [(MainViewController *)self shownExpandedReminderStackViewController];
            isBeingDismissed2 = [shownExpandedReminderStackViewController3 isBeingDismissed];

            if (isBeingDismissed2)
            {
              goto LABEL_58;
            }

            if (eventsCopy)
            {
              v50 = [eventsCopy count];
              if (contextCopy != 1 || v50)
              {
                goto LABEL_56;
              }
            }

            else if (contextCopy != 1)
            {
              goto LABEL_56;
            }

            *(&self->_dividerView + 2) = 1;
LABEL_56:
            shownExpandedReminderStackViewController2 = [(MainViewController *)self shownExpandedReminderStackViewController];
            presentingViewController = [shownExpandedReminderStackViewController2 presentingViewController];
            [presentingViewController dismissViewControllerAnimated:1 completion:0];

LABEL_57:
LABEL_58:
            _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
            if ([_selectedOccurrenceViews count] == 1)
            {
              _selectedOccurrenceViews2 = [(DayViewController *)self _selectedOccurrenceViews];
              firstObject2 = [_selectedOccurrenceViews2 firstObject];
            }

            else
            {
              firstObject2 = 0;
            }

            occurrences = [firstObject2 occurrences];
            v56 = occurrences;
            if (eventsCopy && occurrences)
            {
              v57 = event2;
              occurrences2 = [firstObject2 occurrences];
              v59 = [NSSet setWithArray:occurrences2];
              v60 = [NSSet setWithArray:eventsCopy];
              v61 = [v59 isEqualToSet:v60];

              if (v61)
              {
                event2 = v57;
                if ([eventsCopy count] == 1)
                {
                  firstObject3 = [eventsCopy firstObject];
                  hasChanges = [firstObject3 hasChanges];

                  if ((hasChanges & 1) == 0)
                  {
                    [(LargeDayViewController *)self _adjustSelectedOccurrences];
                  }
                }

                goto LABEL_79;
              }

              [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
              event2 = v57;
            }

            else
            {

              [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
              if (!eventsCopy)
              {
                goto LABEL_72;
              }
            }

            if ([eventsCopy count])
            {
              *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = contextCopy != 1;
              [(LargeDayViewController *)self setModelSelectedEvents:eventsCopy];
              [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:eventsCopy animated:animatedCopy autoScroll:contextCopy != 2 resetSelection:1];
              goto LABEL_79;
            }

LABEL_72:
            shownEventViewController = [(MainViewController *)self shownEventViewController];
            if (shownEventViewController || ([(LargeDayViewController *)self shownEventEditViewController], (shownEventViewController = objc_claimAutoreleasedReturnValue()) != 0) || ([(MainViewController *)self shownContactViewController], (shownEventViewController = objc_claimAutoreleasedReturnValue()) != 0))
            {
            }

            else
            {
              shownExpandedReminderStackViewController4 = [(MainViewController *)self shownExpandedReminderStackViewController];

              if (!shownExpandedReminderStackViewController4)
              {
                v67 = 0.15;
                if (!animatedCopy)
                {
                  v67 = 0.0;
                }

                v72[0] = _NSConcreteStackBlock;
                v72[1] = 3221225472;
                v72[2] = sub_1000F6434;
                v72[3] = &unk_10020EB00;
                v72[4] = self;
                [UIView animateWithDuration:v72 animations:0 completion:v67];
                goto LABEL_79;
              }
            }

            if (animatedCopy)
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000F6364;
              block[3] = &unk_10020EB00;
              block[4] = self;
              dispatch_async(&_dispatch_main_q, block);
            }

            else
            {
              [(LargeDayViewController *)self _resetSplitView];
            }

LABEL_79:

            v11 = 1;
            goto LABEL_80;
          }
        }

        else
        {
          v69 = animatedCopy;
          uniqueID = [event2 uniqueID];
          firstObject4 = [eventsCopy firstObject];
          uniqueID2 = [firstObject4 uniqueID];
          if (uniqueID == uniqueID2)
          {
            v35 = 1;
          }

          else
          {
            [event2 uniqueID];
            v31 = v68 = uniqueID;
            firstObject5 = [eventsCopy firstObject];
            [firstObject5 uniqueID];
            v34 = v33 = event2;
            v35 = [v31 isEqualToString:v34];

            event2 = v33;
            events = v71;

            uniqueID = v68;
          }

          animatedCopy = v69;
          if (!v27)
          {
            goto LABEL_34;
          }
        }

        v36 = 0;
        goto LABEL_38;
      }

LABEL_24:
      v27 = 0;
      goto LABEL_25;
    }

    v21 = 0;
LABEL_13:
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = v21;
    goto LABEL_14;
  }

  v11 = 0;
LABEL_81:

  return v11;
}

- (id)_selectedOccurrenceView
{
  _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
  if ([_selectedOccurrenceViews count] == 1)
  {
    _selectedOccurrenceViews2 = [(DayViewController *)self _selectedOccurrenceViews];
    firstObject = [_selectedOccurrenceViews2 firstObject];
  }

  else
  {
    _selectedOccurrenceViews2 = [(DayViewController *)self dayView];
    modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
    firstObject = [_selectedOccurrenceViews2 occurrenceViewForEvent:modelSelectedEvent includeNextAndPreviousDays:0];
  }

  return firstObject;
}

- (id)_clonedViewForSelectedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v6 = objc_opt_new();
  timedDayViewContentGridSubviews = [(DayViewController *)self timedDayViewContentGridSubviews];
  [v6 addObjectsFromArray:timedDayViewContentGridSubviews];

  allDayView = [(DayViewController *)self allDayView];
  subviews = [allDayView subviews];
  [v6 addObjectsFromArray:subviews];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000F6684;
  v17 = sub_1000F6694;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F669C;
  v12[3] = &unk_1002117E8;
  v12[5] = &v13;
  v12[6] = a2;
  v12[4] = self;
  [v6 enumerateObjectsUsingBlock:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)_occurrenceViewDidEndSelection:(id)selection
{
  object = [selection object];
  occurrence = [object occurrence];
  v5 = [(LargeDayViewController *)self _clonedViewForSelectedOccurrence:occurrence];

  if (v5)
  {
    occurrence2 = [object occurrence];
    occurrence3 = [v5 occurrence];
    v8 = [occurrence2 isEqual:occurrence3];

    if (v8)
    {
      [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
    }
  }
}

- (void)_reselectedEventIfNeeded
{
  modelSelectedEvents = [(LargeDayViewController *)self modelSelectedEvents];

  if (modelSelectedEvents)
  {
    modelSelectedEvents2 = [(LargeDayViewController *)self modelSelectedEvents];
    [(LargeDayViewController *)self _selectEvents:modelSelectedEvents2 animated:0 context:0];
  }
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  eventCopy2 = event;
  v12 = [NSArray arrayWithObjects:&eventCopy count:1];

  [(LargeDayViewController *)self showEvents:v12 animated:animatedCopy showMode:mode context:contextCopy, eventCopy];
}

- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventsCopy = events;
  contextCopy = context;
  gestureController = [(DayViewController *)self gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  if ((dragGestureInProgress & 1) == 0)
  {
    [(LargeDayViewController *)self setModelSelectedEvents:eventsCopy];
    if ([eventsCopy count] == 1)
    {
      firstObject = [eventsCopy firstObject];
      v14 = firstObject;
      if (mode == 3)
      {
        [(DayViewController *)self beginEditingOccurrence:firstObject creationMethod:3];
LABEL_5:

        goto LABEL_10;
      }

      if (([firstObject isNew] & 1) == 0 && !-[LargeDayViewController _eventIntersectsDayViewControllerActiveDate:](self, "_eventIntersectsDayViewControllerActiveDate:", v14))
      {
        shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];

        if (shownEventEditViewController)
        {
          [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
        }

        startDate = [v14 startDate];
        model = [(MainViewController *)self model];
        calendar = [model calendar];
        timeZone = [calendar timeZone];
        v20 = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];
        [(DayViewController *)self selectDate:v20 animated:animatedCopy];

        goto LABEL_5;
      }
    }

    [(LargeDayViewController *)self _showEventsWithoutChangingDate:eventsCopy animated:animatedCopy showComments:mode == 2 context:contextCopy];
  }

LABEL_10:
}

- (void)_showEventsWithoutChangingDate:(id)date animated:(BOOL)animated showComments:(BOOL)comments context:(id)context
{
  commentsCopy = comments;
  animatedCopy = animated;
  dateCopy = date;
  contextCopy = context;
  gestureController = [(DayViewController *)self gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  if ((dragGestureInProgress & 1) == 0)
  {
    [(LargeDayViewController *)self _selectEvents:dateCopy animated:animatedCopy context:0];
    if (dateCopy)
    {
      if ([dateCopy count] != 1 || (objc_msgSend(dateCopy, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isNew"), v13, (v14 & 1) == 0))
      {
        [(DayViewController *)self presentDetailsForEvents:dateCopy animated:animatedCopy showComments:commentsCopy context:contextCopy];
      }
    }
  }
}

- (BOOL)didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventsCopy = events;
  v7 = eventsCopy;
  if (initiatedCopy)
  {
    if (eventsCopy)
    {
      modelSelectedEvents = [(LargeDayViewController *)self modelSelectedEvents];
      v9 = [NSSet setWithArray:modelSelectedEvents];
      v10 = [NSSet setWithArray:v7];
      v11 = [v9 isEqualToSet:v10];

      v12 = v7;
      v13 = v12;
      if (v11)
      {

        v14 = 0;
        v13 = 0;
        v15 = 0;
        if (![(LargeDayViewController *)self _selectEvents:0 animated:1 context:1])
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v15 = 1;
      if ([(LargeDayViewController *)self _selectEvents:v12 animated:1 context:1])
      {
        if ([v13 count])
        {
          v14 = 1;
          goto LABEL_28;
        }

LABEL_26:
        model = [(MainViewController *)self model];
        selectedOccurrences = [model selectedOccurrences];
        v28 = [selectedOccurrences count];

        v14 = 1;
        v15 = 1;
        if (v28)
        {
LABEL_27:
          *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 0;
          v15 = v14;
          v14 = 1;
          *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = 1;
          [(LargeDayViewController *)self setModelSelectedEvent:0];
          [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
        }

LABEL_28:
        LOBYTE(v21) = v14 & v15;
        goto LABEL_29;
      }
    }

    else
    {
      v15 = 1;
      v13 = 0;
      if ([(LargeDayViewController *)self _selectEvents:0 animated:1 context:1])
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    goto LABEL_28;
  }

  if (!eventsCopy || (-[MainViewController model](self, "model"), v16 = objc_claimAutoreleasedReturnValue(), [v16 selectedOccurrences], v17 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v17), v18 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v7), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToSet:", v19), v19, v18, v17, v16, (v20 & 1) == 0))
  {
    v21 = [(LargeDayViewController *)self _selectEvents:v7 animated:1 context:0];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v7;
    v22 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v22)
    {
LABEL_29:

      goto LABEL_30;
    }

    v23 = v22;
    v24 = *v31;
LABEL_10:
    v25 = 0;
    while (1)
    {
      if (*v31 != v24)
      {
        objc_enumerationMutation(v13);
      }

      if ([(LargeDayViewController *)self _showsEventViewControllerAsFullScreen:*(*(&v30 + 1) + 8 * v25), v30])
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v23)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }
    }

    if (!v21)
    {
      goto LABEL_30;
    }

    [(LargeDayViewController *)self _resetSplitView];
  }

  LOBYTE(v21) = 0;
LABEL_30:

  return v21;
}

- (BOOL)didSelectEvent:(id)event userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  if (event)
  {
    eventCopy = event;
    eventCopy2 = event;
    v7 = [NSArray arrayWithObjects:&eventCopy count:1];
  }

  else
  {
    v7 = 0;
  }

  eventCopy = [(LargeDayViewController *)self didSelectEvents:v7 userInitiated:initiatedCopy, eventCopy];

  return eventCopy;
}

- (BOOL)_showsEventViewControllerAsFullScreen:(id)screen
{
  isBirthday = [screen isBirthday];
  if (isBirthday)
  {
    view = [(LargeDayViewController *)self view];
    v6 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    LOBYTE(isBirthday) = v6;
  }

  return isBirthday;
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    [(LargeDayViewController *)self _editingDidCompleteWithAction:2 * (action == 2) changingDate:0 dismissEditor:1 editorToDismiss:0];
  }

  event = [controllerCopy event];
  v8 = [event refreshIfRefreshableAndNotify:1];
  participationStatus = [event participationStatus];
  eventStore = [event eventStore];
  if ([eventStore showDeclinedEvents])
  {
    calendar = [event calendar];
    source = [calendar source];
    v13 = [source sourceType] != 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = participationStatus != 3;

  if (((action == 1) & v8) != 1 || !v14 && !v13)
  {
    [controllerCopy setDelegate:0];
    [(LargeDayViewController *)self _clearSplitViewNavigationController];
    dayView = [(DayViewController *)self dayView];
    [dayView setCurrentEditor:0];

    [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
    [(LargeDayViewController *)self setModelSelectedEvent:0];
    [(LargeDayViewController *)self _selectEvent:0 animated:0 context:0];
    v16 = action == 2 ? v8 : 1;
    if ((v16 & 1) == 0)
    {
      *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = 1;
    }
  }
}

- (void)eventViewController:(id)controller requestsDisplayOfDeleteAlert:(id)alert
{
  controllerCopy = controller;
  alertCopy = alert;
  popoverPresentationController = [alertCopy popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:2];

  popoverPresentationController2 = [alertCopy popoverPresentationController];
  [popoverPresentationController2 setCanOverlapSourceViewRect:0];

  if (CalSystemSolariumEnabled())
  {
    toolbarItems = [controllerCopy toolbarItems];
    firstObject = [toolbarItems firstObject];
    popoverPresentationController3 = [alertCopy popoverPresentationController];
    [popoverPresentationController3 setBarButtonItem:firstObject];
  }

  else
  {
    navigationController = [controllerCopy navigationController];
    toolbar = [navigationController toolbar];
    [toolbar bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    popoverPresentationController4 = [alertCopy popoverPresentationController];
    [popoverPresentationController4 setSourceRect:{v15, v17, v19, v21}];

    toolbarItems = [controllerCopy navigationController];
    firstObject = [toolbarItems toolbar];
    popoverPresentationController3 = [alertCopy popoverPresentationController];
    [popoverPresentationController3 setSourceView:firstObject];
  }

  presentedViewController = [(LargeDayViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(LargeDayViewController *)self presentViewController:alertCopy animated:1 completion:0];
  }
}

- (void)scrubberDidChangeSelectedDate:(id)date
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  dateCopy = date;
  [(DayViewController *)&v5 scrubberDidChangeSelectedDate:dateCopy];
  [(LargeDayViewController *)self _selectedDateChangedToDate:dateCopy, v5.receiver, v5.super_class];
}

- (void)dayViewDidChangeSelectedDate:(id)date
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  dateCopy = date;
  [(DayViewController *)&v5 dayViewDidChangeSelectedDate:dateCopy];
  [(LargeDayViewController *)self _selectedDateChangedToDate:dateCopy, v5.receiver, v5.super_class];
}

- (void)_selectedDateChangedToDate:(id)date
{
  dateCopy = date;
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  timeZone = [calendar timeZone];
  v11 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  [(LargeDayViewController *)self updateNavigationBarDisplayedDateStringWithDate:v11];
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    *(&self->_dividerView + 2) = 0;
    [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
  }

  navigationController = [(LargeDayViewController *)self navigationController];
  extendedLaunchFinished = [navigationController extendedLaunchFinished];

  if (extendedLaunchFinished)
  {
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = 0;
    [(LargeDayViewController *)self _beginAutoScrollingAutoSelectingWithContext:0];
  }
}

- (BOOL)_eventIntersectsDayViewControllerActiveDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    calendar = [dateCopy calendar];
    if ([calendar isHidden])
    {
      v7 = 0;
    }

    else
    {
      startCalendarDate = [v5 startCalendarDate];
      v9 = [(DayViewController *)self day];
      calendarDateForEndOfDay = [v9 calendarDateForEndOfDay];
      if ([startCalendarDate compare:calendarDateForEndOfDay] == -1)
      {
        endCalendarDate = [v5 endCalendarDate];
        v12 = [(DayViewController *)self day];
        calendarDateForDay = [v12 calendarDateForDay];
        v7 = [endCalendarDate compare:calendarDateForDay] == 1;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_eventEndDateIsPassed:(id)passed
{
  endDate = [passed endDate];
  v4 = CUIKNowDate();
  v5 = [endDate compare:v4] == -1;

  return v5;
}

- (void)_autoSelectEventWithAnimatedScroll:(BOOL)scroll
{
  if (self->_userSelectedEmptySpace)
  {
    self->_selectedEventWasAutoSelected = 1;
    return;
  }

  scrollCopy = scroll;
  gestureController = [(DayViewController *)self gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  if ((dragGestureInProgress & 1) == 0)
  {
    v28 = [(DayViewController *)self day];
    if (*&self->_clearingSplitViewNavigationController && ![(LargeDayViewController *)self _isTransitioningTraitCollection])
    {
      *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 1;
      [(LargeDayViewController *)self setModelSelectedEvent:*&self->_clearingSplitViewNavigationController];
      v17 = *&self->_clearingSplitViewNavigationController;
      *&self->_clearingSplitViewNavigationController = 0;
    }

    else
    {
      shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
      event = [shownEventEditViewController event];
      isNew = [event isNew];

      if (isNew)
      {
LABEL_18:
        shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
        event2 = [shownEventEditViewController2 event];
        isNew2 = [event2 isNew];

        if ((isNew2 & 1) == 0)
        {
          model = [(MainViewController *)self model];
          selectedOccurrences = [model selectedOccurrences];
          [(LargeDayViewController *)self _showEventsWithoutChangingDate:selectedOccurrences animated:scrollCopy showComments:0 context:0];
        }

        modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];

        if (!modelSelectedEvent)
        {
          dayView = [(DayViewController *)self dayView];
          [dayView scrollToNow:scrollCopy];
        }

        return;
      }

      modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvent];

      if (modelSelectedEvent2)
      {
        modelSelectedEvent3 = [(LargeDayViewController *)self modelSelectedEvent];
        v12 = [(LargeDayViewController *)self _eventIntersectsDayViewControllerActiveDate:modelSelectedEvent3];

        if (v12)
        {
          modelSelectedEvent4 = [(LargeDayViewController *)self modelSelectedEvent];
          v14 = [(LargeDayViewController *)self _showsEventViewControllerAsFullScreen:modelSelectedEvent4];

          if (!v14)
          {
            goto LABEL_18;
          }
        }

        shownEventEditViewController3 = [(LargeDayViewController *)self shownEventEditViewController];

        if (shownEventEditViewController3)
        {
          [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
        }
      }

      *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 1;
      dayView2 = [(DayViewController *)self dayView];
      v17 = [dayView2 preferredEventsToSelectOnDate:v28];

      if ([v17 count] == 1)
      {
        firstObject = [v17 firstObject];
        v19 = [(LargeDayViewController *)self _showsEventViewControllerAsFullScreen:firstObject];

        if (v19)
        {

          v17 = 0;
        }
      }

      model2 = [(MainViewController *)self model];
      [model2 setSelectedOccurrences:v17];
    }

    goto LABEL_18;
  }
}

- (BOOL)canSpaciallyEditOccurrences
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    return 0;
  }

  presentedViewController = [(LargeDayViewController *)self presentedViewController];
  v4 = presentedViewController == 0;

  return v4;
}

- (id)spacialEditUpIncrement
{
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setMinute:-15];

  return v2;
}

- (id)spacialEditDownIncrement
{
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setMinute:15];

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
  toDateCopy = toDate;
  dateCopy = date;
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  v10 = [calendar isDate:dateCopy inSameDayAsDate:toDateCopy];

  if ((v10 & 1) == 0)
  {
    modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
    [(LargeDayViewController *)self showEvent:modelSelectedEvent animated:1 showMode:1 context:0];
  }
}

- (void)showReminderDetail:(id)detail
{
  detailCopy = detail;
  model = [(MainViewController *)self model];
  [model setSelectedOccurrence:detailCopy];

  v5 = [(LargeDayViewController *)self showDetailViewControllerForEvent:detailCopy context:0 animated:1 keepNavigationStack:1];
}

- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)controller
{
  view = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  return v4;
}

- (BOOL)eventViewDelegateShouldCreateOwnEditViewController:(id)controller
{
  view = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  return v4;
}

- (void)_setModal:(BOOL)modal
{
  if (*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1) != modal)
  {
    modalCopy = modal;
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1) = modal;
    dayView = [(DayViewController *)self dayView];
    [dayView setDisableGestureDayChange:modalCopy];
  }
}

- (void)showEditViewController:(id)controller
{
  controllerCopy = controller;
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (!shownEventEditViewController || (v6 = shownEventEditViewController, -[LargeDayViewController shownEventEditViewController](self, "shownEventEditViewController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 event], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(controllerCopy, "event"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v6, v8 != v9))
  {
    *(&self->_dividerView + 2) = 2;
    view = [(LargeDayViewController *)self view];
    v11 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    if (v11)
    {
      if (controllerCopy)
      {
        [controllerCopy setInternalEditViewDelegate:self];
LABEL_11:
        [controllerCopy setModalPresentationDelegate:self];
        shownEventViewController = [(MainViewController *)self shownEventViewController];
        [shownEventViewController dismissViewControllerAnimated:0 completion:0];

        shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
        presentingViewController = [shownEventEditViewController2 presentingViewController];
        [presentingViewController dismissViewControllerAnimated:0 completion:0];

        navigationController = [(LargeDayViewController *)self navigationController];
        [navigationController presentAdaptiveModalViewController:controllerCopy animated:1 completion:0];

        goto LABEL_12;
      }

      shownEventViewController2 = [(MainViewController *)self shownEventViewController];
      event = [shownEventViewController2 event];

      if (event)
      {
LABEL_10:
        controllerCopy = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:event creationMethod:0 viewStart:0 eventEditViewDelegate:self];

        goto LABEL_11;
      }

      modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
      if (modelSelectedEvent)
      {
        event = modelSelectedEvent;
        goto LABEL_10;
      }

      v25 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315138;
        v27 = "[LargeDayViewController showEditViewController:]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%s] couldn't get a valid event.", &v26, 0xCu);
      }

      controllerCopy = 0;
    }

    else
    {
      event2 = [controllerCopy event];
      [(LargeDayViewController *)self _selectEvent:event2 animated:0 context:0];

      [(LargeDayViewController *)self _customizeEventEditorForSplitViewAppearance:controllerCopy];
      [(LargeDayViewController *)self _clearSplitViewNavigationController];
      managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
      [managedNavigationController showViewController:controllerCopy sender:self animated:1 completion:0];

      toolbarItems = [controllerCopy toolbarItems];
      v15 = [toolbarItems count] == 0;
      managedNavigationController2 = [(LargeDayViewController *)self managedNavigationController];
      [managedNavigationController2 setToolbarHidden:v15];

      dayView = [(DayViewController *)self dayView];
      [dayView setCurrentEditor:controllerCopy];

      [(LargeDayViewController *)self _setUpGesturesAndModalMode];
    }
  }

LABEL_12:
}

- (BOOL)eventViewControllerShouldHideDeleteButton
{
  view = [(LargeDayViewController *)self view];
  v3 = EKUICurrentWindowInterfaceParadigm() == 8;

  return v3;
}

- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 4) = 1;
  view = [(LargeDayViewController *)self view];
  v7 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v7)
  {
    [(LargeDayViewController *)self showEditViewController:viewControllerCopy];
  }
}

- (void)eventViewControllerWillBeginEditingEvent:(id)event
{
  *(&self->_dividerView + 2) = 2;
  view = [(LargeDayViewController *)self view];
  v5 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (!v5)
  {
    modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];

    if (modelSelectedEvent)
    {
      [(LargeDayViewController *)self _setUpGesturesAndModalMode];
    }
  }

  navigationController = [(LargeDayViewController *)self navigationController];
  todayBarButtonItem = [navigationController todayBarButtonItem];
  [todayBarButtonItem setEnabled:0];
}

- (BOOL)eventViewControllerEditButtonTemporarilyDisabled:(id)disabled
{
  gestureController = [(DayViewController *)self gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  return dragGestureInProgress;
}

- (void)_setUpGesturesAndModalMode
{
  gestureController = [(DayViewController *)self gestureController];
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
  [gestureController liftUpOccurrenceForEditingEvent:modelSelectedEvent];

  [(LargeDayViewController *)self _setModal:1];
}

- (void)eventViewControllerDidBeginEditingEventWithEditViewController:(id)controller
{
  controllerCopy = controller;
  view = [(LargeDayViewController *)self view];
  v5 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (!v5)
  {
    [(LargeDayViewController *)self _customizeEventEditorForSplitViewAppearance:controllerCopy];
    dayView = [(DayViewController *)self dayView];
    [dayView setCurrentEditor:controllerCopy];
  }

  navigationController = [(LargeDayViewController *)self navigationController];
  todayBarButtonItem = [navigationController todayBarButtonItem];
  [todayBarButtonItem setEnabled:0];
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
  v19.receiver = self;
  v19.super_class = LargeDayViewController;
  [(DayViewController *)&v19 eventEditViewController:controllerCopy didCompleteWithAction:action dismissController:0];
  if (!modelSelectedEvent && *(&self->_dividerView + 2) == 1 && *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2))
  {
    [(LargeDayViewController *)self setModelSelectedEvent:0];
  }

  [(LargeDayViewController *)self _editingDidCompleteWithAction:action changingDate:0 dismissEditor:1 editorToDismiss:controllerCopy];
  if (handlerCopy)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000F85F8;
    v16 = &unk_10020EBC8;
    selfCopy = self;
    v18 = handlerCopy;
    v11 = objc_retainBlock(&v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(LargeDayViewController *)self managedNavigationController:v13];
  [(LargeDayViewController *)self _splitViewNavigationController:v12 willShowViewController:0 animated:1 completion:v11];
}

- (void)eventViewControllerWillFinishEditingEvent:(id)event deleted:(BOOL)deleted
{
  if (deleted)
  {
    shownEventViewController = [(MainViewController *)self shownEventViewController];
    [shownEventViewController setEditorHideTransition:0];

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(LargeDayViewController *)self _editingDidCompleteWithAction:v6 changingDate:0 dismissEditor:0 editorToDismiss:0];
}

- (void)_editingDidCompleteWithAction:(int64_t)action changingDate:(BOOL)date dismissEditor:(BOOL)editor editorToDismiss:(id)dismiss
{
  editorCopy = editor;
  dismissCopy = dismiss;
  v11 = date || *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5);
  gestureController = [(DayViewController *)self gestureController];
  [gestureController endForcedStart:0];

  dayView = [(DayViewController *)self dayView];
  [dayView externallyEndedGestureDragging];

  dayView2 = [(DayViewController *)self dayView];
  [dayView2 setGestureOccurrenceSuperview:0];

  [(LargeDayViewController *)self _setModal:0];
  _selectedOccurrenceFrontmostClonedViews = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  if ([_selectedOccurrenceFrontmostClonedViews count] == 1)
  {
    firstObject = [_selectedOccurrenceFrontmostClonedViews firstObject];
    if (firstObject)
    {
      v17 = firstObject;
      [firstObject setAlpha:1.0];
      [v17 setDimmed:0];
      [(LargeDayViewController *)self _adjustSelectedOccurrences];
    }
  }

  if (editorCopy)
  {
    managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
    v19 = managedNavigationController;
    if (dismissCopy)
    {
      selfCopy = [dismissCopy presentingViewController];
    }

    else
    {
      presentedViewController = [(LargeDayViewController *)managedNavigationController presentedViewController];

      if (presentedViewController)
      {
LABEL_12:
        presentedViewController2 = [(LargeDayViewController *)v19 presentedViewController];
        v24 = objc_opt_class();

        if (dismissCopy || ([(LargeDayViewController *)self shownEventEditViewController], (v29 = objc_claimAutoreleasedReturnValue()) != 0) && (v30 = v29, v31 = objc_opt_class(), v30, v24 == v31))
        {
          view = [(LargeDayViewController *)self view];
          v26 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

          if (v26)
          {
            v27 = !v11;
            v28 = 9;
          }

          else
          {
            shownEventViewController = [(MainViewController *)self shownEventViewController];
            v27 = shownEventViewController != 0 && !v11;

            v28 = 6;
          }

          if (v27)
          {
            v33 = v28;
          }

          else
          {
            v33 = 0;
          }

          self->_modalEditing = 1;
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000F8B4C;
          v49[3] = &unk_10020EB00;
          v49[4] = self;
          [(LargeDayViewController *)v19 dismissViewControllerWithTransition:v33 completion:v49];
        }

        goto LABEL_24;
      }

      selfCopy = self;
    }

    v21 = selfCopy;

    v19 = v21;
    goto LABEL_12;
  }

LABEL_24:
  if (*(&self->_dividerView + 2) == 2 && action <= 2)
  {
    *(&self->_dividerView + 2) = dword_1001F85F8[action];
  }

  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];

  if (!modelSelectedEvent)
  {
    goto LABEL_30;
  }

  modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvent];
  isNew = [modelSelectedEvent2 isNew];

  if (!action && (isNew & 1) != 0)
  {
    goto LABEL_30;
  }

  if (action == 2 || v11)
  {
    if (action == 2)
    {
LABEL_30:
      if (*(&self->_dividerView + 2))
      {
        [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
        [(LargeDayViewController *)self setModelSelectedEvent:0];
      }
    }

LABEL_32:
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = 1;
    goto LABEL_33;
  }

  if (*(&self->_dividerView + 2) != 2)
  {
    goto LABEL_32;
  }

  shownEventViewController2 = [(MainViewController *)self shownEventViewController];
  if (shownEventViewController2 && (v41 = shownEventViewController2, -[MainViewController shownEventViewController](self, "shownEventViewController"), v42 = objc_claimAutoreleasedReturnValue(), [v42 event], v43 = objc_claimAutoreleasedReturnValue(), -[LargeDayViewController modelSelectedEvent](self, "modelSelectedEvent"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "isEqual:", v44), v44, v43, v42, v41, (v45 & 1) != 0))
  {
    if (action)
    {
      goto LABEL_33;
    }

    shownEventViewController3 = [(MainViewController *)self shownEventViewController];
    [shownEventViewController3 setNeedsReload];
  }

  else
  {
    shownEventViewController3 = [(LargeDayViewController *)self modelSelectedEvent];
    [(LargeDayViewController *)self showEvent:shownEventViewController3 animated:1 showMode:1 context:0];
  }

LABEL_33:
  dayView3 = [(DayViewController *)self dayView];
  [dayView3 setCurrentEditor:0];

  modelSelectedEvent3 = [(LargeDayViewController *)self modelSelectedEvent];
  if (!v11)
  {
    switch(action)
    {
      case 0:
        dayView4 = [(DayViewController *)self dayView];
        [dayView4 editorDidCancelEditingEvent:modelSelectedEvent3];
        goto LABEL_48;
      case 2:
        dayView4 = [(DayViewController *)self dayView];
        [dayView4 editorDidDeleteEvent:modelSelectedEvent3];
        goto LABEL_48;
      case 1:
        dayView4 = [(DayViewController *)self dayView];
        [dayView4 editorDidSaveEvent:modelSelectedEvent3];
LABEL_48:

        break;
    }
  }

  navigationController = [(LargeDayViewController *)self navigationController];
  todayBarButtonItem = [navigationController todayBarButtonItem];
  [todayBarButtonItem setEnabled:1];
}

- (void)eventViewControllerModifiedEventWithoutEditing:(id)editing
{
  event = [editing event];
  [(LargeDayViewController *)self setModelSelectedEvent:event];
}

- (void)handleGestureCommittingOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  [(LargeDayViewController *)self showEvent:occurrenceCopy animated:0 showMode:1 context:0];
  objc_initWeak(&location, self);
  objc_initWeak(&from, *(&self->_lastEventShowed + 2));
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000F8D48;
  v11 = &unk_100211810;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  v5 = objc_retainBlock(&v8);
  v6 = [(LargeDayViewController *)self shownEventEditViewController:v8];

  if (v6)
  {
    (v5[2])(v5);
  }

  else
  {
    [*(&self->_lastEventShowed + 2) setHidden:1];
    managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
    [managedNavigationController enqueueBlock:v5];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (BOOL)comparePointersOfArray:(id)array withArray:(id)withArray
{
  arrayCopy = array;
  withArrayCopy = withArray;
  v7 = withArrayCopy;
  if (!(arrayCopy | withArrayCopy))
  {
    goto LABEL_2;
  }

  if ((arrayCopy == 0) != (withArrayCopy == 0) || (v9 = [arrayCopy count], v9 != objc_msgSend(v7, "count")))
  {
    v8 = 0;
    goto LABEL_12;
  }

  if ([arrayCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [arrayCopy objectAtIndex:v10];
      v12 = [v7 objectAtIndex:v10];

      v8 = v11 == v12;
      if (!v8)
      {
        break;
      }

      ++v10;
    }

    while (v10 < [arrayCopy count]);
  }

  else
  {
LABEL_2:
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (void)dataReloadedWithTrigger:(int)trigger
{
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];

  if (!modelSelectedEvent)
  {
    return;
  }

  dayView = [(DayViewController *)self dayView];
  modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvent];
  v22 = [dayView occurrenceViewForEvent:modelSelectedEvent2];

  occurrences = [v22 occurrences];
  if (v22)
  {
    modelSelectedEvents = [(LargeDayViewController *)self modelSelectedEvents];
    v10 = [(LargeDayViewController *)self comparePointersOfArray:occurrences withArray:modelSelectedEvents];

    if (v10)
    {
      [(LargeDayViewController *)self setModelSelectedEvents:occurrences];
    }
  }

  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  v16 = !shownEventEditViewController || ([shownEventEditViewController event], v13 = v12 = shownEventEditViewController;
  shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];
  v18 = shownExpandedReminderStackViewController;
  if (shownExpandedReminderStackViewController)
  {
    events = [shownExpandedReminderStackViewController events];
    v20 = [(LargeDayViewController *)self comparePointersOfArray:occurrences withArray:events];

    if (v20)
    {
      if (*(&self->_dividerView + 2) != 2 || !v16)
      {
        goto LABEL_16;
      }
    }

    else if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v16)
  {
LABEL_15:
    modelSelectedEvents2 = [(LargeDayViewController *)self modelSelectedEvents];
    [(LargeDayViewController *)self _selectEvents:modelSelectedEvents2 animated:0 context:2 * (trigger == 1)];
  }

LABEL_16:
}

- (void)_eventStoreChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:EKEventStoreChangeTypeUserInfoKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue != 2)
  {
    modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
    if (modelSelectedEvent)
    {
      v8 = modelSelectedEvent;
      modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvent];
      v10 = [modelSelectedEvent2 refreshIfRefreshableAndNotify:1];

      if ((v10 & 1) == 0)
      {
        [(LargeDayViewController *)self setModelSelectedEvent:0];

        [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:1];
      }
    }
  }
}

- (void)displayedOccurrencesChangedWithTrigger:(int)trigger
{
  self->_userInteractedWithSplitviewPane = 1;
  [(LargeDayViewController *)self dataReloadedWithTrigger:?];
  view = [(LargeDayViewController *)self view];
  window = [view window];
  if (window)
  {
    v6 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6);

    if (v6 == 1)
    {

      [(LargeDayViewController *)self _beginAutoScrollingAutoSelectingWithContext:2 * (trigger == 1)];
    }
  }

  else
  {
  }
}

- (void)_beginAutoScrollingAutoSelectingWithContext:(int)context
{
  v3 = *&context;
  modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
  v6 = [(LargeDayViewController *)self _eventIntersectsDayViewControllerActiveDate:modelSelectedEvent];

  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2))
  {
    if (!v6 || *&self->_clearingSplitViewNavigationController)
    {
      goto LABEL_4;
    }

    shownEventViewController = [(MainViewController *)self shownEventViewController];
    if (shownEventViewController && (v10 = shownEventViewController, -[MainViewController shownEventViewController](self, "shownEventViewController"), v11 = objc_claimAutoreleasedReturnValue(), [v11 event], v12 = objc_claimAutoreleasedReturnValue(), -[LargeDayViewController modelSelectedEvent](self, "modelSelectedEvent"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v11, v10, v14))
    {
      modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvent];
      [(LargeDayViewController *)self _selectEvent:modelSelectedEvent2 animated:0 context:v3];
    }

    else
    {
      shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];
      if (!shownExpandedReminderStackViewController || (v17 = shownExpandedReminderStackViewController, -[MainViewController shownExpandedReminderStackViewController](self, "shownExpandedReminderStackViewController"), v18 = objc_claimAutoreleasedReturnValue(), [v18 events], v19 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v19), v20 = objc_claimAutoreleasedReturnValue(), -[LargeDayViewController modelSelectedEvents](self, "modelSelectedEvents"), v21 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v21), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v20, "isEqualToSet:", v22), v22, v21, v20, v19, v18, v17, !v23))
      {
LABEL_4:
        [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6)];
        goto LABEL_5;
      }

      modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvents];
      [(LargeDayViewController *)self _selectEvents:modelSelectedEvent2 animated:0 context:v3];
    }
  }

LABEL_5:
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  _contentUnavailableConfiguration = [managedNavigationController _contentUnavailableConfiguration];

  if (_contentUnavailableConfiguration)
  {

    [(LargeDayViewController *)self updateNoContentConfiguration];
  }
}

- (void)updateNoContentConfiguration
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  v5 = [selectedOccurrences count];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"num_selected_events_large_day_view" value:&stru_1002133B8 table:0];
    v15 = [NSString localizedStringWithFormat:v7, v5];
  }

  else
  {
    dayView = [(DayViewController *)self dayView];
    currentDayContainsOccurrences = [dayView currentDayContainsOccurrences];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v10;
    if (currentDayContainsOccurrences)
    {
      v11 = @"No Event Selected";
    }

    else
    {
      v11 = @"No Events";
    }

    v15 = [v10 localizedStringForKey:v11 value:&stru_1002133B8 table:0];
  }

  v12 = +[UIContentUnavailableConfiguration emptyConfiguration];
  [v12 setText:v15];
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController _setContentUnavailableConfiguration:v12];

  managedNavigationController2 = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController2 setNavigationBarHidden:1 animated:0];
}

- (void)clearNoContentConfiguration
{
  managedNavigationController = [(LargeDayViewController *)self managedNavigationController];
  [managedNavigationController _setContentUnavailableConfiguration:0];
}

- (BOOL)performModalDialogsIfNeededWithContinue:(id)continue
{
  continueCopy = continue;
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (shownEventEditViewController && (modalEditing = self->_modalEditing, shownEventEditViewController, !modalEditing) && (-[LargeDayViewController shownEventEditViewController](self, "shownEventEditViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 willPresentDialogOnSave], v7, v8))
  {
    v9 = 1;
    self->_modalEditing = 1;
    shownEventEditViewController2 = [(LargeDayViewController *)self shownEventEditViewController];
    [shownEventEditViewController2 completeAndSaveWithContinueBlock:continueCopy];

    self->_modalEditing = 0;
  }

  else
  {
    continueCopy[2](continueCopy);
    v9 = 0;
  }

  return v9;
}

- (id)shownEventEditViewController
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  shownEventEditViewController = [(MainViewController *)&v5 shownEventEditViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([shownEventEditViewController presentedOverWholeApp])
  {
    v3 = 0;
  }

  else
  {
    v3 = shownEventEditViewController;
  }

  return v3;
}

- (void)_dismissEditorAndSaveIfPossibleWhileChangingDate:(BOOL)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (!shownEventEditViewController || self->_modalEditing)
  {
    goto LABEL_23;
  }

  v24 = shownEventEditViewController;
  if ([shownEventEditViewController hasUnsavedChanges])
  {
    existsInStore = 0;
  }

  else
  {
    event = [v24 event];
    existsInStore = [event existsInStore];
  }

  if ([v24 willPresentDialogOnSave] & 1) != 0 || (existsInStore)
  {
    self->_modalEditing = 1;
    [v24 setIgnoreUnsavedChanges:1];
    [v24 cancelEditing];
    [(LargeDayViewController *)self _editingDidCompleteWithAction:0 changingDate:dateCopy dismissEditor:1 editorToDismiss:0];
    [v24 setIgnoreUnsavedChanges:0];
LABEL_22:
    shownEventEditViewController = v24;
    goto LABEL_23;
  }

  if (animatedCopy)
  {
    shownEventViewController = [(MainViewController *)self shownEventViewController];
    if (shownEventViewController)
    {
      v11 = shownEventViewController;
      modelSelectedEvent = [(LargeDayViewController *)self modelSelectedEvent];
      if (modelSelectedEvent)
      {
        v13 = modelSelectedEvent;
        shownEventViewController2 = [(MainViewController *)self shownEventViewController];
        event2 = [shownEventViewController2 event];
        uniqueId = [event2 uniqueId];
        modelSelectedEvent2 = [(LargeDayViewController *)self modelSelectedEvent];
        uniqueId2 = [modelSelectedEvent2 uniqueId];
        v23 = [uniqueId isEqualToString:uniqueId2];

        if (v23)
        {
          v19 = 1;
          goto LABEL_16;
        }
      }

      else
      {
      }
    }
  }

  shownEventViewController3 = [(MainViewController *)self shownEventViewController];
  [shownEventViewController3 setEditorHideTransition:0];

  v19 = 0;
LABEL_16:
  v21 = 1;
  if (!dateCopy)
  {
    v21 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5);
  }

  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5) = v21 & 1;
  self->_modalEditing = 1;
  if (*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5))
  {
    *(&self->_dividerView + 2) = 0;
  }

  [v24 completeAndSaveWithContinueBlock:0];
  shownEventEditViewController = v24;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5) = 0;
  self->_modalEditing = 0;
  if ((v19 & 1) == 0)
  {
    shownEventViewController4 = [(MainViewController *)self shownEventViewController];
    [shownEventViewController4 setEditorHideTransition:6];

    goto LABEL_22;
  }

LABEL_23:
}

- (void)didBeginMovingOccurrenceWithGesture
{
  _selectedOccurrenceFrontmostClonedViews = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  if ([_selectedOccurrenceFrontmostClonedViews count] == 1)
  {
    _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
    v4 = [_selectedOccurrenceViews count];

    if (v4 == 1)
    {
      firstObject = [_selectedOccurrenceFrontmostClonedViews firstObject];
      [firstObject setAlpha:0.0];

      _selectedOccurrenceViews2 = [(DayViewController *)self _selectedOccurrenceViews];
      firstObject2 = [_selectedOccurrenceViews2 firstObject];
      [firstObject2 setAlpha:1.0];
    }
  }
}

- (void)handleCloseKeyCommand
{
  shownEventEditViewController = [(LargeDayViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
  }

  else
  {
    shownEventViewController = [(MainViewController *)self shownEventViewController];

    if (shownEventViewController)
    {

      [(LargeDayViewController *)self _selectEvent:0 animated:1 context:0];
    }
  }
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  v6 = [NSSet setWithArray:selectedOccurrences];

  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
  gestureController = [(DayViewController *)self gestureController];
  event = [gestureController event];
  v9 = [v6 containsObject:event];

  if ((v9 & 1) == 0)
  {
    gestureController2 = [(DayViewController *)self gestureController];
    [gestureController2 endForcedStart:0];
  }

  v37 = 0u;
  v38 = 0u;
  v11 = [v6 count] != 0;
  v39 = 0u;
  v40 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![*(*(&v37 + 1) + 8 * i) isReminderIntegrationEvent])
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if ([v12 count] != 1 && !v11 && !self->_modalEditing)
  {
    [(LargeDayViewController *)self _selectEvent:0 animated:0 context:0];
LABEL_20:
    [(LargeDayViewController *)self updateNoContentConfiguration];
    goto LABEL_21;
  }

  shownEventViewController = [(MainViewController *)self shownEventViewController];
  if (shownEventViewController || ([(LargeDayViewController *)self shownEventEditViewController], (shownEventViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_21;
  }

  shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];

  if (!shownExpandedReminderStackViewController)
  {
    goto LABEL_20;
  }

LABEL_21:
  v18 = [v12 mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
  v20 = [_selectedOccurrenceViews countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(_selectedOccurrenceViews);
        }

        v24 = *(*(&v33 + 1) + 8 * j);
        occurrence = [v24 occurrence];

        if (occurrence)
        {
          occurrence2 = [v24 occurrence];
          [v18 removeObject:occurrence2];
        }
      }

      v21 = [_selectedOccurrenceViews countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  gestureController3 = [(DayViewController *)self gestureController];
  event2 = [gestureController3 event];

  if (event2)
  {
    gestureController4 = [(DayViewController *)self gestureController];
    event3 = [gestureController4 event];
    [v18 removeObject:event3];
  }

  allObjects = [v18 allObjects];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:allObjects animated:1 autoScroll:0 resetSelection:0];
}

@end
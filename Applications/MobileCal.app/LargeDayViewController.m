@interface LargeDayViewController
- (BOOL)_allEventsHaveSameAddressWithFirstArray:(id)a3 secondArray:(id)a4;
- (BOOL)_eventEndDateIsPassed:(id)a3;
- (BOOL)_eventIntersectsDayViewControllerActiveDate:(id)a3;
- (BOOL)_eventViewControllerForModelSelectedEventIsAlreadyShown;
- (BOOL)_isTransitioningTraitCollection;
- (BOOL)_selectEvent:(id)a3 animated:(BOOL)a4 context:(int)a5;
- (BOOL)_selectEvents:(id)a3 animated:(BOOL)a4 context:(int)a5;
- (BOOL)_showsEventViewControllerAsFullScreen:(id)a3;
- (BOOL)allowChangingDate;
- (BOOL)canSpaciallyEditOccurrences;
- (BOOL)comparePointersOfArray:(id)a3 withArray:(id)a4;
- (BOOL)dayViewControllerShouldEndGestureEditingOnTap:(id)a3;
- (BOOL)didSelectEvent:(id)a3 userInitiated:(BOOL)a4;
- (BOOL)didSelectEvents:(id)a3 userInitiated:(BOOL)a4;
- (BOOL)eventViewControllerEditButtonTemporarilyDisabled:(id)a3;
- (BOOL)eventViewControllerShouldHideDeleteButton;
- (BOOL)eventViewDelegateShouldCreateOwnEditViewController:(id)a3;
- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)a3;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (BOOL)performModalDialogsIfNeededWithContinue:(id)a3;
- (BOOL)shouldAdaptEventViewControllers;
- (BOOL)shouldInvalidateManagedNavigationControllerOnPresentationDismissal;
- (BOOL)shouldJournalMainViewControllerParent;
- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder;
- (Class)managedNavigationControllerType;
- (EKEvent)modelSelectedEvent;
- (LargeDayViewController)initWithDay:(id)a3 model:(id)a4 window:(id)a5;
- (NSArray)modelSelectedEvents;
- (double)_splitViewWidth;
- (double)_totalWidth;
- (double)detailsLeftInsetAdjustment;
- (double)detailsRightInsetAdjustment;
- (id)_clonedViewForSelectedOccurrence:(id)a3;
- (id)_fallbackSizingContextWindow;
- (id)_selectedOccurrenceView;
- (id)cellFactory;
- (id)managedNavigationController;
- (id)selectedCopyViewForOccurrenceView:(id)a3;
- (id)showDetailViewControllerForEvent:(id)a3 context:(id)a4 animated:(BOOL)a5 keepNavigationStack:(BOOL)a6;
- (id)showDetailViewControllerForEvents:(id)a3 animated:(BOOL)a4;
- (id)shownEventEditViewController;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (int64_t)orientationForSize:(CGSize)a3;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (int64_t)viewInterfaceOrientation;
- (void)_adjustSelectedOccurrences;
- (void)_autoSelectEventWithAnimatedScroll:(BOOL)a3;
- (void)_beginAutoScrollingAutoSelectingWithContext:(int)a3;
- (void)_clearSplitViewNavigationController;
- (void)_configureSidebarConfigurationOfManagedNavigationController;
- (void)_createSplitView;
- (void)_dismissEditorAndSaveIfPossibleWhileChangingDate:(BOOL)a3 animated:(BOOL)a4;
- (void)_editingDidCompleteWithAction:(int64_t)a3 changingDate:(BOOL)a4 dismissEditor:(BOOL)a5 editorToDismiss:(id)a6;
- (void)_eventStoreChanged:(id)a3;
- (void)_layOutSplitDividerFrame;
- (void)_layoutDayArea;
- (void)_layoutDayViewPane;
- (void)_layoutEventDetailsPane;
- (void)_layoutForSplitViews;
- (void)_occurrenceViewDidEndSelection:(id)a3;
- (void)_reselectedEventIfNeeded;
- (void)_resetSplitView;
- (void)_selectNextEventInForwardDirection:(BOOL)a3;
- (void)_selectedDateChangedToDate:(id)a3;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_setDayViewToSplitViewVisibleState;
- (void)_setModal:(BOOL)a3;
- (void)_setSplitViewPosition;
- (void)_setUpCustomAppearances;
- (void)_setUpGesturesAndModalMode;
- (void)_showEventsWithoutChangingDate:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 context:(id)a6;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4;
- (void)_splitViewNavigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_teardownSidebarConfigurationOfManagedNavigationController;
- (void)asyncLoadAndLayoutCompleted;
- (void)clearNoContentConfiguration;
- (void)dataReloadedWithTrigger:(int)a3;
- (void)dayViewDidChangeSelectedDate:(id)a3;
- (void)dealloc;
- (void)didBeginMovingOccurrenceWithGesture;
- (void)displayedOccurrencesChangedWithTrigger:(int)a3;
- (void)endedHorizontalDeceleration;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestsDisplayOfDeleteAlert:(id)a4;
- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5;
- (void)eventViewControllerDidBeginEditingEventWithEditViewController:(id)a3;
- (void)eventViewControllerModifiedEventWithoutEditing:(id)a3;
- (void)eventViewControllerWillBeginEditingEvent:(id)a3;
- (void)eventViewControllerWillFinishEditingEvent:(id)a3 deleted:(BOOL)a4;
- (void)finishedPinchingDayView;
- (void)handleCloseKeyCommand;
- (void)handleGestureCommittingOccurrence:(id)a3;
- (void)isPinchingDayView;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)occurrencesWereSpaciallyEditedFromDate:(id)a3 toDate:(id)a4;
- (void)scrubberDidChangeSelectedDate:(id)a3;
- (void)setModelSelectedEvent:(id)a3;
- (void)setModelSelectedEvents:(id)a3;
- (void)setupUIForTraitCollection:(id)a3;
- (void)showEditViewController:(id)a3;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showReminderDetail:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 keepNavigationStack:(BOOL)a6 completion:(id)a7;
- (void)updateNavigationBarDisplayedDateString;
- (void)updateNavigationBarDisplayedDateStringWithDate:(id)a3;
- (void)updateNoContentConfiguration;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wasAllowedToChangeDate;
- (void)wasBlockedFromChangingDate:(id)a3;
@end

@implementation LargeDayViewController

- (LargeDayViewController)initWithDay:(id)a3 model:(id)a4 window:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = LargeDayViewController;
  v11 = [(DayViewController *)&v21 initWithDay:v8 model:v9 window:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [(DayViewController *)v11 dayView];
    [v13 setGutterWidth:0.0];

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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(LargeDayViewController *)self isViewLoaded])
  {
    v8 = [(LargeDayViewController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      if (EKUIIsSizeExtended())
      {
        v10 = [(DayViewController *)self dayScrubberController];
        v11 = [v10 view];
        v12 = [v11 preservesSuperviewLayoutMargins];

        if ((v12 & 1) == 0)
        {
          v13 = [(DayViewController *)self dayScrubberController];
          v14 = [v13 view];
          [v14 setPreservesSuperviewLayoutMargins:1];

          v15 = [(DayViewController *)self dayScrubberController];
          v16 = [v15 view];
          [v16 setNeedsLayout];
        }
      }

      v17.receiver = self;
      v17.super_class = LargeDayViewController;
      [(DayViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  v3 = [(DayViewController *)self dayView];
  [v3 setShouldAutoscrollAfterAppearance:0];
}

- (BOOL)_isTransitioningTraitCollection
{
  v3 = [(LargeDayViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(LargeDayViewController *)self navigationController];
    v5 = [v4 performSelector:"isTransitioningTraitCollection"] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)modelSelectedEvents
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 selectedOccurrences];

  return v3;
}

- (EKEvent)modelSelectedEvent
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 selectedOccurrences];
  v4 = [v3 firstObject];

  return v4;
}

- (void)setModelSelectedEvent:(id)a3
{
  v8 = a3;
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedOccurrence];

  if (v5 == v8)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 isEqual:v8];
  }

  v7 = [(MainViewController *)self model];
  [v7 setSelectedOccurrence:v8 forceChange:v6];

  if (!v8)
  {
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 0;
  }
}

- (BOOL)_allEventsHaveSameAddressWithFirstArray:(id)a3 secondArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  Mutable = CFSetCreateMutable(0, 0, 0);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v5;
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
  v14 = v6;
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

- (void)setModelSelectedEvents:(id)a3
{
  v13 = a3;
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedOccurrences];
  v6 = [(LargeDayViewController *)self _allEventsHaveSameAddressWithFirstArray:v5 secondArray:v13];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(MainViewController *)self model];
    v9 = [v8 selectedOccurrences];
    v10 = [NSSet setWithArray:v9];
    v11 = [NSSet setWithArray:v13];
    v7 = [v10 isEqualToSet:v11];
  }

  v12 = [(MainViewController *)self model];
  [v12 setSelectedOccurrences:v13 forceChange:v7];

  if (!v13)
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
  v3 = [(LargeDayViewController *)self shownEventEditViewController];
  v4 = [v3 willPresentDialogOnSave];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = LargeDayViewController;
  return [(DayViewController *)&v6 allowChangingDate];
}

- (void)wasAllowedToChangeDate
{
  v2 = [(LargeDayViewController *)self shownEventEditViewController];
  [v2 completeAndSaveWithContinueBlock:0];
}

- (void)wasBlockedFromChangingDate:(id)a3
{
  v7 = a3;
  v4 = [(LargeDayViewController *)self shownEventEditViewController];
  v5 = [v4 willPresentDialogOnSave];

  if (v5)
  {
    v6 = [(LargeDayViewController *)self shownEventEditViewController];
    [v6 completeAndSaveWithContinueBlock:v7];
  }
}

- (void)isPinchingDayView
{
  v3 = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7) setReduceLayoutProcessingForAnimation:1];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [(DayViewController *)self dayView];
  v9 = [v8 currentDayView];
  v10 = [v9 dayContent];
  [v10 layoutIfNeeded];

  [(LargeDayViewController *)self _adjustSelectedOccurrences];
}

- (void)finishedPinchingDayView
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedOccurrences];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v4 animated:0 autoScroll:1 resetSelection:1];

  [(LargeDayViewController *)self _adjustSelectedOccurrences];
}

- (void)_adjustSelectedOccurrences
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(DayViewController *)self _selectedOccurrenceViews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [v7 selectedCopy];
        [v7 frame];
        [v8 setFrame:?];
        [v7 travelTimeSubviewHeightInPoints];
        [v8 setTravelTimeSubviewHeightInPoints:?];
        [v7 bottomPinningProximity];
        [v8 setBottomPinningProximity:?];
        [v7 topPinningProximity];
        [v8 setTopPinningProximity:?];
        [v8 requestContentIfNeeded:16 completion:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)_eventViewControllerForModelSelectedEventIsAlreadyShown
{
  v3 = [(LargeDayViewController *)self modelSelectedEvents];
  v4 = [(MainViewController *)self shownEventViewController];
  v5 = [v4 event];

  v6 = [(MainViewController *)self shownExpandedReminderStackViewController];
  v7 = [v6 events];

  if ([v3 count] == 1)
  {
    v8 = [v3 firstObject];
    v9 = [v5 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSSet setWithArray:v3];
  v11 = [NSSet setWithArray:v7];
  v12 = [v10 isEqualToSet:v11];

  if (v3 && ((v9 | v12) & 1) != 0 && !self->_changingDate)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v13 = [(LargeDayViewController *)self managedNavigationController];
    v14 = [v13 enqueuedViewControllers];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v25 = v7;
      v26 = v5;
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
            v21 = [v20 event];
            if ([v3 count] == 1)
            {
              v22 = [v3 firstObject];
              v23 = [v21 isEqual:v22];

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
      v7 = v25;
      v5 = v26;
    }
  }

  return v16;
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 keepNavigationStack:(BOOL)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(MainViewController *)self shownEventViewController];

  if (!a6)
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
        v20 = [v12 event];
        v21 = [v20 title];
        *buf = 136315394;
        v60 = "[LargeDayViewController showViewController:sender:animated:keepNavigationStack:completion:]";
        v61 = 2112;
        v62 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s: Asked to show a view controller for event %@. Clearing sidebar nav stack first.", buf, 0x16u);
      }
    }

    else if (v18)
    {
      *buf = 136315138;
      v60 = "[LargeDayViewController showViewController:sender:animated:keepNavigationStack:completion:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Not an EKEventViewController.", buf, 0xCu);
    }

    v22 = [(LargeDayViewController *)self presentedViewController];
    if (v22)
    {
      v23 = [(LargeDayViewController *)self presentedViewController];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();
    }

    else
    {
      v24 = 0;
    }

    v25 = [(LargeDayViewController *)self managedNavigationController];
    [v25 enqueueStackResetOperationDismissingPresentations:v24 & 1 cancelOperations:0 completionBlock:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [(LargeDayViewController *)self view];
    if (EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors())
    {
      v27 = +[UIDevice currentDevice];
      v28 = [v27 userInterfaceIdiom] == 1;

      if (!v28)
      {
        v29 = [[EKUIManagedNavigationController alloc] initWithRootViewController:v12];
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

        v33 = [v12 navigationItem];
        [v33 setLeftBarButtonItem:v32];

        v34 = [(LargeDayViewController *)self navigationController];
        [v34 presentAdaptiveModalViewController:v29 animated:1 completion:0];

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
    [v12 setPreferModalPresentation:0];
  }

  [(LargeDayViewController *)self _fallbackSizingContextWindow];
  v29 = v35 = v15 == 0;
  if (v29)
  {
    EKUIPushFallbackSizingContextWithViewHierarchy();
    v54.receiver = self;
    v54.super_class = LargeDayViewController;
    [(MainViewController *)&v54 showViewController:v12 sender:v13 animated:v9 completion:v14];
    v36 = [(LargeDayViewController *)self viewControllerToShowFrom];
    [(LargeDayViewController *)self _splitViewNavigationController:v36 willShowViewController:v12 animated:v35 completion:0];

    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  else
  {
    v54.receiver = self;
    v54.super_class = LargeDayViewController;
    [(MainViewController *)&v54 showViewController:v12 sender:v13 animated:v9 completion:v14];
    v37 = [(LargeDayViewController *)self viewControllerToShowFrom];
    [(LargeDayViewController *)self _splitViewNavigationController:v37 willShowViewController:v12 animated:v35 completion:0];
  }

  if ([v12 conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditView])
  {
    v38 = [(LargeDayViewController *)self view];
    v39 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    if (!v39)
    {
      v40 = v12;
      v41 = [v40 event];
      v42 = [(MainViewController *)self model];
      v43 = [v42 selectedOccurrence];
      v44 = v43 == v41;

      if (v44 || (-[MainViewController model](self, "model"), v45 = objc_claimAutoreleasedReturnValue(), [v45 setSelectedOccurrence:v41], v45, -[MainViewController model](self, "model"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "selectedOccurrence"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 == v41, v47, v46, v48))
      {
        v49 = [(DayViewController *)self gestureController];
        v50 = [v49 draggingView];
        v51 = [v50 occurrence];
        v52 = v51 == v41;

        if (!v52)
        {
          [(LargeDayViewController *)self _setUpGesturesAndModalMode];
        }
      }

      v53 = [(DayViewController *)self dayView];
      [v53 setCurrentEditor:v40];
    }
  }

LABEL_28:
}

- (id)showDetailViewControllerForEvent:(id)a3 context:(id)a4 animated:(BOOL)a5 keepNavigationStack:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (-[LargeDayViewController _eventViewControllerForModelSelectedEventIsAlreadyShown](self, "_eventViewControllerForModelSelectedEventIsAlreadyShown") && ([v10 isReminderIntegrationEvent] & 1) == 0)
  {
    v17 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = [(LargeDayViewController *)self modelSelectedEvent];
      v20 = [v19 title];
      *buf = 136315394;
      v35 = "[LargeDayViewController showDetailViewControllerForEvent:context:animated:keepNavigationStack:]";
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Asked to show a view controller for event %@, but it is already on the managed navigation controller.", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v12 = [(MainViewController *)self augmentEventDetailsContext:v11];
    LOBYTE(v33) = 0;
    v13 = [EKEventViewController eventDetailViewControllerWithEvent:v10 delegate:self context:v12 canvasView:0 allowInlinePreview:0 previewInline:0 minimalMode:v33];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 setIsLargeDayView:1];
    }

    if (!v6)
    {
      v14 = [(LargeDayViewController *)self presentedViewController];
      if (v14)
      {
        v15 = [(LargeDayViewController *)self presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }

      v21 = [(LargeDayViewController *)self managedNavigationController];
      [v21 enqueueStackResetOperationDismissingPresentations:isKindOfClass & 1 cancelOperations:0 completionBlock:0];
    }

    [(LargeDayViewController *)self showViewController:v13 sender:self animated:v7 keepNavigationStack:v6 completion:0];
    [*(&self->_lastEventShowed + 2) bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [v13 view];
    [v30 setFrame:{v23, v25, v27, v29}];

    v31 = [v13 view];
    [v31 setAutoresizingMask:18];
  }

  return v13;
}

- (id)showDetailViewControllerForEvents:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if ([(LargeDayViewController *)self _eventViewControllerForModelSelectedEventIsAlreadyShown])
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [(LargeDayViewController *)self modelSelectedEvent];
      v9 = [v8 title];
      v26 = 136315394;
      v27 = "[LargeDayViewController showDetailViewControllerForEvents:animated:]";
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Asked to show a view controller for event %@, but it is already on the managed navigation controller.", &v26, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = [[EKExpandedReminderStackViewController alloc] initWithEvents:v5 delegate:self];
    v11 = [(LargeDayViewController *)self presentedViewController];
    if (v11)
    {
      v12 = [(LargeDayViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    v14 = [(LargeDayViewController *)self managedNavigationController];
    [v14 enqueueStackResetOperationDismissingPresentations:isKindOfClass & 1 cancelOperations:0 completionBlock:0];

    [(LargeDayViewController *)self showViewController:v10 sender:self animated:0 completion:0];
    [*(&self->_lastEventShowed + 2) bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [v10 view];
    [v23 setFrame:{v16, v18, v20, v22}];

    v24 = [v10 view];
    [v24 setAutoresizingMask:18];
  }

  return v10;
}

- (BOOL)dayViewControllerShouldEndGestureEditingOnTap:(id)a3
{
  v4 = [(LargeDayViewController *)self shownEventEditViewController];
  if (v4)
  {
    v5 = [(LargeDayViewController *)self shownEventEditViewController];
    v6 = [v5 willPresentDialogOnSave];

    v7 = v6 ^ 1;
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
  v3 = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 superview];
        [v9 bringSubviewToFront:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)selectedCopyViewForOccurrenceView:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v5 = [(DayViewController *)self _selectedOccurrenceViews];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000F2E1C;
  v20[3] = &unk_100211778;
  v22 = &v23;
  v6 = v4;
  v21 = v6;
  [v5 enumerateObjectsUsingBlock:v20];

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
          v12 = [v6 occurrence];
          v13 = [v11 occurrence];
          v14 = [v12 isEqual:v13];

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
  v3 = [(DayViewController *)self dayView];
  [v3 setAnimateAllDayAreaHeight:0];

  v4 = [(DayViewController *)self dayView];
  [v4 setNotifyWhenTapOtherEventDuringDragging:1];

  [(LargeDayViewController *)self _setUpCustomAppearances];
  v5 = [(DayViewController *)self dayScrubberController];
  [v5 setEventSpringLoadingEnabled:1];

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
  v2 = [(LargeDayViewController *)self view];
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

- (void)setupUIForTraitCollection:(id)a3
{
  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6))
  {
    v5 = [(LargeDayViewController *)self _fallbackSizingContextWindow];
    if (v5)
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
  v3 = [(LargeDayViewController *)self view];
  v4 = [v3 window];

  if (!v4)
  {
    v5 = [(LargeDayViewController *)self navigationController];
    v6 = [v5 view];
    v4 = [v6 window];

    if (!v4)
    {
      EKUIHasFallbackSizingContext();
    }
  }

  EKUIMultiwindowAssert();

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6))
  {
    v20.receiver = self;
    v20.super_class = LargeDayViewController;
    [(DayViewController *)&v20 viewWillAppear:a3];
    v4 = [(LargeDayViewController *)self presentedViewController];
    if (!v4 || (v5 = *(&self->_lastEventShowed + 2), v4, !v5))
    {
      [(LargeDayViewController *)self _configureSidebarConfigurationOfManagedNavigationController];
    }

    [(LargeDayViewController *)self _layoutDayArea];
    v6 = [(DayViewController *)self dayView];
    v7 = [v6 view];
    [v7 setClipsToBounds:1];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = [(MainViewController *)self model];
    v10 = [v9 eventStore];
    [v8 addObserver:self selector:"_eventStoreChanged:" name:EKEventStoreChangedNotification object:v10];

    *(&self->_dividerView + 2) = 2;
    v11 = [(LargeDayViewController *)self view];
    v12 = EKUIIsExtended();

    if (v12)
    {
      v13 = [(DayViewController *)self dayScrubberController];
      v14 = [v13 view];
      v15 = [v14 preservesSuperviewLayoutMargins];

      if ((v15 & 1) == 0)
      {
        v16 = [(DayViewController *)self dayScrubberController];
        v17 = [v16 view];
        [v17 setPreservesSuperviewLayoutMargins:1];

        v18 = [(DayViewController *)self dayScrubberController];
        v19 = [v18 view];
        [v19 setNeedsLayout];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = LargeDayViewController;
  [(DayViewController *)&v13 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(DayViewController *)self day];
    v9 = [v8 date];
    *buf = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  if (![(LargeDayViewController *)self _eventViewControllerForModelSelectedEventIsAlreadyShown]&& self->_userInteractedWithSplitviewPane)
  {
    v10 = [(LargeDayViewController *)self modelSelectedEvents];
    v11 = v10;
    if (v10 && [v10 count])
    {
      v12 = [(LargeDayViewController *)self modelSelectedEvents];
      [(LargeDayViewController *)self showEvents:v12 animated:0 showMode:1 context:0];
    }

    else
    {
      [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:0];
    }
  }

  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 4) = 0;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6) = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6) = 0;
  v5 = [(LargeDayViewController *)self presentedViewController];

  if (!v5)
  {
    [(LargeDayViewController *)self _teardownSidebarConfigurationOfManagedNavigationController];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = [(MainViewController *)self model];
  v8 = [v7 eventStore];
  [v6 removeObserver:self name:EKEventStoreChangedNotification object:v8];

  [v6 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  v9.receiver = self;
  v9.super_class = LargeDayViewController;
  [(LargeDayViewController *)&v9 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LargeDayViewController;
  [(DayViewController *)&v4 viewDidDisappear:a3];
  [(LargeDayViewController *)self _setModal:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  [(DayViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(DayViewController *)self dayScrubberController];
  v4 = [v3 view];
  [v4 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(LargeDayViewController *)self parentViewController];

  if (v3)
  {
    v8.receiver = self;
    v8.super_class = LargeDayViewController;
    [(LargeDayViewController *)&v8 viewDidLayoutSubviews];
    v4 = [(LargeDayViewController *)self view];
    v5 = [(DayViewController *)self dayView];
    v6 = [v5 view];
    [v4 sendSubviewToBack:v6];

    v7 = [(LargeDayViewController *)self _fallbackSizingContextWindow];
    if (v7)
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
  v3 = [(DayViewController *)self dayView];
  if (v3)
  {
    v4 = v3;
    v5 = [(DayViewController *)self dayView];
    v6 = [v5 displayDate];

    if (v6)
    {
      v7 = [(DayViewController *)self dayView];
      v8 = [v7 displayDate];
      v9 = [(MainViewController *)self model];
      v10 = [v9 calendar];
      v11 = [v10 timeZone];
      v12 = [EKCalendarDate calendarDateWithDateComponents:v8 timeZone:v11];

      [(LargeDayViewController *)self updateNavigationBarDisplayedDateStringWithDate:v12];
    }
  }
}

- (void)updateNavigationBarDisplayedDateStringWithDate:(id)a3
{
  v4 = a3;
  v5 = [(LargeDayViewController *)self navigationController];
  [v5 setNavBarStringFromDate:v4 includeMonth:1 includeYear:1];
}

- (Class)managedNavigationControllerType
{
  v3 = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LargeDayViewController;
    v5 = [(MainViewController *)&v7 managedNavigationControllerType];
  }

  return v5;
}

- (id)managedNavigationController
{
  if (([(LargeDayViewController *)self isViewLoaded]& 1) == 0)
  {
    [(LargeDayViewController *)self view];
  }

  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  v3 = [(MainViewController *)&v5 managedNavigationController];

  return v3;
}

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [v4 setWeekdayHeaderFillsHalfWidth:0];
  [v4 setWeekdayHeaderVisible:0];
  [v4 setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [v4 setDateStringVisible:CalSolariumEnabled() ^ 1];
  [v4 setDividerLineVisible:1];
  if (CalSolariumEnabled())
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [v4 setFocusBannerPlacement:v5];
  v11 = [(DayViewController *)self dayScrubberController];
  v6 = [(LargeDayViewController *)self ekui_futureTraitCollection];
  [v11 setShowsWeekNumberWhenEnabled:{objc_msgSend(v6, "horizontalSizeClass") == 2}];

  [v4 setDayScrubberController:v11];
  v7 = [v11 view];
  [v7 setNeedsLayout];

  [v4 sizeToFit];
  [v4 frame];
  v9 = v8;
  v10 = [v4 containingPalette];

  [v10 setPreferredHeight:v9];
}

- (BOOL)shouldAdaptEventViewControllers
{
  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) || *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 4))
  {
    return 1;
  }

  v4 = [(LargeDayViewController *)self shownEventEditViewController];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(MainViewController *)self shownEventViewController];
    v6 = [v5 presentedViewController];
    v3 = v6 != 0;
  }

  return v3;
}

- (BOOL)shouldJournalMainViewControllerParent
{
  v3 = [(LargeDayViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 1;
  if (isKindOfClass)
  {
    v5 = [(LargeDayViewController *)self presentedViewController];
    v6 = [v5 viewControllers];
    v7 = [v6 firstObject];
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
  v2 = self;
  v3 = [(LargeDayViewController *)self presentedViewController];
  v4 = [(LargeDayViewController *)v2 managedNavigationController];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  v2 = [(LargeDayViewController *)self shownEventEditViewController];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  v2 = [(LargeDayViewController *)self shownEventEditViewController];
  v3 = v2 == 0;

  return v3;
}

- (void)_selectNextEventInForwardDirection:(BOOL)a3
{
  v5 = [(DayViewController *)self dayView];
  v6 = [v5 currentDayView];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [EKDayOccurrenceViewIterator alloc];
  v8 = [v6 allOccurrenceViews];
  v9 = [(LargeDayViewController *)self modelSelectedEvent];
  v10 = [v7 initWithOccurrenceViews:v8 selectedEvent:v9];

  if (a3)
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
    v11 = [v13 occurrence];

    if (v11)
    {
      v12 = [v13 occurrence];
      [(LargeDayViewController *)self showEvent:v12 animated:1 showMode:1 context:0];
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
  v3 = [(LargeDayViewController *)self modelSelectedEvent];
  v5 = [v3 nextOccurrence];

  v4 = v5;
  if (v5)
  {
    [(LargeDayViewController *)self showEvent:v5 animated:1 showMode:1 context:0];
    v4 = v5;
  }
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  v3 = [(LargeDayViewController *)self modelSelectedEvent];
  v5 = [v3 previousOccurrence];

  v4 = v5;
  if (v5)
  {
    [(LargeDayViewController *)self showEvent:v5 animated:1 showMode:1 context:0];
    v4 = v5;
  }
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

  v9 = [v10 calendarDateByAddingDays:v8];
  [(DayViewController *)self selectDate:v9 animated:v4];
}

- (BOOL)wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder
{
  v3 = [(MainViewController *)self shownEventViewController];
  if (v3)
  {
    v4 = [(LargeDayViewController *)self shownEventEditViewController];
    v5 = v4 == 0;
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
    v3 = [(LargeDayViewController *)self managedNavigationController];
    v4 = [v3 parentViewController];

    if (v4 != self)
    {
      v5 = [(LargeDayViewController *)self managedNavigationController];
      [(LargeDayViewController *)self addChildViewController:v5];

      v6 = [(LargeDayViewController *)self managedNavigationController];
      [v6 didMoveToParentViewController:self];
    }

    v7 = [LargeDayNavigationWrapperView alloc];
    v8 = [(LargeDayViewController *)self managedNavigationController];
    v9 = [v8 view];
    v10 = [(LargeDayNavigationWrapperView *)v7 initWithNavigationView:v9];
    v11 = *(&self->_lastEventShowed + 2);
    *(&self->_lastEventShowed + 2) = v10;

    [*(&self->_lastEventShowed + 2) setClipsToBounds:1];
    v12 = [(LargeDayViewController *)self view];
    [v12 addSubview:*(&self->_lastEventShowed + 2)];
  }

  v13 = [(LargeDayViewController *)self managedNavigationController];
  [v13 setDelegate:self];

  v15 = [(LargeDayViewController *)self managedNavigationController];
  v14 = [v15 traitOverrides];
  [v14 setHorizontalSizeClass:1];
}

- (void)_teardownSidebarConfigurationOfManagedNavigationController
{
  [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
  [(LargeDayViewController *)self _clearSplitViewNavigationController];
  v3 = [(LargeDayViewController *)self managedNavigationController];
  [v3 removeFromParentViewController];

  v4 = [(LargeDayViewController *)self managedNavigationController];
  v5 = [v4 view];
  [v5 removeFromSuperview];

  v6 = [(LargeDayViewController *)self managedNavigationController];
  [v6 setDelegate:0];

  [*(&self->_lastEventShowed + 2) removeFromSuperview];
  v7 = *(&self->_lastEventShowed + 2);
  *(&self->_lastEventShowed + 2) = 0;
}

- (void)_createSplitView
{
  v3 = [(LargeDayViewController *)self managedNavigationController];
  v4 = [v3 view];
  [v4 setClipsToBounds:1];

  v5 = [(LargeDayViewController *)self managedNavigationController];
  [(LargeDayViewController *)self addChildViewController:v5];

  v6 = [(LargeDayViewController *)self managedNavigationController];
  [v6 didMoveToParentViewController:self];

  v7 = objc_opt_new();
  v8 = *(&self->_navigationWrapperView + 2);
  *(&self->_navigationWrapperView + 2) = v7;

  v9 = +[UIColor separatorColor];
  [*(&self->_navigationWrapperView + 2) setBackgroundColor:v9];

  v10 = [(LargeDayViewController *)self view];
  [v10 addSubview:*(&self->_navigationWrapperView + 2)];
}

- (void)_resetSplitView
{
  v3 = [(LargeDayViewController *)self shownEventEditViewController];

  if (v3)
  {
    v4 = [(DayViewController *)self dayView];
    [v4 setCurrentEditor:0];
  }

  [(LargeDayViewController *)self _clearSplitViewNavigationController];
}

- (void)_layoutDayArea
{
  [(LargeDayViewController *)self _setDayViewToSplitViewVisibleState];
  [(LargeDayViewController *)self _setSplitViewPosition];
  [(LargeDayViewController *)self _layoutForSplitViews];
  [(LargeDayViewController *)self _layOutSplitDividerFrame];
  v3 = [(DayViewController *)self dayView];
  v4 = [v3 gestureController];
  v5 = [v4 draggingView];

  if (v5)
  {
    v7 = [(DayViewController *)self dayView];
    v6 = [v7 gestureController];
    [v6 updateDraggingOccurrenceForced:0 animated:0];
  }
}

- (void)_setDayViewToSplitViewVisibleState
{
  v3 = [(LargeDayViewController *)self view];
  [v3 bounds];
  [(LargeDayViewController *)self splitterSpace];

  CalRoundToScreenScale();
  v5 = v4;
  v6 = [(DayViewController *)self dayView];
  v7 = [v6 view];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  v13 = [(DayViewController *)self dayView];
  v12 = [v13 view];
  [v12 setFrame:{0.0, v9, v5, v11}];
}

- (void)_layOutSplitDividerFrame
{
  EKUIScaleFactor();
  CalRoundToScreenScale();
  v4 = v3;
  v5 = 0.0;
  if (CalCanvasPocketEnabled())
  {
    v6 = [(LargeDayViewController *)self view];
    [v6 safeAreaInsets];
    v5 = v7;
  }

  [(LargeDayViewController *)self _dayViewWidthWhenSplit];
  v9 = v8;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    v10 = [(LargeDayViewController *)self view];
    [v10 bounds];
    v9 = v11 - v9;
  }

  v12 = [(LargeDayViewController *)self view];
  [v12 bounds];
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
  v3 = [(DayViewController *)self dayView];
  v4 = [v3 view];
  [v4 frame];

  [(LargeDayViewController *)self _dayViewWidthWhenSplit];
  v6 = v5;
  v7 = [(LargeDayViewController *)self view];
  [v7 bounds];
  v9 = v8;

  v10 = 0.0;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    v11 = [(LargeDayViewController *)self view];
    [v11 bounds];
    v10 = v12 - v6;
  }

  v13 = [(DayViewController *)self dayView];
  [v13 setFrame:v10 gutterWidth:{0.0, v6, v9, 0.0}];
}

- (void)_layoutEventDetailsPane
{
  v3 = [(DayViewController *)self dayView];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = 0.0;
  v14 = 0.0;
  if (CalCanvasPocketEnabled())
  {
    v15 = [(LargeDayViewController *)self view];
    [v15 safeAreaInsets];
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
  v21 = [(LargeDayViewController *)self view];
  [v21 bounds];
  v23 = v22 - v14;

  [*(&self->_lastEventShowed + 2) setFrame:{v13, v14, v20, v23}];
  v24 = [(MainViewController *)self shownEventViewController];

  if (v24)
  {
    v25 = [(MainViewController *)self shownEventViewController];
    v26 = [v25 view];
    [v26 layoutMargins];
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

    v41 = [(MainViewController *)self shownEventViewController];
    v40 = [v41 view];
    [v40 setLayoutMargins:{v28, v39, v30, v34}];
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
  v3 = [(LargeDayViewController *)self view];
  [v3 bounds];
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
  v3 = [(LargeDayViewController *)self managedNavigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4EF4;
  v4[3] = &unk_100210850;
  objc_copyWeak(&v5, &location);
  [v3 enqueueStackResetOperationDismissingPresentations:1 cancelOperations:0 completionBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  v9 = [(LargeDayViewController *)self shownEventEditViewController];
  if (!v9 || (v10 = v9, -[LargeDayViewController shownEventEditViewController](self, "shownEventEditViewController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isBeingDismissed], v11, v10, v12))
  {
    v13 = [(MainViewController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    [(LargeDayViewController *)self _splitViewNavigationController:v15 willShowViewController:v8 animated:v5 completion:0];
    v14 = [(MainViewController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }
}

- (void)_splitViewNavigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(LargeDayViewController *)self managedNavigationController];
  v14 = [v10 isEqual:v13];

  if (v14)
  {
    if (v7)
    {
      v15 = 0.15;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = [v10 viewControllers];
    v17 = [v16 count] < 2;

    [v10 setNavigationBarHidden:v17 animated:0];
    if (v11 || ([v10 viewControllers], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "count"), v34, v35) && (objc_msgSend(v10, "topViewController"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = [v11 view];
        [v18 layoutMargins];
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
        v31 = [v11 view];
        [v31 setLayoutMargins:{v20, v30, v22, v26}];
      }

      v32 = [v11 toolbarItems];
      [v10 setToolbarHidden:{objc_msgSend(v32, "count") == 0}];

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
      v40 = v12;
      [UIView animateWithDuration:v41 animations:v39 completion:v15];
    }

    else
    {
      [v10 setToolbarHidden:1];
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
      v37 = v12;
      [UIView animateWithDuration:v38 animations:v36 completion:v15];
      v11 = 0;
    }
  }
}

- (int64_t)orientationForSize:(CGSize)a3
{
  if ([(LargeDayViewController *)self usePortraitLayoutForSize:a3.width, a3.height])
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
  v3 = [(LargeDayViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    v4 = 4;
LABEL_6:

    return v4;
  }

  v5 = [(LargeDayViewController *)self view];
  IsCompact = EKUICurrentHeightSizeClassIsCompact();

  if ((IsCompact & 1) == 0)
  {
    v3 = [(LargeDayViewController *)self view];
    [v3 frame];
    v4 = [(LargeDayViewController *)self orientationForSize:v7, v8];
    goto LABEL_6;
  }

  return 4;
}

- (double)detailsLeftInsetAdjustment
{
  v2 = [(LargeDayViewController *)self view];
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
  v3 = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm();

  result = -1.0;
  if (v4 == 8)
  {
    [(LargeDayViewController *)self rightSplitViewSideInset];
    return -v6;
  }

  return result;
}

- (BOOL)_selectEvent:(id)a3 animated:(BOOL)a4 context:(int)a5
{
  LODWORD(v5) = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(DayViewController *)self gestureController];
  v10 = [v9 dragGestureInProgress];

  if ((v10 & 1) == 0)
  {
    v11 = [(LargeDayViewController *)self shownEventEditViewController];
    v12 = v11;
    if (v5 == 1 && v11)
    {
      v13 = [(LargeDayViewController *)self shownEventEditViewController];
      v14 = [v13 event];
      v15 = [v14 uniqueId];
      v16 = [v8 uniqueId];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {

        v8 = 0;
        v18 = 1;
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!v8 || v5 != 1)
    {
LABEL_12:
      v19 = [(LargeDayViewController *)self shownEventEditViewController];
      v20 = [v19 event];

      if (v8 || !v20)
      {
        v22 = [v20 uniqueID];
        v23 = [v8 uniqueID];
        if (v22 == v23)
        {
          v21 = 1;
        }

        else
        {
          v24 = [v20 uniqueID];
          v25 = [v8 uniqueID];
          v21 = [v24 isEqualToString:v25];
        }
      }

      else
      {
        v21 = 0;
      }

      v26 = [(LargeDayViewController *)self shownEventEditViewController];
      v27 = v26;
      if (!v26 || v21)
      {
      }

      else
      {
        v28 = [(LargeDayViewController *)self shownEventEditViewController];
        v29 = [v28 isBeingDismissed];

        if ((v29 & 1) == 0)
        {
          if (v5 == 1)
          {
            v30 = [(LargeDayViewController *)self shownEventEditViewController];
            v31 = [v30 willPresentDialogOnSave];

            if (v31)
            {
              v5 = [(LargeDayViewController *)self shownEventEditViewController];
              v44[0] = _NSConcreteStackBlock;
              v44[1] = 3221225472;
              v44[2] = sub_1000F5B48;
              v44[3] = &unk_1002117C0;
              v44[4] = self;
              v45 = v8;
              v47 = v6;
              v46 = 1;
              [v5 completeAndSaveWithContinueBlock:v44];

              LOBYTE(v5) = 0;
LABEL_47:

              goto LABEL_48;
            }

            if (!v8)
            {
              *(&self->_dividerView + 2) = 1;
            }
          }

          [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:0 animated:0];
        }
      }

      v32 = [(DayViewController *)self _selectedOccurrenceViews];
      if ([v32 count] == 1)
      {
        v33 = [(DayViewController *)self _selectedOccurrenceViews];
        v34 = [v33 firstObject];
      }

      else
      {
        v34 = 0;
      }

      v35 = [v34 occurrence];
      v36 = [v35 isEqual:v8];

      if (v36)
      {
        if (([v8 hasChanges] & 1) == 0)
        {
          [(LargeDayViewController *)self _adjustSelectedOccurrences];
        }

        LOBYTE(v5) = 1;
      }

      else
      {
        [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
        if (v8)
        {
          *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = v5 != 1;
          [(LargeDayViewController *)self setModelSelectedEvent:v8];
          v37 = v5 != 2;
          v48 = v8;
          LOBYTE(v5) = 1;
          v38 = [NSArray arrayWithObjects:&v48 count:1];
          [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v38 animated:v6 autoScroll:v37 resetSelection:1];
        }

        else
        {
          v39 = [(MainViewController *)self shownEventViewController];
          if (v39 || ([(LargeDayViewController *)self shownEventEditViewController], (v39 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MainViewController *)self shownContactViewController], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            v5 = [(MainViewController *)self shownExpandedReminderStackViewController];

            if (!v5)
            {
              v41 = 0.15;
              if (!v6)
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

          if (v6)
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

          LOBYTE(v5) = 0;
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

  LOBYTE(v5) = 0;
LABEL_48:

  return v5;
}

- (BOOL)_selectEvents:(id)a3 animated:(BOOL)a4 context:(int)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(DayViewController *)self gestureController];
  v10 = [v9 dragGestureInProgress];

  if ((v10 & 1) == 0)
  {
    v12 = [(LargeDayViewController *)self shownEventEditViewController];
    v13 = v12;
    v70 = a5;
    if (a5 == 1 && v12 && [v8 count] == 1)
    {
      v14 = [(LargeDayViewController *)self shownEventEditViewController];
      v15 = [v14 event];
      v16 = [v15 uniqueId];
      v17 = [v8 firstObject];
      [v17 uniqueId];
      v19 = v18 = v6;
      v20 = [v16 isEqualToString:v19];

      v6 = v18;
      a5 = 1;

      if (v20)
      {

        v8 = 0;
        v21 = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (!v8 || a5 != 1 || ![v8 count])
    {
LABEL_14:
      v22 = [(LargeDayViewController *)self shownEventEditViewController];
      v23 = [v22 event];

      v24 = [(MainViewController *)self shownExpandedReminderStackViewController];
      v25 = [v24 events];

      if (v23)
      {
        if (v8)
        {
          v26 = [v8 count] == 0;
          if (!v25)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v26 = 1;
          if (!v25)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v26 = 0;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      if ([v25 count])
      {
        if (v8)
        {
          v27 = [v8 count] == 0;
        }

        else
        {
          v27 = 1;
        }

LABEL_25:
        v71 = v25;
        if (v26 || [v8 count] != 1)
        {
          v35 = 0;
          if (!v27)
          {
LABEL_34:
            v37 = [NSSet setWithArray:v25];
            if (v8)
            {
              v38 = v8;
            }

            else
            {
              v38 = &__NSArray0__struct;
            }

            v39 = [NSSet setWithArray:v38];
            v36 = [v37 isEqualToSet:v39];

LABEL_38:
            v40 = [(LargeDayViewController *)self shownEventEditViewController];
            v41 = v40;
            if ((v40 == 0) | v35 & 1)
            {
            }

            else
            {
              v42 = [(LargeDayViewController *)self shownEventEditViewController];
              v43 = [v42 isBeingDismissed];

              if ((v43 & 1) == 0)
              {
                if (v70 == 1)
                {
                  v44 = [(LargeDayViewController *)self shownEventEditViewController];
                  v45 = [v44 willPresentDialogOnSave];

                  if (v45)
                  {
                    v46 = [(LargeDayViewController *)self shownEventEditViewController];
                    v74[0] = _NSConcreteStackBlock;
                    v74[1] = 3221225472;
                    v74[2] = sub_1000F6350;
                    v74[3] = &unk_1002117C0;
                    v74[4] = self;
                    v75 = v8;
                    v77 = v6;
                    v76 = 1;
                    [v46 completeAndSaveWithContinueBlock:v74];

                    v11 = 0;
LABEL_80:

                    goto LABEL_81;
                  }

                  if (!v8 || ![v8 count])
                  {
                    *(&self->_dividerView + 2) = 1;
                  }
                }

                else if (v8)
                {
                  [v8 count];
                }

                [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:0 animated:0];
              }
            }

            v47 = [(MainViewController *)self shownExpandedReminderStackViewController];
            if ((v47 == 0) | v36 & 1)
            {
              goto LABEL_57;
            }

            v48 = [(MainViewController *)self shownExpandedReminderStackViewController];
            v49 = [v48 isBeingDismissed];

            if (v49)
            {
              goto LABEL_58;
            }

            if (v8)
            {
              v50 = [v8 count];
              if (v70 != 1 || v50)
              {
                goto LABEL_56;
              }
            }

            else if (v70 != 1)
            {
              goto LABEL_56;
            }

            *(&self->_dividerView + 2) = 1;
LABEL_56:
            v47 = [(MainViewController *)self shownExpandedReminderStackViewController];
            v51 = [v47 presentingViewController];
            [v51 dismissViewControllerAnimated:1 completion:0];

LABEL_57:
LABEL_58:
            v52 = [(DayViewController *)self _selectedOccurrenceViews];
            if ([v52 count] == 1)
            {
              v53 = [(DayViewController *)self _selectedOccurrenceViews];
              v54 = [v53 firstObject];
            }

            else
            {
              v54 = 0;
            }

            v55 = [v54 occurrences];
            v56 = v55;
            if (v8 && v55)
            {
              v57 = v23;
              v58 = [v54 occurrences];
              v59 = [NSSet setWithArray:v58];
              v60 = [NSSet setWithArray:v8];
              v61 = [v59 isEqualToSet:v60];

              if (v61)
              {
                v23 = v57;
                if ([v8 count] == 1)
                {
                  v62 = [v8 firstObject];
                  v63 = [v62 hasChanges];

                  if ((v63 & 1) == 0)
                  {
                    [(LargeDayViewController *)self _adjustSelectedOccurrences];
                  }
                }

                goto LABEL_79;
              }

              [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
              v23 = v57;
            }

            else
            {

              [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
              if (!v8)
              {
                goto LABEL_72;
              }
            }

            if ([v8 count])
            {
              *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = v70 != 1;
              [(LargeDayViewController *)self setModelSelectedEvents:v8];
              [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v8 animated:v6 autoScroll:v70 != 2 resetSelection:1];
              goto LABEL_79;
            }

LABEL_72:
            v64 = [(MainViewController *)self shownEventViewController];
            if (v64 || ([(LargeDayViewController *)self shownEventEditViewController], (v64 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MainViewController *)self shownContactViewController], (v64 = objc_claimAutoreleasedReturnValue()) != 0))
            {
            }

            else
            {
              v66 = [(MainViewController *)self shownExpandedReminderStackViewController];

              if (!v66)
              {
                v67 = 0.15;
                if (!v6)
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

            if (v6)
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
          v69 = v6;
          v28 = [v23 uniqueID];
          v29 = [v8 firstObject];
          v30 = [v29 uniqueID];
          if (v28 == v30)
          {
            v35 = 1;
          }

          else
          {
            [v23 uniqueID];
            v31 = v68 = v28;
            v32 = [v8 firstObject];
            [v32 uniqueID];
            v34 = v33 = v23;
            v35 = [v31 isEqualToString:v34];

            v23 = v33;
            v25 = v71;

            v28 = v68;
          }

          v6 = v69;
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
  v3 = [(DayViewController *)self _selectedOccurrenceViews];
  if ([v3 count] == 1)
  {
    v4 = [(DayViewController *)self _selectedOccurrenceViews];
    v5 = [v4 firstObject];
  }

  else
  {
    v4 = [(DayViewController *)self dayView];
    v6 = [(LargeDayViewController *)self modelSelectedEvent];
    v5 = [v4 occurrenceViewForEvent:v6 includeNextAndPreviousDays:0];
  }

  return v5;
}

- (id)_clonedViewForSelectedOccurrence:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(DayViewController *)self timedDayViewContentGridSubviews];
  [v6 addObjectsFromArray:v7];

  v8 = [(DayViewController *)self allDayView];
  v9 = [v8 subviews];
  [v6 addObjectsFromArray:v9];

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

- (void)_occurrenceViewDidEndSelection:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 occurrence];
  v5 = [(LargeDayViewController *)self _clonedViewForSelectedOccurrence:v4];

  if (v5)
  {
    v6 = [v9 occurrence];
    v7 = [v5 occurrence];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
    }
  }
}

- (void)_reselectedEventIfNeeded
{
  v3 = [(LargeDayViewController *)self modelSelectedEvents];

  if (v3)
  {
    v4 = [(LargeDayViewController *)self modelSelectedEvents];
    [(LargeDayViewController *)self _selectEvents:v4 animated:0 context:0];
  }
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v7 = a4;
  v13 = a3;
  v10 = a6;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:&v13 count:1];

  [(LargeDayViewController *)self showEvents:v12 animated:v7 showMode:a5 context:v10, v13];
}

- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v21 = a3;
  v10 = a6;
  v11 = [(DayViewController *)self gestureController];
  v12 = [v11 dragGestureInProgress];

  if ((v12 & 1) == 0)
  {
    [(LargeDayViewController *)self setModelSelectedEvents:v21];
    if ([v21 count] == 1)
    {
      v13 = [v21 firstObject];
      v14 = v13;
      if (a5 == 3)
      {
        [(DayViewController *)self beginEditingOccurrence:v13 creationMethod:3];
LABEL_5:

        goto LABEL_10;
      }

      if (([v13 isNew] & 1) == 0 && !-[LargeDayViewController _eventIntersectsDayViewControllerActiveDate:](self, "_eventIntersectsDayViewControllerActiveDate:", v14))
      {
        v15 = [(LargeDayViewController *)self shownEventEditViewController];

        if (v15)
        {
          [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
        }

        v16 = [v14 startDate];
        v17 = [(MainViewController *)self model];
        v18 = [v17 calendar];
        v19 = [v18 timeZone];
        v20 = [EKCalendarDate calendarDateWithDate:v16 timeZone:v19];
        [(DayViewController *)self selectDate:v20 animated:v8];

        goto LABEL_5;
      }
    }

    [(LargeDayViewController *)self _showEventsWithoutChangingDate:v21 animated:v8 showComments:a5 == 2 context:v10];
  }

LABEL_10:
}

- (void)_showEventsWithoutChangingDate:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 context:(id)a6
{
  v7 = a5;
  v8 = a4;
  v15 = a3;
  v10 = a6;
  v11 = [(DayViewController *)self gestureController];
  v12 = [v11 dragGestureInProgress];

  if ((v12 & 1) == 0)
  {
    [(LargeDayViewController *)self _selectEvents:v15 animated:v8 context:0];
    if (v15)
    {
      if ([v15 count] != 1 || (objc_msgSend(v15, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isNew"), v13, (v14 & 1) == 0))
      {
        [(DayViewController *)self presentDetailsForEvents:v15 animated:v8 showComments:v7 context:v10];
      }
    }
  }
}

- (BOOL)didSelectEvents:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    if (v6)
    {
      v8 = [(LargeDayViewController *)self modelSelectedEvents];
      v9 = [NSSet setWithArray:v8];
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
        v26 = [(MainViewController *)self model];
        v27 = [v26 selectedOccurrences];
        v28 = [v27 count];

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

  if (!v6 || (-[MainViewController model](self, "model"), v16 = objc_claimAutoreleasedReturnValue(), [v16 selectedOccurrences], v17 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v17), v18 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v7), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToSet:", v19), v19, v18, v17, v16, (v20 & 1) == 0))
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

- (BOOL)didSelectEvent:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v10 = a3;
    v6 = a3;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(LargeDayViewController *)self didSelectEvents:v7 userInitiated:v4, v10];

  return v8;
}

- (BOOL)_showsEventViewControllerAsFullScreen:(id)a3
{
  v4 = [a3 isBirthday];
  if (v4)
  {
    v5 = [(LargeDayViewController *)self view];
    v6 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    LOBYTE(v4) = v6;
  }

  return v4;
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v17 = a3;
  v6 = [(LargeDayViewController *)self shownEventEditViewController];

  if (v6)
  {
    [(LargeDayViewController *)self _editingDidCompleteWithAction:2 * (a4 == 2) changingDate:0 dismissEditor:1 editorToDismiss:0];
  }

  v7 = [v17 event];
  v8 = [v7 refreshIfRefreshableAndNotify:1];
  v9 = [v7 participationStatus];
  v10 = [v7 eventStore];
  if ([v10 showDeclinedEvents])
  {
    v11 = [v7 calendar];
    v12 = [v11 source];
    v13 = [v12 sourceType] != 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 != 3;

  if (((a4 == 1) & v8) != 1 || !v14 && !v13)
  {
    [v17 setDelegate:0];
    [(LargeDayViewController *)self _clearSplitViewNavigationController];
    v15 = [(DayViewController *)self dayView];
    [v15 setCurrentEditor:0];

    [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
    [(LargeDayViewController *)self setModelSelectedEvent:0];
    [(LargeDayViewController *)self _selectEvent:0 animated:0 context:0];
    v16 = a4 == 2 ? v8 : 1;
    if ((v16 & 1) == 0)
    {
      *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = 1;
    }
  }
}

- (void)eventViewController:(id)a3 requestsDisplayOfDeleteAlert:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [v6 popoverPresentationController];
  [v7 setPermittedArrowDirections:2];

  v8 = [v6 popoverPresentationController];
  [v8 setCanOverlapSourceViewRect:0];

  if (CalSystemSolariumEnabled())
  {
    v9 = [v25 toolbarItems];
    v10 = [v9 firstObject];
    v11 = [v6 popoverPresentationController];
    [v11 setBarButtonItem:v10];
  }

  else
  {
    v12 = [v25 navigationController];
    v13 = [v12 toolbar];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v6 popoverPresentationController];
    [v22 setSourceRect:{v15, v17, v19, v21}];

    v9 = [v25 navigationController];
    v10 = [v9 toolbar];
    v11 = [v6 popoverPresentationController];
    [v11 setSourceView:v10];
  }

  v23 = [(LargeDayViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(LargeDayViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)scrubberDidChangeSelectedDate:(id)a3
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  v4 = a3;
  [(DayViewController *)&v5 scrubberDidChangeSelectedDate:v4];
  [(LargeDayViewController *)self _selectedDateChangedToDate:v4, v5.receiver, v5.super_class];
}

- (void)dayViewDidChangeSelectedDate:(id)a3
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  v4 = a3;
  [(DayViewController *)&v5 dayViewDidChangeSelectedDate:v4];
  [(LargeDayViewController *)self _selectedDateChangedToDate:v4, v5.receiver, v5.super_class];
}

- (void)_selectedDateChangedToDate:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self model];
  v6 = [v5 calendar];
  v7 = [v6 timeZone];
  v11 = [EKCalendarDate calendarDateWithDate:v4 timeZone:v7];

  [(LargeDayViewController *)self updateNavigationBarDisplayedDateStringWithDate:v11];
  v8 = [(LargeDayViewController *)self shownEventEditViewController];

  if (v8)
  {
    *(&self->_dividerView + 2) = 0;
    [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
  }

  v9 = [(LargeDayViewController *)self navigationController];
  v10 = [v9 extendedLaunchFinished];

  if (v10)
  {
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2) = 0;
    [(LargeDayViewController *)self _beginAutoScrollingAutoSelectingWithContext:0];
  }
}

- (BOOL)_eventIntersectsDayViewControllerActiveDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 calendar];
    if ([v6 isHidden])
    {
      v7 = 0;
    }

    else
    {
      v8 = [v5 startCalendarDate];
      v9 = [(DayViewController *)self day];
      v10 = [v9 calendarDateForEndOfDay];
      if ([v8 compare:v10] == -1)
      {
        v11 = [v5 endCalendarDate];
        v12 = [(DayViewController *)self day];
        v13 = [v12 calendarDateForDay];
        v7 = [v11 compare:v13] == 1;
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

- (BOOL)_eventEndDateIsPassed:(id)a3
{
  v3 = [a3 endDate];
  v4 = CUIKNowDate();
  v5 = [v3 compare:v4] == -1;

  return v5;
}

- (void)_autoSelectEventWithAnimatedScroll:(BOOL)a3
{
  if (self->_userSelectedEmptySpace)
  {
    self->_selectedEventWasAutoSelected = 1;
    return;
  }

  v4 = a3;
  v5 = [(DayViewController *)self gestureController];
  v6 = [v5 dragGestureInProgress];

  if ((v6 & 1) == 0)
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
      v7 = [(LargeDayViewController *)self shownEventEditViewController];
      v8 = [v7 event];
      v9 = [v8 isNew];

      if (v9)
      {
LABEL_18:
        v21 = [(LargeDayViewController *)self shownEventEditViewController];
        v22 = [v21 event];
        v23 = [v22 isNew];

        if ((v23 & 1) == 0)
        {
          v24 = [(MainViewController *)self model];
          v25 = [v24 selectedOccurrences];
          [(LargeDayViewController *)self _showEventsWithoutChangingDate:v25 animated:v4 showComments:0 context:0];
        }

        v26 = [(LargeDayViewController *)self modelSelectedEvent];

        if (!v26)
        {
          v27 = [(DayViewController *)self dayView];
          [v27 scrollToNow:v4];
        }

        return;
      }

      v10 = [(LargeDayViewController *)self modelSelectedEvent];

      if (v10)
      {
        v11 = [(LargeDayViewController *)self modelSelectedEvent];
        v12 = [(LargeDayViewController *)self _eventIntersectsDayViewControllerActiveDate:v11];

        if (v12)
        {
          v13 = [(LargeDayViewController *)self modelSelectedEvent];
          v14 = [(LargeDayViewController *)self _showsEventViewControllerAsFullScreen:v13];

          if (!v14)
          {
            goto LABEL_18;
          }
        }

        v15 = [(LargeDayViewController *)self shownEventEditViewController];

        if (v15)
        {
          [(LargeDayViewController *)self _dismissEditorAndSaveIfPossibleWhileChangingDate:1 animated:0];
        }
      }

      *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 3) = 1;
      v16 = [(DayViewController *)self dayView];
      v17 = [v16 preferredEventsToSelectOnDate:v28];

      if ([v17 count] == 1)
      {
        v18 = [v17 firstObject];
        v19 = [(LargeDayViewController *)self _showsEventViewControllerAsFullScreen:v18];

        if (v19)
        {

          v17 = 0;
        }
      }

      v20 = [(MainViewController *)self model];
      [v20 setSelectedOccurrences:v17];
    }

    goto LABEL_18;
  }
}

- (BOOL)canSpaciallyEditOccurrences
{
  v3 = [(LargeDayViewController *)self shownEventEditViewController];

  if (v3)
  {
    return 0;
  }

  v5 = [(LargeDayViewController *)self presentedViewController];
  v4 = v5 == 0;

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

- (void)occurrencesWereSpaciallyEditedFromDate:(id)a3 toDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MainViewController *)self model];
  v9 = [v8 calendar];
  v10 = [v9 isDate:v7 inSameDayAsDate:v6];

  if ((v10 & 1) == 0)
  {
    v11 = [(LargeDayViewController *)self modelSelectedEvent];
    [(LargeDayViewController *)self showEvent:v11 animated:1 showMode:1 context:0];
  }
}

- (void)showReminderDetail:(id)a3
{
  v6 = a3;
  v4 = [(MainViewController *)self model];
  [v4 setSelectedOccurrence:v6];

  v5 = [(LargeDayViewController *)self showDetailViewControllerForEvent:v6 context:0 animated:1 keepNavigationStack:1];
}

- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)a3
{
  v3 = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  return v4;
}

- (BOOL)eventViewDelegateShouldCreateOwnEditViewController:(id)a3
{
  v3 = [(LargeDayViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  return v4;
}

- (void)_setModal:(BOOL)a3
{
  if (*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1) != a3)
  {
    v4 = a3;
    *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 1) = a3;
    v5 = [(DayViewController *)self dayView];
    [v5 setDisableGestureDayChange:v4];
  }
}

- (void)showEditViewController:(id)a3
{
  v4 = a3;
  v5 = [(LargeDayViewController *)self shownEventEditViewController];
  if (!v5 || (v6 = v5, -[LargeDayViewController shownEventEditViewController](self, "shownEventEditViewController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 event], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "event"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v6, v8 != v9))
  {
    *(&self->_dividerView + 2) = 2;
    v10 = [(LargeDayViewController *)self view];
    v11 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    if (v11)
    {
      if (v4)
      {
        [v4 setInternalEditViewDelegate:self];
LABEL_11:
        [v4 setModalPresentationDelegate:self];
        v21 = [(MainViewController *)self shownEventViewController];
        [v21 dismissViewControllerAnimated:0 completion:0];

        v22 = [(LargeDayViewController *)self shownEventEditViewController];
        v23 = [v22 presentingViewController];
        [v23 dismissViewControllerAnimated:0 completion:0];

        v24 = [(LargeDayViewController *)self navigationController];
        [v24 presentAdaptiveModalViewController:v4 animated:1 completion:0];

        goto LABEL_12;
      }

      v18 = [(MainViewController *)self shownEventViewController];
      v19 = [v18 event];

      if (v19)
      {
LABEL_10:
        v4 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:v19 creationMethod:0 viewStart:0 eventEditViewDelegate:self];

        goto LABEL_11;
      }

      v20 = [(LargeDayViewController *)self modelSelectedEvent];
      if (v20)
      {
        v19 = v20;
        goto LABEL_10;
      }

      v25 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315138;
        v27 = "[LargeDayViewController showEditViewController:]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%s] couldn't get a valid event.", &v26, 0xCu);
      }

      v4 = 0;
    }

    else
    {
      v12 = [v4 event];
      [(LargeDayViewController *)self _selectEvent:v12 animated:0 context:0];

      [(LargeDayViewController *)self _customizeEventEditorForSplitViewAppearance:v4];
      [(LargeDayViewController *)self _clearSplitViewNavigationController];
      v13 = [(LargeDayViewController *)self managedNavigationController];
      [v13 showViewController:v4 sender:self animated:1 completion:0];

      v14 = [v4 toolbarItems];
      v15 = [v14 count] == 0;
      v16 = [(LargeDayViewController *)self managedNavigationController];
      [v16 setToolbarHidden:v15];

      v17 = [(DayViewController *)self dayView];
      [v17 setCurrentEditor:v4];

      [(LargeDayViewController *)self _setUpGesturesAndModalMode];
    }
  }

LABEL_12:
}

- (BOOL)eventViewControllerShouldHideDeleteButton
{
  v2 = [(LargeDayViewController *)self view];
  v3 = EKUICurrentWindowInterfaceParadigm() == 8;

  return v3;
}

- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 4) = 1;
  v6 = [(LargeDayViewController *)self view];
  v7 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v7)
  {
    [(LargeDayViewController *)self showEditViewController:v8];
  }
}

- (void)eventViewControllerWillBeginEditingEvent:(id)a3
{
  *(&self->_dividerView + 2) = 2;
  v4 = [(LargeDayViewController *)self view];
  v5 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (!v5)
  {
    v6 = [(LargeDayViewController *)self modelSelectedEvent];

    if (v6)
    {
      [(LargeDayViewController *)self _setUpGesturesAndModalMode];
    }
  }

  v8 = [(LargeDayViewController *)self navigationController];
  v7 = [v8 todayBarButtonItem];
  [v7 setEnabled:0];
}

- (BOOL)eventViewControllerEditButtonTemporarilyDisabled:(id)a3
{
  v3 = [(DayViewController *)self gestureController];
  v4 = [v3 dragGestureInProgress];

  return v4;
}

- (void)_setUpGesturesAndModalMode
{
  v3 = [(DayViewController *)self gestureController];
  v4 = [(LargeDayViewController *)self modelSelectedEvent];
  [v3 liftUpOccurrenceForEditingEvent:v4];

  [(LargeDayViewController *)self _setModal:1];
}

- (void)eventViewControllerDidBeginEditingEventWithEditViewController:(id)a3
{
  v9 = a3;
  v4 = [(LargeDayViewController *)self view];
  v5 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (!v5)
  {
    [(LargeDayViewController *)self _customizeEventEditorForSplitViewAppearance:v9];
    v6 = [(DayViewController *)self dayView];
    [v6 setCurrentEditor:v9];
  }

  v7 = [(LargeDayViewController *)self navigationController];
  v8 = [v7 todayBarButtonItem];
  [v8 setEnabled:0];
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(LargeDayViewController *)self modelSelectedEvent];
  v19.receiver = self;
  v19.super_class = LargeDayViewController;
  [(DayViewController *)&v19 eventEditViewController:v8 didCompleteWithAction:a4 dismissController:0];
  if (!v10 && *(&self->_dividerView + 2) == 1 && *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2))
  {
    [(LargeDayViewController *)self setModelSelectedEvent:0];
  }

  [(LargeDayViewController *)self _editingDidCompleteWithAction:a4 changingDate:0 dismissEditor:1 editorToDismiss:v8];
  if (v9)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000F85F8;
    v16 = &unk_10020EBC8;
    v17 = self;
    v18 = v9;
    v11 = objc_retainBlock(&v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(LargeDayViewController *)self managedNavigationController:v13];
  [(LargeDayViewController *)self _splitViewNavigationController:v12 willShowViewController:0 animated:1 completion:v11];
}

- (void)eventViewControllerWillFinishEditingEvent:(id)a3 deleted:(BOOL)a4
{
  if (a4)
  {
    v5 = [(MainViewController *)self shownEventViewController];
    [v5 setEditorHideTransition:0];

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(LargeDayViewController *)self _editingDidCompleteWithAction:v6 changingDate:0 dismissEditor:0 editorToDismiss:0];
}

- (void)_editingDidCompleteWithAction:(int64_t)a3 changingDate:(BOOL)a4 dismissEditor:(BOOL)a5 editorToDismiss:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4 || *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5);
  v12 = [(DayViewController *)self gestureController];
  [v12 endForcedStart:0];

  v13 = [(DayViewController *)self dayView];
  [v13 externallyEndedGestureDragging];

  v14 = [(DayViewController *)self dayView];
  [v14 setGestureOccurrenceSuperview:0];

  [(LargeDayViewController *)self _setModal:0];
  v15 = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  if ([v15 count] == 1)
  {
    v16 = [v15 firstObject];
    if (v16)
    {
      v17 = v16;
      [v16 setAlpha:1.0];
      [v17 setDimmed:0];
      [(LargeDayViewController *)self _adjustSelectedOccurrences];
    }
  }

  if (v6)
  {
    v18 = [(LargeDayViewController *)self managedNavigationController];
    v19 = v18;
    if (v10)
    {
      v20 = [v10 presentingViewController];
    }

    else
    {
      v22 = [(LargeDayViewController *)v18 presentedViewController];

      if (v22)
      {
LABEL_12:
        v23 = [(LargeDayViewController *)v19 presentedViewController];
        v24 = objc_opt_class();

        if (v10 || ([(LargeDayViewController *)self shownEventEditViewController], (v29 = objc_claimAutoreleasedReturnValue()) != 0) && (v30 = v29, v31 = objc_opt_class(), v30, v24 == v31))
        {
          v25 = [(LargeDayViewController *)self view];
          v26 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

          if (v26)
          {
            v27 = !v11;
            v28 = 9;
          }

          else
          {
            v32 = [(MainViewController *)self shownEventViewController];
            v27 = v32 != 0 && !v11;

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

      v20 = self;
    }

    v21 = v20;

    v19 = v21;
    goto LABEL_12;
  }

LABEL_24:
  if (*(&self->_dividerView + 2) == 2 && a3 <= 2)
  {
    *(&self->_dividerView + 2) = dword_1001F85F8[a3];
  }

  v34 = [(LargeDayViewController *)self modelSelectedEvent];

  if (!v34)
  {
    goto LABEL_30;
  }

  v35 = [(LargeDayViewController *)self modelSelectedEvent];
  v36 = [v35 isNew];

  if (!a3 && (v36 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3 == 2 || v11)
  {
    if (a3 == 2)
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

  v40 = [(MainViewController *)self shownEventViewController];
  if (v40 && (v41 = v40, -[MainViewController shownEventViewController](self, "shownEventViewController"), v42 = objc_claimAutoreleasedReturnValue(), [v42 event], v43 = objc_claimAutoreleasedReturnValue(), -[LargeDayViewController modelSelectedEvent](self, "modelSelectedEvent"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "isEqual:", v44), v44, v43, v42, v41, (v45 & 1) != 0))
  {
    if (a3)
    {
      goto LABEL_33;
    }

    v46 = [(MainViewController *)self shownEventViewController];
    [v46 setNeedsReload];
  }

  else
  {
    v46 = [(LargeDayViewController *)self modelSelectedEvent];
    [(LargeDayViewController *)self showEvent:v46 animated:1 showMode:1 context:0];
  }

LABEL_33:
  v37 = [(DayViewController *)self dayView];
  [v37 setCurrentEditor:0];

  v38 = [(LargeDayViewController *)self modelSelectedEvent];
  if (!v11)
  {
    switch(a3)
    {
      case 0:
        v39 = [(DayViewController *)self dayView];
        [v39 editorDidCancelEditingEvent:v38];
        goto LABEL_48;
      case 2:
        v39 = [(DayViewController *)self dayView];
        [v39 editorDidDeleteEvent:v38];
        goto LABEL_48;
      case 1:
        v39 = [(DayViewController *)self dayView];
        [v39 editorDidSaveEvent:v38];
LABEL_48:

        break;
    }
  }

  v47 = [(LargeDayViewController *)self navigationController];
  v48 = [v47 todayBarButtonItem];
  [v48 setEnabled:1];
}

- (void)eventViewControllerModifiedEventWithoutEditing:(id)a3
{
  v4 = [a3 event];
  [(LargeDayViewController *)self setModelSelectedEvent:v4];
}

- (void)handleGestureCommittingOccurrence:(id)a3
{
  v4 = a3;
  [(LargeDayViewController *)self showEvent:v4 animated:0 showMode:1 context:0];
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
    v7 = [(LargeDayViewController *)self managedNavigationController];
    [v7 enqueueBlock:v5];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (BOOL)comparePointersOfArray:(id)a3 withArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    goto LABEL_2;
  }

  if ((v5 == 0) != (v6 == 0) || (v9 = [v5 count], v9 != objc_msgSend(v7, "count")))
  {
    v8 = 0;
    goto LABEL_12;
  }

  if ([v5 count])
  {
    v10 = 0;
    do
    {
      v11 = [v5 objectAtIndex:v10];
      v12 = [v7 objectAtIndex:v10];

      v8 = v11 == v12;
      if (!v8)
      {
        break;
      }

      ++v10;
    }

    while (v10 < [v5 count]);
  }

  else
  {
LABEL_2:
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (void)dataReloadedWithTrigger:(int)a3
{
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
  v5 = [(LargeDayViewController *)self modelSelectedEvent];

  if (!v5)
  {
    return;
  }

  v6 = [(DayViewController *)self dayView];
  v7 = [(LargeDayViewController *)self modelSelectedEvent];
  v22 = [v6 occurrenceViewForEvent:v7];

  v8 = [v22 occurrences];
  if (v22)
  {
    v9 = [(LargeDayViewController *)self modelSelectedEvents];
    v10 = [(LargeDayViewController *)self comparePointersOfArray:v8 withArray:v9];

    if (v10)
    {
      [(LargeDayViewController *)self setModelSelectedEvents:v8];
    }
  }

  v11 = [(LargeDayViewController *)self shownEventEditViewController];
  v16 = !v11 || ([v11 event], v13 = v12 = v11;
  v17 = [(MainViewController *)self shownExpandedReminderStackViewController];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 events];
    v20 = [(LargeDayViewController *)self comparePointersOfArray:v8 withArray:v19];

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
    v21 = [(LargeDayViewController *)self modelSelectedEvents];
    [(LargeDayViewController *)self _selectEvents:v21 animated:0 context:2 * (a3 == 1)];
  }

LABEL_16:
}

- (void)_eventStoreChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:EKEventStoreChangeTypeUserInfoKey];
  v6 = [v5 unsignedIntegerValue];

  if (v6 != 2)
  {
    v7 = [(LargeDayViewController *)self modelSelectedEvent];
    if (v7)
    {
      v8 = v7;
      v9 = [(LargeDayViewController *)self modelSelectedEvent];
      v10 = [v9 refreshIfRefreshableAndNotify:1];

      if ((v10 & 1) == 0)
      {
        [(LargeDayViewController *)self setModelSelectedEvent:0];

        [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:1];
      }
    }
  }
}

- (void)displayedOccurrencesChangedWithTrigger:(int)a3
{
  self->_userInteractedWithSplitviewPane = 1;
  [(LargeDayViewController *)self dataReloadedWithTrigger:?];
  v7 = [(LargeDayViewController *)self view];
  v5 = [v7 window];
  if (v5)
  {
    v6 = *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6);

    if (v6 == 1)
    {

      [(LargeDayViewController *)self _beginAutoScrollingAutoSelectingWithContext:2 * (a3 == 1)];
    }
  }

  else
  {
  }
}

- (void)_beginAutoScrollingAutoSelectingWithContext:(int)a3
{
  v3 = *&a3;
  v5 = [(LargeDayViewController *)self modelSelectedEvent];
  v6 = [(LargeDayViewController *)self _eventIntersectsDayViewControllerActiveDate:v5];

  if (!*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 2))
  {
    if (!v6 || *&self->_clearingSplitViewNavigationController)
    {
      goto LABEL_4;
    }

    v9 = [(MainViewController *)self shownEventViewController];
    if (v9 && (v10 = v9, -[MainViewController shownEventViewController](self, "shownEventViewController"), v11 = objc_claimAutoreleasedReturnValue(), [v11 event], v12 = objc_claimAutoreleasedReturnValue(), -[LargeDayViewController modelSelectedEvent](self, "modelSelectedEvent"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v11, v10, v14))
    {
      v15 = [(LargeDayViewController *)self modelSelectedEvent];
      [(LargeDayViewController *)self _selectEvent:v15 animated:0 context:v3];
    }

    else
    {
      v16 = [(MainViewController *)self shownExpandedReminderStackViewController];
      if (!v16 || (v17 = v16, -[MainViewController shownExpandedReminderStackViewController](self, "shownExpandedReminderStackViewController"), v18 = objc_claimAutoreleasedReturnValue(), [v18 events], v19 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v19), v20 = objc_claimAutoreleasedReturnValue(), -[LargeDayViewController modelSelectedEvents](self, "modelSelectedEvents"), v21 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v21), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v20, "isEqualToSet:", v22), v22, v21, v20, v19, v18, v17, !v23))
      {
LABEL_4:
        [(LargeDayViewController *)self _autoSelectEventWithAnimatedScroll:*(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 6)];
        goto LABEL_5;
      }

      v15 = [(LargeDayViewController *)self modelSelectedEvents];
      [(LargeDayViewController *)self _selectEvents:v15 animated:0 context:v3];
    }
  }

LABEL_5:
  v7 = [(LargeDayViewController *)self managedNavigationController];
  v8 = [v7 _contentUnavailableConfiguration];

  if (v8)
  {

    [(LargeDayViewController *)self updateNoContentConfiguration];
  }
}

- (void)updateNoContentConfiguration
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedOccurrences];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"num_selected_events_large_day_view" value:&stru_1002133B8 table:0];
    v15 = [NSString localizedStringWithFormat:v7, v5];
  }

  else
  {
    v8 = [(DayViewController *)self dayView];
    v9 = [v8 currentDayContainsOccurrences];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v10;
    if (v9)
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
  v13 = [(LargeDayViewController *)self managedNavigationController];
  [v13 _setContentUnavailableConfiguration:v12];

  v14 = [(LargeDayViewController *)self managedNavigationController];
  [v14 setNavigationBarHidden:1 animated:0];
}

- (void)clearNoContentConfiguration
{
  v2 = [(LargeDayViewController *)self managedNavigationController];
  [v2 _setContentUnavailableConfiguration:0];
}

- (BOOL)performModalDialogsIfNeededWithContinue:(id)a3
{
  v4 = a3;
  v5 = [(LargeDayViewController *)self shownEventEditViewController];
  if (v5 && (modalEditing = self->_modalEditing, v5, !modalEditing) && (-[LargeDayViewController shownEventEditViewController](self, "shownEventEditViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 willPresentDialogOnSave], v7, v8))
  {
    v9 = 1;
    self->_modalEditing = 1;
    v10 = [(LargeDayViewController *)self shownEventEditViewController];
    [v10 completeAndSaveWithContinueBlock:v4];

    self->_modalEditing = 0;
  }

  else
  {
    v4[2](v4);
    v9 = 0;
  }

  return v9;
}

- (id)shownEventEditViewController
{
  v5.receiver = self;
  v5.super_class = LargeDayViewController;
  v2 = [(MainViewController *)&v5 shownEventEditViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 presentedOverWholeApp])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)_dismissEditorAndSaveIfPossibleWhileChangingDate:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(LargeDayViewController *)self shownEventEditViewController];
  if (!v7 || self->_modalEditing)
  {
    goto LABEL_23;
  }

  v24 = v7;
  if ([v7 hasUnsavedChanges])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v24 event];
    v8 = [v9 existsInStore];
  }

  if ([v24 willPresentDialogOnSave] & 1) != 0 || (v8)
  {
    self->_modalEditing = 1;
    [v24 setIgnoreUnsavedChanges:1];
    [v24 cancelEditing];
    [(LargeDayViewController *)self _editingDidCompleteWithAction:0 changingDate:v5 dismissEditor:1 editorToDismiss:0];
    [v24 setIgnoreUnsavedChanges:0];
LABEL_22:
    v7 = v24;
    goto LABEL_23;
  }

  if (v4)
  {
    v10 = [(MainViewController *)self shownEventViewController];
    if (v10)
    {
      v11 = v10;
      v12 = [(LargeDayViewController *)self modelSelectedEvent];
      if (v12)
      {
        v13 = v12;
        v14 = [(MainViewController *)self shownEventViewController];
        v15 = [v14 event];
        v16 = [v15 uniqueId];
        v17 = [(LargeDayViewController *)self modelSelectedEvent];
        v18 = [v17 uniqueId];
        v23 = [v16 isEqualToString:v18];

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

  v20 = [(MainViewController *)self shownEventViewController];
  [v20 setEditorHideTransition:0];

  v19 = 0;
LABEL_16:
  v21 = 1;
  if (!v5)
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
  v7 = v24;
  *(&self->super._shouldRespondToApplicationDidBecomeActiveStateChange + 5) = 0;
  self->_modalEditing = 0;
  if ((v19 & 1) == 0)
  {
    v22 = [(MainViewController *)self shownEventViewController];
    [v22 setEditorHideTransition:6];

    goto LABEL_22;
  }

LABEL_23:
}

- (void)didBeginMovingOccurrenceWithGesture
{
  v8 = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  if ([v8 count] == 1)
  {
    v3 = [(DayViewController *)self _selectedOccurrenceViews];
    v4 = [v3 count];

    if (v4 == 1)
    {
      v5 = [v8 firstObject];
      [v5 setAlpha:0.0];

      v6 = [(DayViewController *)self _selectedOccurrenceViews];
      v7 = [v6 firstObject];
      [v7 setAlpha:1.0];
    }
  }
}

- (void)handleCloseKeyCommand
{
  v3 = [(LargeDayViewController *)self shownEventEditViewController];
  if (v3)
  {
  }

  else
  {
    v4 = [(MainViewController *)self shownEventViewController];

    if (v4)
    {

      [(LargeDayViewController *)self _selectEvent:0 animated:1 context:0];
    }
  }
}

- (void)_selectedOccurrencesChanged:(id)a3
{
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedOccurrences];
  v6 = [NSSet setWithArray:v5];

  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
  v7 = [(DayViewController *)self gestureController];
  v8 = [v7 event];
  v9 = [v6 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(DayViewController *)self gestureController];
    [v10 endForcedStart:0];
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

  v17 = [(MainViewController *)self shownEventViewController];
  if (v17 || ([(LargeDayViewController *)self shownEventEditViewController], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_21;
  }

  v32 = [(MainViewController *)self shownExpandedReminderStackViewController];

  if (!v32)
  {
    goto LABEL_20;
  }

LABEL_21:
  v18 = [v12 mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [(DayViewController *)self _selectedOccurrenceViews];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v33 + 1) + 8 * j);
        v25 = [v24 occurrence];

        if (v25)
        {
          v26 = [v24 occurrence];
          [v18 removeObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  v27 = [(DayViewController *)self gestureController];
  v28 = [v27 event];

  if (v28)
  {
    v29 = [(DayViewController *)self gestureController];
    v30 = [v29 event];
    [v18 removeObject:v30];
  }

  v31 = [v18 allObjects];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v31 animated:1 autoScroll:0 resetSelection:0];
}

@end
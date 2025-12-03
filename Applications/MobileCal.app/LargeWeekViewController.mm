@interface LargeWeekViewController
- (BOOL)_tooFarToAnimate:(id)animate;
- (BOOL)canSpaciallyEditOccurrences;
- (BOOL)displaysDatesSnappedToWeekBoundaries;
- (BOOL)eventGestureController:(id)controller didCommitOccurrence:(id)occurrence toDate:(double)date isAllDay:(BOOL)day span:(int64_t)span;
- (BOOL)eventViewControllerShouldHideInlineEditButton;
- (BOOL)eventViewControllerShouldShowInlineEditButtonForInvitations:(id)invitations;
- (BOOL)eventViewControllerUseMinimalMode:(id)mode;
- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)controller;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isEventAbleToShowPopover:(id)popover;
- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)controller;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (Class)managedNavigationControllerType;
- (LargeWeekViewController)initWithModel:(id)model window:(id)window;
- (double)eventGestureController:(id)controller heightForAllDayOccurrenceView:(id)view;
- (double)minimumHourScale;
- (double)scrollToDisplayedDateAnimated:(BOOL)animated;
- (id)_occurrenceViewForPopoverSource;
- (id)pasteboardManagerForEventEditViewController:(id)controller;
- (id)pushedDayViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)pushedListViewControllerWithDate:(id)date animated:(BOOL)animated;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (id)spaciallyEditableOccurrences;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (unint64_t)supportedInterfaceOrientations;
- (void)_closeEventPresentationAnimated:(BOOL)animated cleanSelectionState:(BOOL)state completion:(id)completion;
- (void)_displayEventDetailsViewControllerForEvent:(id)event showComment:(BOOL)comment context:(id)context completion:(id)completion;
- (void)_displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:(id)view showComments:(BOOL)comments context:(id)context forceShowEditor:(BOOL)editor creationMethod:(unint64_t)method completion:(id)completion;
- (void)_handleDoubleClickGesture:(id)gesture;
- (void)_presentDetailViewControllerAsPageSheet:(id)sheet;
- (void)_presentEventViewController:(id)controller forOccurrenceView:(id)view animated:(BOOL)animated showComments:(BOOL)comments completion:(id)completion;
- (void)_presentationControllerDidDismissPopover:(id)popover cleanSelectionState:(BOOL)state;
- (void)_rePresentEditPopoverFromTargetView:(id)view;
- (void)_resizeInterfaceForWindowSize:(CGSize)size;
- (void)_scrollEventIntoViewAndRequestPresentPopoverForEvent:(id)event;
- (void)_selectNextEventInForwardDirection:(BOOL)direction;
- (void)_setSelectedEvents:(id)events;
- (void)_setupPointerDoubleClickGestureRecognizer;
- (void)_showDetailsForOccurrenceView:(id)view;
- (void)_showEditorForEvent:(id)event;
- (void)_showMonthOverlayInCellAtOffset:(double)offset animated:(BOOL)animated;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated;
- (void)_weekViewDidEndScrolling:(id)scrolling;
- (void)createdNewEventUsingCreationGesture:(id)gesture;
- (void)emptySpaceClickedOnDate:(id)date;
- (void)enqueuableNavigationController:(id)controller requestsDeferShowViewControllerUntilReady:(id)ready;
- (void)enqueueableManagedNavigationController:(id)controller requestsConfigurationOfPropertiesForPopoverPresentationController:(id)presentationController completion:(id)completion;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventGestureController:(id)controller didCancelEditingOccurrence:(id)occurrence fadedOut:(BOOL)out;
- (void)eventGestureController:(id)controller didSetUpAtDate:(double)date isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didSingleTapOccurrence:(id)occurrence shouldExtendSelection:(BOOL)selection;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestsDisplayOfDeleteAlert:(id)alert;
- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated;
- (void)eventViewController:(id)controller requestsShowEvent:(id)event;
- (void)eventViewControllerInlineEditButtonWasTapped:(id)tapped;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)eventViewControllerWillBeginEditingEvent:(id)event;
- (void)eventViewControllerWillFinishEditingEvent:(id)event deleted:(BOOL)deleted;
- (void)handleCloseKeyCommand;
- (void)occurrencesWereSpaciallyEditedFromDate:(id)date toDate:(id)toDate;
- (void)overlayCalendarDidChange;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)showDetailsForCurrentSelectableItem;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context completion:(id)completion;
- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showReminderDetail:(id)detail;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)snapTargetScrollOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)palette;
- (void)updateVisibleRects;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation LargeWeekViewController

- (LargeWeekViewController)initWithModel:(id)model window:(id)window
{
  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  v4 = [(WeekViewController *)&v8 initWithModel:model window:window];
  if (v4)
  {
    v5 = objc_alloc_init(NSOperationQueue);
    [(LargeWeekViewController *)v4 setShowEventDetailsOperationQueue:v5];

    showEventDetailsOperationQueue = [(LargeWeekViewController *)v4 showEventDetailsOperationQueue];
    [showEventDetailsOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v4;
}

- (BOOL)displaysDatesSnappedToWeekBoundaries
{
  weekViewClass = [(WeekViewController *)self weekViewClass];
  viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];
  view = [(LargeWeekViewController *)self view];
  v6 = [(objc_class *)weekViewClass displayedDaysForOrientation:viewInterfaceOrientation withViewInViewHierarchy:view];

  return v6 == 7;
}

- (unint64_t)supportedInterfaceOrientations
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    shownEventEditViewController2 = [(MainViewController *)self shownEventEditViewController];
    supportedInterfaceOrientations = [shownEventEditViewController2 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LargeWeekViewController;
    return [(LargeWeekViewController *)&v7 supportedInterfaceOrientations];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = LargeWeekViewController;
  [(WeekViewController *)&v6 viewDidLoad];
  displayedDate = [(WeekViewController *)self displayedDate];

  if (!displayedDate)
  {
    model = [(WeekViewController *)self model];
    selectedDate = [model selectedDate];

    [(WeekViewController *)self setDisplayedDate:selectedDate];
  }

  [(LargeWeekViewController *)self _setupPointerDoubleClickGestureRecognizer];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(LargeWeekViewController *)self isViewLoaded])
  {
    view = [(LargeWeekViewController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(LargeWeekViewController *)self view];
      [view2 bounds];
      v12 = v11;
      v14 = v13;

      if (width >= height || v12 <= v14)
      {
        if (width > height && v12 < v14)
        {
          [(WeekViewController *)self setRotatingToLandscape:1];
        }
      }

      else
      {
        [(WeekViewController *)self setRotatingToPortrait:1];
      }

      self->_hasAlreadyAdjustedVisibleRects = 0;
      if (coordinatorCopy)
      {
        [coordinatorCopy targetTransform];
      }

      else
      {
        memset(&v39, 0, sizeof(v39));
      }

      if (CGAffineTransformIsIdentity(&v39))
      {
        weekScroller = [(WeekViewController *)self weekScroller];
        [weekScroller bounds];
        v17 = v16;

        if (width >= v17)
        {
          v17 = width;
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        visibleWeeks = [(WeekViewController *)self visibleWeeks];
        v19 = [visibleWeeks countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v36;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v36 != v21)
              {
                objc_enumerationMutation(visibleWeeks);
              }

              v23 = *(*(&v35 + 1) + 8 * i);
              weekScroller2 = [(WeekViewController *)self weekScroller];
              [weekScroller2 bounds];
              v26 = v25;
              weekScroller3 = [(WeekViewController *)self weekScroller];
              [weekScroller3 bounds];
              v29 = v28;

              [v23 adjustForVisibleRect:{0.0, v26, v17, v29}];
            }

            v20 = [visibleWeeks countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v20);
        }

        self->_hasAlreadyAdjustedVisibleRects = 1;
      }

      if (coordinatorCopy)
      {
        if (+[ApplicationTester testingSessionStarted])
        {
          v30 = +[UIApplication sharedApplication];
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_1000E6A20;
          v34[3] = &unk_10020EB00;
          v34[4] = self;
          [v30 installCACommitCompletionBlock:v34];
        }

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000E6A80;
        v33[3] = &unk_100211438;
        v33[4] = self;
        *&v33[5] = width;
        *&v33[6] = height;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000E6AF4;
        v32[3] = &unk_10020F240;
        v32[4] = self;
        [coordinatorCopy animateAlongsideTransition:v33 completion:v32];
      }

      else
      {
        [(LargeWeekViewController *)self _resizeInterfaceForWindowSize:width, height];
        [(WeekViewController *)self setRotatingToPortrait:0];
        [(WeekViewController *)self setRotatingToLandscape:0];
        self->_hasAlreadyAdjustedVisibleRects = 0;
        [(LargeWeekViewController *)self updateVisibleRects];
      }

      v31.receiver = self;
      v31.super_class = LargeWeekViewController;
      [(WeekViewController *)&v31 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
    }
  }
}

- (void)_resizeInterfaceForWindowSize:(CGSize)size
{
  if (!self->_isTransformingInterfaceSize)
  {
    if ([(WeekViewController *)self usePortraitLayoutForSize:size.width, size.height])
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    self->_isTransformingInterfaceSize = 1;
    timeView = [(WeekViewController *)self timeView];
    v5TimeView = [timeView timeView];
    [v5TimeView setOrientation:v4];

    timeView2 = [(WeekViewController *)self timeView];
    [timeView2 sizeToFit];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    visibleWeeks = [(WeekViewController *)self visibleWeeks];
    v9 = [visibleWeeks countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(visibleWeeks);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          weekView = [v13 weekView];
          [weekView setOrientation:v4];

          [v13 setNeedsLayout];
        }

        v10 = [visibleWeeks countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    reusableViews = [(WeekViewController *)self reusableViews];
    v16 = [reusableViews countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(reusableViews);
          }

          v20 = *(*(&v32 + 1) + 8 * j);
          weekView2 = [v20 weekView];
          [weekView2 setOrientation:v4];

          [v20 setNeedsLayout];
        }

        v17 = [reusableViews countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v17);
    }

    [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:v4];
    view = [(LargeWeekViewController *)self view];
    [view setNeedsLayout];

    view2 = [(LargeWeekViewController *)self view];
    superview = [view2 superview];

    if (superview)
    {
      [(WeekViewController *)self adjustVisibleAllDayOccurrenceLabelsAnimated:0];
    }

    v25 = +[UIApplication sharedApplication];
    isSuspended = [v25 isSuspended];

    _selectedOccurrenceViews = [(WeekViewController *)self _selectedOccurrenceViews];
    if ([_selectedOccurrenceViews count])
    {
      v28 = 0;
    }

    else
    {
      eventGestureController = [(WeekViewController *)self eventGestureController];
      draggingView = [eventGestureController draggingView];
      v28 = draggingView == 0;
    }

    if ((isSuspended | v28))
    {
      self->_isTransformingInterfaceSize = 0;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E6F14;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)updateVisibleRects
{
  if (!self->_hasAlreadyAdjustedVisibleRects)
  {
    v2.receiver = self;
    v2.super_class = LargeWeekViewController;
    [(WeekViewController *)&v2 updateVisibleRects];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = LargeWeekViewController;
  [(WeekViewController *)&v11 viewDidAppear:appear];
  self->_viewDidAppear = 1;
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    displayedDate = [(WeekViewController *)self displayedDate];
    date = [displayedDate date];
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = date;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  [(WeekViewController *)self currentScrollViewXOffset];
  [(LargeWeekViewController *)self _showMonthOverlayInCellAtOffset:0 animated:?];
  [(LargeWeekViewController *)self updateNavigationBarDisplayedDateString];
  if (self->_eventToPresentOnAppear)
  {
    [(LargeWeekViewController *)self _scrollEventIntoViewAndRequestPresentPopoverForEvent:?];
    eventToPresentOnAppear = self->_eventToPresentOnAppear;
    self->_eventToPresentOnAppear = 0;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LargeWeekViewController;
  [(LargeWeekViewController *)&v4 viewDidDisappear:disappear];
  self->_viewDidAppear = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  [(WeekViewController *)&v8 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_weekViewDidEndScrolling:" name:@"WeekViewController_ScrollDidEndAnimationNotification" object:0];
  view = [(LargeWeekViewController *)self view];
  [view bounds];
  [(LargeWeekViewController *)self _resizeInterfaceForWindowSize:v6, v7];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"WeekViewController_ScrollDidEndAnimationNotification" object:0];
  [v5 removeObserver:self name:EKDayOccurrenceViewDidEndSelectionNotification object:0];
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0];
  navigationController = [(LargeWeekViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _setHidesShadow:0];

  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  [(WeekViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  self->_suppressInitialScrollToCurrentTime = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setPreferModalPresentation:0];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = controllerCopy;
    [view setMinimalMode:{-[LargeWeekViewController eventViewControllerUseMinimalMode:](self, "eventViewControllerUseMinimalMode:", view)}];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    view = [(LargeWeekViewController *)self view];
    self->_isPresentingPageSheet = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing() ^ 1;
    goto LABEL_8;
  }

LABEL_9:
  v14.receiver = self;
  v14.super_class = LargeWeekViewController;
  [(MainViewController *)&v14 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
}

- (Class)managedNavigationControllerType
{
  view = [(LargeWeekViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v4)
  {
    managedNavigationControllerType = objc_opt_class();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LargeWeekViewController;
    managedNavigationControllerType = [(MainViewController *)&v7 managedNavigationControllerType];
  }

  return managedNavigationControllerType;
}

- (int64_t)presentationStyleOverrideForChildViewControllers
{
  view = [(LargeWeekViewController *)self view];
  if (EKUICurrentHeightSizeClassIsRegular())
  {

    return 7;
  }

  else
  {
    isPresentingPageSheet = self->_isPresentingPageSheet;

    if (isPresentingPageSheet)
    {
      return 1;
    }

    else
    {
      return 7;
    }
  }
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context completion:(id)completion
{
  eventCopy = event;
  contextCopy = context;
  completionCopy = completion;
  v14 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    title = [eventCopy title];
    startDate = [eventCopy startDate];
    v18 = CUIKStringForDate();
    *buf = 138412546;
    v39 = title;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "LargeWeekViewController showEvent:animated:showMode:context:completion asked to show event named '%@' starting on '%@'.", buf, 0x16u);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000E7BDC;
  v35[3] = &unk_10020F680;
  v19 = completionCopy;
  v36 = v19;
  v20 = objc_retainBlock(v35);
  presentedViewController = [(LargeWeekViewController *)self presentedViewController];
  isBeingDismissed = [presentedViewController isBeingDismissed];

  if (isBeingDismissed)
  {
    v23 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "LargeWeekViewController showEvent:animated:showMode:context:completion unable to show event due to dismissing presentation.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (mode == 3)
  {
    [(LargeWeekViewController *)self _showEditorForEvent:eventCopy];
LABEL_8:
    (v20[2])(v20);
    goto LABEL_19;
  }

  v37 = eventCopy;
  v24 = [NSArray arrayWithObjects:&v37 count:1];
  [(LargeWeekViewController *)self _setSelectedEvents:v24];

  v25 = mode == 2;
  v26 = [(WeekViewController *)self occurrenceViewForEvent:eventCopy];
  v27 = v26;
  if (!v26 || ([v26 frame], CGRectIsEmpty(v42)) || (objc_msgSend(v27, "frame"), CGRectIsNull(v43)) || (objc_msgSend(eventCopy, "startDate"), v28 = objc_claimAutoreleasedReturnValue(), v31 = -[WeekViewController dateIsVisible:](self, "dateIsVisible:", v28), v28, (v31 & 1) == 0))
  {
    v29 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "LargeWeekViewController showEvent:animated:showMode:context:completion got an invalid occurrenceView. Setting up for deferred popover presentation.", buf, 2u);
    }

    self->_shouldPresentEventCommentsForSelectedOccurrence = v25;
    [(LargeWeekViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
    startCalendarDate = [eventCopy startCalendarDate];
    [(LargeWeekViewController *)self selectDate:startCalendarDate animated:0];

    (v20[2])(v20);
  }

  else if (mode)
  {
    [(LargeWeekViewController *)self _displayEventDetailsViewControllerForEvent:eventCopy showComment:mode == 2 context:contextCopy completion:v19];
  }

  else
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E7BF4;
    v32[3] = &unk_10020F9D0;
    v32[4] = self;
    v33 = eventCopy;
    v34 = v20;
    [(LargeWeekViewController *)self _closeEventPresentationAnimated:0 cleanSelectionState:0 completion:v32];
  }

LABEL_19:
}

- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  eventsCopy = events;
  presentedViewController = [(LargeWeekViewController *)self presentedViewController];
  isBeingDismissed = [presentedViewController isBeingDismissed];

  if (isBeingDismissed)
  {
    v11 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "LargeWeekViewController showEvent:animated:showMode:context:completion unable to show event due to dismissing presentation.", v24, 2u);
    }
  }

  else
  {
    firstObject = [eventsCopy firstObject];
    v25 = firstObject;
    v13 = [NSArray arrayWithObjects:&v25 count:1];
    [(LargeWeekViewController *)self _setSelectedEvents:v13];

    v14 = mode == 2;
    firstObject2 = [eventsCopy firstObject];
    v16 = [(WeekViewController *)self occurrenceViewForEvent:firstObject2];

    if (!v16 || ([v16 frame], CGRectIsEmpty(v26)) || (objc_msgSend(v16, "frame"), CGRectIsNull(v27)) || (objc_msgSend(eventsCopy, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "startDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[WeekViewController dateIsVisible:](self, "dateIsVisible:", v18), v18, v17, (v19 & 1) == 0))
    {
      v22 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "LargeWeekViewController showEvent:animated:showMode:context:completion got an invalid occurrenceView. Setting up for deferred popover presentation.", v24, 2u);
      }

      self->_shouldPresentEventCommentsForSelectedOccurrence = v14;
      [(LargeWeekViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
      firstObject3 = [eventsCopy firstObject];
      startCalendarDate = [firstObject3 startCalendarDate];
      [(LargeWeekViewController *)self selectDate:startCalendarDate animated:0];
    }

    else
    {
      v20 = mode == 2;
      firstObject3 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];
      [(LargeWeekViewController *)self _presentEventViewController:firstObject3 forOccurrenceView:v16 animated:1 showComments:v20 completion:0];
    }
  }
}

- (void)showReminderDetail:(id)detail
{
  detailCopy = detail;
  v11 = objc_opt_new();
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_AllowsCalendarPreview];
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_CalendarPreviewIsInlineDayView];
  view = [(LargeWeekViewController *)self view];
  v6 = [NSNumber numberWithInt:EKUICurrentWindowInterfaceParadigm() == 8];
  [v11 setObject:v6 forKeyedSubscript:EKUIEventDetailsContext_MinimalMode];

  view2 = [(LargeWeekViewController *)self view];
  LOBYTE(v10) = EKUICurrentWindowInterfaceParadigm() == 8;
  v8 = [EKEventViewController eventDetailViewControllerWithEvent:detailCopy delegate:self context:v11 canvasView:1 allowInlinePreview:0 previewInline:0 minimalMode:v10];

  v9 = [(WeekViewController *)self occurrenceViewForEvent:detailCopy];

  [(LargeWeekViewController *)self _presentEventViewController:v8 forOccurrenceView:v9 animated:1 showComments:0 completion:0];
}

- (BOOL)_tooFarToAnimate:(id)animate
{
  animateCopy = animate;
  displayedDate = [(WeekViewController *)self displayedDate];
  date = [displayedDate date];
  if (date)
  {
    v7 = date;
    date2 = [animateCopy date];

    if (!date2)
    {
      v18 = 1;
      goto LABEL_10;
    }

    displayedDate = CUIKCalendar();
    date3 = [animateCopy date];
    [displayedDate rangeOfUnit:512 inUnit:4096 forDate:date3];
    v11 = v10;

    displayedDate2 = [(WeekViewController *)self displayedDate];
    date4 = [displayedDate2 date];
    date5 = [animateCopy date];
    v15 = [displayedDate components:16 fromDate:date4 toDate:date5 options:0];
    v16 = [v15 day] / v11;

    if (v16 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = -v16;
    }

    v18 = v17 > 3;
  }

  else
  {
    v18 = 1;
  }

LABEL_10:
  return v18;
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  [model setSelectedDate:dateCopy];

  if (dateCopy)
  {
    [(WeekViewController *)self setDisplayedDate:dateCopy animated:animatedCopy & ~[(LargeWeekViewController *)self _tooFarToAnimate:dateCopy]];
  }

  else
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "LargeWeekViewController selectDate:animated: was called with a nil date.", v9, 2u);
    }
  }
}

- (void)updateNavigationBarDisplayedDateString
{
  displayedDate = [(WeekViewController *)self displayedDate];
  if (displayedDate)
  {
    v4 = displayedDate;
    navigationController = [(LargeWeekViewController *)self navigationController];
    topMainViewControllerContainer = [navigationController topMainViewControllerContainer];
    currentChildViewController = [topMainViewControllerContainer currentChildViewController];

    if (currentChildViewController == self)
    {
      navigationController2 = [(LargeWeekViewController *)self navigationController];
      displayedDate2 = [(WeekViewController *)self displayedDate];
      [navigationController2 setNavBarStringFromDate:displayedDate2 includeMonth:1 includeYear:1];
    }
  }
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
  v3 = shownEventEditViewController == 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
    v4 = 0;
  }

  else
  {
    shownEventViewController = [(MainViewController *)self shownEventViewController];
    v4 = shownEventViewController == 0;
  }

  return v4;
}

- (void)_selectNextEventInForwardDirection:(BOOL)direction
{
  navigationThrottleOperation = [(LargeWeekViewController *)self navigationThrottleOperation];

  if (!navigationThrottleOperation)
  {
    v6 = [TimerOperation operationWithTimeInterval:0.1];
    [(LargeWeekViewController *)self setNavigationThrottleOperation:v6];

    objc_initWeak(location, self);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E88D4;
    v41[3] = &unk_100210850;
    objc_copyWeak(&v42, location);
    navigationThrottleOperation2 = [(LargeWeekViewController *)self navigationThrottleOperation];
    [navigationThrottleOperation2 setCompletionBlock:v41];

    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
  }

  navigationThrottleOperation3 = [(LargeWeekViewController *)self navigationThrottleOperation];
  if (([navigationThrottleOperation3 isExecuting] & 1) == 0)
  {
    navigationThrottleOperation4 = [(LargeWeekViewController *)self navigationThrottleOperation];
    isFinished = [navigationThrottleOperation4 isFinished];

    if (isFinished)
    {
      return;
    }

    v11 = +[NSOperationQueue mainQueue];
    navigationThrottleOperation5 = [(LargeWeekViewController *)self navigationThrottleOperation];
    [v11 addOperation:navigationThrottleOperation5];

    v13 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
      navigationThrottleOperation6 = [(LargeWeekViewController *)self navigationThrottleOperation];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = navigationThrottleOperation6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#NavigationThrottle Added navigation throttle operation: %@", location, 0xCu);
    }

    showEventDetailsOperationQueue = [(LargeWeekViewController *)self showEventDetailsOperationQueue];
    [showEventDetailsOperationQueue cancelAllOperations];

    v17 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      showEventDetailsOperationQueue2 = [(LargeWeekViewController *)self showEventDetailsOperationQueue];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = showEventDetailsOperationQueue2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#ShowDetails Canceled all show event details timer operations in queue: %@", location, 0xCu);
    }

    navigationThrottleOperation3 = [(WeekViewController *)self _visibleOccurrenceViewsWithOptions:0];
    model = [(WeekViewController *)self model];
    v21 = [model selectedOccurrenceSelectionSource] != 1;

    model2 = [(WeekViewController *)self model];
    selectedOccurrence = [model2 selectedOccurrence];

    if (!selectedOccurrence)
    {
      model3 = [(WeekViewController *)self model];
      selectedOccurrences = [model3 selectedOccurrences];
      v26 = [selectedOccurrences count] == 0;

      if (v26)
      {
        selectedOccurrence = 0;
      }

      else
      {
        model4 = [(WeekViewController *)self model];
        selectedOccurrences2 = [model4 selectedOccurrences];
        selectedOccurrence = [selectedOccurrences2 firstObject];
      }
    }

    v29 = [[EKDayOccurrenceViewIterator alloc] initWithOccurrenceViews:navigationThrottleOperation3 selectedEvent:selectedOccurrence];
    v30 = v29;
    if (direction)
    {
      [v29 next];
    }

    else
    {
      [v29 previous];
    }
    v31 = ;
    v32 = v31;
    if (v31)
    {
      occurrence = [v31 occurrence];
      v34 = occurrence == 0;

      if (!v34)
      {
        occurrence2 = [v32 occurrence];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000E8A54;
        v36[3] = &unk_100211488;
        v37 = v32;
        v40 = v21;
        v38 = selectedOccurrence;
        selfCopy = self;
        [(LargeWeekViewController *)self showEvent:occurrence2 animated:1 showMode:0 context:0 completion:v36];
      }
    }
  }
}

- (void)showNextOccurrenceOfSelectableItem
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    return;
  }

  shownEventViewController = [(MainViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    shownEventViewController2 = [(MainViewController *)self shownEventViewController];
    [(LargeWeekViewController *)self eventViewControllerNextButtonWasTapped:shownEventViewController2];
LABEL_6:
    v7 = shownEventViewController2;
    goto LABEL_7;
  }

  model = [(WeekViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];
  shownEventViewController2 = [selectedOccurrence nextOccurrence];

  v7 = shownEventViewController2;
  if (shownEventViewController2)
  {
    [(LargeWeekViewController *)self showEvent:shownEventViewController2 animated:1 showMode:1 context:0];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    return;
  }

  shownEventViewController = [(MainViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    shownEventViewController2 = [(MainViewController *)self shownEventViewController];
    [(LargeWeekViewController *)self eventViewControllerPreviousButtonWasTapped:shownEventViewController2];
LABEL_6:
    v7 = shownEventViewController2;
    goto LABEL_7;
  }

  model = [(WeekViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];
  shownEventViewController2 = [selectedOccurrence previousOccurrence];

  v7 = shownEventViewController2;
  if (shownEventViewController2)
  {
    [(LargeWeekViewController *)self showEvent:shownEventViewController2 animated:1 showMode:1 context:0];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)showDetailsForCurrentSelectableItem
{
  presentedViewController = [(LargeWeekViewController *)self presentedViewController];
  if (!presentedViewController)
  {
    model = [(WeekViewController *)self model];
    pointerTargetedOccurrences = [model pointerTargetedOccurrences];
    v6 = [pointerTargetedOccurrences count];

    if (!v6)
    {
      return;
    }

    model2 = [(WeekViewController *)self model];
    pointerTargetedOccurrences2 = [model2 pointerTargetedOccurrences];
    v9 = [pointerTargetedOccurrences2 count];

    model3 = [(WeekViewController *)self model];
    pointerTargetedOccurrences3 = [model3 pointerTargetedOccurrences];
    v12 = pointerTargetedOccurrences3;
    if (v9 < 2)
    {
      firstObject = [pointerTargetedOccurrences3 firstObject];
      [(LargeWeekViewController *)self showEvent:firstObject animated:1 showMode:1 context:0];
    }

    else
    {
      [(LargeWeekViewController *)self showEvents:pointerTargetedOccurrences3 animated:1 showMode:1 context:0];
    }

    model4 = [(WeekViewController *)self model];
    [model4 setSelectedOccurrenceSelectionSource:0];
    presentedViewController = model4;
  }
}

- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  directionCopy = direction;
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0];
  model = [(WeekViewController *)self model];
  selectedDate = [model selectedDate];

  if (directionCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = [selectedDate calendarDateByAddingWeeks:v8];
  [(LargeWeekViewController *)self selectDate:v9 animated:animatedCopy];
}

- (BOOL)canSpaciallyEditOccurrences
{
  presentedViewController = [(LargeWeekViewController *)self presentedViewController];
  v3 = presentedViewController == 0;

  return v3;
}

- (id)spaciallyEditableOccurrences
{
  model = [(WeekViewController *)self model];
  pointerTargetedOccurrences = [model pointerTargetedOccurrences];

  return pointerTargetedOccurrences;
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
  if (![(WeekViewController *)self dateIsVisible:?])
  {
    model = [(WeekViewController *)self model];
    calendar = [model calendar];
    timeZone = [calendar timeZone];
    v8 = [EKCalendarDate calendarDateWithDate:toDateCopy timeZone:timeZone];

    [(LargeWeekViewController *)self selectDate:v8 animated:0];
  }
}

- (void)_weekViewDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  userInfo = [scrollingCopy userInfo];
  v6 = [userInfo objectForKey:@"WeekViewController_ScrollDidEndAnimationRangeStartKey"];

  userInfo2 = [scrollingCopy userInfo];

  v8 = [userInfo2 objectForKey:@"WeekViewController_ScrollDidEndAnimationRangeEndKey"];

  v9 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = CUIKStringForDate();
    v12 = CUIKStringForDate();
    *buf = 138412546;
    v49 = v11;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "LargeWeekViewController _weekViewDidEndScrolling: %@ to %@", buf, 0x16u);
  }

  model = [(WeekViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
  v16 = shownEventEditViewController;
  if (shownEventEditViewController && ([shownEventEditViewController presentingViewController], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    if (v6 && v8)
    {
      if (([v6 timeIntervalSinceReferenceDate], v35 = v34, objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v37 = v36, objc_msgSend(selectedOccurrence, "startCalendarDate"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "absoluteTime"), v40 = v39, v38, objc_msgSend(selectedOccurrence, "endCalendarDate"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "absoluteTime"), v43 = v42, v41, v40 >= v35) && v43 <= v37 || v40 <= v37 && v43 >= v37 || (v44 = fmin(v35, v37) > v43, v40 <= v35) && !v44)
      {
        event = [v16 event];
        v46 = [(WeekViewController *)self occurrenceViewForEvent:event];

        if (v46)
        {
          [(LargeWeekViewController *)self _presentEventViewController:v16 forOccurrenceView:v46 animated:0 showComments:0];
        }
      }
    }
  }

  else if ([(LargeWeekViewController *)self isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView]&& selectedOccurrence && v6 && v8)
  {
    if (([v6 timeIntervalSinceReferenceDate], v19 = v18, objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v21 = v20, objc_msgSend(selectedOccurrence, "startCalendarDate"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "absoluteTime"), v24 = v23, v22, objc_msgSend(selectedOccurrence, "endCalendarDate"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "absoluteTime"), v27 = v26, v25, v24 >= v19) && v27 <= v21 || v24 <= v21 && v27 >= v21 || (v28 = fmin(v19, v21) > v27, v24 <= v19) && !v28)
    {
      v29 = [(WeekViewController *)self occurrenceViewForEvent:selectedOccurrence];

      if (!v29)
      {
        v30 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "LargeWeekViewController _weekViewDidEndScrolling: scrolling ended, and selected occurrence should be within displayed time span, but occurrence view still not present. Reloading data and laying out.", buf, 2u);
        }

        [(WeekViewController *)self reloadData];
        view = [(LargeWeekViewController *)self view];
        [view layoutIfNeeded];
      }

      v32 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "LargeWeekViewController _weekViewDidEndScrolling: scrolled to a week that includes the selected event. Calling showEvent.", buf, 2u);
      }

      v33 = dispatch_time(0, 150000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E9B40;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_after(v33, &_dispatch_main_q, block);
    }
  }
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setDayScrubberController:0];
  [paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  [paletteCopy setWeekdayHeaderVisible:0];
  [paletteCopy setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDateStringVisible:CalSolariumEnabled() ^ 1];
  [paletteCopy setDividerLineVisible:0];
  if (CalSolariumEnabled())
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [paletteCopy setFocusBannerPlacement:v3];
  [paletteCopy setNeedsLayout];
  [paletteCopy layoutIfNeeded];
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
  v4 = shownEventEditViewController == 0;

  return v4;
}

- (void)_presentationControllerDidDismissPopover:(id)popover cleanSelectionState:(BOOL)state
{
  stateCopy = state;
  [UIPopoverPresentationController _setAlwaysAllowPopoverPresentations:0];
  [(MainViewController *)self invalidateManagedNavigationController];
  if (stateCopy)
  {
    [(WeekViewController *)self cleanupSelectionState];
  }

  self->_shouldRePresentPopoverAfterDrag = 0;
}

- (void)eventViewControllerWillBeginEditingEvent:(id)event
{
  eventCopy = event;
  ekui_futureTraitCollection = [(LargeWeekViewController *)self ekui_futureTraitCollection];
  verticalSizeClass = [ekui_futureTraitCollection verticalSizeClass];

  if (verticalSizeClass == 2)
  {
    eventGestureController = [(WeekViewController *)self eventGestureController];
    event = [eventCopy event];
    [eventGestureController liftUpOccurrenceForEditingEvent:event];

    event2 = [eventCopy event];
    [(WeekViewController *)self dimOccurrence:event2 occurrenceDate:0];

    popoverPresentationController = [eventCopy popoverPresentationController];
    eventGestureController2 = [(WeekViewController *)self eventGestureController];
    draggingView = [eventGestureController2 draggingView];
    v14 = draggingView;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [popoverPresentationController setPassthroughViews:v13];

    self->_shouldRePresentPopoverAfterDrag = 1;
  }

  [(LargeWeekViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)controller
{
  view = [(LargeWeekViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  return v4;
}

- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  view = [(LargeWeekViewController *)self view];
  v11 = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing();

  if (v11)
  {
    [viewControllerCopy setInternalEditViewDelegate:self];
    [viewControllerCopy setModalPresentationStyle:3];
    [viewControllerCopy setModalTransitionStyle:2];
    [viewControllerCopy preferredContentSize];
    [controllerCopy setPreferredContentSize:?];
    [controllerCopy presentViewController:viewControllerCopy animated:animatedCopy completion:0];
  }

  else
  {
    if (!viewControllerCopy)
    {
      event = [controllerCopy event];
      viewControllerCopy = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:event creationMethod:0 viewStart:1 eventEditViewDelegate:self];
    }

    presentingViewController = [controllerCopy presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EA1B0;
    v14[3] = &unk_10020EC68;
    v14[4] = self;
    viewControllerCopy = viewControllerCopy;
    v15 = viewControllerCopy;
    [presentingViewController dismissViewControllerAnimated:1 completion:v14];
  }
}

- (void)eventViewControllerWillFinishEditingEvent:(id)event deleted:(BOOL)deleted
{
  [(WeekViewController *)self cleanupSelectionState:event];
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1];
  self->_shouldRePresentPopoverAfterDrag = 0;
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  [controller setDelegate:{0, action}];
  [(WeekViewController *)self cleanupSelectionState];

  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1];
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
  v26[2] = sub_1000EA45C;
  v26[3] = &unk_10020EC68;
  v26[4] = self;
  v27 = alertCopy;
  v25 = alertCopy;
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v26];
}

- (BOOL)eventViewControllerShouldHideInlineEditButton
{
  selectedOccurrences = [(CUIKCalendarModel *)self->super.super._model selectedOccurrences];
  if ([selectedOccurrences count] < 2)
  {
    v5 = 0;
  }

  else
  {
    shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];
    v5 = shownExpandedReminderStackViewController != 0;
  }

  return v5;
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
    v7[2] = sub_1000EA5BC;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = nextOccurrence;
    v9 = tappedCopy;
    [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v7];
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
    v7[2] = sub_1000EA6FC;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = previousOccurrence;
    v9 = tappedCopy;
    [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v7];
  }
}

- (void)eventViewController:(id)controller requestsShowEvent:(id)event
{
  controllerCopy = controller;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EA82C;
  v9[3] = &unk_10020F2E0;
  v9[4] = self;
  eventCopy = event;
  v11 = controllerCopy;
  v7 = controllerCopy;
  v8 = eventCopy;
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v9];
}

- (BOOL)eventViewControllerShouldShowInlineEditButtonForInvitations:(id)invitations
{
  invitationsCopy = invitations;
  event = [invitationsCopy event];
  allowsParticipationStatusModifications = [event allowsParticipationStatusModifications];

  view = [(LargeWeekViewController *)self view];
  if (EKUICurrentHeightSizeClassIsCompact())
  {
    v8 = [invitationsCopy minimalMode] & allowsParticipationStatusModifications;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)eventViewControllerInlineEditButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(LargeWeekViewController *)self eventViewControllerShouldShowInlineEditButtonForInvitations:tappedCopy])
  {
    presentingViewController = [tappedCopy presentingViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000EAA34;
    v8[3] = &unk_10020EC68;
    v8[4] = self;
    v9 = tappedCopy;
    [presentingViewController dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    event = [tappedCopy event];
    v7 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:event creationMethod:0 viewStart:1 eventEditViewDelegate:0];

    [(LargeWeekViewController *)self eventViewController:tappedCopy requestsDisplayOfEditViewController:v7 animated:1];
  }
}

- (void)_presentDetailViewControllerAsPageSheet:(id)sheet
{
  self->_isPresentingPageSheet = 1;
  self->_isPresentingNonMinimalMode = 1;
  [(LargeWeekViewController *)self showViewController:sheet sender:self animated:1 completion:0];
}

- (void)_closeEventPresentationAnimated:(BOOL)animated cleanSelectionState:(BOOL)state completion:(id)completion
{
  stateCopy = state;
  animatedCopy = animated;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EAED8;
  v31[3] = &unk_10020EBC8;
  completionCopy = completion;
  v31[4] = self;
  v32 = completionCopy;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EAF20;
  v29[3] = &unk_10020F5D0;
  v29[4] = self;
  v9 = objc_retainBlock(v31);
  v30 = v9;
  v10 = objc_retainBlock(v29);
  shownEventViewController = [(MainViewController *)self shownEventViewController];
  if (shownEventViewController)
  {
  }

  else
  {
    shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

    if (!shownEventEditViewController)
    {
      (v10[2])(v10);
      goto LABEL_18;
    }
  }

  presentedViewController = [(LargeWeekViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  if (popoverPresentationController)
  {
    if (animatedCopy)
    {
      v15 = 0.3;
    }

    else
    {
      v15 = 0.0;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000EAFCC;
    v27[3] = &unk_10020EB00;
    v28 = popoverPresentationController;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000EB014;
    v23[3] = &unk_1002114D8;
    v23[4] = self;
    v24 = v28;
    v26 = stateCopy;
    v25 = v9;
    [UIView animateWithDuration:v27 animations:v23 completion:v15];
  }

  else
  {
    if (stateCopy)
    {
      [(WeekViewController *)self cleanupSelectionState];
    }

    presentedViewController2 = [(LargeWeekViewController *)self presentedViewController];

    if (presentedViewController2)
    {
      [(LargeWeekViewController *)self dismissViewControllerAnimated:animatedCopy completion:v10];
    }

    else
    {
      v17 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = v19;
        shownEventViewController2 = [(MainViewController *)self shownEventViewController];
        shownEventEditViewController2 = [(MainViewController *)self shownEventEditViewController];
        *buf = 138412802;
        v34 = v19;
        v35 = 2112;
        v36 = shownEventViewController2;
        v37 = 2112;
        v38 = shownEventEditViewController2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@ trying to show a new event thinks it is already showing one (shownEventViewController = %@, shownEventEditViewController = %@), and yet we are not presenting anything", buf, 0x20u);
      }

      (v10[2])(v10);
    }
  }

LABEL_18:
}

- (void)_presentEventViewController:(id)controller forOccurrenceView:(id)view animated:(BOOL)animated showComments:(BOOL)comments completion:(id)completion
{
  controllerCopy = controller;
  viewCopy = view;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EB2F4;
  v29[3] = &unk_10020EBC8;
  v29[4] = self;
  completionCopy = completion;
  v14 = completionCopy;
  v15 = objc_retainBlock(v29);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000EB368;
  v23[3] = &unk_100210C20;
  v23[4] = self;
  v24 = controllerCopy;
  v16 = viewCopy;
  animatedCopy = animated;
  commentsCopy = comments;
  v25 = v16;
  v26 = v15;
  v17 = v15;
  v18 = controllerCopy;
  v19 = objc_retainBlock(v23);
  occurrence = [v16 occurrence];
  if ([occurrence isNew])
  {
  }

  else
  {
    isReminderStack = [v16 isReminderStack];

    if ((isReminderStack & 1) == 0)
    {
      occurrence2 = [v16 occurrence];
      [(WeekViewController *)self scrollEventIntoView:occurrence2 animated:1 completion:v19];

      goto LABEL_6;
    }
  }

  (v19[2])(v19, 0);
LABEL_6:
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  if ([collectionCopy verticalSizeClass] != 1)
  {
    goto LABEL_4;
  }

  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    goto LABEL_4;
  }

  presentedViewController = [controllerCopy presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  presentedViewController = presentedViewController;
  viewControllers = [presentedViewController viewControllers];
  v12 = [viewControllers count];

  if (!v12)
  {

LABEL_11:
LABEL_12:
    presentationStyle = -1;
    goto LABEL_5;
  }

  viewControllers2 = [presentedViewController viewControllers];
  v14 = [viewControllers2 objectAtIndexedSubscript:0];

  objc_opt_class();
  LOBYTE(viewControllers2) = objc_opt_isKindOfClass();

  if ((viewControllers2 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  presentationStyle = [controllerCopy presentationStyle];
LABEL_5:

  return presentationStyle;
}

- (void)_setSelectedEvents:(id)events
{
  eventsCopy = events;
  model = [(WeekViewController *)self model];
  [model setSelectedOccurrences:eventsCopy];

  [(WeekViewController *)self _clearSelectedOccurrenceViews];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(WeekViewController *)self occurrenceViewForEvent:*(*(&v12 + 1) + 8 * v10), v12];
        [(WeekViewController *)self _selectOccurrenceView:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_displayEventDetailsViewControllerForEvent:(id)event showComment:(BOOL)comment context:(id)context completion:(id)completion
{
  commentCopy = comment;
  eventCopy = event;
  contextCopy = context;
  completionCopy = completion;
  v13 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "LargeWeekViewController _displayEventDetailsPopoverForEvent: called", buf, 2u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000EBC20;
  v19[3] = &unk_10020F680;
  v14 = completionCopy;
  v20 = v14;
  v15 = objc_retainBlock(v19);
  if (eventCopy)
  {
    v22 = eventCopy;
    v16 = [NSArray arrayWithObjects:&v22 count:1];
    [(LargeWeekViewController *)self _setSelectedEvents:v16];

    v17 = [(WeekViewController *)self occurrenceViewForEvent:eventCopy];
    [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:v17 showComments:commentCopy context:contextCopy forceShowEditor:0 creationMethod:0 completion:v14];
  }

  else
  {
    v18 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "LargeWeekViewController _displayEventDetailsPopoverForEvent: called with nil event.", buf, 2u);
    }

    (v15[2])(v15);
  }
}

- (void)_displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:(id)view showComments:(BOOL)comments context:(id)context forceShowEditor:(BOOL)editor creationMethod:(unint64_t)method completion:(id)completion
{
  viewCopy = view;
  contextCopy = context;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000EC064;
  v50[3] = &unk_10020F680;
  completionCopy = completion;
  v51 = completionCopy;
  v16 = objc_retainBlock(v50);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000EC07C;
  v48[3] = &unk_10020EBC8;
  v17 = completionCopy;
  v48[4] = self;
  v49 = v17;
  v18 = objc_retainBlock(v48);
  model = [(WeekViewController *)self model];
  selectedOccurrence = [model selectedOccurrence];

  if (selectedOccurrence)
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    occurrence = [viewCopy occurrence];
    isBirthday = [occurrence isBirthday];

    if (!isBirthday || ([viewCopy occurrence], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      model2 = [(WeekViewController *)self model];
      selectedOccurrence = [model2 selectedOccurrences];

      if (selectedOccurrence && [selectedOccurrence count] >= 2)
      {
        [(LargeWeekViewController *)self showEvents:selectedOccurrence animated:1 showMode:1 context:contextCopy];
      }

      v21 = kCalUILogHandle;
      if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v22 = "LargeWeekViewController _displayEventDetailsPopoverForSelectedEventWithOccurrenceView: called with nil event.";
      goto LABEL_16;
    }

    selectedOccurrence = v25;
    if (viewCopy)
    {
LABEL_3:
      [viewCopy frame];
      if (CGRectIsEmpty(v52))
      {
        v21 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v22 = "LargeWeekViewController _displayEventDetailsPopoverForSelectedEventWithOccurrenceView: occurrence view frame is null.";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
          goto LABEL_21;
        }
      }

      else
      {
        methodCopy = method;
        shownEventViewController = [(MainViewController *)self shownEventViewController];
        event = [shownEventViewController event];
        if ([event isEqual:selectedOccurrence])
        {
        }

        else
        {
          commentsCopy = comments;
          shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
          [shownEventEditViewController event];
          v35 = v17;
          v30 = v18;
          v32 = v31 = contextCopy;
          v34 = [v32 isEqual:selectedOccurrence];

          contextCopy = v31;
          v18 = v30;
          v17 = v35;

          if (!v34 && !self->_isPresentingEventDetails)
          {
            self->_isPresentingEventDetails = 1;
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1000EC0C0;
            v38[3] = &unk_100211528;
            editorCopy = editor;
            v39 = selectedOccurrence;
            selfCopy = self;
            v44 = methodCopy;
            v41 = contextCopy;
            v42 = viewCopy;
            v46 = commentsCopy;
            v43 = v18;
            selectedOccurrence = selectedOccurrence;
            [(LargeWeekViewController *)self _closeEventPresentationAnimated:0 cleanSelectionState:0 completion:v38];

            goto LABEL_22;
          }
        }
      }

      goto LABEL_21;
    }
  }

  v21 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v22 = "LargeWeekViewController _displayEventDetailsPopoverForSelectedEventWithOccurrenceView: got nil occurrence view.";
    goto LABEL_16;
  }

LABEL_21:
  (v16[2])(v16);
LABEL_22:
}

- (void)_rePresentEditPopoverFromTargetView:(id)view
{
  viewCopy = view;
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
  v6 = shownEventEditViewController;
  if (shownEventEditViewController)
  {
    [shownEventEditViewController setInternalEditViewDelegate:self];
    [v6 refreshStartAndEndDates];
    [(LargeWeekViewController *)self _presentEventViewController:v6 forOccurrenceView:viewCopy animated:0 showComments:0];
    popoverPresentationController = [v6 popoverPresentationController];
    eventGestureController = [(WeekViewController *)self eventGestureController];
    draggingView = [eventGestureController draggingView];
    v11 = draggingView;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [popoverPresentationController setPassthroughViews:v10];
  }
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    shownEventEditViewController2 = [(MainViewController *)self shownEventEditViewController];
LABEL_5:
    shownExpandedReminderStackViewController = shownEventEditViewController2;
    event = [shownEventEditViewController2 event];
    goto LABEL_6;
  }

  shownEventViewController = [(MainViewController *)self shownEventViewController];

  if (shownEventViewController)
  {
    shownEventEditViewController2 = [(MainViewController *)self shownEventViewController];
    goto LABEL_5;
  }

  event = [(MainViewController *)self shownExpandedReminderStackViewController];

  if (!event)
  {
    goto LABEL_10;
  }

  shownExpandedReminderStackViewController = [(MainViewController *)self shownExpandedReminderStackViewController];
  events = [shownExpandedReminderStackViewController events];
  event = [events firstObject];

LABEL_6:
  if (event)
  {
    v13 = [(WeekViewController *)self occurrenceViewForEvent:event];
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  eventGestureController = [(WeekViewController *)self eventGestureController];
  v16 = eventGestureController;
  if (!eventGestureController)
  {
    goto LABEL_16;
  }

  draggingView = [eventGestureController draggingView];

  if (!draggingView)
  {
    event2 = [v16 event];

    if (!event2)
    {
      goto LABEL_16;
    }

    event3 = [v16 event];
    occurrenceDate = [v16 occurrenceDate];
    [v16 forceStartWithOccurrence:event3 occurrenceDate:occurrenceDate shouldUpdateViewSource:0 shouldUpdateOrigin:1 shouldPresentEditMenu:0];
  }

  draggingView2 = [v16 draggingView];

  v13 = draggingView2;
LABEL_16:
  if (v13)
  {
    v22 = v13;
    *view = v13;
LABEL_22:
    size = CGRectNull.size;
    rect->origin = CGRectNull.origin;
    rect->size = size;
    goto LABEL_23;
  }

  _selectedOccurrenceViews = [(WeekViewController *)self _selectedOccurrenceViews];
  v24 = [_selectedOccurrenceViews count];

  v25 = kCalUILogHandle;
  if (v24 == 1)
  {
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Couldn't find event for popover re-presentation, but found a selected occurrence view to use.", buf, 2u);
    }

    _selectedOccurrenceViews2 = [(WeekViewController *)self _selectedOccurrenceViews];
    *view = [_selectedOccurrenceViews2 firstObject];

    goto LABEL_22;
  }

  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Couldn't find event for popover re-presentation", v37, 2u);
  }

  *view = [(LargeWeekViewController *)self view];
  view = [(LargeWeekViewController *)self view];
  [view bounds];
  MidX = CGRectGetMidX(v39);
  view2 = [(LargeWeekViewController *)self view];
  [view2 bounds];
  MidY = CGRectGetMidY(v40);
  rect->origin.x = MidX;
  rect->origin.y = MidY;
  __asm { FMOV            V0.2D, #20.0 }

  rect->size = _Q0;

LABEL_23:
}

- (BOOL)isEventAbleToShowPopover:(id)popover
{
  popoverCopy = popover;
  if (([popoverCopy isNew] & 1) == 0 && (objc_msgSend(popoverCopy, "isAllDay") & 1) == 0)
  {
    if (popoverCopy)
    {
      v7 = [(WeekViewController *)self _weekGroupForEvent:popoverCopy occurrenceDate:0];
      if (v7)
      {
        v8 = v7;
LABEL_9:
        weekView = [v8 weekView];
        v5 = [weekView isEventFullyVisible:popoverCopy];

        goto LABEL_4;
      }

      startDate = [popoverCopy startDate];
      model = [(WeekViewController *)self model];
      eventStore = [model eventStore];
      timeZone = [eventStore timeZone];
      v13 = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];

      [(WeekViewController *)self setDisplayedDate:v13 animated:0];
      v8 = [(WeekViewController *)self _weekGroupForEvent:popoverCopy occurrenceDate:0];

      if (v8)
      {
        goto LABEL_9;
      }
    }

    v5 = 0;
    goto LABEL_4;
  }

  v5 = 1;
LABEL_4:

  return v5;
}

- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)controller
{
  model = [(WeekViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];

  if (selectedOccurrences && [selectedOccurrences count])
  {
    firstObject = [selectedOccurrences firstObject];
    _occurrenceViewForPopoverSource = [(LargeWeekViewController *)self _occurrenceViewForPopoverSource];
    if (!_occurrenceViewForPopoverSource)
    {
      if ([selectedOccurrences count] == 1 && (objc_msgSend(selectedOccurrences, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isNew"), v8, v9))
      {
        eventGestureController = [(WeekViewController *)self eventGestureController];
        firstObject2 = [selectedOccurrences firstObject];
        occurrenceDate = [0 occurrenceDate];
        [eventGestureController forceStartWithOccurrence:firstObject2 occurrenceDate:occurrenceDate shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:1];

        _occurrenceViewForPopoverSource = [(LargeWeekViewController *)self _occurrenceViewForPopoverSource];
      }

      else
      {
        _occurrenceViewForPopoverSource = 0;
      }
    }

    view = [(LargeWeekViewController *)self view];
    [_occurrenceViewForPopoverSource bounds];
    [view convertRect:_occurrenceViewForPopoverSource fromView:?];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(LargeWeekViewController *)self isEventAbleToShowPopover:firstObject];
    if (_occurrenceViewForPopoverSource)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v31.origin.x = v17;
    v31.origin.y = v19;
    v31.size.width = v21;
    v31.size.height = v23;
    v26 = v25 & ~CGRectIsEmpty(v31);
    view2 = [(LargeWeekViewController *)self view];
    [view2 bounds];
    v33.origin.x = v17;
    v33.origin.y = v19;
    v33.size.width = v21;
    v33.size.height = v23;
    v14 = v26 & CGRectIntersectsRect(v32, v33);
  }

  else
  {
    v13 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315138;
      v30 = "[LargeWeekViewController isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Couldn't find a selected event to show details for.", &v29, 0xCu);
    }

    LOBYTE(v14) = 0;
  }

  return v14;
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
    *v29 = 138412546;
    *&v29[4] = v11;
    *&v29[12] = 2112;
    *&v29[14] = objc_opt_class();
    v13 = *&v29[14];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ requested that %@ prepare itself to show the source view for the popover.", v29, 0x16u);
  }

  v14 = [(WeekViewController *)self model:*v29];
  selectedOccurrences = [v14 selectedOccurrences];

  if (selectedOccurrences && [selectedOccurrences count])
  {
    if ([(LargeWeekViewController *)self isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:controllerCopy])
    {
      if (readyCopy)
      {
        v16 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          v18 = objc_opt_class();
          *v29 = 138412290;
          *&v29[4] = v18;
          v19 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ found the source occurence view for the selected event, calling show block.", v29, 0xCu);
        }

        readyCopy[2](readyCopy, 1);
      }
    }

    else
    {
      v21 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v22 = v21;
        v23 = objc_opt_class();
        v24 = v23;
        managedNavigationController2 = [(MainViewController *)self managedNavigationController];
        v26 = objc_opt_class();
        *v29 = 138412546;
        *&v29[4] = v23;
        *&v29[12] = 2112;
        *&v29[14] = v26;
        v27 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ didn't find the source occurence view for the selected event yet. It is either loading or offscreen. %@ will be notified once it is present.", v29, 0x16u);
      }

      [(LargeWeekViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
      self->_needToNotifyEnqueuedManagedNavigationController = 1;
      firstObject = [selectedOccurrences firstObject];
      if (self->_viewDidAppear)
      {
        [(LargeWeekViewController *)self _scrollEventIntoViewAndRequestPresentPopoverForEvent:firstObject];
      }

      else
      {
        objc_storeStrong(&self->_eventToPresentOnAppear, firstObject);
      }
    }
  }

  else
  {
    v20 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v29 = 136315138;
      *&v29[4] = "[LargeWeekViewController enqueuableNavigationController:requestsDeferShowViewControllerUntilReady:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Couldn't find a selected event to show details for.", v29, 0xCu);
    }

    [controllerCopy enqueueStackResetOperation];
  }
}

- (void)_scrollEventIntoViewAndRequestPresentPopoverForEvent:(id)event
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000ECE74;
  v3[3] = &unk_10020EB98;
  v3[4] = self;
  [(WeekViewController *)self scrollEventIntoView:event animated:1 completion:v3];
}

- (void)enqueueableManagedNavigationController:(id)controller requestsConfigurationOfPropertiesForPopoverPresentationController:(id)presentationController completion:(id)completion
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  completionCopy = completion;
  v12 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    managedNavigationController = [(MainViewController *)self managedNavigationController];
    v15 = objc_opt_class();
    v16 = v15;
    *buf = 138412546;
    v63 = v15;
    v64 = 2112;
    v65 = objc_opt_class();
    v17 = v65;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ requested that %@ configure the popover.", buf, 0x16u);
  }

  model = [(WeekViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];

  if (selectedOccurrences && [selectedOccurrences count])
  {
    _occurrenceViewForPopoverSource = [(LargeWeekViewController *)self _occurrenceViewForPopoverSource];
    if (!_occurrenceViewForPopoverSource)
    {
      sub_10017094C(a2, self);
    }

    [_occurrenceViewForPopoverSource bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    layer = [_occurrenceViewForPopoverSource layer];
    mask = [layer mask];

    if (mask)
    {
      layer2 = [_occurrenceViewForPopoverSource layer];
      mask2 = [layer2 mask];
      [mask2 frame];
      v22 = v33;
      v24 = v34;
      v26 = v35;
      v28 = v36;
    }

    else
    {
      view = [(LargeWeekViewController *)self view];
      [view convertRect:_occurrenceViewForPopoverSource fromView:{v22, v24, v26, v28}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      view2 = [(LargeWeekViewController *)self view];
      [view2 bounds];
      v69.origin.x = v40;
      v69.origin.y = v42;
      v69.size.width = v44;
      v69.size.height = v46;
      v67 = CGRectIntersection(v66, v69);
      x = v67.origin.x;
      y = v67.origin.y;
      width = v67.size.width;
      height = v67.size.height;

      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      if (CGRectIsEmpty(v68))
      {
LABEL_14:
        v56 = +[UIColor clearColor];
        presentedViewController = [presentationControllerCopy presentedViewController];
        view3 = [presentedViewController view];
        [view3 setBackgroundColor:v56];

        presentedViewController2 = [presentationControllerCopy presentedViewController];
        [presentedViewController2 setModalPresentationStyle:7];

        [presentationControllerCopy setDelegate:self];
        [presentationControllerCopy setSourceRect:{v22, v24, v26, v28}];
        [presentationControllerCopy setSourceView:_occurrenceViewForPopoverSource];
        [presentationControllerCopy setPermittedArrowDirections:12];
        v61 = _occurrenceViewForPopoverSource;
        v60 = [NSArray arrayWithObjects:&v61 count:1];
        [presentationControllerCopy setPassthroughViews:v60];

        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }

        goto LABEL_17;
      }

      layer2 = [(LargeWeekViewController *)self view];
      [_occurrenceViewForPopoverSource convertRect:layer2 fromView:{x, y, width, height}];
      v22 = v52;
      v24 = v53;
      v26 = v54;
      v28 = v55;
    }

    goto LABEL_14;
  }

  v37 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Can't present popover from a nil event.", buf, 2u);
  }

LABEL_17:
}

- (id)_occurrenceViewForPopoverSource
{
  eventGestureController = [(WeekViewController *)self eventGestureController];
  draggingView = [eventGestureController draggingView];

  if (draggingView)
  {
    eventGestureController2 = [(WeekViewController *)self eventGestureController];
    draggingView2 = [eventGestureController2 draggingView];
  }

  else
  {
    eventGestureController2 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    model = [(WeekViewController *)self model];
    selectedOccurrences = [model selectedOccurrences];

    v9 = [selectedOccurrences countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(selectedOccurrences);
          }

          v13 = [(WeekViewController *)self occurrenceViewForEvent:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [eventGestureController2 addObject:v13];
          }
        }

        v10 = [selectedOccurrences countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }

    if ([eventGestureController2 count] >= 2)
    {
      v14 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[LargeWeekViewController _occurrenceViewForPopoverSource]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: found multiple occurrence views for selected occurrences.", buf, 0xCu);
      }
    }

    draggingView2 = [eventGestureController2 anyObject];
  }

  v15 = draggingView2;

  return v15;
}

- (BOOL)eventViewControllerUseMinimalMode:(id)mode
{
  if (self->_isPresentingNonMinimalMode)
  {
    return 0;
  }

  view = [(LargeWeekViewController *)self view];
  v3 = EKUICurrentWindowInterfaceParadigm() == 8;

  return v3;
}

- (void)eventGestureController:(id)controller didSetUpAtDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (self->_shouldRePresentPopoverAfterDrag)
  {
    draggingView = [controllerCopy draggingView];
    v11 = [(WeekViewController *)self occurrenceViewSuperviewForEventGestureController:v9];
    CalSwitchViewToSuperview();
  }

  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0];
  v12.receiver = self;
  v12.super_class = LargeWeekViewController;
  [(WeekViewController *)&v12 eventGestureController:v9 didSetUpAtDate:dayCopy isAllDay:date];
}

- (BOOL)eventGestureController:(id)controller didCommitOccurrence:(id)occurrence toDate:(double)date isAllDay:(BOOL)day span:(int64_t)span
{
  dayCopy = day;
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  [(WeekViewController *)self updatePreferredReloadRange];
  [(WeekViewController *)self highlightDayViewCalendarDate:0 isAllDay:dayCopy];
  if (([occurrenceCopy isNew] & 1) == 0)
  {
    CalAnalyticsSendEvent();
  }

  if (self->_shouldRePresentPopoverAfterDrag && ([occurrenceCopy isNew] & 1) == 0)
  {
    draggingView = [controllerCopy draggingView];
    [(LargeWeekViewController *)self _rePresentEditPopoverFromTargetView:draggingView];
  }

  else
  {
    if ([occurrenceCopy isNew])
    {
      draggingView = +[EKEventEditor defaultTitleForCalendarItem];
      title = [occurrenceCopy title];
      v15 = [draggingView isEqualToString:title];

      if (v15)
      {
        [occurrenceCopy setTitle:&stru_1002133B8];
      }

      v46 = occurrenceCopy;
      v16 = [NSArray arrayWithObjects:&v46 count:1];
      [(LargeWeekViewController *)self _setSelectedEvents:v16];

      occurrenceDate = [controllerCopy occurrenceDate];
      [controllerCopy forceStartWithOccurrence:occurrenceCopy occurrenceDate:occurrenceDate shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:0];

      draggingView2 = [controllerCopy draggingView];
      [draggingView2 setSelected:1];

      draggingView3 = [controllerCopy draggingView];
      [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:draggingView3 showComments:0 creationMethod:1];

      shownEventViewController = [(MainViewController *)self shownEventViewController];
      popoverPresentationController = [shownEventViewController popoverPresentationController];
      draggingView4 = [controllerCopy draggingView];
      v45 = draggingView4;
      v23 = [NSArray arrayWithObjects:&v45 count:1];
      [popoverPresentationController setPassthroughViews:v23];

      view = [(LargeWeekViewController *)self view];
      self->_shouldRePresentPopoverAfterDrag = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing();
LABEL_20:

      goto LABEL_21;
    }

    draggingView = +[UIApplication sharedApplication];
    if (![draggingView optionKeyIsDown] || (v44 = occurrenceCopy, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v44, 1), v25 = objc_claimAutoreleasedReturnValue(), v26 = +[CUIKPasteboardUtilities allEventsValidForAction:fromEvents:](CUIKPasteboardUtilities, "allEventsValidForAction:fromEvents:", 2, v25), v25, !v26))
    {
      eKUI_editor = [(LargeWeekViewController *)self EKUI_editor];
      v41 = 0;
      v37 = [eKUI_editor saveEvent:occurrenceCopy span:span error:&v41];
      view = v41;

      if (v37)
      {
        model = [(WeekViewController *)self model];
        [model addOccurrenceAwaitingRefresh:occurrenceCopy];

        [(WeekViewController *)self editorDidSaveEvent:occurrenceCopy];
      }

      else
      {
        v39 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = view;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error moving event: %@", buf, 0xCu);
        }

        [occurrenceCopy revert];
        [(WeekViewController *)self editorDidCancelEditingEvent:occurrenceCopy];
      }

      goto LABEL_20;
    }

    v27 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "duplicating event(s) in large week view because option key is down", buf, 2u);
    }

    model2 = [(WeekViewController *)self model];
    pasteboardManager = [model2 pasteboardManager];
    startDate = [occurrenceCopy startDate];
    [pasteboardManager setDateForPaste:startDate];

    model3 = [(WeekViewController *)self model];
    pasteboardManager2 = [model3 pasteboardManager];
    [pasteboardManager2 setCalendarForPaste:0];

    model4 = [(WeekViewController *)self model];
    pasteboardManager3 = [model4 pasteboardManager];
    v35 = [NSSet setWithObject:occurrenceCopy];
    [pasteboardManager3 duplicateEvents:v35 withDateMode:1 delegate:self];

    [occurrenceCopy revert];
    [(WeekViewController *)self editorDidCancelEditingEvent:occurrenceCopy];
  }

LABEL_21:

  return 1;
}

- (void)eventGestureController:(id)controller didCancelEditingOccurrence:(id)occurrence fadedOut:(BOOL)out
{
  outCopy = out;
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  if (self->_shouldRePresentPopoverAfterDrag && !outCopy)
  {
    draggingView = [controllerCopy draggingView];
    [(LargeWeekViewController *)self _rePresentEditPopoverFromTargetView:draggingView];
  }

  v11.receiver = self;
  v11.super_class = LargeWeekViewController;
  [(WeekViewController *)&v11 eventGestureController:controllerCopy didCancelEditingOccurrence:occurrenceCopy fadedOut:outCopy];
}

- (void)eventGestureController:(id)controller didSingleTapOccurrence:(id)occurrence shouldExtendSelection:(BOOL)selection
{
  selectionCopy = selection;
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  if (self->_shouldRePresentPopoverAfterDrag)
  {
    draggingView = [controllerCopy draggingView];
    [(LargeWeekViewController *)self _rePresentEditPopoverFromTargetView:draggingView];
  }

  if (selectionCopy)
  {
    v10 = [(WeekViewController *)self occurrenceViewForEvent:occurrenceCopy];
    _selectedOccurrenceViews = [(WeekViewController *)self _selectedOccurrenceViews];
    v12 = [_selectedOccurrenceViews containsObject:v10];

    if (v12)
    {
      [(WeekViewController *)self _deselectOccurrenceView:v10];
    }

    else
    {
      [(WeekViewController *)self _selectOccurrenceView:v10];
    }
  }
}

- (double)eventGestureController:(id)controller heightForAllDayOccurrenceView:(id)view
{
  viewCopy = view;
  interfaceOrientation = [(LargeWeekViewController *)self interfaceOrientation];
  view = [(LargeWeekViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:interfaceOrientation isAllDay:1];
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

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  event = [controllerCopy event];
  if (handlerCopy)
  {
    v12 = v30;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000EE1A4;
    v30[3] = &unk_10020EBC8;
    v5 = &v31;
    v13 = handlerCopy;
    v30[4] = self;
    v31 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = objc_retainBlock(v12);
  switch(action)
  {
    case 2:
      [(WeekViewController *)self editorDidDeleteEvent:event];
      break;
    case 1:
      calendarToMakeVisibleOnSave = [controllerCopy calendarToMakeVisibleOnSave];
      objectID = [calendarToMakeVisibleOnSave objectID];
      if (objectID)
      {
        [(CUIKCalendarModel *)self->super.super._model ensureCalendarVisibleWithId:objectID];
      }

      [(WeekViewController *)self editorDidSaveEvent:event];
      self->_shouldRePresentPopoverAfterDrag = 0;
      if ([calendarToMakeVisibleOnSave sharingStatus])
      {
        if (v14)
        {
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000EE2B0;
          v21[3] = &unk_10020EBC8;
          v21[4] = self;
          v22 = handlerCopy;
          v20 = objc_retainBlock(v21);

          v14 = v20;
        }

        else
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000EE2A8;
          v23[3] = &unk_10020EB00;
          v23[4] = self;
          v14 = objc_retainBlock(v23);
        }
      }

      break;
    case 0:
      if ([event isNew])
      {
        eventGestureController = [(WeekViewController *)self eventGestureController];
        dragGestureInProgress = [eventGestureController dragGestureInProgress];

        if ((dragGestureInProgress & 1) == 0)
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000EE1B8;
          v29[3] = &unk_10020EB00;
          v29[4] = self;
          [UIView animateWithDuration:v29 animations:0.2];
        }

        if (v14)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1000EE25C;
          v24[3] = &unk_10020F9D0;
          v24[4] = self;
          v25 = event;
          v26 = handlerCopy;
          v17 = objc_retainBlock(v24);

          v14 = v17;
        }

        else
        {
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1000EE250;
          v27[3] = &unk_10020EC68;
          v27[4] = self;
          v28 = event;
          v14 = objc_retainBlock(v27);
        }
      }

      else
      {
        [(WeekViewController *)self editorDidCancelEditingEvent:event];
      }

      break;
  }

  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:1 completion:v14];

  if (handlerCopy)
  {
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)controller
{
  model = [(WeekViewController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (void)createdNewEventUsingCreationGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = +[EKEventEditor defaultTitleForCalendarItem];
  title = [gestureCopy title];
  v7 = [v5 isEqualToString:title];

  if (v7)
  {
    [gestureCopy setTitle:&stru_1002133B8];
  }

  v21 = gestureCopy;
  v8 = [NSArray arrayWithObjects:&v21 count:1];
  [(LargeWeekViewController *)self _setSelectedEvents:v8];

  eventGestureController = [(WeekViewController *)self eventGestureController];
  [eventGestureController liftUpOccurrenceForEditingEvent:gestureCopy];

  eventGestureController2 = [(WeekViewController *)self eventGestureController];
  draggingView = [eventGestureController2 draggingView];
  [draggingView setSelected:1];

  eventGestureController3 = [(WeekViewController *)self eventGestureController];
  draggingView2 = [eventGestureController3 draggingView];
  [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:draggingView2 showComments:0 creationMethod:4];

  shownEventViewController = [(MainViewController *)self shownEventViewController];
  popoverPresentationController = [shownEventViewController popoverPresentationController];
  eventGestureController4 = [(WeekViewController *)self eventGestureController];
  draggingView3 = [eventGestureController4 draggingView];
  v20 = draggingView3;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [popoverPresentationController setPassthroughViews:v18];

  view = [(LargeWeekViewController *)self view];
  self->_shouldRePresentPopoverAfterDrag = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing();
}

- (void)_setupPointerDoubleClickGestureRecognizer
{
  if (!self->_pointerDoubleClickRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDoubleClickGesture:"];
    pointerDoubleClickRecognizer = self->_pointerDoubleClickRecognizer;
    self->_pointerDoubleClickRecognizer = v3;

    [(UITapGestureRecognizer *)self->_pointerDoubleClickRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_pointerDoubleClickRecognizer setDelegate:self];
    weekScroller = [(WeekViewController *)self weekScroller];
    [weekScroller addGestureRecognizer:self->_pointerDoubleClickRecognizer];
  }
}

- (void)_handleDoubleClickGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_pointerDoubleClickRecognizer == gestureCopy)
  {
    v12 = gestureCopy;
    v5 = [(UITapGestureRecognizer *)gestureCopy state]== 3;
    gestureCopy = v12;
    if (v5)
    {
      weekScroller = [(WeekViewController *)self weekScroller];
      [(UITapGestureRecognizer *)v12 locationInView:weekScroller];
      v8 = v7;
      v10 = v9;

      v11 = [(WeekViewController *)self occurrenceViewAtPoint:0 ignoreSelectedCopyView:v8, v10];
      [(LargeWeekViewController *)self _showDetailsForOccurrenceView:v11];

      gestureCopy = v12;
    }
  }
}

- (void)_showDetailsForOccurrenceView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v8 = viewCopy;
    presentedViewController = [(LargeWeekViewController *)self presentedViewController];
    isBeingDismissed = [presentedViewController isBeingDismissed];

    viewCopy = v8;
    if ((isBeingDismissed & 1) == 0)
    {
      if ([v8 isReminderStack])
      {
        occurrences = [v8 occurrences];
        [(LargeWeekViewController *)self showEvents:occurrences animated:1 showMode:1 context:0];
      }

      else
      {
        occurrences = [v8 occurrence];
        [(LargeWeekViewController *)self showEvent:occurrences animated:1 showMode:1 context:0];
      }

      viewCopy = v8;
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  v7 = touchCopy;
  v8 = self->_pointerDoubleClickRecognizer != recognizer || [touchCopy type] == 1 || objc_msgSend(v7, "type") == 3;

  return v8;
}

- (id)pushedDayViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  [model setSelectedDate:dateCopy];

  [model setSelectedOccurrence:0];
  firstVisibleSecond = [(WeekViewController *)self firstVisibleSecond];
  model2 = [(WeekViewController *)self model];
  [model2 setFirstVisibleSecond:firstVisibleSecond];

  v10 = [DayViewContainerViewController alloc];
  window = [(MainViewController *)self window];
  v12 = [(MainViewControllerContainer *)v10 initWithModel:model window:window];

  navigationController = [(LargeWeekViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:animatedCopy];

  return v12;
}

- (id)pushedListViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  [model setSelectedDate:dateCopy];

  v8 = [ListViewContainerViewController alloc];
  model2 = [(WeekViewController *)self model];
  window = [(MainViewController *)self window];
  v11 = [(MainViewControllerContainer *)v8 initWithModel:model2 window:window];

  navigationController = [(LargeWeekViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:animatedCopy];

  return v11;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v10.receiver = self;
  v10.super_class = LargeWeekViewController;
  [(WeekViewController *)&v10 scrollViewDidScroll:scroll];
  v4 = CUIKGetOverlayCalendar();
  v5 = CUIKCalendar();
  earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
  v7 = [v5 dateFromComponents:earliestDateComponents];

  if (v4)
  {
    timeView2 = [CUIKDateStrings monthStringForDate:v7 inCalendar:v4];
    timeView = [(WeekViewController *)self timeView];
    [timeView setOverlayMonthText:timeView2];
  }

  else
  {
    timeView2 = [(WeekViewController *)self timeView];
    [timeView2 setOverlayMonthText:0];
  }
}

- (double)scrollToDisplayedDateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  [(WeekViewController *)&v8 scrollToDisplayedDateAnimated:?];
  v6 = v5;
  [(LargeWeekViewController *)self _showMonthOverlayInCellAtOffset:animatedCopy animated:?];
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0 cleanSelectionState:1 completion:0];
  return v6;
}

- (void)snapTargetScrollOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity
{
  v6.receiver = self;
  v6.super_class = LargeWeekViewController;
  [(WeekViewController *)&v6 snapTargetScrollOffset:velocity.x withVelocity:velocity.y];
  if ([(WeekViewController *)self showOverlayCalendar])
  {
    [(LargeWeekViewController *)self _showMonthOverlayInCellAtOffset:1 animated:offset->x];
  }
}

- (void)_showMonthOverlayInCellAtOffset:(double)offset animated:(BOOL)animated
{
  view = [(LargeWeekViewController *)self view];
  [view layoutSubviews];

  visibleWeeks = [(WeekViewController *)self visibleWeeks];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EECB8;
  v9[3] = &unk_100211548;
  *&v9[4] = offset;
  animatedCopy = animated;
  [visibleWeeks enumerateObjectsUsingBlock:v9];
}

- (void)overlayCalendarDidChange
{
  v9.receiver = self;
  v9.super_class = LargeWeekViewController;
  [(WeekViewController *)&v9 overlayCalendarDidChange];
  [(WeekViewController *)self currentScrollViewXOffset];
  [(LargeWeekViewController *)self _showMonthOverlayInCellAtOffset:0 animated:?];
  v3 = CUIKGetOverlayCalendar();
  if ([(WeekViewController *)self showOverlayCalendar]&& v3)
  {
    v4 = CUIKCalendar();
    earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
    timeView2 = [v4 dateFromComponents:earliestDateComponents];

    v7 = [CUIKDateStrings monthStringForDate:timeView2 inCalendar:v3];
    timeView = [(WeekViewController *)self timeView];
    [timeView setOverlayMonthText:v7];
  }

  else
  {
    timeView2 = [(WeekViewController *)self timeView];
    [timeView2 setOverlayMonthText:0];
  }
}

- (double)minimumHourScale
{
  v12.receiver = self;
  v12.super_class = LargeWeekViewController;
  [(WeekViewController *)&v12 minimumHourScale];
  v4 = v3;
  timeView = [(WeekViewController *)self timeView];
  [timeView frame];
  v7 = v6;

  view = [(LargeWeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:1];
  v10 = v9;

  result = v7 / v10;
  if (v4 >= v7 / v10)
  {
    return v4;
  }

  return result;
}

- (void)handleCloseKeyCommand
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];
  if (shownEventEditViewController)
  {
  }

  else
  {
    shownEventViewController = [(MainViewController *)self shownEventViewController];

    if (shownEventViewController)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000EEFB4;
      v5[3] = &unk_10020EB00;
      v5[4] = self;
      [(LargeWeekViewController *)self dismissViewControllerAnimated:1 completion:v5];
    }
  }
}

- (void)emptySpaceClickedOnDate:(id)date
{
  v4.receiver = self;
  v4.super_class = LargeWeekViewController;
  [(WeekViewController *)&v4 emptySpaceClickedOnDate:date];
  [(WeekViewController *)self _clearSelectedOccurrenceViews];
}

- (void)_showEditorForEvent:(id)event
{
  eventCopy = event;
  v11 = eventCopy;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  [(LargeWeekViewController *)self _setSelectedEvents:v5];

  draggingView = [(WeekViewController *)self occurrenceViewForEvent:eventCopy];
  if (!draggingView)
  {
    eventGestureController = [(WeekViewController *)self eventGestureController];
    [eventGestureController endForcedStart:0];

    eventGestureController2 = [(WeekViewController *)self eventGestureController];
    occurrenceDate = [0 occurrenceDate];
    [eventGestureController2 forceStartWithOccurrence:eventCopy occurrenceDate:occurrenceDate shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:0];

    eventGestureController3 = [(WeekViewController *)self eventGestureController];
    draggingView = [eventGestureController3 draggingView];
  }

  [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:draggingView showComments:0 context:0 forceShowEditor:1 creationMethod:3 completion:0];
}

@end
@interface LargeWeekViewController
- (BOOL)_tooFarToAnimate:(id)a3;
- (BOOL)canSpaciallyEditOccurrences;
- (BOOL)displaysDatesSnappedToWeekBoundaries;
- (BOOL)eventGestureController:(id)a3 didCommitOccurrence:(id)a4 toDate:(double)a5 isAllDay:(BOOL)a6 span:(int64_t)a7;
- (BOOL)eventViewControllerShouldHideInlineEditButton;
- (BOOL)eventViewControllerShouldShowInlineEditButtonForInvitations:(id)a3;
- (BOOL)eventViewControllerUseMinimalMode:(id)a3;
- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isEventAbleToShowPopover:(id)a3;
- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)a3;
- (BOOL)mainViewControllerCanChangeSelectedDate;
- (BOOL)mainViewControllerCanChangeSelectedEvent;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (Class)managedNavigationControllerType;
- (LargeWeekViewController)initWithModel:(id)a3 window:(id)a4;
- (double)eventGestureController:(id)a3 heightForAllDayOccurrenceView:(id)a4;
- (double)minimumHourScale;
- (double)scrollToDisplayedDateAnimated:(BOOL)a3;
- (id)_occurrenceViewForPopoverSource;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (id)pushedDayViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)pushedListViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (id)spaciallyEditableOccurrences;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (unint64_t)supportedInterfaceOrientations;
- (void)_closeEventPresentationAnimated:(BOOL)a3 cleanSelectionState:(BOOL)a4 completion:(id)a5;
- (void)_displayEventDetailsViewControllerForEvent:(id)a3 showComment:(BOOL)a4 context:(id)a5 completion:(id)a6;
- (void)_displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:(id)a3 showComments:(BOOL)a4 context:(id)a5 forceShowEditor:(BOOL)a6 creationMethod:(unint64_t)a7 completion:(id)a8;
- (void)_handleDoubleClickGesture:(id)a3;
- (void)_presentDetailViewControllerAsPageSheet:(id)a3;
- (void)_presentEventViewController:(id)a3 forOccurrenceView:(id)a4 animated:(BOOL)a5 showComments:(BOOL)a6 completion:(id)a7;
- (void)_presentationControllerDidDismissPopover:(id)a3 cleanSelectionState:(BOOL)a4;
- (void)_rePresentEditPopoverFromTargetView:(id)a3;
- (void)_resizeInterfaceForWindowSize:(CGSize)a3;
- (void)_scrollEventIntoViewAndRequestPresentPopoverForEvent:(id)a3;
- (void)_selectNextEventInForwardDirection:(BOOL)a3;
- (void)_setSelectedEvents:(id)a3;
- (void)_setupPointerDoubleClickGestureRecognizer;
- (void)_showDetailsForOccurrenceView:(id)a3;
- (void)_showEditorForEvent:(id)a3;
- (void)_showMonthOverlayInCellAtOffset:(double)a3 animated:(BOOL)a4;
- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4;
- (void)_weekViewDidEndScrolling:(id)a3;
- (void)createdNewEventUsingCreationGesture:(id)a3;
- (void)emptySpaceClickedOnDate:(id)a3;
- (void)enqueuableNavigationController:(id)a3 requestsDeferShowViewControllerUntilReady:(id)a4;
- (void)enqueueableManagedNavigationController:(id)a3 requestsConfigurationOfPropertiesForPopoverPresentationController:(id)a4 completion:(id)a5;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventGestureController:(id)a3 didCancelEditingOccurrence:(id)a4 fadedOut:(BOOL)a5;
- (void)eventGestureController:(id)a3 didSetUpAtDate:(double)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didSingleTapOccurrence:(id)a4 shouldExtendSelection:(BOOL)a5;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestsDisplayOfDeleteAlert:(id)a4;
- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5;
- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventViewControllerInlineEditButtonWasTapped:(id)a3;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)eventViewControllerWillBeginEditingEvent:(id)a3;
- (void)eventViewControllerWillFinishEditingEvent:(id)a3 deleted:(BOOL)a4;
- (void)handleCloseKeyCommand;
- (void)occurrencesWereSpaciallyEditedFromDate:(id)a3 toDate:(id)a4;
- (void)overlayCalendarDidChange;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)showDetailsForCurrentSelectableItem;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6 completion:(id)a7;
- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showNextOccurrenceOfSelectableItem;
- (void)showPreviousOccurrenceOfSelectableItem;
- (void)showReminderDetail:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)snapTargetScrollOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)a3;
- (void)updateVisibleRects;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation LargeWeekViewController

- (LargeWeekViewController)initWithModel:(id)a3 window:(id)a4
{
  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  v4 = [(WeekViewController *)&v8 initWithModel:a3 window:a4];
  if (v4)
  {
    v5 = objc_alloc_init(NSOperationQueue);
    [(LargeWeekViewController *)v4 setShowEventDetailsOperationQueue:v5];

    v6 = [(LargeWeekViewController *)v4 showEventDetailsOperationQueue];
    [v6 setMaxConcurrentOperationCount:1];
  }

  return v4;
}

- (BOOL)displaysDatesSnappedToWeekBoundaries
{
  v3 = [(WeekViewController *)self weekViewClass];
  v4 = [(WeekViewController *)self viewInterfaceOrientation];
  v5 = [(LargeWeekViewController *)self view];
  v6 = [(objc_class *)v3 displayedDaysForOrientation:v4 withViewInViewHierarchy:v5];

  return v6 == 7;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(MainViewController *)self shownEventEditViewController];

  if (v3)
  {
    v4 = [(MainViewController *)self shownEventEditViewController];
    v5 = [v4 supportedInterfaceOrientations];

    return v5;
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
  v3 = [(WeekViewController *)self displayedDate];

  if (!v3)
  {
    v4 = [(WeekViewController *)self model];
    v5 = [v4 selectedDate];

    [(WeekViewController *)self setDisplayedDate:v5];
  }

  [(LargeWeekViewController *)self _setupPointerDoubleClickGestureRecognizer];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(LargeWeekViewController *)self isViewLoaded])
  {
    v8 = [(LargeWeekViewController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      v10 = [(LargeWeekViewController *)self view];
      [v10 bounds];
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
      if (v7)
      {
        [v7 targetTransform];
      }

      else
      {
        memset(&v39, 0, sizeof(v39));
      }

      if (CGAffineTransformIsIdentity(&v39))
      {
        v15 = [(WeekViewController *)self weekScroller];
        [v15 bounds];
        v17 = v16;

        if (width >= v17)
        {
          v17 = width;
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = [(WeekViewController *)self visibleWeeks];
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v35 + 1) + 8 * i);
              v24 = [(WeekViewController *)self weekScroller];
              [v24 bounds];
              v26 = v25;
              v27 = [(WeekViewController *)self weekScroller];
              [v27 bounds];
              v29 = v28;

              [v23 adjustForVisibleRect:{0.0, v26, v17, v29}];
            }

            v20 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v20);
        }

        self->_hasAlreadyAdjustedVisibleRects = 1;
      }

      if (v7)
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
        [v7 animateAlongsideTransition:v33 completion:v32];
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
      [(WeekViewController *)&v31 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
    }
  }
}

- (void)_resizeInterfaceForWindowSize:(CGSize)a3
{
  if (!self->_isTransformingInterfaceSize)
  {
    if ([(WeekViewController *)self usePortraitLayoutForSize:a3.width, a3.height])
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    self->_isTransformingInterfaceSize = 1;
    v5 = [(WeekViewController *)self timeView];
    v6 = [v5 timeView];
    [v6 setOrientation:v4];

    v7 = [(WeekViewController *)self timeView];
    [v7 sizeToFit];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = [(WeekViewController *)self visibleWeeks];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [v13 weekView];
          [v14 setOrientation:v4];

          [v13 setNeedsLayout];
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [(WeekViewController *)self reusableViews];
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * j);
          v21 = [v20 weekView];
          [v21 setOrientation:v4];

          [v20 setNeedsLayout];
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v17);
    }

    [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:v4];
    v22 = [(LargeWeekViewController *)self view];
    [v22 setNeedsLayout];

    v23 = [(LargeWeekViewController *)self view];
    v24 = [v23 superview];

    if (v24)
    {
      [(WeekViewController *)self adjustVisibleAllDayOccurrenceLabelsAnimated:0];
    }

    v25 = +[UIApplication sharedApplication];
    v26 = [v25 isSuspended];

    v27 = [(WeekViewController *)self _selectedOccurrenceViews];
    if ([v27 count])
    {
      v28 = 0;
    }

    else
    {
      v29 = [(WeekViewController *)self eventGestureController];
      v30 = [v29 draggingView];
      v28 = v30 == 0;
    }

    if ((v26 | v28))
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

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = LargeWeekViewController;
  [(WeekViewController *)&v11 viewDidAppear:a3];
  self->_viewDidAppear = 1;
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(WeekViewController *)self displayedDate];
    v9 = [v8 date];
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LargeWeekViewController;
  [(LargeWeekViewController *)&v4 viewDidDisappear:a3];
  self->_viewDidAppear = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  [(WeekViewController *)&v8 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_weekViewDidEndScrolling:" name:@"WeekViewController_ScrollDidEndAnimationNotification" object:0];
  v5 = [(LargeWeekViewController *)self view];
  [v5 bounds];
  [(LargeWeekViewController *)self _resizeInterfaceForWindowSize:v6, v7];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"WeekViewController_ScrollDidEndAnimationNotification" object:0];
  [v5 removeObserver:self name:EKDayOccurrenceViewDidEndSelectionNotification object:0];
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0];
  v6 = [(LargeWeekViewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 _setHidesShadow:0];

  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  [(WeekViewController *)&v8 viewWillDisappear:v3];
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  self->_suppressInitialScrollToCurrentTime = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setPreferModalPresentation:0];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    [v13 setMinimalMode:{-[LargeWeekViewController eventViewControllerUseMinimalMode:](self, "eventViewControllerUseMinimalMode:", v13)}];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [(LargeWeekViewController *)self view];
    self->_isPresentingPageSheet = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing() ^ 1;
    goto LABEL_8;
  }

LABEL_9:
  v14.receiver = self;
  v14.super_class = LargeWeekViewController;
  [(MainViewController *)&v14 showViewController:v10 sender:v11 animated:v7 completion:v12];
}

- (Class)managedNavigationControllerType
{
  v3 = [(LargeWeekViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  if (v4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LargeWeekViewController;
    v5 = [(MainViewController *)&v7 managedNavigationControllerType];
  }

  return v5;
}

- (int64_t)presentationStyleOverrideForChildViewControllers
{
  v3 = [(LargeWeekViewController *)self view];
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

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    v16 = [v11 title];
    v17 = [v11 startDate];
    v18 = CUIKStringForDate();
    *buf = 138412546;
    v39 = v16;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "LargeWeekViewController showEvent:animated:showMode:context:completion asked to show event named '%@' starting on '%@'.", buf, 0x16u);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000E7BDC;
  v35[3] = &unk_10020F680;
  v19 = v13;
  v36 = v19;
  v20 = objc_retainBlock(v35);
  v21 = [(LargeWeekViewController *)self presentedViewController];
  v22 = [v21 isBeingDismissed];

  if (v22)
  {
    v23 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "LargeWeekViewController showEvent:animated:showMode:context:completion unable to show event due to dismissing presentation.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (a5 == 3)
  {
    [(LargeWeekViewController *)self _showEditorForEvent:v11];
LABEL_8:
    (v20[2])(v20);
    goto LABEL_19;
  }

  v37 = v11;
  v24 = [NSArray arrayWithObjects:&v37 count:1];
  [(LargeWeekViewController *)self _setSelectedEvents:v24];

  v25 = a5 == 2;
  v26 = [(WeekViewController *)self occurrenceViewForEvent:v11];
  v27 = v26;
  if (!v26 || ([v26 frame], CGRectIsEmpty(v42)) || (objc_msgSend(v27, "frame"), CGRectIsNull(v43)) || (objc_msgSend(v11, "startDate"), v28 = objc_claimAutoreleasedReturnValue(), v31 = -[WeekViewController dateIsVisible:](self, "dateIsVisible:", v28), v28, (v31 & 1) == 0))
  {
    v29 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "LargeWeekViewController showEvent:animated:showMode:context:completion got an invalid occurrenceView. Setting up for deferred popover presentation.", buf, 2u);
    }

    self->_shouldPresentEventCommentsForSelectedOccurrence = v25;
    [(LargeWeekViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
    v30 = [v11 startCalendarDate];
    [(LargeWeekViewController *)self selectDate:v30 animated:0];

    (v20[2])(v20);
  }

  else if (a5)
  {
    [(LargeWeekViewController *)self _displayEventDetailsViewControllerForEvent:v11 showComment:a5 == 2 context:v12 completion:v19];
  }

  else
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E7BF4;
    v32[3] = &unk_10020F9D0;
    v32[4] = self;
    v33 = v11;
    v34 = v20;
    [(LargeWeekViewController *)self _closeEventPresentationAnimated:0 cleanSelectionState:0 completion:v32];
  }

LABEL_19:
}

- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a3;
  v9 = [(LargeWeekViewController *)self presentedViewController];
  v10 = [v9 isBeingDismissed];

  if (v10)
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
    v12 = [v8 firstObject];
    v25 = v12;
    v13 = [NSArray arrayWithObjects:&v25 count:1];
    [(LargeWeekViewController *)self _setSelectedEvents:v13];

    v14 = a5 == 2;
    v15 = [v8 firstObject];
    v16 = [(WeekViewController *)self occurrenceViewForEvent:v15];

    if (!v16 || ([v16 frame], CGRectIsEmpty(v26)) || (objc_msgSend(v16, "frame"), CGRectIsNull(v27)) || (objc_msgSend(v8, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "startDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[WeekViewController dateIsVisible:](self, "dateIsVisible:", v18), v18, v17, (v19 & 1) == 0))
    {
      v22 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "LargeWeekViewController showEvent:animated:showMode:context:completion got an invalid occurrenceView. Setting up for deferred popover presentation.", v24, 2u);
      }

      self->_shouldPresentEventCommentsForSelectedOccurrence = v14;
      [(LargeWeekViewController *)self setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:1];
      v21 = [v8 firstObject];
      v23 = [v21 startCalendarDate];
      [(LargeWeekViewController *)self selectDate:v23 animated:0];
    }

    else
    {
      v20 = a5 == 2;
      v21 = [[EKExpandedReminderStackViewController alloc] initWithEvents:v8 delegate:self];
      [(LargeWeekViewController *)self _presentEventViewController:v21 forOccurrenceView:v16 animated:1 showComments:v20 completion:0];
    }
  }
}

- (void)showReminderDetail:(id)a3
{
  v4 = a3;
  v11 = objc_opt_new();
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_AllowsCalendarPreview];
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_CalendarPreviewIsInlineDayView];
  v5 = [(LargeWeekViewController *)self view];
  v6 = [NSNumber numberWithInt:EKUICurrentWindowInterfaceParadigm() == 8];
  [v11 setObject:v6 forKeyedSubscript:EKUIEventDetailsContext_MinimalMode];

  v7 = [(LargeWeekViewController *)self view];
  LOBYTE(v10) = EKUICurrentWindowInterfaceParadigm() == 8;
  v8 = [EKEventViewController eventDetailViewControllerWithEvent:v4 delegate:self context:v11 canvasView:1 allowInlinePreview:0 previewInline:0 minimalMode:v10];

  v9 = [(WeekViewController *)self occurrenceViewForEvent:v4];

  [(LargeWeekViewController *)self _presentEventViewController:v8 forOccurrenceView:v9 animated:1 showComments:0 completion:0];
}

- (BOOL)_tooFarToAnimate:(id)a3
{
  v4 = a3;
  v5 = [(WeekViewController *)self displayedDate];
  v6 = [v5 date];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 date];

    if (!v8)
    {
      v18 = 1;
      goto LABEL_10;
    }

    v5 = CUIKCalendar();
    v9 = [v4 date];
    [v5 rangeOfUnit:512 inUnit:4096 forDate:v9];
    v11 = v10;

    v12 = [(WeekViewController *)self displayedDate];
    v13 = [v12 date];
    v14 = [v4 date];
    v15 = [v5 components:16 fromDate:v13 toDate:v14 options:0];
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

- (void)selectDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WeekViewController *)self model];
  [v7 setSelectedDate:v6];

  if (v6)
  {
    [(WeekViewController *)self setDisplayedDate:v6 animated:v4 & ~[(LargeWeekViewController *)self _tooFarToAnimate:v6]];
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
  v3 = [(WeekViewController *)self displayedDate];
  if (v3)
  {
    v4 = v3;
    v5 = [(LargeWeekViewController *)self navigationController];
    v6 = [v5 topMainViewControllerContainer];
    v7 = [v6 currentChildViewController];

    if (v7 == self)
    {
      v9 = [(LargeWeekViewController *)self navigationController];
      v8 = [(WeekViewController *)self displayedDate];
      [v9 setNavBarStringFromDate:v8 includeMonth:1 includeYear:1];
    }
  }
}

- (BOOL)mainViewControllerCanChangeSelectedEvent
{
  v2 = [(MainViewController *)self shownEventEditViewController];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)mainViewControllerCanChangeSelectedDate
{
  v3 = [(MainViewController *)self shownEventEditViewController];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MainViewController *)self shownEventViewController];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)_selectNextEventInForwardDirection:(BOOL)a3
{
  v5 = [(LargeWeekViewController *)self navigationThrottleOperation];

  if (!v5)
  {
    v6 = [TimerOperation operationWithTimeInterval:0.1];
    [(LargeWeekViewController *)self setNavigationThrottleOperation:v6];

    objc_initWeak(location, self);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E88D4;
    v41[3] = &unk_100210850;
    objc_copyWeak(&v42, location);
    v7 = [(LargeWeekViewController *)self navigationThrottleOperation];
    [v7 setCompletionBlock:v41];

    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
  }

  v8 = [(LargeWeekViewController *)self navigationThrottleOperation];
  if (([v8 isExecuting] & 1) == 0)
  {
    v9 = [(LargeWeekViewController *)self navigationThrottleOperation];
    v10 = [v9 isFinished];

    if (v10)
    {
      return;
    }

    v11 = +[NSOperationQueue mainQueue];
    v12 = [(LargeWeekViewController *)self navigationThrottleOperation];
    [v11 addOperation:v12];

    v13 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
      v15 = [(LargeWeekViewController *)self navigationThrottleOperation];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#NavigationThrottle Added navigation throttle operation: %@", location, 0xCu);
    }

    v16 = [(LargeWeekViewController *)self showEventDetailsOperationQueue];
    [v16 cancelAllOperations];

    v17 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      v19 = [(LargeWeekViewController *)self showEventDetailsOperationQueue];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#ShowDetails Canceled all show event details timer operations in queue: %@", location, 0xCu);
    }

    v8 = [(WeekViewController *)self _visibleOccurrenceViewsWithOptions:0];
    v20 = [(WeekViewController *)self model];
    v21 = [v20 selectedOccurrenceSelectionSource] != 1;

    v22 = [(WeekViewController *)self model];
    v23 = [v22 selectedOccurrence];

    if (!v23)
    {
      v24 = [(WeekViewController *)self model];
      v25 = [v24 selectedOccurrences];
      v26 = [v25 count] == 0;

      if (v26)
      {
        v23 = 0;
      }

      else
      {
        v27 = [(WeekViewController *)self model];
        v28 = [v27 selectedOccurrences];
        v23 = [v28 firstObject];
      }
    }

    v29 = [[EKDayOccurrenceViewIterator alloc] initWithOccurrenceViews:v8 selectedEvent:v23];
    v30 = v29;
    if (a3)
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
      v33 = [v31 occurrence];
      v34 = v33 == 0;

      if (!v34)
      {
        v35 = [v32 occurrence];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000E8A54;
        v36[3] = &unk_100211488;
        v37 = v32;
        v40 = v21;
        v38 = v23;
        v39 = self;
        [(LargeWeekViewController *)self showEvent:v35 animated:1 showMode:0 context:0 completion:v36];
      }
    }
  }
}

- (void)showNextOccurrenceOfSelectableItem
{
  v3 = [(MainViewController *)self shownEventEditViewController];

  if (v3)
  {
    return;
  }

  v4 = [(MainViewController *)self shownEventViewController];

  if (v4)
  {
    v8 = [(MainViewController *)self shownEventViewController];
    [(LargeWeekViewController *)self eventViewControllerNextButtonWasTapped:v8];
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  v5 = [(WeekViewController *)self model];
  v6 = [v5 selectedOccurrence];
  v8 = [v6 nextOccurrence];

  v7 = v8;
  if (v8)
  {
    [(LargeWeekViewController *)self showEvent:v8 animated:1 showMode:1 context:0];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)showPreviousOccurrenceOfSelectableItem
{
  v3 = [(MainViewController *)self shownEventEditViewController];

  if (v3)
  {
    return;
  }

  v4 = [(MainViewController *)self shownEventViewController];

  if (v4)
  {
    v8 = [(MainViewController *)self shownEventViewController];
    [(LargeWeekViewController *)self eventViewControllerPreviousButtonWasTapped:v8];
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  v5 = [(WeekViewController *)self model];
  v6 = [v5 selectedOccurrence];
  v8 = [v6 previousOccurrence];

  v7 = v8;
  if (v8)
  {
    [(LargeWeekViewController *)self showEvent:v8 animated:1 showMode:1 context:0];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)showDetailsForCurrentSelectableItem
{
  v3 = [(LargeWeekViewController *)self presentedViewController];
  if (!v3)
  {
    v4 = [(WeekViewController *)self model];
    v5 = [v4 pointerTargetedOccurrences];
    v6 = [v5 count];

    if (!v6)
    {
      return;
    }

    v7 = [(WeekViewController *)self model];
    v8 = [v7 pointerTargetedOccurrences];
    v9 = [v8 count];

    v10 = [(WeekViewController *)self model];
    v11 = [v10 pointerTargetedOccurrences];
    v12 = v11;
    if (v9 < 2)
    {
      v13 = [v11 firstObject];
      [(LargeWeekViewController *)self showEvent:v13 animated:1 showMode:1 context:0];
    }

    else
    {
      [(LargeWeekViewController *)self showEvents:v11 animated:1 showMode:1 context:0];
    }

    v14 = [(WeekViewController *)self model];
    [v14 setSelectedOccurrenceSelectionSource:0];
    v3 = v14;
  }
}

- (void)_showNextDateComponentUnitInForwardDirection:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0];
  v7 = [(WeekViewController *)self model];
  v10 = [v7 selectedDate];

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = [v10 calendarDateByAddingWeeks:v8];
  [(LargeWeekViewController *)self selectDate:v9 animated:v4];
}

- (BOOL)canSpaciallyEditOccurrences
{
  v2 = [(LargeWeekViewController *)self presentedViewController];
  v3 = v2 == 0;

  return v3;
}

- (id)spaciallyEditableOccurrences
{
  v2 = [(WeekViewController *)self model];
  v3 = [v2 pointerTargetedOccurrences];

  return v3;
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
  v9 = a4;
  if (![(WeekViewController *)self dateIsVisible:?])
  {
    v5 = [(WeekViewController *)self model];
    v6 = [v5 calendar];
    v7 = [v6 timeZone];
    v8 = [EKCalendarDate calendarDateWithDate:v9 timeZone:v7];

    [(LargeWeekViewController *)self selectDate:v8 animated:0];
  }
}

- (void)_weekViewDidEndScrolling:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"WeekViewController_ScrollDidEndAnimationRangeStartKey"];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:@"WeekViewController_ScrollDidEndAnimationRangeEndKey"];

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

  v13 = [(WeekViewController *)self model];
  v14 = [v13 selectedOccurrence];

  v15 = [(MainViewController *)self shownEventEditViewController];
  v16 = v15;
  if (v15 && ([v15 presentingViewController], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    if (v6 && v8)
    {
      if (([v6 timeIntervalSinceReferenceDate], v35 = v34, objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v37 = v36, objc_msgSend(v14, "startCalendarDate"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "absoluteTime"), v40 = v39, v38, objc_msgSend(v14, "endCalendarDate"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "absoluteTime"), v43 = v42, v41, v40 >= v35) && v43 <= v37 || v40 <= v37 && v43 >= v37 || (v44 = fmin(v35, v37) > v43, v40 <= v35) && !v44)
      {
        v45 = [v16 event];
        v46 = [(WeekViewController *)self occurrenceViewForEvent:v45];

        if (v46)
        {
          [(LargeWeekViewController *)self _presentEventViewController:v16 forOccurrenceView:v46 animated:0 showComments:0];
        }
      }
    }
  }

  else if ([(LargeWeekViewController *)self isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView]&& v14 && v6 && v8)
  {
    if (([v6 timeIntervalSinceReferenceDate], v19 = v18, objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v21 = v20, objc_msgSend(v14, "startCalendarDate"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "absoluteTime"), v24 = v23, v22, objc_msgSend(v14, "endCalendarDate"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "absoluteTime"), v27 = v26, v25, v24 >= v19) && v27 <= v21 || v24 <= v21 && v27 >= v21 || (v28 = fmin(v19, v21) > v27, v24 <= v19) && !v28)
    {
      v29 = [(WeekViewController *)self occurrenceViewForEvent:v14];

      if (!v29)
      {
        v30 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "LargeWeekViewController _weekViewDidEndScrolling: scrolling ended, and selected occurrence should be within displayed time span, but occurrence view still not present. Reloading data and laying out.", buf, 2u);
        }

        [(WeekViewController *)self reloadData];
        v31 = [(LargeWeekViewController *)self view];
        [v31 layoutIfNeeded];
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

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [v4 setDayScrubberController:0];
  [v4 setWeekdayHeaderFillsHalfWidth:0];
  [v4 setWeekdayHeaderVisible:0];
  [v4 setTodayButtonVisible:CalSolariumEnabled() ^ 1];
  [v4 setDateStringVisible:CalSolariumEnabled() ^ 1];
  [v4 setDividerLineVisible:0];
  if (CalSolariumEnabled())
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [v4 setFocusBannerPlacement:v3];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = [(MainViewController *)self shownEventEditViewController];
  v4 = v3 == 0;

  return v4;
}

- (void)_presentationControllerDidDismissPopover:(id)a3 cleanSelectionState:(BOOL)a4
{
  v4 = a4;
  [UIPopoverPresentationController _setAlwaysAllowPopoverPresentations:0];
  [(MainViewController *)self invalidateManagedNavigationController];
  if (v4)
  {
    [(WeekViewController *)self cleanupSelectionState];
  }

  self->_shouldRePresentPopoverAfterDrag = 0;
}

- (void)eventViewControllerWillBeginEditingEvent:(id)a3
{
  v4 = a3;
  v5 = [(LargeWeekViewController *)self ekui_futureTraitCollection];
  v6 = [v5 verticalSizeClass];

  if (v6 == 2)
  {
    v7 = [(WeekViewController *)self eventGestureController];
    v8 = [v4 event];
    [v7 liftUpOccurrenceForEditingEvent:v8];

    v9 = [v4 event];
    [(WeekViewController *)self dimOccurrence:v9 occurrenceDate:0];

    v10 = [v4 popoverPresentationController];
    v11 = [(WeekViewController *)self eventGestureController];
    v12 = [v11 draggingView];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v10 setPassthroughViews:v13];

    self->_shouldRePresentPopoverAfterDrag = 1;
  }

  [(LargeWeekViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (BOOL)eventViewDelegateShouldHandlePresentationOfEditViewController:(id)a3
{
  v3 = [(LargeWeekViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

  return v4;
}

- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(LargeWeekViewController *)self view];
  v11 = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing();

  if (v11)
  {
    [v9 setInternalEditViewDelegate:self];
    [v9 setModalPresentationStyle:3];
    [v9 setModalTransitionStyle:2];
    [v9 preferredContentSize];
    [v8 setPreferredContentSize:?];
    [v8 presentViewController:v9 animated:v5 completion:0];
  }

  else
  {
    if (!v9)
    {
      v12 = [v8 event];
      v9 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:v12 creationMethod:0 viewStart:1 eventEditViewDelegate:self];
    }

    v13 = [v8 presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EA1B0;
    v14[3] = &unk_10020EC68;
    v14[4] = self;
    v9 = v9;
    v15 = v9;
    [v13 dismissViewControllerAnimated:1 completion:v14];
  }
}

- (void)eventViewControllerWillFinishEditingEvent:(id)a3 deleted:(BOOL)a4
{
  [(WeekViewController *)self cleanupSelectionState:a3];
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1];
  self->_shouldRePresentPopoverAfterDrag = 0;
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  [a3 setDelegate:{0, a4}];
  [(WeekViewController *)self cleanupSelectionState];

  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1];
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
  v26[2] = sub_1000EA45C;
  v26[3] = &unk_10020EC68;
  v26[4] = self;
  v27 = v6;
  v25 = v6;
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v26];
}

- (BOOL)eventViewControllerShouldHideInlineEditButton
{
  v3 = [(CUIKCalendarModel *)self->super.super._model selectedOccurrences];
  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(MainViewController *)self shownExpandedReminderStackViewController];
    v5 = v4 != 0;
  }

  return v5;
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
    v7[2] = sub_1000EA5BC;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = v6;
    v9 = v4;
    [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v7];
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
    v7[2] = sub_1000EA6FC;
    v7[3] = &unk_10020F2E0;
    v7[4] = self;
    v8 = v6;
    v9 = v4;
    [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v7];
  }
}

- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EA82C;
  v9[3] = &unk_10020F2E0;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:0 completion:v9];
}

- (BOOL)eventViewControllerShouldShowInlineEditButtonForInvitations:(id)a3
{
  v4 = a3;
  v5 = [v4 event];
  v6 = [v5 allowsParticipationStatusModifications];

  v7 = [(LargeWeekViewController *)self view];
  if (EKUICurrentHeightSizeClassIsCompact())
  {
    v8 = [v4 minimalMode] & v6;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)eventViewControllerInlineEditButtonWasTapped:(id)a3
{
  v4 = a3;
  if ([(LargeWeekViewController *)self eventViewControllerShouldShowInlineEditButtonForInvitations:v4])
  {
    v5 = [v4 presentingViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000EAA34;
    v8[3] = &unk_10020EC68;
    v8[4] = self;
    v9 = v4;
    [v5 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v6 = [v4 event];
    v7 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:v6 creationMethod:0 viewStart:1 eventEditViewDelegate:0];

    [(LargeWeekViewController *)self eventViewController:v4 requestsDisplayOfEditViewController:v7 animated:1];
  }
}

- (void)_presentDetailViewControllerAsPageSheet:(id)a3
{
  self->_isPresentingPageSheet = 1;
  self->_isPresentingNonMinimalMode = 1;
  [(LargeWeekViewController *)self showViewController:a3 sender:self animated:1 completion:0];
}

- (void)_closeEventPresentationAnimated:(BOOL)a3 cleanSelectionState:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EAED8;
  v31[3] = &unk_10020EBC8;
  v8 = a5;
  v31[4] = self;
  v32 = v8;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EAF20;
  v29[3] = &unk_10020F5D0;
  v29[4] = self;
  v9 = objc_retainBlock(v31);
  v30 = v9;
  v10 = objc_retainBlock(v29);
  v11 = [(MainViewController *)self shownEventViewController];
  if (v11)
  {
  }

  else
  {
    v12 = [(MainViewController *)self shownEventEditViewController];

    if (!v12)
    {
      (v10[2])(v10);
      goto LABEL_18;
    }
  }

  v13 = [(LargeWeekViewController *)self presentedViewController];
  v14 = [v13 popoverPresentationController];

  if (v14)
  {
    if (v6)
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
    v28 = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000EB014;
    v23[3] = &unk_1002114D8;
    v23[4] = self;
    v24 = v28;
    v26 = v5;
    v25 = v9;
    [UIView animateWithDuration:v27 animations:v23 completion:v15];
  }

  else
  {
    if (v5)
    {
      [(WeekViewController *)self cleanupSelectionState];
    }

    v16 = [(LargeWeekViewController *)self presentedViewController];

    if (v16)
    {
      [(LargeWeekViewController *)self dismissViewControllerAnimated:v6 completion:v10];
    }

    else
    {
      v17 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [(MainViewController *)self shownEventViewController];
        v22 = [(MainViewController *)self shownEventEditViewController];
        *buf = 138412802;
        v34 = v19;
        v35 = 2112;
        v36 = v21;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@ trying to show a new event thinks it is already showing one (shownEventViewController = %@, shownEventEditViewController = %@), and yet we are not presenting anything", buf, 0x20u);
      }

      (v10[2])(v10);
    }
  }

LABEL_18:
}

- (void)_presentEventViewController:(id)a3 forOccurrenceView:(id)a4 animated:(BOOL)a5 showComments:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EB2F4;
  v29[3] = &unk_10020EBC8;
  v29[4] = self;
  v30 = a7;
  v14 = v30;
  v15 = objc_retainBlock(v29);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000EB368;
  v23[3] = &unk_100210C20;
  v23[4] = self;
  v24 = v12;
  v16 = v13;
  v27 = a5;
  v28 = a6;
  v25 = v16;
  v26 = v15;
  v17 = v15;
  v18 = v12;
  v19 = objc_retainBlock(v23);
  v20 = [v16 occurrence];
  if ([v20 isNew])
  {
  }

  else
  {
    v21 = [v16 isReminderStack];

    if ((v21 & 1) == 0)
    {
      v22 = [v16 occurrence];
      [(WeekViewController *)self scrollEventIntoView:v22 animated:1 completion:v19];

      goto LABEL_6;
    }
  }

  (v19[2])(v19, 0);
LABEL_6:
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  if ([v6 verticalSizeClass] != 1)
  {
    goto LABEL_4;
  }

  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    goto LABEL_4;
  }

  v10 = [v5 presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = v10;
  v11 = [v10 viewControllers];
  v12 = [v11 count];

  if (!v12)
  {

LABEL_11:
LABEL_12:
    v8 = -1;
    goto LABEL_5;
  }

  v13 = [v10 viewControllers];
  v14 = [v13 objectAtIndexedSubscript:0];

  objc_opt_class();
  LOBYTE(v13) = objc_opt_isKindOfClass();

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v8 = [v5 presentationStyle];
LABEL_5:

  return v8;
}

- (void)_setSelectedEvents:(id)a3
{
  v4 = a3;
  v5 = [(WeekViewController *)self model];
  [v5 setSelectedOccurrences:v4];

  [(WeekViewController *)self _clearSelectedOccurrenceViews];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
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

- (void)_displayEventDetailsViewControllerForEvent:(id)a3 showComment:(BOOL)a4 context:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
  v14 = v12;
  v20 = v14;
  v15 = objc_retainBlock(v19);
  if (v10)
  {
    v22 = v10;
    v16 = [NSArray arrayWithObjects:&v22 count:1];
    [(LargeWeekViewController *)self _setSelectedEvents:v16];

    v17 = [(WeekViewController *)self occurrenceViewForEvent:v10];
    [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:v17 showComments:v8 context:v11 forceShowEditor:0 creationMethod:0 completion:v14];
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

- (void)_displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:(id)a3 showComments:(BOOL)a4 context:(id)a5 forceShowEditor:(BOOL)a6 creationMethod:(unint64_t)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a5;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000EC064;
  v50[3] = &unk_10020F680;
  v15 = a8;
  v51 = v15;
  v16 = objc_retainBlock(v50);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000EC07C;
  v48[3] = &unk_10020EBC8;
  v17 = v15;
  v48[4] = self;
  v49 = v17;
  v18 = objc_retainBlock(v48);
  v19 = [(WeekViewController *)self model];
  v20 = [v19 selectedOccurrence];

  if (v20)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [v13 occurrence];
    v24 = [v23 isBirthday];

    if (!v24 || ([v13 occurrence], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v26 = [(WeekViewController *)self model];
      v20 = [v26 selectedOccurrences];

      if (v20 && [v20 count] >= 2)
      {
        [(LargeWeekViewController *)self showEvents:v20 animated:1 showMode:1 context:v14];
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

    v20 = v25;
    if (v13)
    {
LABEL_3:
      [v13 frame];
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
        v36 = a7;
        v27 = [(MainViewController *)self shownEventViewController];
        v28 = [v27 event];
        if ([v28 isEqual:v20])
        {
        }

        else
        {
          v33 = a4;
          v29 = [(MainViewController *)self shownEventEditViewController];
          [v29 event];
          v35 = v17;
          v30 = v18;
          v32 = v31 = v14;
          v34 = [v32 isEqual:v20];

          v14 = v31;
          v18 = v30;
          v17 = v35;

          if (!v34 && !self->_isPresentingEventDetails)
          {
            self->_isPresentingEventDetails = 1;
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1000EC0C0;
            v38[3] = &unk_100211528;
            v45 = a6;
            v39 = v20;
            v40 = self;
            v44 = v36;
            v41 = v14;
            v42 = v13;
            v46 = v33;
            v43 = v18;
            v20 = v20;
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

- (void)_rePresentEditPopoverFromTargetView:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self shownEventEditViewController];
  v6 = v5;
  if (v5)
  {
    [v5 setInternalEditViewDelegate:self];
    [v6 refreshStartAndEndDates];
    [(LargeWeekViewController *)self _presentEventViewController:v6 forOccurrenceView:v4 animated:0 showComments:0];
    v7 = [v6 popoverPresentationController];
    v8 = [(WeekViewController *)self eventGestureController];
    v9 = [v8 draggingView];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v7 setPassthroughViews:v10];
  }
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v8 = [(MainViewController *)self shownEventEditViewController];

  if (v8)
  {
    v9 = [(MainViewController *)self shownEventEditViewController];
LABEL_5:
    v11 = v9;
    v12 = [v9 event];
    goto LABEL_6;
  }

  v10 = [(MainViewController *)self shownEventViewController];

  if (v10)
  {
    v9 = [(MainViewController *)self shownEventViewController];
    goto LABEL_5;
  }

  v12 = [(MainViewController *)self shownExpandedReminderStackViewController];

  if (!v12)
  {
    goto LABEL_10;
  }

  v11 = [(MainViewController *)self shownExpandedReminderStackViewController];
  v14 = [v11 events];
  v12 = [v14 firstObject];

LABEL_6:
  if (v12)
  {
    v13 = [(WeekViewController *)self occurrenceViewForEvent:v12];
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  v15 = [(WeekViewController *)self eventGestureController];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_16;
  }

  v17 = [v15 draggingView];

  if (!v17)
  {
    v18 = [v16 event];

    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = [v16 event];
    v20 = [v16 occurrenceDate];
    [v16 forceStartWithOccurrence:v19 occurrenceDate:v20 shouldUpdateViewSource:0 shouldUpdateOrigin:1 shouldPresentEditMenu:0];
  }

  v21 = [v16 draggingView];

  v13 = v21;
LABEL_16:
  if (v13)
  {
    v22 = v13;
    *a5 = v13;
LABEL_22:
    size = CGRectNull.size;
    a4->origin = CGRectNull.origin;
    a4->size = size;
    goto LABEL_23;
  }

  v23 = [(WeekViewController *)self _selectedOccurrenceViews];
  v24 = [v23 count];

  v25 = kCalUILogHandle;
  if (v24 == 1)
  {
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Couldn't find event for popover re-presentation, but found a selected occurrence view to use.", buf, 2u);
    }

    v26 = [(WeekViewController *)self _selectedOccurrenceViews];
    *a5 = [v26 firstObject];

    goto LABEL_22;
  }

  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Couldn't find event for popover re-presentation", v37, 2u);
  }

  *a5 = [(LargeWeekViewController *)self view];
  v28 = [(LargeWeekViewController *)self view];
  [v28 bounds];
  MidX = CGRectGetMidX(v39);
  v30 = [(LargeWeekViewController *)self view];
  [v30 bounds];
  MidY = CGRectGetMidY(v40);
  a4->origin.x = MidX;
  a4->origin.y = MidY;
  __asm { FMOV            V0.2D, #20.0 }

  a4->size = _Q0;

LABEL_23:
}

- (BOOL)isEventAbleToShowPopover:(id)a3
{
  v4 = a3;
  if (([v4 isNew] & 1) == 0 && (objc_msgSend(v4, "isAllDay") & 1) == 0)
  {
    if (v4)
    {
      v7 = [(WeekViewController *)self _weekGroupForEvent:v4 occurrenceDate:0];
      if (v7)
      {
        v8 = v7;
LABEL_9:
        v14 = [v8 weekView];
        v5 = [v14 isEventFullyVisible:v4];

        goto LABEL_4;
      }

      v9 = [v4 startDate];
      v10 = [(WeekViewController *)self model];
      v11 = [v10 eventStore];
      v12 = [v11 timeZone];
      v13 = [EKCalendarDate calendarDateWithDate:v9 timeZone:v12];

      [(WeekViewController *)self setDisplayedDate:v13 animated:0];
      v8 = [(WeekViewController *)self _weekGroupForEvent:v4 occurrenceDate:0];

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

- (BOOL)isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:(id)a3
{
  v4 = [(WeekViewController *)self model];
  v5 = [v4 selectedOccurrences];

  if (v5 && [v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [(LargeWeekViewController *)self _occurrenceViewForPopoverSource];
    if (!v7)
    {
      if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isNew"), v8, v9))
      {
        v10 = [(WeekViewController *)self eventGestureController];
        v11 = [v5 firstObject];
        v12 = [0 occurrenceDate];
        [v10 forceStartWithOccurrence:v11 occurrenceDate:v12 shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:1];

        v7 = [(LargeWeekViewController *)self _occurrenceViewForPopoverSource];
      }

      else
      {
        v7 = 0;
      }
    }

    v15 = [(LargeWeekViewController *)self view];
    [v7 bounds];
    [v15 convertRect:v7 fromView:?];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(LargeWeekViewController *)self isEventAbleToShowPopover:v6];
    if (v7)
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
    v27 = [(LargeWeekViewController *)self view];
    [v27 bounds];
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
    *v29 = 138412546;
    *&v29[4] = v11;
    *&v29[12] = 2112;
    *&v29[14] = objc_opt_class();
    v13 = *&v29[14];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ requested that %@ prepare itself to show the source view for the popover.", v29, 0x16u);
  }

  v14 = [(WeekViewController *)self model:*v29];
  v15 = [v14 selectedOccurrences];

  if (v15 && [v15 count])
  {
    if ([(LargeWeekViewController *)self isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:v6])
    {
      if (v7)
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

        v7[2](v7, 1);
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
        v25 = [(MainViewController *)self managedNavigationController];
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
      v28 = [v15 firstObject];
      if (self->_viewDidAppear)
      {
        [(LargeWeekViewController *)self _scrollEventIntoViewAndRequestPresentPopoverForEvent:v28];
      }

      else
      {
        objc_storeStrong(&self->_eventToPresentOnAppear, v28);
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

    [v6 enqueueStackResetOperation];
  }
}

- (void)_scrollEventIntoViewAndRequestPresentPopoverForEvent:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000ECE74;
  v3[3] = &unk_10020EB98;
  v3[4] = self;
  [(WeekViewController *)self scrollEventIntoView:a3 animated:1 completion:v3];
}

- (void)enqueueableManagedNavigationController:(id)a3 requestsConfigurationOfPropertiesForPopoverPresentationController:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = [(MainViewController *)self managedNavigationController];
    v15 = objc_opt_class();
    v16 = v15;
    *buf = 138412546;
    v63 = v15;
    v64 = 2112;
    v65 = objc_opt_class();
    v17 = v65;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ requested that %@ configure the popover.", buf, 0x16u);
  }

  v18 = [(WeekViewController *)self model];
  v19 = [v18 selectedOccurrences];

  if (v19 && [v19 count])
  {
    v20 = [(LargeWeekViewController *)self _occurrenceViewForPopoverSource];
    if (!v20)
    {
      sub_10017094C(a2, self);
    }

    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v20 layer];
    v30 = [v29 mask];

    if (v30)
    {
      v31 = [v20 layer];
      v32 = [v31 mask];
      [v32 frame];
      v22 = v33;
      v24 = v34;
      v26 = v35;
      v28 = v36;
    }

    else
    {
      v38 = [(LargeWeekViewController *)self view];
      [v38 convertRect:v20 fromView:{v22, v24, v26, v28}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = [(LargeWeekViewController *)self view];
      [v47 bounds];
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
        v57 = [v10 presentedViewController];
        v58 = [v57 view];
        [v58 setBackgroundColor:v56];

        v59 = [v10 presentedViewController];
        [v59 setModalPresentationStyle:7];

        [v10 setDelegate:self];
        [v10 setSourceRect:{v22, v24, v26, v28}];
        [v10 setSourceView:v20];
        [v10 setPermittedArrowDirections:12];
        v61 = v20;
        v60 = [NSArray arrayWithObjects:&v61 count:1];
        [v10 setPassthroughViews:v60];

        if (v11)
        {
          v11[2](v11);
        }

        goto LABEL_17;
      }

      v31 = [(LargeWeekViewController *)self view];
      [v20 convertRect:v31 fromView:{x, y, width, height}];
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
  v3 = [(WeekViewController *)self eventGestureController];
  v4 = [v3 draggingView];

  if (v4)
  {
    v5 = [(WeekViewController *)self eventGestureController];
    v6 = [v5 draggingView];
  }

  else
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(WeekViewController *)self model];
    v8 = [v7 selectedOccurrences];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [(WeekViewController *)self occurrenceViewForEvent:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }

    if ([v5 count] >= 2)
    {
      v14 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[LargeWeekViewController _occurrenceViewForPopoverSource]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: found multiple occurrence views for selected occurrences.", buf, 0xCu);
      }
    }

    v6 = [v5 anyObject];
  }

  v15 = v6;

  return v15;
}

- (BOOL)eventViewControllerUseMinimalMode:(id)a3
{
  if (self->_isPresentingNonMinimalMode)
  {
    return 0;
  }

  v4 = [(LargeWeekViewController *)self view];
  v3 = EKUICurrentWindowInterfaceParadigm() == 8;

  return v3;
}

- (void)eventGestureController:(id)a3 didSetUpAtDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (self->_shouldRePresentPopoverAfterDrag)
  {
    v10 = [v8 draggingView];
    v11 = [(WeekViewController *)self occurrenceViewSuperviewForEventGestureController:v9];
    CalSwitchViewToSuperview();
  }

  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0];
  v12.receiver = self;
  v12.super_class = LargeWeekViewController;
  [(WeekViewController *)&v12 eventGestureController:v9 didSetUpAtDate:v5 isAllDay:a4];
}

- (BOOL)eventGestureController:(id)a3 didCommitOccurrence:(id)a4 toDate:(double)a5 isAllDay:(BOOL)a6 span:(int64_t)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  [(WeekViewController *)self updatePreferredReloadRange];
  [(WeekViewController *)self highlightDayViewCalendarDate:0 isAllDay:v8];
  if (([v12 isNew] & 1) == 0)
  {
    CalAnalyticsSendEvent();
  }

  if (self->_shouldRePresentPopoverAfterDrag && ([v12 isNew] & 1) == 0)
  {
    v13 = [v11 draggingView];
    [(LargeWeekViewController *)self _rePresentEditPopoverFromTargetView:v13];
  }

  else
  {
    if ([v12 isNew])
    {
      v13 = +[EKEventEditor defaultTitleForCalendarItem];
      v14 = [v12 title];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        [v12 setTitle:&stru_1002133B8];
      }

      v46 = v12;
      v16 = [NSArray arrayWithObjects:&v46 count:1];
      [(LargeWeekViewController *)self _setSelectedEvents:v16];

      v17 = [v11 occurrenceDate];
      [v11 forceStartWithOccurrence:v12 occurrenceDate:v17 shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:0];

      v18 = [v11 draggingView];
      [v18 setSelected:1];

      v19 = [v11 draggingView];
      [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:v19 showComments:0 creationMethod:1];

      v20 = [(MainViewController *)self shownEventViewController];
      v21 = [v20 popoverPresentationController];
      v22 = [v11 draggingView];
      v45 = v22;
      v23 = [NSArray arrayWithObjects:&v45 count:1];
      [v21 setPassthroughViews:v23];

      v24 = [(LargeWeekViewController *)self view];
      self->_shouldRePresentPopoverAfterDrag = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing();
LABEL_20:

      goto LABEL_21;
    }

    v13 = +[UIApplication sharedApplication];
    if (![v13 optionKeyIsDown] || (v44 = v12, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v44, 1), v25 = objc_claimAutoreleasedReturnValue(), v26 = +[CUIKPasteboardUtilities allEventsValidForAction:fromEvents:](CUIKPasteboardUtilities, "allEventsValidForAction:fromEvents:", 2, v25), v25, !v26))
    {
      v36 = [(LargeWeekViewController *)self EKUI_editor];
      v41 = 0;
      v37 = [v36 saveEvent:v12 span:a7 error:&v41];
      v24 = v41;

      if (v37)
      {
        v38 = [(WeekViewController *)self model];
        [v38 addOccurrenceAwaitingRefresh:v12];

        [(WeekViewController *)self editorDidSaveEvent:v12];
      }

      else
      {
        v39 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = v24;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error moving event: %@", buf, 0xCu);
        }

        [v12 revert];
        [(WeekViewController *)self editorDidCancelEditingEvent:v12];
      }

      goto LABEL_20;
    }

    v27 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "duplicating event(s) in large week view because option key is down", buf, 2u);
    }

    v28 = [(WeekViewController *)self model];
    v29 = [v28 pasteboardManager];
    v30 = [v12 startDate];
    [v29 setDateForPaste:v30];

    v31 = [(WeekViewController *)self model];
    v32 = [v31 pasteboardManager];
    [v32 setCalendarForPaste:0];

    v33 = [(WeekViewController *)self model];
    v34 = [v33 pasteboardManager];
    v35 = [NSSet setWithObject:v12];
    [v34 duplicateEvents:v35 withDateMode:1 delegate:self];

    [v12 revert];
    [(WeekViewController *)self editorDidCancelEditingEvent:v12];
  }

LABEL_21:

  return 1;
}

- (void)eventGestureController:(id)a3 didCancelEditingOccurrence:(id)a4 fadedOut:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (self->_shouldRePresentPopoverAfterDrag && !v5)
  {
    v10 = [v8 draggingView];
    [(LargeWeekViewController *)self _rePresentEditPopoverFromTargetView:v10];
  }

  v11.receiver = self;
  v11.super_class = LargeWeekViewController;
  [(WeekViewController *)&v11 eventGestureController:v8 didCancelEditingOccurrence:v9 fadedOut:v5];
}

- (void)eventGestureController:(id)a3 didSingleTapOccurrence:(id)a4 shouldExtendSelection:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  if (self->_shouldRePresentPopoverAfterDrag)
  {
    v9 = [v13 draggingView];
    [(LargeWeekViewController *)self _rePresentEditPopoverFromTargetView:v9];
  }

  if (v5)
  {
    v10 = [(WeekViewController *)self occurrenceViewForEvent:v8];
    v11 = [(WeekViewController *)self _selectedOccurrenceViews];
    v12 = [v11 containsObject:v10];

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

- (double)eventGestureController:(id)a3 heightForAllDayOccurrenceView:(id)a4
{
  v5 = a4;
  v6 = [(LargeWeekViewController *)self interfaceOrientation];
  v7 = [(LargeWeekViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:v6 isAllDay:1];
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

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 event];
  if (v10)
  {
    v12 = v30;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000EE1A4;
    v30[3] = &unk_10020EBC8;
    v5 = &v31;
    v13 = v10;
    v30[4] = self;
    v31 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = objc_retainBlock(v12);
  switch(a4)
  {
    case 2:
      [(WeekViewController *)self editorDidDeleteEvent:v11];
      break;
    case 1:
      v18 = [v9 calendarToMakeVisibleOnSave];
      v19 = [v18 objectID];
      if (v19)
      {
        [(CUIKCalendarModel *)self->super.super._model ensureCalendarVisibleWithId:v19];
      }

      [(WeekViewController *)self editorDidSaveEvent:v11];
      self->_shouldRePresentPopoverAfterDrag = 0;
      if ([v18 sharingStatus])
      {
        if (v14)
        {
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000EE2B0;
          v21[3] = &unk_10020EBC8;
          v21[4] = self;
          v22 = v10;
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
      if ([v11 isNew])
      {
        v15 = [(WeekViewController *)self eventGestureController];
        v16 = [v15 dragGestureInProgress];

        if ((v16 & 1) == 0)
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
          v25 = v11;
          v26 = v10;
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
          v28 = v11;
          v14 = objc_retainBlock(v27);
        }
      }

      else
      {
        [(WeekViewController *)self editorDidCancelEditingEvent:v11];
      }

      break;
  }

  [(LargeWeekViewController *)self _closeEventPresentationAnimated:1 cleanSelectionState:1 completion:v14];

  if (v10)
  {
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  v3 = [(WeekViewController *)self model];
  v4 = [v3 pasteboardManager];

  return v4;
}

- (void)createdNewEventUsingCreationGesture:(id)a3
{
  v4 = a3;
  v5 = +[EKEventEditor defaultTitleForCalendarItem];
  v6 = [v4 title];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [v4 setTitle:&stru_1002133B8];
  }

  v21 = v4;
  v8 = [NSArray arrayWithObjects:&v21 count:1];
  [(LargeWeekViewController *)self _setSelectedEvents:v8];

  v9 = [(WeekViewController *)self eventGestureController];
  [v9 liftUpOccurrenceForEditingEvent:v4];

  v10 = [(WeekViewController *)self eventGestureController];
  v11 = [v10 draggingView];
  [v11 setSelected:1];

  v12 = [(WeekViewController *)self eventGestureController];
  v13 = [v12 draggingView];
  [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:v13 showComments:0 creationMethod:4];

  v14 = [(MainViewController *)self shownEventViewController];
  v15 = [v14 popoverPresentationController];
  v16 = [(WeekViewController *)self eventGestureController];
  v17 = [v16 draggingView];
  v20 = v17;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [v15 setPassthroughViews:v18];

  v19 = [(LargeWeekViewController *)self view];
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
    v5 = [(WeekViewController *)self weekScroller];
    [v5 addGestureRecognizer:self->_pointerDoubleClickRecognizer];
  }
}

- (void)_handleDoubleClickGesture:(id)a3
{
  v4 = a3;
  if (self->_pointerDoubleClickRecognizer == v4)
  {
    v12 = v4;
    v5 = [(UITapGestureRecognizer *)v4 state]== 3;
    v4 = v12;
    if (v5)
    {
      v6 = [(WeekViewController *)self weekScroller];
      [(UITapGestureRecognizer *)v12 locationInView:v6];
      v8 = v7;
      v10 = v9;

      v11 = [(WeekViewController *)self occurrenceViewAtPoint:0 ignoreSelectedCopyView:v8, v10];
      [(LargeWeekViewController *)self _showDetailsForOccurrenceView:v11];

      v4 = v12;
    }
  }
}

- (void)_showDetailsForOccurrenceView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(LargeWeekViewController *)self presentedViewController];
    v6 = [v5 isBeingDismissed];

    v4 = v8;
    if ((v6 & 1) == 0)
    {
      if ([v8 isReminderStack])
      {
        v7 = [v8 occurrences];
        [(LargeWeekViewController *)self showEvents:v7 animated:1 showMode:1 context:0];
      }

      else
      {
        v7 = [v8 occurrence];
        [(LargeWeekViewController *)self showEvent:v7 animated:1 showMode:1 context:0];
      }

      v4 = v8;
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = self->_pointerDoubleClickRecognizer != a3 || [v6 type] == 1 || objc_msgSend(v7, "type") == 3;

  return v8;
}

- (id)pushedDayViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WeekViewController *)self model];
  [v7 setSelectedDate:v6];

  [v7 setSelectedOccurrence:0];
  v8 = [(WeekViewController *)self firstVisibleSecond];
  v9 = [(WeekViewController *)self model];
  [v9 setFirstVisibleSecond:v8];

  v10 = [DayViewContainerViewController alloc];
  v11 = [(MainViewController *)self window];
  v12 = [(MainViewControllerContainer *)v10 initWithModel:v7 window:v11];

  v13 = [(LargeWeekViewController *)self navigationController];
  [v13 pushViewController:v12 animated:v4];

  return v12;
}

- (id)pushedListViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WeekViewController *)self model];
  [v7 setSelectedDate:v6];

  v8 = [ListViewContainerViewController alloc];
  v9 = [(WeekViewController *)self model];
  v10 = [(MainViewController *)self window];
  v11 = [(MainViewControllerContainer *)v8 initWithModel:v9 window:v10];

  v12 = [(LargeWeekViewController *)self navigationController];
  [v12 pushViewController:v11 animated:v4];

  return v11;
}

- (void)scrollViewDidScroll:(id)a3
{
  v10.receiver = self;
  v10.super_class = LargeWeekViewController;
  [(WeekViewController *)&v10 scrollViewDidScroll:a3];
  v4 = CUIKGetOverlayCalendar();
  v5 = CUIKCalendar();
  v6 = [(WeekViewController *)self earliestDateComponents];
  v7 = [v5 dateFromComponents:v6];

  if (v4)
  {
    v8 = [CUIKDateStrings monthStringForDate:v7 inCalendar:v4];
    v9 = [(WeekViewController *)self timeView];
    [v9 setOverlayMonthText:v8];
  }

  else
  {
    v8 = [(WeekViewController *)self timeView];
    [v8 setOverlayMonthText:0];
  }
}

- (double)scrollToDisplayedDateAnimated:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = LargeWeekViewController;
  [(WeekViewController *)&v8 scrollToDisplayedDateAnimated:?];
  v6 = v5;
  [(LargeWeekViewController *)self _showMonthOverlayInCellAtOffset:v3 animated:?];
  [(LargeWeekViewController *)self _closeEventPresentationAnimated:0 cleanSelectionState:1 completion:0];
  return v6;
}

- (void)snapTargetScrollOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4
{
  v6.receiver = self;
  v6.super_class = LargeWeekViewController;
  [(WeekViewController *)&v6 snapTargetScrollOffset:a4.x withVelocity:a4.y];
  if ([(WeekViewController *)self showOverlayCalendar])
  {
    [(LargeWeekViewController *)self _showMonthOverlayInCellAtOffset:1 animated:a3->x];
  }
}

- (void)_showMonthOverlayInCellAtOffset:(double)a3 animated:(BOOL)a4
{
  v7 = [(LargeWeekViewController *)self view];
  [v7 layoutSubviews];

  v8 = [(WeekViewController *)self visibleWeeks];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EECB8;
  v9[3] = &unk_100211548;
  *&v9[4] = a3;
  v10 = a4;
  [v8 enumerateObjectsUsingBlock:v9];
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
    v5 = [(WeekViewController *)self earliestDateComponents];
    v6 = [v4 dateFromComponents:v5];

    v7 = [CUIKDateStrings monthStringForDate:v6 inCalendar:v3];
    v8 = [(WeekViewController *)self timeView];
    [v8 setOverlayMonthText:v7];
  }

  else
  {
    v6 = [(WeekViewController *)self timeView];
    [v6 setOverlayMonthText:0];
  }
}

- (double)minimumHourScale
{
  v12.receiver = self;
  v12.super_class = LargeWeekViewController;
  [(WeekViewController *)&v12 minimumHourScale];
  v4 = v3;
  v5 = [(WeekViewController *)self timeView];
  [v5 frame];
  v7 = v6;

  v8 = [(LargeWeekViewController *)self view];
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
  v3 = [(MainViewController *)self shownEventEditViewController];
  if (v3)
  {
  }

  else
  {
    v4 = [(MainViewController *)self shownEventViewController];

    if (v4)
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

- (void)emptySpaceClickedOnDate:(id)a3
{
  v4.receiver = self;
  v4.super_class = LargeWeekViewController;
  [(WeekViewController *)&v4 emptySpaceClickedOnDate:a3];
  [(WeekViewController *)self _clearSelectedOccurrenceViews];
}

- (void)_showEditorForEvent:(id)a3
{
  v4 = a3;
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  [(LargeWeekViewController *)self _setSelectedEvents:v5];

  v6 = [(WeekViewController *)self occurrenceViewForEvent:v4];
  if (!v6)
  {
    v7 = [(WeekViewController *)self eventGestureController];
    [v7 endForcedStart:0];

    v8 = [(WeekViewController *)self eventGestureController];
    v9 = [0 occurrenceDate];
    [v8 forceStartWithOccurrence:v4 occurrenceDate:v9 shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:0];

    v10 = [(WeekViewController *)self eventGestureController];
    v6 = [v10 draggingView];
  }

  [(LargeWeekViewController *)self _displayEventDetailsViewControllerForSelectedEventWithOccurrenceView:v6 showComments:0 context:0 forceShowEditor:1 creationMethod:3 completion:0];
}

@end
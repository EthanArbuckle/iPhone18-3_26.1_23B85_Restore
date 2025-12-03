@interface MainViewController
- (BOOL)_shouldAdjustAllDayOccurrencesWithIncrement:(id)increment;
- (BOOL)allowsOverriddenRightNavigationBarItems;
- (BOOL)allowsOverriddenToolbarItems;
- (BOOL)shouldModallyPresentFirstShownViewController;
- (BOOL)updateModelPreferredReloadRangeAndReturnWhetherLoadingNeeded;
- (MainViewController)initWithWindow:(id)window model:(id)model;
- (UINavigationController)managedNavigationController;
- (UIWindow)window;
- (id)EKUI_viewHierarchy;
- (id)_shownViewControllerWithClass:(Class)class;
- (id)augmentEventDetailsContext:(id)context;
- (id)existingPalette;
- (id)shownContactViewController;
- (id)shownEventEditViewController;
- (id)shownEventViewController;
- (id)shownExpandedReminderStackViewController;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (id)targetViewControllerForAction:(SEL)action sender:(id)sender;
- (int64_t)intendedSizeClass;
- (void)_adjustPointerTargetedOccurrenceStartTime:(id)time;
- (void)_applyAndSavePointerTargetedOccurrences:(id)occurrences startTimeAdjustment:(id)adjustment span:(int64_t)span;
- (void)_presentSpanDecisionsForPointerTargetedOccurrences:(id)occurrences startTimeAdjustment:(id)adjustment recurringOccurrences:(id)recurringOccurrences;
- (void)_setManagedNavigationControllerModalPresentationDelegates;
- (void)attemptDisplayReviewPrompt;
- (void)dealloc;
- (void)extendedLaunchCompletedByViewType:(int)type;
- (void)invalidateManagedNavigationController;
- (void)moveSelectedOccurrenceDown;
- (void)moveSelectedOccurrenceLeft;
- (void)moveSelectedOccurrenceRight;
- (void)moveSelectedOccurrenceUp;
- (void)reconfigureViewController:(id)controller;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)setSceneTitleNeedsUpdate;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionToSizeDidEnd;
- (void)transitionToSizeWillStart;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MainViewController

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (id)shownEventEditViewController
{
  viewControllerToShowFrom = [(MainViewController *)self viewControllerToShowFrom];
  presentedViewController = [viewControllerToShowFrom presentedViewController];

  if (!presentedViewController)
  {
    presentedViewController = [(MainViewController *)self presentedViewController];
  }

  if ([presentedViewController conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditView])
  {
    v5 = presentedViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MainViewController)initWithWindow:(id)window model:(id)model
{
  windowCopy = window;
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = MainViewController;
  v8 = [(MainViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    if (!windowCopy)
    {
      WeakRetained = objc_loadWeakRetained(&v8->_window);
      v11 = objc_opt_class();
      v13 = NSStringFromClass(v11);
      EKUIMultiwindowAssert();
    }

    objc_storeWeak(&v9->_window, windowCopy);
    objc_storeStrong(&v9->_model, model);
  }

  return v9;
}

- (void)dealloc
{
  [(EnqueueableManagedNavigationController *)self->_managedNavigationController setSourceViewController:0];
  v3.receiver = self;
  v3.super_class = MainViewController;
  [(MainViewController *)&v3 dealloc];
}

- (BOOL)shouldModallyPresentFirstShownViewController
{
  ekui_futureTraitCollection = [(MainViewController *)self ekui_futureTraitCollection];
  v3 = [ekui_futureTraitCollection horizontalSizeClass] == 2;

  return v3;
}

- (UINavigationController)managedNavigationController
{
  managedNavigationController = self->_managedNavigationController;
  if (!managedNavigationController)
  {
    v4 = objc_alloc_init([(MainViewController *)self managedNavigationControllerType]);
    v5 = self->_managedNavigationController;
    self->_managedNavigationController = v4;

    v6 = +[UIColor systemBackgroundColor];
    view = [(EnqueueableManagedNavigationController *)self->_managedNavigationController view];
    [view setBackgroundColor:v6];

    [(EnqueueableManagedNavigationController *)self->_managedNavigationController setDefinesPresentationContext:1];
    [(EnqueueableManagedNavigationController *)self->_managedNavigationController setSourceViewController:self];
    [(MainViewController *)self _setManagedNavigationControllerModalPresentationDelegates];
    managedNavigationController = self->_managedNavigationController;
  }

  return managedNavigationController;
}

- (void)_setManagedNavigationControllerModalPresentationDelegates
{
  if ([(MainViewController *)self shouldModallyPresentFirstShownViewController])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  managedNavigationController = self->_managedNavigationController;

  [(EnqueueableManagedNavigationController *)managedNavigationController setModalPresentationDelegate:selfCopy];
}

- (void)invalidateManagedNavigationController
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D9468;
  v6[3] = &unk_10020EB00;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  [(MainViewController *)self managedNavigationControllerWillBeInvalidated];
  presentedViewController = [(MainViewController *)self presentedViewController];
  v5 = [presentedViewController isEqual:self->_managedNavigationController];

  if (v5)
  {
    [(MainViewController *)self dismissViewControllerAnimated:0 completion:v3];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  traitCollection = [(MainViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass != [collectionCopy horizontalSizeClass])
  {
    [(MainViewController *)self setEkui_futureTraitCollection:collectionCopy];
    goto LABEL_5;
  }

  verticalSizeClass = [traitCollection verticalSizeClass];
  verticalSizeClass2 = [collectionCopy verticalSizeClass];
  [(MainViewController *)self setEkui_futureTraitCollection:collectionCopy];
  if (verticalSizeClass != verticalSizeClass2)
  {
LABEL_5:
    [(MainViewController *)self invalidateManagedNavigationController];
    v12.receiver = self;
    v12.super_class = MainViewController;
    [(MainViewController *)&v12 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
    [(MainViewController *)self setupUIForTraitCollection:collectionCopy];
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = MainViewController;
  [(MainViewController *)&v12 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
LABEL_6:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (change)
  {
    [(MainViewController *)self setEkui_futureTraitCollection:0];
  }

  else
  {
    parentViewController = [(MainViewController *)self parentViewController];
    ekui_futureTraitCollection = [parentViewController ekui_futureTraitCollection];
    [(MainViewController *)self setEkui_futureTraitCollection:ekui_futureTraitCollection];

    parentViewController2 = [(MainViewController *)self parentViewController];
    ekui_futureTraitCollection2 = [parentViewController2 ekui_futureTraitCollection];
    [(MainViewController *)self setupUIForTraitCollection:ekui_futureTraitCollection2];
  }

  v10.receiver = self;
  v10.super_class = MainViewController;
  [(MainViewController *)&v10 traitCollectionDidChange:changeCopy];
}

- (id)targetViewControllerForAction:(SEL)action sender:(id)sender
{
  if (NSSelectorFromString(@"showViewController:sender:animated:completion:") == action || "showViewController:sender:" == action)
  {
    if (-[MainViewController prefersShowingViewControllersOnNavigationStack](self, "prefersShowingViewControllersOnNavigationStack") || (-[MainViewController ekui_futureTraitCollection](self, "ekui_futureTraitCollection"), (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (v8 = v7, -[MainViewController ekui_futureTraitCollection](self, "ekui_futureTraitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 horizontalSizeClass], v9, v8, v10 == 1))
    {
      selfCopy = [(MainViewController *)self navigationController];
    }

    else
    {
      selfCopy = [(MainViewController *)self managedNavigationController];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)shownContactViewController
{
  v3 = objc_opt_class();

  return [(MainViewController *)self _shownViewControllerWithClass:v3];
}

- (id)shownExpandedReminderStackViewController
{
  v3 = objc_opt_class();

  return [(MainViewController *)self _shownViewControllerWithClass:v3];
}

- (id)shownEventViewController
{
  v3 = objc_opt_class();

  return [(MainViewController *)self _shownViewControllerWithClass:v3];
}

- (id)_shownViewControllerWithClass:(Class)class
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000D99C4;
  v13 = sub_1000D99D4;
  v14 = 0;
  viewControllerToShowFrom = [(MainViewController *)self viewControllerToShowFrom];
  viewControllers = [viewControllerToShowFrom viewControllers];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D99DC;
  v8[3] = &unk_1002112D0;
  v8[4] = &v9;
  v8[5] = class;
  [viewControllers enumerateObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  senderCopy = sender;
  controllerCopy = controller;
  if ([controllerCopy prefersForcedModalShowViewController])
  {
    presentationStyleOverrideForChildViewControllers = [(MainViewController *)self presentationStyleOverrideForChildViewControllers];
    if (presentationStyleOverrideForChildViewControllers != -1)
    {
      v14 = presentationStyleOverrideForChildViewControllers;
      viewControllerToShowFrom = [(MainViewController *)self viewControllerToShowFrom];
      [viewControllerToShowFrom setModalPresentationStyle:v14];
    }
  }

  viewControllerToShowFrom2 = [(MainViewController *)self viewControllerToShowFrom];
  [viewControllerToShowFrom2 showViewController:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MainViewController;
  [(MainViewController *)&v5 viewDidAppear:appear];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9BF0;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  [(MainViewController *)self setSceneTitleNeedsUpdate];
}

- (id)augmentEventDetailsContext:(id)context
{
  if (context)
  {
    v4 = [NSMutableDictionary dictionaryWithDictionary:?];
    [v4 setObject:&__kCFBooleanTrue forKey:EKUIEventDetailsContext_AllowsConferenceItem];
    [v4 setObject:self->_model forKey:EKUIEventDetailsContext_ModelKey];
  }

  else
  {
    v7[0] = EKUIEventDetailsContext_AllowsConferenceItem;
    v7[1] = EKUIEventDetailsContext_ModelKey;
    model = self->_model;
    v8[0] = &__kCFBooleanTrue;
    v8[1] = model;
    v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  return v4;
}

- (void)reconfigureViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventViewControllerShowsInlinePreview = [(MainViewController *)self eventViewControllerShowsInlinePreview];
    v5 = controllerCopy;
    [v5 setAllowsCalendarPreview:eventViewControllerShowsInlinePreview];
    [v5 setCalendarPreviewIsInlineDayView:eventViewControllerShowsInlinePreview];
    [v5 setMinimalMode:{-[MainViewController eventViewControllerUseMinimalMode:](self, "eventViewControllerUseMinimalMode:", v5)}];
  }
}

- (void)extendedLaunchCompletedByViewType:(int)type
{
  if (type >= 5)
  {
    *&type = -1;
  }

  else
  {
    typeCopy = type;
  }

  v5 = [NSNumber numberWithInteger:*&type];
  v7 = [NSDictionary dictionaryWithObject:v5 forKey:@"_MainViewControllerExtendedLaunchDidCompleteNotification_CalendarContentViewType_Key"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:self userInfo:v7];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = MainViewController;
  [(MainViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(MainViewController *)self isViewLoaded])
  {
    view = [(MainViewController *)self view];
    window = [view window];

    if (window)
    {
      if (![(MainViewController *)self disableRotationTimings])
      {
        [(MainViewController *)self transitionToSizeWillStart];
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000D9FF4;
      v10[3] = &unk_10020F240;
      v10[4] = self;
      [coordinatorCopy animateAlongsideTransition:0 completion:v10];
    }
  }
}

- (void)transitionToSizeWillStart
{
  testingRotationWillStartNotificationName = [(MainViewController *)self testingRotationWillStartNotificationName];
  if (testingRotationWillStartNotificationName && +[ApplicationTester testingSessionStarted])
  {
    v4 = +[UIApplication sharedApplication];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000DA10C;
    v5[3] = &unk_10020EC68;
    v6 = testingRotationWillStartNotificationName;
    selfCopy = self;
    [v4 installCACommitCompletionBlock:v5];
  }
}

- (void)transitionToSizeDidEnd
{
  testingRotationDidEndNotificationName = [(MainViewController *)self testingRotationDidEndNotificationName];
  v4 = testingRotationDidEndNotificationName;
  if (testingRotationDidEndNotificationName)
  {
    v6 = testingRotationDidEndNotificationName;
    testingRotationDidEndNotificationName = +[ApplicationTester testingSessionStarted];
    v4 = v6;
    if (testingRotationDidEndNotificationName)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 postNotificationName:v6 object:self];

      v4 = v6;
    }
  }

  _objc_release_x1(testingRotationDidEndNotificationName, v4);
}

- (id)EKUI_viewHierarchy
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  v4 = objc_loadWeakRetained(&self->_window);
  if (!WeakRetained)
  {
    v5 = objc_opt_class();
    v7 = NSStringFromClass(v5);
    EKUIMultiwindowAssert();

    v4 = EKUIMainWindowForMultiwindowError();
  }

  return v4;
}

- (void)setSceneTitleNeedsUpdate
{
  if (EKUIDeviceCanTransform())
  {
    window = [(MainViewController *)self window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:@"_CalendarWindowSceneTitleRequiresUpdateNotification" object:windowScene];
    }
  }
}

- (id)existingPalette
{
  navigationController = [(MainViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(MainViewController *)self navigationController];
    paletteView = [navigationController2 paletteView];
    containingPalette = [paletteView containingPalette];
  }

  else
  {
    containingPalette = 0;
  }

  return containingPalette;
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
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];

  return v2;
}

- (id)spacialEditRightIncrement
{
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];

  return v2;
}

- (void)moveSelectedOccurrenceUp
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    spacialEditUpIncrement = [(MainViewController *)self spacialEditUpIncrement];
    v4 = spacialEditUpIncrement;
    if (spacialEditUpIncrement)
    {
      v5 = spacialEditUpIncrement;
      spacialEditUpIncrement = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:spacialEditUpIncrement];
      v4 = v5;
    }

    _objc_release_x1(spacialEditUpIncrement, v4);
  }
}

- (void)moveSelectedOccurrenceDown
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    spacialEditDownIncrement = [(MainViewController *)self spacialEditDownIncrement];
    v4 = spacialEditDownIncrement;
    if (spacialEditDownIncrement)
    {
      v5 = spacialEditDownIncrement;
      spacialEditDownIncrement = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:spacialEditDownIncrement];
      v4 = v5;
    }

    _objc_release_x1(spacialEditDownIncrement, v4);
  }
}

- (void)moveSelectedOccurrenceLeft
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    spacialEditLeftIncrement = [(MainViewController *)self spacialEditLeftIncrement];
    v4 = spacialEditLeftIncrement;
    if (spacialEditLeftIncrement)
    {
      v5 = spacialEditLeftIncrement;
      spacialEditLeftIncrement = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:spacialEditLeftIncrement];
      v4 = v5;
    }

    _objc_release_x1(spacialEditLeftIncrement, v4);
  }
}

- (void)moveSelectedOccurrenceRight
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    spacialEditRightIncrement = [(MainViewController *)self spacialEditRightIncrement];
    v4 = spacialEditRightIncrement;
    if (spacialEditRightIncrement)
    {
      v5 = spacialEditRightIncrement;
      spacialEditRightIncrement = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:spacialEditRightIncrement];
      v4 = v5;
    }

    _objc_release_x1(spacialEditRightIncrement, v4);
  }
}

- (BOOL)_shouldAdjustAllDayOccurrencesWithIncrement:(id)increment
{
  incrementCopy = increment;
  if (-[MainViewController _componentIsValid:](self, "_componentIsValid:", [incrementCopy day]) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(incrementCopy, "weekOfYear")) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(incrementCopy, "weekOfMonth")) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(incrementCopy, "month")) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(incrementCopy, "year")))
  {
    v5 = 1;
  }

  else
  {
    v5 = -[MainViewController _componentIsValid:](self, "_componentIsValid:", [incrementCopy era]);
  }

  return v5;
}

- (void)_adjustPointerTargetedOccurrenceStartTime:(id)time
{
  timeCopy = time;
  v5 = [(MainViewController *)self _shouldAdjustAllDayOccurrencesWithIncrement:timeCopy];
  spaciallyEditableOccurrences = [(MainViewController *)self spaciallyEditableOccurrences];
  if ([spaciallyEditableOccurrences count] == 1)
  {
    v15 = timeCopy;
    v7 = +[NSMutableArray array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = spaciallyEditableOccurrences;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          if ((v5 & 1) != 0 || ([*(*(&v16 + 1) + 8 * v12) isAllDay] & 1) == 0)
          {
            singleRecurrenceRule = [v13 singleRecurrenceRule];

            if (singleRecurrenceRule)
            {
              [v7 addObject:v13];
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    timeCopy = v15;
    if ([v7 count])
    {
      [(MainViewController *)self _presentSpanDecisionsForPointerTargetedOccurrences:v8 startTimeAdjustment:v15 recurringOccurrences:v7];
    }

    else
    {
      [(MainViewController *)self _applyAndSavePointerTargetedOccurrences:v8 startTimeAdjustment:v15 span:0];
    }
  }
}

- (void)_presentSpanDecisionsForPointerTargetedOccurrences:(id)occurrences startTimeAdjustment:(id)adjustment recurringOccurrences:(id)recurringOccurrences
{
  occurrencesCopy = occurrences;
  adjustmentCopy = adjustment;
  firstObject = [recurringOccurrences firstObject];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DAAD0;
  v15[3] = &unk_10020EC90;
  v15[4] = self;
  v16 = occurrencesCopy;
  v17 = adjustmentCopy;
  v11 = adjustmentCopy;
  v12 = occurrencesCopy;
  v13 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:2 viewController:self barButtonItem:0 forEvent:firstObject withCompletionHandler:v15];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v13;
}

- (void)_applyAndSavePointerTargetedOccurrences:(id)occurrences startTimeAdjustment:(id)adjustment span:(int64_t)span
{
  occurrencesCopy = occurrences;
  adjustmentCopy = adjustment;
  v35 = [(MainViewController *)self _shouldAdjustAllDayOccurrencesWithIncrement:adjustmentCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = occurrencesCopy;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v34 = *v37;
    obj = v9;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if ((v35 & 1) != 0 || ([*(*(&v36 + 1) + 8 * i) isAllDay] & 1) == 0)
        {
          model = [(MainViewController *)self model];
          calendar = [model calendar];
          startDate = [v13 startDate];
          v17 = [calendar dateByAddingComponents:adjustmentCopy toDate:startDate options:0];

          model2 = [(MainViewController *)self model];
          calendar2 = [model2 calendar];
          endDate = [v13 endDate];
          v21 = [calendar2 dateByAddingComponents:adjustmentCopy toDate:endDate options:0];

          if (v17 && v21)
          {
            startDate2 = [v13 startDate];

            v23 = v17;
            [v13 setStartDate:v23];
            [v13 setEndDate:v21];
            eventStore = [v13 eventStore];
            [eventStore saveEvent:v13 span:span commit:0 error:0];

            v30 = 1;
            v32 = startDate2;
            v33 = v23;
          }
        }
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);

    if (v30)
    {
      model3 = [(MainViewController *)self model];
      eventStore2 = [model3 eventStore];
      [eventStore2 commit:0];
    }

    v28 = v32;
    v27 = v33;
    if (v32 && v33)
    {
      [(MainViewController *)self occurrencesWereSpaciallyEditedFromDate:v32 toDate:v33];
    }
  }

  else
  {

    v27 = 0;
    v28 = 0;
  }
}

- (BOOL)updateModelPreferredReloadRangeAndReturnWhetherLoadingNeeded
{
  v9 = 0;
  v10 = 0;
  [(MainViewController *)self currentlyVisibleDateRangeFromStartDate:&v10 toEndDate:&v9];
  v3 = v10;
  v4 = v9;
  model = [(MainViewController *)self model];
  v6 = [model isLoadedOrLoading:v3 endDate:v4];

  model2 = [(MainViewController *)self model];
  [model2 setPreferredReloadStartDate:v3 endDate:v4];

  return v6 ^ 1;
}

- (void)attemptDisplayReviewPrompt
{
  window = [(MainViewController *)self window];
  windowScene = [window windowScene];
  model = [(MainViewController *)self model];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:windowScene calendarModel:model];
}

- (BOOL)allowsOverriddenRightNavigationBarItems
{
  sub_100026F48();
  sub_1000475B0();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)allowsOverriddenToolbarItems
{
  sub_100026F48();
  sub_1000475B0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (int64_t)intendedSizeClass
{
  sub_100026F48();
  sub_1000475B0();
  NSRequestConcreteImplementation();
  return 0;
}

@end
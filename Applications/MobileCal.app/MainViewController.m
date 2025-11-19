@interface MainViewController
- (BOOL)_shouldAdjustAllDayOccurrencesWithIncrement:(id)a3;
- (BOOL)allowsOverriddenRightNavigationBarItems;
- (BOOL)allowsOverriddenToolbarItems;
- (BOOL)shouldModallyPresentFirstShownViewController;
- (BOOL)updateModelPreferredReloadRangeAndReturnWhetherLoadingNeeded;
- (MainViewController)initWithWindow:(id)a3 model:(id)a4;
- (UINavigationController)managedNavigationController;
- (UIWindow)window;
- (id)EKUI_viewHierarchy;
- (id)_shownViewControllerWithClass:(Class)a3;
- (id)augmentEventDetailsContext:(id)a3;
- (id)existingPalette;
- (id)shownContactViewController;
- (id)shownEventEditViewController;
- (id)shownEventViewController;
- (id)shownExpandedReminderStackViewController;
- (id)spacialEditDownIncrement;
- (id)spacialEditLeftIncrement;
- (id)spacialEditRightIncrement;
- (id)spacialEditUpIncrement;
- (id)targetViewControllerForAction:(SEL)a3 sender:(id)a4;
- (int64_t)intendedSizeClass;
- (void)_adjustPointerTargetedOccurrenceStartTime:(id)a3;
- (void)_applyAndSavePointerTargetedOccurrences:(id)a3 startTimeAdjustment:(id)a4 span:(int64_t)a5;
- (void)_presentSpanDecisionsForPointerTargetedOccurrences:(id)a3 startTimeAdjustment:(id)a4 recurringOccurrences:(id)a5;
- (void)_setManagedNavigationControllerModalPresentationDelegates;
- (void)attemptDisplayReviewPrompt;
- (void)dealloc;
- (void)extendedLaunchCompletedByViewType:(int)a3;
- (void)invalidateManagedNavigationController;
- (void)moveSelectedOccurrenceDown;
- (void)moveSelectedOccurrenceLeft;
- (void)moveSelectedOccurrenceRight;
- (void)moveSelectedOccurrenceUp;
- (void)reconfigureViewController:(id)a3;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)setSceneTitleNeedsUpdate;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToSizeDidEnd;
- (void)transitionToSizeWillStart;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MainViewController

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (id)shownEventEditViewController
{
  v3 = [(MainViewController *)self viewControllerToShowFrom];
  v4 = [v3 presentedViewController];

  if (!v4)
  {
    v4 = [(MainViewController *)self presentedViewController];
  }

  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditView])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MainViewController)initWithWindow:(id)a3 model:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MainViewController;
  v8 = [(MainViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    if (!v6)
    {
      WeakRetained = objc_loadWeakRetained(&v8->_window);
      v11 = objc_opt_class();
      v13 = NSStringFromClass(v11);
      EKUIMultiwindowAssert();
    }

    objc_storeWeak(&v9->_window, v6);
    objc_storeStrong(&v9->_model, a4);
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
  v2 = [(MainViewController *)self ekui_futureTraitCollection];
  v3 = [v2 horizontalSizeClass] == 2;

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
    v7 = [(EnqueueableManagedNavigationController *)self->_managedNavigationController view];
    [v7 setBackgroundColor:v6];

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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  managedNavigationController = self->_managedNavigationController;

  [(EnqueueableManagedNavigationController *)managedNavigationController setModalPresentationDelegate:v3];
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
  v4 = [(MainViewController *)self presentedViewController];
  v5 = [v4 isEqual:self->_managedNavigationController];

  if (v5)
  {
    [(MainViewController *)self dismissViewControllerAnimated:0 completion:v3];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MainViewController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];
  if (v9 != [v6 horizontalSizeClass])
  {
    [(MainViewController *)self setEkui_futureTraitCollection:v6];
    goto LABEL_5;
  }

  v10 = [v8 verticalSizeClass];
  v11 = [v6 verticalSizeClass];
  [(MainViewController *)self setEkui_futureTraitCollection:v6];
  if (v10 != v11)
  {
LABEL_5:
    [(MainViewController *)self invalidateManagedNavigationController];
    v12.receiver = self;
    v12.super_class = MainViewController;
    [(MainViewController *)&v12 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
    [(MainViewController *)self setupUIForTraitCollection:v6];
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = MainViewController;
  [(MainViewController *)&v12 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
LABEL_6:
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  if (a3)
  {
    [(MainViewController *)self setEkui_futureTraitCollection:0];
  }

  else
  {
    v6 = [(MainViewController *)self parentViewController];
    v7 = [v6 ekui_futureTraitCollection];
    [(MainViewController *)self setEkui_futureTraitCollection:v7];

    v8 = [(MainViewController *)self parentViewController];
    v9 = [v8 ekui_futureTraitCollection];
    [(MainViewController *)self setupUIForTraitCollection:v9];
  }

  v10.receiver = self;
  v10.super_class = MainViewController;
  [(MainViewController *)&v10 traitCollectionDidChange:v5];
}

- (id)targetViewControllerForAction:(SEL)a3 sender:(id)a4
{
  if (NSSelectorFromString(@"showViewController:sender:animated:completion:") == a3 || "showViewController:sender:" == a3)
  {
    if (-[MainViewController prefersShowingViewControllersOnNavigationStack](self, "prefersShowingViewControllersOnNavigationStack") || (-[MainViewController ekui_futureTraitCollection](self, "ekui_futureTraitCollection"), (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (v8 = v7, -[MainViewController ekui_futureTraitCollection](self, "ekui_futureTraitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 horizontalSizeClass], v9, v8, v10 == 1))
    {
      v11 = [(MainViewController *)self navigationController];
    }

    else
    {
      v11 = [(MainViewController *)self managedNavigationController];
    }
  }

  else
  {
    v11 = self;
  }

  return v11;
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

- (id)_shownViewControllerWithClass:(Class)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000D99C4;
  v13 = sub_1000D99D4;
  v14 = 0;
  v4 = [(MainViewController *)self viewControllerToShowFrom];
  v5 = [v4 viewControllers];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D99DC;
  v8[3] = &unk_1002112D0;
  v8[4] = &v9;
  v8[5] = a3;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  if ([v12 prefersForcedModalShowViewController])
  {
    v13 = [(MainViewController *)self presentationStyleOverrideForChildViewControllers];
    if (v13 != -1)
    {
      v14 = v13;
      v15 = [(MainViewController *)self viewControllerToShowFrom];
      [v15 setModalPresentationStyle:v14];
    }
  }

  v16 = [(MainViewController *)self viewControllerToShowFrom];
  [v16 showViewController:v12 sender:v11 animated:v6 completion:v10];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MainViewController;
  [(MainViewController *)&v5 viewDidAppear:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9BF0;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  [(MainViewController *)self setSceneTitleNeedsUpdate];
}

- (id)augmentEventDetailsContext:(id)a3
{
  if (a3)
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

- (void)reconfigureViewController:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MainViewController *)self eventViewControllerShowsInlinePreview];
    v5 = v6;
    [v5 setAllowsCalendarPreview:v4];
    [v5 setCalendarPreviewIsInlineDayView:v4];
    [v5 setMinimalMode:{-[MainViewController eventViewControllerUseMinimalMode:](self, "eventViewControllerUseMinimalMode:", v5)}];
  }
}

- (void)extendedLaunchCompletedByViewType:(int)a3
{
  if (a3 >= 5)
  {
    *&a3 = -1;
  }

  else
  {
    v4 = a3;
  }

  v5 = [NSNumber numberWithInteger:*&a3];
  v7 = [NSDictionary dictionaryWithObject:v5 forKey:@"_MainViewControllerExtendedLaunchDidCompleteNotification_CalendarContentViewType_Key"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:self userInfo:v7];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MainViewController;
  [(MainViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(MainViewController *)self isViewLoaded])
  {
    v8 = [(MainViewController *)self view];
    v9 = [v8 window];

    if (v9)
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
      [v7 animateAlongsideTransition:0 completion:v10];
    }
  }
}

- (void)transitionToSizeWillStart
{
  v3 = [(MainViewController *)self testingRotationWillStartNotificationName];
  if (v3 && +[ApplicationTester testingSessionStarted])
  {
    v4 = +[UIApplication sharedApplication];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000DA10C;
    v5[3] = &unk_10020EC68;
    v6 = v3;
    v7 = self;
    [v4 installCACommitCompletionBlock:v5];
  }
}

- (void)transitionToSizeDidEnd
{
  v3 = [(MainViewController *)self testingRotationDidEndNotificationName];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = +[ApplicationTester testingSessionStarted];
    v4 = v6;
    if (v3)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 postNotificationName:v6 object:self];

      v4 = v6;
    }
  }

  _objc_release_x1(v3, v4);
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
    v3 = [(MainViewController *)self window];
    v5 = [v3 windowScene];

    if (v5)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:@"_CalendarWindowSceneTitleRequiresUpdateNotification" object:v5];
    }
  }
}

- (id)existingPalette
{
  v3 = [(MainViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MainViewController *)self navigationController];
    v6 = [v5 paletteView];
    v7 = [v6 containingPalette];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
    v3 = [(MainViewController *)self spacialEditUpIncrement];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v3 = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:v3];
      v4 = v5;
    }

    _objc_release_x1(v3, v4);
  }
}

- (void)moveSelectedOccurrenceDown
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    v3 = [(MainViewController *)self spacialEditDownIncrement];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v3 = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:v3];
      v4 = v5;
    }

    _objc_release_x1(v3, v4);
  }
}

- (void)moveSelectedOccurrenceLeft
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    v3 = [(MainViewController *)self spacialEditLeftIncrement];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v3 = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:v3];
      v4 = v5;
    }

    _objc_release_x1(v3, v4);
  }
}

- (void)moveSelectedOccurrenceRight
{
  if ([(MainViewController *)self canSpaciallyEditOccurrences])
  {
    v3 = [(MainViewController *)self spacialEditRightIncrement];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v3 = [(MainViewController *)self _adjustPointerTargetedOccurrenceStartTime:v3];
      v4 = v5;
    }

    _objc_release_x1(v3, v4);
  }
}

- (BOOL)_shouldAdjustAllDayOccurrencesWithIncrement:(id)a3
{
  v4 = a3;
  if (-[MainViewController _componentIsValid:](self, "_componentIsValid:", [v4 day]) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(v4, "weekOfYear")) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(v4, "weekOfMonth")) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(v4, "month")) || -[MainViewController _componentIsValid:](self, "_componentIsValid:", objc_msgSend(v4, "year")))
  {
    v5 = 1;
  }

  else
  {
    v5 = -[MainViewController _componentIsValid:](self, "_componentIsValid:", [v4 era]);
  }

  return v5;
}

- (void)_adjustPointerTargetedOccurrenceStartTime:(id)a3
{
  v4 = a3;
  v5 = [(MainViewController *)self _shouldAdjustAllDayOccurrencesWithIncrement:v4];
  v6 = [(MainViewController *)self spaciallyEditableOccurrences];
  if ([v6 count] == 1)
  {
    v15 = v4;
    v7 = +[NSMutableArray array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
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
            v14 = [v13 singleRecurrenceRule];

            if (v14)
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

    v4 = v15;
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

- (void)_presentSpanDecisionsForPointerTargetedOccurrences:(id)a3 startTimeAdjustment:(id)a4 recurringOccurrences:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 firstObject];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DAAD0;
  v15[3] = &unk_10020EC90;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:2 viewController:self barButtonItem:0 forEvent:v10 withCompletionHandler:v15];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v13;
}

- (void)_applyAndSavePointerTargetedOccurrences:(id)a3 startTimeAdjustment:(id)a4 span:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v35 = [(MainViewController *)self _shouldAdjustAllDayOccurrencesWithIncrement:v8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
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
          v14 = [(MainViewController *)self model];
          v15 = [v14 calendar];
          v16 = [v13 startDate];
          v17 = [v15 dateByAddingComponents:v8 toDate:v16 options:0];

          v18 = [(MainViewController *)self model];
          v19 = [v18 calendar];
          v20 = [v13 endDate];
          v21 = [v19 dateByAddingComponents:v8 toDate:v20 options:0];

          if (v17 && v21)
          {
            v22 = [v13 startDate];

            v23 = v17;
            [v13 setStartDate:v23];
            [v13 setEndDate:v21];
            v24 = [v13 eventStore];
            [v24 saveEvent:v13 span:a5 commit:0 error:0];

            v30 = 1;
            v32 = v22;
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
      v25 = [(MainViewController *)self model];
      v26 = [v25 eventStore];
      [v26 commit:0];
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
  v5 = [(MainViewController *)self model];
  v6 = [v5 isLoadedOrLoading:v3 endDate:v4];

  v7 = [(MainViewController *)self model];
  [v7 setPreferredReloadStartDate:v3 endDate:v4];

  return v6 ^ 1;
}

- (void)attemptDisplayReviewPrompt
{
  v5 = [(MainViewController *)self window];
  v3 = [v5 windowScene];
  v4 = [(MainViewController *)self model];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:v3 calendarModel:v4];
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

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)selectDate:(id)a3 animated:(BOOL)a4
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
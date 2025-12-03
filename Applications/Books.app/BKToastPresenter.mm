@interface BKToastPresenter
- (BCAugmentedExperiencePresentingDelegate)presentingDelegate;
- (BKToastPresenter)init;
- (BOOL)endPresentation:(id)presentation;
- (NSString)description;
- (id)_presentationAnimator;
- (void)_currentActionComplete;
- (void)_dismissToast;
- (void)_expandCompactVCAction:(id)action;
- (void)_performNextAction;
- (void)_performNextActionIfIdle;
- (void)_presentInVCAction:(id)action;
- (void)_scheduleAction:(id)action;
- (void)_setUpSellDataForCurrentAction;
- (void)bringExperienceViewToFront:(id)front;
- (void)cancelPreloadPresentation;
- (void)dealloc;
- (void)endOfBookCompactViewControllerWantsToCloseAsset:(id)asset completion:(id)completion;
- (void)endOfBookCompactViewControllerWantsToDismiss:(id)dismiss;
- (void)expandInVC:(id)c;
- (void)preloadPresentationInVC:(id)c pageProgressionIsRTL:(BOOL)l completion:(id)completion;
- (void)presentInVC:(id)c autoExpanded:(BOOL)expanded details:(id)details;
- (void)setSuppressingNotifications:(BOOL)notifications;
- (void)setToastViewController:(id)controller;
@end

@implementation BKToastPresenter

- (BKToastPresenter)init
{
  v6.receiver = self;
  v6.super_class = BKToastPresenter;
  v2 = [(BKToastPresenter *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    pendingActions = v2->_pendingActions;
    v2->_pendingActions = v3;
  }

  return v2;
}

- (void)setToastViewController:(id)controller
{
  controllerCopy = controller;
  toastViewController = [(BKToastPresenter *)self toastViewController];
  parentViewController = [toastViewController parentViewController];

  if (parentViewController)
  {
    toastViewController2 = [(BKToastPresenter *)self toastViewController];
    [toastViewController2 willMoveToParentViewController:0];

    toastViewController3 = [(BKToastPresenter *)self toastViewController];
    [toastViewController3 removeFromParentViewController];

    toastViewController4 = [(BKToastPresenter *)self toastViewController];
    view = [toastViewController4 view];
    [view removeFromSuperview];

    toastViewController5 = [(BKToastPresenter *)self toastViewController];
    [toastViewController5 didMoveToParentViewController:0];
  }

  toastViewController = self->_toastViewController;
  self->_toastViewController = controllerCopy;
}

- (void)dealloc
{
  if (self->_suppressingNotifications)
  {
    v3 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKToastPresenter dealloc, cancelling push suppression.", buf, 2u);
    }
  }

  [(BKToastPresenter *)self setToastViewController:0];
  v4.receiver = self;
  v4.super_class = BKToastPresenter;
  [(BKToastPresenter *)&v4 dealloc];
}

- (void)setSuppressingNotifications:(BOOL)notifications
{
  if (self->_suppressingNotifications != notifications)
  {
    v13 = v3;
    v14 = v4;
    notificationsCopy = notifications;
    self->_suppressingNotifications = notifications;
    v6 = +[BKAppDelegate delegate];
    serviceCenter = [v6 serviceCenter];
    readingActivityService = [serviceCenter readingActivityService];

    v9 = BCAugmentedExperienceLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (notificationsCopy)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKToastPresenter start suppressing notifications", buf, 2u);
      }

      [readingActivityService suppressNotifications];
    }

    else
    {
      if (v10)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKToastPresenter end suppressing notifications", v11, 2u);
      }

      [readingActivityService resumeNotifications];
    }
  }
}

- (void)presentInVC:(id)c autoExpanded:(BOOL)expanded details:(id)details
{
  expandedCopy = expanded;
  cCopy = c;
  detailsCopy = details;
  v10 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BKToastPresenter presentInVC", v13, 2u);
  }

  v16[0] = @"action";
  v16[1] = @"viewController";
  v17[0] = &off_100A435D8;
  v17[1] = cCopy;
  v16[2] = @"details";
  v17[2] = detailsCopy;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  [(BKToastPresenter *)self _scheduleAction:v11];

  if (expandedCopy)
  {
    v14[0] = @"action";
    v14[1] = @"viewController";
    v15[0] = &off_100A435F0;
    v15[1] = cCopy;
    v14[2] = @"details";
    v15[2] = detailsCopy;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    [(BKToastPresenter *)self _scheduleAction:v12];
  }
}

- (void)bringExperienceViewToFront:(id)front
{
  frontCopy = front;
  toastViewController = [(BKToastPresenter *)self toastViewController];
  viewIfLoaded = [toastViewController viewIfLoaded];

  superview = [viewIfLoaded superview];
  view = [frontCopy view];

  if (superview == view)
  {
    view2 = [frontCopy view];
    [view2 bringSubviewToFront:viewIfLoaded];
  }
}

- (void)expandInVC:(id)c
{
  v6[0] = @"action";
  v6[1] = @"viewController";
  v7[0] = &off_100A435F0;
  v7[1] = c;
  cCopy = c;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  [(BKToastPresenter *)self _scheduleAction:v5];
}

- (void)_expandCompactVCAction:(id)action
{
  toastViewController = [(BKToastPresenter *)self toastViewController];
  isPresentingCard = [toastViewController isPresentingCard];

  if (isPresentingCard)
  {

    [(BKToastPresenter *)self _currentActionComplete];
  }

  else
  {
    v6 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BKToastPresenter _expandCompactVCAction", buf, 2u);
    }

    toastViewController2 = [(BKToastPresenter *)self toastViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100125B70;
    v8[3] = &unk_100A033C8;
    v8[4] = self;
    [toastViewController2 presentCardWithCompletion:v8];
  }
}

- (id)_presentationAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:120.0 damping:15.0 initialVelocity:{0.0, 0.0}];
  v3 = [UIViewPropertyAnimator alloc];
  [v2 settlingDuration];
  v4 = [v3 initWithDuration:v2 timingParameters:?];

  return v4;
}

- (void)_presentInVCAction:(id)action
{
  actionCopy = action;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKToastPresenter _presentInVCAction", buf, 2u);
  }

  toastViewController = [(BKToastPresenter *)self toastViewController];
  if (toastViewController && (v7 = toastViewController, -[BKToastPresenter toastViewController](self, "toastViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 parentViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    [(BKToastPresenter *)self setSuppressingNotifications:1];
    v10 = [actionCopy objectForKeyedSubscript:@"viewController"];
    toastViewController2 = [(BKToastPresenter *)self toastViewController];
    [toastViewController2 toastPresenter:self willPresentToastInViewController:v10];

    toastViewController3 = [(BKToastPresenter *)self toastViewController];
    [toastViewController3 preferredFrameInViewController:v10 isPresented:0];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    toastViewController4 = [(BKToastPresenter *)self toastViewController];
    [toastViewController4 preferredFrameInViewController:v10 isPresented:1];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    toastViewController5 = [(BKToastPresenter *)self toastViewController];
    [v10 addChildViewController:toastViewController5];

    toastViewController6 = [(BKToastPresenter *)self toastViewController];
    view = [toastViewController6 view];
    [view setFrame:{v14, v16, v18, v20}];

    view2 = [v10 view];
    toastViewController7 = [(BKToastPresenter *)self toastViewController];
    view3 = [toastViewController7 view];
    [view2 addSubview:view3];

    toastViewController8 = [(BKToastPresenter *)self toastViewController];
    [toastViewController8 didMoveToParentViewController:v10];

    toastViewController9 = [(BKToastPresenter *)self toastViewController];
    view4 = [toastViewController9 view];
    [view4 layoutIfNeeded];

    _presentationAnimator = [(BKToastPresenter *)self _presentationAnimator];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100125F5C;
    v43[3] = &unk_100A043C0;
    v43[4] = self;
    v43[5] = v23;
    v43[6] = v25;
    v43[7] = v27;
    v43[8] = v29;
    [_presentationAnimator addAnimations:v43];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100125FE0;
    v41[3] = &unk_100A07F58;
    v41[4] = self;
    v42 = v10;
    v40 = v10;
    [_presentationAnimator addCompletion:v41];
    [_presentationAnimator startAnimation];
    [(BKToastPresenter *)self _setUpSellDataForCurrentAction];
  }

  else
  {
    [(BKToastPresenter *)self _currentActionComplete];
  }
}

- (BOOL)endPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKToastPresenter endPresentation", v13, 2u);
  }

  [(BKToastPresenter *)self setSuppressingNotifications:0];
  toastViewController = [(BKToastPresenter *)self toastViewController];
  viewIfLoaded = [toastViewController viewIfLoaded];

  superview = [viewIfLoaded superview];

  if (superview)
  {
    v14 = @"action";
    v15 = &off_100A43608;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(BKToastPresenter *)self _scheduleAction:v9];

    v10 = objc_retainBlock(presentationCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }

  return 1;
}

- (void)preloadPresentationInVC:(id)c pageProgressionIsRTL:(BOOL)l completion:(id)completion
{
  cCopy = c;
  completionCopy = completion;
  presentingDelegate = [(BKToastPresenter *)self presentingDelegate];
  v11 = [presentingDelegate storeIDForPresenter:self];

  v12 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v43 = 2112;
    v44 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: preloadPresentation (storeID: %@)", buf, 0x16u);
  }

  if ([(__CFString *)v11 length])
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100126638;
    v35[3] = &unk_100A07FD0;
    lCopy = l;
    v36 = v11;
    selfCopy2 = self;
    v38 = cCopy;
    v39 = completionCopy;
    v13 = objc_retainBlock(v35);
    v14 = +[BUAccountsProvider sharedProvider];
    isUserSignedInToiTunes = [v14 isUserSignedInToiTunes];

    v16 = +[BUAccountsProvider sharedProvider];
    isUserSignedInToiCloud = [v16 isUserSignedInToiCloud];

    v18 = +[BCSyncUserDefaults isCloudKitSyncOptedIn];
    v19 = v18;
    if (isUserSignedInToiTunes && isUserSignedInToiCloud && v18)
    {
      objc_opt_class();
      v20 = +[BCRCDataContainer defaultContainer];
      configs = [v20 configs];
      v22 = [configs valueForKeyPath:BRCBooksDefaultsKeyEndOfBookExperienceSendAdditionalSeedLimit];
      v23 = BUDynamicCast();

      v24 = +[BKLibraryManager defaultManager];
      if (v23)
      {
        intValue = [v23 intValue];
      }

      else
      {
        intValue = 100;
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100126F0C;
      v33[3] = &unk_100A05E68;
      v33[4] = self;
      v34 = v13;
      [v24 storeAssetIDsOfWantToReadWithLimit:intValue completion:v33];
    }

    else
    {
      v29 = BCAugmentedExperienceLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = @"NO";
        if (isUserSignedInToiTunes)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        *buf = 138413058;
        selfCopy3 = self;
        if (isUserSignedInToiCloud)
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        v43 = 2112;
        v44 = v31;
        v45 = 2112;
        if (v19)
        {
          v30 = @"YES";
        }

        v46 = v32;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@: skipping additional seeds: store=%@ iCloud=%@ CloudKit=%@", buf, 0x2Au);
      }

      (v13[2])(v13, 0);
    }

    v28 = v36;
  }

  else
  {
    v26 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1007906E0(self, v26);
    }

    v27 = objc_retainBlock(completionCopy);
    v28 = v27;
    if (v27)
    {
      (v27->data)(v27, 1);
    }
  }
}

- (void)cancelPreloadPresentation
{
  v3 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BKToastPresenter cancelPreloadPresentation", v4, 2u);
  }

  [(BKToastPresenter *)self setCardViewController:0];
  [(BKToastPresenter *)self setToastViewController:0];
}

- (void)_dismissToast
{
  v3 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BKToastPresenter _dismissToast", buf, 2u);
  }

  toastViewController = [(BKToastPresenter *)self toastViewController];
  viewIfLoaded = [toastViewController viewIfLoaded];

  superview = [viewIfLoaded superview];

  if (superview)
  {
    toastViewController2 = [(BKToastPresenter *)self toastViewController];
    [toastViewController2 toastPresenterWillDismissToast:self];

    toastViewController3 = [(BKToastPresenter *)self toastViewController];
    parentViewController = [toastViewController3 parentViewController];

    toastViewController4 = [(BKToastPresenter *)self toastViewController];
    [toastViewController4 preferredFrameInViewController:parentViewController isPresented:0];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    _presentationAnimator = [(BKToastPresenter *)self _presentationAnimator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10012732C;
    v21[3] = &unk_100A043C0;
    v21[4] = self;
    v21[5] = v12;
    v21[6] = v14;
    v21[7] = v16;
    v21[8] = v18;
    [_presentationAnimator addAnimations:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001273B0;
    v20[3] = &unk_100A059D8;
    v20[4] = self;
    [_presentationAnimator addCompletion:v20];
    [_presentationAnimator startAnimation];
  }

  else
  {
    [(BKToastPresenter *)self _currentActionComplete];
  }
}

- (void)_setUpSellDataForCurrentAction
{
  runningAction = [(BKToastPresenter *)self runningAction];
  v14 = [runningAction objectForKeyedSubscript:@"details"];

  if (v14)
  {
    objc_opt_class();
    v4 = [v14 valueForKey:BCAugmentedExperienceLocationKey];
    v5 = BUDynamicCast();
    integerValue = [v5 integerValue];

    objc_opt_class();
    v7 = [v14 valueForKey:BCAugmentedExperienceLocationVariantKey];
    v8 = BUDynamicCast();
    integerValue2 = [v8 integerValue];

    objc_opt_class();
    v10 = [v14 valueForKey:BCAugmentedExperienceVariantVersionKey];
    v11 = BUDynamicCast();

    v12 = [[BAUpSellData alloc] initWithLocation:integerValue variant:integerValue2 variantVersion:v11];
    cardViewController = [(BKToastPresenter *)self cardViewController];
    [cardViewController setUpSellData:v12];
  }
}

- (void)_scheduleAction:(id)action
{
  actionCopy = action;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKToastPresenter _scheduleAction: %@", &v7, 0xCu);
  }

  pendingActions = [(BKToastPresenter *)self pendingActions];
  [pendingActions addObject:actionCopy];

  [(BKToastPresenter *)self _performNextActionIfIdle];
}

- (void)_performNextActionIfIdle
{
  runningAction = [(BKToastPresenter *)self runningAction];

  if (!runningAction)
  {

    [(BKToastPresenter *)self _performNextAction];
  }
}

- (void)_performNextAction
{
  v3 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BKToastPresenter _performNextAction checking", &v15, 2u);
  }

  [(BKToastPresenter *)self setRunningAction:0];
  pendingActions = [(BKToastPresenter *)self pendingActions];
  v5 = [pendingActions count];

  if (v5)
  {
    pendingActions2 = [(BKToastPresenter *)self pendingActions];
    v7 = [pendingActions2 objectAtIndexedSubscript:0];
    [(BKToastPresenter *)self setRunningAction:v7];

    pendingActions3 = [(BKToastPresenter *)self pendingActions];
    [pendingActions3 removeObjectAtIndex:0];

    v9 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      runningAction = [(BKToastPresenter *)self runningAction];
      v15 = 138543362;
      v16 = runningAction;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKToastPresenter _performNextAction: %{public}@", &v15, 0xCu);
    }

    runningAction2 = [(BKToastPresenter *)self runningAction];
    v12 = [runningAction2 objectForKeyedSubscript:@"action"];
    integerValue = [v12 integerValue];

    if (integerValue == 2)
    {
      [(BKToastPresenter *)self _dismissToast];
    }

    else
    {
      if (integerValue == 1)
      {
        runningAction3 = [(BKToastPresenter *)self runningAction];
        [(BKToastPresenter *)self _expandCompactVCAction:runningAction3];
      }

      else
      {
        if (integerValue)
        {
          return;
        }

        runningAction3 = [(BKToastPresenter *)self runningAction];
        [(BKToastPresenter *)self _presentInVCAction:runningAction3];
      }
    }
  }
}

- (void)_currentActionComplete
{
  [(BKToastPresenter *)self setRunningAction:0];

  [(BKToastPresenter *)self _performNextAction];
}

- (NSString)description
{
  cardViewController = [(BKToastPresenter *)self cardViewController];
  toastViewController = [(BKToastPresenter *)self toastViewController];
  v5 = [NSString stringWithFormat:@"BKToastPresenter(cardVC:%@ toastVC:%@)", cardViewController, toastViewController];

  return v5;
}

- (void)endOfBookCompactViewControllerWantsToDismiss:(id)dismiss
{
  presentingDelegate = [(BKToastPresenter *)self presentingDelegate];
  [presentingDelegate presenterWantsToDismiss:self];
}

- (void)endOfBookCompactViewControllerWantsToCloseAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  presentingDelegate = [(BKToastPresenter *)self presentingDelegate];
  [presentingDelegate presenterWantsToCloseAsset:self completion:completionCopy];
}

- (BCAugmentedExperiencePresentingDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

@end
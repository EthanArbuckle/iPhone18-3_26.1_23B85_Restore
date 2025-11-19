@interface BKToastPresenter
- (BCAugmentedExperiencePresentingDelegate)presentingDelegate;
- (BKToastPresenter)init;
- (BOOL)endPresentation:(id)a3;
- (NSString)description;
- (id)_presentationAnimator;
- (void)_currentActionComplete;
- (void)_dismissToast;
- (void)_expandCompactVCAction:(id)a3;
- (void)_performNextAction;
- (void)_performNextActionIfIdle;
- (void)_presentInVCAction:(id)a3;
- (void)_scheduleAction:(id)a3;
- (void)_setUpSellDataForCurrentAction;
- (void)bringExperienceViewToFront:(id)a3;
- (void)cancelPreloadPresentation;
- (void)dealloc;
- (void)endOfBookCompactViewControllerWantsToCloseAsset:(id)a3 completion:(id)a4;
- (void)endOfBookCompactViewControllerWantsToDismiss:(id)a3;
- (void)expandInVC:(id)a3;
- (void)preloadPresentationInVC:(id)a3 pageProgressionIsRTL:(BOOL)a4 completion:(id)a5;
- (void)presentInVC:(id)a3 autoExpanded:(BOOL)a4 details:(id)a5;
- (void)setSuppressingNotifications:(BOOL)a3;
- (void)setToastViewController:(id)a3;
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

- (void)setToastViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKToastPresenter *)self toastViewController];
  v6 = [v5 parentViewController];

  if (v6)
  {
    v7 = [(BKToastPresenter *)self toastViewController];
    [v7 willMoveToParentViewController:0];

    v8 = [(BKToastPresenter *)self toastViewController];
    [v8 removeFromParentViewController];

    v9 = [(BKToastPresenter *)self toastViewController];
    v10 = [v9 view];
    [v10 removeFromSuperview];

    v11 = [(BKToastPresenter *)self toastViewController];
    [v11 didMoveToParentViewController:0];
  }

  toastViewController = self->_toastViewController;
  self->_toastViewController = v4;
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

- (void)setSuppressingNotifications:(BOOL)a3
{
  if (self->_suppressingNotifications != a3)
  {
    v13 = v3;
    v14 = v4;
    v5 = a3;
    self->_suppressingNotifications = a3;
    v6 = +[BKAppDelegate delegate];
    v7 = [v6 serviceCenter];
    v8 = [v7 readingActivityService];

    v9 = BCAugmentedExperienceLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKToastPresenter start suppressing notifications", buf, 2u);
      }

      [v8 suppressNotifications];
    }

    else
    {
      if (v10)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKToastPresenter end suppressing notifications", v11, 2u);
      }

      [v8 resumeNotifications];
    }
  }
}

- (void)presentInVC:(id)a3 autoExpanded:(BOOL)a4 details:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BKToastPresenter presentInVC", v13, 2u);
  }

  v16[0] = @"action";
  v16[1] = @"viewController";
  v17[0] = &off_100A435D8;
  v17[1] = v8;
  v16[2] = @"details";
  v17[2] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  [(BKToastPresenter *)self _scheduleAction:v11];

  if (v6)
  {
    v14[0] = @"action";
    v14[1] = @"viewController";
    v15[0] = &off_100A435F0;
    v15[1] = v8;
    v14[2] = @"details";
    v15[2] = v9;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    [(BKToastPresenter *)self _scheduleAction:v12];
  }
}

- (void)bringExperienceViewToFront:(id)a3
{
  v9 = a3;
  v4 = [(BKToastPresenter *)self toastViewController];
  v5 = [v4 viewIfLoaded];

  v6 = [v5 superview];
  v7 = [v9 view];

  if (v6 == v7)
  {
    v8 = [v9 view];
    [v8 bringSubviewToFront:v5];
  }
}

- (void)expandInVC:(id)a3
{
  v6[0] = @"action";
  v6[1] = @"viewController";
  v7[0] = &off_100A435F0;
  v7[1] = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  [(BKToastPresenter *)self _scheduleAction:v5];
}

- (void)_expandCompactVCAction:(id)a3
{
  v4 = [(BKToastPresenter *)self toastViewController];
  v5 = [v4 isPresentingCard];

  if (v5)
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

    v7 = [(BKToastPresenter *)self toastViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100125B70;
    v8[3] = &unk_100A033C8;
    v8[4] = self;
    [v7 presentCardWithCompletion:v8];
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

- (void)_presentInVCAction:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKToastPresenter _presentInVCAction", buf, 2u);
  }

  v6 = [(BKToastPresenter *)self toastViewController];
  if (v6 && (v7 = v6, -[BKToastPresenter toastViewController](self, "toastViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 parentViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    [(BKToastPresenter *)self setSuppressingNotifications:1];
    v10 = [v4 objectForKeyedSubscript:@"viewController"];
    v11 = [(BKToastPresenter *)self toastViewController];
    [v11 toastPresenter:self willPresentToastInViewController:v10];

    v12 = [(BKToastPresenter *)self toastViewController];
    [v12 preferredFrameInViewController:v10 isPresented:0];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(BKToastPresenter *)self toastViewController];
    [v21 preferredFrameInViewController:v10 isPresented:1];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [(BKToastPresenter *)self toastViewController];
    [v10 addChildViewController:v30];

    v31 = [(BKToastPresenter *)self toastViewController];
    v32 = [v31 view];
    [v32 setFrame:{v14, v16, v18, v20}];

    v33 = [v10 view];
    v34 = [(BKToastPresenter *)self toastViewController];
    v35 = [v34 view];
    [v33 addSubview:v35];

    v36 = [(BKToastPresenter *)self toastViewController];
    [v36 didMoveToParentViewController:v10];

    v37 = [(BKToastPresenter *)self toastViewController];
    v38 = [v37 view];
    [v38 layoutIfNeeded];

    v39 = [(BKToastPresenter *)self _presentationAnimator];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100125F5C;
    v43[3] = &unk_100A043C0;
    v43[4] = self;
    v43[5] = v23;
    v43[6] = v25;
    v43[7] = v27;
    v43[8] = v29;
    [v39 addAnimations:v43];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100125FE0;
    v41[3] = &unk_100A07F58;
    v41[4] = self;
    v42 = v10;
    v40 = v10;
    [v39 addCompletion:v41];
    [v39 startAnimation];
    [(BKToastPresenter *)self _setUpSellDataForCurrentAction];
  }

  else
  {
    [(BKToastPresenter *)self _currentActionComplete];
  }
}

- (BOOL)endPresentation:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKToastPresenter endPresentation", v13, 2u);
  }

  [(BKToastPresenter *)self setSuppressingNotifications:0];
  v6 = [(BKToastPresenter *)self toastViewController];
  v7 = [v6 viewIfLoaded];

  v8 = [v7 superview];

  if (v8)
  {
    v14 = @"action";
    v15 = &off_100A43608;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(BKToastPresenter *)self _scheduleAction:v9];

    v10 = objc_retainBlock(v4);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }

  return 1;
}

- (void)preloadPresentationInVC:(id)a3 pageProgressionIsRTL:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BKToastPresenter *)self presentingDelegate];
  v11 = [v10 storeIDForPresenter:self];

  v12 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v42 = self;
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
    v40 = a4;
    v36 = v11;
    v37 = self;
    v38 = v8;
    v39 = v9;
    v13 = objc_retainBlock(v35);
    v14 = +[BUAccountsProvider sharedProvider];
    v15 = [v14 isUserSignedInToiTunes];

    v16 = +[BUAccountsProvider sharedProvider];
    v17 = [v16 isUserSignedInToiCloud];

    v18 = +[BCSyncUserDefaults isCloudKitSyncOptedIn];
    v19 = v18;
    if (v15 && v17 && v18)
    {
      objc_opt_class();
      v20 = +[BCRCDataContainer defaultContainer];
      v21 = [v20 configs];
      v22 = [v21 valueForKeyPath:BRCBooksDefaultsKeyEndOfBookExperienceSendAdditionalSeedLimit];
      v23 = BUDynamicCast();

      v24 = +[BKLibraryManager defaultManager];
      if (v23)
      {
        v25 = [v23 intValue];
      }

      else
      {
        v25 = 100;
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100126F0C;
      v33[3] = &unk_100A05E68;
      v33[4] = self;
      v34 = v13;
      [v24 storeAssetIDsOfWantToReadWithLimit:v25 completion:v33];
    }

    else
    {
      v29 = BCAugmentedExperienceLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = @"NO";
        if (v15)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        *buf = 138413058;
        v42 = self;
        if (v17)
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

    v27 = objc_retainBlock(v9);
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

  v4 = [(BKToastPresenter *)self toastViewController];
  v5 = [v4 viewIfLoaded];

  v6 = [v5 superview];

  if (v6)
  {
    v7 = [(BKToastPresenter *)self toastViewController];
    [v7 toastPresenterWillDismissToast:self];

    v8 = [(BKToastPresenter *)self toastViewController];
    v9 = [v8 parentViewController];

    v10 = [(BKToastPresenter *)self toastViewController];
    [v10 preferredFrameInViewController:v9 isPresented:0];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(BKToastPresenter *)self _presentationAnimator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10012732C;
    v21[3] = &unk_100A043C0;
    v21[4] = self;
    v21[5] = v12;
    v21[6] = v14;
    v21[7] = v16;
    v21[8] = v18;
    [v19 addAnimations:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001273B0;
    v20[3] = &unk_100A059D8;
    v20[4] = self;
    [v19 addCompletion:v20];
    [v19 startAnimation];
  }

  else
  {
    [(BKToastPresenter *)self _currentActionComplete];
  }
}

- (void)_setUpSellDataForCurrentAction
{
  v3 = [(BKToastPresenter *)self runningAction];
  v14 = [v3 objectForKeyedSubscript:@"details"];

  if (v14)
  {
    objc_opt_class();
    v4 = [v14 valueForKey:BCAugmentedExperienceLocationKey];
    v5 = BUDynamicCast();
    v6 = [v5 integerValue];

    objc_opt_class();
    v7 = [v14 valueForKey:BCAugmentedExperienceLocationVariantKey];
    v8 = BUDynamicCast();
    v9 = [v8 integerValue];

    objc_opt_class();
    v10 = [v14 valueForKey:BCAugmentedExperienceVariantVersionKey];
    v11 = BUDynamicCast();

    v12 = [[BAUpSellData alloc] initWithLocation:v6 variant:v9 variantVersion:v11];
    v13 = [(BKToastPresenter *)self cardViewController];
    [v13 setUpSellData:v12];
  }
}

- (void)_scheduleAction:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKToastPresenter _scheduleAction: %@", &v7, 0xCu);
  }

  v6 = [(BKToastPresenter *)self pendingActions];
  [v6 addObject:v4];

  [(BKToastPresenter *)self _performNextActionIfIdle];
}

- (void)_performNextActionIfIdle
{
  v3 = [(BKToastPresenter *)self runningAction];

  if (!v3)
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
  v4 = [(BKToastPresenter *)self pendingActions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BKToastPresenter *)self pendingActions];
    v7 = [v6 objectAtIndexedSubscript:0];
    [(BKToastPresenter *)self setRunningAction:v7];

    v8 = [(BKToastPresenter *)self pendingActions];
    [v8 removeObjectAtIndex:0];

    v9 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(BKToastPresenter *)self runningAction];
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKToastPresenter _performNextAction: %{public}@", &v15, 0xCu);
    }

    v11 = [(BKToastPresenter *)self runningAction];
    v12 = [v11 objectForKeyedSubscript:@"action"];
    v13 = [v12 integerValue];

    if (v13 == 2)
    {
      [(BKToastPresenter *)self _dismissToast];
    }

    else
    {
      if (v13 == 1)
      {
        v14 = [(BKToastPresenter *)self runningAction];
        [(BKToastPresenter *)self _expandCompactVCAction:v14];
      }

      else
      {
        if (v13)
        {
          return;
        }

        v14 = [(BKToastPresenter *)self runningAction];
        [(BKToastPresenter *)self _presentInVCAction:v14];
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
  v3 = [(BKToastPresenter *)self cardViewController];
  v4 = [(BKToastPresenter *)self toastViewController];
  v5 = [NSString stringWithFormat:@"BKToastPresenter(cardVC:%@ toastVC:%@)", v3, v4];

  return v5;
}

- (void)endOfBookCompactViewControllerWantsToDismiss:(id)a3
{
  v4 = [(BKToastPresenter *)self presentingDelegate];
  [v4 presenterWantsToDismiss:self];
}

- (void)endOfBookCompactViewControllerWantsToCloseAsset:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(BKToastPresenter *)self presentingDelegate];
  [v6 presenterWantsToCloseAsset:self completion:v5];
}

- (BCAugmentedExperiencePresentingDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

@end
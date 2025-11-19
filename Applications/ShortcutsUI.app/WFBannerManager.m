@interface WFBannerManager
- (BOOL)displayActive;
- (BOOL)presentableIsIslandPresentable:(id)a3;
- (BOOL)presentedBannerIsStatusForRunningContext:(id)a3;
- (BOOL)presentsApertureStatus;
- (BOOL)queuedDialogIsActionUIRequest:(id)a3;
- (BOOL)runningContextIsInPersistentMode:(id)a3;
- (BOOL)shouldUpdateStateBasedOnLayout:(id)a3;
- (CGSize)preferredContainerSize;
- (CGSize)preferredPresentationSize;
- (NSMutableDictionary)runningPersistentWorkflows;
- (NSMutableOrderedSet)pendingRequests;
- (UIViewController)presentedRemoteAlertViewController;
- (WFBannerManager)init;
- (WFBannerPresentable)presentedBanner;
- (WFBannerRequest)inflightRequest;
- (id)configuredDisplayLayoutMonitor;
- (id)defaultPostOptions;
- (id)presentationAnchorForActionUserInterface:(id)a3;
- (id)presentedPlatter;
- (id)queue_pauseDialogPresentationForDuration:(id)a3 withReason:(id)a4;
- (id)queue_resumeDialogPresentationWithReason:(id)a3 onRequestFromHost:(BOOL)a4;
- (id)requestContainerForRunningContext:(id)a3;
- (id)viewControllerForPresentingActionUserInterface:(id)a3;
- (void)actionUserInterface:(id)a3 showViewControllerInPlatter:(id)a4;
- (void)addConnectedHost:(id)a3;
- (void)applicationWillLaunchInForegroundForRunningContext:(id)a3 isLastAction:(id)a4;
- (void)bannerViewController:(id)a3 didPresentBanner:(id)a4;
- (void)bannerViewController:(id)a3 willDismissWithReason:(id)a4;
- (void)bannerViewControllerActionUserInterfaceNeedsDismissal:(id)a3;
- (void)bannerViewControllerHomeGestureDidPassThreshold:(id)a3;
- (void)beginPersistentModeWithRunningContext:(id)a3 attribution:(id)a4 completionHandler:(id)a5;
- (void)cancelAllPendingRequestsForSystemDismiss;
- (void)completePersistentModeWithSuccess:(id)a3 runningContext:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)dialogViewController:(id)a3 didFinishWithResponse:(id)a4 waitForFollowUpRequest:(BOOL)a5;
- (void)dismissPlatterForActionUserInterface:(id)a3 completionHandler:(id)a4;
- (void)dismissPresentedContentForRunningContext:(id)a3 completionHandler:(id)a4;
- (void)getBannerForQueuedDialogRequest:(id)a3 dialogIsBreakthroughSmartPrompt:(BOOL)a4 completionHandler:(id)a5;
- (void)getBannerForQueuedStatusPresentation:(id)a3 completionHandler:(id)a4;
- (void)handleSingleStepHomeScreenDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5;
- (void)pauseDialogPresentationForDuration:(id)a3 withCompletionHandler:(id)a4;
- (void)queue_dismissRemoteAlertViewControllerWithReason:(id)a3;
- (void)queue_enqueuePersistentModeStatusPresentationForRunningContext:(id)a3;
- (void)queue_presentBanner:(id)a3 completion:(id)a4;
- (void)queue_removePendingStatusPresentationsForRunningContext:(id)a3;
- (void)queue_resetWithReason:(id)a3;
- (void)queue_revokeIslandPresentableForContext:(id)a3 reason:(id)a4;
- (void)queue_revokePresentableForContext:(id)a3 reason:(id)a4 forced:(BOOL)a5;
- (void)queue_stopTrackingPersistentModeContext:(id)a3 withReason:(id)a4;
- (void)queue_updatePresentedStatusForRunningContext:(id)a3;
- (void)queue_updateStateWithReason:(id)a3;
- (void)removeConnectedHost:(id)a3;
- (void)resumeDialogPresentationWithCompletionHandler:(id)a3;
- (void)revokeAllPresentablesWithReason:(id)a3;
- (void)setInflightRequest:(id)a3;
- (void)setPresentedBanner:(id)a3;
- (void)setPresentedRemoteAlertViewController:(id)a3;
- (void)showDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5;
- (void)statusViewControllerDidCollapseFromCustomLayout:(id)a3;
- (void)statusViewControllerDidTransitionFromVisibleToCustomLayout:(id)a3;
- (void)updateAttribution:(id)a3 runningContext:(id)a4;
@end

@implementation WFBannerManager

- (CGSize)preferredContainerSize
{
  v2 = [(WFBannerManager *)self bannerSource];
  v3 = [v2 layoutDescriptionWithError:0];

  [v3 containerSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)preferredPresentationSize
{
  v2 = [(WFBannerManager *)self bannerSource];
  v3 = [v2 layoutDescriptionWithError:0];

  [v3 presentationSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)presentedBannerIsStatusForRunningContext:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self presentedPlatter];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 associatedRunningContext];

  LOBYTE(v7) = [v8 isEqual:v4];
  return v7;
}

- (BOOL)runningContextIsInPersistentMode:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self runningPersistentWorkflows];
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)presentedPlatter
{
  v3 = [(WFBannerManager *)self presentedBanner];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 embeddedPlatter];
  }

  else
  {

    v4 = [(WFBannerManager *)self presentedBanner];
  }

  return v4;
}

- (BOOL)queuedDialogIsActionUIRequest:(id)a3
{
  v3 = [a3 request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)presentableIsIslandPresentable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)presentsApertureStatus
{
  v2 = +[WFBannerPrototypeSettings sharedSettings];
  v3 = [v2 simulateStatusBannerDevice];

  if (v3)
  {
    return 0;
  }

  v5 = +[WFDevice currentDevice];
  v6 = [v5 hasSystemAperture];

  return v6;
}

- (BOOL)displayActive
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [(WFBannerManager *)self displayMonitor];
  v3 = [v2 connectedIdentities];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 8)
        {
          v10 = sub_100007750();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v21 = "[WFBannerManager displayActive]";
            v22 = 2112;
            v23 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Active continuity display found: %@", buf, 0x16u);
          }

          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [(WFBannerManager *)self layoutMonitor];
  v12 = [v11 currentLayout];
  v13 = [v12 backlightState] > 1;

  return (v13 | v6) & 1;
}

- (BOOL)shouldUpdateStateBasedOnLayout:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 elements];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    v9 = FBSDisplayLayoutElementLockScreenIdentifier;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) identifier];
        v12 = [v11 isEqualToString:v9];

        v7 |= v12;
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = [v3 backlightState];
  v14 = sub_100007750();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[WFBannerManager shouldUpdateStateBasedOnLayout:]";
    v22 = 1024;
    v23 = v7 & 1;
    v24 = 1024;
    v25 = v13 < 2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s layoutContainsLock: %i, displayInactive: %i", buf, 0x18u);
  }

  return (v13 > 1) & ~v7;
}

- (id)configuredDisplayLayoutMonitor
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v3 setNeedsUserInteractivePriority:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007A80;
  v6[3] = &unk_100028DC8;
  v6[4] = self;
  [v3 setTransitionHandler:v6];
  v4 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3];

  return v4;
}

- (void)statusViewControllerDidCollapseFromCustomLayout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = sub_100007750();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[WFBannerManager statusViewControllerDidCollapseFromCustomLayout:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Single step home screen island collapsed from custom", buf, 0xCu);
      }

      [v4 associatedRunningContext];
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100007F44;
      v13 = v12 = &unk_100028DA0;
      v14 = self;
      v6 = v13;
      v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v9 block:1.0];
      v8 = [(WFBannerManager *)self singleStepHomeScreenRevokeTimers:v9];
      [v8 setObject:v7 forKey:v6];
    }
  }
}

- (void)statusViewControllerDidTransitionFromVisibleToCustomLayout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = sub_100007750();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[WFBannerManager statusViewControllerDidTransitionFromVisibleToCustomLayout:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Single step home screen island expanded to custom", &v11, 0xCu);
      }

      v6 = [(WFBannerManager *)self singleStepHomeScreenRevokeTimers];
      v7 = [v4 associatedRunningContext];
      v8 = [v6 objectForKey:v7];

      if (v8)
      {
        [v8 invalidate];
        v9 = [(WFBannerManager *)self singleStepHomeScreenRevokeTimers];
        v10 = [v4 associatedRunningContext];
        [v9 removeObjectForKey:v10];
      }
    }
  }
}

- (void)bannerViewControllerActionUserInterfaceNeedsDismissal:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008228;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)bannerViewControllerHomeGestureDidPassThreshold:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008328;
  v5[3] = &unk_1000287E0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)bannerViewController:(id)a3 willDismissWithReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008540;
  block[3] = &unk_100028850;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)bannerViewController:(id)a3 didPresentBanner:(id)a4
{
  v5 = [(WFBannerManager *)self queue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000087B4;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)dismissPlatterForActionUserInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008988;
  v13[3] = &unk_100028918;
  v13[4] = self;
  v7 = a4;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  v9 = [v6 viewControllerForPresenting];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008A2C;
    v10[3] = &unk_100028918;
    v11 = v6;
    v12 = v8;
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)actionUserInterface:(id)a3 showViewControllerInPlatter:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = objc_alloc_init(WFCompactPlatterViewController);
  v8 = [v7 platterView];
  v9 = [v15 attribution];
  [v8 setAttribution:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 platterConfiguration];
  }

  else
  {
    +[WFPlatterConfiguration defaultConfiguration];
  }
  v10 = ;
  v11 = [v7 platterView];
  [v11 applyStylingWithConfiguration:v10];

  [v7 setContentViewController:v6];
  v12 = [(WFBannerManager *)self viewControllerForPresentingActionUserInterface:v15];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  [v14 presentViewController:v7 animated:1 completion:0];
}

- (id)presentationAnchorForActionUserInterface:(id)a3
{
  v3 = [(WFBannerManager *)self viewControllerForPresentingActionUserInterface:a3];
  v4 = [v3 view];
  v5 = [v4 window];

  return v5;
}

- (id)viewControllerForPresentingActionUserInterface:(id)a3
{
  v4 = +[WFBannerPrototypeSettings sharedSettings];
  v5 = [v4 useRemoteAlertsForActionInterfaceDialogRequests];

  if (v5)
  {
    v6 = [(WFBannerManager *)self presentedRemoteAlertViewController];
  }

  else
  {
    v7 = [(WFBannerManager *)self presentedBanner];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  return v6;
}

- (void)dialogViewController:(id)a3 didFinishWithResponse:(id)a4 waitForFollowUpRequest:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WFBannerManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008EF4;
  v13[3] = &unk_100028D58;
  v14 = v8;
  v15 = v9;
  v17 = a5;
  v16 = self;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)cancelAllPendingRequestsForSystemDismiss
{
  v3 = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009840;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)revokeAllPresentablesWithReason:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self bannerSource];
  v6 = [(WFBannerManager *)self dismissalReasonWithReason:v4];

  v7 = [v5 revokeAllPresentablesWithReason:v6 userInfo:&__NSDictionary0__struct error:0];

  [(WFBannerManager *)self setPresentedBanner:0];
}

- (void)queue_resetWithReason:(id)a3
{
  v4 = a3;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFBannerManager queue_resetWithReason:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Clearing ALL state because %@", &v9, 0x16u);
  }

  v6 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(WFBannerManager *)self pendingRequests];
  [v7 removeAllObjects];

  [(WFBannerManager *)self setInflightRequest:0];
  [(WFBannerManager *)self setPresentedBanner:0];
  [(WFBannerManager *)self setActionUserInterfaceListener:0];
  [(WFBannerManager *)self setRunningContextWaitingForFollowUpRequest:0];
  [(WFBannerManager *)self setBannerPresentationCompletion:0];
  [(WFBannerManager *)self setDialogRequestCompletionHandler:0];
  [(WFBannerManager *)self setPresentedPersistentRunningContext:0];
  v8 = [(WFBannerManager *)self runningPersistentWorkflows];
  [v8 removeAllObjects];

  [(WFBannerManager *)self setShouldObserveDisplayLayout:0];
}

- (void)handleSingleStepHomeScreenDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009CC0;
  v12[3] = &unk_1000288F0;
  v12[4] = self;
  v13 = a4;
  v14 = v8;
  v15 = a5;
  v9 = v15;
  v10 = v8;
  v11 = v13;
  dispatch_async(&_dispatch_main_q, v12);
}

- (id)queue_resumeDialogPresentationWithReason:(id)a3 onRequestFromHost:(BOOL)a4
{
  v6 = a3;
  v7 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v7);

  if ([(WFBannerManager *)self isDialogPresentationPaused])
  {
    v8 = [(WFBannerManager *)self pauseTimer];

    if (!v8)
    {
      v34 = +[NSAssertionHandler currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1343 description:{@"Dialog presentation is paused, but there is no pause timer"}];
    }

    v9 = [(WFBannerManager *)self dialogPresentationResumingReason];

    if (v9)
    {
      v35 = +[NSAssertionHandler currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1344 description:{@"Dialog presentation is paused, but there is a resuming reason"}];
    }

    v10 = sub_100007750();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(WFBannerManager *)self dialogPresentationPausingReason];
      *buf = 136315650;
      *&buf[4] = "[WFBannerManager queue_resumeDialogPresentationWithReason:onRequestFromHost:]";
      v43 = 2112;
      v44 = v11;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Resuming dialog presentation (paused for '%@') for '%@'", buf, 0x20u);
    }

    v36 = v6;
    v12 = [(__CFString *)v6 copy];
    [(WFBannerManager *)self setDialogPresentationResumingReason:v12];

    [(WFBannerManager *)self setDialogPresentationPausingReason:0];
    [(WFBannerManager *)self setDialogPresentationPaused:0];
    v13 = [(WFBannerManager *)self pauseTimer];
    [v13 cancel];

    [(WFBannerManager *)self setPauseTimer:0];
    v14 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [(WFBannerManager *)self pendingRequests];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          v21 = [(WFBannerManager *)self runningPersistentWorkflows];
          v22 = [v20 context];
          v23 = [v21 objectForKey:v22];

          if ([v23 completed])
          {
            [(__CFString *)v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    v24 = [(WFBannerManager *)self pendingRequests];
    [v24 removeObjectsInArray:v14];

    v6 = v36;
    v25 = [NSString stringWithFormat:@"we just resumed dialog presentation for '%@'", v36];
    [(WFBannerManager *)self queue_updateStateWithReason:v25];
    v26 = 0;
  }

  else
  {
    v27 = [(WFBannerManager *)self dialogPresentationResumingReason];
    v28 = v27;
    v29 = @"never paused";
    if (v27)
    {
      v29 = v27;
    }

    v14 = v29;

    v30 = sub_100007750();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[WFBannerManager queue_resumeDialogPresentationWithReason:onRequestFromHost:]";
      v43 = 2112;
      v44 = v6;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Wanted to resume dialog presentation for '%@', but it was already resumed for '%@'", buf, 0x20u);
    }

    v31 = [NSString stringWithFormat:@"Dialog presentation was resumed for '%@'", v14];
    v25 = v31;
    if (v31)
    {
      v47 = NSLocalizedDescriptionKey;
      *buf = v31;
      v32 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:1];
    }

    else
    {
      v32 = 0;
    }

    v26 = [[NSError alloc] initWithDomain:@"com.apple.shortcuts.bannermanager" code:2 userInfo:v32];
  }

  return v26;
}

- (id)queue_pauseDialogPresentationForDuration:(id)a3 withReason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v9);

  [v7 doubleValue];
  v11 = v10;
  if (![(WFBannerManager *)self isDialogPresentationPaused])
  {
    v17 = [(WFBannerManager *)self pauseTimer];

    if (v17)
    {
      v31 = +[NSAssertionHandler currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1303 description:{@"Dialog presentation isn't paused, but the pause timer is non-nil"}];
    }

    v18 = [(WFBannerManager *)self dialogPresentationPausingReason];

    if (v18)
    {
      v32 = +[NSAssertionHandler currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1304 description:{@"Dialog presentation isn't paused, but there is a pausing reason"}];
    }

    v19 = sub_100007750();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[WFBannerManager queue_pauseDialogPresentationForDuration:withReason:]";
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Pausing dialog presentation for %.2f seconds for '%@'", buf, 0x20u);
    }

    [(WFBannerManager *)self setDialogPresentationResumingReason:0];
    v20 = [v8 copy];
    [(WFBannerManager *)self setDialogPresentationPausingReason:v20];

    [(WFBannerManager *)self setDialogPresentationPaused:1];
    v21 = [(WFBannerManager *)self presentedBanner];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v12 = v22;

    v15 = [v12 associatedRunningContext];
    v24 = [v12 queuedStatusPlatter];

    if (v24)
    {
      [v12 setQueuedStatusPlatter:0];
    }

    else
    {
      v25 = [(WFBannerManager *)self presentedPlatter];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_24:
        objc_initWeak(buf, self);
        v27 = [WFDispatchSourceTimer alloc];
        v28 = [(WFBannerManager *)self queue];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10000AF94;
        v33[3] = &unk_100028BF8;
        objc_copyWeak(v34, buf);
        v34[1] = v11;
        v29 = [v27 initWithInterval:v28 queue:v33 handler:*&v11];

        [v29 setPreventSuspension:1];
        [v29 start];
        [(WFBannerManager *)self setPauseTimer:v29];

        objc_destroyWeak(v34);
        objc_destroyWeak(buf);
        v23 = 0;
        goto LABEL_25;
      }

      [(WFBannerManager *)self queue_dismissPresentableWithReason:@"dialog presentation was paused" interruptible:0 forced:0];
    }

    [(WFBannerManager *)self queue_enqueuePersistentModeStatusPresentationForRunningContext:v15];
    goto LABEL_24;
  }

  v12 = [(WFBannerManager *)self dialogPresentationPausingReason];
  v13 = sub_100007750();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "[WFBannerManager queue_pauseDialogPresentationForDuration:withReason:]";
    v36 = 2048;
    v37 = v11;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Wanted to pause dialog presentation for %.2f seconds for '%@', but it was already paused for '%@'", buf, 0x2Au);
  }

  v14 = [NSString stringWithFormat:@"Dialog presentation is already paused for '%@'", v12];
  v15 = v14;
  if (v14)
  {
    v42 = NSLocalizedDescriptionKey;
    *buf = v14;
    v16 = [NSDictionary dictionaryWithObjects:buf forKeys:&v42 count:1];
  }

  else
  {
    v16 = 0;
  }

  v23 = [[NSError alloc] initWithDomain:@"com.apple.shortcuts.bannermanager" code:1 userInfo:v16];

LABEL_25:

  return v23;
}

- (void)getBannerForQueuedDialogRequest:(id)a3 dialogIsBreakthroughSmartPrompt:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100007750();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WFBannerManager getBannerForQueuedDialogRequest:dialogIsBreakthroughSmartPrompt:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Getting dialog banner...", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B178;
  v13[3] = &unk_100028BD0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, v13);
}

- (id)requestContainerForRunningContext:(id)a3
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000BB14;
  v16 = &unk_100028B30;
  v4 = a3;
  v17 = v4;
  v18 = self;
  v5 = objc_retainBlock(&v13);
  v6 = [(WFBannerManager *)self presentedBanner:v13];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setDismissalHandler:v5];
  v9 = [(WFBannerManager *)self presentedPlatter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ([v8 dismissalPhase] || (isKindOfClass & 1) != 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = [[WFBannerViewController alloc] initWithRunningContext:v4];
    [(WFBannerViewController *)v11 setDelegate:self];
    [(WFBannerViewController *)v11 setDismissalHandler:v5];
  }

  return v11;
}

- (void)getBannerForQueuedStatusPresentation:(id)a3 completionHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BFA8;
  block[3] = &unk_1000288C8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)queue_updatePresentedStatusForRunningContext:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100007750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]";
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Updating presented status platters with progress if applicable. Running context: (%@)", buf, 0x16u);
  }

  v7 = [(WFBannerManager *)self runningPersistentWorkflows];
  v8 = [v7 objectForKey:v4];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(WFBannerManager *)self presentsApertureStatus])
      {
        v9 = [v8 associatedPill];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000CD50;
            block[3] = &unk_100028AC0;
            v31 = v9;
            v32 = v8;
            v33 = self;
            v34 = v4;
            v8 = v8;
            v10 = v9;
            dispatch_async(&_dispatch_main_q, block);

            goto LABEL_34;
          }
        }
      }

      else
      {
        v9 = [(WFBannerManager *)self presentedPlatter];
        if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v14 = [(WFBannerManager *)self presentedBanner];
          if (v14)
          {
            objc_opt_class();
            v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          v9 = [v16 queuedStatusPlatter];

          if (!v9)
          {
            goto LABEL_29;
          }
        }

        v17 = [v9 associatedRunningContext];
        v18 = [v17 isEqual:v4];

        if (v18)
        {
          if ([v8 completed])
          {
            v19 = dispatch_time(0, 50000000);
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_10000D050;
            v28[3] = &unk_1000288A0;
            v9 = v9;
            v29 = v9;
            dispatch_after(v19, &_dispatch_main_q, v28);
            v20 = dispatch_time(0, 1000000000);
            v21 = [(WFBannerManager *)self queue];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_10000D11C;
            v26[3] = &unk_1000287E0;
            v26[4] = self;
            v27 = v4;
            dispatch_after(v20, v21, v26);

            v22 = v29;
          }

          else
          {
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_10000D1F0;
            v23[3] = &unk_1000287E0;
            v9 = v9;
            v24 = v9;
            v25 = v8;
            dispatch_async(&_dispatch_main_q, v23);

            v22 = v24;
          }
        }

        else
        {
LABEL_29:
          v22 = sub_100007750();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v36 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s No status view controller found", buf, 0xCu);
          }
        }
      }

      goto LABEL_34;
    }
  }

  v8 = [(WFBannerManager *)self presentedPlatter];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v8 associatedRunningContext];
    v12 = [v11 isEqual:v4];

    if (v12)
    {
      v13 = sub_100007750();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v36 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]";
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s While updating platters for progress, shortcut with context (%@) was found to no longer be tracked. Revoking...", buf, 0x16u);
      }

      [(WFBannerManager *)self queue_dismissPresentableWithReason:@"shortcut was found to be no longer running as determined by updating progress process after presenting status" interruptible:0 forced:0];
      goto LABEL_34;
    }
  }

  else
  {

    v8 = 0;
  }

  if ([(WFBannerManager *)self presentsApertureStatus])
  {
    [(WFBannerManager *)self queue_revokeIslandPresentableForContext:v4 reason:@"shortcut was found to be no longer running as determined by updating progress process after presenting status"];
  }

LABEL_34:
}

- (void)queue_removePendingStatusPresentationsForRunningContext:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = self;
  v7 = [(WFBannerManager *)self pendingRequests];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v15 = [v14 context];

        LODWORD(v14) = [v15 isEqual:v4];
        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [(WFBannerManager *)v17 pendingRequests];
  [v16 removeObjectsInArray:v6];
}

- (void)queue_stopTrackingPersistentModeContext:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[WFBannerManager queue_stopTrackingPersistentModeContext:withReason:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Removing state for %@ because %{public}@", &v16, 0x20u);
  }

  v9 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(WFBannerManager *)self runningPersistentWorkflows];
  v11 = [v10 objectForKey:v6];

  v12 = [v11 progressSubscriber];
  [v6 removeProgressSubscriber:v12];

  v13 = [(WFBannerManager *)self runningPersistentWorkflows];
  [v13 removeObjectForKey:v6];

  if (![(WFBannerManager *)self presentsApertureStatus])
  {
    v14 = [(WFBannerManager *)self presentedPersistentRunningContext];
    v15 = [v14 isEqual:v6];

    if (v15)
    {
      [(WFBannerManager *)self setPresentedPersistentRunningContext:0];
    }
  }
}

- (void)queue_enqueuePersistentModeStatusPresentationForRunningContext:(id)a3
{
  v4 = a3;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[WFBannerManager queue_enqueuePersistentModeStatusPresentationForRunningContext:]";
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Submitting persistent mode request for %@", buf, 0x16u);
  }

  v6 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(WFBannerManager *)self runningPersistentWorkflows];
  v8 = [v7 objectForKey:v4];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [[WFQueuedStatusPresentation alloc] initWithRunningContext:v4];
    if ([(WFBannerManager *)self presentsApertureStatus])
    {
      v10 = [(WFBannerManager *)self pendingRequests];
      [v10 addObject:v9];
    }

    else
    {
      objc_initWeak(buf, self);
      v11 = [WFDispatchSourceTimer alloc];
      v12 = [(WFBannerManager *)self queue];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10000D9A0;
      v17 = &unk_100028A98;
      objc_copyWeak(&v19, buf);
      v18 = v9;
      v13 = [v11 initWithInterval:v12 queue:&v14 handler:0.2];

      [v13 setPreventSuspension:{1, v14, v15, v16, v17}];
      [v13 start];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }

  else
  {

    v8 = sub_100007750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[WFBannerManager queue_enqueuePersistentModeStatusPresentationForRunningContext:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to enqueue persistent mode status presentation because the backing workflow is not running", buf, 0xCu);
    }
  }
}

- (id)defaultPostOptions
{
  v4[0] = kSBUIPresentableShouldBypassScreenSharingUserInfoKey;
  v4[1] = kSBUIPresentableWantsDismissalPreventionContextUserInfoKey;
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v4[2] = kSBUIPresentableCustomTransitionStyleUserInfoKey;
  v5[2] = &off_100029A20;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (void)queue_presentBanner:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 requestIdentifier];
    *buf = 136315650;
    v57 = "[WFBannerManager queue_presentBanner:completion:]";
    v58 = 2112;
    v59 = v6;
    v60 = 2112;
    v61 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Preparing banner for presentation (%@) for running context (%@)", buf, 0x20u);
  }

  v10 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(WFBannerManager *)self presentedBanner];

  if (v11 == v6)
  {
    v21 = sub_100007750();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v6 requestIdentifier];
      *buf = 136315650;
      v57 = "[WFBannerManager queue_presentBanner:completion:]";
      v58 = 2112;
      v59 = v6;
      v60 = 2112;
      v61 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Presentable is already on screen (%@), (%@)", buf, 0x20u);
    }

    v23 = [v6 associatedRunningContext];
    [(WFBannerManager *)self queue_updatePresentedStatusForRunningContext:v23];

    v7[2](v7, 1);
  }

  else
  {
    v12 = [(WFBannerManager *)self presentableIsIslandPresentable:v6];
    v13 = [(WFBannerManager *)self inflightRequest];
    if (!v13 || [(WFBannerManager *)self displayActive])
    {

      goto LABEL_7;
    }

    if (v12)
    {
LABEL_7:
      if (![(WFBannerManager *)self presentsApertureStatus])
      {
        v14 = [v6 associatedRunningContext];
        v15 = [(WFBannerManager *)self runningContextIsInPersistentMode:v14];

        if (v15)
        {
          v16 = [v6 associatedRunningContext];
          [(WFBannerManager *)self setPresentedPersistentRunningContext:v16];
        }
      }

      if ([(WFBannerManager *)self presentsApertureStatus]&& v12)
      {
        v17 = [v6 associatedRunningContext];
        v18 = [(WFBannerManager *)self runningPersistentWorkflows];
        v19 = [v18 objectForKey:v17];

        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v31 = v20;

        [v31 setAssociatedPill:v6];
        v7[2](v7, 1);
      }

      else
      {
        [(WFBannerManager *)self setBannerPresentationCompletion:v7];
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E1E8;
      block[3] = &unk_100028A70;
      block[4] = self;
      v49 = v6;
      v50 = v12;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_28;
    }

    v24 = [v6 associatedRunningContext];
    v25 = [v24 isShortcutsApp];
    v26 = sub_100007750();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        v28 = [(WFBannerManager *)self inflightRequest];
        *buf = 136315394;
        v57 = "[WFBannerManager queue_presentBanner:completion:]";
        v58 = 2112;
        v59 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s Display is off, putting inflight request (%@) back on top of the queue and observing display layout", buf, 0x16u);
      }

      v29 = [(WFBannerManager *)self pendingRequests];
      v30 = [(WFBannerManager *)self inflightRequest];
      [v29 insertObject:v30 atIndex:0];

      [(WFBannerManager *)self setInflightRequest:0];
      [(WFBannerManager *)self setShouldObserveDisplayLayout:1];
      v7[2](v7, 3);
    }

    else
    {
      if (v27)
      {
        *buf = 136315138;
        v57 = "[WFBannerManager queue_presentBanner:completion:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s Display is off, requesting for workflow pause", buf, 0xCu);
      }

      v32 = [(WFBannerManager *)self inflightRequest];
      if (v32)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      v35 = [v34 request];
      if (!v35)
      {
        v36 = sub_100007750();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v57 = "[WFBannerManager queue_presentBanner:completion:]";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s Attempting to pause a workflow when presenting a non-queued dialog request", buf, 0xCu);
        }
      }

      v37 = [v34 completionHandler];

      if (v37)
      {
        v38 = [v34 completionHandler];
        v39 = [[WFDialogResponse alloc] initWithResponseCode:3];
        (v38)[2](v38, v39, 0);

        [v34 setCompletionHandler:0];
      }

      [(WFBannerManager *)self setInflightRequest:0, v34];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v40 = [(WFBannerManager *)self connectedHosts];
      v41 = [v40 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v52;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v52 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = [*(*(&v51 + 1) + 8 * i) remoteTarget];
            v46 = v45;
            if (v45)
            {
              [v45 presenterRequestedWorkflowPauseForContext:v24 dialogRequest:v35 completionHandler:&stru_100028A48];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v42);
      }

      v7[2](v7, 4);
    }
  }

LABEL_28:
}

- (void)queue_revokeIslandPresentableForContext:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[WFBannerManager queue_revokeIslandPresentableForContext:reason:]";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Revoking pill presentable for context: %@, reason: %@", buf, 0x20u);
  }

  v9 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = dispatch_time(0, 80000000);
  v11 = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6EC;
  block[3] = &unk_100028850;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_after(v10, v11, block);
}

- (void)queue_revokePresentableForContext:(id)a3 reason:(id)a4 forced:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = sub_100007750();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[WFBannerManager queue_revokePresentableForContext:reason:forced:]";
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Revoking banner presentable with reason: %@", buf, 0x16u);
  }

  v11 = [(WFBannerManager *)self presentedBanner];

  if (v11)
  {
    v12 = [WFBannerViewController requestIdentifierForContext:v8];
    v13 = [(WFBannerManager *)self bannerSource];
    v14 = [(WFBannerManager *)self dismissalReasonWithReason:v9];
    v23 = 0;
    v15 = [v13 revokePresentableWithRequestIdentifier:v12 reason:v14 animated:0 userInfo:&__NSDictionary0__struct error:&v23];
    v16 = v23;

    if (v15)
    {
      [(WFBannerManager *)self setPresentedBanner:0];
      v17 = [(WFBannerManager *)self inflightRequest];
      v18 = [v17 context];
      if ([v18 isEqual:v8])
      {
        v19 = [(WFBannerManager *)self bannerPresentationCompletion];

        if (v19)
        {
          v20 = [(WFBannerManager *)self bannerPresentationCompletion];
          v20[2](v20, 2);

          [(WFBannerManager *)self setBannerPresentationCompletion:0];
        }
      }

      else
      {
      }

      v22 = [NSString stringWithFormat:@"we just revoked a banner, revoke reason: %@", v9];
      [(WFBannerManager *)self queue_updateStateWithReason:v22];
    }

    else
    {
      v21 = sub_100007750();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "[WFBannerManager queue_revokePresentableForContext:reason:forced:]";
        v26 = 2112;
        v27 = v8;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Failed to revoke banner for running context: %@, error: %@", buf, 0x20u);
      }

      if (v5)
      {
        [(WFBannerManager *)self revokeAllPresentablesWithReason:@"Banner revoke failed and caller requested forced dismissal"];
      }
    }
  }

  else
  {
    v16 = sub_100007750();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[WFBannerManager queue_revokePresentableForContext:reason:forced:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s No presentable to revoke", buf, 0xCu);
    }
  }
}

- (void)queue_dismissRemoteAlertViewControllerWithReason:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100007750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[WFBannerManager queue_dismissRemoteAlertViewControllerWithReason:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Revoking banner presentable with reason: %@", buf, 0x16u);
  }

  v7 = +[WFAngelSceneManager sharedManager];
  [v7 requestSceneDeactivation];

  [(WFBannerManager *)self setPresentedRemoteAlertViewController:0];
  v8 = [NSString stringWithFormat:@"we just dismissed action UI, updating state: %@", v4];
  [(WFBannerManager *)self queue_updateStateWithReason:v8];
}

- (void)queue_updateStateWithReason:(id)a3
{
  v5 = a3;
  v6 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100007750();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(WFBannerManager *)self pendingRequests];
    v9 = [(WFBannerManager *)self presentedBanner];
    *buf = 136315906;
    v95 = "[WFBannerManager queue_updateStateWithReason:]";
    v96 = 2112;
    v97 = v5;
    v98 = 2112;
    v99 = v8;
    v100 = 2112;
    v101 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Updating state because %@. Current requests: %@, Presented banner: %@", buf, 0x2Au);
  }

  v10 = [(WFBannerManager *)self presentedBanner];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(WFBannerManager *)self pendingRequests];
  v14 = [v13 firstObject];

  if (v14)
  {
    if ([(WFBannerManager *)self isDialogPresentationPaused])
    {
      v15 = sub_100007750();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(WFBannerManager *)self dialogPresentationPausingReason];
        *buf = 136315394;
        v95 = "[WFBannerManager queue_updateStateWithReason:]";
        v96 = 2112;
        v97 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s We've paused dialog request presentation for '%@', as soon as that clears, we'll get back to presenting", buf, 0x16u);
      }

      goto LABEL_105;
    }

    v82 = a2;
    v17 = v14;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v15 = v18;

    v19 = v17;
    objc_opt_class();
    LODWORD(v17) = objc_opt_isKindOfClass();
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000100EC;
    v93[3] = &unk_100028990;
    v93[4] = self;
    v22 = objc_retainBlock(v93);
    if ((v17 & 1) != 0 && [(WFBannerManager *)self presentsApertureStatus])
    {
      v23 = [(WFBannerManager *)self pendingRequests];
      [v23 removeObjectAtIndex:0];

      (v22[2])(v22, v19);
LABEL_104:

      goto LABEL_105;
    }

    v24 = [(WFBannerManager *)self inflightRequest];

    if (v24)
    {
      v25 = sub_100007750();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v95 = "[WFBannerManager queue_updateStateWithReason:]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Mid dialog presentation, nothing to do here", buf, 0xCu);
      }

      goto LABEL_104;
    }

    v81 = v22;
    v26 = [v12 embeddedPlatter];

    if (isKindOfClass)
    {
      v27 = [v19 request];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [(WFBannerManager *)self presentedBanner];
        v79 = 0;
        if (v28 && !v26)
        {
          v75 = v28;
          v84 = [v19 context];
          v74 = [(WFBannerManager *)self presentedBanner];
          v26 = [v74 associatedRunningContext];
          v79 = [v84 isEqual:v26];

          v28 = v75;
        }
      }

      else
      {
        v79 = 0;
      }
    }

    else
    {
      v79 = 0;
    }

    v29 = [(WFBannerManager *)self presentedPlatter];
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v85 = v30;

    v31 = [(WFBannerManager *)self presentedBanner];
    v80 = v21;
    if (!v31)
    {
      v26 = [(WFBannerManager *)self presentedRemoteAlertViewController];
      if (!v26)
      {
        goto LABEL_49;
      }
    }

    if (![v12 dismissalPhase] && !v85)
    {
      v32 = [(WFBannerManager *)self runningContextWaitingForFollowUpRequest];
      v33 = (v32 != 0) | v79;

      if (v31)
      {

        if ((v33 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {

        if ((v33 & 1) == 0)
        {
LABEL_65:
          v43 = sub_100007750();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [(WFBannerManager *)self presentedBanner];
            v45 = [(WFBannerManager *)self presentedRemoteAlertViewController];
            *buf = 136315650;
            v95 = "[WFBannerManager queue_updateStateWithReason:]";
            v96 = 2112;
            v97 = v44;
            v98 = 2112;
            v99 = v45;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s There's already a view on screen (presentedBanner: %@, presentedRemoteAlertViewController: %@) and status isn't visible, nothing to do here", buf, 0x20u);
          }

LABEL_77:
          v21 = v80;
          v22 = v81;
LABEL_103:

          goto LABEL_104;
        }
      }

      goto LABEL_59;
    }

    if (!v31)
    {
LABEL_49:
    }

    if (v85)
    {
      if ((([(WFBannerManager *)self presentsApertureStatus]| v17) & 1) == 0)
      {
        if ((isKindOfClass & 1) == 0 || ([v19 context], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v85, "associatedRunningContext"), v36 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v35, "isEqual:", v36), v36, v35, (v76 & 1) == 0))
        {
          v37 = sub_100007750();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v95 = "[WFBannerManager queue_updateStateWithReason:]";
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s There's requests in the queue, but the status is visible for a different shortcut so it must wait", buf, 0xCu);
          }

          v22 = v81;
          goto LABEL_103;
        }
      }

      v34 = 1;
LABEL_60:
      if (((v12 != 0) & isKindOfClass) != 1)
      {
        goto LABEL_78;
      }

      v38 = [v15 context];
      [v12 associatedRunningContext];
      v77 = v5;
      v39 = v17;
      v17 = v12;
      v41 = v40 = v34;
      v42 = [v38 isEqual:v41];

      v34 = v40;
      v12 = v17;
      LOBYTE(v17) = v39;
      v5 = v77;

      if (!v42)
      {
        goto LABEL_78;
      }

      if (v34)
      {
        if ([(WFBannerManager *)self presentsApertureStatus])
        {
          goto LABEL_73;
        }
      }

      else
      {
        v46 = [v12 queuedStatusPlatter];
        if (!v46)
        {
          goto LABEL_73;
        }

        v47 = v46;
        v48 = [(WFBannerManager *)self presentsApertureStatus];

        if (v48)
        {
          goto LABEL_73;
        }
      }

      v49 = sub_100007750();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v95 = "[WFBannerManager queue_updateStateWithReason:]";
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s Status is visible, dialog is coming in. Queueing status to come back after dialog.", buf, 0xCu);
      }

      v50 = [v12 associatedRunningContext];
      [(WFBannerManager *)self queue_enqueuePersistentModeStatusPresentationForRunningContext:v50];

LABEL_73:
      if ([(WFBannerManager *)self queuedDialogIsActionUIRequest:v15])
      {
        v51 = sub_100007750();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v95 = "[WFBannerManager queue_updateStateWithReason:]";
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%s Action UI is next in the queue, immediately revoking the current presentable.", buf, 0xCu);
        }

        [(WFBannerManager *)self queue_dismissPresentableWithReason:@"platter hinting was interruped by action UI request" interruptible:0 forced:0];
        goto LABEL_77;
      }

LABEL_78:
      v52 = [(WFBannerManager *)self pendingRequests];
      [v52 removeObjectAtIndex:0];

      if ((v34 & isKindOfClass) == 1)
      {
        v53 = [v15 context];
        v54 = [v85 associatedRunningContext];
        v55 = [v53 isEqual:v54];

        if (v55)
        {
          v56 = sub_100007750();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v95 = "[WFBannerManager queue_updateStateWithReason:]";
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s Status is visible, and incoming dialog is from the same run. Removing the status and asking it to come back after", buf, 0xCu);
          }

          [(WFBannerManager *)self queue_dismissPresentableWithReason:@"dialog request came in and should dismiss status for now" interruptible:0 forced:0];
          v57 = [v85 associatedRunningContext];
          [(WFBannerManager *)self queue_enqueuePersistentModeStatusPresentationForRunningContext:v57];
        }
      }

      v21 = v80;
      if (isKindOfClass)
      {
        v58 = sub_100007750();
        v22 = v81;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v95 = "[WFBannerManager queue_updateStateWithReason:]";
          v96 = 2112;
          v97 = v19;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Presenting queued dialog: %@", buf, 0x16u);
        }

        [(WFBannerManager *)self setInflightRequest:v19];
        if ([(WFBannerManager *)self queuedDialogIsActionUIRequest:v19])
        {
          v59 = [v19 request];
          if (v59)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = v59;
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = 0;
          }

          v63 = v60;

          v87 = [WFActionUserInterfaceListener alloc];
          v83 = WFUserInterfaceTypeUIKit;
          v78 = [v63 actionClassName];
          v64 = [v63 classNamesByType];

          v65 = [v19 request];
          v66 = [v65 attribution];
          v67 = [v87 initWithUserInterfaceType:v83 actionClassName:v78 classNamesByType:v64 attribution:v66];

          v68 = [v67 actionInterface];
          [v68 setDelegate:self];

          v69 = [v19 context];
          v70 = [v67 actionInterface];
          [v70 setRunningContext:v69];

          [(WFBannerManager *)self setActionUserInterfaceListener:v67];
          v21 = v80;
          v22 = v81;
        }

        if (-[WFBannerManager queuedDialogIsActionUIRequest:](self, "queuedDialogIsActionUIRequest:", v19) && (+[WFBannerPrototypeSettings sharedSettings](WFBannerPrototypeSettings, "sharedSettings"), v71 = objc_claimAutoreleasedReturnValue(), v72 = [v71 useRemoteAlertsForActionInterfaceDialogRequests], v71, v72))
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001023C;
          block[3] = &unk_1000287E0;
          v91 = v19;
          v92 = self;
          dispatch_async(&_dispatch_main_q, block);
          v73 = v91;
        }

        else
        {
          v88[0] = _NSConcreteStackBlock;
          v88[1] = 3221225472;
          v88[2] = sub_1000103BC;
          v88[3] = &unk_100028968;
          v88[4] = self;
          v89 = v19;
          [(WFBannerManager *)self getBannerForQueuedDialogRequest:v89 dialogIsBreakthroughSmartPrompt:v79 completionHandler:v88];
          v73 = v89;
        }
      }

      else
      {
        v22 = v81;
        if (v17)
        {
          v81[2](v81, v19);
        }

        else
        {
          v61 = sub_100007750();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v95 = "[WFBannerManager queue_updateStateWithReason:]";
            v96 = 2112;
            v97 = v19;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%s Unsupported request of type: %@", buf, 0x16u);
          }

          v62 = +[NSAssertionHandler currentHandler];
          [v62 handleFailureInMethod:v82 object:self file:@"WFBannerManager.m" lineNumber:773 description:@"Unsupported type in queued requests"];
        }
      }

      goto LABEL_103;
    }

LABEL_59:
    v34 = 0;
    goto LABEL_60;
  }

  v15 = sub_100007750();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v95 = "[WFBannerManager queue_updateStateWithReason:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s No request in queue, nothing to do here", buf, 0xCu);
  }

LABEL_105:
}

- (NSMutableDictionary)runningPersistentWorkflows
{
  v3 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v3);

  runningPersistentWorkflows = self->_runningPersistentWorkflows;

  return runningPersistentWorkflows;
}

- (NSMutableOrderedSet)pendingRequests
{
  v3 = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(v3);

  pendingRequests = self->_pendingRequests;

  return pendingRequests;
}

- (void)setInflightRequest:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_inflightRequestLock);
  objc_storeStrong(&self->_inflightRequest, a3);
  os_unfair_lock_unlock(&self->_inflightRequestLock);
  if (!v5)
  {
    v6 = [(WFBannerManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000110D8;
    block[3] = &unk_1000288A0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (WFBannerRequest)inflightRequest
{
  os_unfair_lock_lock(&self->_inflightRequestLock);
  v3 = self->_inflightRequest;
  os_unfair_lock_unlock(&self->_inflightRequestLock);

  return v3;
}

- (void)setPresentedRemoteAlertViewController:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_presentedRemoteAlertViewControllerLock);
  presentedRemoteAlertViewController = self->_presentedRemoteAlertViewController;
  self->_presentedRemoteAlertViewController = v4;

  os_unfair_lock_unlock(&self->_presentedRemoteAlertViewControllerLock);
}

- (UIViewController)presentedRemoteAlertViewController
{
  os_unfair_lock_lock(&self->_presentedRemoteAlertViewControllerLock);
  v3 = self->_presentedRemoteAlertViewController;
  os_unfair_lock_unlock(&self->_presentedRemoteAlertViewControllerLock);

  return v3;
}

- (void)setPresentedBanner:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_presentedBannerLock);
  presentedBanner = self->_presentedBanner;
  self->_presentedBanner = v4;

  os_unfair_lock_unlock(&self->_presentedBannerLock);
}

- (WFBannerPresentable)presentedBanner
{
  os_unfair_lock_lock(&self->_presentedBannerLock);
  v3 = self->_presentedBanner;
  os_unfair_lock_unlock(&self->_presentedBannerLock);

  return v3;
}

- (void)applicationWillLaunchInForegroundForRunningContext:(id)a3 isLastAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[WFBannerManager presentsApertureStatus](self, "presentsApertureStatus") && [v7 BOOLValue])
  {
    v8 = sub_100007750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[WFBannerManager applicationWillLaunchInForegroundForRunningContext:isLastAction:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Application will launch during last running action for associated running context: %@", buf, 0x16u);
    }

    v9 = [(WFBannerManager *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000113E4;
    v10[3] = &unk_1000287E0;
    v10[4] = self;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)updateAttribution:(id)a3 runningContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFBannerManager *)self presentsApertureStatus])
  {
    v8 = dispatch_time(0, 100000000);
    v9 = [(WFBannerManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011634;
    block[3] = &unk_100028850;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_after(v8, v9, block);
  }
}

- (void)resumeDialogPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFBannerManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011870;
  v7[3] = &unk_100028918;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)pauseDialogPresentationForDuration:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000119B4;
  block[3] = &unk_1000288C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)dismissPresentedContentForRunningContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011AF8;
  block[3] = &unk_1000288C8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)showDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFBannerManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000120E8;
  v15[3] = &unk_1000288F0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)completePersistentModeWithSuccess:(id)a3 runningContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFBannerManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012CF4;
  v15[3] = &unk_1000288F0;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)beginPersistentModeWithRunningContext:(id)a3 attribution:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFBannerManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001315C;
  v15[3] = &unk_1000288F0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)removeConnectedHost:(id)a3
{
  v4 = a3;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[WFBannerManager removeConnectedHost:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Removing connected host: %@", buf, 0x16u);
  }

  v6 = [(WFBannerManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013718;
  v8[3] = &unk_1000287E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)addConnectedHost:(id)a3
{
  v4 = a3;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[WFBannerManager addConnectedHost:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Adding connected host: %@", buf, 0x16u);
  }

  v6 = [(WFBannerManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013B88;
  v8[3] = &unk_1000287E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)dealloc
{
  v3 = [(WFBannerManager *)self layoutMonitor];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = WFBannerManager;
  [(WFBannerManager *)&v4 dealloc];
}

- (WFBannerManager)init
{
  v26.receiver = self;
  v26.super_class = WFBannerManager;
  v2 = [(WFBannerManager *)&v26 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_presentedBannerLock._os_unfair_lock_opaque = 0;
    v2->_presentedRemoteAlertViewControllerLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.shortcuts.WFBannerManager", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = objc_opt_new();
    pendingRequests = v3->_pendingRequests;
    v3->_pendingRequests = v8;

    v10 = objc_opt_new();
    runningPersistentWorkflows = v3->_runningPersistentWorkflows;
    v3->_runningPersistentWorkflows = v10;

    v12 = objc_alloc_init(FBSDisplayMonitor);
    displayMonitor = v3->_displayMonitor;
    v3->_displayMonitor = v12;

    v3->_shouldObserveDisplayLayout = 0;
    v14 = [[NSHashTable alloc] initWithOptions:5 capacity:2];
    connectedHosts = v3->_connectedHosts;
    v3->_connectedHosts = v14;

    v16 = objc_opt_new();
    singleStepHomeScreenRevokeTimers = v3->_singleStepHomeScreenRevokeTimers;
    v3->_singleStepHomeScreenRevokeTimers = v16;

    objc_initWeak(&location, v3);
    v18 = [UISCurrentUserInterfaceStyleValue alloc];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100013F58;
    v23[3] = &unk_1000287B8;
    objc_copyWeak(&v24, &location);
    v19 = [v18 initWithChangesDeliveredOnQueue:0 toBlock:v23];
    userInterfaceStyleValue = v3->_userInterfaceStyleValue;
    v3->_userInterfaceStyleValue = v19;

    v21 = v3;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end
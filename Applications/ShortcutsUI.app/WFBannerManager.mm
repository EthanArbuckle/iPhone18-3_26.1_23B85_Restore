@interface WFBannerManager
- (BOOL)displayActive;
- (BOOL)presentableIsIslandPresentable:(id)presentable;
- (BOOL)presentedBannerIsStatusForRunningContext:(id)context;
- (BOOL)presentsApertureStatus;
- (BOOL)queuedDialogIsActionUIRequest:(id)request;
- (BOOL)runningContextIsInPersistentMode:(id)mode;
- (BOOL)shouldUpdateStateBasedOnLayout:(id)layout;
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
- (id)presentationAnchorForActionUserInterface:(id)interface;
- (id)presentedPlatter;
- (id)queue_pauseDialogPresentationForDuration:(id)duration withReason:(id)reason;
- (id)queue_resumeDialogPresentationWithReason:(id)reason onRequestFromHost:(BOOL)host;
- (id)requestContainerForRunningContext:(id)context;
- (id)viewControllerForPresentingActionUserInterface:(id)interface;
- (void)actionUserInterface:(id)interface showViewControllerInPlatter:(id)platter;
- (void)addConnectedHost:(id)host;
- (void)applicationWillLaunchInForegroundForRunningContext:(id)context isLastAction:(id)action;
- (void)bannerViewController:(id)controller didPresentBanner:(id)banner;
- (void)bannerViewController:(id)controller willDismissWithReason:(id)reason;
- (void)bannerViewControllerActionUserInterfaceNeedsDismissal:(id)dismissal;
- (void)bannerViewControllerHomeGestureDidPassThreshold:(id)threshold;
- (void)beginPersistentModeWithRunningContext:(id)context attribution:(id)attribution completionHandler:(id)handler;
- (void)cancelAllPendingRequestsForSystemDismiss;
- (void)completePersistentModeWithSuccess:(id)success runningContext:(id)context completionHandler:(id)handler;
- (void)dealloc;
- (void)dialogViewController:(id)controller didFinishWithResponse:(id)response waitForFollowUpRequest:(BOOL)request;
- (void)dismissPlatterForActionUserInterface:(id)interface completionHandler:(id)handler;
- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler;
- (void)getBannerForQueuedDialogRequest:(id)request dialogIsBreakthroughSmartPrompt:(BOOL)prompt completionHandler:(id)handler;
- (void)getBannerForQueuedStatusPresentation:(id)presentation completionHandler:(id)handler;
- (void)handleSingleStepHomeScreenDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler;
- (void)pauseDialogPresentationForDuration:(id)duration withCompletionHandler:(id)handler;
- (void)queue_dismissRemoteAlertViewControllerWithReason:(id)reason;
- (void)queue_enqueuePersistentModeStatusPresentationForRunningContext:(id)context;
- (void)queue_presentBanner:(id)banner completion:(id)completion;
- (void)queue_removePendingStatusPresentationsForRunningContext:(id)context;
- (void)queue_resetWithReason:(id)reason;
- (void)queue_revokeIslandPresentableForContext:(id)context reason:(id)reason;
- (void)queue_revokePresentableForContext:(id)context reason:(id)reason forced:(BOOL)forced;
- (void)queue_stopTrackingPersistentModeContext:(id)context withReason:(id)reason;
- (void)queue_updatePresentedStatusForRunningContext:(id)context;
- (void)queue_updateStateWithReason:(id)reason;
- (void)removeConnectedHost:(id)host;
- (void)resumeDialogPresentationWithCompletionHandler:(id)handler;
- (void)revokeAllPresentablesWithReason:(id)reason;
- (void)setInflightRequest:(id)request;
- (void)setPresentedBanner:(id)banner;
- (void)setPresentedRemoteAlertViewController:(id)controller;
- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler;
- (void)statusViewControllerDidCollapseFromCustomLayout:(id)layout;
- (void)statusViewControllerDidTransitionFromVisibleToCustomLayout:(id)layout;
- (void)updateAttribution:(id)attribution runningContext:(id)context;
@end

@implementation WFBannerManager

- (CGSize)preferredContainerSize
{
  bannerSource = [(WFBannerManager *)self bannerSource];
  v3 = [bannerSource layoutDescriptionWithError:0];

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
  bannerSource = [(WFBannerManager *)self bannerSource];
  v3 = [bannerSource layoutDescriptionWithError:0];

  [v3 presentationSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)presentedBannerIsStatusForRunningContext:(id)context
{
  contextCopy = context;
  presentedPlatter = [(WFBannerManager *)self presentedPlatter];
  if (presentedPlatter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = presentedPlatter;
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

  associatedRunningContext = [v7 associatedRunningContext];

  LOBYTE(v7) = [associatedRunningContext isEqual:contextCopy];
  return v7;
}

- (BOOL)runningContextIsInPersistentMode:(id)mode
{
  modeCopy = mode;
  runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
  allKeys = [runningPersistentWorkflows allKeys];
  v7 = [allKeys containsObject:modeCopy];

  return v7;
}

- (id)presentedPlatter
{
  presentedBanner = [(WFBannerManager *)self presentedBanner];
  if (presentedBanner && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    embeddedPlatter = [presentedBanner embeddedPlatter];
  }

  else
  {

    embeddedPlatter = [(WFBannerManager *)self presentedBanner];
  }

  return embeddedPlatter;
}

- (BOOL)queuedDialogIsActionUIRequest:(id)request
{
  request = [request request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)presentableIsIslandPresentable:(id)presentable
{
  presentableCopy = presentable;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)presentsApertureStatus
{
  v2 = +[WFBannerPrototypeSettings sharedSettings];
  simulateStatusBannerDevice = [v2 simulateStatusBannerDevice];

  if (simulateStatusBannerDevice)
  {
    return 0;
  }

  v5 = +[WFDevice currentDevice];
  hasSystemAperture = [v5 hasSystemAperture];

  return hasSystemAperture;
}

- (BOOL)displayActive
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  displayMonitor = [(WFBannerManager *)self displayMonitor];
  connectedIdentities = [displayMonitor connectedIdentities];

  v4 = [connectedIdentities countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(connectedIdentities);
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

      v5 = [connectedIdentities countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  layoutMonitor = [(WFBannerManager *)self layoutMonitor];
  currentLayout = [layoutMonitor currentLayout];
  v13 = [currentLayout backlightState] > 1;

  return (v13 | v6) & 1;
}

- (BOOL)shouldUpdateStateBasedOnLayout:(id)layout
{
  layoutCopy = layout;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  elements = [layoutCopy elements];
  v5 = [elements countByEnumeratingWithState:&v16 objects:v26 count:16];
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
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v16 + 1) + 8 * i) identifier];
        v12 = [identifier isEqualToString:v9];

        v7 |= v12;
      }

      v6 = [elements countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  backlightState = [layoutCopy backlightState];
  v14 = sub_100007750();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[WFBannerManager shouldUpdateStateBasedOnLayout:]";
    v22 = 1024;
    v23 = v7 & 1;
    v24 = 1024;
    v25 = backlightState < 2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s layoutContainsLock: %i, displayInactive: %i", buf, 0x18u);
  }

  return (backlightState > 1) & ~v7;
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

- (void)statusViewControllerDidCollapseFromCustomLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
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

      [layoutCopy associatedRunningContext];
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100007F44;
      v13 = v12 = &unk_100028DA0;
      selfCopy = self;
      v6 = v13;
      v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v9 block:1.0];
      v8 = [(WFBannerManager *)self singleStepHomeScreenRevokeTimers:v9];
      [v8 setObject:v7 forKey:v6];
    }
  }
}

- (void)statusViewControllerDidTransitionFromVisibleToCustomLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
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

      singleStepHomeScreenRevokeTimers = [(WFBannerManager *)self singleStepHomeScreenRevokeTimers];
      associatedRunningContext = [layoutCopy associatedRunningContext];
      v8 = [singleStepHomeScreenRevokeTimers objectForKey:associatedRunningContext];

      if (v8)
      {
        [v8 invalidate];
        singleStepHomeScreenRevokeTimers2 = [(WFBannerManager *)self singleStepHomeScreenRevokeTimers];
        associatedRunningContext2 = [layoutCopy associatedRunningContext];
        [singleStepHomeScreenRevokeTimers2 removeObjectForKey:associatedRunningContext2];
      }
    }
  }
}

- (void)bannerViewControllerActionUserInterfaceNeedsDismissal:(id)dismissal
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008228;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)bannerViewControllerHomeGestureDidPassThreshold:(id)threshold
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008328;
  v5[3] = &unk_1000287E0;
  thresholdCopy = threshold;
  selfCopy = self;
  v4 = thresholdCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)bannerViewController:(id)controller willDismissWithReason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  queue = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008540;
  block[3] = &unk_100028850;
  v12 = reasonCopy;
  v13 = controllerCopy;
  selfCopy = self;
  v9 = controllerCopy;
  v10 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)bannerViewController:(id)controller didPresentBanner:(id)banner
{
  v5 = [(WFBannerManager *)self queue:controller];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000087B4;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)dismissPlatterForActionUserInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008988;
  v13[3] = &unk_100028918;
  v13[4] = self;
  handlerCopy = handler;
  v14 = handlerCopy;
  v8 = objc_retainBlock(v13);
  viewControllerForPresenting = [interfaceCopy viewControllerForPresenting];

  if (viewControllerForPresenting)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008A2C;
    v10[3] = &unk_100028918;
    v11 = interfaceCopy;
    v12 = v8;
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)actionUserInterface:(id)interface showViewControllerInPlatter:(id)platter
{
  interfaceCopy = interface;
  platterCopy = platter;
  v7 = objc_alloc_init(WFCompactPlatterViewController);
  platterView = [v7 platterView];
  attribution = [interfaceCopy attribution];
  [platterView setAttribution:attribution];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [interfaceCopy platterConfiguration];
  }

  else
  {
    +[WFPlatterConfiguration defaultConfiguration];
  }
  v10 = ;
  platterView2 = [v7 platterView];
  [platterView2 applyStylingWithConfiguration:v10];

  [v7 setContentViewController:platterCopy];
  v12 = [(WFBannerManager *)self viewControllerForPresentingActionUserInterface:interfaceCopy];
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

- (id)presentationAnchorForActionUserInterface:(id)interface
{
  v3 = [(WFBannerManager *)self viewControllerForPresentingActionUserInterface:interface];
  view = [v3 view];
  window = [view window];

  return window;
}

- (id)viewControllerForPresentingActionUserInterface:(id)interface
{
  v4 = +[WFBannerPrototypeSettings sharedSettings];
  useRemoteAlertsForActionInterfaceDialogRequests = [v4 useRemoteAlertsForActionInterfaceDialogRequests];

  if (useRemoteAlertsForActionInterfaceDialogRequests)
  {
    presentedRemoteAlertViewController = [(WFBannerManager *)self presentedRemoteAlertViewController];
  }

  else
  {
    presentedBanner = [(WFBannerManager *)self presentedBanner];
    if (presentedBanner)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = presentedBanner;
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

    presentedRemoteAlertViewController = v8;
  }

  return presentedRemoteAlertViewController;
}

- (void)dialogViewController:(id)controller didFinishWithResponse:(id)response waitForFollowUpRequest:(BOOL)request
{
  controllerCopy = controller;
  responseCopy = response;
  queue = [(WFBannerManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008EF4;
  v13[3] = &unk_100028D58;
  v14 = controllerCopy;
  v15 = responseCopy;
  requestCopy = request;
  selfCopy = self;
  v11 = responseCopy;
  v12 = controllerCopy;
  dispatch_async(queue, v13);
}

- (void)cancelAllPendingRequestsForSystemDismiss
{
  queue = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009840;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)revokeAllPresentablesWithReason:(id)reason
{
  reasonCopy = reason;
  bannerSource = [(WFBannerManager *)self bannerSource];
  v6 = [(WFBannerManager *)self dismissalReasonWithReason:reasonCopy];

  v7 = [bannerSource revokeAllPresentablesWithReason:v6 userInfo:&__NSDictionary0__struct error:0];

  [(WFBannerManager *)self setPresentedBanner:0];
}

- (void)queue_resetWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFBannerManager queue_resetWithReason:]";
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Clearing ALL state because %@", &v9, 0x16u);
  }

  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRequests = [(WFBannerManager *)self pendingRequests];
  [pendingRequests removeAllObjects];

  [(WFBannerManager *)self setInflightRequest:0];
  [(WFBannerManager *)self setPresentedBanner:0];
  [(WFBannerManager *)self setActionUserInterfaceListener:0];
  [(WFBannerManager *)self setRunningContextWaitingForFollowUpRequest:0];
  [(WFBannerManager *)self setBannerPresentationCompletion:0];
  [(WFBannerManager *)self setDialogRequestCompletionHandler:0];
  [(WFBannerManager *)self setPresentedPersistentRunningContext:0];
  runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
  [runningPersistentWorkflows removeAllObjects];

  [(WFBannerManager *)self setShouldObserveDisplayLayout:0];
}

- (void)handleSingleStepHomeScreenDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler
{
  requestCopy = request;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009CC0;
  v12[3] = &unk_1000288F0;
  v12[4] = self;
  contextCopy = context;
  v14 = requestCopy;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = requestCopy;
  v11 = contextCopy;
  dispatch_async(&_dispatch_main_q, v12);
}

- (id)queue_resumeDialogPresentationWithReason:(id)reason onRequestFromHost:(BOOL)host
{
  reasonCopy = reason;
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(WFBannerManager *)self isDialogPresentationPaused])
  {
    pauseTimer = [(WFBannerManager *)self pauseTimer];

    if (!pauseTimer)
    {
      v34 = +[NSAssertionHandler currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1343 description:{@"Dialog presentation is paused, but there is no pause timer"}];
    }

    dialogPresentationResumingReason = [(WFBannerManager *)self dialogPresentationResumingReason];

    if (dialogPresentationResumingReason)
    {
      v35 = +[NSAssertionHandler currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1344 description:{@"Dialog presentation is paused, but there is a resuming reason"}];
    }

    v10 = sub_100007750();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      dialogPresentationPausingReason = [(WFBannerManager *)self dialogPresentationPausingReason];
      *buf = 136315650;
      *&buf[4] = "[WFBannerManager queue_resumeDialogPresentationWithReason:onRequestFromHost:]";
      v43 = 2112;
      v44 = dialogPresentationPausingReason;
      v45 = 2112;
      v46 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Resuming dialog presentation (paused for '%@') for '%@'", buf, 0x20u);
    }

    v36 = reasonCopy;
    v12 = [(__CFString *)reasonCopy copy];
    [(WFBannerManager *)self setDialogPresentationResumingReason:v12];

    [(WFBannerManager *)self setDialogPresentationPausingReason:0];
    [(WFBannerManager *)self setDialogPresentationPaused:0];
    pauseTimer2 = [(WFBannerManager *)self pauseTimer];
    [pauseTimer2 cancel];

    [(WFBannerManager *)self setPauseTimer:0];
    v14 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    pendingRequests = [(WFBannerManager *)self pendingRequests];
    v16 = [pendingRequests countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(pendingRequests);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
          context = [v20 context];
          v23 = [runningPersistentWorkflows objectForKey:context];

          if ([v23 completed])
          {
            [(__CFString *)v14 addObject:v20];
          }
        }

        v17 = [pendingRequests countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    pendingRequests2 = [(WFBannerManager *)self pendingRequests];
    [pendingRequests2 removeObjectsInArray:v14];

    reasonCopy = v36;
    v25 = [NSString stringWithFormat:@"we just resumed dialog presentation for '%@'", v36];
    [(WFBannerManager *)self queue_updateStateWithReason:v25];
    v26 = 0;
  }

  else
  {
    dialogPresentationResumingReason2 = [(WFBannerManager *)self dialogPresentationResumingReason];
    v28 = dialogPresentationResumingReason2;
    v29 = @"never paused";
    if (dialogPresentationResumingReason2)
    {
      v29 = dialogPresentationResumingReason2;
    }

    v14 = v29;

    v30 = sub_100007750();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[WFBannerManager queue_resumeDialogPresentationWithReason:onRequestFromHost:]";
      v43 = 2112;
      v44 = reasonCopy;
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

- (id)queue_pauseDialogPresentationForDuration:(id)duration withReason:(id)reason
{
  durationCopy = duration;
  reasonCopy = reason;
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [durationCopy doubleValue];
  v11 = v10;
  if (![(WFBannerManager *)self isDialogPresentationPaused])
  {
    pauseTimer = [(WFBannerManager *)self pauseTimer];

    if (pauseTimer)
    {
      v31 = +[NSAssertionHandler currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"WFBannerManager.m" lineNumber:1303 description:{@"Dialog presentation isn't paused, but the pause timer is non-nil"}];
    }

    dialogPresentationPausingReason = [(WFBannerManager *)self dialogPresentationPausingReason];

    if (dialogPresentationPausingReason)
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
      v39 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Pausing dialog presentation for %.2f seconds for '%@'", buf, 0x20u);
    }

    [(WFBannerManager *)self setDialogPresentationResumingReason:0];
    v20 = [reasonCopy copy];
    [(WFBannerManager *)self setDialogPresentationPausingReason:v20];

    [(WFBannerManager *)self setDialogPresentationPaused:1];
    presentedBanner = [(WFBannerManager *)self presentedBanner];
    if (presentedBanner)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = presentedBanner;
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

    dialogPresentationPausingReason2 = v22;

    associatedRunningContext = [dialogPresentationPausingReason2 associatedRunningContext];
    queuedStatusPlatter = [dialogPresentationPausingReason2 queuedStatusPlatter];

    if (queuedStatusPlatter)
    {
      [dialogPresentationPausingReason2 setQueuedStatusPlatter:0];
    }

    else
    {
      presentedPlatter = [(WFBannerManager *)self presentedPlatter];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_24:
        objc_initWeak(buf, self);
        v27 = [WFDispatchSourceTimer alloc];
        queue2 = [(WFBannerManager *)self queue];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10000AF94;
        v33[3] = &unk_100028BF8;
        objc_copyWeak(v34, buf);
        v34[1] = v11;
        v29 = [v27 initWithInterval:queue2 queue:v33 handler:*&v11];

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

    [(WFBannerManager *)self queue_enqueuePersistentModeStatusPresentationForRunningContext:associatedRunningContext];
    goto LABEL_24;
  }

  dialogPresentationPausingReason2 = [(WFBannerManager *)self dialogPresentationPausingReason];
  v13 = sub_100007750();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "[WFBannerManager queue_pauseDialogPresentationForDuration:withReason:]";
    v36 = 2048;
    v37 = v11;
    v38 = 2112;
    v39 = reasonCopy;
    v40 = 2112;
    v41 = dialogPresentationPausingReason2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Wanted to pause dialog presentation for %.2f seconds for '%@', but it was already paused for '%@'", buf, 0x2Au);
  }

  v14 = [NSString stringWithFormat:@"Dialog presentation is already paused for '%@'", dialogPresentationPausingReason2];
  associatedRunningContext = v14;
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

- (void)getBannerForQueuedDialogRequest:(id)request dialogIsBreakthroughSmartPrompt:(BOOL)prompt completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
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
  v14 = requestCopy;
  selfCopy = self;
  v16 = handlerCopy;
  promptCopy = prompt;
  v11 = handlerCopy;
  v12 = requestCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (id)requestContainerForRunningContext:(id)context
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000BB14;
  v16 = &unk_100028B30;
  contextCopy = context;
  v17 = contextCopy;
  selfCopy = self;
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
  presentedPlatter = [(WFBannerManager *)self presentedPlatter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ([v8 dismissalPhase] || (isKindOfClass & 1) != 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = [[WFBannerViewController alloc] initWithRunningContext:contextCopy];
    [(WFBannerViewController *)v11 setDelegate:self];
    [(WFBannerViewController *)v11 setDismissalHandler:v5];
  }

  return v11;
}

- (void)getBannerForQueuedStatusPresentation:(id)presentation completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BFA8;
  block[3] = &unk_1000288C8;
  block[4] = self;
  presentationCopy = presentation;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = presentationCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)queue_updatePresentedStatusForRunningContext:(id)context
{
  contextCopy = context;
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100007750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]";
    v37 = 2112;
    v38 = contextCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Updating presented status platters with progress if applicable. Running context: (%@)", buf, 0x16u);
  }

  runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
  presentedPlatter = [runningPersistentWorkflows objectForKey:contextCopy];

  if (presentedPlatter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(WFBannerManager *)self presentsApertureStatus])
      {
        associatedPill = [presentedPlatter associatedPill];
        if (associatedPill)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000CD50;
            block[3] = &unk_100028AC0;
            v31 = associatedPill;
            v32 = presentedPlatter;
            selfCopy = self;
            v34 = contextCopy;
            presentedPlatter = presentedPlatter;
            v10 = associatedPill;
            dispatch_async(&_dispatch_main_q, block);

            goto LABEL_34;
          }
        }
      }

      else
      {
        associatedPill = [(WFBannerManager *)self presentedPlatter];
        if (!associatedPill || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          presentedBanner = [(WFBannerManager *)self presentedBanner];
          if (presentedBanner)
          {
            objc_opt_class();
            v15 = (objc_opt_isKindOfClass() & 1) != 0 ? presentedBanner : 0;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          associatedPill = [v16 queuedStatusPlatter];

          if (!associatedPill)
          {
            goto LABEL_29;
          }
        }

        associatedRunningContext = [associatedPill associatedRunningContext];
        v18 = [associatedRunningContext isEqual:contextCopy];

        if (v18)
        {
          if ([presentedPlatter completed])
          {
            v19 = dispatch_time(0, 50000000);
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_10000D050;
            v28[3] = &unk_1000288A0;
            associatedPill = associatedPill;
            v29 = associatedPill;
            dispatch_after(v19, &_dispatch_main_q, v28);
            v20 = dispatch_time(0, 1000000000);
            queue2 = [(WFBannerManager *)self queue];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_10000D11C;
            v26[3] = &unk_1000287E0;
            v26[4] = self;
            v27 = contextCopy;
            dispatch_after(v20, queue2, v26);

            v22 = v29;
          }

          else
          {
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_10000D1F0;
            v23[3] = &unk_1000287E0;
            associatedPill = associatedPill;
            v24 = associatedPill;
            v25 = presentedPlatter;
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

  presentedPlatter = [(WFBannerManager *)self presentedPlatter];
  if (presentedPlatter && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    associatedRunningContext2 = [presentedPlatter associatedRunningContext];
    v12 = [associatedRunningContext2 isEqual:contextCopy];

    if (v12)
    {
      v13 = sub_100007750();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v36 = "[WFBannerManager queue_updatePresentedStatusForRunningContext:]";
        v37 = 2112;
        v38 = contextCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s While updating platters for progress, shortcut with context (%@) was found to no longer be tracked. Revoking...", buf, 0x16u);
      }

      [(WFBannerManager *)self queue_dismissPresentableWithReason:@"shortcut was found to be no longer running as determined by updating progress process after presenting status" interruptible:0 forced:0];
      goto LABEL_34;
    }
  }

  else
  {

    presentedPlatter = 0;
  }

  if ([(WFBannerManager *)self presentsApertureStatus])
  {
    [(WFBannerManager *)self queue_revokeIslandPresentableForContext:contextCopy reason:@"shortcut was found to be no longer running as determined by updating progress process after presenting status"];
  }

LABEL_34:
}

- (void)queue_removePendingStatusPresentationsForRunningContext:(id)context
{
  contextCopy = context;
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  pendingRequests = [(WFBannerManager *)self pendingRequests];
  v8 = [pendingRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(pendingRequests);
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

        context = [v14 context];

        LODWORD(v14) = [context isEqual:contextCopy];
        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [pendingRequests countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  pendingRequests2 = [(WFBannerManager *)selfCopy pendingRequests];
  [pendingRequests2 removeObjectsInArray:v6];
}

- (void)queue_stopTrackingPersistentModeContext:(id)context withReason:(id)reason
{
  contextCopy = context;
  reasonCopy = reason;
  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[WFBannerManager queue_stopTrackingPersistentModeContext:withReason:]";
    v18 = 2112;
    v19 = contextCopy;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Removing state for %@ because %{public}@", &v16, 0x20u);
  }

  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
  v11 = [runningPersistentWorkflows objectForKey:contextCopy];

  progressSubscriber = [v11 progressSubscriber];
  [contextCopy removeProgressSubscriber:progressSubscriber];

  runningPersistentWorkflows2 = [(WFBannerManager *)self runningPersistentWorkflows];
  [runningPersistentWorkflows2 removeObjectForKey:contextCopy];

  if (![(WFBannerManager *)self presentsApertureStatus])
  {
    presentedPersistentRunningContext = [(WFBannerManager *)self presentedPersistentRunningContext];
    v15 = [presentedPersistentRunningContext isEqual:contextCopy];

    if (v15)
    {
      [(WFBannerManager *)self setPresentedPersistentRunningContext:0];
    }
  }
}

- (void)queue_enqueuePersistentModeStatusPresentationForRunningContext:(id)context
{
  contextCopy = context;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[WFBannerManager queue_enqueuePersistentModeStatusPresentationForRunningContext:]";
    v22 = 2112;
    v23 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Submitting persistent mode request for %@", buf, 0x16u);
  }

  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
  v8 = [runningPersistentWorkflows objectForKey:contextCopy];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [[WFQueuedStatusPresentation alloc] initWithRunningContext:contextCopy];
    if ([(WFBannerManager *)self presentsApertureStatus])
    {
      pendingRequests = [(WFBannerManager *)self pendingRequests];
      [pendingRequests addObject:v9];
    }

    else
    {
      objc_initWeak(buf, self);
      v11 = [WFDispatchSourceTimer alloc];
      queue2 = [(WFBannerManager *)self queue];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10000D9A0;
      v17 = &unk_100028A98;
      objc_copyWeak(&v19, buf);
      v18 = v9;
      v13 = [v11 initWithInterval:queue2 queue:&v14 handler:0.2];

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

- (void)queue_presentBanner:(id)banner completion:(id)completion
{
  bannerCopy = banner;
  completionCopy = completion;
  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [bannerCopy requestIdentifier];
    *buf = 136315650;
    v57 = "[WFBannerManager queue_presentBanner:completion:]";
    v58 = 2112;
    v59 = bannerCopy;
    v60 = 2112;
    v61 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Preparing banner for presentation (%@) for running context (%@)", buf, 0x20u);
  }

  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  presentedBanner = [(WFBannerManager *)self presentedBanner];

  if (presentedBanner == bannerCopy)
  {
    v21 = sub_100007750();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier2 = [bannerCopy requestIdentifier];
      *buf = 136315650;
      v57 = "[WFBannerManager queue_presentBanner:completion:]";
      v58 = 2112;
      v59 = bannerCopy;
      v60 = 2112;
      v61 = requestIdentifier2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Presentable is already on screen (%@), (%@)", buf, 0x20u);
    }

    associatedRunningContext = [bannerCopy associatedRunningContext];
    [(WFBannerManager *)self queue_updatePresentedStatusForRunningContext:associatedRunningContext];

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v12 = [(WFBannerManager *)self presentableIsIslandPresentable:bannerCopy];
    inflightRequest = [(WFBannerManager *)self inflightRequest];
    if (!inflightRequest || [(WFBannerManager *)self displayActive])
    {

      goto LABEL_7;
    }

    if (v12)
    {
LABEL_7:
      if (![(WFBannerManager *)self presentsApertureStatus])
      {
        associatedRunningContext2 = [bannerCopy associatedRunningContext];
        v15 = [(WFBannerManager *)self runningContextIsInPersistentMode:associatedRunningContext2];

        if (v15)
        {
          associatedRunningContext3 = [bannerCopy associatedRunningContext];
          [(WFBannerManager *)self setPresentedPersistentRunningContext:associatedRunningContext3];
        }
      }

      if ([(WFBannerManager *)self presentsApertureStatus]&& v12)
      {
        associatedRunningContext4 = [bannerCopy associatedRunningContext];
        runningPersistentWorkflows = [(WFBannerManager *)self runningPersistentWorkflows];
        v19 = [runningPersistentWorkflows objectForKey:associatedRunningContext4];

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

        [v31 setAssociatedPill:bannerCopy];
        completionCopy[2](completionCopy, 1);
      }

      else
      {
        [(WFBannerManager *)self setBannerPresentationCompletion:completionCopy];
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E1E8;
      block[3] = &unk_100028A70;
      block[4] = self;
      v49 = bannerCopy;
      v50 = v12;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_28;
    }

    associatedRunningContext5 = [bannerCopy associatedRunningContext];
    isShortcutsApp = [associatedRunningContext5 isShortcutsApp];
    v26 = sub_100007750();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (isShortcutsApp)
    {
      if (v27)
      {
        inflightRequest2 = [(WFBannerManager *)self inflightRequest];
        *buf = 136315394;
        v57 = "[WFBannerManager queue_presentBanner:completion:]";
        v58 = 2112;
        v59 = inflightRequest2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s Display is off, putting inflight request (%@) back on top of the queue and observing display layout", buf, 0x16u);
      }

      pendingRequests = [(WFBannerManager *)self pendingRequests];
      inflightRequest3 = [(WFBannerManager *)self inflightRequest];
      [pendingRequests insertObject:inflightRequest3 atIndex:0];

      [(WFBannerManager *)self setInflightRequest:0];
      [(WFBannerManager *)self setShouldObserveDisplayLayout:1];
      completionCopy[2](completionCopy, 3);
    }

    else
    {
      if (v27)
      {
        *buf = 136315138;
        v57 = "[WFBannerManager queue_presentBanner:completion:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s Display is off, requesting for workflow pause", buf, 0xCu);
      }

      inflightRequest4 = [(WFBannerManager *)self inflightRequest];
      if (inflightRequest4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = inflightRequest4;
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

      request = [v34 request];
      if (!request)
      {
        v36 = sub_100007750();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v57 = "[WFBannerManager queue_presentBanner:completion:]";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s Attempting to pause a workflow when presenting a non-queued dialog request", buf, 0xCu);
        }
      }

      completionHandler = [v34 completionHandler];

      if (completionHandler)
      {
        completionHandler2 = [v34 completionHandler];
        v39 = [[WFDialogResponse alloc] initWithResponseCode:3];
        (completionHandler2)[2](completionHandler2, v39, 0);

        [v34 setCompletionHandler:0];
      }

      [(WFBannerManager *)self setInflightRequest:0, v34];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      connectedHosts = [(WFBannerManager *)self connectedHosts];
      v41 = [connectedHosts countByEnumeratingWithState:&v51 objects:v55 count:16];
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
              objc_enumerationMutation(connectedHosts);
            }

            remoteTarget = [*(*(&v51 + 1) + 8 * i) remoteTarget];
            v46 = remoteTarget;
            if (remoteTarget)
            {
              [remoteTarget presenterRequestedWorkflowPauseForContext:associatedRunningContext5 dialogRequest:request completionHandler:&stru_100028A48];
            }
          }

          v42 = [connectedHosts countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v42);
      }

      completionCopy[2](completionCopy, 4);
    }
  }

LABEL_28:
}

- (void)queue_revokeIslandPresentableForContext:(id)context reason:(id)reason
{
  contextCopy = context;
  reasonCopy = reason;
  v8 = sub_100007750();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[WFBannerManager queue_revokeIslandPresentableForContext:reason:]";
    v20 = 2112;
    v21 = contextCopy;
    v22 = 2112;
    v23 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Revoking pill presentable for context: %@, reason: %@", buf, 0x20u);
  }

  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = dispatch_time(0, 80000000);
  queue2 = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6EC;
  block[3] = &unk_100028850;
  v15 = contextCopy;
  selfCopy = self;
  v17 = reasonCopy;
  v12 = reasonCopy;
  v13 = contextCopy;
  dispatch_after(v10, queue2, block);
}

- (void)queue_revokePresentableForContext:(id)context reason:(id)reason forced:(BOOL)forced
{
  forcedCopy = forced;
  contextCopy = context;
  reasonCopy = reason;
  v10 = sub_100007750();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[WFBannerManager queue_revokePresentableForContext:reason:forced:]";
    v26 = 2112;
    v27 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Revoking banner presentable with reason: %@", buf, 0x16u);
  }

  presentedBanner = [(WFBannerManager *)self presentedBanner];

  if (presentedBanner)
  {
    v12 = [WFBannerViewController requestIdentifierForContext:contextCopy];
    bannerSource = [(WFBannerManager *)self bannerSource];
    v14 = [(WFBannerManager *)self dismissalReasonWithReason:reasonCopy];
    v23 = 0;
    v15 = [bannerSource revokePresentableWithRequestIdentifier:v12 reason:v14 animated:0 userInfo:&__NSDictionary0__struct error:&v23];
    v16 = v23;

    if (v15)
    {
      [(WFBannerManager *)self setPresentedBanner:0];
      inflightRequest = [(WFBannerManager *)self inflightRequest];
      context = [inflightRequest context];
      if ([context isEqual:contextCopy])
      {
        bannerPresentationCompletion = [(WFBannerManager *)self bannerPresentationCompletion];

        if (bannerPresentationCompletion)
        {
          bannerPresentationCompletion2 = [(WFBannerManager *)self bannerPresentationCompletion];
          bannerPresentationCompletion2[2](bannerPresentationCompletion2, 2);

          [(WFBannerManager *)self setBannerPresentationCompletion:0];
        }
      }

      else
      {
      }

      reasonCopy = [NSString stringWithFormat:@"we just revoked a banner, revoke reason: %@", reasonCopy];
      [(WFBannerManager *)self queue_updateStateWithReason:reasonCopy];
    }

    else
    {
      v21 = sub_100007750();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "[WFBannerManager queue_revokePresentableForContext:reason:forced:]";
        v26 = 2112;
        v27 = contextCopy;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Failed to revoke banner for running context: %@, error: %@", buf, 0x20u);
      }

      if (forcedCopy)
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

- (void)queue_dismissRemoteAlertViewControllerWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100007750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[WFBannerManager queue_dismissRemoteAlertViewControllerWithReason:]";
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Revoking banner presentable with reason: %@", buf, 0x16u);
  }

  v7 = +[WFAngelSceneManager sharedManager];
  [v7 requestSceneDeactivation];

  [(WFBannerManager *)self setPresentedRemoteAlertViewController:0];
  reasonCopy = [NSString stringWithFormat:@"we just dismissed action UI, updating state: %@", reasonCopy];
  [(WFBannerManager *)self queue_updateStateWithReason:reasonCopy];
}

- (void)queue_updateStateWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100007750();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pendingRequests = [(WFBannerManager *)self pendingRequests];
    presentedBanner = [(WFBannerManager *)self presentedBanner];
    *buf = 136315906;
    v95 = "[WFBannerManager queue_updateStateWithReason:]";
    v96 = 2112;
    v97 = reasonCopy;
    v98 = 2112;
    v99 = pendingRequests;
    v100 = 2112;
    v101 = presentedBanner;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Updating state because %@. Current requests: %@, Presented banner: %@", buf, 0x2Au);
  }

  presentedBanner2 = [(WFBannerManager *)self presentedBanner];
  if (presentedBanner2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = presentedBanner2;
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

  pendingRequests2 = [(WFBannerManager *)self pendingRequests];
  firstObject = [pendingRequests2 firstObject];

  if (firstObject)
  {
    if ([(WFBannerManager *)self isDialogPresentationPaused])
    {
      v15 = sub_100007750();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        dialogPresentationPausingReason = [(WFBannerManager *)self dialogPresentationPausingReason];
        *buf = 136315394;
        v95 = "[WFBannerManager queue_updateStateWithReason:]";
        v96 = 2112;
        v97 = dialogPresentationPausingReason;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s We've paused dialog request presentation for '%@', as soon as that clears, we'll get back to presenting", buf, 0x16u);
      }

      goto LABEL_105;
    }

    v82 = a2;
    v17 = firstObject;
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
      pendingRequests3 = [(WFBannerManager *)self pendingRequests];
      [pendingRequests3 removeObjectAtIndex:0];

      (v22[2])(v22, v19);
LABEL_104:

      goto LABEL_105;
    }

    inflightRequest = [(WFBannerManager *)self inflightRequest];

    if (inflightRequest)
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
    embeddedPlatter = [v12 embeddedPlatter];

    if (isKindOfClass)
    {
      request = [v19 request];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        presentedBanner3 = [(WFBannerManager *)self presentedBanner];
        v79 = 0;
        if (presentedBanner3 && !embeddedPlatter)
        {
          v75 = presentedBanner3;
          context = [v19 context];
          presentedBanner4 = [(WFBannerManager *)self presentedBanner];
          embeddedPlatter = [presentedBanner4 associatedRunningContext];
          v79 = [context isEqual:embeddedPlatter];

          presentedBanner3 = v75;
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

    presentedPlatter = [(WFBannerManager *)self presentedPlatter];
    if (presentedPlatter)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = presentedPlatter;
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

    presentedBanner5 = [(WFBannerManager *)self presentedBanner];
    v80 = v21;
    if (!presentedBanner5)
    {
      embeddedPlatter = [(WFBannerManager *)self presentedRemoteAlertViewController];
      if (!embeddedPlatter)
      {
        goto LABEL_49;
      }
    }

    if (![v12 dismissalPhase] && !v85)
    {
      runningContextWaitingForFollowUpRequest = [(WFBannerManager *)self runningContextWaitingForFollowUpRequest];
      v33 = (runningContextWaitingForFollowUpRequest != 0) | v79;

      if (presentedBanner5)
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
            presentedBanner6 = [(WFBannerManager *)self presentedBanner];
            presentedRemoteAlertViewController = [(WFBannerManager *)self presentedRemoteAlertViewController];
            *buf = 136315650;
            v95 = "[WFBannerManager queue_updateStateWithReason:]";
            v96 = 2112;
            v97 = presentedBanner6;
            v98 = 2112;
            v99 = presentedRemoteAlertViewController;
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

    if (!presentedBanner5)
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

      context2 = [v15 context];
      [v12 associatedRunningContext];
      v77 = reasonCopy;
      v39 = v17;
      v17 = v12;
      v41 = v40 = v34;
      v42 = [context2 isEqual:v41];

      v34 = v40;
      v12 = v17;
      LOBYTE(v17) = v39;
      reasonCopy = v77;

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
        queuedStatusPlatter = [v12 queuedStatusPlatter];
        if (!queuedStatusPlatter)
        {
          goto LABEL_73;
        }

        v47 = queuedStatusPlatter;
        presentsApertureStatus = [(WFBannerManager *)self presentsApertureStatus];

        if (presentsApertureStatus)
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

      associatedRunningContext = [v12 associatedRunningContext];
      [(WFBannerManager *)self queue_enqueuePersistentModeStatusPresentationForRunningContext:associatedRunningContext];

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
      pendingRequests4 = [(WFBannerManager *)self pendingRequests];
      [pendingRequests4 removeObjectAtIndex:0];

      if ((v34 & isKindOfClass) == 1)
      {
        context3 = [v15 context];
        associatedRunningContext2 = [v85 associatedRunningContext];
        v55 = [context3 isEqual:associatedRunningContext2];

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
          associatedRunningContext3 = [v85 associatedRunningContext];
          [(WFBannerManager *)self queue_enqueuePersistentModeStatusPresentationForRunningContext:associatedRunningContext3];
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
          request2 = [v19 request];
          if (request2)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = request2;
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
          actionClassName = [v63 actionClassName];
          classNamesByType = [v63 classNamesByType];

          request3 = [v19 request];
          attribution = [request3 attribution];
          v67 = [v87 initWithUserInterfaceType:v83 actionClassName:actionClassName classNamesByType:classNamesByType attribution:attribution];

          actionInterface = [v67 actionInterface];
          [actionInterface setDelegate:self];

          context4 = [v19 context];
          actionInterface2 = [v67 actionInterface];
          [actionInterface2 setRunningContext:context4];

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
          selfCopy = self;
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
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  runningPersistentWorkflows = self->_runningPersistentWorkflows;

  return runningPersistentWorkflows;
}

- (NSMutableOrderedSet)pendingRequests
{
  queue = [(WFBannerManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRequests = self->_pendingRequests;

  return pendingRequests;
}

- (void)setInflightRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_inflightRequestLock);
  objc_storeStrong(&self->_inflightRequest, request);
  os_unfair_lock_unlock(&self->_inflightRequestLock);
  if (!requestCopy)
  {
    queue = [(WFBannerManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000110D8;
    block[3] = &unk_1000288A0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (WFBannerRequest)inflightRequest
{
  os_unfair_lock_lock(&self->_inflightRequestLock);
  v3 = self->_inflightRequest;
  os_unfair_lock_unlock(&self->_inflightRequestLock);

  return v3;
}

- (void)setPresentedRemoteAlertViewController:(id)controller
{
  controllerCopy = controller;
  os_unfair_lock_lock(&self->_presentedRemoteAlertViewControllerLock);
  presentedRemoteAlertViewController = self->_presentedRemoteAlertViewController;
  self->_presentedRemoteAlertViewController = controllerCopy;

  os_unfair_lock_unlock(&self->_presentedRemoteAlertViewControllerLock);
}

- (UIViewController)presentedRemoteAlertViewController
{
  os_unfair_lock_lock(&self->_presentedRemoteAlertViewControllerLock);
  v3 = self->_presentedRemoteAlertViewController;
  os_unfair_lock_unlock(&self->_presentedRemoteAlertViewControllerLock);

  return v3;
}

- (void)setPresentedBanner:(id)banner
{
  bannerCopy = banner;
  os_unfair_lock_lock(&self->_presentedBannerLock);
  presentedBanner = self->_presentedBanner;
  self->_presentedBanner = bannerCopy;

  os_unfair_lock_unlock(&self->_presentedBannerLock);
}

- (WFBannerPresentable)presentedBanner
{
  os_unfair_lock_lock(&self->_presentedBannerLock);
  v3 = self->_presentedBanner;
  os_unfair_lock_unlock(&self->_presentedBannerLock);

  return v3;
}

- (void)applicationWillLaunchInForegroundForRunningContext:(id)context isLastAction:(id)action
{
  contextCopy = context;
  actionCopy = action;
  if (!-[WFBannerManager presentsApertureStatus](self, "presentsApertureStatus") && [actionCopy BOOLValue])
  {
    v8 = sub_100007750();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[WFBannerManager applicationWillLaunchInForegroundForRunningContext:isLastAction:]";
      v14 = 2112;
      v15 = contextCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Application will launch during last running action for associated running context: %@", buf, 0x16u);
    }

    queue = [(WFBannerManager *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000113E4;
    v10[3] = &unk_1000287E0;
    v10[4] = self;
    v11 = contextCopy;
    dispatch_async(queue, v10);
  }
}

- (void)updateAttribution:(id)attribution runningContext:(id)context
{
  attributionCopy = attribution;
  contextCopy = context;
  if ([(WFBannerManager *)self presentsApertureStatus])
  {
    v8 = dispatch_time(0, 100000000);
    queue = [(WFBannerManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011634;
    block[3] = &unk_100028850;
    block[4] = self;
    v11 = contextCopy;
    v12 = attributionCopy;
    dispatch_after(v8, queue, block);
  }
}

- (void)resumeDialogPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFBannerManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011870;
  v7[3] = &unk_100028918;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)pauseDialogPresentationForDuration:(id)duration withCompletionHandler:(id)handler
{
  durationCopy = duration;
  handlerCopy = handler;
  queue = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000119B4;
  block[3] = &unk_1000288C8;
  block[4] = self;
  v12 = durationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = durationCopy;
  dispatch_async(queue, block);
}

- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(WFBannerManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011AF8;
  block[3] = &unk_1000288C8;
  v12 = contextCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  queue = [(WFBannerManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000120E8;
  v15[3] = &unk_1000288F0;
  v15[4] = self;
  v16 = contextCopy;
  v17 = requestCopy;
  v18 = handlerCopy;
  v12 = requestCopy;
  v13 = handlerCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

- (void)completePersistentModeWithSuccess:(id)success runningContext:(id)context completionHandler:(id)handler
{
  successCopy = success;
  contextCopy = context;
  handlerCopy = handler;
  queue = [(WFBannerManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012CF4;
  v15[3] = &unk_1000288F0;
  v16 = contextCopy;
  v17 = successCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = successCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

- (void)beginPersistentModeWithRunningContext:(id)context attribution:(id)attribution completionHandler:(id)handler
{
  contextCopy = context;
  attributionCopy = attribution;
  handlerCopy = handler;
  queue = [(WFBannerManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001315C;
  v15[3] = &unk_1000288F0;
  v16 = contextCopy;
  selfCopy = self;
  v18 = attributionCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = attributionCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

- (void)removeConnectedHost:(id)host
{
  hostCopy = host;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[WFBannerManager removeConnectedHost:]";
    v12 = 2112;
    v13 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Removing connected host: %@", buf, 0x16u);
  }

  queue = [(WFBannerManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013718;
  v8[3] = &unk_1000287E0;
  v8[4] = self;
  v9 = hostCopy;
  v7 = hostCopy;
  dispatch_sync(queue, v8);
}

- (void)addConnectedHost:(id)host
{
  hostCopy = host;
  v5 = sub_100007750();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[WFBannerManager addConnectedHost:]";
    v12 = 2112;
    v13 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Adding connected host: %@", buf, 0x16u);
  }

  queue = [(WFBannerManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013B88;
  v8[3] = &unk_1000287E0;
  v8[4] = self;
  v9 = hostCopy;
  v7 = hostCopy;
  dispatch_sync(queue, v8);
}

- (void)dealloc
{
  layoutMonitor = [(WFBannerManager *)self layoutMonitor];
  [layoutMonitor invalidate];

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
@interface MFMailComposeControllerViewDelegateHandler
+ (id)log;
+ (id)signpostLog;
- (BOOL)mailComposeControllerIsActiveComposeController:(id)controller;
- (MFMailComposeControllerViewDelegateHandler)initWithUICoordinator:(id)coordinator daemonInterface:(id)interface;
- (MailComposeDeliveryUICoordinator)coordinator;
- (unint64_t)signpostID;
- (void)_presentAppStoreReviewPromptAndNotifyCriterionIfNecessary:(id)necessary;
- (void)mailComposeController:(id)controller failedToHandoffCompositionWithError:(id)error;
- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion;
- (void)mailComposeControllerCompositionFinished:(id)finished prepareForDismissalHandler:(id)handler;
- (void)mailComposeControllerCompositionHandoffFinished:(id)finished;
- (void)mailComposeControllerWantsToBackUpDraft:(id)draft;
@end

@implementation MFMailComposeControllerViewDelegateHandler

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D95E4;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD540 != -1)
  {
    dispatch_once(&qword_1006DD540, block);
  }

  v2 = qword_1006DD538;

  return v2;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9708;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD550 != -1)
  {
    dispatch_once(&qword_1006DD550, block);
  }

  v2 = qword_1006DD548;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (MFMailComposeControllerViewDelegateHandler)initWithUICoordinator:(id)coordinator daemonInterface:(id)interface
{
  coordinatorCopy = coordinator;
  interfaceCopy = interface;
  v11.receiver = self;
  v11.super_class = MFMailComposeControllerViewDelegateHandler;
  v8 = [(MFMailComposeControllerViewDelegateHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_coordinator, coordinatorCopy);
    objc_storeStrong(&v9->_daemonInterface, interface);
  }

  return v9;
}

- (void)mailComposeControllerWantsToBackUpDraft:(id)draft
{
  draftCopy = draft;
  v5 = [MFMailComposeDeliveryController alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D9A4C;
  v13[3] = &unk_10064C570;
  v6 = draftCopy;
  v14 = v6;
  v7 = [(MFMailComposeDeliveryController *)v5 initWithComposeController:v6 backupCompletionHandler:v13];
  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"SAVING" value:&stru_100662A88 table:@"Main"];

    coordinator = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
    [(MFMailComposeDeliveryController *)v7 setDelegate:coordinator];

    v11 = +[MFInvocationQueue sharedInvocationQueue];
    v12 = [MFMonitoredInvocation invocationWithSelector:"deliverMessage" target:v7 taskName:v9 priority:9 canBeCancelled:1];
    [v11 addInvocation:v12];
  }
}

- (void)mailComposeControllerCompositionFinished:(id)finished prepareForDismissalHandler:(id)handler
{
  finishedCopy = finished;
  handlerCopy = handler;
  v8 = +[MFMailComposeControllerViewDelegateHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting up delivery controller", buf, 2u);
  }

  coordinator = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  v10 = [[MFMailComposeDeliveryController alloc] initWithComposeController:finishedCopy];
  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"SENDING" value:&stru_100662A88 table:@"Main"];

    [(MFMailComposeDeliveryController *)v10 setDelegate:coordinator];
    v13 = +[MFMailComposeControllerViewDelegateHandler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Triggering deliverMessage on the delivery controller", v26, 2u);
    }

    v14 = +[MFInvocationQueue sharedInvocationQueue];
    v15 = [MFMonitoredInvocation invocationWithSelector:"deliverMessage" target:v10 taskName:v12 priority:9 canBeCancelled:1];
    [v14 addInvocation:v15];
  }

  [(MFMailComposeControllerViewDelegateHandler *)self _presentAppStoreReviewPromptAndNotifyCriterionIfNecessary:finishedCopy];
  composeWebView = [finishedCopy composeWebView];
  isQuickReply = [composeWebView isQuickReply];

  if ([finishedCopy needsDelivery])
  {
    v18 = [finishedCopy isSavingAsDraft] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  [coordinator dismissComposeViewController:finishedCopy animated:isQuickReply ^ 1 afterSending:v18];
  composeCompletionBlock = [coordinator composeCompletionBlock];

  if (composeCompletionBlock)
  {
    composeCompletionBlock2 = [coordinator composeCompletionBlock];
    composeCompletionBlock2[2]();

    [coordinator setComposeCompletionBlock:0];
  }

  resolution = [finishedCopy resolution];
  if (resolution <= 3)
  {
    v22 = 3 - resolution;
  }

  else
  {
    v22 = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v22);
  }

  delegate = [(MFMailComposeControllerViewDelegateHandler *)self delegate];
  [delegate composeFinishedWithResult:v22];

  [(MFMailComposeControllerViewDelegateHandler *)self setDelegate:0];
  [(MFMailComposeControllerViewDelegateHandler *)self setEntitledDelegate:0];
  v24 = +[MFMailComposeControllerViewDelegateHandler log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Finished sending message", v25, 2u);
  }
}

- (void)_presentAppStoreReviewPromptAndNotifyCriterionIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  didUseOmittedAttachmentsOrRecipients = [necessaryCopy didUseOmittedAttachmentsOrRecipients];
  compositionContext = [necessaryCopy compositionContext];
  sendLaterDate = [compositionContext sendLaterDate];

  coordinator = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  v9 = coordinator;
  if (sendLaterDate)
  {
    v10 = 1;
  }

  else
  {
    v10 = didUseOmittedAttachmentsOrRecipients;
  }

  if (v10 == 1)
  {
    windowSceneForAppStoreReviewPrompt = [coordinator windowSceneForAppStoreReviewPrompt];
    if (windowSceneForAppStoreReviewPrompt)
    {
      if (didUseOmittedAttachmentsOrRecipients)
      {
        v12 = 4;
      }

      else
      {
        v12 = 3;
      }

      v13 = sendLaterDate == 0;
      v14 = didUseOmittedAttachmentsOrRecipients ^ 1;
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = didUseOmittedAttachmentsOrRecipients;
      }

      if (v15 == 1)
      {
        v16 = +[MFMailComposeControllerViewDelegateHandler log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "App Store Review prompt: multiple reasons apply, but reporting %ld", &v19, 0xCu);
        }
      }

      appStoreReviewManager = [v9 appStoreReviewManager];
      [appStoreReviewManager notifyCriterionMet:v12];

      appStoreReviewManager2 = [v9 appStoreReviewManager];
      [appStoreReviewManager2 attemptToShowPromptIn:windowSceneForAppStoreReviewPrompt reason:v14];
    }

    else
    {
      appStoreReviewManager2 = +[MFMailComposeControllerViewDelegateHandler log];
      if (os_log_type_enabled(appStoreReviewManager2, OS_LOG_TYPE_ERROR))
      {
        sub_10048BA04(appStoreReviewManager2);
      }
    }
  }
}

- (void)mailComposeControllerCompositionHandoffFinished:(id)finished
{
  finishedCopy = finished;
  lastDraftMessage = [finishedCopy lastDraftMessage];
  objectID = [lastDraftMessage objectID];

  autosaveIdentifier = [finishedCopy autosaveIdentifier];
  v8 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA18C;
  block[3] = &unk_10064C6B0;
  v9 = objectID;
  v13 = v9;
  selfCopy = self;
  v10 = autosaveIdentifier;
  v15 = v10;
  dispatch_async(v8, block);

  coordinator = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  [coordinator dismissComposeViewController:finishedCopy animated:1 afterSending:0];
}

- (void)mailComposeController:(id)controller failedToHandoffCompositionWithError:(id)error
{
  errorCopy = error;
  coordinator = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  [coordinator didFailToContinueUserActivityWithType:MSMailActivityHandoffTypeComposeWithStreams error:errorCopy];
}

- (BOOL)mailComposeControllerIsActiveComposeController:(id)controller
{
  navigationController = [controller navigationController];
  if (navigationController)
  {
    coordinator = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
    activeViewController = [coordinator activeViewController];

    v7 = activeViewController == navigationController;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion
{
  mailCopy = mail;
  recipientsCopy = recipients;
  completionCopy = completion;
  entitledDelegate = [(MFMailComposeControllerViewDelegateHandler *)self entitledDelegate];
  if (entitledDelegate)
  {
    v13 = +[MFMailComposeControllerViewDelegateHandler signpostLog];
    v14 = os_signpost_id_generate(v13);

    v15 = +[MFMailComposeControllerViewDelegateHandler signpostLog];
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MFMailComposeControllerViewDelegateHandlerShouldSendMail", "", buf, 2u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001DA544;
    v17[3] = &unk_1006544A8;
    v19 = v14;
    v18 = completionCopy;
    [entitledDelegate composeShouldSendMail:mailCopy toRecipients:recipientsCopy completion:v17];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (MailComposeDeliveryUICoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end
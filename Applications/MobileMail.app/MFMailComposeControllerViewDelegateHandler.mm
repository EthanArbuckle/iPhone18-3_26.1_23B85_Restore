@interface MFMailComposeControllerViewDelegateHandler
+ (id)log;
+ (id)signpostLog;
- (BOOL)mailComposeControllerIsActiveComposeController:(id)a3;
- (MFMailComposeControllerViewDelegateHandler)initWithUICoordinator:(id)a3 daemonInterface:(id)a4;
- (MailComposeDeliveryUICoordinator)coordinator;
- (unint64_t)signpostID;
- (void)_presentAppStoreReviewPromptAndNotifyCriterionIfNecessary:(id)a3;
- (void)mailComposeController:(id)a3 failedToHandoffCompositionWithError:(id)a4;
- (void)mailComposeController:(id)a3 shouldSendMail:(id)a4 toRecipients:(id)a5 completion:(id)a6;
- (void)mailComposeControllerCompositionFinished:(id)a3 prepareForDismissalHandler:(id)a4;
- (void)mailComposeControllerCompositionHandoffFinished:(id)a3;
- (void)mailComposeControllerWantsToBackUpDraft:(id)a3;
@end

@implementation MFMailComposeControllerViewDelegateHandler

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D95E4;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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
  block[4] = a1;
  if (qword_1006DD550 != -1)
  {
    dispatch_once(&qword_1006DD550, block);
  }

  v2 = qword_1006DD548;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (MFMailComposeControllerViewDelegateHandler)initWithUICoordinator:(id)a3 daemonInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MFMailComposeControllerViewDelegateHandler;
  v8 = [(MFMailComposeControllerViewDelegateHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_coordinator, v6);
    objc_storeStrong(&v9->_daemonInterface, a4);
  }

  return v9;
}

- (void)mailComposeControllerWantsToBackUpDraft:(id)a3
{
  v4 = a3;
  v5 = [MFMailComposeDeliveryController alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D9A4C;
  v13[3] = &unk_10064C570;
  v6 = v4;
  v14 = v6;
  v7 = [(MFMailComposeDeliveryController *)v5 initWithComposeController:v6 backupCompletionHandler:v13];
  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"SAVING" value:&stru_100662A88 table:@"Main"];

    v10 = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
    [(MFMailComposeDeliveryController *)v7 setDelegate:v10];

    v11 = +[MFInvocationQueue sharedInvocationQueue];
    v12 = [MFMonitoredInvocation invocationWithSelector:"deliverMessage" target:v7 taskName:v9 priority:9 canBeCancelled:1];
    [v11 addInvocation:v12];
  }
}

- (void)mailComposeControllerCompositionFinished:(id)a3 prepareForDismissalHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MFMailComposeControllerViewDelegateHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting up delivery controller", buf, 2u);
  }

  v9 = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  v10 = [[MFMailComposeDeliveryController alloc] initWithComposeController:v6];
  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"SENDING" value:&stru_100662A88 table:@"Main"];

    [(MFMailComposeDeliveryController *)v10 setDelegate:v9];
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

  [(MFMailComposeControllerViewDelegateHandler *)self _presentAppStoreReviewPromptAndNotifyCriterionIfNecessary:v6];
  v16 = [v6 composeWebView];
  v17 = [v16 isQuickReply];

  if ([v6 needsDelivery])
  {
    v18 = [v6 isSavingAsDraft] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  [v9 dismissComposeViewController:v6 animated:v17 ^ 1 afterSending:v18];
  v19 = [v9 composeCompletionBlock];

  if (v19)
  {
    v20 = [v9 composeCompletionBlock];
    v20[2]();

    [v9 setComposeCompletionBlock:0];
  }

  v21 = [v6 resolution];
  if (v21 <= 3)
  {
    v22 = 3 - v21;
  }

  else
  {
    v22 = 0;
  }

  if (v7)
  {
    v7[2](v7, v22);
  }

  v23 = [(MFMailComposeControllerViewDelegateHandler *)self delegate];
  [v23 composeFinishedWithResult:v22];

  [(MFMailComposeControllerViewDelegateHandler *)self setDelegate:0];
  [(MFMailComposeControllerViewDelegateHandler *)self setEntitledDelegate:0];
  v24 = +[MFMailComposeControllerViewDelegateHandler log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Finished sending message", v25, 2u);
  }
}

- (void)_presentAppStoreReviewPromptAndNotifyCriterionIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [v4 didUseOmittedAttachmentsOrRecipients];
  v6 = [v4 compositionContext];
  v7 = [v6 sendLaterDate];

  v8 = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5;
  }

  if (v10 == 1)
  {
    v11 = [v8 windowSceneForAppStoreReviewPrompt];
    if (v11)
    {
      if (v5)
      {
        v12 = 4;
      }

      else
      {
        v12 = 3;
      }

      v13 = v7 == 0;
      v14 = v5 ^ 1;
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v5;
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

      v17 = [v9 appStoreReviewManager];
      [v17 notifyCriterionMet:v12];

      v18 = [v9 appStoreReviewManager];
      [v18 attemptToShowPromptIn:v11 reason:v14];
    }

    else
    {
      v18 = +[MFMailComposeControllerViewDelegateHandler log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10048BA04(v18);
      }
    }
  }
}

- (void)mailComposeControllerCompositionHandoffFinished:(id)a3
{
  v4 = a3;
  v5 = [v4 lastDraftMessage];
  v6 = [v5 objectID];

  v7 = [v4 autosaveIdentifier];
  v8 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA18C;
  block[3] = &unk_10064C6B0;
  v9 = v6;
  v13 = v9;
  v14 = self;
  v10 = v7;
  v15 = v10;
  dispatch_async(v8, block);

  v11 = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  [v11 dismissComposeViewController:v4 animated:1 afterSending:0];
}

- (void)mailComposeController:(id)a3 failedToHandoffCompositionWithError:(id)a4
{
  v6 = a4;
  v5 = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
  [v5 didFailToContinueUserActivityWithType:MSMailActivityHandoffTypeComposeWithStreams error:v6];
}

- (BOOL)mailComposeControllerIsActiveComposeController:(id)a3
{
  v4 = [a3 navigationController];
  if (v4)
  {
    v5 = [(MFMailComposeControllerViewDelegateHandler *)self coordinator];
    v6 = [v5 activeViewController];

    v7 = v6 == v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mailComposeController:(id)a3 shouldSendMail:(id)a4 toRecipients:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MFMailComposeControllerViewDelegateHandler *)self entitledDelegate];
  if (v12)
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
    v18 = v11;
    [v12 composeShouldSendMail:v9 toRecipients:v10 completion:v17];
  }

  else
  {
    (*(v11 + 2))(v11, 1);
  }
}

- (MailComposeDeliveryUICoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end
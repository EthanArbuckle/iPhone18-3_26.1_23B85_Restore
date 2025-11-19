@interface MailConversationScene
+ (id)log;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)conversationViewControllerAllowsRemindMeAction:(id)a3;
- (BOOL)displayMessage:(id)a3;
- (BOOL)isComposeWindowActive;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (MFMailPopoverManager)popoverManager;
- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager;
- (id)_createURLRoutes;
- (id)activeViewController;
- (id)composeAccountIsDefault:(BOOL *)a3;
- (id)stateRestorationActivityForMailScene;
- (void)_composeCommandInvoked:(id)a3;
- (void)_sheetPresentationControllerDidTearOff:(id)a3;
- (void)conversationViewControllerWantsDismissal:(id)a3;
- (void)dismissComposeViewController:(id)a3 animated:(BOOL)a4 afterSending:(BOOL)a5;
- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)a3 outgoingMessageDelivery:(id)a4 result:(id)a5;
- (void)mailSceneDidConnectWithOptions:(id)a3;
- (void)mailSceneDidDisconnect;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)referenceMessageNoLongerAvailableInConversationView:(id)a3;
- (void)showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 presentationSource:(id)a6 completionBlock:(id)a7;
@end

@implementation MailConversationScene

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010D328;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD090 != -1)
  {
    dispatch_once(&qword_1006DD090, block);
  }

  v2 = qword_1006DD088;

  return v2;
}

- (void)mailSceneDidConnectWithOptions:(id)a3
{
  v34.receiver = self;
  v34.super_class = MailConversationScene;
  v33 = a3;
  [(MailScene *)&v34 mailSceneDidConnectWithOptions:?];
  v4 = [ConversationViewController alloc];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 contactStore];
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 avatarGenerator];
  v9 = [(ConversationViewController *)v4 initWithScene:self contactStore:v6 avatarGenerator:v8];

  [(ConversationViewControllerBase *)v9 setIsPrimary:1];
  [(ConversationViewControllerBase *)v9 setIsStandalone:1];
  [(ConversationViewControllerBase *)v9 setDelegate:self];
  if (!MUISolariumFeatureEnabled() || (+[EFDevice currentDevice](EFDevice, "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isPad], v10, (v11 & 1) == 0))
  {
    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonPressed"];
    [(ConversationViewControllerBase *)v9 setDoneButton:v12];
  }

  v13 = [[MailDetailNavigationController alloc] initWithRootViewController:v9];
  v14 = [MFMailComposeControllerViewDelegateHandler alloc];
  v15 = [(MailScene *)self daemonInterface];
  v16 = [(MFMailComposeControllerViewDelegateHandler *)v14 initWithUICoordinator:self daemonInterface:v15];
  [(MailConversationScene *)self setComposeViewDelegateHandler:v16];

  [(MailConversationScene *)self setConversationViewController:v9];
  [(MailConversationScene *)self setNavigationController:v13];
  v17 = [(MailConversationScene *)self session];
  v18 = [v17 stateRestorationActivity];

  if (!v18)
  {
    v19 = [v33 userActivities];
    v18 = [v19 ef_anyPassingTest:&stru_100650718];
  }

  v20 = [v18 userInfo];
  v21 = [v20 objectForKeyedSubscript:MSMailActivityHandoffDisplayMessageKeyRestorationState];

  v22 = [NSPredicate predicateWithValue:0];
  v23 = [(MailConversationScene *)self activationConditions];
  [v23 setCanActivateForTargetContentIdentifierPredicate:v22];

  v24 = +[MailConversationScene log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(MailConversationScene *)self session];
    v26 = [v25 persistentIdentifier];
    v27 = [(MailConversationScene *)self session];
    v28 = [v27 stateRestorationActivity];
    *buf = 138412546;
    v36 = v26;
    v37 = 1024;
    v38 = v28 != 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Connection conditions: sessionID=%@ hasRestorationActivity=%{BOOL}d", buf, 0x12u);
  }

  if (v21)
  {
    v29 = [(MailScene *)self daemonInterface];
    v30 = [v29 messageRepository];
    v31 = [ConversationViewRestorationState loadFromDictionary:v21 usingRepository:v30];

    v32 = [(MailConversationScene *)self conversationViewController];
    [v32 restoreState:v31];
  }
}

- (id)stateRestorationActivityForMailScene
{
  v3 = [(MailConversationScene *)self conversationViewController];
  v4 = [v3 newBackgroundMonitor];
  [v4 setAction:1];
  [(MailScene *)self addBackgroundMonitor:v4];
  v5 = [v3 captureRestorationState];
  if (v5)
  {
    v6 = [NSUserActivity alloc];
    v7 = MSMailActivityHandoffTypeDisplayMessage;
    v8 = [v6 initWithActivityType:MSMailActivityHandoffTypeDisplayMessage];
    v13[0] = v7;
    v12[0] = MSMailActivityHandoffTypeKey;
    v12[1] = MSMailActivityHandoffDisplayMessageKeyRestorationState;
    v9 = [v5 dictionaryRepresentation];
    v13[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    [v8 setUserInfo:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mailSceneDidDisconnect
{
  v7.receiver = self;
  v7.super_class = MailConversationScene;
  [(MailScene *)&v7 mailSceneDidDisconnect];
  if ([(MailConversationScene *)self isComposeWindowActive])
  {
    v3 = [(MailConversationScene *)self navigationController];
    v4 = [v3 presentedViewController];

    if (![v4 resolution])
    {
      [v4 _setCompositionContext:0];
      v5 = +[UIApplication sharedApplication];
      v6 = [v5 dockPersistence];
      [v6 recoverAbandonedDrafts];
    }
  }
}

- (id)_createURLRoutes
{
  v3 = [[MFComposeURLRoute alloc] initWithScene:self];
  v7.receiver = self;
  v7.super_class = MailConversationScene;
  v4 = [(MailScene *)&v7 _createURLRoutes];
  v5 = [v4 arrayByAddingObject:v3];

  return v5;
}

- (MFMailPopoverManager)popoverManager
{
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailConversationScene.m" lineNumber:143 description:@"Current thread must be main"];
  }

  v4 = [(MailConversationScene *)self delegate];
  v5 = [v4 window];
  if (v5)
  {
    v6 = [MFMailPopoverManager managerForWindow:v5 createIfNeeded:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)displayMessage:(id)a3
{
  v3 = a3;
  v4 = [NSError errorWithDomain:EMErrorDomain code:2050 userInfo:0];
  [v3 requestAbortedWithError:v4];

  return 0;
}

- (BOOL)isComposeWindowActive
{
  v2 = [(MailConversationScene *)self navigationController];
  v3 = [v2 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 presentationSource:(id)a6 completionBlock:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[ComposeNavigationController alloc] initWithComposition:v12];
  v17 = [(ComposeNavigationController *)v16 presentationController];
  [v17 setDelegate:self];

  if (v16)
  {
    v18 = [(ComposeNavigationController *)v16 presentationController];
    v37 = v15;
    v38 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = +[UIDevice mf_isPadIdiom];

      if (!v19)
      {
        goto LABEL_6;
      }

      v18 = [(ComposeNavigationController *)v16 presentationController];
      [v18 _setAllowsTearOff:1];
      [v18 setPrefersGrabberVisible:1];
    }

LABEL_6:
    v20 = [(MailConversationScene *)self composeViewDelegateHandler];
    [(ComposeNavigationController *)v16 setMailComposeDelegate:v20];

    if (v13 || ([v12 draftSubject], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(ComposeNavigationController *)v16 setInitialTitle:v13];
    }

    v21 = [(MailConversationScene *)self composeCompletionBlock];

    if (v21)
    {
      v22 = [(MailConversationScene *)self composeCompletionBlock];
      v22[2]();
    }

    [(MailConversationScene *)self setComposeCompletionBlock:v15];
    v36 = v10;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10010E364;
    v39[3] = &unk_10064C660;
    v39[4] = self;
    v23 = v16;
    v40 = v23;
    v24 = objc_retainBlock(v39);
    v25 = [(MailConversationScene *)self navigationController];
    v26 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
    v27 = [v26 isClarityBoardEnabled];

    if (v27 & 1 | ((+[UIDevice mf_isPadIdiom]& 1) == 0))
    {
      v28 = [v12 attachmentToMarkupContentID];
      if (!v28)
      {
        goto LABEL_21;
      }

      v29 = [(MailConversationScene *)self navigationController];
      v30 = [v29 presentedViewController];
      v42 = 0;
      v43 = &v42;
      v44 = 0x2050000000;
      v31 = qword_1006DD098;
      v45 = qword_1006DD098;
      if (!qword_1006DD098)
      {
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10010F110;
        v41[3] = &unk_100650760;
        v41[4] = &v42;
        sub_10010F110(v41);
        v31 = v43[3];
      }

      v32 = v31;
      _Block_object_dispose(&v42, 8);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v34 = [v25 presentedViewController];
        [v34 presentViewController:v23 animated:v36 completion:v24];
      }

      else
      {
LABEL_21:
        [v25 presentViewController:v23 animated:v36 completion:v24];
      }
    }

    else
    {
      [MFBayAdoption openComposeWithContext:v12 presentationSource:v38 requestingScene:self];
    }

    v15 = v37;
    v14 = v38;
    goto LABEL_23;
  }

  v35 = +[MailConversationScene log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_100488A44(v35);
  }

LABEL_23:
}

- (id)composeAccountIsDefault:(BOOL *)a3
{
  *a3 = 0;
  v5 = [(MailConversationScene *)self conversationViewController];
  v6 = [v5 referenceMessageListItem];
  v7 = [v6 mailboxes];
  v8 = [v7 firstObject];

  if (!v8 || (-[MailScene mailboxProvider](self, "mailboxProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v8 objectID], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "legacyMailboxForObjectID:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, objc_msgSend(v11, "account"), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    *a3 = 1;
    v12 = +[MailAccount defaultMailAccountForDelivery];
  }

  return v12;
}

- (void)_composeCommandInvoked:(id)a3
{
  v4 = +[MailConversationScene log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Created invocation to update aliases.", buf, 2u);
  }

  v5 = +[MFInvocationQueue sharedInvocationQueue];
  v6 = [MFMonitoredInvocation mf_invocationWithSelector:"updateEmailAliasesForActiveAccounts" target:objc_opt_class()];
  [v5 addInvocation:v6];

  v13 = -86;
  v7 = objc_alloc_init(_MFMailCompositionContext);
  [v7 setShowKeyboardImmediately:1];
  v8 = [(MailConversationScene *)self composeAccountIsDefault:&v13];
  v9 = +[MailConversationScene log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 ef_publicDescription];
    *buf = 138412546;
    v15 = v10;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Compose using account:%@, isDefault: %{BOOL}d.", buf, 0x12u);
  }

  v11 = [v8 defaultEmailAddress];
  v12 = v11;
  if (!v11)
  {
    v12 = [v8 firstEmailAddress];
  }

  [v7 setPreferredSendingEmailAddress:v12];
  if (!v11)
  {
  }

  [v7 setIsUsingDefaultAccount:v13];
  [v7 setPrefersFirstLineSelection:1];
  [(MailConversationScene *)self showComposeWithContext:v7 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("_composeCommandInvoked:" == a3)
  {
    v8 = [(MailConversationScene *)self mf_rootViewController];
    v9 = [v8 presentedViewController];
    v7 = v9 == 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MailConversationScene;
    v7 = [(MailScene *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)referenceMessageNoLongerAvailableInConversationView:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010E9DC;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)conversationViewControllerWantsDismissal:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010EA8C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (BOOL)conversationViewControllerAllowsRemindMeAction:(id)a3
{
  v3 = [a3 referenceMessageListItem];
  v4 = [v3 mailboxes];
  v5 = [v4 ef_all:&stru_100650738];

  return v5;
}

- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)a3 outgoingMessageDelivery:(id)a4 result:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (([v9 status] & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v10 = [v12 error];
    v11 = [v8 account];
    [(MailScene *)self displayError:v10 forAccount:v11 mode:2];
  }
}

- (void)dismissComposeViewController:(id)a3 animated:(BOOL)a4 afterSending:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(MailConversationScene *)self activeViewController];
  v10 = [(MailConversationScene *)self activeViewController];

  if (v10 == v8)
  {
    v12 = [(MailConversationScene *)self session];
    [v12 mf_setActiveDraft:0];

    if (v6 && v5)
    {
      v13 = [(MailConversationScene *)self navigationController];
      [v13 dismissViewControllerWithTransition:3 completion:0];
    }

    else
    {
      v13 = [(MailConversationScene *)self navigationController];
      [v13 dismissViewControllerAnimated:v6 completion:0];
    }
  }

  else
  {
    v11 = +[MailConversationScene log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100488A88(v8, v9, v11);
    }
  }
}

- (id)activeViewController
{
  v2 = [(MailConversationScene *)self navigationController];
  v3 = [v2 visibleViewController];

  return v3;
}

- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 appStoreReviewManager];

  return v3;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = [a3 presentedViewController];
  v4 = [v3 isDirty];

  return v4 ^ 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v3 = a3;
  v4 = [v3 presentedViewController];
  [v4 _mailComposeController];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EF98;
  v7 = block[3] = &unk_10064C7E8;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_sheetPresentationControllerDidTearOff:(id)a3
{
  v3 = [(MailConversationScene *)self session];
  [v3 mf_setActiveDraft:0];
}

@end
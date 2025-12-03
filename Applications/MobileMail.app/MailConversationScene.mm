@interface MailConversationScene
+ (id)log;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)conversationViewControllerAllowsRemindMeAction:(id)action;
- (BOOL)displayMessage:(id)message;
- (BOOL)isComposeWindowActive;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (MFMailPopoverManager)popoverManager;
- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager;
- (id)_createURLRoutes;
- (id)activeViewController;
- (id)composeAccountIsDefault:(BOOL *)default;
- (id)stateRestorationActivityForMailScene;
- (void)_composeCommandInvoked:(id)invoked;
- (void)_sheetPresentationControllerDidTearOff:(id)off;
- (void)conversationViewControllerWantsDismissal:(id)dismissal;
- (void)dismissComposeViewController:(id)controller animated:(BOOL)animated afterSending:(BOOL)sending;
- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)send outgoingMessageDelivery:(id)delivery result:(id)result;
- (void)mailSceneDidConnectWithOptions:(id)options;
- (void)mailSceneDidDisconnect;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)referenceMessageNoLongerAvailableInConversationView:(id)view;
- (void)showComposeWithContext:(id)context animated:(BOOL)animated initialTitle:(id)title presentationSource:(id)source completionBlock:(id)block;
@end

@implementation MailConversationScene

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010D328;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD090 != -1)
  {
    dispatch_once(&qword_1006DD090, block);
  }

  v2 = qword_1006DD088;

  return v2;
}

- (void)mailSceneDidConnectWithOptions:(id)options
{
  v34.receiver = self;
  v34.super_class = MailConversationScene;
  optionsCopy = options;
  [(MailScene *)&v34 mailSceneDidConnectWithOptions:?];
  v4 = [ConversationViewController alloc];
  v5 = +[UIApplication sharedApplication];
  contactStore = [v5 contactStore];
  v7 = +[UIApplication sharedApplication];
  avatarGenerator = [v7 avatarGenerator];
  v9 = [(ConversationViewController *)v4 initWithScene:self contactStore:contactStore avatarGenerator:avatarGenerator];

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
  daemonInterface = [(MailScene *)self daemonInterface];
  v16 = [(MFMailComposeControllerViewDelegateHandler *)v14 initWithUICoordinator:self daemonInterface:daemonInterface];
  [(MailConversationScene *)self setComposeViewDelegateHandler:v16];

  [(MailConversationScene *)self setConversationViewController:v9];
  [(MailConversationScene *)self setNavigationController:v13];
  session = [(MailConversationScene *)self session];
  stateRestorationActivity = [session stateRestorationActivity];

  if (!stateRestorationActivity)
  {
    userActivities = [optionsCopy userActivities];
    stateRestorationActivity = [userActivities ef_anyPassingTest:&stru_100650718];
  }

  userInfo = [stateRestorationActivity userInfo];
  v21 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffDisplayMessageKeyRestorationState];

  v22 = [NSPredicate predicateWithValue:0];
  activationConditions = [(MailConversationScene *)self activationConditions];
  [activationConditions setCanActivateForTargetContentIdentifierPredicate:v22];

  v24 = +[MailConversationScene log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    session2 = [(MailConversationScene *)self session];
    persistentIdentifier = [session2 persistentIdentifier];
    session3 = [(MailConversationScene *)self session];
    stateRestorationActivity2 = [session3 stateRestorationActivity];
    *buf = 138412546;
    v36 = persistentIdentifier;
    v37 = 1024;
    v38 = stateRestorationActivity2 != 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Connection conditions: sessionID=%@ hasRestorationActivity=%{BOOL}d", buf, 0x12u);
  }

  if (v21)
  {
    daemonInterface2 = [(MailScene *)self daemonInterface];
    messageRepository = [daemonInterface2 messageRepository];
    v31 = [ConversationViewRestorationState loadFromDictionary:v21 usingRepository:messageRepository];

    conversationViewController = [(MailConversationScene *)self conversationViewController];
    [conversationViewController restoreState:v31];
  }
}

- (id)stateRestorationActivityForMailScene
{
  conversationViewController = [(MailConversationScene *)self conversationViewController];
  newBackgroundMonitor = [conversationViewController newBackgroundMonitor];
  [newBackgroundMonitor setAction:1];
  [(MailScene *)self addBackgroundMonitor:newBackgroundMonitor];
  captureRestorationState = [conversationViewController captureRestorationState];
  if (captureRestorationState)
  {
    v6 = [NSUserActivity alloc];
    v7 = MSMailActivityHandoffTypeDisplayMessage;
    v8 = [v6 initWithActivityType:MSMailActivityHandoffTypeDisplayMessage];
    v13[0] = v7;
    v12[0] = MSMailActivityHandoffTypeKey;
    v12[1] = MSMailActivityHandoffDisplayMessageKeyRestorationState;
    dictionaryRepresentation = [captureRestorationState dictionaryRepresentation];
    v13[1] = dictionaryRepresentation;
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
    navigationController = [(MailConversationScene *)self navigationController];
    presentedViewController = [navigationController presentedViewController];

    if (![presentedViewController resolution])
    {
      [presentedViewController _setCompositionContext:0];
      v5 = +[UIApplication sharedApplication];
      dockPersistence = [v5 dockPersistence];
      [dockPersistence recoverAbandonedDrafts];
    }
  }
}

- (id)_createURLRoutes
{
  v3 = [[MFComposeURLRoute alloc] initWithScene:self];
  v7.receiver = self;
  v7.super_class = MailConversationScene;
  _createURLRoutes = [(MailScene *)&v7 _createURLRoutes];
  v5 = [_createURLRoutes arrayByAddingObject:v3];

  return v5;
}

- (MFMailPopoverManager)popoverManager
{
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailConversationScene.m" lineNumber:143 description:@"Current thread must be main"];
  }

  delegate = [(MailConversationScene *)self delegate];
  window = [delegate window];
  if (window)
  {
    v6 = [MFMailPopoverManager managerForWindow:window createIfNeeded:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)displayMessage:(id)message
{
  messageCopy = message;
  v4 = [NSError errorWithDomain:EMErrorDomain code:2050 userInfo:0];
  [messageCopy requestAbortedWithError:v4];

  return 0;
}

- (BOOL)isComposeWindowActive
{
  navigationController = [(MailConversationScene *)self navigationController];
  presentedViewController = [navigationController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)showComposeWithContext:(id)context animated:(BOOL)animated initialTitle:(id)title presentationSource:(id)source completionBlock:(id)block
{
  animatedCopy = animated;
  contextCopy = context;
  titleCopy = title;
  sourceCopy = source;
  blockCopy = block;
  v16 = [[ComposeNavigationController alloc] initWithComposition:contextCopy];
  presentationController = [(ComposeNavigationController *)v16 presentationController];
  [presentationController setDelegate:self];

  if (v16)
  {
    presentationController2 = [(ComposeNavigationController *)v16 presentationController];
    v37 = blockCopy;
    v38 = sourceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = +[UIDevice mf_isPadIdiom];

      if (!v19)
      {
        goto LABEL_6;
      }

      presentationController2 = [(ComposeNavigationController *)v16 presentationController];
      [presentationController2 _setAllowsTearOff:1];
      [presentationController2 setPrefersGrabberVisible:1];
    }

LABEL_6:
    composeViewDelegateHandler = [(MailConversationScene *)self composeViewDelegateHandler];
    [(ComposeNavigationController *)v16 setMailComposeDelegate:composeViewDelegateHandler];

    if (titleCopy || ([contextCopy draftSubject], (titleCopy = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(ComposeNavigationController *)v16 setInitialTitle:titleCopy];
    }

    composeCompletionBlock = [(MailConversationScene *)self composeCompletionBlock];

    if (composeCompletionBlock)
    {
      composeCompletionBlock2 = [(MailConversationScene *)self composeCompletionBlock];
      composeCompletionBlock2[2]();
    }

    [(MailConversationScene *)self setComposeCompletionBlock:blockCopy];
    v36 = animatedCopy;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10010E364;
    v39[3] = &unk_10064C660;
    v39[4] = self;
    v23 = v16;
    v40 = v23;
    v24 = objc_retainBlock(v39);
    navigationController = [(MailConversationScene *)self navigationController];
    v26 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
    isClarityBoardEnabled = [v26 isClarityBoardEnabled];

    if (isClarityBoardEnabled & 1 | ((+[UIDevice mf_isPadIdiom]& 1) == 0))
    {
      attachmentToMarkupContentID = [contextCopy attachmentToMarkupContentID];
      if (!attachmentToMarkupContentID)
      {
        goto LABEL_21;
      }

      navigationController2 = [(MailConversationScene *)self navigationController];
      presentedViewController = [navigationController2 presentedViewController];
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
        presentedViewController2 = [navigationController presentedViewController];
        [presentedViewController2 presentViewController:v23 animated:v36 completion:v24];
      }

      else
      {
LABEL_21:
        [navigationController presentViewController:v23 animated:v36 completion:v24];
      }
    }

    else
    {
      [MFBayAdoption openComposeWithContext:contextCopy presentationSource:v38 requestingScene:self];
    }

    blockCopy = v37;
    sourceCopy = v38;
    goto LABEL_23;
  }

  v35 = +[MailConversationScene log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_100488A44(v35);
  }

LABEL_23:
}

- (id)composeAccountIsDefault:(BOOL *)default
{
  *default = 0;
  conversationViewController = [(MailConversationScene *)self conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];
  mailboxes = [referenceMessageListItem mailboxes];
  firstObject = [mailboxes firstObject];

  if (!firstObject || (-[MailScene mailboxProvider](self, "mailboxProvider"), v9 = objc_claimAutoreleasedReturnValue(), [firstObject objectID], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "legacyMailboxForObjectID:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, objc_msgSend(v11, "account"), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    *default = 1;
    v12 = +[MailAccount defaultMailAccountForDelivery];
  }

  return v12;
}

- (void)_composeCommandInvoked:(id)invoked
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
    ef_publicDescription = [v8 ef_publicDescription];
    *buf = 138412546;
    v15 = ef_publicDescription;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Compose using account:%@, isDefault: %{BOOL}d.", buf, 0x12u);
  }

  defaultEmailAddress = [v8 defaultEmailAddress];
  firstEmailAddress = defaultEmailAddress;
  if (!defaultEmailAddress)
  {
    firstEmailAddress = [v8 firstEmailAddress];
  }

  [v7 setPreferredSendingEmailAddress:firstEmailAddress];
  if (!defaultEmailAddress)
  {
  }

  [v7 setIsUsingDefaultAccount:v13];
  [v7 setPrefersFirstLineSelection:1];
  [(MailConversationScene *)self showComposeWithContext:v7 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_composeCommandInvoked:" == action)
  {
    mf_rootViewController = [(MailConversationScene *)self mf_rootViewController];
    presentedViewController = [mf_rootViewController presentedViewController];
    v7 = presentedViewController == 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MailConversationScene;
    v7 = [(MailScene *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)referenceMessageNoLongerAvailableInConversationView:(id)view
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010E9DC;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)conversationViewControllerWantsDismissal:(id)dismissal
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010EA8C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (BOOL)conversationViewControllerAllowsRemindMeAction:(id)action
{
  referenceMessageListItem = [action referenceMessageListItem];
  mailboxes = [referenceMessageListItem mailboxes];
  v5 = [mailboxes ef_all:&stru_100650738];

  return v5;
}

- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)send outgoingMessageDelivery:(id)delivery result:(id)result
{
  sendCopy = send;
  deliveryCopy = delivery;
  resultCopy = result;
  if (([resultCopy status] & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    error = [sendCopy error];
    account = [deliveryCopy account];
    [(MailScene *)self displayError:error forAccount:account mode:2];
  }
}

- (void)dismissComposeViewController:(id)controller animated:(BOOL)animated afterSending:(BOOL)sending
{
  sendingCopy = sending;
  animatedCopy = animated;
  controllerCopy = controller;
  activeViewController = [(MailConversationScene *)self activeViewController];
  activeViewController2 = [(MailConversationScene *)self activeViewController];

  if (activeViewController2 == controllerCopy)
  {
    session = [(MailConversationScene *)self session];
    [session mf_setActiveDraft:0];

    if (animatedCopy && sendingCopy)
    {
      navigationController = [(MailConversationScene *)self navigationController];
      [navigationController dismissViewControllerWithTransition:3 completion:0];
    }

    else
    {
      navigationController = [(MailConversationScene *)self navigationController];
      [navigationController dismissViewControllerAnimated:animatedCopy completion:0];
    }
  }

  else
  {
    v11 = +[MailConversationScene log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100488A88(controllerCopy, activeViewController, v11);
    }
  }
}

- (id)activeViewController
{
  navigationController = [(MailConversationScene *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  return visibleViewController;
}

- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager
{
  v2 = +[UIApplication sharedApplication];
  appStoreReviewManager = [v2 appStoreReviewManager];

  return appStoreReviewManager;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  isDirty = [presentedViewController isDirty];

  return isDirty ^ 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  [presentedViewController _mailComposeController];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EF98;
  v7 = block[3] = &unk_10064C7E8;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_sheetPresentationControllerDidTearOff:(id)off
{
  session = [(MailConversationScene *)self session];
  [session mf_setActiveDraft:0];
}

@end
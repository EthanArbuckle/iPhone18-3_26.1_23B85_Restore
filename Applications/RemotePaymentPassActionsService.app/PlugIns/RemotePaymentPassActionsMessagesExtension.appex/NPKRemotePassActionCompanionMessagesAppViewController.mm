@interface NPKRemotePassActionCompanionMessagesAppViewController
- (BOOL)_canRequestRemoteActionBePerformed:(id)performed outError:(id *)error;
- (BOOL)_isGroupConversation:(id)conversation;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (NPKRemotePassActionUIService)remotePassUIService;
- (id)_genericErrorForAction:(id)action;
- (id)_genericErrorTitleForAction:(id)action;
- (id)_serviceProviderPaymentRequestForEnteredValueAmount:(id)amount recipientName:(id)name organization:(id)organization action:(id)action forLocalizedPassName:(id)passName;
- (id)_serviceProviderPaymentRequestForSelectedItemWithServiceProviderData:(id)data amount:(id)amount recipientName:(id)name organization:(id)organization action:(id)action forLocalizedPassName:(id)passName;
- (id)_serviceProviderPaymentRequestForServiceProviderData:(id)data action:(id)action amount:(id)amount summaryItems:(id)items;
- (id)_viewControllerForPresentationStyle:(unint64_t)style withConversation:(id)conversation;
- (id)_viewControllerForTranscriptPresentationStyleWithConversation:(id)conversation;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator;
- (void)_contactForConversation:(id)conversation completion:(id)completion;
- (void)_insertResponse:(id)response toRequest:(id)request withCompletion:(id)completion;
- (void)_insertResponseToRequest:(id)request forRenewalAmount:(id)amount serviceProviderData:(id)data withCompletion:(id)completion;
- (void)_insertResponseToRequest:(id)request forTopUpAmount:(id)amount withCompletion:(id)completion;
- (void)_presentAlertWithDisplayableError:(id)error;
- (void)_presentAlertWithDisplayableError:(id)error actionButtonTitle:(id)title actionHandler:(id)handler showsConfirmButton:(BOOL)button;
- (void)_presentAlertWithTitle:(id)title message:(id)message actionButtonTitle:(id)buttonTitle actionButtonHandler:(id)handler confirmButtonTitle:(id)confirmButtonTitle;
- (void)_presentPaymentSheetForPaymentRequest:(id)request withCompletion:(id)completion;
- (void)_removeAllChildViewControllers;
- (void)_requestResizeIfNeeded;
- (void)_restoreRequestDataURLForResponseMessage:(id)message toMatchRequest:(id)request;
- (void)_showViewController:(id)controller;
- (void)_validateMessageForSending:(id)sending conversation:(id)conversation associatedText:(id)text completionHandler:(id)handler;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didCancelSendingMessage:(id)message conversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
- (void)remotePassActionRequestBubbleViewController:(id)controller didTapMessage:(id)message;
- (void)remotePassActionUIService:(id)service didCancelForRequestIdentifier:(id)identifier;
- (void)remotePassActionUIService:(id)service didSelectEnteredValueAmount:(id)amount forRequestIdentifier:(id)identifier;
- (void)remotePassActionUIService:(id)service didSelectItemForRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier;
- (void)requestPresentationStyle:(unint64_t)style;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation NPKRemotePassActionCompanionMessagesAppViewController

- (void)didBecomeActiveWithConversation:(id)conversation
{
  v6.receiver = self;
  v6.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  conversationCopy = conversation;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v6 didBecomeActiveWithConversation:conversationCopy];
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _removeAllChildViewControllers:v6.receiver];
  v5 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _viewControllerForPresentationStyle:[(NPKRemotePassActionCompanionMessagesAppViewController *)self presentationStyle] withConversation:conversationCopy];

  if (v5)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _showViewController:v5];
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _requestResizeIfNeeded];
  }
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v5 willTransitionToPresentationStyle:?];
  if (!style)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self resignFirstResponder];
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v5 didTransitionToPresentationStyle:?];
  if (!style)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self dismiss];
  }
}

- (void)requestPresentationStyle:(unint64_t)style
{
  v5 = pk_RemotePassAction_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      styleCopy = style;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested transition to presentation style:%lu", buf, 0xCu);
    }
  }

  v8.receiver = self;
  v8.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v8 requestPresentationStyle:style];
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = pk_RemotePassAction_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = width;
      v22 = 2048;
      v23 = height;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Requesting content size that fits w:%f, h:%f", buf, 0x16u);
    }
  }

  bubbleViewController = self->_bubbleViewController;
  if (bubbleViewController)
  {
    [(NPKRemotePassActionCompanionBubbleViewController *)bubbleViewController suggestedViewSizeThatFits:width, height];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
    [(NPKRemotePassActionCompanionMessagesAppViewController *)&v19 contentSizeThatFits:width, height];
  }

  v12 = v10;
  v13 = v11;
  v14 = pk_RemotePassAction_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Returning size w:%f, h:%f", buf, 0x16u);
    }
  }

  v17 = v12;
  v18 = v13;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)didCancelSendingMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  v7 = pk_RemotePassAction_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = messageCopy;
      v18 = 2112;
      v19 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Did cancel sending message: %@, conversation: %@", &v16, 0x16u);
    }
  }

  v10 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  response = [messageCopy response];
  identifier = [response identifier];
  v13 = [v10 requestForIdentifier:identifier];

  if (v13)
  {
    v14 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
    identifier2 = [v13 identifier];
    [v14 removeRequestForIdentifier:identifier2];
  }
}

- (void)_validateMessageForSending:(id)sending conversation:(id)conversation associatedText:(id)text completionHandler:(id)handler
{
  sendingCopy = sending;
  conversationCopy = conversation;
  handlerCopy = handler;
  v12 = pk_RemotePassAction_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_retainBlock(handlerCopy);
      *buf = 138412546;
      v69 = sendingCopy;
      v70 = 2112;
      v71 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Validating message %@ for sending with completion %@", buf, 0x16u);
    }
  }

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000061CC;
  v65[3] = &unk_1000145C8;
  v65[4] = self;
  v16 = sendingCopy;
  v66 = v16;
  v17 = handlerCopy;
  v67 = v17;
  v18 = objc_retainBlock(v65);
  response = [v16 response];
  v20 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  identifier = [response identifier];
  v22 = [v20 requestForIdentifier:identifier];

  action = [v22 action];
  if ((PKiMessageIsActive() & 1) == 0)
  {
    v37 = v18;
    v59 = v16;
    v24 = v22;
    v25 = response;
    v26 = v17;
    v27 = conversationCopy;
    v38 = pk_RemotePassAction_log();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

    if (v39)
    {
      v40 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Notice: iMessage is disabled", buf, 2u);
      }
    }

    v41 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorTitleForAction:action];
    v42 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    [v42 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_IMESSAGE_DISABLED_MESSAGE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    v44 = v43 = action;
    v35 = NPKDisplayableError();

    v36 = v43;
    v18 = v37;
    (v37[2])(v37, 0, 0, v35);
    goto LABEL_17;
  }

  if ([(NPKRemotePassActionCompanionMessagesAppViewController *)self _isGroupConversation:conversationCopy])
  {
    v59 = v16;
    v24 = v22;
    v25 = response;
    v26 = v17;
    v27 = conversationCopy;
    pk_RemotePassAction_log();
    v29 = v28 = action;
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      v31 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Notice: Family top-up is not available in group conversations", buf, 2u);
      }
    }

    v32 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorTitleForAction:v28];
    v33 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    v34 = [v33 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_INVALID_GROUP_MESSAGE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    v35 = NPKDisplayableError();

    v36 = v28;
    (v18[2])(v18, 0, 0, v35);
LABEL_17:
    conversationCopy = v27;
    v17 = v26;
    response = v25;
    v22 = v24;
    v16 = v59;
    goto LABEL_18;
  }

  if (action)
  {
    v58 = conversationCopy;
    [action serviceProviderAcceptedNetworks];
    v46 = v45 = action;
    serviceProviderSupportedCountries = [v45 serviceProviderSupportedCountries];
    [v45 serviceProviderCapabilities];
    PaymentsUsingNetworksIssuerCountryCodesWithCapabilities = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilities();

    if (PaymentsUsingNetworksIssuerCountryCodesWithCapabilities)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100006304;
      v60[3] = &unk_1000145F0;
      v61 = v22;
      selfCopy = self;
      v63 = response;
      v64 = v18;
      conversationCopy = v58;
      [(NPKRemotePassActionCompanionMessagesAppViewController *)self _contactForConversation:v58 completion:v60];

      v35 = v61;
      v36 = v45;
    }

    else
    {
      v52 = pk_RemotePassAction_log();
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

      if (v53)
      {
        v54 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Error: Device is unable to make payments!", buf, 2u);
        }
      }

      v55 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorTitleForAction:v45];
      v56 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
      v57 = [v56 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_NO_CARDS_MESSAGE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      v35 = NPKDisplayableError();

      v36 = v45;
      (v18[2])(v18, 0, 0, v35);
      conversationCopy = v58;
    }
  }

  else
  {
    v49 = pk_RemotePassAction_log();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

    if (v50)
    {
      v51 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Error: No pass action found!", buf, 2u);
      }
    }

    v35 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorForAction:0];
    (v18[2])(v18, 0, 0, v35);
    v36 = 0;
  }

LABEL_18:
}

- (id)_viewControllerForPresentationStyle:(unint64_t)style withConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([(NPKRemotePassActionCompanionMessagesAppViewController *)self presentationStyle]== 2)
  {
    v6 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _viewControllerForTranscriptPresentationStyleWithConversation:conversationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_viewControllerForTranscriptPresentationStyleWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = [NPKRemotePassActionCompanionBubbleViewController alloc];
  selectedMessage = [conversationCopy selectedMessage];

  v7 = [(NPKRemotePassActionCompanionBubbleViewController *)v5 initWithMessage:selectedMessage delegate:self];
  bubbleViewController = self->_bubbleViewController;
  self->_bubbleViewController = v7;

  v9 = self->_bubbleViewController;

  return v9;
}

- (void)_showViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self addChildViewController:controllerCopy];
    view = [controllerCopy view];
    [view setAutoresizingMask:18];

    view2 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    view3 = [controllerCopy view];
    [view2 addSubview:view3];

    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _balloonMaskEdgeInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view4 = [controllerCopy view];
    topAnchor = [view4 topAnchor];
    view5 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
    v42[0] = v35;
    view6 = [controllerCopy view];
    bottomAnchor = [view6 bottomAnchor];
    view7 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    bottomAnchor2 = [view7 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v13];
    v42[1] = v30;
    view8 = [controllerCopy view];
    leadingAnchor = [view8 leadingAnchor];
    view9 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    leadingAnchor2 = [view9 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
    v42[2] = v17;
    view10 = [controllerCopy view];
    trailingAnchor = [view10 trailingAnchor];
    view11 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    trailingAnchor2 = [view11 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v15];
    v42[3] = v22;
    v23 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    [controllerCopy didMoveToParentViewController:self];
  }

  else
  {
    v24 = pk_RemotePassAction_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Warning: Attempted to show view controller, but instead found nil! view controller: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_removeAllChildViewControllers
{
  childViewControllers = [(NPKRemotePassActionCompanionMessagesAppViewController *)self childViewControllers];
  v5 = [childViewControllers copy];

  [v5 enumerateObjectsUsingBlock:&stru_100014630];
  bubbleViewController = self->_bubbleViewController;
  self->_bubbleViewController = 0;
}

- (void)_requestResizeIfNeeded
{
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Requesting resize if needed", &v15, 2u);
    }
  }

  if ([(NPKRemotePassActionCompanionMessagesAppViewController *)self presentationStyle]== 2)
  {
    v6 = self->_bubbleViewController;
    if (v6)
    {
      view = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
      [view bounds];
      Height = CGRectGetHeight(v19);

      [(NPKRemotePassActionCompanionBubbleViewController *)v6 suggestedViewSizeThatFits:1.79769313e308, 1.79769313e308];
      v10 = v9;
      v11 = pk_RemotePassAction_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (Height == v10)
      {
        if (v12)
        {
          v14 = pk_RemotePassAction_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 134217984;
            v16 = Height;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: No need to request resize current size to match existing one:%f", &v15, 0xCu);
          }
        }
      }

      else
      {
        if (v12)
        {
          v13 = pk_RemotePassAction_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 134218240;
            v16 = Height;
            v17 = 2048;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Requesting resize bubble: currentHeight:%f expectedHeight:%f", &v15, 0x16u);
          }
        }

        [(NPKRemotePassActionCompanionMessagesAppViewController *)self requestResize];
      }
    }
  }
}

- (NPKRemotePassActionUIService)remotePassUIService
{
  remotePassUIService = self->_remotePassUIService;
  if (!remotePassUIService)
  {
    v4 = objc_alloc_init(NPKRemotePassActionUIService);
    v5 = self->_remotePassUIService;
    self->_remotePassUIService = v4;

    [(NPKRemotePassActionUIService *)self->_remotePassUIService setDelegate:self];
    remotePassUIService = self->_remotePassUIService;
  }

  return remotePassUIService;
}

- (void)remotePassActionRequestBubbleViewController:(id)controller didTapMessage:(id)message
{
  controllerCopy = controller;
  messageCopy = message;
  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy4 = self;
      v56 = 2112;
      v57 = messageCopy;
      v58 = 2112;
      v59 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: App view controller: %@ did receive tap for message: %@ with sender: %@", buf, 0x20u);
    }
  }

  if (([messageCopy isFromMe] & 1) == 0)
  {
    remotePassAction = [messageCopy remotePassAction];
    underlyingMessage = [remotePassAction underlyingMessage];
    remotePassAction2 = [underlyingMessage remotePassAction];

    if (([(NPKRemotePassActionCompanionMessagesAppViewController *)remotePassAction2 isResponse]& 1) != 0)
    {
LABEL_44:

      goto LABEL_45;
    }

    request = [messageCopy request];
    action = [request action];
    v53 = 0;
    v16 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _canRequestRemoteActionBePerformed:action outError:&v53];
    v17 = v53;

    if (!v16)
    {
      v22 = pk_RemotePassAction_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v24 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = remotePassAction2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: App view controller: Unable to perform action: %@", buf, 0xCu);
        }
      }

      [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithDisplayableError:v17];
      goto LABEL_43;
    }

    request2 = [messageCopy request];
    if ([(NPKRemotePassActionCompanionMessagesAppViewController *)remotePassAction2 supportsTopUp])
    {
      enterValueRequest = [messageCopy enterValueRequest];
      if (enterValueRequest)
      {
        activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000074E4;
        v51[3] = &unk_100014680;
        v51[4] = self;
        enterValueRequest = enterValueRequest;
        v52 = enterValueRequest;
        [(NPKRemotePassActionCompanionMessagesAppViewController *)self _contactForConversation:activeConversation completion:v51];
        v21 = v52;
LABEL_19:

LABEL_41:
        goto LABEL_42;
      }

      v33 = pk_RemotePassAction_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        activeConversation = pk_RemotePassAction_log();
        if (!os_log_type_enabled(activeConversation, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 138412802;
        selfCopy4 = self;
        v56 = 2112;
        v57 = 0;
        v58 = 2112;
        v59 = request2;
        v35 = "Notice: App view controller: %@ Unable to identify enterValueRequest: %@ from request: %@";
LABEL_33:
        _os_log_impl(&_mh_execute_header, activeConversation, OS_LOG_TYPE_DEFAULT, v35, buf, 0x20u);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if ([(NPKRemotePassActionCompanionMessagesAppViewController *)remotePassAction2 supportsCommutePlanRenewal])
    {
      enterValueRequest = [messageCopy selectItemRequest];
      if (enterValueRequest)
      {
        activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100007594;
        v49[3] = &unk_100014680;
        v49[4] = self;
        enterValueRequest = enterValueRequest;
        v50 = enterValueRequest;
        [(NPKRemotePassActionCompanionMessagesAppViewController *)self _contactForConversation:activeConversation completion:v49];
        v21 = v50;
        goto LABEL_19;
      }

      v36 = pk_RemotePassAction_log();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (v37)
      {
        activeConversation = pk_RemotePassAction_log();
        if (!os_log_type_enabled(activeConversation, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 138412802;
        selfCopy4 = self;
        v56 = 2112;
        v57 = 0;
        v58 = 2112;
        v59 = request2;
        v35 = "Notice: App view controller: %@ Unable to identify selectItemRequest: %@ from request: %@";
        goto LABEL_33;
      }

LABEL_42:

LABEL_43:
      goto LABEL_44;
    }

    v25 = pk_RemotePassAction_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v56 = 2112;
        v57 = messageCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: App view controller: %@ did receive tap for unsupported message: %@", buf, 0x16u);
      }
    }

    if ((PKIsPhone() & 1) != 0 || PKIsPod())
    {
      v28 = NPKRemotePassActionAppExtensionIdentifier;
      v47 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
      [v47 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_SOFTWARE_UPDATE_TITLE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      v29 = v48 = request2;
      v30 = [NSBundle bundleWithIdentifier:v28];
      v31 = [v30 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_SOFTWARE_UPDATE_MESSAGE_IOS" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      enterValueRequest = NPKDisplayableError();

      request2 = v48;
      activeConversation = [NSBundle bundleWithIdentifier:v28];
      v32 = [activeConversation localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_SOFTWARE_UPDATE_SETTINGS_ACTION" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithDisplayableError:enterValueRequest actionButtonTitle:v32 actionHandler:&stru_1000146A0 showsConfirmButton:1];

      goto LABEL_41;
    }

    v38 = NPKRemotePassActionAppExtensionIdentifier;
    v39 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    enterValueRequest = [v39 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_MESSAGE_GENERIC" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];

    if (PKIsPad())
    {
      v40 = request2;
      v41 = @"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_MESSAGE_IPAD";
    }

    else
    {
      v40 = request2;
      if (!PKIsMac())
      {
        v44 = &CGRectGetHeight_ptr;
        goto LABEL_40;
      }

      v41 = @"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_MESSAGE_MAC";
    }

    v42 = [NSBundle bundleWithIdentifier:v38];
    v43 = [v42 localizedStringForKey:v41 value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];

    v44 = &CGRectGetHeight_ptr;
    enterValueRequest = v43;
LABEL_40:
    v45 = [v44[105] bundleWithIdentifier:v38];
    v46 = [v45 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_TITLE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    activeConversation = NPKDisplayableError();

    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithDisplayableError:activeConversation];
    request2 = v40;
    goto LABEL_41;
  }

LABEL_45:
}

- (void)remotePassActionUIService:(id)service didSelectEnteredValueAmount:(id)amount forRequestIdentifier:(id)identifier
{
  serviceCopy = service;
  amountCopy = amount;
  identifierCopy = identifier;
  activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  selectedMessage = [activeConversation selectedMessage];
  enterValueRequest = [selectedMessage enterValueRequest];

  identifier = [enterValueRequest identifier];
  LODWORD(selectedMessage) = [identifierCopy isEqualToString:identifier];

  if (selectedMessage)
  {
    v15 = pk_RemotePassAction_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        formattedStringValue = [amountCopy formattedStringValue];
        *buf = 138412546;
        v22 = serviceCopy;
        v23 = 2112;
        v24 = formattedStringValue;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionMessagesAppViewController: %@ did finish with currency amount %@", buf, 0x16u);
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000078B4;
    v20[3] = &unk_1000146C8;
    v20[4] = self;
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponseToRequest:enterValueRequest forTopUpAmount:amountCopy withCompletion:v20];
    remotePassUIService = self->_remotePassUIService;
    self->_remotePassUIService = 0;
  }
}

- (void)remotePassActionUIService:(id)service didSelectItemForRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier
{
  serviceCopy = service;
  amountCopy = amount;
  dataCopy = data;
  identifierCopy = identifier;
  activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  selectedMessage = [activeConversation selectedMessage];
  selectItemRequest = [selectedMessage selectItemRequest];

  identifier = [selectItemRequest identifier];
  LODWORD(selectedMessage) = [identifierCopy isEqualToString:identifier];

  if (selectedMessage)
  {
    v18 = pk_RemotePassAction_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v24 = serviceCopy;
        v25 = 2112;
        v26 = amountCopy;
        v27 = 2112;
        v28 = dataCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionMessagesAppViewController: %@ did finish for selected item with renewal amount %@, service provider data: %@", buf, 0x20u);
      }
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100007AC4;
    v22[3] = &unk_1000146C8;
    v22[4] = self;
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponseToRequest:selectItemRequest forRenewalAmount:amountCopy serviceProviderData:dataCopy withCompletion:v22];
    remotePassUIService = self->_remotePassUIService;
    self->_remotePassUIService = 0;
  }
}

- (void)remotePassActionUIService:(id)service didCancelForRequestIdentifier:(id)identifier
{
  serviceCopy = service;
  identifierCopy = identifier;
  activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  selectedMessage = [activeConversation selectedMessage];
  request = [selectedMessage request];

  identifier = [request identifier];
  LODWORD(selectedMessage) = [identifierCopy isEqualToString:identifier];

  if (selectedMessage)
  {
    v12 = pk_RemotePassAction_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionMessagesAppViewController: %@ did cancel", &v16, 0xCu);
      }
    }

    remotePassUIService = self->_remotePassUIService;
    self->_remotePassUIService = 0;
  }
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish
{
  finishCopy = finish;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D04;
  block[3] = &unk_1000146F0;
  objc_copyWeak(&v8, &location);
  v7 = finishCopy;
  v5 = finishCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007F38;
  v11[3] = &unk_100014718;
  coordinatorCopy = coordinator;
  paymentCopy = payment;
  selfCopy = self;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = paymentCopy;
  v10 = coordinatorCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)coordinator
{
  view = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePurchase:(id)purchase completion:(id)completion
{
  coordinatorCopy = coordinator;
  purchaseCopy = purchase;
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000822C;
  block[3] = &unk_100014740;
  v15 = coordinatorCopy;
  v16 = purchaseCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = purchaseCopy;
  v13 = coordinatorCopy;
  objc_copyWeak(&v18, &location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (BOOL)_canRequestRemoteActionBePerformed:(id)performed outError:(id *)error
{
  performedCopy = performed;
  unavailableActionBehavior = [performedCopy unavailableActionBehavior];
  v7 = unavailableActionBehavior;
  v8 = (unavailableActionBehavior & 2) == 0;
  v9 = ((unavailableActionBehavior << 62) >> 63) & 7;
  v10 = +[NSDate date];
  availableFrom = [performedCopy availableFrom];
  if (availableFrom)
  {
    v12 = availableFrom;
    availableFrom2 = [performedCopy availableFrom];
    v14 = [v10 compare:availableFrom2];

    if (v14 == -1)
    {
      v9 = 3;
    }

    v8 = (v7 & 2) == 0 && v14 != -1;
  }

  availableUntil = [performedCopy availableUntil];
  if (availableUntil)
  {
    v16 = availableUntil;
    availableUntil2 = [performedCopy availableUntil];
    v18 = [v10 compare:availableUntil2];

    if (v18 == 1)
    {
      v9 = 4;
    }

    v8 &= v18 != 1;
  }

  if (error && (v8 & 1) == 0)
  {
    *error = [PKPaymentPass displayableErrorForAction:performedCopy andReason:v9];
  }

  return v8;
}

- (id)_serviceProviderPaymentRequestForEnteredValueAmount:(id)amount recipientName:(id)name organization:(id)organization action:(id)action forLocalizedPassName:(id)passName
{
  nameCopy = name;
  v13 = NPKRemotePassActionAppExtensionIdentifier;
  passNameCopy = passName;
  actionCopy = action;
  organizationCopy = organization;
  amountCopy = amount;
  v18 = [NSBundle bundleWithIdentifier:v13];
  v19 = v18;
  if (nameCopy)
  {
    v20 = [v18 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL_WITH_GIVEN_NAME" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v20, nameCopy, passNameCopy];
  }

  else
  {
    v20 = [v18 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v20, passNameCopy, v30];
  }
  v21 = ;

  amount = [amountCopy amount];
  v23 = [PKPaymentSummaryItem summaryItemWithLabel:v21 amount:amount];
  v31[0] = v23;
  v24 = [PKPaymentSummaryItem summaryItemWithLabel:organizationCopy amount:amount];

  v31[1] = v24;
  v25 = [NSArray arrayWithObjects:v31 count:2];

  enteredValueItem = [actionCopy enteredValueItem];
  serviceProviderData = [enteredValueItem serviceProviderData];
  v28 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _serviceProviderPaymentRequestForServiceProviderData:serviceProviderData action:actionCopy amount:amountCopy summaryItems:v25];

  return v28;
}

- (id)_serviceProviderPaymentRequestForSelectedItemWithServiceProviderData:(id)data amount:(id)amount recipientName:(id)name organization:(id)organization action:(id)action forLocalizedPassName:(id)passName
{
  nameCopy = name;
  v14 = NPKRemotePassActionAppExtensionIdentifier;
  passNameCopy = passName;
  actionCopy = action;
  organizationCopy = organization;
  amountCopy = amount;
  dataCopy = data;
  v20 = [NSBundle bundleWithIdentifier:v14];
  v21 = v20;
  v31 = nameCopy;
  if (nameCopy)
  {
    v22 = [v20 localizedStringForKey:@"RENEW_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL_WITH_GIVEN_NAME" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v22, nameCopy, passNameCopy];
  }

  else
  {
    v22 = [v20 localizedStringForKey:@"RENEW_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v22, passNameCopy, v30];
  }
  v23 = ;

  amount = [amountCopy amount];
  v25 = [PKPaymentSummaryItem summaryItemWithLabel:v23 amount:amount];
  v33[0] = v25;
  v26 = [PKPaymentSummaryItem summaryItemWithLabel:organizationCopy amount:amount];

  v33[1] = v26;
  v27 = [NSArray arrayWithObjects:v33 count:2];

  v28 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _serviceProviderPaymentRequestForServiceProviderData:dataCopy action:actionCopy amount:amountCopy summaryItems:v27];

  return v28;
}

- (id)_serviceProviderPaymentRequestForServiceProviderData:(id)data action:(id)action amount:(id)amount summaryItems:(id)items
{
  dataCopy = data;
  actionCopy = action;
  amountCopy = amount;
  itemsCopy = items;
  amount = [amountCopy amount];
  v14 = amount;
  if (actionCopy && dataCopy && amount)
  {
    v15 = objc_alloc_init(PKOpaqueDataServiceProviderOrder);
    actionDescription = [actionCopy actionDescription];
    [v15 setItemDescription:actionDescription];

    v17 = [dataCopy mutableCopy];
    [v17 setObject:v14 forKey:PKServiceProviderOrderAmountKey];
    v18 = [v17 copy];

    [v15 setServiceProviderData:v18];
    serviceProviderIdentifier = [actionCopy serviceProviderIdentifier];
    [v15 setServiceProviderIdentifier:serviceProviderIdentifier];

    v20 = [[PKServiceProviderPaymentRequest alloc] initWithServiceProviderOrder:v15];
    currency = [amountCopy currency];
    [v20 setCurrencyCode:currency];

    serviceProviderAcceptedNetworks = [actionCopy serviceProviderAcceptedNetworks];
    [v20 setSupportedNetworks:serviceProviderAcceptedNetworks];

    [v20 setMerchantCapabilities:{objc_msgSend(actionCopy, "serviceProviderCapabilities")}];
    serviceProviderCountryCode = [actionCopy serviceProviderCountryCode];
    [v20 setCountryCode:serviceProviderCountryCode];

    serviceProviderSupportedCountries = [actionCopy serviceProviderSupportedCountries];
    [v20 setSupportedCountries:serviceProviderSupportedCountries];

    [v20 setPaymentSummaryItems:itemsCopy];
    dataCopy = v18;
  }

  else
  {
    v25 = pk_RemotePassAction_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      v27 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = 138412802;
        v30 = dataCopy;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = actionCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error: Missing information to construct a payment request! serviceProviderData: %@, amount: %@, action: %@", &v29, 0x20u);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (void)_presentPaymentSheetForPaymentRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = [[PKPaymentAuthorizationCoordinator alloc] initWithPaymentRequest:requestCopy];
  authorizationCoordinator = self->_authorizationCoordinator;
  self->_authorizationCoordinator = v8;

  activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  selectedMessage = [activeConversation selectedMessage];
  request = [selectedMessage request];

  action = [request action];
  v14 = self->_authorizationCoordinator;
  if (v14)
  {
    [(PKPaymentAuthorizationCoordinator *)v14 setDelegate:self];
    [(PKPaymentAuthorizationCoordinator *)self->_authorizationCoordinator _setPrivateDelegate:self];
    objc_initWeak(location, self);
    v15 = self->_authorizationCoordinator;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100008E28;
    v20[3] = &unk_100014768;
    objc_copyWeak(&v23, location);
    v22 = completionCopy;
    v20[4] = self;
    v21 = action;
    [(PKPaymentAuthorizationCoordinator *)v15 presentWithCompletion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    v16 = pk_RemotePassAction_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Unable to construct authorization coordinator!", location, 2u);
      }
    }

    v19 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorForAction:action];
    (*(completionCopy + 2))(completionCopy, 0, 0, v19);
  }
}

- (void)_insertResponseToRequest:(id)request forTopUpAmount:(id)amount withCompletion:(id)completion
{
  requestCopy = request;
  amountCopy = amount;
  completionCopy = completion;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(completionCopy);
      v24 = 138412802;
      v25 = requestCopy;
      v26 = 2112;
      v27 = amountCopy;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Inserting response to request %@ for amount: %@ with completion %@!", &v24, 0x20u);
    }
  }

  v15 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  identifier = [requestCopy identifier];
  [v15 setRequest:requestCopy forIdentifier:identifier];

  if ([requestCopy supportsTopUp])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = requestCopy;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      v19 = 0;
      goto LABEL_17;
    }

    action = v17;
    v19 = [[NPKRemotePassActionEnterValueResponse alloc] initWithTopUpAmount:amountCopy fromRequest:action withResult:1];
  }

  else
  {
    action = [requestCopy action];
    v20 = pk_RemotePassAction_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        type = [action type];
        v24 = 138412802;
        v25 = 0;
        v26 = 2112;
        v27 = requestCopy;
        v28 = 2048;
        v29 = type;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error: Unable to create response: %@ to request: %@ of action type: %lu", &v24, 0x20u);
      }
    }

    v19 = 0;
  }

LABEL_17:
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponse:v19 toRequest:requestCopy withCompletion:completionCopy];
}

- (void)_insertResponseToRequest:(id)request forRenewalAmount:(id)amount serviceProviderData:(id)data withCompletion:(id)completion
{
  requestCopy = request;
  amountCopy = amount;
  dataCopy = data;
  completionCopy = completion;
  v14 = pk_RemotePassAction_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_retainBlock(completionCopy);
      v27 = 138412802;
      v28 = requestCopy;
      v29 = 2112;
      v30 = amountCopy;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Inserting response to request %@ for renewal amount: %@ with completion %@!", &v27, 0x20u);
    }
  }

  v18 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  identifier = [requestCopy identifier];
  [v18 setRequest:requestCopy forIdentifier:identifier];

  if ([requestCopy supportsCommutePlanRenewal])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = requestCopy;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      v22 = 0;
      goto LABEL_17;
    }

    action = v20;
    v22 = [[NPKRemotePassActionSelectItemResponse alloc] initWithRenewalAmount:amountCopy serviceProviderData:dataCopy fromRequest:action withResult:1];
  }

  else
  {
    action = [requestCopy action];
    v23 = pk_RemotePassAction_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        type = [action type];
        v27 = 138412802;
        v28 = 0;
        v29 = 2112;
        v30 = requestCopy;
        v31 = 2048;
        v32 = type;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error: Unable to create response: %@ to request: %@ of action type: %lu", &v27, 0x20u);
      }
    }

    v22 = 0;
  }

LABEL_17:
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponse:v22 toRequest:requestCopy withCompletion:completionCopy];
}

- (void)_insertResponse:(id)response toRequest:(id)request withCompletion:(id)completion
{
  responseCopy = response;
  requestCopy = request;
  completionCopy = completion;
  underlyingMessage = [responseCopy underlyingMessage];
  if (underlyingMessage)
  {
    activeConversation = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009698;
    v18[3] = &unk_100014790;
    v19 = underlyingMessage;
    v20 = responseCopy;
    selfCopy = self;
    v22 = requestCopy;
    v23 = completionCopy;
    [activeConversation insertMessage:v19 completionHandler:v18];

    v13 = v19;
LABEL_9:

    goto LABEL_10;
  }

  v14 = pk_RemotePassAction_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (v15)
  {
    v16 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error: Unable to identify response (%@) to insert into conversation.", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    action = [requestCopy action];
    v13 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorForAction:action];

    (*(completionCopy + 2))(completionCopy, v13);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_presentAlertWithDisplayableError:(id)error
{
  errorCopy = error;
  v7 = PKTitleForDisplayableError();
  v5 = PKMessageForDisplayableError();

  v6 = PKLocalizedString(@"OK_BUTTON_TITLE");
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithTitle:v7 message:v5 actionButtonTitle:0 actionButtonHandler:0 confirmButtonTitle:v6];
}

- (void)_presentAlertWithDisplayableError:(id)error actionButtonTitle:(id)title actionHandler:(id)handler showsConfirmButton:(BOOL)button
{
  titleCopy = title;
  handlerCopy = handler;
  errorCopy = error;
  v12 = PKTitleForDisplayableError();
  v13 = PKMessageForDisplayableError();

  if (button)
  {
    v14 = PKLocalizedString(@"OK_BUTTON_TITLE");
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithTitle:v12 message:v13 actionButtonTitle:titleCopy actionButtonHandler:handlerCopy confirmButtonTitle:v14];
  }

  else
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithTitle:v12 message:v13 actionButtonTitle:titleCopy actionButtonHandler:handlerCopy confirmButtonTitle:0];
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message actionButtonTitle:(id)buttonTitle actionButtonHandler:(id)handler confirmButtonTitle:(id)confirmButtonTitle
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  handlerCopy = handler;
  confirmButtonTitleCopy = confirmButtonTitle;
  v16 = +[NSMutableDictionary dictionary];
  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
  [v16 setObject:titleCopy forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v16 setObject:messageCopy forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  v17 = [buttonTitleCopy length];
  v18 = kCFUserNotificationDefaultButtonTitleKey;
  if (v17)
  {
    [v16 setObject:buttonTitleCopy forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
    v18 = kCFUserNotificationAlternateButtonTitleKey;
  }

  [v16 setObject:confirmButtonTitleCopy forKeyedSubscript:v18];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100009BD0;
  v23[3] = &unk_1000147B8;
  v28 = v17 != 0;
  v24 = titleCopy;
  v25 = messageCopy;
  v26 = buttonTitleCopy;
  v27 = handlerCopy;
  v19 = handlerCopy;
  v20 = buttonTitleCopy;
  v21 = messageCopy;
  v22 = titleCopy;
  [PKUserNotificationAgent presentNotificationWithParameters:v16 responseHandler:v23];
}

- (void)_contactForConversation:(id)conversation completion:(id)completion
{
  conversationCopy = conversation;
  completionCopy = completion;
  v7 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v8 = [v7 cachedContactForConversation:conversationCopy];

  if (v8)
  {
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v9 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009E58;
    v10[3] = &unk_1000147E0;
    v11 = completionCopy;
    [v9 fetchContactForConversation:conversationCopy completion:v10];
  }
}

- (BOOL)_isGroupConversation:(id)conversation
{
  recipientAddresses = [conversation recipientAddresses];
  v4 = [recipientAddresses count] > 1;

  return v4;
}

- (void)_restoreRequestDataURLForResponseMessage:(id)message toMatchRequest:(id)request
{
  messageCopy = message;
  requestCopy = request;
  remotePassAction = [messageCopy remotePassAction];
  isResponse = [remotePassAction isResponse];

  if (isResponse)
  {
    [messageCopy updateDataURLForRemoteAction:requestCopy];
  }
}

- (id)_genericErrorTitleForAction:(id)action
{
  actionCopy = action;
  title = [actionCopy title];
  if ([title length])
  {
    goto LABEL_7;
  }

  enteredValueItem = [actionCopy enteredValueItem];

  if (enteredValueItem)
  {
    v6 = @"RELOAD_REQUEST_TITLE";
  }

  else
  {
    selectedActionItems = [actionCopy selectedActionItems];
    v8 = [selectedActionItems count];

    if (!v8)
    {
      goto LABEL_7;
    }

    v6 = @"RENEW_REQUEST_TITLE";
  }

  v9 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
  v10 = [v9 localizedStringForKey:v6 value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];

  title = v10;
LABEL_7:
  if ([title length])
  {
    v11 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    v12 = [v11 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_TITLE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    v13 = [NSString stringWithFormat:v12, title];
  }

  else
  {
    v11 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    v13 = [v11 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_TITLE_FALLBACK" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
  }

  return v13;
}

- (id)_genericErrorForAction:(id)action
{
  v3 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorTitleForAction:action];
  v4 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
  v5 = [v4 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_GENERIC_MESSAGE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
  v6 = NPKDisplayableError();

  return v6;
}

@end
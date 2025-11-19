@interface NPKRemotePassActionCompanionMessagesAppViewController
- (BOOL)_canRequestRemoteActionBePerformed:(id)a3 outError:(id *)a4;
- (BOOL)_isGroupConversation:(id)a3;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (NPKRemotePassActionUIService)remotePassUIService;
- (id)_genericErrorForAction:(id)a3;
- (id)_genericErrorTitleForAction:(id)a3;
- (id)_serviceProviderPaymentRequestForEnteredValueAmount:(id)a3 recipientName:(id)a4 organization:(id)a5 action:(id)a6 forLocalizedPassName:(id)a7;
- (id)_serviceProviderPaymentRequestForSelectedItemWithServiceProviderData:(id)a3 amount:(id)a4 recipientName:(id)a5 organization:(id)a6 action:(id)a7 forLocalizedPassName:(id)a8;
- (id)_serviceProviderPaymentRequestForServiceProviderData:(id)a3 action:(id)a4 amount:(id)a5 summaryItems:(id)a6;
- (id)_viewControllerForPresentationStyle:(unint64_t)a3 withConversation:(id)a4;
- (id)_viewControllerForTranscriptPresentationStyleWithConversation:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_contactForConversation:(id)a3 completion:(id)a4;
- (void)_insertResponse:(id)a3 toRequest:(id)a4 withCompletion:(id)a5;
- (void)_insertResponseToRequest:(id)a3 forRenewalAmount:(id)a4 serviceProviderData:(id)a5 withCompletion:(id)a6;
- (void)_insertResponseToRequest:(id)a3 forTopUpAmount:(id)a4 withCompletion:(id)a5;
- (void)_presentAlertWithDisplayableError:(id)a3;
- (void)_presentAlertWithDisplayableError:(id)a3 actionButtonTitle:(id)a4 actionHandler:(id)a5 showsConfirmButton:(BOOL)a6;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 actionButtonTitle:(id)a5 actionButtonHandler:(id)a6 confirmButtonTitle:(id)a7;
- (void)_presentPaymentSheetForPaymentRequest:(id)a3 withCompletion:(id)a4;
- (void)_removeAllChildViewControllers;
- (void)_requestResizeIfNeeded;
- (void)_restoreRequestDataURLForResponseMessage:(id)a3 toMatchRequest:(id)a4;
- (void)_showViewController:(id)a3;
- (void)_validateMessageForSending:(id)a3 conversation:(id)a4 associatedText:(id)a5 completionHandler:(id)a6;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)remotePassActionRequestBubbleViewController:(id)a3 didTapMessage:(id)a4;
- (void)remotePassActionUIService:(id)a3 didCancelForRequestIdentifier:(id)a4;
- (void)remotePassActionUIService:(id)a3 didSelectEnteredValueAmount:(id)a4 forRequestIdentifier:(id)a5;
- (void)remotePassActionUIService:(id)a3 didSelectItemForRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestIdentifier:(id)a6;
- (void)requestPresentationStyle:(unint64_t)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation NPKRemotePassActionCompanionMessagesAppViewController

- (void)didBecomeActiveWithConversation:(id)a3
{
  v6.receiver = self;
  v6.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  v4 = a3;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v6 didBecomeActiveWithConversation:v4];
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _removeAllChildViewControllers:v6.receiver];
  v5 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _viewControllerForPresentationStyle:[(NPKRemotePassActionCompanionMessagesAppViewController *)self presentationStyle] withConversation:v4];

  if (v5)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _showViewController:v5];
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _requestResizeIfNeeded];
  }
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v5 willTransitionToPresentationStyle:?];
  if (!a3)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self resignFirstResponder];
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v5 didTransitionToPresentationStyle:?];
  if (!a3)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self dismiss];
  }
}

- (void)requestPresentationStyle:(unint64_t)a3
{
  v5 = pk_RemotePassAction_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested transition to presentation style:%lu", buf, 0xCu);
    }
  }

  v8.receiver = self;
  v8.super_class = NPKRemotePassActionCompanionMessagesAppViewController;
  [(NPKRemotePassActionCompanionMessagesAppViewController *)&v8 requestPresentationStyle:a3];
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = pk_RemotePassAction_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Did cancel sending message: %@, conversation: %@", &v16, 0x16u);
    }
  }

  v10 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v11 = [v5 response];
  v12 = [v11 identifier];
  v13 = [v10 requestForIdentifier:v12];

  if (v13)
  {
    v14 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
    v15 = [v13 identifier];
    [v14 removeRequestForIdentifier:v15];
  }
}

- (void)_validateMessageForSending:(id)a3 conversation:(id)a4 associatedText:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = pk_RemotePassAction_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_retainBlock(v11);
      *buf = 138412546;
      v69 = v9;
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
  v16 = v9;
  v66 = v16;
  v17 = v11;
  v67 = v17;
  v18 = objc_retainBlock(v65);
  v19 = [v16 response];
  v20 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v21 = [v19 identifier];
  v22 = [v20 requestForIdentifier:v21];

  v23 = [v22 action];
  if ((PKiMessageIsActive() & 1) == 0)
  {
    v37 = v18;
    v59 = v16;
    v24 = v22;
    v25 = v19;
    v26 = v17;
    v27 = v10;
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

    v41 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorTitleForAction:v23];
    v42 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    [v42 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_IMESSAGE_DISABLED_MESSAGE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    v44 = v43 = v23;
    v35 = NPKDisplayableError();

    v36 = v43;
    v18 = v37;
    (v37[2])(v37, 0, 0, v35);
    goto LABEL_17;
  }

  if ([(NPKRemotePassActionCompanionMessagesAppViewController *)self _isGroupConversation:v10])
  {
    v59 = v16;
    v24 = v22;
    v25 = v19;
    v26 = v17;
    v27 = v10;
    pk_RemotePassAction_log();
    v29 = v28 = v23;
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
    v10 = v27;
    v17 = v26;
    v19 = v25;
    v22 = v24;
    v16 = v59;
    goto LABEL_18;
  }

  if (v23)
  {
    v58 = v10;
    [v23 serviceProviderAcceptedNetworks];
    v46 = v45 = v23;
    v47 = [v45 serviceProviderSupportedCountries];
    [v45 serviceProviderCapabilities];
    PaymentsUsingNetworksIssuerCountryCodesWithCapabilities = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilities();

    if (PaymentsUsingNetworksIssuerCountryCodesWithCapabilities)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100006304;
      v60[3] = &unk_1000145F0;
      v61 = v22;
      v62 = self;
      v63 = v19;
      v64 = v18;
      v10 = v58;
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
      v10 = v58;
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

- (id)_viewControllerForPresentationStyle:(unint64_t)a3 withConversation:(id)a4
{
  v5 = a4;
  if ([(NPKRemotePassActionCompanionMessagesAppViewController *)self presentationStyle]== 2)
  {
    v6 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _viewControllerForTranscriptPresentationStyleWithConversation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_viewControllerForTranscriptPresentationStyleWithConversation:(id)a3
{
  v4 = a3;
  v5 = [NPKRemotePassActionCompanionBubbleViewController alloc];
  v6 = [v4 selectedMessage];

  v7 = [(NPKRemotePassActionCompanionBubbleViewController *)v5 initWithMessage:v6 delegate:self];
  bubbleViewController = self->_bubbleViewController;
  self->_bubbleViewController = v7;

  v9 = self->_bubbleViewController;

  return v9;
}

- (void)_showViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self addChildViewController:v4];
    v5 = [v4 view];
    [v5 setAutoresizingMask:18];

    v6 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    v7 = [v4 view];
    [v6 addSubview:v7];

    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _balloonMaskEdgeInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v39 = [v4 view];
    v37 = [v39 topAnchor];
    v38 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:v9];
    v42[0] = v35;
    v34 = [v4 view];
    v32 = [v34 bottomAnchor];
    v33 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    v31 = [v33 bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:v13];
    v42[1] = v30;
    v29 = [v4 view];
    v27 = [v29 leadingAnchor];
    v28 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    v16 = [v28 leadingAnchor];
    v17 = [v27 constraintEqualToAnchor:v16 constant:v11];
    v42[2] = v17;
    v18 = [v4 view];
    v19 = [v18 trailingAnchor];
    v20 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
    v21 = [v20 trailingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:v15];
    v42[3] = v22;
    v23 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    [v4 didMoveToParentViewController:self];
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
  v3 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self childViewControllers];
  v5 = [v3 copy];

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
      v7 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
      [v7 bounds];
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

- (void)remotePassActionRequestBubbleViewController:(id)a3 didTapMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v55 = self;
      v56 = 2112;
      v57 = v7;
      v58 = 2112;
      v59 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: App view controller: %@ did receive tap for message: %@ with sender: %@", buf, 0x20u);
    }
  }

  if (([v7 isFromMe] & 1) == 0)
  {
    v11 = [v7 remotePassAction];
    v12 = [v11 underlyingMessage];
    v13 = [v12 remotePassAction];

    if (([(NPKRemotePassActionCompanionMessagesAppViewController *)v13 isResponse]& 1) != 0)
    {
LABEL_44:

      goto LABEL_45;
    }

    v14 = [v7 request];
    v15 = [v14 action];
    v53 = 0;
    v16 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _canRequestRemoteActionBePerformed:v15 outError:&v53];
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
          v55 = v13;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: App view controller: Unable to perform action: %@", buf, 0xCu);
        }
      }

      [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithDisplayableError:v17];
      goto LABEL_43;
    }

    v18 = [v7 request];
    if ([(NPKRemotePassActionCompanionMessagesAppViewController *)v13 supportsTopUp])
    {
      v19 = [v7 enterValueRequest];
      if (v19)
      {
        v20 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000074E4;
        v51[3] = &unk_100014680;
        v51[4] = self;
        v19 = v19;
        v52 = v19;
        [(NPKRemotePassActionCompanionMessagesAppViewController *)self _contactForConversation:v20 completion:v51];
        v21 = v52;
LABEL_19:

LABEL_41:
        goto LABEL_42;
      }

      v33 = pk_RemotePassAction_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        v20 = pk_RemotePassAction_log();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 138412802;
        v55 = self;
        v56 = 2112;
        v57 = 0;
        v58 = 2112;
        v59 = v18;
        v35 = "Notice: App view controller: %@ Unable to identify enterValueRequest: %@ from request: %@";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v35, buf, 0x20u);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if ([(NPKRemotePassActionCompanionMessagesAppViewController *)v13 supportsCommutePlanRenewal])
    {
      v19 = [v7 selectItemRequest];
      if (v19)
      {
        v20 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100007594;
        v49[3] = &unk_100014680;
        v49[4] = self;
        v19 = v19;
        v50 = v19;
        [(NPKRemotePassActionCompanionMessagesAppViewController *)self _contactForConversation:v20 completion:v49];
        v21 = v50;
        goto LABEL_19;
      }

      v36 = pk_RemotePassAction_log();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (v37)
      {
        v20 = pk_RemotePassAction_log();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 138412802;
        v55 = self;
        v56 = 2112;
        v57 = 0;
        v58 = 2112;
        v59 = v18;
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
        v55 = self;
        v56 = 2112;
        v57 = v7;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: App view controller: %@ did receive tap for unsupported message: %@", buf, 0x16u);
      }
    }

    if ((PKIsPhone() & 1) != 0 || PKIsPod())
    {
      v28 = NPKRemotePassActionAppExtensionIdentifier;
      v47 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
      [v47 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_SOFTWARE_UPDATE_TITLE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      v29 = v48 = v18;
      v30 = [NSBundle bundleWithIdentifier:v28];
      v31 = [v30 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_SOFTWARE_UPDATE_MESSAGE_IOS" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      v19 = NPKDisplayableError();

      v18 = v48;
      v20 = [NSBundle bundleWithIdentifier:v28];
      v32 = [v20 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_SOFTWARE_UPDATE_SETTINGS_ACTION" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
      [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithDisplayableError:v19 actionButtonTitle:v32 actionHandler:&stru_1000146A0 showsConfirmButton:1];

      goto LABEL_41;
    }

    v38 = NPKRemotePassActionAppExtensionIdentifier;
    v39 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    v19 = [v39 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_MESSAGE_GENERIC" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];

    if (PKIsPad())
    {
      v40 = v18;
      v41 = @"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_MESSAGE_IPAD";
    }

    else
    {
      v40 = v18;
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
    v19 = v43;
LABEL_40:
    v45 = [v44[105] bundleWithIdentifier:v38];
    v46 = [v45 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_UNSUPPORTED_PLATFORM_TITLE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    v20 = NPKDisplayableError();

    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithDisplayableError:v20];
    v18 = v40;
    goto LABEL_41;
  }

LABEL_45:
}

- (void)remotePassActionUIService:(id)a3 didSelectEnteredValueAmount:(id)a4 forRequestIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  v12 = [v11 selectedMessage];
  v13 = [v12 enterValueRequest];

  v14 = [v13 identifier];
  LODWORD(v12) = [v10 isEqualToString:v14];

  if (v12)
  {
    v15 = pk_RemotePassAction_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v9 formattedStringValue];
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionMessagesAppViewController: %@ did finish with currency amount %@", buf, 0x16u);
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000078B4;
    v20[3] = &unk_1000146C8;
    v20[4] = self;
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponseToRequest:v13 forTopUpAmount:v9 withCompletion:v20];
    remotePassUIService = self->_remotePassUIService;
    self->_remotePassUIService = 0;
  }
}

- (void)remotePassActionUIService:(id)a3 didSelectItemForRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  v15 = [v14 selectedMessage];
  v16 = [v15 selectItemRequest];

  v17 = [v16 identifier];
  LODWORD(v15) = [v13 isEqualToString:v17];

  if (v15)
  {
    v18 = pk_RemotePassAction_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v24 = v10;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionMessagesAppViewController: %@ did finish for selected item with renewal amount %@, service provider data: %@", buf, 0x20u);
      }
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100007AC4;
    v22[3] = &unk_1000146C8;
    v22[4] = self;
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponseToRequest:v16 forRenewalAmount:v11 serviceProviderData:v12 withCompletion:v22];
    remotePassUIService = self->_remotePassUIService;
    self->_remotePassUIService = 0;
  }
}

- (void)remotePassActionUIService:(id)a3 didCancelForRequestIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  v9 = [v8 selectedMessage];
  v10 = [v9 request];

  v11 = [v10 identifier];
  LODWORD(v9) = [v7 isEqualToString:v11];

  if (v9)
  {
    v12 = pk_RemotePassAction_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionMessagesAppViewController: %@ did cancel", &v16, 0xCu);
      }
    }

    remotePassUIService = self->_remotePassUIService;
    self->_remotePassUIService = 0;
  }
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D04;
  block[3] = &unk_1000146F0;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007F38;
  v11[3] = &unk_100014718;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000822C;
  block[3] = &unk_100014740;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  objc_copyWeak(&v18, &location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (BOOL)_canRequestRemoteActionBePerformed:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [v5 unavailableActionBehavior];
  v7 = v6;
  v8 = (v6 & 2) == 0;
  v9 = ((v6 << 62) >> 63) & 7;
  v10 = +[NSDate date];
  v11 = [v5 availableFrom];
  if (v11)
  {
    v12 = v11;
    v13 = [v5 availableFrom];
    v14 = [v10 compare:v13];

    if (v14 == -1)
    {
      v9 = 3;
    }

    v8 = (v7 & 2) == 0 && v14 != -1;
  }

  v15 = [v5 availableUntil];
  if (v15)
  {
    v16 = v15;
    v17 = [v5 availableUntil];
    v18 = [v10 compare:v17];

    if (v18 == 1)
    {
      v9 = 4;
    }

    v8 &= v18 != 1;
  }

  if (a4 && (v8 & 1) == 0)
  {
    *a4 = [PKPaymentPass displayableErrorForAction:v5 andReason:v9];
  }

  return v8;
}

- (id)_serviceProviderPaymentRequestForEnteredValueAmount:(id)a3 recipientName:(id)a4 organization:(id)a5 action:(id)a6 forLocalizedPassName:(id)a7
{
  v12 = a4;
  v13 = NPKRemotePassActionAppExtensionIdentifier;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [NSBundle bundleWithIdentifier:v13];
  v19 = v18;
  if (v12)
  {
    v20 = [v18 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL_WITH_GIVEN_NAME" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v20, v12, v14];
  }

  else
  {
    v20 = [v18 localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v20, v14, v30];
  }
  v21 = ;

  v22 = [v17 amount];
  v23 = [PKPaymentSummaryItem summaryItemWithLabel:v21 amount:v22];
  v31[0] = v23;
  v24 = [PKPaymentSummaryItem summaryItemWithLabel:v16 amount:v22];

  v31[1] = v24;
  v25 = [NSArray arrayWithObjects:v31 count:2];

  v26 = [v15 enteredValueItem];
  v27 = [v26 serviceProviderData];
  v28 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _serviceProviderPaymentRequestForServiceProviderData:v27 action:v15 amount:v17 summaryItems:v25];

  return v28;
}

- (id)_serviceProviderPaymentRequestForSelectedItemWithServiceProviderData:(id)a3 amount:(id)a4 recipientName:(id)a5 organization:(id)a6 action:(id)a7 forLocalizedPassName:(id)a8
{
  v13 = a5;
  v14 = NPKRemotePassActionAppExtensionIdentifier;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v20 = [NSBundle bundleWithIdentifier:v14];
  v21 = v20;
  v31 = v13;
  if (v13)
  {
    v22 = [v20 localizedStringForKey:@"RENEW_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL_WITH_GIVEN_NAME" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v22, v13, v15];
  }

  else
  {
    v22 = [v20 localizedStringForKey:@"RENEW_REMOTE_PAYMENT_PASS_ACTION_SUMMARY_LABEL" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    [NSString localizedStringWithFormat:v22, v15, v30];
  }
  v23 = ;

  v24 = [v18 amount];
  v25 = [PKPaymentSummaryItem summaryItemWithLabel:v23 amount:v24];
  v33[0] = v25;
  v26 = [PKPaymentSummaryItem summaryItemWithLabel:v17 amount:v24];

  v33[1] = v26;
  v27 = [NSArray arrayWithObjects:v33 count:2];

  v28 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _serviceProviderPaymentRequestForServiceProviderData:v19 action:v16 amount:v18 summaryItems:v27];

  return v28;
}

- (id)_serviceProviderPaymentRequestForServiceProviderData:(id)a3 action:(id)a4 amount:(id)a5 summaryItems:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 amount];
  v14 = v13;
  if (v10 && v9 && v13)
  {
    v15 = objc_alloc_init(PKOpaqueDataServiceProviderOrder);
    v16 = [v10 actionDescription];
    [v15 setItemDescription:v16];

    v17 = [v9 mutableCopy];
    [v17 setObject:v14 forKey:PKServiceProviderOrderAmountKey];
    v18 = [v17 copy];

    [v15 setServiceProviderData:v18];
    v19 = [v10 serviceProviderIdentifier];
    [v15 setServiceProviderIdentifier:v19];

    v20 = [[PKServiceProviderPaymentRequest alloc] initWithServiceProviderOrder:v15];
    v21 = [v11 currency];
    [v20 setCurrencyCode:v21];

    v22 = [v10 serviceProviderAcceptedNetworks];
    [v20 setSupportedNetworks:v22];

    [v20 setMerchantCapabilities:{objc_msgSend(v10, "serviceProviderCapabilities")}];
    v23 = [v10 serviceProviderCountryCode];
    [v20 setCountryCode:v23];

    v24 = [v10 serviceProviderSupportedCountries];
    [v20 setSupportedCountries:v24];

    [v20 setPaymentSummaryItems:v12];
    v9 = v18;
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
        v30 = v9;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error: Missing information to construct a payment request! serviceProviderData: %@, amount: %@, action: %@", &v29, 0x20u);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (void)_presentPaymentSheetForPaymentRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[PKPaymentAuthorizationCoordinator alloc] initWithPaymentRequest:v6];
  authorizationCoordinator = self->_authorizationCoordinator;
  self->_authorizationCoordinator = v8;

  v10 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
  v11 = [v10 selectedMessage];
  v12 = [v11 request];

  v13 = [v12 action];
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
    v22 = v7;
    v20[4] = self;
    v21 = v13;
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

    v19 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorForAction:v13];
    (*(v7 + 2))(v7, 0, 0, v19);
  }
}

- (void)_insertResponseToRequest:(id)a3 forTopUpAmount:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(v10);
      v24 = 138412802;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Inserting response to request %@ for amount: %@ with completion %@!", &v24, 0x20u);
    }
  }

  v15 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v16 = [v8 identifier];
  [v15 setRequest:v8 forIdentifier:v16];

  if ([v8 supportsTopUp])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v8;
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

    v18 = v17;
    v19 = [[NPKRemotePassActionEnterValueResponse alloc] initWithTopUpAmount:v9 fromRequest:v18 withResult:1];
  }

  else
  {
    v18 = [v8 action];
    v20 = pk_RemotePassAction_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v18 type];
        v24 = 138412802;
        v25 = 0;
        v26 = 2112;
        v27 = v8;
        v28 = 2048;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error: Unable to create response: %@ to request: %@ of action type: %lu", &v24, 0x20u);
      }
    }

    v19 = 0;
  }

LABEL_17:
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponse:v19 toRequest:v8 withCompletion:v10];
}

- (void)_insertResponseToRequest:(id)a3 forRenewalAmount:(id)a4 serviceProviderData:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_RemotePassAction_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_retainBlock(v13);
      v27 = 138412802;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Inserting response to request %@ for renewal amount: %@ with completion %@!", &v27, 0x20u);
    }
  }

  v18 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v19 = [v10 identifier];
  [v18 setRequest:v10 forIdentifier:v19];

  if ([v10 supportsCommutePlanRenewal])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v10;
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

    v21 = v20;
    v22 = [[NPKRemotePassActionSelectItemResponse alloc] initWithRenewalAmount:v11 serviceProviderData:v12 fromRequest:v21 withResult:1];
  }

  else
  {
    v21 = [v10 action];
    v23 = pk_RemotePassAction_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v21 type];
        v27 = 138412802;
        v28 = 0;
        v29 = 2112;
        v30 = v10;
        v31 = 2048;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error: Unable to create response: %@ to request: %@ of action type: %lu", &v27, 0x20u);
      }
    }

    v22 = 0;
  }

LABEL_17:
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _insertResponse:v22 toRequest:v10 withCompletion:v13];
}

- (void)_insertResponse:(id)a3 toRequest:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 underlyingMessage];
  if (v11)
  {
    v12 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self activeConversation];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009698;
    v18[3] = &unk_100014790;
    v19 = v11;
    v20 = v8;
    v21 = self;
    v22 = v9;
    v23 = v10;
    [v12 insertMessage:v19 completionHandler:v18];

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

  if (v10)
  {
    v17 = [v9 action];
    v13 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorForAction:v17];

    (*(v10 + 2))(v10, v13);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_presentAlertWithDisplayableError:(id)a3
{
  v4 = a3;
  v7 = PKTitleForDisplayableError();
  v5 = PKMessageForDisplayableError();

  v6 = PKLocalizedString(@"OK_BUTTON_TITLE");
  [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithTitle:v7 message:v5 actionButtonTitle:0 actionButtonHandler:0 confirmButtonTitle:v6];
}

- (void)_presentAlertWithDisplayableError:(id)a3 actionButtonTitle:(id)a4 actionHandler:(id)a5 showsConfirmButton:(BOOL)a6
{
  v15 = a4;
  v10 = a5;
  v11 = a3;
  v12 = PKTitleForDisplayableError();
  v13 = PKMessageForDisplayableError();

  if (a6)
  {
    v14 = PKLocalizedString(@"OK_BUTTON_TITLE");
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithTitle:v12 message:v13 actionButtonTitle:v15 actionButtonHandler:v10 confirmButtonTitle:v14];
  }

  else
  {
    [(NPKRemotePassActionCompanionMessagesAppViewController *)self _presentAlertWithTitle:v12 message:v13 actionButtonTitle:v15 actionButtonHandler:v10 confirmButtonTitle:0];
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 actionButtonTitle:(id)a5 actionButtonHandler:(id)a6 confirmButtonTitle:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSMutableDictionary dictionary];
  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
  [v16 setObject:v11 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v16 setObject:v12 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  v17 = [v13 length];
  v18 = kCFUserNotificationDefaultButtonTitleKey;
  if (v17)
  {
    [v16 setObject:v13 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
    v18 = kCFUserNotificationAlternateButtonTitleKey;
  }

  [v16 setObject:v15 forKeyedSubscript:v18];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100009BD0;
  v23[3] = &unk_1000147B8;
  v28 = v17 != 0;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  [PKUserNotificationAgent presentNotificationWithParameters:v16 responseHandler:v23];
}

- (void)_contactForConversation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
  v8 = [v7 cachedContactForConversation:v5];

  if (v8)
  {
    v6[2](v6, v8);
  }

  else
  {
    v9 = +[NPKRemotePassActionCompanionConversationManager sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009E58;
    v10[3] = &unk_1000147E0;
    v11 = v6;
    [v9 fetchContactForConversation:v5 completion:v10];
  }
}

- (BOOL)_isGroupConversation:(id)a3
{
  v3 = [a3 recipientAddresses];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)_restoreRequestDataURLForResponseMessage:(id)a3 toMatchRequest:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 remotePassAction];
  v7 = [v6 isResponse];

  if (v7)
  {
    [v8 updateDataURLForRemoteAction:v5];
  }
}

- (id)_genericErrorTitleForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  if ([v4 length])
  {
    goto LABEL_7;
  }

  v5 = [v3 enteredValueItem];

  if (v5)
  {
    v6 = @"RELOAD_REQUEST_TITLE";
  }

  else
  {
    v7 = [v3 selectedActionItems];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_7;
    }

    v6 = @"RENEW_REQUEST_TITLE";
  }

  v9 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
  v10 = [v9 localizedStringForKey:v6 value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];

  v4 = v10;
LABEL_7:
  if ([v4 length])
  {
    v11 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    v12 = [v11 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_TITLE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
    v13 = [NSString stringWithFormat:v12, v4];
  }

  else
  {
    v11 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
    v13 = [v11 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_TITLE_FALLBACK" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
  }

  return v13;
}

- (id)_genericErrorForAction:(id)a3
{
  v3 = [(NPKRemotePassActionCompanionMessagesAppViewController *)self _genericErrorTitleForAction:a3];
  v4 = [NSBundle bundleWithIdentifier:NPKRemotePassActionAppExtensionIdentifier];
  v5 = [v4 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_ERROR_GENERIC_MESSAGE" value:&stru_100014880 table:@"RemotePaymentPassActionsCompanionMessagesExtension"];
  v6 = NPKDisplayableError();

  return v6;
}

@end
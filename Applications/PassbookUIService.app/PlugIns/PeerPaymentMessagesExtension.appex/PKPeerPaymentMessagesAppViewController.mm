@interface PKPeerPaymentMessagesAppViewController
- (BOOL)_accountIsLocked;
- (BOOL)_canPerformQuoteForMessage:(id)a3 error:(id *)a4;
- (BOOL)_handlePaymentRequestMessage:(id)a3;
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (BOOL)_iMessageIsEnabled;
- (BOOL)_isBusinessConversation;
- (BOOL)_isGroupConversation;
- (BOOL)_openWallet;
- (BOOL)_peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:(id)a3;
- (BOOL)_recipientAddressFoundInContacts:(id)a3;
- (BOOL)_recipientAddressIsValid:(id)a3;
- (BOOL)_requiresEnablement;
- (BOOL)_requiresSetupFlow;
- (BOOL)displaysAfterAppearance;
- (CGSize)_contentSizeThatFits:(CGSize)result presentationStyle:(unint64_t)a4;
- (CGSize)contentSize;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (PKPeerPaymentMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_analyticsP2PContext;
- (id)_analyticsPageTag;
- (id)_conversationAddress;
- (id)_createViewControllerForState:(unint64_t)a3;
- (id)_currentRequestTokenForAmount:(id)a3;
- (id)_identifiedRecipientForRecipientAddress:(id)a3;
- (id)_inCurrencyAmountForPeerPaymentMessage:(id)a3;
- (id)_recipientErrorTitle;
- (id)_recipientPersonForIntentDonation;
- (id)_senderAddress;
- (id)_viewControllerForState:(unint64_t)a3 shouldLoad:(BOOL)a4;
- (id)analyticsMessagesContext;
- (id)currentBalance;
- (id)maximumTransferAmount;
- (id)messageTintColor;
- (id)minimumTransferAmount;
- (id)recipientDisplayName;
- (unint64_t)_requiredContentState;
- (unint64_t)conversationSize;
- (unint64_t)ineligibleCount;
- (void)_applicationDidEnterBackground;
- (void)_confirmPaymentMessageInsertionWithQuote:(id)a3 completion:(id)a4;
- (void)_confirmRequestAmount:(id)a3 toRecipientWithCompletion:(id)a4;
- (void)_confirmSendAmount:(id)a3 toRecipientWithCompletion:(id)a4;
- (void)_donatePeerPaymentInteractionForMessage:(id)a3;
- (void)_handleAccountChanged:(id)a3;
- (void)_handleError:(id)a3 forAction:(unint64_t)a4 withCompletion:(id)a5;
- (void)_handleNetworkConnectivityChanged:(id)a3;
- (void)_handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:(id)a3 completion:(id)a4;
- (void)_handleRecipientBecameInvalid:(id)a3;
- (void)_handleRecipientError:(id)a3;
- (void)_handleRespondToPaymentRequestActionWithMessage:(id)a3 completion:(id)a4;
- (void)_handleUpdatedTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4;
- (void)_hostSceneIdentifierForMessageIdentifier:(id)a3 withCompletion:(id)a4;
- (void)_identifyGroupRecipientsWithCompletion:(id)a3;
- (void)_identifyRecipient;
- (void)_insertPaymentMessageWithQuote:(id)a3 completion:(id)a4;
- (void)_insertRequestMessageWithAmount:(id)a3 requestToken:(id)a4 completion:(id)a5;
- (void)_prepareIdentifiedRecipient:(id)a3 forAmountEntryViewController:(id)a4;
- (void)_presentAlertWithDisplayableError:(id)a3;
- (void)_presentInlineSetupFlowWithAmount:(id)a3 flowState:(unint64_t)a4 completion:(id)a5;
- (void)_presentInlineSetupFlowWithAmount:(id)a3 flowState:(unint64_t)a4 senderAddress:(id)a5 hostSceneIdentifier:(id)a6 completion:(id)a7;
- (void)_presentInlineSetupFlowWithPeerPaymentMessage:(id)a3 flowState:(unint64_t)a4 completion:(id)a5;
- (void)_presentSetupFlowWithPeerPaymentMessage:(id)a3 flowState:(unint64_t)a4 completion:(id)a5;
- (void)_prewarmDeviceScoreForGroupsWithRecipients:(id)a3;
- (void)_prewarmDeviceScoreForRecipient:(id)a3;
- (void)_registerForPresentationSemanticContextChanges;
- (void)_reloadContent;
- (void)_reportAnalyticsForStateWithEventType:(id)a3;
- (void)_reportAnalyticsStagedBubbleButtonTap:(id)a3;
- (void)_reportAnalyticsViewAppearedWithArchivedParent:(id)a3;
- (void)_reportAnalyticsViewDisappeared;
- (void)_resetIdentifiedRecipientForAmountEntryViewController:(id)a3;
- (void)_shouldProceedPerformingQuote:(id)a3 message:(id)a4 memoText:(id)a5 completion:(id)a6;
- (void)_showPaymentDetailsForMessage:(id)a3 completion:(id)a4;
- (void)_showRecurringPaymentDetailsForMessage:(id)a3 completion:(id)a4;
- (void)_stagePaymentWithAmount:(id)a3 completion:(id)a4;
- (void)_stageRecurringPayment:(id)a3 completion:(id)a4;
- (void)_stageRequestWithAmount:(id)a3 completion:(id)a4;
- (void)_transitionToState:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateWithFamilyCollection:(id)a3;
- (void)_validateMessageForSending:(id)a3 conversation:(id)a4 associatedText:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didReceiveMessage:(id)a3 conversation:(id)a4;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didSelectMessage:(id)a3 conversation:(id)a4;
- (void)didStartSendingMessage:(id)a3 conversation:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)enableLiveBubbleDebugMode;
- (void)handleAction:(unint64_t)a3 sender:(id)a4 completion:(id)a5;
- (void)loadView;
- (void)localStatusForMessage:(id)a3 completion:(id)a4;
- (void)noteContentSizeNeedsUpdate;
- (void)noteReadyForDisplay;
- (void)remoteStatusForMessage:(id)a3 completion:(id)a4;
- (void)stageRecurringPayment:(id)a3 completion:(id)a4;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)updateSupportsGroupMessage;
- (void)viewDidLayoutSubviews;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
@end

@implementation PKPeerPaymentMessagesAppViewController

- (PKPeerPaymentMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = PKPeerPaymentMessagesAppViewController;
  v8 = [(PKPeerPaymentMessagesAppViewController *)&v33 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v35 = v11;
      v36 = 2048;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %p Init", buf, 0x16u);
    }

    v12 = [PKPeerPaymentController alloc];
    v13 = +[PKPeerPaymentWebService sharedService];
    v14 = [v12 initWithPeerPaymentWebService:v13];
    peerPaymentController = v8->_peerPaymentController;
    v8->_peerPaymentController = v14;

    v16 = +[PKPaymentService paymentService];
    paymentService = v8->_paymentService;
    v8->_paymentService = v16;

    v8->_state = 0;
    v18 = +[NSMutableDictionary dictionary];
    viewControllerForState = v8->_viewControllerForState;
    v8->_viewControllerForState = v18;

    v20 = [PKTransactionSource alloc];
    v21 = [(PKPeerPaymentController *)v8->_peerPaymentController peerPaymentPass];
    v22 = [v20 initWithPaymentPass:v21];
    transactionSource = v8->_transactionSource;
    v8->_transactionSource = v22;

    objc_initWeak(buf, v8);
    v24 = v8->_paymentService;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000013EC;
    v31[3] = &unk_10001C850;
    objc_copyWeak(&v32, buf);
    [(PKPaymentService *)v24 familyMembersWithCompletion:v31];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v8 selector:"_handleAccountChanged:" name:PKPeerPaymentControllerAccountDidChangeNotification object:v8->_peerPaymentController];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v8 selector:"_handleRecipientBecameInvalid:" name:PKPeerPaymentControllerRecipientDidBecomeInvalidNotification object:v8->_peerPaymentController];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v8 selector:"_handleNetworkConnectivityChanged:" name:PKNetworkConnectivityChangedNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v8 selector:"_applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v8 selector:"_applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    [(PKPeerPaymentMessagesAppViewController *)v8 _registerForPresentationSemanticContextChanges];
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)dealloc
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %p Dealloc'd", buf, 0x16u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7 = +[PKMessagesAppSharedContext sharedContext];
  [v7 _unregisterAppViewController:self];

  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesAppViewController;
  [(PKPeerPaymentMessagesAppViewController *)&v8 dealloc];
}

- (void)loadView
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v12 = 138543874;
    v13 = v5;
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = [(PKPeerPaymentMessagesAppViewController *)self presentationStyle];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %p loadView presentationStyle = %lu", &v12, 0x20u);
  }

  v6 = +[PKMessagesAppSharedContext sharedContext];
  [v6 _registerAppViewController:self];

  v7 = [[UIView alloc] initWithFrame:{0.0, 0.0, 300.0, 100.0}];
  rootView = self->_rootView;
  self->_rootView = v7;

  if ([(PKPeerPaymentMessagesAppViewController *)self presentationStyle]== 2)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[PKPeerPaymentBubbleView referenceBackgroundColor];
    }
    v10 = ;
    v11 = self->_rootView;
  }

  else
  {
    v9 = self->_rootView;
    v10 = +[PKPeerPaymentTheme backgroundColor];
    v11 = v9;
  }

  [(UIView *)v11 setBackgroundColor:v10];

  [(PKPeerPaymentMessagesAppViewController *)self setView:self->_rootView];
}

- (void)viewDidLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = PKPeerPaymentMessagesAppViewController;
  [(PKPeerPaymentMessagesAppViewController *)&v27 viewDidLayoutSubviews];
  v3 = [(PKPeerPaymentMessagesAppViewController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (v8 > 0.0)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v32.origin.x = v6;
      v32.origin.y = v8;
      v32.size.width = v10;
      v32.size.height = v12;
      v14 = NSStringFromCGRect(v32);
      *buf = 134218242;
      v29 = self;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController %p: viewDidLayoutSubviews layoutFrame = %{public}@", buf, 0x16u);
    }
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self presentationStyle]== 2)
  {
    v15 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:12 shouldLoad:0];
    [(PKPeerPaymentMessagesAppViewController *)self _balloonMaskEdgeInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v15 bubbleView];
    [v24 setContentInset:{v17, v19, v21, v23}];
  }

  v25 = [(PKPeerPaymentMessagesContent *)self->_activeViewController view];
  v26 = [(PKPeerPaymentMessagesAppViewController *)self view];
  [v26 bounds];
  [v25 setFrame:?];

  if (self->_debugBallView)
  {
    [(UIView *)self->_rootView bringSubviewToFront:?];
  }
}

- (id)messageTintColor
{
  v3 = +[PKPeerPaymentBubbleView referenceBackgroundColor];
  if ([(PKPeerPaymentMessagesAppViewController *)self presentationStyle]== 2)
  {
    v4 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:12 shouldLoad:0];
    v5 = [v4 bubbleView];
    v6 = +[PKPeerPaymentBubbleView referenceBackgroundColorForState:](PKPeerPaymentBubbleView, "referenceBackgroundColorForState:", [v5 state]);

    v3 = v6;
  }

  return v3;
}

- (id)_viewControllerForState:(unint64_t)a3 shouldLoad:(BOOL)a4
{
  v4 = a4;
  viewControllerForState = self->_viewControllerForState;
  v8 = [NSNumber numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)viewControllerForState objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = [(PKPeerPaymentMessagesAppViewController *)self _createViewControllerForState:a3];
    if (v9)
    {
      v11 = self->_viewControllerForState;
      v12 = [NSNumber numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
    }
  }

  return v9;
}

- (id)_createViewControllerForState:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v4 = PKPeerPaymentMessagesContentBaseViewController;
      goto LABEL_24;
    case 1uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v6 = @"PEER_PAYMENT_MESSAGES_OFFLINE_TITLE";
      goto LABEL_33;
    case 2uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v11 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_IMESSAGE_DISABLED_TITLE");
      [v5 setExplanation:v11];

      v12 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_IMESSAGE_DISABLED_ACTION");
      [v5 setButtonTitle:v12];

      v9 = &stru_10001C890;
      goto LABEL_29;
    case 3uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      HasDisabledPeerPayment = PKUserHasDisabledPeerPayment();
      v14 = HasDisabledPeerPayment == 0;
      if (HasDisabledPeerPayment)
      {
        v15 = @"PEER_PAYMENT_MESSAGES_REENABLEMENT_REQUIRED_TITLE";
      }

      else
      {
        v15 = @"PEER_PAYMENT_MESSAGES_ENABLEMENT_REQUIRED_TITLE";
      }

      if (v14)
      {
        v16 = @"PEER_PAYMENT_MESSAGES_ENABLEMENT_REQUIRED_ACTION";
      }

      else
      {
        v16 = @"PEER_PAYMENT_MESSAGES_REENABLEMENT_REQUIRED_ACTION";
      }

      v17 = PKLocalizedPeerPaymentString(&v15->isa);
      [v5 setExplanation:v17];

      v18 = PKLocalizedPeerPaymentString(&v16->isa);
      [v5 setButtonTitle:v18];

      v9 = &stru_10001C8B0;
      goto LABEL_29;
    case 4uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v7 = PKLocalizedDeletableString(@"WALLET_UNINSTALLED_ALERT_MESSAGE");
      [v5 setExplanation:v7];

      v8 = PKLocalizedDeletableString(@"WALLET_UNINSTALLED_SHOW_APP_STORE_BUTTON");
      [v5 setButtonTitle:v8];

      v9 = &stru_10001C8D0;
      goto LABEL_29;
    case 5uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v19 = PKDeviceSpecificLocalizedStringKeyForKey();
      v20 = PKLocalizedPeerPaymentString(v19);
      [v5 setExplanation:v20];

      v21 = PKDeviceSpecificLocalizedStringKeyForKey();
      v22 = PKLocalizedPeerPaymentString(v21);
      [v5 setButtonTitle:v22];

      objc_initWeak(&location, self);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000022AC;
      v29[3] = &unk_10001C8F8;
      objc_copyWeak(&v30, &location);
      [v5 setButtonAction:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      goto LABEL_35;
    case 6uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v23 = PKPrimaryAppleAccountFormattedUsername();
      v24 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_AMBIGUOUS_SENDER_ADDRESS_FORMAT", @"%@", v23);
      [v5 setExplanation:v24];

      v25 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_AMBIGUOUS_SENDER_ADDRESS_ACTION");
      [v5 setButtonTitle:v25];

      v9 = &stru_10001C918;
LABEL_29:
      [v5 setButtonAction:v9];
      goto LABEL_35;
    case 7uLL:
      v4 = PKPeerPaymentMessagesContentRecipientLoadingViewController;
LABEL_24:
      v5 = [[v4 alloc] initWithContentDelegate:self];
      goto LABEL_35;
    case 8uLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v26 = [(PKPeerPaymentMessagesAppViewController *)self _recipientErrorTitle];
      goto LABEL_34;
    case 9uLL:
      if ([(PKPeerPaymentController *)self->_peerPaymentController supportsGroupMessage])
      {
        v5 = [[PKPeerPaymentMessagesContentAmountEntryViewController alloc] initWithContentDelegate:self];
        [v5 setSourceType:2];
        [v5 setContext:2];
        [v5 setTrailingAction:1];
        if (!self->_pendingFormalPaymentRequestMesssage && !self->_pendingInformalPaymentRequestAmount)
        {
          [v5 setCenterAction:11];
        }

        [v5 setDelegate:self];
        v10 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];

        if (!v10)
        {
          [v5 setLeadingAction:2];
        }
      }

      else
      {
        v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
        v6 = @"PEER_PAYMENT_MESSAGES_RECIPIENT_INVALID_GROUP";
LABEL_33:
        v26 = PKLocalizedPeerPaymentString(&v6->isa);
LABEL_34:
        v27 = v26;
        [v5 setExplanation:v26];
      }

LABEL_35:

      return v5;
    case 0xAuLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v6 = @"PEER_PAYMENT_MESSAGES_RECIPIENT_INVALID_BUSINESS";
      goto LABEL_33;
    case 0xBuLL:
      v5 = [[PKPeerPaymentMessagesContentAmountEntryViewController alloc] initWithContentDelegate:self];
      [v5 setSourceType:2];
      [v5 setLeadingAction:2];
      [v5 setTrailingAction:1];
      [v5 setDelegate:self];
      goto LABEL_35;
    case 0xCuLL:
      v5 = [[PKPeerPaymentMessagesContentRenderBubbleViewController alloc] initWithContentDelegate:self];
      [v5 setRenderBubbleDelegate:self];
      if (PKEnableSURFLiveBubbleDebugMode())
      {
        [(PKPeerPaymentMessagesAppViewController *)self enableLiveBubbleDebugMode];
      }

      goto LABEL_35;
    case 0xDuLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v6 = @"PEER_PAYMENT_MESSAGES_RECIPIENT_CONTACTS_RESTRICTED_MESSAGE";
      goto LABEL_33;
    case 0xEuLL:
      v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
      v6 = @"PEER_PAYMENT_MESSAGES_RECIPIENT_FAMILY_RESTRICTED_MESSAGE";
      goto LABEL_33;
    default:
      v5 = 0;
      goto LABEL_35;
  }
}

- (void)_reloadContent
{
  [(PKPeerPaymentMessagesContent *)self->_activeViewController reloadContent];
  if (self->_state == 8)
  {
    v3 = self->_activeViewController;
    v4 = [(PKPeerPaymentMessagesAppViewController *)self _recipientErrorTitle];
    [(PKPeerPaymentMessagesContent *)v3 setExplanation:v4];
  }
}

- (id)_recipientErrorTitle
{
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    v3 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_GROUP_RECIPIENTS_INVALID");
  }

  else
  {
    v4 = [(PKPeerPaymentMessagesAppViewController *)self recipientDisplayName];
    v5 = v4;
    if (v4 && [v4 length])
    {
      v6 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_RECIPIENT_INVALID_FORMAT", @"%@", v5);
    }

    else
    {
      v6 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_RECIPIENT_INVALID_NO_DISPLAY_NAME");
    }

    v3 = v6;
  }

  return v3;
}

- (void)_transitionToState:(unint64_t)a3 animated:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000256C;
  block[3] = &unk_10001C968;
  block[4] = self;
  block[5] = a3;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_prewarmDeviceScoreForRecipient:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = +[PKPeerPaymentWebService sharedService];
    v5 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v5 setEndpoint:5];
    [v5 setRecipientAddress:v7];
    [v5 setQuoteRequestDestination:1];
    [v5 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v5];
    v6 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v6 setEndpoint:3];
    [v6 setRecipientAddress:v7];
    [v6 setQuoteRequestDestination:1];
    [v6 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v6];
  }
}

- (void)_prewarmDeviceScoreForGroupsWithRecipients:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = +[PKPeerPaymentWebService sharedService];
    v5 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v5 setEndpoint:5];
    [v5 setRecipientAddresses:v7];
    [v5 setQuoteRequestDestination:1];
    [v5 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v5];
    v6 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v6 setEndpoint:3];
    [v6 setRecipientAddresses:v7];
    [v6 setQuoteRequestDestination:1];
    [v6 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v6];
  }
}

- (unint64_t)_requiredContentState
{
  v3 = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
  if ([(PKPeerPaymentMessagesAppViewController *)self presentationStyle]== 2)
  {
    v4 = 12;
    goto LABEL_5;
  }

  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    v4 = 4;
    goto LABEL_5;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    v6 = [(NSDictionary *)self->_identifiedRecipients objectForKeyedSubscript:@"PKPeerPaymentGroupValidRecipientsKey"];
    v7 = [v6 count];

    if (v7)
    {
      v4 = 9;
      goto LABEL_5;
    }
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _isBusinessConversation])
  {
    v4 = 10;
    goto LABEL_5;
  }

  if (PKStoreDemoModeEnabled())
  {
LABEL_12:
    v4 = 11;
    goto LABEL_5;
  }

  if (!PKNetworkConnectivityAvailable())
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (![(PKPeerPaymentMessagesAppViewController *)self _iMessageIsEnabled])
  {
    v4 = 2;
    goto LABEL_5;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _requiresEnablement])
  {
    v4 = 3;
    goto LABEL_5;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _accountIsLocked])
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (v3)
  {
    v8 = [v3 status];
    if (v8)
    {
      if (v8 == 2)
      {
        v13 = [v3 statusReason];
        if (v13 < 3)
        {
          v4 = qword_100014830[v13];
          goto LABEL_5;
        }
      }

      else if (v8 == 1)
      {
        goto LABEL_12;
      }

      v4 = 0;
      goto LABEL_5;
    }

LABEL_30:
    v4 = 7;
    goto LABEL_5;
  }

  if (![(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    goto LABEL_30;
  }

  v9 = [(PKPeerPaymentMessagesAppViewController *)self ineligibleCount];
  v10 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v11 = [v10 recipientAddresses];
  v12 = [v11 count];

  if (v9 == v12)
  {
    v4 = 8;
  }

  else
  {
    v4 = 7;
  }

LABEL_5:

  return v4;
}

- (void)_identifyRecipient
{
  v3 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  v4 = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
  v5 = v4;
  if (v3 && v4)
  {
    peerPaymentController = self->_peerPaymentController;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000030F0;
    v7[3] = &unk_10001C9B8;
    v7[4] = self;
    [(PKPeerPaymentController *)peerPaymentController identifyRecipientWithConversationAddress:v3 senderAddress:v5 completion:v7];
  }

  else
  {
    [(PKPeerPaymentMessagesAppViewController *)self _transitionToState:8 animated:1];
  }
}

- (void)_identifyGroupRecipientsWithCompletion:(id)a3
{
  v4 = a3;
  if (([(PKPeerPaymentController *)self->_peerPaymentController supportsGroupMessage]& 1) != 0)
  {
    v5 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v6 = [v5 recipientAddresses];

    v7 = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
    peerPaymentController = self->_peerPaymentController;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000032F0;
    v10[3] = &unk_10001C9E0;
    v11 = v6;
    v12 = v4;
    v10[4] = self;
    v9 = v6;
    [(PKPeerPaymentController *)peerPaymentController identifyRecipientsWithConversationAddresses:v9 senderAddress:v7 completion:v10];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)_handleRecipientError:(id)a3
{
  v13 = a3;
  v4 = [v13 domain];
  v5 = [v4 isEqualToString:PKDisplayableErrorDomain];

  v6 = v13;
  if (v5)
  {
    v7 = [v13 userInfo];
    v6 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];
  }

  if ([PKPeerPaymentController errorIsTermsAcceptanceRequiredError:v6])
  {
    goto LABEL_4;
  }

  v8 = [v6 domain];
  v9 = [v8 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

  if (!v9)
  {
    v10 = self;
    v11 = 8;
    goto LABEL_9;
  }

  if ([v6 code] == 40312)
  {
    v10 = self;
    v11 = 6;
LABEL_9:
    [(PKPeerPaymentMessagesAppViewController *)v10 _transitionToState:v11 animated:1];
    goto LABEL_10;
  }

  if ([v6 code] == 40309)
  {
    v10 = self;
    v11 = 5;
    goto LABEL_9;
  }

  v12 = [v6 code];
  [(PKPeerPaymentMessagesAppViewController *)self _transitionToState:8 animated:1];
  if (v12 == 40310)
  {
LABEL_4:
    [(PKPeerPaymentMessagesAppViewController *)self _handleError:v13];
  }

LABEL_10:
}

- (id)_identifiedRecipientForRecipientAddress:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    if (v4)
    {
      identifiedRecipients = self->_identifiedRecipients;
      if (identifiedRecipients)
      {
        v7 = [(NSDictionary *)identifiedRecipients PKArrayContaining:objc_opt_class() forKey:@"PKPeerPaymentGroupValidRecipientsKey"];
        v8 = PKIDSNormalizedAddress();
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = v7;
        v5 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          v10 = *v19;
          while (2)
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v9);
              }

              v12 = *(*(&v18 + 1) + 8 * i);
              v13 = [v12 idsQualifiedNormalizedAddress];
              v14 = v8;
              v15 = v14;
              if (v13 == v14)
              {

LABEL_19:
                v5 = v12;
                goto LABEL_20;
              }

              if (v8 && v13)
              {
                v16 = [v13 isEqualToString:v14];

                if (v16)
                {
                  goto LABEL_19;
                }
              }

              else
              {
              }
            }

            v5 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v5)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }
    }
  }

  return v5;
}

- (void)_prepareIdentifiedRecipient:(id)a3 forAmountEntryViewController:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
    [(PKPeerPaymentController *)self->_peerPaymentController selectIdentifiedRecipient:v8];
    [v6 setRecipient:v8];
    [v6 setLeadingAction:0];
    if (self->_pendingFormalPaymentRequestMesssage || self->_pendingInformalPaymentRequestAmount)
    {
      v7 = 0;
    }

    else
    {
      v7 = 11;
    }

    [v6 setCenterAction:v7];
  }
}

- (void)_resetIdentifiedRecipientForAmountEntryViewController:(id)a3
{
  v5 = a3;
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    [(PKPeerPaymentController *)self->_peerPaymentController reset];
    [v5 setRecipient:0];
    [v5 setLeadingAction:2];
    [v5 setCenterAction:0];
    pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
    self->_pendingInformalPaymentRequestRecipientAddress = 0;
  }
}

- (void)_handleNetworkConnectivityChanged:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Network connectivity changed.", buf, 2u);
  }

  v6 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];

  if (v6 && [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]!= self->_state)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Updating messages content state in response to a network connectivity changed notification.", v7, 2u);
    }

    [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:0];
  }
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 recipientAddresses];
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Will become active with conversation: %@, recipientAddresses:%@", &v10, 0x20u);
  }

  if (![(PKPeerPaymentController *)self->_peerPaymentController messagesContext])
  {
    v7 = [v4 recipientAddresses];
    v8 = [v7 count];

    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(PKPeerPaymentController *)self->_peerPaymentController setMessagesContext:v9];
  }
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 recipientAddresses];
    *buf = 134218498;
    v25 = self;
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Did become active with conversation: %@, recipientAddresses:%@", buf, 0x20u);
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self presentationStyle]== 2)
  {
    v7 = [v4 selectedMessage];
    v8 = [v7 peerPaymentMessage];

    v9 = [v8 localProperties];
    v10 = v9;
    if (v9)
    {
      self->_messageSource = [v9 source];
      objc_storeStrong(&self->_stagedPeerPaymentMessage, v8);
      v11 = [v10 analyticsSessionToken];
      if (v11)
      {
        [(PKPeerPaymentMessagesAppViewController *)self _reportAnalyticsViewAppearedWithArchivedParent:v11];
      }
    }
  }

  else
  {
    self->_messageSource = 2;
    v12 = +[PKMessagesAppSharedContext sharedContext];
    v13 = [v12 bubbleAppControllers];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v13;
    v14 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v19 + 1) + 8 * i);
          if ([v18 messageSource])
          {
            self->_messageSource = [v18 messageSource];
            goto LABEL_18;
          }
        }

        v15 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
    v8 = v10;
  }

  [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:0];
}

- (void)willResignActiveWithConversation:(id)a3
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Controller:%p Will resign active with conversation: %@", &v6, 0x16u);
  }
}

- (void)didResignActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Controller:%p Did resign active with conversation: %@", &v11, 0x16u);
  }

  [(PKPeerPaymentController *)self->_peerPaymentController reset];
  if (self->_pendingFormalPaymentRequestMesssage || self->_pendingInformalPaymentRequestAmount)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Controller:%p Invalidating pending request values.", &v11, 0xCu);
    }

    pendingFormalPaymentRequestMesssage = self->_pendingFormalPaymentRequestMesssage;
    self->_pendingFormalPaymentRequestMesssage = 0;

    pendingInformalPaymentRequestAmount = self->_pendingInformalPaymentRequestAmount;
    self->_pendingInformalPaymentRequestAmount = 0;

    pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
    self->_pendingInformalPaymentRequestRecipientAddress = 0;

    pendingRecurringPayment = self->_pendingRecurringPayment;
    self->_pendingRecurringPayment = 0;

    self->_messageSource = 0;
    identifiedRecipients = self->_identifiedRecipients;
    self->_identifiedRecipients = 0;
  }
}

- (void)didReceiveMessage:(id)a3 conversation:(id)a4
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a3 peerPaymentMessage];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Received message: %@", &v7, 0xCu);
  }
}

- (void)didSelectMessage:(id)a3 conversation:(id)a4
{
  v5 = [a3 peerPaymentMessage];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Selected message: %@", &v12, 0xCu);
  }

  if ([v5 type] == 2)
  {
    v7 = [v5 currency];
    v8 = [v5 amount];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:11 shouldLoad:1];
      v11 = PKCurrencyAmountCreate(v9, v7, 0);
      [v10 setAmount:v11];
    }
  }
}

- (BOOL)_canPerformQuoteForMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 recipientAddress];
  if ([v6 type] == 2 && objc_msgSend(v6, "context") == 2)
  {
    goto LABEL_13;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _recipientAddressIsValid:v7])
  {
    if (![(PKPeerPaymentMessagesAppViewController *)self _recipientAddressFoundInContacts:v7])
    {
      v8 = [(PKPeerPaymentController *)self->_peerPaymentController account];
      v9 = [v8 sendRestrictionType];

      if (v9 == 2)
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: The curent user cannot sent to people outside of their contacts. Hence failing validation.", v17, 2u);
        }

        if (a4)
        {
          if ([v6 type] == 2)
          {
            v11 = @"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_REQUESTS_TITLE";
          }

          else
          {
            v11 = @"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_SENDS_TITLE";
          }

          v12 = @"PEER_PAYMENT_MESSAGES_RECIPIENT_CONTACTS_RESTRICTED_MESSAGE";
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

LABEL_13:
    LOBYTE(a4) = 1;
    goto LABEL_19;
  }

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Recipient identifier doesn't match current conversation recipient. Hence failing validation.", buf, 2u);
  }

  if (a4)
  {
    v12 = @"PEER_PAYMENT_BUBBLE_RECIPIENT_MISMATCH_ERROR_DESCRIPTION";
    v11 = @"PEER_PAYMENT_BUBBLE_RECIPIENT_MISMATCH_ERROR_TITLE";
LABEL_18:
    v14 = PKLocalizedPeerPaymentString(&v11->isa);
    v15 = PKLocalizedPeerPaymentString(&v12->isa);
    *a4 = PKDisplayableErrorCustom();

    LOBYTE(a4) = 0;
  }

LABEL_19:

  return a4;
}

- (BOOL)_recipientAddressIsValid:(id)a3
{
  v4 = PKIDSNormalizedAddress();
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    v5 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v6 = [v5 recipientAddresses];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000047B0;
    v15[3] = &unk_10001CA08;
    v16 = v4;
    v7 = [v6 pk_firstObjectPassingTest:v15];
  }

  else
  {
    v7 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  }

  v8 = PKIDSNormalizedAddress();
  if ([v8 isEqualToString:v4])
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: recipientAddress matches conversationAddress.", v14, 2u);
    }

    v10 = 1;
  }

  else
  {
    v9 = PKIDSSanitizedAddress();
    v11 = PKPeerPaymentNormalizedMergedPinningIdentifiersForRecipientAddress();
    if ([v11 containsObject:v4] && objc_msgSend(v11, "containsObject:", v8))
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: addresses match mergedPinningIdentifiers.", v14, 2u);
      }

      v10 = 1;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: mismatch between addresses and mergedPinningIdentifiers.", v14, 2u);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_recipientAddressFoundInContacts:(id)a3
{
  v5 = 0;
  v3 = [(PKPeerPaymentController *)self->_peerPaymentController displayNameForRecipientAddress:a3 foundInContacts:&v5];
  return v5;
}

- (void)_shouldProceedPerformingQuote:(id)a3 message:(id)a4 memoText:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FF20();
  }

  if (v13)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    if (![(PKPeerPaymentMessagesAppViewController *)self _peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:v12])
    {
      goto LABEL_7;
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
    v16 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_MEMO_SHARING_ALERT_TITLE");
    [v15 setObject:v16 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

    v17 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_MEMO_SHARING_ALERT_MESSAGE");
    [v15 setObject:v17 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

    v18 = PKLocalizedPaymentString(@"CONTINUE");
    [v15 setObject:v18 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    v19 = PKLocalizedString(@"CANCEL");
    [v15 setObject:v19 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

    if (v15)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100004B38;
      v20[3] = &unk_10001CA70;
      v24 = &v26;
      v25 = 0;
      v21 = &stru_10001CA28;
      v22 = &stru_10001CA48;
      v23 = v13;
      [PKUserNotificationAgent presentNotificationWithParameters:v15 flags:0 responseHandler:v20];
    }

    else
    {
LABEL_7:
      (*(v13 + 2))(v13, *(v27 + 24));
    }

    _Block_object_dispose(&v26, 8);
  }
}

- (void)_validateMessageForSending:(id)a3 conversation:(id)a4 associatedText:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 peerPaymentMessage];
  [(PKPeerPaymentMessagesAppViewController *)self _reportAnalyticsStagedBubbleButtonTap:PKAnalyticsReportPeerPaymentSendButtonTag];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FF90();
  }

  v42 = 0;
  v13 = [(PKPeerPaymentMessagesAppViewController *)self _canPerformQuoteForMessage:v11 error:&v42];
  v14 = v42;
  v15 = v14;
  if (v13)
  {
    v16 = [v11 localProperties];
    [v11 setLocalProperties:0];
    v17 = [v11 type];
    v18 = v17;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        if (v17 != 3)
        {
LABEL_21:

          goto LABEL_22;
        }

LABEL_14:
        v19 = [PKPeerPaymentController alloc];
        v20 = +[PKPeerPaymentWebService sharedService];
        v21 = [v19 initWithPeerPaymentWebService:v20];

        [v21 setDelegate:self];
        v22 = +[PKMessagesAppSharedContext sharedContext];
        [v11 identifier];
        v23 = v31 = v16;
        v24 = [v22 externalizedControllerStateForMessageIdentifier:v23];

        LOBYTE(v23) = [v21 restoreStateWithExternalizedControllerState:v24];
        v30 = [v21 quote];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100004FA8;
        v32[3] = &unk_10001CAE8;
        v41 = v23;
        v33 = v24;
        v34 = self;
        v35 = v11;
        v36 = v21;
        v37 = v9;
        v40 = v18;
        v38 = v31;
        v39 = v10;
        v25 = v21;
        v26 = v24;
        v16 = v31;
        [(PKPeerPaymentMessagesAppViewController *)self _shouldProceedPerformingQuote:v30 message:v35 memoText:v37 completion:v32];

        goto LABEL_21;
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, PKDarwinNotificationEventInAppDismissed, 0, 0, 1u);
      if ([v9 length])
      {
        [v11 setMemo:v9];
        v28 = &PKAggDKeyPeerPaymentBubbleRequestWithMemo;
      }

      else
      {
        v28 = &PKAggDKeyPeerPaymentBubbleRequestWithoutMemo;
      }

      v29 = *v28;
      PKAnalyticsSendEvent();
      [v11 reportMessageSentWithLocalProperties:v16];
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 1, 0);
    }

    goto LABEL_21;
  }

  if (v14)
  {
    [(PKPeerPaymentMessagesAppViewController *)self _handleError:v14];
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }

LABEL_22:
}

- (void)_hostSceneIdentifierForMessageIdentifier:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)didStartSendingMessage:(id)a3 conversation:(id)a4
{
  v5 = a3;
  v6 = [v5 peerPaymentMessage];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = self;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Did start sending message: %@", buf, 0x16u);
  }

  [(PKPeerPaymentMessagesAppViewController *)self _donatePeerPaymentInteractionForMessage:v5];
  [(PKPeerPaymentMessagesAppViewController *)self dismiss];
  stagedPeerPaymentMessage = self->_stagedPeerPaymentMessage;
  self->_stagedPeerPaymentMessage = 0;

  if ([v6 type] == 1)
  {
    v9 = +[PKMessagesAppSharedContext sharedContext];
    [v9 _unregisterAppViewController:self];
LABEL_5:

    goto LABEL_12;
  }

  if ([v6 type] == 2 && objc_msgSend(v6, "context") == 2)
  {
    v10 = [v6 requestToken];
    v9 = [v10 requestToken];

    v11 = [v6 messagesGroupIdentifier];
    v12 = v11;
    if (v9 && v11)
    {
      v13 = +[PKPeerPaymentService sharedInstance];
      v18 = v9;
      v14 = [NSArray arrayWithObjects:&v18 count:1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100005B20;
      v15[3] = &unk_10001CB10;
      v15[4] = self;
      v16 = v9;
      v17 = v12;
      [v13 peerPaymentPendingRequestsForRequestTokens:v14 completion:v15];
    }

    goto LABEL_5;
  }

LABEL_12:
}

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  v5 = [a3 peerPaymentMessage];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    v14 = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Did cancel sending message: %@", &v13, 0x16u);
  }

  stagedPeerPaymentMessage = self->_stagedPeerPaymentMessage;
  self->_stagedPeerPaymentMessage = 0;

  PKAnalyticsSendEvent();
  [(PKPeerPaymentMessagesAppViewController *)self _reportAnalyticsStagedBubbleButtonTap:PKAnalyticsReportPeerPaymentCancelMessageButtonTag];
  v8 = PKAnalyticsSubjectAppleCash;
  v9 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

  if (v9)
  {
    [PKAnalyticsReporter endSubjectReporting:v8];
  }

  if ([v5 type] == 1)
  {
    v10 = +[PKMessagesAppSharedContext sharedContext];
    v11 = [v5 identifier];
    [v10 removeExternalizedControllerStateDataForMessageIdentifier:v11];

    v12 = +[PKMessagesAppSharedContext sharedContext];
    [v12 _unregisterAppViewController:self];
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  if (!a3 && self->_state != 9)
  {
    activeViewController = self->_activeViewController;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPeerPaymentMessagesContent *)self->_activeViewController popToRootViewControllerAnimated:0];
    }
  }

  [(PKPeerPaymentMessagesAppViewController *)self _reloadContent];
}

- (CGSize)_contentSizeThatFits:(CGSize)result presentationStyle:(unint64_t)a4
{
  if (a4 == 2)
  {
    [(PKPeerPaymentMessagesAppViewController *)self contentSizeThatFits:result.width, result.height, v4, v5];
  }

  return result;
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:12 shouldLoad:1];
  [v5 contentSizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_applicationDidEnterBackground
{
  v3 = PKAnalyticsSubjectAppleCash;
  v4 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

  if (v4)
  {
    [PKAnalyticsReporter endSubjectReporting:v3];
  }

  traitRegistration = self->_traitRegistration;

  [(PKPeerPaymentMessagesAppViewController *)self unregisterForTraitChanges:traitRegistration];
}

- (void)_registerForPresentationSemanticContextChanges
{
  objc_initWeak(&location, self);
  v9 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000060E4;
  v6[3] = &unk_10001CB38;
  objc_copyWeak(&v7, &location);
  v4 = [(PKPeerPaymentMessagesAppViewController *)self registerForTraitChanges:v3 withHandler:v6];
  traitRegistration = self->_traitRegistration;
  self->_traitRegistration = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)displaysAfterAppearance
{
  if (self->_readyForDisplay || [(PKPeerPaymentMessagesAppViewController *)self presentationStyle]!= 2)
  {
    result = 1;
    self->_readyForDisplay = 1;
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Deferring display to the bubble render view for transcript presentation controller.", v5, 2u);
    }

    return 0;
  }

  return result;
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PKPeerPaymentMessagesAppViewController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[UIGraphicsImageRenderer alloc] initWithSize:{v11, v13}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000063A4;
    v16[3] = &unk_10001CB60;
    v16[5] = v7;
    v16[6] = v9;
    *&v16[7] = v11;
    *&v16[8] = v13;
    v16[4] = self;
    v15 = [v14 imageWithActions:v16];
    v4[2](v4, v15);
  }
}

- (id)recipientDisplayName
{
  peerPaymentController = self->_peerPaymentController;
  v3 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  v4 = [(PKPeerPaymentController *)peerPaymentController displayNameForRecipientAddress:v3];

  return v4;
}

- (id)currentBalance
{
  v2 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v3 = [v2 currentBalance];

  return v3;
}

- (id)minimumTransferAmount
{
  v2 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v3 = [v2 sendToUserFeatureDescriptor];
  v4 = [v3 minimumAmount];

  return v4;
}

- (id)maximumTransferAmount
{
  v2 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v3 = [v2 sendToUserFeatureDescriptor];
  v4 = [v3 maximumAmount];

  return v4;
}

- (unint64_t)conversationSize
{
  v2 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v3 = [v2 recipientAddresses];
  v4 = [v3 count];

  return v4 + 1;
}

- (unint64_t)ineligibleCount
{
  v2 = [(NSDictionary *)self->_identifiedRecipients objectForKeyedSubscript:@"PKPeerPaymentGroupInvalidRecipientsKey"];
  v3 = [v2 count];

  return v3;
}

- (id)analyticsMessagesContext
{
  v3 = [(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation];
  v4 = &PKAnalyticsReportPeerPaymentMessagesContextConversationTypeGroup;
  if (!v3)
  {
    v4 = &PKAnalyticsReportPeerPaymentMessagesContextConversationTypeIndividual;
  }

  v5 = *v4;
  v19 = PKAnalyticsReportPeerPaymentMessagesContextConversationTypeKey;
  v20 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v7 = [v6 mutableCopy];

  v8 = [PKAnalyticsReporter bucketValueForIneligibleCount:[(PKPeerPaymentMessagesAppViewController *)self ineligibleCount]];
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    v9 = [PKAnalyticsReporter bucketValueForGroupSize:[(PKPeerPaymentMessagesAppViewController *)self conversationSize]];
    [v7 safelySetObject:v9 forKey:PKAnalyticsReportPeerPaymentMessagesContextGroupSizeKey];
    if ([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]== 8 || v8)
    {
      [v7 safelySetObject:v8 forKey:PKAnalyticsReportPeerPaymentMessagesContextIneligibleCountKey];
    }
  }

  if (self->_messageSource == 2)
  {
    v10 = [(PKPeerPaymentMessagesAppViewController *)self presentationStyle];
    v11 = &PKAnalyticsReportPeerPaymentMessagesContextStyleExpanded;
    if (v10 != 1)
    {
      v11 = &PKAnalyticsReportPeerPaymentMessagesContextStyleCompact;
    }

    v12 = *v11;
    [v7 setObject:v12 forKeyedSubscript:PKAnalyticsReportPeerPaymentMessagesContextStyleKey];
  }

  pendingFormalPaymentRequestMesssage = self->_pendingFormalPaymentRequestMesssage;
  if (pendingFormalPaymentRequestMesssage || self->_pendingInformalPaymentRequestRecipientAddress)
  {
    v14 = [(PKPeerPaymentMessage *)pendingFormalPaymentRequestMesssage amount];
    v15 = +[NSDecimalNumber zero];
    if ([v14 pk_isGreaterThan:v15])
    {

      v16 = &PKAnalyticsReportPeerPaymentMessagesContextRequestTypeClosed;
    }

    else
    {
      pendingInformalPaymentRequestAmount = self->_pendingInformalPaymentRequestAmount;

      v16 = &PKAnalyticsReportPeerPaymentMessagesContextRequestTypeClosed;
      if (!pendingInformalPaymentRequestAmount)
      {
        v16 = &PKAnalyticsReportPeerPaymentMessagesContextRequestTypeOpen;
      }
    }

    [v7 setObject:*v16 forKeyedSubscript:PKAnalyticsReportPeerPaymentMessagesContextRequestTypeKey];
    if (v8)
    {
      [v7 safelySetObject:v8 forKey:PKAnalyticsReportPeerPaymentMessagesContextIneligibleCountKey];
    }
  }

  return v7;
}

- (void)handleAction:(unint64_t)a3 sender:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = 0;
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v66 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
        v67 = [v66 selectedMessage];
        v68 = [v67 peerPaymentMessage];

        [(PKPeerPaymentMessagesAppViewController *)self _handleRespondToPaymentRequestActionWithMessage:v68 completion:v9];
      }

      else
      {
        if (a3 == 4)
        {
          v31 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
          v32 = [v31 selectedMessage];
          v13 = [v32 peerPaymentMessage];

          if (v13 && [v13 type] == 1)
          {
            if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
            {
              v88 = [v13 senderAddress];
              v33 = [v88 length];
              v34 = 1;
              if (v33)
              {
                v34 = 2;
              }

              v85 = v34;
              v97[0] = _NSConcreteStackBlock;
              v97[1] = 3221225472;
              v97[2] = sub_1000075F8;
              v97[3] = &unk_10001CB88;
              v97[4] = self;
              v35 = &v98;
              v36 = v13;
              v98 = v36;
              v99 = v9;
              v37 = objc_retainBlock(v97);
              v38 = [(PKPeerPaymentController *)self->_peerPaymentController account];
              v39 = [v38 stage];

              if (v39 == 1)
              {
                [(PKPeerPaymentMessagesAppViewController *)self _presentSetupFlowWithPeerPaymentMessage:v36 flowState:v85 completion:v37];
              }

              else
              {
                [(PKPeerPaymentMessagesAppViewController *)self _presentInlineSetupFlowWithPeerPaymentMessage:v36 flowState:v85 completion:v37];
              }

              v76 = v88;
            }

            else
            {
              v76 = [v13 paymentIdentifier];
              peerPaymentController = self->_peerPaymentController;
              v78 = PKPeerPaymentActionAccept;
              v95[0] = _NSConcreteStackBlock;
              v95[1] = 3221225472;
              v95[2] = sub_10000769C;
              v95[3] = &unk_10001CBD8;
              v95[4] = self;
              v35 = &v96;
              v96 = v9;
              [(PKPeerPaymentController *)peerPaymentController performAction:v78 withPaymentIdentifier:v76 completion:v95];
            }

            goto LABEL_74;
          }

          goto LABEL_54;
        }

        v15 = [(PKPeerPaymentMessagesAppViewController *)self _openWallet];
        if (v9)
        {
          (*(v9 + 2))(v9, v15);
        }
      }

      goto LABEL_62;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_76;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_57;
      }

      [(PKPeerPaymentController *)self->_peerPaymentController selectMode:3];
      v20 = [v8 amount];
      [(PKPeerPaymentMessagesAppViewController *)self _stageRequestWithAmount:v20 completion:v9];
      goto LABEL_61;
    }

    v20 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
    if ([(PKPeerPaymentController *)self->_peerPaymentController mode]!= 1 || v20 == 0)
    {
      [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
    }

    v22 = [(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation];
    v23 = v8;
    v24 = v23;
    if (!v22 || v20)
    {
      v25 = [v23 amount];
      [(PKPeerPaymentMessagesAppViewController *)self _stagePaymentWithAmount:v25 completion:v9];
    }

    else
    {
      v25 = [(NSDictionary *)self->_identifiedRecipients objectForKeyedSubscript:@"PKPeerPaymentGroupValidRecipientsKey"];
      [(NSDictionary *)self->_identifiedRecipients objectForKeyedSubscript:@"PKPeerPaymentGroupInvalidRecipientsKey"];
      v26 = v87 = v8;
      v27 = [PKPeerPaymentMessagesRecipientPickerViewController alloc];
      v28 = [v24 amount];
      v29 = [v27 initWithValidRecipients:v25 invalidRecipients:v26 amount:v28 peerPaymentController:self->_peerPaymentController contentDelegate:self];

      v30 = [v24 navigationController];
      [v30 pushViewController:v29 animated:1];
      (*(v9 + 2))(v9, 1);

      v8 = v87;
    }

LABEL_60:
LABEL_61:

    goto LABEL_62;
  }

  if (a3 > 8)
  {
    if (a3 == 9)
    {
      if ([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]== 11)
      {
        v10 = 1;
        [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:1];
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    if (a3 != 10)
    {
      if (a3 != 11)
      {
        goto LABEL_76;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_57;
      }

      [(PKPeerPaymentController *)self->_peerPaymentController selectMode:3];
      v16 = +[NSDecimalNumber zero];
      v17 = [v8 amount];
      v18 = [v17 currency];
      v19 = PKCurrencyAmountMake();

      [(PKPeerPaymentMessagesAppViewController *)self _stageRequestWithAmount:v19 completion:v9];
LABEL_62:
      v10 = 1;
      goto LABEL_76;
    }

    v20 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:9 shouldLoad:0];
    v24 = [v20 amount];
    [(PKPeerPaymentMessagesAppViewController *)self _stagePaymentWithAmount:v24 completion:v9];
    goto LABEL_60;
  }

  if (a3 == 6)
  {
    v69 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v70 = [v69 selectedMessage];
    v13 = [v70 peerPaymentMessage];

    if (v13 && [v13 type] == 1 && objc_msgSend(v13, "hasBeenSent"))
    {
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_1000078DC;
      v93[3] = &unk_10001CC00;
      v94 = v9;
      [(PKPeerPaymentMessagesAppViewController *)self _showPaymentDetailsForMessage:v13 completion:v93];
      v14 = v94;
      goto LABEL_53;
    }

LABEL_54:
    v10 = 0;
LABEL_75:

    goto LABEL_76;
  }

  if (a3 != 7)
  {
    v11 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v12 = [v11 selectedMessage];
    v13 = [v12 peerPaymentMessage];

    if (v13 && [v13 type] == 3 && objc_msgSend(v13, "hasBeenSent"))
    {
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_1000079A8;
      v90[3] = &unk_10001CC00;
      v91 = v9;
      [(PKPeerPaymentMessagesAppViewController *)self _showRecurringPaymentDetailsForMessage:v13 completion:v90];
      v14 = v91;
LABEL_53:

LABEL_74:
      v10 = 1;
      goto LABEL_75;
    }

    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_57:
    v10 = 0;
    goto LABEL_76;
  }

  v40 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  *buf = 0;
  v92 = 0;
  v10 = [PKPeerPaymentActionController canPerformPeerPaymentAction:3 account:v40 unableReason:buf displayableError:&v92];
  v41 = v92;
  v42 = v41;
  if (v10)
  {
    v84 = v41;
    v86 = v40;
    v43 = [v8 amount];
    v44 = [(PKPeerPaymentController *)self->_peerPaymentController account];
    v89 = [v44 recurringPaymentsFeatureDescriptor];

    pendingRecurringPayment = self->_pendingRecurringPayment;
    if (!pendingRecurringPayment)
    {
      v46 = objc_alloc_init(PKPeerPaymentRecurringPayment);
      v47 = self->_pendingRecurringPayment;
      self->_pendingRecurringPayment = v46;

      [(PKPeerPaymentRecurringPayment *)self->_pendingRecurringPayment setFrequency:1];
      v48 = self->_pendingRecurringPayment;
      v49 = +[NSDate date];
      [(PKPeerPaymentRecurringPayment *)v48 setStartDate:v49];

      pendingRecurringPayment = self->_pendingRecurringPayment;
    }

    v50 = [v43 currency];
    [(PKPeerPaymentRecurringPayment *)pendingRecurringPayment setCurrency:v50];

    v51 = self->_pendingRecurringPayment;
    v83 = v43;
    v52 = [v43 amount];
    [(PKPeerPaymentRecurringPayment *)v51 setAmount:v52];

    v53 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v54 = [v53 recipientAddresses];
    v55 = [v54 firstObject];

    v56 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    v57 = [(PKPeerPaymentRecurringPayment *)self->_pendingRecurringPayment copy];
    v58 = [v56 initWithRecurringPayment:v57 recipientAddress:v55 mode:1 context:9 peerPaymentController:self->_peerPaymentController remoteMessagesComposer:0];

    [v58 setDelegate:self];
    v59 = v89;
    v60 = [v89 minimumAmount];
    [v58 setMinimumAmount:v60];

    v61 = [v89 maximumAmount];
    [v58 setMaximumAmount:v61];

    [v58 setOverrideUserInterfaceStyle:2];
    activeViewController = self->_activeViewController;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [(PKPeerPaymentMessagesAppViewController *)self traitCollection];
      v64 = [v63 _presentationSemanticContext];

      if (v64 == 3 && PKIsPad())
      {
        [v58 setShowCancelButton:1];
        v65 = [[PKNavigationController alloc] initWithRootViewController:v58];
        [(PKPeerPaymentMessagesContent *)v65 setOverrideUserInterfaceStyle:2];
        [(PKPeerPaymentMessagesContent *)v65 setModalPresentationStyle:0];
        [(PKPeerPaymentMessagesAppViewController *)self presentViewController:v65 animated:1 completion:0];
      }

      else
      {
        v65 = self->_activeViewController;
        [(PKPeerPaymentMessagesContent *)v65 setOverrideUserInterfaceStyle:2];
        [(PKPeerPaymentMessagesContent *)v65 pushViewController:v58 animated:1];
      }

      v59 = v89;
    }

    v40 = v86;
    if (v9)
    {
      (*(v9 + 2))(v9, 1);
    }

    v42 = v84;
    v71 = v83;
  }

  else
  {
    v71 = +[NSMutableDictionary dictionary];
    [v71 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
    [v71 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
    v72 = PKTitleForDisplayableError();
    [v71 setObject:v72 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

    v73 = PKMessageForDisplayableError();
    [v71 setObject:v73 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

    v74 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_ACTION_UNAVAILABLE_ADD_CARD_BUTTON_TITLE");
    [v71 setObject:v74 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    v75 = PKLocalizedString(@"CANCEL_BUTTON_TITLE");
    [v71 setObject:v75 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

    [PKUserNotificationAgent presentNotificationWithParameters:v71 flags:0 responseHandler:&stru_10001CC40];
  }

LABEL_76:
  v79 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 0xC)
    {
      v80 = @"unknown";
    }

    else
    {
      v80 = off_10001D2C8[a3];
    }

    v81 = @"NO";
    *buf = 134218498;
    *&buf[4] = self;
    v101 = 2114;
    if (v10)
    {
      v81 = @"YES";
    }

    v102 = v80;
    v103 = 2114;
    v104 = v81;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Handle action: %{public}@, handled: %{public}@", buf, 0x20u);
  }

  if (v9)
  {
    v82 = v10;
  }

  else
  {
    v82 = 1;
  }

  if ((v82 & 1) == 0)
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (CGSize)contentSize
{
  [(UIView *)self->_rootView bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)noteContentSizeNeedsUpdate
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Requesting content size update", v4, 2u);
  }

  [(PKPeerPaymentMessagesAppViewController *)self requestResize];
}

- (void)noteReadyForDisplay
{
  [(PKPeerPaymentMessagesAppViewController *)self invalidateMessageTintColor];
  if (!self->_readyForDisplay)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Ready for display.", v4, 2u);
    }

    [(PKPeerPaymentMessagesAppViewController *)self setReadyForDisplay];
    self->_readyForDisplay = 1;
  }
}

- (void)localStatusForMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 type] == 1)
    {
      v8 = [v6 paymentIdentifier];
      if (v8)
      {
        v9 = [(PKTransactionSource *)self->_transactionSource transactionSourceIdentifiers];
        v10 = [v9 anyObject];

        paymentService = self->_paymentService;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100007D58;
        v17[3] = &unk_10001CC68;
        v18 = v6;
        v19 = self;
        v20 = v8;
        v21 = v7;
        [(PKPaymentService *)paymentService transactionWithServiceIdentifier:v20 transactionSourceIdentifier:v10 completion:v17];

        v12 = v18;
LABEL_5:

LABEL_12:
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if ([v6 type] == 2 && (objc_msgSend(v6, "isFromMe") & 1) == 0)
    {
      v13 = [v6 requestToken];
      v8 = [v13 requestToken];

      if (v8)
      {
        v10 = objc_alloc_init(PKPaymentTransactionRequest);
        [v10 setPeerPaymentRequestToken:v8];
        [v10 setLimit:1];
        v14 = self->_paymentService;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100007EC0;
        v15[3] = &unk_10001CC90;
        v16 = v7;
        [(PKPaymentService *)v14 transactionsForRequest:v10 completion:v15];
        v12 = v16;
        goto LABEL_5;
      }

LABEL_11:
      (*(v7 + 2))(v7, 0);
      goto LABEL_12;
    }

    (*(v7 + 2))(v7, 0);
  }

LABEL_13:
}

- (void)remoteStatusForMessage:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [a3 paymentIdentifier];
    if (v7 && PKNetworkConnectivityAvailable())
    {
      peerPaymentController = self->_peerPaymentController;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000800C;
      v9[3] = &unk_10001CCB8;
      v10 = v6;
      [(PKPeerPaymentController *)peerPaymentController statusForPaymentIdentifier:v7 withCompletion:v9];
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

- (BOOL)_openWallet
{
  v2 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v3 = [v2 associatedPassUniqueID];

  if (PKPassbookIsSupported())
  {
    v4 = [NSString stringWithFormat:@"shoebox://card/%@", v3];
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = [NSURL URLWithString:@"prefs:root=PASSBOOK"];
  }

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [v6 openSensitiveURL:v5 withOptions:0];

  return v7;
}

- (void)_showPaymentDetailsForMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 transactionIdentifier];
  if (!v6 || [v6 type] != 1 || !objc_msgSend(v6, "hasBeenSent") || !objc_msgSend(v8, "length"))
  {
    v9 = 0;
    goto LABEL_8;
  }

  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    PKShowAlertForWalletUninstalled();
LABEL_15:
    v9 = 1;
    goto LABEL_8;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _requiresEnablement])
  {
    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
    v11 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_TITLE");
    [v10 setObject:v11 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

    v12 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_MESSAGE");
    [v10 setObject:v12 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

    v13 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_ACTION_SETTINGS");
    [v10 setObject:v13 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    v14 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_ACTION_CANCEL");
    [v10 setObject:v14 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

    [PKUserNotificationAgent presentNotificationWithParameters:v10 flags:0 responseHandler:&stru_10001CCD8];
    goto LABEL_15;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
    v16 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_TITLE");
    [v15 setObject:v16 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

    v17 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_MESSAGE");
    [v15 setObject:v17 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

    v18 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_ACTION_SET_UP");
    [v15 setObject:v18 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    v19 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_ACTION_CANCEL");
    [v15 setObject:v19 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100008710;
    v26[3] = &unk_10001CD00;
    v26[4] = self;
    v27 = v6;
    [PKUserNotificationAgent presentNotificationWithParameters:v15 flags:0 responseHandler:v26];

    goto LABEL_15;
  }

  v20 = [(PKPeerPaymentController *)self->_peerPaymentController peerPaymentPass];
  v21 = [v20 deviceTransactionSourceIdentifiers];
  v22 = [v21 anyObject];

  v23 = PKTransactionDetailsSensitiveURL();
  if (v23)
  {
    PKAnalyticsSendEvent();
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Launching transaction details with url: %@", buf, 0xCu);
    }

    v25 = +[LSApplicationWorkspace defaultWorkspace];
    v9 = [v25 openSensitiveURL:v23 withOptions:0];
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Could not construct transaction details URL for message: %@", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_8:
  if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)_showRecurringPaymentDetailsForMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recurringPaymentIdentifier];
  if (v6 && [v6 type] == 3 && objc_msgSend(v6, "hasBeenSent") && objc_msgSend(v8, "length"))
  {
    if (PKPassbookIsCurrentlyDeletedByUser())
    {
      PKShowAlertForWalletUninstalled();
      goto LABEL_11;
    }

    if ([(PKPeerPaymentMessagesAppViewController *)self _requiresEnablement])
    {
      v9 = +[NSMutableDictionary dictionary];
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
      v10 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_TITLE");
      [v9 setObject:v10 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      v11 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_MESSAGE");
      [v9 setObject:v11 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v12 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_ACTION_SETTINGS");
      [v9 setObject:v12 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v13 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_ENABLEMENT_REQUIRED_ALERT_ACTION_CANCEL");
      [v9 setObject:v13 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

      [PKUserNotificationAgent presentNotificationWithParameters:v9 flags:0 responseHandler:&stru_10001CD20];
      goto LABEL_11;
    }

    if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
    {
      v14 = +[NSMutableDictionary dictionary];
      [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
      [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
      v15 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_TITLE");
      [v14 setObject:v15 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      v16 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_MESSAGE");
      [v14 setObject:v16 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v17 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_ACTION_SET_UP");
      [v14 setObject:v17 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v18 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_SHOW_DETAILS_SETUP_REQUIRED_ALERT_ACTION_CANCEL");
      [v14 setObject:v18 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100008C48;
      v24[3] = &unk_10001CD00;
      v24[4] = self;
      v25 = v6;
      [PKUserNotificationAgent presentNotificationWithParameters:v14 flags:0 responseHandler:v24];

LABEL_11:
      v19 = 1;
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v20 = [NSString stringWithFormat:@"https://wallet.apple.com/%@/%@/%@", PKURLActionRoutePeerPaymentPass, PKURLActionRouteRecurringPayment, v8];
    v21 = [NSURL URLWithString:v20];

    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Launching recurring payment details with url: %@", buf, 0xCu);
    }

    v23 = +[LSApplicationWorkspace defaultWorkspace];
    [v23 openURL:v21 configuration:0 completionHandler:0];
  }

  v19 = 0;
  if (v7)
  {
LABEL_17:
    v7[2](v7, v19);
  }

LABEL_18:
}

- (BOOL)_iMessageIsEnabled
{
  if (PKUseMockSURFServer() && PKIsSimulator())
  {
    return 1;
  }

  return _PKiMessageIsActive();
}

- (BOOL)_requiresEnablement
{
  if (PKUseMockSURFServer())
  {
    return 0;
  }

  v4 = [(PKPeerPaymentController *)self->_peerPaymentController webService];
  v5 = [v4 needsRegistration];

  return v5;
}

- (BOOL)_requiresSetupFlow
{
  v2 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  if (([PKPeerPaymentOnDeviceProvisioningCheck peerPaymentPassIsProvisionedOnDeviceForAccount:v2]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = PKUseMockSURFServer() ^ 1;
  }

  return v3;
}

- (BOOL)_accountIsLocked
{
  if ((PKUseMockSURFServer() & 1) == 0)
  {
    v4 = [(PKPeerPaymentController *)self->_peerPaymentController account];
    v5 = [v4 state];
    v6 = +[PKPassLibrary sharedInstance];
    v7 = [v4 associatedPassUniqueID];
    v8 = [v6 passWithUniqueID:v7];

    v9 = [v8 paymentPass];
    v10 = [v9 activationState];
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (([v4 identityVerificationRequired] & 1) == 0)
      {
LABEL_5:
        v3 = 1;
LABEL_8:

        return v3;
      }
    }

    else if (v5 == 4)
    {
      goto LABEL_5;
    }

    v3 = v10 == 3;
    goto LABEL_8;
  }

  return 0;
}

- (BOOL)_isGroupConversation
{
  v2 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v3 = [v2 recipientAddresses];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)_isBusinessConversation
{
  v2 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v3 = [v2 recipientAddresses];
  v4 = [v3 firstObject];
  v5 = [v4 lowercaseString];

  LOBYTE(v2) = IMStringIsBusinessID();
  return v2;
}

- (id)_senderAddress
{
  v2 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v3 = [v2 senderAddress];

  return v3;
}

- (id)_conversationAddress
{
  if (![(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    v4 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v7 = [v4 recipientAddresses];
    v6 = [v7 firstObject];

LABEL_7:
    goto LABEL_9;
  }

  if ([(PKPeerPaymentController *)self->_peerPaymentController supportsGroupMessage])
  {
    v3 = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
    v4 = [v3 conversationAddress];

    pendingInformalPaymentRequestRecipientAddress = v4;
    if (!v4)
    {
      pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
    }

    v6 = pendingInformalPaymentRequestRecipientAddress;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)_confirmSendAmount:(id)a3 toRecipientWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (PKStoreDemoModeEnabled())
    {
      v8 = +[NSMutableDictionary dictionary];
      [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
      [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
      v9 = PKLocalizedString(@"GENERIC_DEMO_MODE_TITLE");
      [v8 setObject:v9 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v10 = PKLocalizedString(@"GENERIC_DEMO_MODE_BUTTON");
      [v8 setObject:v10 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000093E8;
      v21[3] = &unk_10001CD48;
      v22 = v7;
      [PKUserNotificationAgent presentNotificationWithParameters:v8 flags:0 responseHandler:v21];
    }

    else
    {
      v11 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
      if ([(PKPeerPaymentMessagesAppViewController *)self _recipientAddressFoundInContacts:v11])
      {
      }

      else
      {
        v12 = [(PKPeerPaymentController *)self->_peerPaymentController account];
        v13 = [v12 sendRestrictionType];

        if (v13 == 2)
        {
          [PKAnalyticsReporter reportAppleCashSenderErrorPage:PKAnalyticsReportPeerPaymentErrorContactsOnlyPageTag];
          v14 = +[NSMutableDictionary dictionary];
          [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
          [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
          v15 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_SENDS_TITLE");
          [v14 setObject:v15 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

          v16 = [(PKPeerPaymentMessagesAppViewController *)self recipientDisplayName];
          v17 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_RECIPIENT_CONTACTS_RESTRICTED_MESSAGE", @"%@", v16);
          [v14 setObject:v17 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

          v18 = PKLocalizedString(@"OK_BUTTON_TITLE");
          [v14 setObject:v18 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

          [PKUserNotificationAgent presentNotificationWithParameters:v14 flags:0 responseHandler:&stru_10001CD68];
          (*(v7 + 2))(v7, 0);

          goto LABEL_11;
        }
      }

      if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100009428;
        v19[3] = &unk_10001CC00;
        v20 = v7;
        [(PKPeerPaymentMessagesAppViewController *)self _presentInlineSetupFlowWithAmount:v6 flowState:4 completion:v19];
      }

      else
      {
        (*(v7 + 2))(v7, 1);
      }
    }
  }

LABEL_11:
}

- (void)_confirmRequestAmount:(id)a3 toRecipientWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (PKStoreDemoModeEnabled())
    {
      v8 = +[NSMutableDictionary dictionary];
      [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
      [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
      v9 = PKLocalizedString(@"GENERIC_DEMO_MODE_TITLE");
      [v8 setObject:v9 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v10 = PKLocalizedString(@"GENERIC_DEMO_MODE_BUTTON");
      [v8 setObject:v10 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000978C;
      v18[3] = &unk_10001CD48;
      v19 = v7;
      [PKUserNotificationAgent presentNotificationWithParameters:v8 flags:0 responseHandler:v18];
    }

    else if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000097A0;
      v16[3] = &unk_10001CC00;
      v17 = v7;
      [(PKPeerPaymentMessagesAppViewController *)self _presentInlineSetupFlowWithAmount:v6 flowState:5 completion:v16];
    }

    else if (([(PKPeerPaymentController *)self->_peerPaymentController allowsPaymentRequests]& 1) != 0)
    {
      (*(v7 + 2))(v7, 1);
    }

    else
    {
      v11 = +[NSMutableDictionary dictionary];
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
      v12 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_REQUESTS_TITLE");
      [v11 setObject:v12 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      v13 = [(PKPeerPaymentMessagesAppViewController *)self recipientDisplayName];
      v14 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_REQUESTS_FORMAT", @"%@", v13);
      [v11 setObject:v14 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v15 = PKLocalizedString(@"OK_BUTTON_TITLE");
      [v11 setObject:v15 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      [PKUserNotificationAgent presentNotificationWithParameters:v11 flags:0 responseHandler:&stru_10001CD88];
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)_presentInlineSetupFlowWithAmount:(id)a3 flowState:(unint64_t)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009880;
  v9[3] = &unk_10001CDB0;
  v10 = self;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v7 = v12;
  v8 = v11;
  [(PKPeerPaymentMessagesAppViewController *)v10 _hostSceneIdentifierForMessageIdentifier:0 withCompletion:v9];
}

- (void)_presentInlineSetupFlowWithPeerPaymentMessage:(id)a3 flowState:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009980;
  v13[3] = &unk_10001CDB0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  [(PKPeerPaymentMessagesAppViewController *)self _hostSceneIdentifierForMessageIdentifier:v10 withCompletion:v13];
}

- (void)_presentInlineSetupFlowWithAmount:(id)a3 flowState:(unint64_t)a4 senderAddress:(id)a5 hostSceneIdentifier:(id)a6 completion:(id)a7
{
  v12 = a7;
  peerPaymentController = self->_peerPaymentController;
  v28 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(PKPeerPaymentController *)peerPaymentController webService];
  v17 = [v16 peerPaymentService];

  if (PKIsPad())
  {
    +[UIApplication sharedApplication];
    v18 = v27 = a4;
    [v18 windows];
    v19 = v26 = v17;
    v20 = [v19 firstObject];
    v21 = [v20 windowScene];
    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 interfaceOrientation]);

    v17 = v26;
    a4 = v27;
  }

  else
  {
    v22 = &off_10001E168;
  }

  v23 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v24 = PKMobileSMSBundleIdentifier;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100009C08;
  v29[3] = &unk_10001CC00;
  v30 = v12;
  v25 = v12;
  [v17 presentRegistrationFlowWithAccount:v23 amount:v15 state:a4 senderAddress:v14 orientation:v22 hostSceneIdentifier:v28 hostSceneBundleIdentifier:v24 completion:v29];
}

- (void)_presentSetupFlowWithPeerPaymentMessage:(id)a3 flowState:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(PKPeerPaymentAccountResolutionControllerConfiguration);
  v10 = [v8 currencyAmount];
  [v9 setCurrencyAmount:v10];

  [v9 setRegistrationFlowState:a4];
  v11 = [v8 senderAddress];

  [v9 setSenderAddress:v11];
  v12 = PKPeerPaymentGetSetupSensitiveURLWithConfiguration();
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  v14 = [v13 openSensitiveURL:v12 withOptions:0];

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (v14)
    {
      v16 = @"YES";
    }

    v17 = 138543362;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Peer payment setup flow presented with success %{public}@.", &v17, 0xCu);
  }

  if (v7)
  {
    v7[2](v7, v14);
  }
}

- (void)_handleRecipientBecameInvalid:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Recipient became invalid.", buf, 2u);
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]!= self->_state)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Updating messages content state in response to recipient becoming invalid.", v6, 2u);
    }

    [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:1];
  }
}

- (BOOL)_peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  if ([v5 role] == 1 && objc_msgSend(v4, "length"))
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"PKPeerPaymentParticipantSharingMemoMessage"];
    v8 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_currentRequestTokenForAmount:(id)a3
{
  if (self->_pendingFormalPaymentRequestMesssage)
  {
    v3 = [(PKPeerPaymentMessage *)self->_pendingFormalPaymentRequestMesssage requestToken];
  }

  else if ([(PKCurrencyAmount *)self->_pendingInformalPaymentRequestAmount isEqual:a3])
  {
    v3 = +[PKPeerPaymentInformalRequestToken token];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleAccountChanged:(id)a3
{
  v4 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];

  if (v4 && [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]!= self->_state)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Updating messages content state in response to an account changed notification.", v6, 2u);
    }

    [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:0];
  }
}

- (void)_updateWithFamilyCollection:(id)a3
{
  v8 = a3;
  v4 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v5 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:11 shouldLoad:1];
  if ([v4 supportsRecurringPayments])
  {
    v6 = [v8 currentUser];
    if ([v4 isEligibleForRecurringPaymentsForUser:v6])
    {
      v7 = PKIsVision();

      if ((v7 & 1) == 0)
      {
        [v5 setCenterAction:7];
      }
    }

    else
    {
    }
  }
}

- (void)_stagePaymentWithAmount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  pendingRecurringPayment = self->_pendingRecurringPayment;
  self->_pendingRecurringPayment = 0;

  if (self->_pendingInformalPaymentRequestAmount)
  {
    v9 = &PKAggDKeyPeerPaymentOriginPayDataDetector;
  }

  else
  {
    v9 = &PKAggDKeyPeerPaymentOriginPayMessages;
  }

  v10 = *v9;
  PKAnalyticsSendEvent();
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A36C;
  v13[3] = &unk_10001CE50;
  objc_copyWeak(&v16, &location);
  v11 = v7;
  v15 = v11;
  v12 = v6;
  v14 = v12;
  [(PKPeerPaymentMessagesAppViewController *)self _confirmSendAmount:v12 toRecipientWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_stageRequestWithAmount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  pendingRecurringPayment = self->_pendingRecurringPayment;
  self->_pendingRecurringPayment = 0;

  if (self->_pendingInformalPaymentRequestAmount)
  {
    v9 = &PKAggDKeyPeerPaymentOriginRequestDataDetector;
  }

  else
  {
    v9 = &PKAggDKeyPeerPaymentOriginRequestMessages;
  }

  v10 = *v9;
  PKAnalyticsSendEvent();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A9C8;
  v13[3] = &unk_10001CB88;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(PKPeerPaymentMessagesAppViewController *)self _confirmRequestAmount:v12 toRecipientWithCompletion:v13];
}

- (void)_stageRecurringPayment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_pendingRecurringPayment, a3);
  objc_initWeak(&location, self);
  v9 = [v7 amount];
  v10 = [v7 currency];
  v11 = PKCurrencyAmountMake();

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AEC8;
  v15[3] = &unk_10001CEF0;
  v12 = v7;
  v16 = v12;
  v17 = self;
  v13 = v11;
  v18 = v13;
  objc_copyWeak(&v20, &location);
  v14 = v8;
  v19 = v14;
  [(PKPeerPaymentMessagesAppViewController *)self _confirmSendAmount:v13 toRecipientWithCompletion:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_confirmPaymentMessageInsertionWithQuote:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Confirm payment message insertion with peer payment quote: %@", buf, 0xCu);
  }

  if ([v6 riskLevel])
  {
    objc_initWeak(buf, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000B6FC;
    v25[3] = &unk_10001CF18;
    objc_copyWeak(&v28, buf);
    v26 = v6;
    v27 = v7;
    v9 = [PKPeerPaymentFraudUIFactory fraudUIViewControllerForQuote:v26 continuationHandler:v25];
    v10 = [(PKPeerPaymentMessagesAppViewController *)self traitCollection];
    v11 = [v10 _presentationSemanticContext];

    if (v11 == 3 && PKIsPad())
    {
      [v9 setModalPresentationStyle:6];
    }

    v12 = [(PKPeerPaymentMessagesAppViewController *)self pkui_frontMostViewController];
    [v12 presentViewController:v9 animated:1 completion:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    if ([CNContactStore authorizationStatusForEntityType:0]!= 3)
    {
      goto LABEL_12;
    }

    v13 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
    v14 = [(PKPeerPaymentMessagesAppViewController *)self _recipientAddressFoundInContacts:v13];

    if (v14)
    {
      goto LABEL_12;
    }

    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
    v16 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_CONFIRM_UNKNOWN_RECIPIENT_TITLE");
    [v15 setObject:v16 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

    v17 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_CONFIRM_UNKNOWN_RECIPIENT_MESSAGE");
    [v15 setObject:v17 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

    v18 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_CONFIRM_UNKNOWN_RECIPIENT_ACTION_CONTINUE");
    [v15 setObject:v18 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    v19 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_CONFIRM_UNKNOWN_RECIPIENT_ACTION_CANCEL");
    [v15 setObject:v19 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

    [PKAnalyticsReporter reportAppleCashSenderErrorPage:PKAnalyticsReportPeerPaymentErrorNotInContactsPageTag];
    if (v15)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000B7DC;
      v20[3] = &unk_10001CF80;
      v22 = &stru_10001CF38;
      v23 = &stru_10001CF58;
      v20[4] = self;
      v21 = v6;
      v24 = v7;
      [PKUserNotificationAgent presentNotificationWithParameters:v15 flags:0 responseHandler:v20];
    }

    else
    {
LABEL_12:
      [(PKPeerPaymentMessagesAppViewController *)self _insertPaymentMessageWithQuote:v6 completion:v7];
    }
  }
}

- (void)_insertPaymentMessageWithQuote:(id)a3 completion:(id)a4
{
  v6 = a3;
  v39 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Insert payment message with peer payment quote: %@", buf, 0xCu);
  }

  v8 = [(PKPeerPaymentMessage *)v6 totalReceiveAmount];
  v9 = [(PKPeerPaymentMessage *)v6 totalReceiveAmountCurrency];
  v10 = PKCurrencyAmountCreate(v8, v9, 0);

  if (self->_pendingFormalPaymentRequestMesssage && ![(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    v12 = [(PKPeerPaymentMessage *)self->_pendingFormalPaymentRequestMesssage underlyingMessage];
    v11 = [v12 session];

    if (v11)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        pendingFormalPaymentRequestMesssage = self->_pendingFormalPaymentRequestMesssage;
        *buf = 138412290;
        v46 = pendingFormalPaymentRequestMesssage;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Found a pending formal payment request message. Inserted message will have session %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = [(PKPeerPaymentMessage *)v6 isRecurringPayment];
  if (v14)
  {
    v15 = [(PKPeerPaymentMessage *)v6 recurringPaymentIdentifier];

    if (v15)
    {
      v16 = [MSSession alloc];
      v17 = [NSUUID alloc];
      v18 = [(PKPeerPaymentMessage *)v6 recurringPaymentIdentifier];
      v19 = [v17 initWithUUIDString:v18];
      v20 = [v16 initWithIdentifier:v19];

      v21 = 3;
      v11 = v20;
    }

    else
    {
      v21 = 3;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = [[PKPeerPaymentMessage alloc] initWithType:v21 session:v11];
  [v22 setCurrencyAmount:v10];
  v23 = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
  [v22 setSenderAddress:v23];

  v24 = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
  v25 = [v24 normalizedAddress];
  [v22 setRecipientAddress:v25];

  v26 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:2];
  [v22 setLocalProperties:v26];

  [v22 setContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
  v27 = self->_pendingFormalPaymentRequestMesssage;
  if (v27)
  {
    v28 = [(PKPeerPaymentMessage *)v27 memo];
    [v22 setMemo:v28];

    v29 = [(PKPeerPaymentMessage *)self->_pendingFormalPaymentRequestMesssage requestToken];
    [v22 setRequestToken:v29];
  }

  if (v14)
  {
    v30 = [(PKPeerPaymentMessage *)v6 startDate];
    [v22 setRecurringPaymentStartDate:v30];

    [v22 setRecurringPaymentFrequency:{-[PKPeerPaymentMessage frequency](v6, "frequency")}];
    v31 = [(PKPeerPaymentRecurringPayment *)self->_pendingRecurringPayment memo];
    [v22 setRecurringPaymentMemo:v31];
  }

  objc_storeStrong(&self->_stagedPeerPaymentMessage, v22);
  v32 = +[PKMessagesAppSharedContext sharedContext];
  v33 = [(PKPeerPaymentController *)self->_peerPaymentController externalizedControllerState];
  v34 = [v22 identifier];
  [v32 persistExternalizedControllerState:v33 forMessageIdentifier:v34];

  v35 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v36 = [v22 underlyingMessage];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10000BD80;
  v41[3] = &unk_10001CFF8;
  v42 = v22;
  v43 = self;
  v44 = v40;
  v37 = v40;
  v38 = v22;
  [v35 insertMessage:v36 completionHandler:v41];
}

- (void)_insertRequestMessageWithAmount:(id)a3 requestToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Insert request with amount: %@ requestToken: %@", buf, 0x16u);
  }

  v12 = objc_alloc_init(PKPeerPaymentMessage);
  v13 = [(PKPeerPaymentController *)self->_peerPaymentController messagesContext];
  [v12 setType:2];
  [v12 setCurrencyAmount:v8];
  [v12 setRequestToken:v9];
  v14 = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
  [v12 setSenderAddress:v14];

  v15 = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
  v16 = [v15 normalizedAddress];
  [v12 setRecipientAddress:v16];

  v17 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:2];
  [v12 setLocalProperties:v17];

  [v12 setContext:v13];
  if (v13 == 2)
  {
    v18 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v19 = [v18 groupID];
    [v12 setMessagesGroupIdentifier:v19];
  }

  objc_storeStrong(&self->_stagedPeerPaymentMessage, v12);
  v20 = +[PKMessagesAppSharedContext sharedContext];
  v21 = [(PKPeerPaymentController *)self->_peerPaymentController externalizedControllerState];
  v22 = [v12 identifier];
  [v20 persistExternalizedControllerState:v21 forMessageIdentifier:v22];

  v23 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  v24 = [v12 underlyingMessage];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000C424;
  v27[3] = &unk_10001CFF8;
  v28 = v12;
  v29 = self;
  v30 = v10;
  v25 = v10;
  v26 = v12;
  [v23 insertMessage:v24 completionHandler:v27];
}

- (void)_handleRespondToPaymentRequestActionWithMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 type];
    if (v8 && v9 != 2)
    {
      goto LABEL_4;
    }
  }

  else if (v7)
  {
LABEL_4:
    v8[2](v8, 0);
  }

  if ([v6 context] == 2)
  {
    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000C964;
    v15[3] = &unk_10001D040;
    objc_copyWeak(&v19, &location);
    v18 = v8;
    v16 = v6;
    v17 = self;
    v10 = objc_retainBlock(v15);
    v11 = v10;
    if (self->_identifiedRecipients)
    {
      (v10[2])(v10);
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000CB3C;
      v13[3] = &unk_10001D068;
      v14 = v10;
      [(PKPeerPaymentMessagesAppViewController *)self _identifyGroupRecipientsWithCompletion:v13];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = +[PKMessagesAppSharedContext sharedContext];
    [v12 handlePaymentRequestMessage:v6 sender:self completion:v8];
  }
}

- (void)_handleError:(id)a3 forAction:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [PKPeerPaymentController proposedResolutionForError:v8];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000101C8();
      }

      peerPaymentController = self->_peerPaymentController;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000CE80;
      v28[3] = &unk_10001D090;
      v30 = a4;
      v28[4] = self;
      v29 = v9;
      [(PKPeerPaymentController *)peerPaymentController handleTermsAcceptanceRequiredWithError:v8 completion:v28];
      v14 = v29;
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_20;
      }

      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10001018C();
      }

      if ((PKDeviceSupportsPeerPaymentIdentityVerification() & 1) == 0)
      {
        v17 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported();
        v18 = [v17 title];
        v19 = [v17 message];
        v20 = [v17 actions];
        v21 = [v20 firstObject];
        v22 = [v21 title];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10000CF64;
        v26[3] = &unk_10001D0B8;
        v27 = v9;
        [(PKPeerPaymentMessagesAppViewController *)self _presentAlertWithTitle:v18 message:v19 buttonTitle:v22 completion:v26];

        goto LABEL_20;
      }

      v13 = self->_peerPaymentController;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000CF80;
      v23[3] = &unk_10001D090;
      v25 = a4;
      v23[4] = self;
      v24 = v9;
      [(PKPeerPaymentController *)v13 handleIdentityVerificationWithError:v8 completion:v23];
      v14 = v24;
    }

    goto LABEL_20;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = [PKPeerPaymentController displayableErrorForError:v8];

      [(PKPeerPaymentMessagesAppViewController *)self _presentAlertWithDisplayableError:v11];
      if (v9)
      {
        (*(v9 + 2))(v9, 1);
      }

      v8 = v11;
    }
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }

LABEL_20:
}

- (void)_handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:(id)a3 completion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D12C;
  block[3] = &unk_10001D0E0;
  v9 = a3;
  v10 = a4;
  block[4] = self;
  v6 = v9;
  v7 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentAlertWithDisplayableError:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [PKAnalyticsReporter pageTagForAppleCashSenderError:v3];
  [PKAnalyticsReporter reportAppleCashSenderErrorPage:v5];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
  v6 = PKTitleForDisplayableError();
  [v4 setObject:v6 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  v7 = PKMessageForDisplayableError();
  [v4 setObject:v7 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v8 = PKLocalizedString(@"OK_BUTTON_TITLE");
  [v4 setObject:v8 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000D7B4;
  v24[3] = &unk_10001D108;
  v9 = v5;
  v25 = v9;
  v10 = objc_retainBlock(v24);
  v11 = [v3 localizedRecoveryOptions];
  v12 = [v11 firstObject];

  v13 = [v3 userInfo];

  v14 = [v13 objectForKeyedSubscript:PKErrorRecoveryURLKey];

  if (v12 && v14)
  {
    v15 = PKLocalizedString(@"CANCEL_BUTTON_TITLE");
    [v4 setObject:v15 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    [v4 setObject:v12 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000D7D4;
    v22[3] = &unk_10001D108;
    v23 = v9;
    v16 = objc_retainBlock(v22);

    v10 = v16;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000D7F4;
  v19[3] = &unk_10001D130;
  v20 = v14;
  v21 = v10;
  v17 = v10;
  v18 = v14;
  [PKUserNotificationAgent presentNotificationWithParameters:v4 flags:0 responseHandler:v19];
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"com.apple.messages.surf"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"com.apple.messages.datadetectors.currency") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"com.apple.messages.appLaunchURLPluginPayload"))
  {
    v8 = [v6 objectForKeyedSubscript:@"Currency"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v42 = v6;
      v43 = v7;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v41 = v8;
      obj = v8;
      v9 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v9)
      {
        v10 = v9;
        val = self;
        v11 = 0;
        v12 = *v55;
LABEL_8:
        v13 = 0;
        while (1)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v54 + 1) + 8 * v13);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v59 = v14;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Text input payload currency array contains non-dictionary type: %@", buf, 0xCu);
            }

            goto LABEL_27;
          }

          v15 = [v14 objectForKeyedSubscript:@"SenderHandle"];

          v16 = [v14 objectForKeyedSubscript:@"CurrencyType"];
          v17 = [v14 objectForKeyedSubscript:@"CurrencyValue"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            goto LABEL_18;
          }

          v19 = 0;
LABEL_24:
          v22 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v14;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Text input payload currency amount dictionary does not contain appropriate values: %@", buf, 0xCu);
          }

          v11 = v15;
LABEL_27:

          if (v10 == ++v13)
          {
            v10 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v10)
            {
              goto LABEL_8;
            }

            goto LABEL_50;
          }
        }

        v18 = [NSDecimalNumber decimalNumberWithString:v17];
LABEL_18:
        v19 = v18;
        if (v16)
        {
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = v15;
              v20 = +[NSDecimalNumber notANumber];
              v21 = [v19 isEqualToNumber:v20];

              if (!v21)
              {
                v25 = PKCurrencyDecimalAmountRound();

                v26 = [[PKCurrencyAmount alloc] initWithAmount:v25 currency:v16 exponent:0];
                if (!v26)
                {
                  v8 = v41;
                  v6 = v42;
                  v23 = v44;
                  goto LABEL_52;
                }

                v27 = [(PKPeerPaymentMessagesAppViewController *)val currentBalance];
                v28 = [v27 currency];

                v29 = [v26 currency];
                v24 = [v29 isEqualToString:v28];
                v6 = v42;
                if (v24)
                {
                  v30 = [v26 amount];
                  v31 = [(PKPeerPaymentMessagesAppViewController *)val minimumTransferAmount];
                  v32 = [(PKPeerPaymentMessagesAppViewController *)val maximumTransferAmount];
                  v33 = v26;
                  obja = v32;
                  if (v31 && [v30 compare:v31]== -1)
                  {
                    v34 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v59 = v30;
                      v60 = 2112;
                      v61 = v31;
                      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Suggested amount %@ is less than the minimum transfer amount %@. Using minimum transfer amount instead.", buf, 0x16u);
                    }

                    v35 = [[PKCurrencyAmount alloc] initWithAmount:v31 currency:v28 exponent:0];
                    v33 = v35;
                    v32 = obja;
                  }

                  if (v32 && [v30 compare:v32]== 1)
                  {
                    v36 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v59 = v30;
                      v60 = 2112;
                      v61 = obja;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Suggested amount %@ is greater than the maximum transfer amount %@. Using maximum transfer amount instead.", buf, 0x16u);
                    }

                    v37 = [[PKCurrencyAmount alloc] initWithAmount:obja currency:v28 exponent:0];
                    v33 = v37;
                  }

                  objc_initWeak(buf, val);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_10000E034;
                  block[3] = &unk_10001D1D0;
                  v48 = v33;
                  v49 = v42;
                  v38 = v33;
                  objc_copyWeak(&v53, buf);
                  v50 = v44;
                  v7 = v43;
                  v51 = v43;
                  v52 = val;
                  dispatch_async(&_dispatch_main_q, block);

                  objc_destroyWeak(&v53);
                  objc_destroyWeak(buf);
                }

                else
                {
                  v30 = PKLogFacilityTypeGetObject();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    sub_100010454();
                  }

                  v7 = v43;
                }

                v8 = v41;
                v23 = v44;
                goto LABEL_59;
              }

              v15 = v44;
            }
          }
        }

        goto LABEL_24;
      }

      v11 = 0;
LABEL_50:

      v23 = v11;
      v8 = v41;
      v6 = v42;
LABEL_52:
      v26 = PKLogFacilityTypeGetObject();
      v7 = v43;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000104D0();
      }

      v24 = 0;
LABEL_59:
    }

    else
    {
      v23 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100010540();
      }

      v24 = 0;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000103E4();
    }

    v24 = 0;
  }

  return v24;
}

- (void)_donatePeerPaymentInteractionForMessage:(id)a3
{
  v4 = [a3 peerPaymentMessage];
  if (v4)
  {
    v12 = v4;
    v5 = [v4 type];
    v6 = [(PKPeerPaymentMessagesAppViewController *)self _recipientPersonForIntentDonation];
    v7 = [(PKPeerPaymentMessagesAppViewController *)self _inCurrencyAmountForPeerPaymentMessage:v12];
    v8 = [v12 memo];
    if (v5 == 2)
    {
      v9 = [[INRequestPaymentIntent alloc] initWithPayer:v6 currencyAmount:v7 note:v8];
    }

    else
    {
      if (v5 != 1)
      {
LABEL_8:

        v4 = v12;
        goto LABEL_9;
      }

      v9 = [[INSendPaymentIntent alloc] initWithPayee:v6 currencyAmount:v7 note:v8];
    }

    v10 = v9;
    if (v9)
    {
      [v9 _setLaunchId:PKMobileSMSBundleIdentifier];
      [v10 _setExtensionBundleId:PKIntentsExtensionBundleIdentifier];
      [v10 _setUiExtensionBundleId:PKIntentsUIExtensionBundleIdentifier];
      v11 = [[INInteraction alloc] initWithIntent:v10 response:0];
      [v11 _donateInteractionWithBundleId:0 completion:&stru_10001D210];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (id)_inCurrencyAmountForPeerPaymentMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 amount];
  v5 = [v3 currency];

  v6 = 0;
  if (v4 && v5)
  {
    v6 = [[INCurrencyAmount alloc] initWithAmount:v4 currencyCode:v5];
  }

  return v6;
}

- (id)_recipientPersonForIntentDonation
{
  v3 = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  v4 = v3;
  if (v3)
  {
    if ([v3 containsString:@"@"])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = [[INPersonHandle alloc] initWithValue:v4 type:v5];
    v7 = [(PKPeerPaymentController *)self->_peerPaymentController contactForHandle:v4];
    v8 = [v7 identifier];
    v9 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:v4 contact:v7];
    v10 = [v7 nameComponents];
    v11 = [[INPerson alloc] initWithPersonHandle:v6 nameComponents:v10 displayName:v9 image:0 contactIdentifier:v8 customIdentifier:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_handlePaymentRequestMessage:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 2)
  {
    if (v8)
    {
      v26 = 134218242;
      v27 = self;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Handle Payment Request Message: %@", &v26, 0x16u);
    }

    v7 = [v5 currency];
    v9 = [v5 amount];
    v10 = +[NSDecimalNumber zero];
    v11 = [v9 pk_isGreaterThan:v10];

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = [NSDecimalNumber decimalNumberWithString:@"1"];
    }

    v14 = v12;
    -[PKPeerPaymentController setMessagesContext:](self->_peerPaymentController, "setMessagesContext:", [v5 context]);
    objc_storeStrong(&self->_pendingFormalPaymentRequestMesssage, a3);
    pendingInformalPaymentRequestAmount = self->_pendingInformalPaymentRequestAmount;
    self->_pendingInformalPaymentRequestAmount = 0;

    if (v7)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    v13 = !v16;
    if (v16)
    {
      goto LABEL_25;
    }

    v17 = PKCurrencyAmountCreate(v14, &v7->isa, 0);
    if ([v5 context] == 2)
    {
      if (![(PKPeerPaymentController *)self->_peerPaymentController supportsGroupMessage])
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      activeViewController = self->_activeViewController;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [(PKPeerPaymentMessagesContent *)self->_activeViewController popToRootViewControllerAnimated:1];
      }

      v20 = [v5 underlyingMessage];
      v21 = [v20 senderAddress];

      v22 = [(PKPeerPaymentMessagesAppViewController *)self _identifiedRecipientForRecipientAddress:v21];
      pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
      self->_pendingInformalPaymentRequestRecipientAddress = v21;

      v24 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:9 shouldLoad:1];
      [(PKPeerPaymentMessagesAppViewController *)self _prepareIdentifiedRecipient:v22 forAmountEntryViewController:v24];
      [v24 setAmount:v17];
    }

    else
    {
      v22 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:11 shouldLoad:1];
      [v22 setAmount:v17];
      v24 = self->_pendingInformalPaymentRequestRecipientAddress;
      self->_pendingInformalPaymentRequestRecipientAddress = 0;
    }

    goto LABEL_24;
  }

  if (v8)
  {
    v26 = 134218242;
    v27 = self;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Asked to handle a Payment Message of incorrect type: %@", &v26, 0x16u);
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (void)_handleUpdatedTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4
{
  v5 = a3;
  if ([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]== 12)
  {
    v6 = [v5 serviceIdentifier];
    v7 = [v5 peerPaymentRequestToken];
    v8 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    v9 = [v8 selectedMessage];
    v10 = [v9 peerPaymentMessage];

    v11 = [v10 transactionIdentifier];
    v12 = [v10 requestToken];
    v13 = [v12 requestToken];

    if (([v11 isEqualToString:v6] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", v7))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EF7C;
      block[3] = &unk_10001D108;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)enableLiveBubbleDebugMode
{
  if (!self->_debugBallView)
  {
    v3 = [[PKShapeView alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    debugBallView = self->_debugBallView;
    self->_debugBallView = v3;

    v5 = [(PKShapeView *)self->_debugBallView shapeLayer];
    v6 = +[UIColor redColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [(PKShapeView *)self->_debugBallView shapeLayer];
    [(PKShapeView *)self->_debugBallView center];
    v9 = v8;
    v11 = v10;
    [(PKShapeView *)self->_debugBallView bounds];
    v12 = [UIBezierPath bezierPathWithArcCenter:1 radius:v9 startAngle:v11 endAngle:CGRectGetWidth(v33) * 0.5 clockwise:0.0, 6.28318531];
    [v7 setPath:{objc_msgSend(v12, "CGPath")}];

    [(UIView *)self->_rootView addSubview:self->_debugBallView];
    v13 = [[UIDynamicAnimator alloc] initWithReferenceView:self->_rootView];
    debugAnimator = self->_debugAnimator;
    self->_debugAnimator = v13;

    v15 = [UIGravityBehavior alloc];
    v32 = self->_debugBallView;
    v16 = [NSArray arrayWithObjects:&v32 count:1];
    v17 = [v15 initWithItems:v16];

    [(UIDynamicAnimator *)self->_debugAnimator addBehavior:v17];
    v18 = [UICollisionBehavior alloc];
    v31 = self->_debugBallView;
    v19 = [NSArray arrayWithObjects:&v31 count:1];
    v20 = [v18 initWithItems:v19];

    [v20 setTranslatesReferenceBoundsIntoBoundary:1];
    [(UIDynamicAnimator *)self->_debugAnimator addBehavior:v20];
    v21 = [UIDynamicItemBehavior alloc];
    v30 = self->_debugBallView;
    v22 = [NSArray arrayWithObjects:&v30 count:1];
    v23 = [v21 initWithItems:v22];

    [v23 setElasticity:0.6];
    [v23 setFriction:0.2];
    [(UIDynamicAnimator *)self->_debugAnimator addBehavior:v23];
    v24 = objc_alloc_init(CMMotionManager);
    debugMotionManager = self->_debugMotionManager;
    self->_debugMotionManager = v24;

    if ([(CMMotionManager *)self->_debugMotionManager isDeviceMotionAvailable])
    {
      [(CMMotionManager *)self->_debugMotionManager setDeviceMotionUpdateInterval:0.1];
      v26 = self->_debugMotionManager;
      v27 = +[NSOperationQueue mainQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000F3A0;
      v28[3] = &unk_10001D238;
      v29 = v17;
      [(CMMotionManager *)v26 startDeviceMotionUpdatesToQueue:v27 withHandler:v28];
    }
  }
}

- (void)updateSupportsGroupMessage
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Updating content state in response to a change in group message support.", v4, 2u);
  }

  [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:0];
}

- (void)stageRecurringPayment:(id)a3 completion:(id)a4
{
  v6 = a4;
  peerPaymentController = self->_peerPaymentController;
  v8 = a3;
  [(PKPeerPaymentController *)peerPaymentController selectMode:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F574;
  v10[3] = &unk_10001CC00;
  v11 = v6;
  v9 = v6;
  [(PKPeerPaymentMessagesAppViewController *)self _stageRecurringPayment:v8 completion:v10];
}

- (void)_reportAnalyticsForStateWithEventType:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKPeerPaymentMessagesContentStateToString([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]);
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current content state when reporting analytics: %@", buf, 0xCu);
  }

  if (([(PKPeerPaymentMessagesContent *)self->_activeViewController reportAnalyticsInternally]& 1) == 0 && [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]!= 12)
  {
    v7 = [(PKPeerPaymentMessagesAppViewController *)self _analyticsPageTag];
    v12[0] = PKAnalyticsReportFeatureTypeKey;
    v12[1] = PKAnalyticsReportEventKey;
    v13[0] = PKAnalyticsReportPeerPaymentFeatureType;
    v13[1] = v4;
    v12[2] = PKAnalyticsReportPeerPaymentP2PSideKey;
    v13[2] = PKAnalyticsReportPeerPaymentP2PSideSender;
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    v9 = [v8 mutableCopy];

    v10 = [(PKPeerPaymentMessagesAppViewController *)self _analyticsP2PContext];
    [v9 safelySetObject:v10 forKey:PKAnalyticsReportPeerPaymentP2PContextKey];

    [v9 safelySetObject:v7 forKey:PKAnalyticsReportPageTagKey];
    v11 = [(PKPeerPaymentMessagesAppViewController *)self analyticsMessagesContext];
    [PKAnalyticsReporter reportAppleCashEvent:v9 withMessagesContext:v11];
  }
}

- (void)_reportAnalyticsViewAppearedWithArchivedParent:(id)a3
{
  v6 = a3;
  v4 = PKAnalyticsSubjectAppleCash;
  v5 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

  if (!v5)
  {
    if (v6)
    {
      [PKAnalyticsReporter beginSubjectReporting:v4 withArchivedParent:v6];
    }

    else
    {
      [PKAnalyticsReporter beginSubjectReporting:v4];
    }
  }

  [(PKPeerPaymentMessagesAppViewController *)self _reportAnalyticsForStateWithEventType:PKAnalyticsReportEventTypeViewDidAppear];
}

- (void)_reportAnalyticsViewDisappeared
{
  v14[0] = PKAnalyticsReportFeatureTypeKey;
  v14[1] = PKAnalyticsReportPageTagKey;
  v15[0] = PKAnalyticsReportPeerPaymentFeatureType;
  v15[1] = PKAnalyticsReportPeerPaymentMessagesAppExtensionPageTag;
  v14[2] = PKAnalyticsReportEventKey;
  v14[3] = PKAnalyticsReportPeerPaymentP2PSideKey;
  v15[2] = PKAnalyticsReportEventTypeViewDidDisappear;
  v15[3] = PKAnalyticsReportPeerPaymentP2PSideSender;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v4 = [v3 mutableCopy];

  v5 = [(PKPeerPaymentMessagesAppViewController *)self _analyticsP2PContext];
  [v4 safelySetObject:v5 forKey:PKAnalyticsReportPeerPaymentP2PContextKey];

  v6 = [(PKPeerPaymentMessagesAppViewController *)self analyticsMessagesContext];
  [PKAnalyticsReporter reportAppleCashEvent:v4 withMessagesContext:v6];

  stagedPeerPaymentMessage = self->_stagedPeerPaymentMessage;
  if (self->_messageSource == 2)
  {
    v8 = [(PKPeerPaymentMessage *)self->_stagedPeerPaymentMessage identifier];
    v9 = v8;
    if (stagedPeerPaymentMessage)
    {
      v10 = +[PKMessagesAppSharedContext sharedContext];
      v11 = [v10 externalizedControllerStateForMessageIdentifier:v9];

      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (stagedPeerPaymentMessage)
  {
    goto LABEL_10;
  }

  v12 = PKAnalyticsSubjectAppleCash;
  v13 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

  if (v13)
  {
    [PKAnalyticsReporter endSubjectReporting:v12];
  }

LABEL_10:
}

- (void)_reportAnalyticsStagedBubbleButtonTap:(id)a3
{
  v9[0] = PKAnalyticsReportFeatureTypeKey;
  v9[1] = PKAnalyticsReportPageTagKey;
  v10[0] = PKAnalyticsReportPeerPaymentFeatureType;
  v10[1] = PKAnalyticsReportPeerPaymentP2PMessagePageTag;
  v9[2] = PKAnalyticsReportEventKey;
  v9[3] = PKAnalyticsReportButtonTagKey;
  v10[2] = PKAnalyticsReportEventTypeButtonTap;
  v10[3] = a3;
  v9[4] = PKAnalyticsReportPeerPaymentP2PSideKey;
  v10[4] = PKAnalyticsReportPeerPaymentP2PSideSender;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  v6 = [v5 mutableCopy];

  v7 = [(PKPeerPaymentMessagesAppViewController *)self _analyticsP2PContext];
  [v6 safelySetObject:v7 forKey:PKAnalyticsReportPeerPaymentP2PContextKey];

  v8 = [(PKPeerPaymentMessagesAppViewController *)self analyticsMessagesContext];
  [PKAnalyticsReporter reportAppleCashEvent:v6 withMessagesContext:v8];
}

- (id)_analyticsPageTag
{
  if (self->_messageSource != 2)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v4 = [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState];
  v5 = 0;
  v6 = &PKAnalyticsReportPeerPaymentMessagesAppExtensionPageTag;
  if (v4 > 6)
  {
    if (v4 <= 8)
    {
      if (v4 != 7)
      {
        v6 = &PKAnalyticsReportPeerPaymentErrorNoEligibleParticipantsPageTag;
      }

      goto LABEL_20;
    }

    if ((v4 - 9) < 4)
    {
      goto LABEL_21;
    }

    if (v4 == 13)
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorContactsOnlyPageTag;
      goto LABEL_20;
    }

    if (v4 == 14)
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorFamilyOnlyPageTag;
      goto LABEL_20;
    }

LABEL_17:
    v6 = &PKAnalyticsReportPeerPaymentP2PMessagePageTag;
    goto LABEL_20;
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorAccountRestrictedLockedPageTag;
    }

    else
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorAmbiguousSenderPageTag;
    }

    goto LABEL_20;
  }

  if ((v4 - 1) < 4)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    goto LABEL_17;
  }

LABEL_20:
  v5 = *v6;
LABEL_21:

  return v5;
}

- (id)_analyticsP2PContext
{
  v3 = self->_messageSource - 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_10001D330 + v3);
  }

  return v4;
}

@end
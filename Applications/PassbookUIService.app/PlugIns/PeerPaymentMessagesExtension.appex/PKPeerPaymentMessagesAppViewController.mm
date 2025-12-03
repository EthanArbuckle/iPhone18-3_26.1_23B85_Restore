@interface PKPeerPaymentMessagesAppViewController
- (BOOL)_accountIsLocked;
- (BOOL)_canPerformQuoteForMessage:(id)message error:(id *)error;
- (BOOL)_handlePaymentRequestMessage:(id)message;
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (BOOL)_iMessageIsEnabled;
- (BOOL)_isBusinessConversation;
- (BOOL)_isGroupConversation;
- (BOOL)_openWallet;
- (BOOL)_peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:(id)memo;
- (BOOL)_recipientAddressFoundInContacts:(id)contacts;
- (BOOL)_recipientAddressIsValid:(id)valid;
- (BOOL)_requiresEnablement;
- (BOOL)_requiresSetupFlow;
- (BOOL)displaysAfterAppearance;
- (CGSize)_contentSizeThatFits:(CGSize)result presentationStyle:(unint64_t)style;
- (CGSize)contentSize;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (PKPeerPaymentMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_analyticsP2PContext;
- (id)_analyticsPageTag;
- (id)_conversationAddress;
- (id)_createViewControllerForState:(unint64_t)state;
- (id)_currentRequestTokenForAmount:(id)amount;
- (id)_identifiedRecipientForRecipientAddress:(id)address;
- (id)_inCurrencyAmountForPeerPaymentMessage:(id)message;
- (id)_recipientErrorTitle;
- (id)_recipientPersonForIntentDonation;
- (id)_senderAddress;
- (id)_viewControllerForState:(unint64_t)state shouldLoad:(BOOL)load;
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
- (void)_confirmPaymentMessageInsertionWithQuote:(id)quote completion:(id)completion;
- (void)_confirmRequestAmount:(id)amount toRecipientWithCompletion:(id)completion;
- (void)_confirmSendAmount:(id)amount toRecipientWithCompletion:(id)completion;
- (void)_donatePeerPaymentInteractionForMessage:(id)message;
- (void)_handleAccountChanged:(id)changed;
- (void)_handleError:(id)error forAction:(unint64_t)action withCompletion:(id)completion;
- (void)_handleNetworkConnectivityChanged:(id)changed;
- (void)_handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:(id)identifier completion:(id)completion;
- (void)_handleRecipientBecameInvalid:(id)invalid;
- (void)_handleRecipientError:(id)error;
- (void)_handleRespondToPaymentRequestActionWithMessage:(id)message completion:(id)completion;
- (void)_handleUpdatedTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier;
- (void)_hostSceneIdentifierForMessageIdentifier:(id)identifier withCompletion:(id)completion;
- (void)_identifyGroupRecipientsWithCompletion:(id)completion;
- (void)_identifyRecipient;
- (void)_insertPaymentMessageWithQuote:(id)quote completion:(id)completion;
- (void)_insertRequestMessageWithAmount:(id)amount requestToken:(id)token completion:(id)completion;
- (void)_prepareIdentifiedRecipient:(id)recipient forAmountEntryViewController:(id)controller;
- (void)_presentAlertWithDisplayableError:(id)error;
- (void)_presentInlineSetupFlowWithAmount:(id)amount flowState:(unint64_t)state completion:(id)completion;
- (void)_presentInlineSetupFlowWithAmount:(id)amount flowState:(unint64_t)state senderAddress:(id)address hostSceneIdentifier:(id)identifier completion:(id)completion;
- (void)_presentInlineSetupFlowWithPeerPaymentMessage:(id)message flowState:(unint64_t)state completion:(id)completion;
- (void)_presentSetupFlowWithPeerPaymentMessage:(id)message flowState:(unint64_t)state completion:(id)completion;
- (void)_prewarmDeviceScoreForGroupsWithRecipients:(id)recipients;
- (void)_prewarmDeviceScoreForRecipient:(id)recipient;
- (void)_registerForPresentationSemanticContextChanges;
- (void)_reloadContent;
- (void)_reportAnalyticsForStateWithEventType:(id)type;
- (void)_reportAnalyticsStagedBubbleButtonTap:(id)tap;
- (void)_reportAnalyticsViewAppearedWithArchivedParent:(id)parent;
- (void)_reportAnalyticsViewDisappeared;
- (void)_resetIdentifiedRecipientForAmountEntryViewController:(id)controller;
- (void)_shouldProceedPerformingQuote:(id)quote message:(id)message memoText:(id)text completion:(id)completion;
- (void)_showPaymentDetailsForMessage:(id)message completion:(id)completion;
- (void)_showRecurringPaymentDetailsForMessage:(id)message completion:(id)completion;
- (void)_stagePaymentWithAmount:(id)amount completion:(id)completion;
- (void)_stageRecurringPayment:(id)payment completion:(id)completion;
- (void)_stageRequestWithAmount:(id)amount completion:(id)completion;
- (void)_transitionToState:(unint64_t)state animated:(BOOL)animated;
- (void)_updateWithFamilyCollection:(id)collection;
- (void)_validateMessageForSending:(id)sending conversation:(id)conversation associatedText:(id)text completionHandler:(id)handler;
- (void)dealloc;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didCancelSendingMessage:(id)message conversation:(id)conversation;
- (void)didReceiveMessage:(id)message conversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didSelectMessage:(id)message conversation:(id)conversation;
- (void)didStartSendingMessage:(id)message conversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)enableLiveBubbleDebugMode;
- (void)handleAction:(unint64_t)action sender:(id)sender completion:(id)completion;
- (void)loadView;
- (void)localStatusForMessage:(id)message completion:(id)completion;
- (void)noteContentSizeNeedsUpdate;
- (void)noteReadyForDisplay;
- (void)remoteStatusForMessage:(id)message completion:(id)completion;
- (void)stageRecurringPayment:(id)payment completion:(id)completion;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)updateSupportsGroupMessage;
- (void)viewDidLayoutSubviews;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willResignActiveWithConversation:(id)conversation;
@end

@implementation PKPeerPaymentMessagesAppViewController

- (PKPeerPaymentMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v33.receiver = self;
  v33.super_class = PKPeerPaymentMessagesAppViewController;
  v8 = [(PKPeerPaymentMessagesAppViewController *)&v33 initWithNibName:nameCopy bundle:bundleCopy];
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
    peerPaymentPass = [(PKPeerPaymentController *)v8->_peerPaymentController peerPaymentPass];
    v22 = [v20 initWithPaymentPass:peerPaymentPass];
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
    selfCopy = self;
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
    selfCopy = self;
    v16 = 2048;
    presentationStyle = [(PKPeerPaymentMessagesAppViewController *)self presentationStyle];
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
  view = [(PKPeerPaymentMessagesAppViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
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
      selfCopy = self;
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
    bubbleView = [v15 bubbleView];
    [bubbleView setContentInset:{v17, v19, v21, v23}];
  }

  view2 = [(PKPeerPaymentMessagesContent *)self->_activeViewController view];
  view3 = [(PKPeerPaymentMessagesAppViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

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
    bubbleView = [v4 bubbleView];
    v6 = +[PKPeerPaymentBubbleView referenceBackgroundColorForState:](PKPeerPaymentBubbleView, "referenceBackgroundColorForState:", [bubbleView state]);

    v3 = v6;
  }

  return v3;
}

- (id)_viewControllerForState:(unint64_t)state shouldLoad:(BOOL)load
{
  loadCopy = load;
  viewControllerForState = self->_viewControllerForState;
  v8 = [NSNumber numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)viewControllerForState objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !loadCopy;
  }

  if (!v10)
  {
    v9 = [(PKPeerPaymentMessagesAppViewController *)self _createViewControllerForState:state];
    if (v9)
    {
      v11 = self->_viewControllerForState;
      v12 = [NSNumber numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
    }
  }

  return v9;
}

- (id)_createViewControllerForState:(unint64_t)state
{
  switch(state)
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
      _recipientErrorTitle = [(PKPeerPaymentMessagesAppViewController *)self _recipientErrorTitle];
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
        _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];

        if (!_conversationAddress)
        {
          [v5 setLeadingAction:2];
        }
      }

      else
      {
        v5 = [[PKPeerPaymentMessagesExplanationViewController alloc] initWithContentDelegate:self];
        v6 = @"PEER_PAYMENT_MESSAGES_RECIPIENT_INVALID_GROUP";
LABEL_33:
        _recipientErrorTitle = PKLocalizedPeerPaymentString(&v6->isa);
LABEL_34:
        v27 = _recipientErrorTitle;
        [v5 setExplanation:_recipientErrorTitle];
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
    _recipientErrorTitle = [(PKPeerPaymentMessagesAppViewController *)self _recipientErrorTitle];
    [(PKPeerPaymentMessagesContent *)v3 setExplanation:_recipientErrorTitle];
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
    recipientDisplayName = [(PKPeerPaymentMessagesAppViewController *)self recipientDisplayName];
    v5 = recipientDisplayName;
    if (recipientDisplayName && [recipientDisplayName length])
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

- (void)_transitionToState:(unint64_t)state animated:(BOOL)animated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000256C;
  block[3] = &unk_10001C968;
  block[4] = self;
  block[5] = state;
  animatedCopy = animated;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_prewarmDeviceScoreForRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy length])
  {
    v4 = +[PKPeerPaymentWebService sharedService];
    v5 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v5 setEndpoint:5];
    [v5 setRecipientAddress:recipientCopy];
    [v5 setQuoteRequestDestination:1];
    [v5 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v5];
    v6 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v6 setEndpoint:3];
    [v6 setRecipientAddress:recipientCopy];
    [v6 setQuoteRequestDestination:1];
    [v6 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v6];
  }
}

- (void)_prewarmDeviceScoreForGroupsWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if ([recipientsCopy count])
  {
    v4 = +[PKPeerPaymentWebService sharedService];
    v5 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v5 setEndpoint:5];
    [v5 setRecipientAddresses:recipientsCopy];
    [v5 setQuoteRequestDestination:1];
    [v5 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v5];
    v6 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [v6 setEndpoint:3];
    [v6 setRecipientAddresses:recipientsCopy];
    [v6 setQuoteRequestDestination:1];
    [v6 setMessagesContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
    [v4 prewarmDeviceScoreForAttributes:v6];
  }
}

- (unint64_t)_requiredContentState
{
  recipient = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
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

  if (recipient)
  {
    status = [recipient status];
    if (status)
    {
      if (status == 2)
      {
        statusReason = [recipient statusReason];
        if (statusReason < 3)
        {
          v4 = qword_100014830[statusReason];
          goto LABEL_5;
        }
      }

      else if (status == 1)
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

  ineligibleCount = [(PKPeerPaymentMessagesAppViewController *)self ineligibleCount];
  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  recipientAddresses = [activeConversation recipientAddresses];
  v12 = [recipientAddresses count];

  if (ineligibleCount == v12)
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
  _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  _senderAddress = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
  v5 = _senderAddress;
  if (_conversationAddress && _senderAddress)
  {
    peerPaymentController = self->_peerPaymentController;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000030F0;
    v7[3] = &unk_10001C9B8;
    v7[4] = self;
    [(PKPeerPaymentController *)peerPaymentController identifyRecipientWithConversationAddress:_conversationAddress senderAddress:v5 completion:v7];
  }

  else
  {
    [(PKPeerPaymentMessagesAppViewController *)self _transitionToState:8 animated:1];
  }
}

- (void)_identifyGroupRecipientsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (([(PKPeerPaymentController *)self->_peerPaymentController supportsGroupMessage]& 1) != 0)
  {
    activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    recipientAddresses = [activeConversation recipientAddresses];

    _senderAddress = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
    peerPaymentController = self->_peerPaymentController;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000032F0;
    v10[3] = &unk_10001C9E0;
    v11 = recipientAddresses;
    v12 = completionCopy;
    v10[4] = self;
    v9 = recipientAddresses;
    [(PKPeerPaymentController *)peerPaymentController identifyRecipientsWithConversationAddresses:v9 senderAddress:_senderAddress completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_handleRecipientError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:PKDisplayableErrorDomain];

  v6 = errorCopy;
  if (v5)
  {
    userInfo = [errorCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
  }

  if ([PKPeerPaymentController errorIsTermsAcceptanceRequiredError:v6])
  {
    goto LABEL_4;
  }

  domain2 = [v6 domain];
  v9 = [domain2 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

  if (!v9)
  {
    selfCopy3 = self;
    v11 = 8;
    goto LABEL_9;
  }

  if ([v6 code] == 40312)
  {
    selfCopy3 = self;
    v11 = 6;
LABEL_9:
    [(PKPeerPaymentMessagesAppViewController *)selfCopy3 _transitionToState:v11 animated:1];
    goto LABEL_10;
  }

  if ([v6 code] == 40309)
  {
    selfCopy3 = self;
    v11 = 5;
    goto LABEL_9;
  }

  code = [v6 code];
  [(PKPeerPaymentMessagesAppViewController *)self _transitionToState:8 animated:1];
  if (code == 40310)
  {
LABEL_4:
    [(PKPeerPaymentMessagesAppViewController *)self _handleError:errorCopy];
  }

LABEL_10:
}

- (id)_identifiedRecipientForRecipientAddress:(id)address
{
  addressCopy = address;
  v5 = 0;
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    if (addressCopy)
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
              idsQualifiedNormalizedAddress = [v12 idsQualifiedNormalizedAddress];
              v14 = v8;
              v15 = v14;
              if (idsQualifiedNormalizedAddress == v14)
              {

LABEL_19:
                v5 = v12;
                goto LABEL_20;
              }

              if (v8 && idsQualifiedNormalizedAddress)
              {
                v16 = [idsQualifiedNormalizedAddress isEqualToString:v14];

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

- (void)_prepareIdentifiedRecipient:(id)recipient forAmountEntryViewController:(id)controller
{
  recipientCopy = recipient;
  controllerCopy = controller;
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
    [(PKPeerPaymentController *)self->_peerPaymentController selectIdentifiedRecipient:recipientCopy];
    [controllerCopy setRecipient:recipientCopy];
    [controllerCopy setLeadingAction:0];
    if (self->_pendingFormalPaymentRequestMesssage || self->_pendingInformalPaymentRequestAmount)
    {
      v7 = 0;
    }

    else
    {
      v7 = 11;
    }

    [controllerCopy setCenterAction:v7];
  }
}

- (void)_resetIdentifiedRecipientForAmountEntryViewController:(id)controller
{
  controllerCopy = controller;
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    [(PKPeerPaymentController *)self->_peerPaymentController reset];
    [controllerCopy setRecipient:0];
    [controllerCopy setLeadingAction:2];
    [controllerCopy setCenterAction:0];
    pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
    self->_pendingInformalPaymentRequestRecipientAddress = 0;
  }
}

- (void)_handleNetworkConnectivityChanged:(id)changed
{
  changedCopy = changed;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Network connectivity changed.", buf, 2u);
  }

  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];

  if (activeConversation && [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]!= self->_state)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Updating messages content state in response to a network connectivity changed notification.", v7, 2u);
    }

    [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:0];
  }
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    recipientAddresses = [conversationCopy recipientAddresses];
    v10 = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = conversationCopy;
    v14 = 2112;
    v15 = recipientAddresses;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Will become active with conversation: %@, recipientAddresses:%@", &v10, 0x20u);
  }

  if (![(PKPeerPaymentController *)self->_peerPaymentController messagesContext])
  {
    recipientAddresses2 = [conversationCopy recipientAddresses];
    v8 = [recipientAddresses2 count];

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

- (void)didBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    recipientAddresses = [conversationCopy recipientAddresses];
    *buf = 134218498;
    selfCopy = self;
    v26 = 2112;
    v27 = conversationCopy;
    v28 = 2112;
    v29 = recipientAddresses;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Did become active with conversation: %@, recipientAddresses:%@", buf, 0x20u);
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self presentationStyle]== 2)
  {
    selectedMessage = [conversationCopy selectedMessage];
    peerPaymentMessage = [selectedMessage peerPaymentMessage];

    localProperties = [peerPaymentMessage localProperties];
    v10 = localProperties;
    if (localProperties)
    {
      self->_messageSource = [localProperties source];
      objc_storeStrong(&self->_stagedPeerPaymentMessage, peerPaymentMessage);
      analyticsSessionToken = [v10 analyticsSessionToken];
      if (analyticsSessionToken)
      {
        [(PKPeerPaymentMessagesAppViewController *)self _reportAnalyticsViewAppearedWithArchivedParent:analyticsSessionToken];
      }
    }
  }

  else
  {
    self->_messageSource = 2;
    v12 = +[PKMessagesAppSharedContext sharedContext];
    bubbleAppControllers = [v12 bubbleAppControllers];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = bubbleAppControllers;
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
    peerPaymentMessage = v10;
  }

  [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:0];
}

- (void)willResignActiveWithConversation:(id)conversation
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    conversationCopy = conversation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Controller:%p Will resign active with conversation: %@", &v6, 0x16u);
  }
}

- (void)didResignActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    selfCopy2 = self;
    v13 = 2112;
    v14 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Controller:%p Did resign active with conversation: %@", &v11, 0x16u);
  }

  [(PKPeerPaymentController *)self->_peerPaymentController reset];
  if (self->_pendingFormalPaymentRequestMesssage || self->_pendingInformalPaymentRequestAmount)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      selfCopy2 = self;
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

- (void)didReceiveMessage:(id)message conversation:(id)conversation
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    peerPaymentMessage = [message peerPaymentMessage];
    v7 = 138412290;
    v8 = peerPaymentMessage;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Received message: %@", &v7, 0xCu);
  }
}

- (void)didSelectMessage:(id)message conversation:(id)conversation
{
  peerPaymentMessage = [message peerPaymentMessage];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = peerPaymentMessage;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Selected message: %@", &v12, 0xCu);
  }

  if ([peerPaymentMessage type] == 2)
  {
    currency = [peerPaymentMessage currency];
    amount = [peerPaymentMessage amount];
    v9 = amount;
    if (currency && amount)
    {
      v10 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:11 shouldLoad:1];
      v11 = PKCurrencyAmountCreate(v9, currency, 0);
      [v10 setAmount:v11];
    }
  }
}

- (BOOL)_canPerformQuoteForMessage:(id)message error:(id *)error
{
  messageCopy = message;
  recipientAddress = [messageCopy recipientAddress];
  if ([messageCopy type] == 2 && objc_msgSend(messageCopy, "context") == 2)
  {
    goto LABEL_13;
  }

  if ([(PKPeerPaymentMessagesAppViewController *)self _recipientAddressIsValid:recipientAddress])
  {
    if (![(PKPeerPaymentMessagesAppViewController *)self _recipientAddressFoundInContacts:recipientAddress])
    {
      account = [(PKPeerPaymentController *)self->_peerPaymentController account];
      sendRestrictionType = [account sendRestrictionType];

      if (sendRestrictionType == 2)
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: The curent user cannot sent to people outside of their contacts. Hence failing validation.", v17, 2u);
        }

        if (error)
        {
          if ([messageCopy type] == 2)
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
    LOBYTE(error) = 1;
    goto LABEL_19;
  }

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Recipient identifier doesn't match current conversation recipient. Hence failing validation.", buf, 2u);
  }

  if (error)
  {
    v12 = @"PEER_PAYMENT_BUBBLE_RECIPIENT_MISMATCH_ERROR_DESCRIPTION";
    v11 = @"PEER_PAYMENT_BUBBLE_RECIPIENT_MISMATCH_ERROR_TITLE";
LABEL_18:
    v14 = PKLocalizedPeerPaymentString(&v11->isa);
    v15 = PKLocalizedPeerPaymentString(&v12->isa);
    *error = PKDisplayableErrorCustom();

    LOBYTE(error) = 0;
  }

LABEL_19:

  return error;
}

- (BOOL)_recipientAddressIsValid:(id)valid
{
  v4 = PKIDSNormalizedAddress();
  if ([(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    recipientAddresses = [activeConversation recipientAddresses];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000047B0;
    v15[3] = &unk_10001CA08;
    v16 = v4;
    _conversationAddress = [recipientAddresses pk_firstObjectPassingTest:v15];
  }

  else
  {
    _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
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

- (BOOL)_recipientAddressFoundInContacts:(id)contacts
{
  v5 = 0;
  v3 = [(PKPeerPaymentController *)self->_peerPaymentController displayNameForRecipientAddress:contacts foundInContacts:&v5];
  return v5;
}

- (void)_shouldProceedPerformingQuote:(id)quote message:(id)message memoText:(id)text completion:(id)completion
{
  quoteCopy = quote;
  messageCopy = message;
  textCopy = text;
  completionCopy = completion;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FF20();
  }

  if (completionCopy)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    if (![(PKPeerPaymentMessagesAppViewController *)self _peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:textCopy])
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
      v23 = completionCopy;
      [PKUserNotificationAgent presentNotificationWithParameters:v15 flags:0 responseHandler:v20];
    }

    else
    {
LABEL_7:
      (*(completionCopy + 2))(completionCopy, *(v27 + 24));
    }

    _Block_object_dispose(&v26, 8);
  }
}

- (void)_validateMessageForSending:(id)sending conversation:(id)conversation associatedText:(id)text completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  peerPaymentMessage = [sending peerPaymentMessage];
  [(PKPeerPaymentMessagesAppViewController *)self _reportAnalyticsStagedBubbleButtonTap:PKAnalyticsReportPeerPaymentSendButtonTag];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FF90();
  }

  v42 = 0;
  v13 = [(PKPeerPaymentMessagesAppViewController *)self _canPerformQuoteForMessage:peerPaymentMessage error:&v42];
  v14 = v42;
  v15 = v14;
  if (v13)
  {
    localProperties = [peerPaymentMessage localProperties];
    [peerPaymentMessage setLocalProperties:0];
    type = [peerPaymentMessage type];
    v18 = type;
    if (type > 1)
    {
      if (type != 2)
      {
        if (type != 3)
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
        [peerPaymentMessage identifier];
        v23 = v31 = localProperties;
        v24 = [v22 externalizedControllerStateForMessageIdentifier:v23];

        LOBYTE(v23) = [v21 restoreStateWithExternalizedControllerState:v24];
        quote = [v21 quote];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100004FA8;
        v32[3] = &unk_10001CAE8;
        v41 = v23;
        v33 = v24;
        selfCopy = self;
        v35 = peerPaymentMessage;
        v36 = v21;
        v37 = textCopy;
        v40 = v18;
        v38 = v31;
        v39 = handlerCopy;
        v25 = v21;
        v26 = v24;
        localProperties = v31;
        [(PKPeerPaymentMessagesAppViewController *)self _shouldProceedPerformingQuote:quote message:v35 memoText:v37 completion:v32];

        goto LABEL_21;
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, PKDarwinNotificationEventInAppDismissed, 0, 0, 1u);
      if ([textCopy length])
      {
        [peerPaymentMessage setMemo:textCopy];
        v28 = &PKAggDKeyPeerPaymentBubbleRequestWithMemo;
      }

      else
      {
        v28 = &PKAggDKeyPeerPaymentBubbleRequestWithoutMemo;
      }

      v29 = *v28;
      PKAnalyticsSendEvent();
      [peerPaymentMessage reportMessageSentWithLocalProperties:localProperties];
    }

    else if (type)
    {
      if (type != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }

    goto LABEL_21;
  }

  if (v14)
  {
    [(PKPeerPaymentMessagesAppViewController *)self _handleError:v14];
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_22:
}

- (void)_hostSceneIdentifierForMessageIdentifier:(id)identifier withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)didStartSendingMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  peerPaymentMessage = [messageCopy peerPaymentMessage];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v21 = 2112;
    v22 = peerPaymentMessage;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Did start sending message: %@", buf, 0x16u);
  }

  [(PKPeerPaymentMessagesAppViewController *)self _donatePeerPaymentInteractionForMessage:messageCopy];
  [(PKPeerPaymentMessagesAppViewController *)self dismiss];
  stagedPeerPaymentMessage = self->_stagedPeerPaymentMessage;
  self->_stagedPeerPaymentMessage = 0;

  if ([peerPaymentMessage type] == 1)
  {
    v10RequestToken = +[PKMessagesAppSharedContext sharedContext];
    [v10RequestToken _unregisterAppViewController:self];
LABEL_5:

    goto LABEL_12;
  }

  if ([peerPaymentMessage type] == 2 && objc_msgSend(peerPaymentMessage, "context") == 2)
  {
    requestToken = [peerPaymentMessage requestToken];
    v10RequestToken = [requestToken requestToken];

    messagesGroupIdentifier = [peerPaymentMessage messagesGroupIdentifier];
    v12 = messagesGroupIdentifier;
    if (v10RequestToken && messagesGroupIdentifier)
    {
      v13 = +[PKPeerPaymentService sharedInstance];
      v18 = v10RequestToken;
      v14 = [NSArray arrayWithObjects:&v18 count:1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100005B20;
      v15[3] = &unk_10001CB10;
      v15[4] = self;
      v16 = v10RequestToken;
      v17 = v12;
      [v13 peerPaymentPendingRequestsForRequestTokens:v14 completion:v15];
    }

    goto LABEL_5;
  }

LABEL_12:
}

- (void)didCancelSendingMessage:(id)message conversation:(id)conversation
{
  peerPaymentMessage = [message peerPaymentMessage];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    selfCopy = self;
    v15 = 2112;
    v16 = peerPaymentMessage;
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

  if ([peerPaymentMessage type] == 1)
  {
    v10 = +[PKMessagesAppSharedContext sharedContext];
    identifier = [peerPaymentMessage identifier];
    [v10 removeExternalizedControllerStateDataForMessageIdentifier:identifier];

    v12 = +[PKMessagesAppSharedContext sharedContext];
    [v12 _unregisterAppViewController:self];
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  if (!style && self->_state != 9)
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

- (CGSize)_contentSizeThatFits:(CGSize)result presentationStyle:(unint64_t)style
{
  if (style == 2)
  {
    [(PKPeerPaymentMessagesAppViewController *)self contentSizeThatFits:result.width, result.height, v4, v5];
  }

  return result;
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    view = [(PKPeerPaymentMessagesAppViewController *)self view];
    [view bounds];
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
    blockCopy[2](blockCopy, v15);
  }
}

- (id)recipientDisplayName
{
  peerPaymentController = self->_peerPaymentController;
  _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  v4 = [(PKPeerPaymentController *)peerPaymentController displayNameForRecipientAddress:_conversationAddress];

  return v4;
}

- (id)currentBalance
{
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  currentBalance = [account currentBalance];

  return currentBalance;
}

- (id)minimumTransferAmount
{
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  sendToUserFeatureDescriptor = [account sendToUserFeatureDescriptor];
  minimumAmount = [sendToUserFeatureDescriptor minimumAmount];

  return minimumAmount;
}

- (id)maximumTransferAmount
{
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  sendToUserFeatureDescriptor = [account sendToUserFeatureDescriptor];
  maximumAmount = [sendToUserFeatureDescriptor maximumAmount];

  return maximumAmount;
}

- (unint64_t)conversationSize
{
  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  recipientAddresses = [activeConversation recipientAddresses];
  v4 = [recipientAddresses count];

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
  _isGroupConversation = [(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation];
  v4 = &PKAnalyticsReportPeerPaymentMessagesContextConversationTypeGroup;
  if (!_isGroupConversation)
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
    presentationStyle = [(PKPeerPaymentMessagesAppViewController *)self presentationStyle];
    v11 = &PKAnalyticsReportPeerPaymentMessagesContextStyleExpanded;
    if (presentationStyle != 1)
    {
      v11 = &PKAnalyticsReportPeerPaymentMessagesContextStyleCompact;
    }

    v12 = *v11;
    [v7 setObject:v12 forKeyedSubscript:PKAnalyticsReportPeerPaymentMessagesContextStyleKey];
  }

  pendingFormalPaymentRequestMesssage = self->_pendingFormalPaymentRequestMesssage;
  if (pendingFormalPaymentRequestMesssage || self->_pendingInformalPaymentRequestRecipientAddress)
  {
    amount = [(PKPeerPaymentMessage *)pendingFormalPaymentRequestMesssage amount];
    v15 = +[NSDecimalNumber zero];
    if ([amount pk_isGreaterThan:v15])
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

- (void)handleAction:(unint64_t)action sender:(id)sender completion:(id)completion
{
  senderCopy = sender;
  completionCopy = completion;
  v10 = 0;
  if (action <= 5)
  {
    if (action > 2)
    {
      if (action == 3)
      {
        activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
        selectedMessage = [activeConversation selectedMessage];
        peerPaymentMessage = [selectedMessage peerPaymentMessage];

        [(PKPeerPaymentMessagesAppViewController *)self _handleRespondToPaymentRequestActionWithMessage:peerPaymentMessage completion:completionCopy];
      }

      else
      {
        if (action == 4)
        {
          activeConversation2 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
          selectedMessage2 = [activeConversation2 selectedMessage];
          peerPaymentMessage2 = [selectedMessage2 peerPaymentMessage];

          if (peerPaymentMessage2 && [peerPaymentMessage2 type] == 1)
          {
            if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
            {
              senderAddress = [peerPaymentMessage2 senderAddress];
              v33 = [senderAddress length];
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
              v36 = peerPaymentMessage2;
              v98 = v36;
              v99 = completionCopy;
              v37 = objc_retainBlock(v97);
              account = [(PKPeerPaymentController *)self->_peerPaymentController account];
              stage = [account stage];

              if (stage == 1)
              {
                [(PKPeerPaymentMessagesAppViewController *)self _presentSetupFlowWithPeerPaymentMessage:v36 flowState:v85 completion:v37];
              }

              else
              {
                [(PKPeerPaymentMessagesAppViewController *)self _presentInlineSetupFlowWithPeerPaymentMessage:v36 flowState:v85 completion:v37];
              }

              paymentIdentifier = senderAddress;
            }

            else
            {
              paymentIdentifier = [peerPaymentMessage2 paymentIdentifier];
              peerPaymentController = self->_peerPaymentController;
              v78 = PKPeerPaymentActionAccept;
              v95[0] = _NSConcreteStackBlock;
              v95[1] = 3221225472;
              v95[2] = sub_10000769C;
              v95[3] = &unk_10001CBD8;
              v95[4] = self;
              v35 = &v96;
              v96 = completionCopy;
              [(PKPeerPaymentController *)peerPaymentController performAction:v78 withPaymentIdentifier:paymentIdentifier completion:v95];
            }

            goto LABEL_74;
          }

          goto LABEL_54;
        }

        _openWallet = [(PKPeerPaymentMessagesAppViewController *)self _openWallet];
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, _openWallet);
        }
      }

      goto LABEL_62;
    }

    if (action != 1)
    {
      if (action != 2)
      {
        goto LABEL_76;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_57;
      }

      [(PKPeerPaymentController *)self->_peerPaymentController selectMode:3];
      amount = [senderCopy amount];
      [(PKPeerPaymentMessagesAppViewController *)self _stageRequestWithAmount:amount completion:completionCopy];
      goto LABEL_61;
    }

    amount = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
    if ([(PKPeerPaymentController *)self->_peerPaymentController mode]!= 1 || amount == 0)
    {
      [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
    }

    _isGroupConversation = [(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation];
    v23 = senderCopy;
    v20Amount = v23;
    if (!_isGroupConversation || amount)
    {
      amount2 = [v23 amount];
      [(PKPeerPaymentMessagesAppViewController *)self _stagePaymentWithAmount:amount2 completion:completionCopy];
    }

    else
    {
      amount2 = [(NSDictionary *)self->_identifiedRecipients objectForKeyedSubscript:@"PKPeerPaymentGroupValidRecipientsKey"];
      [(NSDictionary *)self->_identifiedRecipients objectForKeyedSubscript:@"PKPeerPaymentGroupInvalidRecipientsKey"];
      v26 = v87 = senderCopy;
      v27 = [PKPeerPaymentMessagesRecipientPickerViewController alloc];
      amount3 = [v20Amount amount];
      v29 = [v27 initWithValidRecipients:amount2 invalidRecipients:v26 amount:amount3 peerPaymentController:self->_peerPaymentController contentDelegate:self];

      navigationController = [v20Amount navigationController];
      [navigationController pushViewController:v29 animated:1];
      (*(completionCopy + 2))(completionCopy, 1);

      senderCopy = v87;
    }

LABEL_60:
LABEL_61:

    goto LABEL_62;
  }

  if (action > 8)
  {
    if (action == 9)
    {
      if ([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]== 11)
      {
        v10 = 1;
        [(PKPeerPaymentMessagesAppViewController *)self _transitionToRequiredContentStateAnimated:1];
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    if (action != 10)
    {
      if (action != 11)
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
      amount4 = [senderCopy amount];
      currency = [amount4 currency];
      v19 = PKCurrencyAmountMake();

      [(PKPeerPaymentMessagesAppViewController *)self _stageRequestWithAmount:v19 completion:completionCopy];
LABEL_62:
      v10 = 1;
      goto LABEL_76;
    }

    amount = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:9 shouldLoad:0];
    v20Amount = [amount amount];
    [(PKPeerPaymentMessagesAppViewController *)self _stagePaymentWithAmount:v20Amount completion:completionCopy];
    goto LABEL_60;
  }

  if (action == 6)
  {
    activeConversation3 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    selectedMessage3 = [activeConversation3 selectedMessage];
    peerPaymentMessage2 = [selectedMessage3 peerPaymentMessage];

    if (peerPaymentMessage2 && [peerPaymentMessage2 type] == 1 && objc_msgSend(peerPaymentMessage2, "hasBeenSent"))
    {
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_1000078DC;
      v93[3] = &unk_10001CC00;
      v94 = completionCopy;
      [(PKPeerPaymentMessagesAppViewController *)self _showPaymentDetailsForMessage:peerPaymentMessage2 completion:v93];
      v14 = v94;
      goto LABEL_53;
    }

LABEL_54:
    v10 = 0;
LABEL_75:

    goto LABEL_76;
  }

  if (action != 7)
  {
    activeConversation4 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    selectedMessage4 = [activeConversation4 selectedMessage];
    peerPaymentMessage2 = [selectedMessage4 peerPaymentMessage];

    if (peerPaymentMessage2 && [peerPaymentMessage2 type] == 3 && objc_msgSend(peerPaymentMessage2, "hasBeenSent"))
    {
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_1000079A8;
      v90[3] = &unk_10001CC00;
      v91 = completionCopy;
      [(PKPeerPaymentMessagesAppViewController *)self _showRecurringPaymentDetailsForMessage:peerPaymentMessage2 completion:v90];
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

  account2 = [(PKPeerPaymentController *)self->_peerPaymentController account];
  *buf = 0;
  v92 = 0;
  v10 = [PKPeerPaymentActionController canPerformPeerPaymentAction:3 account:account2 unableReason:buf displayableError:&v92];
  v41 = v92;
  v42 = v41;
  if (v10)
  {
    v84 = v41;
    v86 = account2;
    amount5 = [senderCopy amount];
    account3 = [(PKPeerPaymentController *)self->_peerPaymentController account];
    recurringPaymentsFeatureDescriptor = [account3 recurringPaymentsFeatureDescriptor];

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

    currency2 = [amount5 currency];
    [(PKPeerPaymentRecurringPayment *)pendingRecurringPayment setCurrency:currency2];

    v51 = self->_pendingRecurringPayment;
    v83 = amount5;
    v43Amount = [amount5 amount];
    [(PKPeerPaymentRecurringPayment *)v51 setAmount:v43Amount];

    activeConversation5 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    recipientAddresses = [activeConversation5 recipientAddresses];
    firstObject = [recipientAddresses firstObject];

    v56 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    v57 = [(PKPeerPaymentRecurringPayment *)self->_pendingRecurringPayment copy];
    v58 = [v56 initWithRecurringPayment:v57 recipientAddress:firstObject mode:1 context:9 peerPaymentController:self->_peerPaymentController remoteMessagesComposer:0];

    [v58 setDelegate:self];
    v59 = recurringPaymentsFeatureDescriptor;
    minimumAmount = [recurringPaymentsFeatureDescriptor minimumAmount];
    [v58 setMinimumAmount:minimumAmount];

    maximumAmount = [recurringPaymentsFeatureDescriptor maximumAmount];
    [v58 setMaximumAmount:maximumAmount];

    [v58 setOverrideUserInterfaceStyle:2];
    activeViewController = self->_activeViewController;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      traitCollection = [(PKPeerPaymentMessagesAppViewController *)self traitCollection];
      _presentationSemanticContext = [traitCollection _presentationSemanticContext];

      if (_presentationSemanticContext == 3 && PKIsPad())
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

      v59 = recurringPaymentsFeatureDescriptor;
    }

    account2 = v86;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
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
    if (action > 0xC)
    {
      v80 = @"unknown";
    }

    else
    {
      v80 = off_10001D2C8[action];
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

  if (completionCopy)
  {
    v82 = v10;
  }

  else
  {
    v82 = 1;
  }

  if ((v82 & 1) == 0)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)localStatusForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([messageCopy type] == 1)
    {
      paymentIdentifier = [messageCopy paymentIdentifier];
      if (paymentIdentifier)
      {
        transactionSourceIdentifiers = [(PKTransactionSource *)self->_transactionSource transactionSourceIdentifiers];
        anyObject = [transactionSourceIdentifiers anyObject];

        paymentService = self->_paymentService;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100007D58;
        v17[3] = &unk_10001CC68;
        v18 = messageCopy;
        selfCopy = self;
        v20 = paymentIdentifier;
        v21 = completionCopy;
        [(PKPaymentService *)paymentService transactionWithServiceIdentifier:v20 transactionSourceIdentifier:anyObject completion:v17];

        v12 = v18;
LABEL_5:

LABEL_12:
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if ([messageCopy type] == 2 && (objc_msgSend(messageCopy, "isFromMe") & 1) == 0)
    {
      requestToken = [messageCopy requestToken];
      paymentIdentifier = [requestToken requestToken];

      if (paymentIdentifier)
      {
        anyObject = objc_alloc_init(PKPaymentTransactionRequest);
        [anyObject setPeerPaymentRequestToken:paymentIdentifier];
        [anyObject setLimit:1];
        v14 = self->_paymentService;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100007EC0;
        v15[3] = &unk_10001CC90;
        v16 = completionCopy;
        [(PKPaymentService *)v14 transactionsForRequest:anyObject completion:v15];
        v12 = v16;
        goto LABEL_5;
      }

LABEL_11:
      (*(completionCopy + 2))(completionCopy, 0);
      goto LABEL_12;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_13:
}

- (void)remoteStatusForMessage:(id)message completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    paymentIdentifier = [message paymentIdentifier];
    if (paymentIdentifier && PKNetworkConnectivityAvailable())
    {
      peerPaymentController = self->_peerPaymentController;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000800C;
      v9[3] = &unk_10001CCB8;
      v10 = completionCopy;
      [(PKPeerPaymentController *)peerPaymentController statusForPaymentIdentifier:paymentIdentifier withCompletion:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (BOOL)_openWallet
{
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  associatedPassUniqueID = [account associatedPassUniqueID];

  if (PKPassbookIsSupported())
  {
    v4 = [NSString stringWithFormat:@"shoebox://card/%@", associatedPassUniqueID];
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

- (void)_showPaymentDetailsForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  transactionIdentifier = [messageCopy transactionIdentifier];
  if (!messageCopy || [messageCopy type] != 1 || !objc_msgSend(messageCopy, "hasBeenSent") || !objc_msgSend(transactionIdentifier, "length"))
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
    v27 = messageCopy;
    [PKUserNotificationAgent presentNotificationWithParameters:v15 flags:0 responseHandler:v26];

    goto LABEL_15;
  }

  peerPaymentPass = [(PKPeerPaymentController *)self->_peerPaymentController peerPaymentPass];
  deviceTransactionSourceIdentifiers = [peerPaymentPass deviceTransactionSourceIdentifiers];
  anyObject = [deviceTransactionSourceIdentifiers anyObject];

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
      v29 = messageCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Could not construct transaction details URL for message: %@", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_8:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }
}

- (void)_showRecurringPaymentDetailsForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  recurringPaymentIdentifier = [messageCopy recurringPaymentIdentifier];
  if (messageCopy && [messageCopy type] == 3 && objc_msgSend(messageCopy, "hasBeenSent") && objc_msgSend(recurringPaymentIdentifier, "length"))
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
      v25 = messageCopy;
      [PKUserNotificationAgent presentNotificationWithParameters:v14 flags:0 responseHandler:v24];

LABEL_11:
      v19 = 1;
      if (!completionCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v20 = [NSString stringWithFormat:@"https://wallet.apple.com/%@/%@/%@", PKURLActionRoutePeerPaymentPass, PKURLActionRouteRecurringPayment, recurringPaymentIdentifier];
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
  if (completionCopy)
  {
LABEL_17:
    completionCopy[2](completionCopy, v19);
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

  webService = [(PKPeerPaymentController *)self->_peerPaymentController webService];
  needsRegistration = [webService needsRegistration];

  return needsRegistration;
}

- (BOOL)_requiresSetupFlow
{
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  if (([PKPeerPaymentOnDeviceProvisioningCheck peerPaymentPassIsProvisionedOnDeviceForAccount:account]& 1) != 0)
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
    account = [(PKPeerPaymentController *)self->_peerPaymentController account];
    state = [account state];
    v6 = +[PKPassLibrary sharedInstance];
    associatedPassUniqueID = [account associatedPassUniqueID];
    v8 = [v6 passWithUniqueID:associatedPassUniqueID];

    paymentPass = [v8 paymentPass];
    activationState = [paymentPass activationState];
    if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (([account identityVerificationRequired] & 1) == 0)
      {
LABEL_5:
        v3 = 1;
LABEL_8:

        return v3;
      }
    }

    else if (state == 4)
    {
      goto LABEL_5;
    }

    v3 = activationState == 3;
    goto LABEL_8;
  }

  return 0;
}

- (BOOL)_isGroupConversation
{
  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  recipientAddresses = [activeConversation recipientAddresses];
  v4 = [recipientAddresses count] > 1;

  return v4;
}

- (BOOL)_isBusinessConversation
{
  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  recipientAddresses = [activeConversation recipientAddresses];
  firstObject = [recipientAddresses firstObject];
  lowercaseString = [firstObject lowercaseString];

  LOBYTE(activeConversation) = IMStringIsBusinessID();
  return activeConversation;
}

- (id)_senderAddress
{
  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  senderAddress = [activeConversation senderAddress];

  return senderAddress;
}

- (id)_conversationAddress
{
  if (![(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    recipientAddresses = [activeConversation recipientAddresses];
    firstObject = [recipientAddresses firstObject];

LABEL_7:
    goto LABEL_9;
  }

  if ([(PKPeerPaymentController *)self->_peerPaymentController supportsGroupMessage])
  {
    recipient = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
    activeConversation = [recipient conversationAddress];

    pendingInformalPaymentRequestRecipientAddress = activeConversation;
    if (!activeConversation)
    {
      pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
    }

    firstObject = pendingInformalPaymentRequestRecipientAddress;
    goto LABEL_7;
  }

  firstObject = 0;
LABEL_9:

  return firstObject;
}

- (void)_confirmSendAmount:(id)amount toRecipientWithCompletion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
  if (completionCopy)
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
      v22 = completionCopy;
      [PKUserNotificationAgent presentNotificationWithParameters:v8 flags:0 responseHandler:v21];
    }

    else
    {
      _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
      if ([(PKPeerPaymentMessagesAppViewController *)self _recipientAddressFoundInContacts:_conversationAddress])
      {
      }

      else
      {
        account = [(PKPeerPaymentController *)self->_peerPaymentController account];
        sendRestrictionType = [account sendRestrictionType];

        if (sendRestrictionType == 2)
        {
          [PKAnalyticsReporter reportAppleCashSenderErrorPage:PKAnalyticsReportPeerPaymentErrorContactsOnlyPageTag];
          v14 = +[NSMutableDictionary dictionary];
          [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
          [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
          v15 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_SENDS_TITLE");
          [v14 setObject:v15 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

          recipientDisplayName = [(PKPeerPaymentMessagesAppViewController *)self recipientDisplayName];
          v17 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_MESSAGES_RECIPIENT_CONTACTS_RESTRICTED_MESSAGE", @"%@", recipientDisplayName);
          [v14 setObject:v17 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

          v18 = PKLocalizedString(@"OK_BUTTON_TITLE");
          [v14 setObject:v18 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

          [PKUserNotificationAgent presentNotificationWithParameters:v14 flags:0 responseHandler:&stru_10001CD68];
          (*(completionCopy + 2))(completionCopy, 0);

          goto LABEL_11;
        }
      }

      if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100009428;
        v19[3] = &unk_10001CC00;
        v20 = completionCopy;
        [(PKPeerPaymentMessagesAppViewController *)self _presentInlineSetupFlowWithAmount:amountCopy flowState:4 completion:v19];
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 1);
      }
    }
  }

LABEL_11:
}

- (void)_confirmRequestAmount:(id)amount toRecipientWithCompletion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
  if (completionCopy)
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
      v19 = completionCopy;
      [PKUserNotificationAgent presentNotificationWithParameters:v8 flags:0 responseHandler:v18];
    }

    else if ([(PKPeerPaymentMessagesAppViewController *)self _requiresSetupFlow])
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000097A0;
      v16[3] = &unk_10001CC00;
      v17 = completionCopy;
      [(PKPeerPaymentMessagesAppViewController *)self _presentInlineSetupFlowWithAmount:amountCopy flowState:5 completion:v16];
    }

    else if (([(PKPeerPaymentController *)self->_peerPaymentController allowsPaymentRequests]& 1) != 0)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }

    else
    {
      v11 = +[NSMutableDictionary dictionary];
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
      v12 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_REQUESTS_TITLE");
      [v11 setObject:v12 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      recipientDisplayName = [(PKPeerPaymentMessagesAppViewController *)self recipientDisplayName];
      v14 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_RECIPIENT_DOES_NOT_ALLOW_REQUESTS_FORMAT", @"%@", recipientDisplayName);
      [v11 setObject:v14 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v15 = PKLocalizedString(@"OK_BUTTON_TITLE");
      [v11 setObject:v15 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      [PKUserNotificationAgent presentNotificationWithParameters:v11 flags:0 responseHandler:&stru_10001CD88];
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_presentInlineSetupFlowWithAmount:(id)amount flowState:(unint64_t)state completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009880;
  v9[3] = &unk_10001CDB0;
  selfCopy = self;
  amountCopy = amount;
  completionCopy = completion;
  stateCopy = state;
  v7 = completionCopy;
  v8 = amountCopy;
  [(PKPeerPaymentMessagesAppViewController *)selfCopy _hostSceneIdentifierForMessageIdentifier:0 withCompletion:v9];
}

- (void)_presentInlineSetupFlowWithPeerPaymentMessage:(id)message flowState:(unint64_t)state completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  identifier = [messageCopy identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009980;
  v13[3] = &unk_10001CDB0;
  v13[4] = self;
  v14 = messageCopy;
  v15 = completionCopy;
  stateCopy = state;
  v11 = completionCopy;
  v12 = messageCopy;
  [(PKPeerPaymentMessagesAppViewController *)self _hostSceneIdentifierForMessageIdentifier:identifier withCompletion:v13];
}

- (void)_presentInlineSetupFlowWithAmount:(id)amount flowState:(unint64_t)state senderAddress:(id)address hostSceneIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  peerPaymentController = self->_peerPaymentController;
  identifierCopy = identifier;
  addressCopy = address;
  amountCopy = amount;
  webService = [(PKPeerPaymentController *)peerPaymentController webService];
  peerPaymentService = [webService peerPaymentService];

  if (PKIsPad())
  {
    +[UIApplication sharedApplication];
    v18 = v27 = state;
    [v18 windows];
    v19 = v26 = peerPaymentService;
    firstObject = [v19 firstObject];
    windowScene = [firstObject windowScene];
    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [windowScene interfaceOrientation]);

    peerPaymentService = v26;
    state = v27;
  }

  else
  {
    v22 = &off_10001E168;
  }

  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v24 = PKMobileSMSBundleIdentifier;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100009C08;
  v29[3] = &unk_10001CC00;
  v30 = completionCopy;
  v25 = completionCopy;
  [peerPaymentService presentRegistrationFlowWithAccount:account amount:amountCopy state:state senderAddress:addressCopy orientation:v22 hostSceneIdentifier:identifierCopy hostSceneBundleIdentifier:v24 completion:v29];
}

- (void)_presentSetupFlowWithPeerPaymentMessage:(id)message flowState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  v9 = objc_alloc_init(PKPeerPaymentAccountResolutionControllerConfiguration);
  currencyAmount = [messageCopy currencyAmount];
  [v9 setCurrencyAmount:currencyAmount];

  [v9 setRegistrationFlowState:state];
  senderAddress = [messageCopy senderAddress];

  [v9 setSenderAddress:senderAddress];
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_handleRecipientBecameInvalid:(id)invalid
{
  invalidCopy = invalid;
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

- (BOOL)_peerPaymentParicipantShouldSeeMemoSharingMessageForMemo:(id)memo
{
  memoCopy = memo;
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  if ([account role] == 1 && objc_msgSend(memoCopy, "length"))
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

- (id)_currentRequestTokenForAmount:(id)amount
{
  if (self->_pendingFormalPaymentRequestMesssage)
  {
    requestToken = [(PKPeerPaymentMessage *)self->_pendingFormalPaymentRequestMesssage requestToken];
  }

  else if ([(PKCurrencyAmount *)self->_pendingInformalPaymentRequestAmount isEqual:amount])
  {
    requestToken = +[PKPeerPaymentInformalRequestToken token];
  }

  else
  {
    requestToken = 0;
  }

  return requestToken;
}

- (void)_handleAccountChanged:(id)changed
{
  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];

  if (activeConversation && [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]!= self->_state)
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

- (void)_updateWithFamilyCollection:(id)collection
{
  collectionCopy = collection;
  account = [(PKPeerPaymentController *)self->_peerPaymentController account];
  v5 = [(PKPeerPaymentMessagesAppViewController *)self _viewControllerForState:11 shouldLoad:1];
  if ([account supportsRecurringPayments])
  {
    currentUser = [collectionCopy currentUser];
    if ([account isEligibleForRecurringPaymentsForUser:currentUser])
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

- (void)_stagePaymentWithAmount:(id)amount completion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
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
  v11 = completionCopy;
  v15 = v11;
  v12 = amountCopy;
  v14 = v12;
  [(PKPeerPaymentMessagesAppViewController *)self _confirmSendAmount:v12 toRecipientWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_stageRequestWithAmount:(id)amount completion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
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
  v14 = amountCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = amountCopy;
  [(PKPeerPaymentMessagesAppViewController *)self _confirmRequestAmount:v12 toRecipientWithCompletion:v13];
}

- (void)_stageRecurringPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  objc_storeStrong(&self->_pendingRecurringPayment, payment);
  objc_initWeak(&location, self);
  amount = [paymentCopy amount];
  currency = [paymentCopy currency];
  v11 = PKCurrencyAmountMake();

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AEC8;
  v15[3] = &unk_10001CEF0;
  v12 = paymentCopy;
  v16 = v12;
  selfCopy = self;
  v13 = v11;
  v18 = v13;
  objc_copyWeak(&v20, &location);
  v14 = completionCopy;
  v19 = v14;
  [(PKPeerPaymentMessagesAppViewController *)self _confirmSendAmount:v13 toRecipientWithCompletion:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_confirmPaymentMessageInsertionWithQuote:(id)quote completion:(id)completion
{
  quoteCopy = quote;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = quoteCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Confirm payment message insertion with peer payment quote: %@", buf, 0xCu);
  }

  if ([quoteCopy riskLevel])
  {
    objc_initWeak(buf, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000B6FC;
    v25[3] = &unk_10001CF18;
    objc_copyWeak(&v28, buf);
    v26 = quoteCopy;
    v27 = completionCopy;
    v9 = [PKPeerPaymentFraudUIFactory fraudUIViewControllerForQuote:v26 continuationHandler:v25];
    traitCollection = [(PKPeerPaymentMessagesAppViewController *)self traitCollection];
    _presentationSemanticContext = [traitCollection _presentationSemanticContext];

    if (_presentationSemanticContext == 3 && PKIsPad())
    {
      [v9 setModalPresentationStyle:6];
    }

    pkui_frontMostViewController = [(PKPeerPaymentMessagesAppViewController *)self pkui_frontMostViewController];
    [pkui_frontMostViewController presentViewController:v9 animated:1 completion:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    if ([CNContactStore authorizationStatusForEntityType:0]!= 3)
    {
      goto LABEL_12;
    }

    _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
    v14 = [(PKPeerPaymentMessagesAppViewController *)self _recipientAddressFoundInContacts:_conversationAddress];

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
      v21 = quoteCopy;
      v24 = completionCopy;
      [PKUserNotificationAgent presentNotificationWithParameters:v15 flags:0 responseHandler:v20];
    }

    else
    {
LABEL_12:
      [(PKPeerPaymentMessagesAppViewController *)self _insertPaymentMessageWithQuote:quoteCopy completion:completionCopy];
    }
  }
}

- (void)_insertPaymentMessageWithQuote:(id)quote completion:(id)completion
{
  quoteCopy = quote;
  completionCopy = completion;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = quoteCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Insert payment message with peer payment quote: %@", buf, 0xCu);
  }

  totalReceiveAmount = [(PKPeerPaymentMessage *)quoteCopy totalReceiveAmount];
  totalReceiveAmountCurrency = [(PKPeerPaymentMessage *)quoteCopy totalReceiveAmountCurrency];
  v10 = PKCurrencyAmountCreate(totalReceiveAmount, totalReceiveAmountCurrency, 0);

  if (self->_pendingFormalPaymentRequestMesssage && ![(PKPeerPaymentMessagesAppViewController *)self _isGroupConversation])
  {
    underlyingMessage = [(PKPeerPaymentMessage *)self->_pendingFormalPaymentRequestMesssage underlyingMessage];
    session = [underlyingMessage session];

    if (session)
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
    session = 0;
  }

  isRecurringPayment = [(PKPeerPaymentMessage *)quoteCopy isRecurringPayment];
  if (isRecurringPayment)
  {
    recurringPaymentIdentifier = [(PKPeerPaymentMessage *)quoteCopy recurringPaymentIdentifier];

    if (recurringPaymentIdentifier)
    {
      v16 = [MSSession alloc];
      v17 = [NSUUID alloc];
      recurringPaymentIdentifier2 = [(PKPeerPaymentMessage *)quoteCopy recurringPaymentIdentifier];
      v19 = [v17 initWithUUIDString:recurringPaymentIdentifier2];
      v20 = [v16 initWithIdentifier:v19];

      v21 = 3;
      session = v20;
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

  v22 = [[PKPeerPaymentMessage alloc] initWithType:v21 session:session];
  [v22 setCurrencyAmount:v10];
  _senderAddress = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
  [v22 setSenderAddress:_senderAddress];

  recipient = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
  normalizedAddress = [recipient normalizedAddress];
  [v22 setRecipientAddress:normalizedAddress];

  v26 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:2];
  [v22 setLocalProperties:v26];

  [v22 setContext:{-[PKPeerPaymentController messagesContext](self->_peerPaymentController, "messagesContext")}];
  v27 = self->_pendingFormalPaymentRequestMesssage;
  if (v27)
  {
    memo = [(PKPeerPaymentMessage *)v27 memo];
    [v22 setMemo:memo];

    requestToken = [(PKPeerPaymentMessage *)self->_pendingFormalPaymentRequestMesssage requestToken];
    [v22 setRequestToken:requestToken];
  }

  if (isRecurringPayment)
  {
    startDate = [(PKPeerPaymentMessage *)quoteCopy startDate];
    [v22 setRecurringPaymentStartDate:startDate];

    [v22 setRecurringPaymentFrequency:{-[PKPeerPaymentMessage frequency](quoteCopy, "frequency")}];
    memo2 = [(PKPeerPaymentRecurringPayment *)self->_pendingRecurringPayment memo];
    [v22 setRecurringPaymentMemo:memo2];
  }

  objc_storeStrong(&self->_stagedPeerPaymentMessage, v22);
  v32 = +[PKMessagesAppSharedContext sharedContext];
  externalizedControllerState = [(PKPeerPaymentController *)self->_peerPaymentController externalizedControllerState];
  identifier = [v22 identifier];
  [v32 persistExternalizedControllerState:externalizedControllerState forMessageIdentifier:identifier];

  activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  underlyingMessage2 = [v22 underlyingMessage];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10000BD80;
  v41[3] = &unk_10001CFF8;
  v42 = v22;
  selfCopy = self;
  v44 = v40;
  v37 = v40;
  v38 = v22;
  [activeConversation insertMessage:underlyingMessage2 completionHandler:v41];
}

- (void)_insertRequestMessageWithAmount:(id)amount requestToken:(id)token completion:(id)completion
{
  amountCopy = amount;
  tokenCopy = token;
  completionCopy = completion;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = amountCopy;
    v33 = 2112;
    v34 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Peer Payment Messages Extension: Insert request with amount: %@ requestToken: %@", buf, 0x16u);
  }

  v12 = objc_alloc_init(PKPeerPaymentMessage);
  messagesContext = [(PKPeerPaymentController *)self->_peerPaymentController messagesContext];
  [v12 setType:2];
  [v12 setCurrencyAmount:amountCopy];
  [v12 setRequestToken:tokenCopy];
  _senderAddress = [(PKPeerPaymentMessagesAppViewController *)self _senderAddress];
  [v12 setSenderAddress:_senderAddress];

  recipient = [(PKPeerPaymentController *)self->_peerPaymentController recipient];
  normalizedAddress = [recipient normalizedAddress];
  [v12 setRecipientAddress:normalizedAddress];

  v17 = [[PKPeerPaymentMessageLocalProperties alloc] initWithSource:2];
  [v12 setLocalProperties:v17];

  [v12 setContext:messagesContext];
  if (messagesContext == 2)
  {
    activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    groupID = [activeConversation groupID];
    [v12 setMessagesGroupIdentifier:groupID];
  }

  objc_storeStrong(&self->_stagedPeerPaymentMessage, v12);
  v20 = +[PKMessagesAppSharedContext sharedContext];
  externalizedControllerState = [(PKPeerPaymentController *)self->_peerPaymentController externalizedControllerState];
  identifier = [v12 identifier];
  [v20 persistExternalizedControllerState:externalizedControllerState forMessageIdentifier:identifier];

  activeConversation2 = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
  underlyingMessage = [v12 underlyingMessage];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000C424;
  v27[3] = &unk_10001CFF8;
  v28 = v12;
  selfCopy = self;
  v30 = completionCopy;
  v25 = completionCopy;
  v26 = v12;
  [activeConversation2 insertMessage:underlyingMessage completionHandler:v27];
}

- (void)_handleRespondToPaymentRequestActionWithMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = completionCopy;
  if (messageCopy)
  {
    type = [messageCopy type];
    if (v8 && type != 2)
    {
      goto LABEL_4;
    }
  }

  else if (completionCopy)
  {
LABEL_4:
    v8[2](v8, 0);
  }

  if ([messageCopy context] == 2)
  {
    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000C964;
    v15[3] = &unk_10001D040;
    objc_copyWeak(&v19, &location);
    v18 = v8;
    v16 = messageCopy;
    selfCopy = self;
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
    [v12 handlePaymentRequestMessage:messageCopy sender:self completion:v8];
  }
}

- (void)_handleError:(id)error forAction:(unint64_t)action withCompletion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v10 = [PKPeerPaymentController proposedResolutionForError:errorCopy];
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
      actionCopy = action;
      v28[4] = self;
      v29 = completionCopy;
      [(PKPeerPaymentController *)peerPaymentController handleTermsAcceptanceRequiredWithError:errorCopy completion:v28];
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
        title = [v17 title];
        message = [v17 message];
        actions = [v17 actions];
        firstObject = [actions firstObject];
        title2 = [firstObject title];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10000CF64;
        v26[3] = &unk_10001D0B8;
        v27 = completionCopy;
        [(PKPeerPaymentMessagesAppViewController *)self _presentAlertWithTitle:title message:message buttonTitle:title2 completion:v26];

        goto LABEL_20;
      }

      v13 = self->_peerPaymentController;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000CF80;
      v23[3] = &unk_10001D090;
      actionCopy2 = action;
      v23[4] = self;
      v24 = completionCopy;
      [(PKPeerPaymentController *)v13 handleIdentityVerificationWithError:errorCopy completion:v23];
      v14 = v24;
    }

    goto LABEL_20;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = [PKPeerPaymentController displayableErrorForError:errorCopy];

      [(PKPeerPaymentMessagesAppViewController *)self _presentAlertWithDisplayableError:v11];
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1);
      }

      errorCopy = v11;
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_20:
}

- (void)_handlePeerPaymentRemoteAlertCompletedForPaymentIdentifier:(id)identifier completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D12C;
  block[3] = &unk_10001D0E0;
  identifierCopy = identifier;
  completionCopy = completion;
  block[4] = self;
  v6 = identifierCopy;
  v7 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentAlertWithDisplayableError:(id)error
{
  errorCopy = error;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [PKAnalyticsReporter pageTagForAppleCashSenderError:errorCopy];
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
  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  firstObject = [localizedRecoveryOptions firstObject];

  userInfo = [errorCopy userInfo];

  v14 = [userInfo objectForKeyedSubscript:PKErrorRecoveryURLKey];

  if (firstObject && v14)
  {
    v15 = PKLocalizedString(@"CANCEL_BUTTON_TITLE");
    [v4 setObject:v15 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    [v4 setObject:firstObject forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
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

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  payloadCopy = payload;
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.messages.surf"] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.messages.datadetectors.currency") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.messages.appLaunchURLPluginPayload"))
  {
    v8 = [payloadCopy objectForKeyedSubscript:@"Currency"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v42 = payloadCopy;
      v43 = dCopy;
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
                  payloadCopy = v42;
                  v23 = v44;
                  goto LABEL_52;
                }

                currentBalance = [(PKPeerPaymentMessagesAppViewController *)val currentBalance];
                currency = [currentBalance currency];

                currency2 = [v26 currency];
                v24 = [currency2 isEqualToString:currency];
                payloadCopy = v42;
                if (v24)
                {
                  amount = [v26 amount];
                  minimumTransferAmount = [(PKPeerPaymentMessagesAppViewController *)val minimumTransferAmount];
                  maximumTransferAmount = [(PKPeerPaymentMessagesAppViewController *)val maximumTransferAmount];
                  v33 = v26;
                  obja = maximumTransferAmount;
                  if (minimumTransferAmount && [amount compare:minimumTransferAmount]== -1)
                  {
                    v34 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v59 = amount;
                      v60 = 2112;
                      v61 = minimumTransferAmount;
                      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Suggested amount %@ is less than the minimum transfer amount %@. Using minimum transfer amount instead.", buf, 0x16u);
                    }

                    v35 = [[PKCurrencyAmount alloc] initWithAmount:minimumTransferAmount currency:currency exponent:0];
                    v33 = v35;
                    maximumTransferAmount = obja;
                  }

                  if (maximumTransferAmount && [amount compare:maximumTransferAmount]== 1)
                  {
                    v36 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v59 = amount;
                      v60 = 2112;
                      v61 = obja;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Suggested amount %@ is greater than the maximum transfer amount %@. Using maximum transfer amount instead.", buf, 0x16u);
                    }

                    v37 = [[PKCurrencyAmount alloc] initWithAmount:obja currency:currency exponent:0];
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
                  dCopy = v43;
                  v51 = v43;
                  v52 = val;
                  dispatch_async(&_dispatch_main_q, block);

                  objc_destroyWeak(&v53);
                  objc_destroyWeak(buf);
                }

                else
                {
                  amount = PKLogFacilityTypeGetObject();
                  if (os_log_type_enabled(amount, OS_LOG_TYPE_ERROR))
                  {
                    sub_100010454();
                  }

                  dCopy = v43;
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
      payloadCopy = v42;
LABEL_52:
      v26 = PKLogFacilityTypeGetObject();
      dCopy = v43;
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

- (void)_donatePeerPaymentInteractionForMessage:(id)message
{
  peerPaymentMessage = [message peerPaymentMessage];
  if (peerPaymentMessage)
  {
    v12 = peerPaymentMessage;
    type = [peerPaymentMessage type];
    _recipientPersonForIntentDonation = [(PKPeerPaymentMessagesAppViewController *)self _recipientPersonForIntentDonation];
    v7 = [(PKPeerPaymentMessagesAppViewController *)self _inCurrencyAmountForPeerPaymentMessage:v12];
    memo = [v12 memo];
    if (type == 2)
    {
      v9 = [[INRequestPaymentIntent alloc] initWithPayer:_recipientPersonForIntentDonation currencyAmount:v7 note:memo];
    }

    else
    {
      if (type != 1)
      {
LABEL_8:

        peerPaymentMessage = v12;
        goto LABEL_9;
      }

      v9 = [[INSendPaymentIntent alloc] initWithPayee:_recipientPersonForIntentDonation currencyAmount:v7 note:memo];
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

- (id)_inCurrencyAmountForPeerPaymentMessage:(id)message
{
  messageCopy = message;
  amount = [messageCopy amount];
  currency = [messageCopy currency];

  v6 = 0;
  if (amount && currency)
  {
    v6 = [[INCurrencyAmount alloc] initWithAmount:amount currencyCode:currency];
  }

  return v6;
}

- (id)_recipientPersonForIntentDonation
{
  _conversationAddress = [(PKPeerPaymentMessagesAppViewController *)self _conversationAddress];
  v4 = _conversationAddress;
  if (_conversationAddress)
  {
    if ([_conversationAddress containsString:@"@"])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = [[INPersonHandle alloc] initWithValue:v4 type:v5];
    v7 = [(PKPeerPaymentController *)self->_peerPaymentController contactForHandle:v4];
    identifier = [v7 identifier];
    v9 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:v4 contact:v7];
    nameComponents = [v7 nameComponents];
    v11 = [[INPerson alloc] initWithPersonHandle:v6 nameComponents:nameComponents displayName:v9 image:0 contactIdentifier:identifier customIdentifier:identifier];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_handlePaymentRequestMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  currency = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(currency, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v8)
    {
      v26 = 134218242;
      selfCopy2 = self;
      v28 = 2112;
      v29 = messageCopy;
      _os_log_impl(&_mh_execute_header, currency, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Handle Payment Request Message: %@", &v26, 0x16u);
    }

    currency = [messageCopy currency];
    amount = [messageCopy amount];
    v10 = +[NSDecimalNumber zero];
    v11 = [amount pk_isGreaterThan:v10];

    if (v11)
    {
      v12 = amount;
    }

    else
    {
      v12 = [NSDecimalNumber decimalNumberWithString:@"1"];
    }

    v14 = v12;
    -[PKPeerPaymentController setMessagesContext:](self->_peerPaymentController, "setMessagesContext:", [messageCopy context]);
    objc_storeStrong(&self->_pendingFormalPaymentRequestMesssage, message);
    pendingInformalPaymentRequestAmount = self->_pendingInformalPaymentRequestAmount;
    self->_pendingInformalPaymentRequestAmount = 0;

    if (currency)
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

    v17 = PKCurrencyAmountCreate(v14, &currency->isa, 0);
    if ([messageCopy context] == 2)
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

      underlyingMessage = [messageCopy underlyingMessage];
      senderAddress = [underlyingMessage senderAddress];

      v22 = [(PKPeerPaymentMessagesAppViewController *)self _identifiedRecipientForRecipientAddress:senderAddress];
      pendingInformalPaymentRequestRecipientAddress = self->_pendingInformalPaymentRequestRecipientAddress;
      self->_pendingInformalPaymentRequestRecipientAddress = senderAddress;

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
    selfCopy2 = self;
    v28 = 2112;
    v29 = messageCopy;
    _os_log_impl(&_mh_execute_header, currency, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesAppViewController: %p; Asked to handle a Payment Message of incorrect type: %@", &v26, 0x16u);
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (void)_handleUpdatedTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier
{
  transactionCopy = transaction;
  if ([(PKPeerPaymentMessagesAppViewController *)self _requiredContentState]== 12)
  {
    serviceIdentifier = [transactionCopy serviceIdentifier];
    peerPaymentRequestToken = [transactionCopy peerPaymentRequestToken];
    activeConversation = [(PKPeerPaymentMessagesAppViewController *)self activeConversation];
    selectedMessage = [activeConversation selectedMessage];
    peerPaymentMessage = [selectedMessage peerPaymentMessage];

    transactionIdentifier = [peerPaymentMessage transactionIdentifier];
    requestToken = [peerPaymentMessage requestToken];
    v12RequestToken = [requestToken requestToken];

    if (([transactionIdentifier isEqualToString:serviceIdentifier] & 1) != 0 || objc_msgSend(v12RequestToken, "isEqualToString:", peerPaymentRequestToken))
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

    shapeLayer = [(PKShapeView *)self->_debugBallView shapeLayer];
    v6 = +[UIColor redColor];
    [shapeLayer setFillColor:{objc_msgSend(v6, "CGColor")}];

    shapeLayer2 = [(PKShapeView *)self->_debugBallView shapeLayer];
    [(PKShapeView *)self->_debugBallView center];
    v9 = v8;
    v11 = v10;
    [(PKShapeView *)self->_debugBallView bounds];
    v12 = [UIBezierPath bezierPathWithArcCenter:1 radius:v9 startAngle:v11 endAngle:CGRectGetWidth(v33) * 0.5 clockwise:0.0, 6.28318531];
    [shapeLayer2 setPath:{objc_msgSend(v12, "CGPath")}];

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

- (void)stageRecurringPayment:(id)payment completion:(id)completion
{
  completionCopy = completion;
  peerPaymentController = self->_peerPaymentController;
  paymentCopy = payment;
  [(PKPeerPaymentController *)peerPaymentController selectMode:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F574;
  v10[3] = &unk_10001CC00;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKPeerPaymentMessagesAppViewController *)self _stageRecurringPayment:paymentCopy completion:v10];
}

- (void)_reportAnalyticsForStateWithEventType:(id)type
{
  typeCopy = type;
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
    _analyticsPageTag = [(PKPeerPaymentMessagesAppViewController *)self _analyticsPageTag];
    v12[0] = PKAnalyticsReportFeatureTypeKey;
    v12[1] = PKAnalyticsReportEventKey;
    v13[0] = PKAnalyticsReportPeerPaymentFeatureType;
    v13[1] = typeCopy;
    v12[2] = PKAnalyticsReportPeerPaymentP2PSideKey;
    v13[2] = PKAnalyticsReportPeerPaymentP2PSideSender;
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    v9 = [v8 mutableCopy];

    _analyticsP2PContext = [(PKPeerPaymentMessagesAppViewController *)self _analyticsP2PContext];
    [v9 safelySetObject:_analyticsP2PContext forKey:PKAnalyticsReportPeerPaymentP2PContextKey];

    [v9 safelySetObject:_analyticsPageTag forKey:PKAnalyticsReportPageTagKey];
    analyticsMessagesContext = [(PKPeerPaymentMessagesAppViewController *)self analyticsMessagesContext];
    [PKAnalyticsReporter reportAppleCashEvent:v9 withMessagesContext:analyticsMessagesContext];
  }
}

- (void)_reportAnalyticsViewAppearedWithArchivedParent:(id)parent
{
  parentCopy = parent;
  v4 = PKAnalyticsSubjectAppleCash;
  v5 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

  if (!v5)
  {
    if (parentCopy)
    {
      [PKAnalyticsReporter beginSubjectReporting:v4 withArchivedParent:parentCopy];
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

  _analyticsP2PContext = [(PKPeerPaymentMessagesAppViewController *)self _analyticsP2PContext];
  [v4 safelySetObject:_analyticsP2PContext forKey:PKAnalyticsReportPeerPaymentP2PContextKey];

  analyticsMessagesContext = [(PKPeerPaymentMessagesAppViewController *)self analyticsMessagesContext];
  [PKAnalyticsReporter reportAppleCashEvent:v4 withMessagesContext:analyticsMessagesContext];

  stagedPeerPaymentMessage = self->_stagedPeerPaymentMessage;
  if (self->_messageSource == 2)
  {
    identifier = [(PKPeerPaymentMessage *)self->_stagedPeerPaymentMessage identifier];
    v9 = identifier;
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

- (void)_reportAnalyticsStagedBubbleButtonTap:(id)tap
{
  v9[0] = PKAnalyticsReportFeatureTypeKey;
  v9[1] = PKAnalyticsReportPageTagKey;
  v10[0] = PKAnalyticsReportPeerPaymentFeatureType;
  v10[1] = PKAnalyticsReportPeerPaymentP2PMessagePageTag;
  v9[2] = PKAnalyticsReportEventKey;
  v9[3] = PKAnalyticsReportButtonTagKey;
  v10[2] = PKAnalyticsReportEventTypeButtonTap;
  v10[3] = tap;
  v9[4] = PKAnalyticsReportPeerPaymentP2PSideKey;
  v10[4] = PKAnalyticsReportPeerPaymentP2PSideSender;
  tapCopy = tap;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  v6 = [v5 mutableCopy];

  _analyticsP2PContext = [(PKPeerPaymentMessagesAppViewController *)self _analyticsP2PContext];
  [v6 safelySetObject:_analyticsP2PContext forKey:PKAnalyticsReportPeerPaymentP2PContextKey];

  analyticsMessagesContext = [(PKPeerPaymentMessagesAppViewController *)self analyticsMessagesContext];
  [PKAnalyticsReporter reportAppleCashEvent:v6 withMessagesContext:analyticsMessagesContext];
}

- (id)_analyticsPageTag
{
  if (self->_messageSource != 2)
  {
    v5 = 0;
    goto LABEL_21;
  }

  _requiredContentState = [(PKPeerPaymentMessagesAppViewController *)self _requiredContentState];
  v5 = 0;
  v6 = &PKAnalyticsReportPeerPaymentMessagesAppExtensionPageTag;
  if (_requiredContentState > 6)
  {
    if (_requiredContentState <= 8)
    {
      if (_requiredContentState != 7)
      {
        v6 = &PKAnalyticsReportPeerPaymentErrorNoEligibleParticipantsPageTag;
      }

      goto LABEL_20;
    }

    if ((_requiredContentState - 9) < 4)
    {
      goto LABEL_21;
    }

    if (_requiredContentState == 13)
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorContactsOnlyPageTag;
      goto LABEL_20;
    }

    if (_requiredContentState == 14)
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorFamilyOnlyPageTag;
      goto LABEL_20;
    }

LABEL_17:
    v6 = &PKAnalyticsReportPeerPaymentP2PMessagePageTag;
    goto LABEL_20;
  }

  if (_requiredContentState > 4)
  {
    if (_requiredContentState == 5)
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorAccountRestrictedLockedPageTag;
    }

    else
    {
      v6 = &PKAnalyticsReportPeerPaymentErrorAmbiguousSenderPageTag;
    }

    goto LABEL_20;
  }

  if ((_requiredContentState - 1) < 4)
  {
    goto LABEL_21;
  }

  if (_requiredContentState)
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
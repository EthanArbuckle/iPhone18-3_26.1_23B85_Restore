@interface AAUIInviteMessageFlowController
- (AAUIInviteMessageFlowController)initWithContext:(id)a3 flow:(unint64_t)a4 navigationController:(id)a5 defaultMessageViewModel:(id)a6 messageSentViewModel:(id)a7;
- (AAUIInviteMessageFlowController)initWithContext:(id)a3 flow:(unint64_t)a4 navigationController:(id)a5 defaultMessageViewModel:(id)a6 messageSentViewModel:(id)a7 isADPUpsellFlow:(BOOL)a8 isFamilyMember:(BOOL)a9 cdpContext:(id)a10;
- (AAUIInviteMessageFlowControllerDelegate)delegate;
- (AIDAAccountManager)accountManager;
- (BOOL)_sendLCLiveMessage:(id)a3;
- (id)_bubbleImageForFlow:(unint64_t)a3;
- (void)_cancelMessageInvitationFlow;
- (void)_finishMessageInvitationFlow;
- (void)_hideActivitySpinnerInNavigationBar;
- (void)_invitationWasSent;
- (void)_messageSentSecondaryActionTapped;
- (void)_postAdpUpsellCFUCustodianInviteSentEvent;
- (void)_postAdpUpsellCFUFamilyCustodianAddedEvent;
- (void)_sendDefaultMessage;
- (void)_sendEscapeOfferSelectedEvent:(id)a3;
- (void)_sendRecoveryContactSendMessageLandingEvent:(id)a3;
- (void)_showActivitySpinnerInNavigationBar;
- (void)_showDefaultMessageView;
- (void)_showInvitationSent;
- (void)_showMessagesComposeController;
- (void)inviteController:(id)a3 didFinishWithStatus:(unint64_t)a4 recipients:(id)a5 userInfo:(id)a6 error:(id)a7;
@end

@implementation AAUIInviteMessageFlowController

- (AAUIInviteMessageFlowController)initWithContext:(id)a3 flow:(unint64_t)a4 navigationController:(id)a5 defaultMessageViewModel:(id)a6 messageSentViewModel:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_3322C(v16);
  }

  LOBYTE(v19) = 0;
  v17 = [(AAUIInviteMessageFlowController *)self initWithContext:v15 flow:a4 navigationController:v14 defaultMessageViewModel:v13 messageSentViewModel:v12 isADPUpsellFlow:0 isFamilyMember:v19 cdpContext:0];

  return v17;
}

- (AAUIInviteMessageFlowController)initWithContext:(id)a3 flow:(unint64_t)a4 navigationController:(id)a5 defaultMessageViewModel:(id)a6 messageSentViewModel:(id)a7 isADPUpsellFlow:(BOOL)a8 isFamilyMember:(BOOL)a9 cdpContext:(id)a10
{
  v16 = a3;
  v27 = a5;
  v26 = a6;
  v17 = a7;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = AAUIInviteMessageFlowController;
  v19 = [(AAUIInviteMessageFlowController *)&v28 init];
  v20 = v19;
  if (v19)
  {
    v19->_flow = a4;
    objc_storeStrong(&v19->_context, a3);
    v21 = [v16 recipients];
    v22 = [v21 firstObject];
    recipientHandle = v20->_recipientHandle;
    v20->_recipientHandle = v22;

    objc_storeStrong(&v20->_navigationController, a5);
    objc_storeStrong(&v20->_defaultMessageViewModel, a6);
    objc_storeStrong(&v20->_messageSentViewModel, a7);
    v20->_isADPUpsellFlow = a8;
    v20->_isFamilyMember = a9;
    objc_storeStrong(&v20->_cdpContext, a10);
  }

  return v20;
}

- (void)_showActivitySpinnerInNavigationBar
{
  spinnerManager = self->_spinnerManager;
  if (!spinnerManager)
  {
    v4 = [(AAUIInviteMessageFlowController *)self navigationController];
    v5 = [v4 topViewController];
    v6 = [v5 navigationItem];

    v7 = [[AAUISpinnerManager alloc] initWithNavigationItem:v6 hideBackButton:1];
    v8 = self->_spinnerManager;
    self->_spinnerManager = v7;

    spinnerManager = self->_spinnerManager;
  }

  [(AAUISpinnerManager *)spinnerManager startNavigationSpinner];
}

- (void)_hideActivitySpinnerInNavigationBar
{
  spinnerManager = self->_spinnerManager;
  if (spinnerManager)
  {
    [(AAUISpinnerManager *)spinnerManager stopNavigationSpinner];
    v4 = self->_spinnerManager;
    self->_spinnerManager = 0;
  }
}

- (void)_showDefaultMessageView
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [[AAUIOBWelcomeController alloc] initWithViewModel:self->_defaultMessageViewModel];
  defaultMessageController = self->_defaultMessageController;
  self->_defaultMessageController = v4;

  v6 = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
  [v6 addTarget:self action:"_sendDefaultMessage" forControlEvents:64];

  v7 = [(AAUIOBWelcomeController *)self->_defaultMessageController secondaryButton];
  [v7 addTarget:self action:"_showMessagesComposeController" forControlEvents:64];

  if (!self->_hideCancel)
  {
    v8 = [(AAUIInviteMessageFlowController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    v10 = [UIBarButtonItem alloc];
    if (v9)
    {
      v11 = 101;
    }

    else
    {
      v11 = 1;
    }

    v12 = [v10 initWithBarButtonSystemItem:v11 target:self action:"_cancelMessageInvitationFlow"];
    v13 = [(AAUIOBWelcomeController *)self->_defaultMessageController navigationItem];
    [v13 setLeftBarButtonItem:v12];

    [v3 addObject:kAccountAccessCancel];
  }

  [v3 addObject:kAccountAccessEditInvite];
  [v3 addObject:kAccountAccessSend];
  [(AAUIInviteMessageFlowController *)self _sendRecoveryContactSendMessageLandingEvent:v3];
  navigationController = self->_navigationController;
  v15 = _AAUILogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (navigationController)
  {
    if (v16)
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "iMessage invitation flow by pushing to existing navigation controller", v19, 2u);
    }

    [(UINavigationController *)self->_navigationController pushViewController:self->_defaultMessageController animated:1];
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "iMessage invitation flow by creating new navigation controller", buf, 2u);
    }

    v17 = [[UINavigationController alloc] initWithRootViewController:self->_defaultMessageController];
    v18 = self->_navigationController;
    self->_navigationController = v17;
  }
}

- (void)_showMessagesComposeController
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Show message composer...", v6, 2u);
  }

  [(AAUIInviteMessageFlowController *)self _sendEscapeOfferSelectedEvent:kAccountAccessEditInvite];
  v4 = [[AAUIMessagesInviteConfigurationController alloc] initWithInviteContext:self->_context flow:self->_flow presentingController:self->_navigationController];
  messageComposer = self->_messageComposer;
  self->_messageComposer = v4;

  [(AAUIMessagesInviteConfigurationController *)self->_messageComposer setDelegate:self];
  [(AAUIMessagesInviteConfigurationController *)self->_messageComposer setUiVersion:[(AAUIInviteMessageFlowController *)self uiVersion]];
  [(AAUIMessagesInviteConfigurationController *)self->_messageComposer presentWhenReadyWithCompletion:0];
}

- (void)_showInvitationSent
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Initiating Trusted Contact invitation message flow...", buf, 2u);
  }

  v4 = [(AAUIInviteMessageFlowController *)self uiVersion];
  v5 = _AAUILogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v6)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Skip showing invitation message sent UI...", buf, 2u);
    }

    [(AAUIInviteMessageFlowController *)self _finishMessageInvitationFlow];
  }

  else
  {
    if (v6)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Show invitation message sent UI...", buf, 2u);
    }

    v7 = [[AAUIOBWelcomeController alloc] initWithViewModel:self->_messageSentViewModel];
    allSetVC = self->_allSetVC;
    self->_allSetVC = v7;

    v9 = [(AAUIOBWelcomeController *)self->_allSetVC navigationItem];
    [v9 setHidesBackButton:1];

    v10 = [(AAUIOBWelcomeController *)self->_allSetVC primaryButton];
    [v10 addTarget:self action:"_finishMessageInvitationFlow" forEvents:64];

    v11 = [(AAUIOBWelcomeController *)self->_allSetVC secondaryButton];
    [v11 addTarget:self action:"_messageSentSecondaryActionTapped" forEvents:64];

    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_7AD4;
    v12[3] = &unk_594F0;
    objc_copyWeak(&v13, buf);
    v12[4] = self;
    dispatch_async(&_dispatch_main_q, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)_postAdpUpsellCFUFamilyCustodianAddedEvent
{
  v3 = [(CDPContext *)self->_cdpContext altDSID];
  v4 = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v6 = [AAFAnalyticsEvent analyticsEventWithName:@"com.apple.appleaccount.familyCustodianAdded" altDSID:v3 flowID:v4];

  v5 = +[AAAnalyticsRTCReporter reporter];
  [v5 sendEvent:v6];
}

- (void)_postAdpUpsellCFUCustodianInviteSentEvent
{
  v3 = [(CDPContext *)self->_cdpContext altDSID];
  v4 = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v6 = [AAFAnalyticsEvent analyticsEventWithName:@"com.apple.appleaccount.custodianInviteSent" altDSID:v3 flowID:v4];

  v5 = +[AAAnalyticsRTCReporter reporter];
  [v5 sendEvent:v6];
}

- (void)_invitationWasSent
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  v4 = [WeakRetained accounts];
  v5 = [v4 objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v5)
  {
    v6 = kAAAnalyticsEventRecoveryContactInviteSent;
    v7 = [v5 aida_alternateDSID];
    v8 = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v9 = [AAFAnalyticsEvent analyticsEventWithName:v6 altDSID:v7 flowID:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(AAUIInviteMessageFlowController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    objc_initWeak(&location, self);
    if (+[AAUIFeatureFlags isSolariumEnabled])
    {
      v12 = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
      [v12 showsBusyIndicator];
    }

    v13 = [(AAUIInviteMessageFlowController *)self delegate];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7EDC;
    v14[3] = &unk_59518;
    v14[4] = self;
    v15 = v9;
    objc_copyWeak(&v16, &location);
    [v13 inviteMessageWasSent:self completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AAUIInviteMessageFlowController *)self _showInvitationSent];
    [(AAUIInviteMessageFlowController *)self _sendTelemetryEventWithSuccess:v9 didSucceed:1 error:0];
  }
}

- (void)_cancelMessageInvitationFlow
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Cancelling invitation flow...", buf, 2u);
  }

  v4 = [(AAUIInviteMessageFlowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AAUIInviteMessageFlowController *)self delegate];
    [v6 inviteMessageFlowWasCancelled:self];
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_81A0;
    block[3] = &unk_59540;
    objc_copyWeak(&v8, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_finishMessageInvitationFlow
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Finishing invitation flow...", buf, 2u);
  }

  v4 = [(AAUIOBWelcomeController *)self->_allSetVC primaryButton];
  [v4 setEnabled:0];

  v5 = [(AAUIInviteMessageFlowController *)self delegate];

  if (v5)
  {
    v6 = [(AAUIInviteMessageFlowController *)self delegate];
    [v6 inviteMessageFlowDidFinish:self];
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8328;
    block[3] = &unk_59540;
    objc_copyWeak(&v8, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_messageSentSecondaryActionTapped
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Invite Message Completed - Secondary Button tapped", v7, 2u);
  }

  v4 = [(AAUIInviteMessageFlowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AAUIInviteMessageFlowController *)self delegate];
    [v6 inviteMessageCompleteSecondaryButtonTapped:self];
  }
}

- (void)_sendDefaultMessage
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Sending default message...", buf, 2u);
  }

  v4 = [[AAUIInviteLinkMetadataProvider alloc] initWithContext:self->_context];
  v5 = [(AAUIInviteMessageFlowController *)self _bubbleImageForFlow:self->_flow];
  objc_initWeak(buf, self);
  [(AAUIInviteMessageFlowController *)self _sendEscapeOfferSelectedEvent:kAccountAccessSend];
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v6 = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
    [v6 showsBusyIndicator];
  }

  else
  {
    [(AAUIInviteMessageFlowController *)self _showActivitySpinnerInNavigationBar];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_85C0;
  v7[3] = &unk_595A8;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [v4 loadMetadataWithImage:v5 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (BOOL)_sendLCLiveMessage:(id)a3
{
  v4 = [a3 bubbleMetadata];
  v5 = [objc_alloc(sub_89DC()) initWithLinkMetadata:v4];
  v6 = [objc_alloc(sub_8ABC()) initWithAlternateLayout:v5];
  v7 = objc_alloc(sub_8B9C());
  v8 = objc_alloc_init(sub_8C7C());
  v9 = [v7 initWithSession:v8];

  [v9 setLayout:v6];
  v10 = [(AAMessagesInviteContext *)self->_context messageURL];
  [v9 setURL:v10];

  v11 = [v4 title];
  [v9 setSummaryText:v11];

  v12 = [v9 _pluginPayloadWithAppIconData:0 appName:@"LegacyContactMessageExtention" allowDataPayloads:1];
  v13 = [v12 data];
  recipientHandle = self->_recipientHandle;
  v14 = [NSArray arrayWithObjects:&recipientHandle count:1];
  LOBYTE(self) = IMSPISendMSMessagePayloadReturningGUID();

  return self;
}

- (id)_bubbleImageForFlow:(unint64_t)a3
{
  if (!a3)
  {
    v3 = @"custodian_message_bubble";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = @"beneficiary_message_bubble";
LABEL_5:
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [UIImage imageNamed:v3 inBundle:v4];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_sendRecoveryContactSendMessageLandingEvent:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  v5 = [WeakRetained accounts];
  v6 = [v5 objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v6)
  {
    v7 = kAAAnalyticsEventRecoveryContactSendMessageLanding;
    v8 = [v6 aida_alternateDSID];
    v9 = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v10 = [AAFAnalyticsEvent analyticsEventWithName:v7 altDSID:v8 flowID:v9];

    v11 = [v13 aaf_arrayAsCommaSeperatedString];
    [v10 setObject:v11 forKeyedSubscript:kCDPAnalyticsEscapeOffer];

    v12 = +[AAAnalyticsRTCReporter reporter];
    [v12 sendEvent:v10];
  }
}

- (void)_sendEscapeOfferSelectedEvent:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  v5 = [WeakRetained accounts];
  v6 = [v5 objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v6)
  {
    v7 = kAAAnalyticsEventSignOutEscapeOfferSelected;
    v8 = [v6 aida_alternateDSID];
    v9 = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v10 = [AAFAnalyticsEvent analyticsEventWithName:v7 altDSID:v8 flowID:v9];

    [v10 setObject:v12 forKeyedSubscript:kCDPAnalyticsEscapeOfferSelected];
    v11 = +[AAAnalyticsRTCReporter reporter];
    [v11 sendEvent:v10];
  }
}

- (void)inviteController:(id)a3 didFinishWithStatus:(unint64_t)a4 recipients:(id)a5 userInfo:(id)a6 error:(id)a7
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  v11 = [WeakRetained accounts];
  v12 = [v11 objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v12)
  {
    v13 = kAAAnalyticsEventRecoveryContactInviteSent;
    v14 = [v12 aida_alternateDSID];
    v15 = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v16 = [AAFAnalyticsEvent analyticsEventWithName:v13 altDSID:v14 flowID:v15];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = _AAUILogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "User cancelled", v21, 2u);
    }

    v18 = -1;
    goto LABEL_12;
  }

  v16 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a4 != 1)
  {
    v19 = _AAUILogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_333B0(v19);
    }

    v18 = 0;
LABEL_12:
    v20 = [NSError aa_errorWithCode:v18];
    [(AAUIInviteMessageFlowController *)self _sendTelemetryEventWithSuccess:v16 didSucceed:0 error:v20];

    goto LABEL_13;
  }

  [(AAUIInviteMessageFlowController *)self _invitationWasSent];
LABEL_13:
  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (AAUIInviteMessageFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AIDAAccountManager)accountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);

  return WeakRetained;
}

@end
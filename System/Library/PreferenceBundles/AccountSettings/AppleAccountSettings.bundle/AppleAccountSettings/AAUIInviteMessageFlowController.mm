@interface AAUIInviteMessageFlowController
- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel;
- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel isADPUpsellFlow:(BOOL)upsellFlow isFamilyMember:(BOOL)member cdpContext:(id)self0;
- (AAUIInviteMessageFlowControllerDelegate)delegate;
- (AIDAAccountManager)accountManager;
- (BOOL)_sendLCLiveMessage:(id)message;
- (id)_bubbleImageForFlow:(unint64_t)flow;
- (void)_cancelMessageInvitationFlow;
- (void)_finishMessageInvitationFlow;
- (void)_hideActivitySpinnerInNavigationBar;
- (void)_invitationWasSent;
- (void)_messageSentSecondaryActionTapped;
- (void)_postAdpUpsellCFUCustodianInviteSentEvent;
- (void)_postAdpUpsellCFUFamilyCustodianAddedEvent;
- (void)_sendDefaultMessage;
- (void)_sendEscapeOfferSelectedEvent:(id)event;
- (void)_sendRecoveryContactSendMessageLandingEvent:(id)event;
- (void)_showActivitySpinnerInNavigationBar;
- (void)_showDefaultMessageView;
- (void)_showInvitationSent;
- (void)_showMessagesComposeController;
- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error;
@end

@implementation AAUIInviteMessageFlowController

- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel
{
  viewModelCopy = viewModel;
  modelCopy = model;
  controllerCopy = controller;
  contextCopy = context;
  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_3322C(v16);
  }

  LOBYTE(v19) = 0;
  v17 = [(AAUIInviteMessageFlowController *)self initWithContext:contextCopy flow:flow navigationController:controllerCopy defaultMessageViewModel:modelCopy messageSentViewModel:viewModelCopy isADPUpsellFlow:0 isFamilyMember:v19 cdpContext:0];

  return v17;
}

- (AAUIInviteMessageFlowController)initWithContext:(id)context flow:(unint64_t)flow navigationController:(id)controller defaultMessageViewModel:(id)model messageSentViewModel:(id)viewModel isADPUpsellFlow:(BOOL)upsellFlow isFamilyMember:(BOOL)member cdpContext:(id)self0
{
  contextCopy = context;
  controllerCopy = controller;
  modelCopy = model;
  viewModelCopy = viewModel;
  cdpContextCopy = cdpContext;
  v28.receiver = self;
  v28.super_class = AAUIInviteMessageFlowController;
  v19 = [(AAUIInviteMessageFlowController *)&v28 init];
  v20 = v19;
  if (v19)
  {
    v19->_flow = flow;
    objc_storeStrong(&v19->_context, context);
    recipients = [contextCopy recipients];
    firstObject = [recipients firstObject];
    recipientHandle = v20->_recipientHandle;
    v20->_recipientHandle = firstObject;

    objc_storeStrong(&v20->_navigationController, controller);
    objc_storeStrong(&v20->_defaultMessageViewModel, model);
    objc_storeStrong(&v20->_messageSentViewModel, viewModel);
    v20->_isADPUpsellFlow = upsellFlow;
    v20->_isFamilyMember = member;
    objc_storeStrong(&v20->_cdpContext, cdpContext);
  }

  return v20;
}

- (void)_showActivitySpinnerInNavigationBar
{
  spinnerManager = self->_spinnerManager;
  if (!spinnerManager)
  {
    navigationController = [(AAUIInviteMessageFlowController *)self navigationController];
    topViewController = [navigationController topViewController];
    navigationItem = [topViewController navigationItem];

    v7 = [[AAUISpinnerManager alloc] initWithNavigationItem:navigationItem hideBackButton:1];
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

  primaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
  [primaryButton addTarget:self action:"_sendDefaultMessage" forControlEvents:64];

  secondaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController secondaryButton];
  [secondaryButton addTarget:self action:"_showMessagesComposeController" forControlEvents:64];

  if (!self->_hideCancel)
  {
    delegate = [(AAUIInviteMessageFlowController *)self delegate];
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
    navigationItem = [(AAUIOBWelcomeController *)self->_defaultMessageController navigationItem];
    [navigationItem setLeftBarButtonItem:v12];

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

  uiVersion = [(AAUIInviteMessageFlowController *)self uiVersion];
  v5 = _AAUILogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (uiVersion == 1)
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

    navigationItem = [(AAUIOBWelcomeController *)self->_allSetVC navigationItem];
    [navigationItem setHidesBackButton:1];

    primaryButton = [(AAUIOBWelcomeController *)self->_allSetVC primaryButton];
    [primaryButton addTarget:self action:"_finishMessageInvitationFlow" forEvents:64];

    secondaryButton = [(AAUIOBWelcomeController *)self->_allSetVC secondaryButton];
    [secondaryButton addTarget:self action:"_messageSentSecondaryActionTapped" forEvents:64];

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
  altDSID = [(CDPContext *)self->_cdpContext altDSID];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v6 = [AAFAnalyticsEvent analyticsEventWithName:@"com.apple.appleaccount.familyCustodianAdded" altDSID:altDSID flowID:telemetryFlowID];

  v5 = +[AAAnalyticsRTCReporter reporter];
  [v5 sendEvent:v6];
}

- (void)_postAdpUpsellCFUCustodianInviteSentEvent
{
  altDSID = [(CDPContext *)self->_cdpContext altDSID];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v6 = [AAFAnalyticsEvent analyticsEventWithName:@"com.apple.appleaccount.custodianInviteSent" altDSID:altDSID flowID:telemetryFlowID];

  v5 = +[AAAnalyticsRTCReporter reporter];
  [v5 sendEvent:v6];
}

- (void)_invitationWasSent
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v5 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v5)
  {
    v6 = kAAAnalyticsEventRecoveryContactInviteSent;
    aida_alternateDSID = [v5 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v9 = [AAFAnalyticsEvent analyticsEventWithName:v6 altDSID:aida_alternateDSID flowID:telemetryFlowID];
  }

  else
  {
    v9 = 0;
  }

  delegate = [(AAUIInviteMessageFlowController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    objc_initWeak(&location, self);
    if (+[AAUIFeatureFlags isSolariumEnabled])
    {
      primaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
      [primaryButton showsBusyIndicator];
    }

    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7EDC;
    v14[3] = &unk_59518;
    v14[4] = self;
    v15 = v9;
    objc_copyWeak(&v16, &location);
    [delegate2 inviteMessageWasSent:self completion:v14];

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

  delegate = [(AAUIInviteMessageFlowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    [delegate2 inviteMessageFlowWasCancelled:self];
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

  primaryButton = [(AAUIOBWelcomeController *)self->_allSetVC primaryButton];
  [primaryButton setEnabled:0];

  delegate = [(AAUIInviteMessageFlowController *)self delegate];

  if (delegate)
  {
    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    [delegate2 inviteMessageFlowDidFinish:self];
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

  delegate = [(AAUIInviteMessageFlowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AAUIInviteMessageFlowController *)self delegate];
    [delegate2 inviteMessageCompleteSecondaryButtonTapped:self];
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
    primaryButton = [(AAUIOBWelcomeController *)self->_defaultMessageController primaryButton];
    [primaryButton showsBusyIndicator];
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

- (BOOL)_sendLCLiveMessage:(id)message
{
  bubbleMetadata = [message bubbleMetadata];
  v5 = [objc_alloc(sub_89DC()) initWithLinkMetadata:bubbleMetadata];
  v6 = [objc_alloc(sub_8ABC()) initWithAlternateLayout:v5];
  v7 = objc_alloc(sub_8B9C());
  v8 = objc_alloc_init(sub_8C7C());
  v9 = [v7 initWithSession:v8];

  [v9 setLayout:v6];
  messageURL = [(AAMessagesInviteContext *)self->_context messageURL];
  [v9 setURL:messageURL];

  title = [bubbleMetadata title];
  [v9 setSummaryText:title];

  v12 = [v9 _pluginPayloadWithAppIconData:0 appName:@"LegacyContactMessageExtention" allowDataPayloads:1];
  data = [v12 data];
  recipientHandle = self->_recipientHandle;
  v14 = [NSArray arrayWithObjects:&recipientHandle count:1];
  LOBYTE(self) = IMSPISendMSMessagePayloadReturningGUID();

  return self;
}

- (id)_bubbleImageForFlow:(unint64_t)flow
{
  if (!flow)
  {
    v3 = @"custodian_message_bubble";
    goto LABEL_5;
  }

  if (flow == 1)
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

- (void)_sendRecoveryContactSendMessageLandingEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v6 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v6)
  {
    v7 = kAAAnalyticsEventRecoveryContactSendMessageLanding;
    aida_alternateDSID = [v6 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v10 = [AAFAnalyticsEvent analyticsEventWithName:v7 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    aaf_arrayAsCommaSeperatedString = [eventCopy aaf_arrayAsCommaSeperatedString];
    [v10 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:kCDPAnalyticsEscapeOffer];

    v12 = +[AAAnalyticsRTCReporter reporter];
    [v12 sendEvent:v10];
  }
}

- (void)_sendEscapeOfferSelectedEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v6 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v6)
  {
    v7 = kAAAnalyticsEventSignOutEscapeOfferSelected;
    aida_alternateDSID = [v6 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v10 = [AAFAnalyticsEvent analyticsEventWithName:v7 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    [v10 setObject:eventCopy forKeyedSubscript:kCDPAnalyticsEscapeOfferSelected];
    v11 = +[AAAnalyticsRTCReporter reporter];
    [v11 sendEvent:v10];
  }
}

- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  accounts = [WeakRetained accounts];
  v12 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v12)
  {
    v13 = kAAAnalyticsEventRecoveryContactInviteSent;
    aida_alternateDSID = [v12 aida_alternateDSID];
    telemetryFlowID = [(AAUIInviteMessageFlowController *)self telemetryFlowID];
    v16 = [AAFAnalyticsEvent analyticsEventWithName:v13 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    if (status)
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
  if (!status)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (status != 1)
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
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
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
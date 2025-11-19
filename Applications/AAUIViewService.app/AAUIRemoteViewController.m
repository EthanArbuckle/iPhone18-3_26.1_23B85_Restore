@interface AAUIRemoteViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_acceptCustodianshipInvite;
- (void)_acceptInheritanceInvite;
- (void)_buildViewModelWithContextInfo:(id)a3;
- (void)_callCompletionWithError:(id)a3;
- (void)_checkManateeAvailabilityForFlowType:(unint64_t)a3 completion:(id)a4;
- (void)_declineInheritanceInvite;
- (void)_dismissAndExit;
- (void)_dismissBeneficiaryInvitationReminderFollowUp;
- (void)_dismissCustodianInvitationReminderFollowUp;
- (void)_displayMisconfiguredAgePrompt;
- (void)_goToAccountBeneficiarySettings;
- (void)_goToAccountPersonalInformation;
- (void)_goToAccountRecoverySettings;
- (void)_goToKBArticleAboutChangingBirthday;
- (void)_invalidateLookupConnection;
- (void)_main_dismissAndExit;
- (void)_prepareMessagesInvitation;
- (void)_setupRemoteProxy;
- (void)_showCustodianInvitationAcceptedView;
- (void)_showInheritanceInvitationAcceptedView;
- (void)_showInvitedAsFlow;
- (void)_userActionResponse:(int)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)endUIService;
- (void)handleButtonActions:(id)a3;
- (void)handleCancellation;
- (void)prepareViewServiceForPresentation;
- (void)setUpHostProxy;
- (void)setUpLookupConnection:(id)a3;
@end

@implementation AAUIRemoteViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_showInvitedAsFlow
{
  if (self->_welcomeController)
  {
    v2 = _AAUILogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100005C78();
    }

    goto LABEL_9;
  }

  [(AAUIRemoteViewController *)self _prepareMessagesInvitation];
  if (!self->_isCustodianFlow)
  {
    v2 = [[AAUID2DEncryptionFlowContext alloc] initWithType:1];
    v5 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v2 withPresentingViewController:self];
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000024E0;
    v7[3] = &unk_1000103E8;
    v6 = v5;
    v8 = v6;
    objc_copyWeak(&v9, &location);
    [v6 verifyAndRepairManateeWithCompletion:v7];
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
LABEL_9:

    return;
  }

  welcomeController = self->_welcomeController;

  [(AAUIRemoteViewController *)self presentViewController:welcomeController animated:1 completion:0];
}

- (void)_displayMisconfiguredAgePrompt
{
  v16 = [UIImage systemImageNamed:@"calendar.and.person"];
  v3 = [OBWelcomeController alloc];
  v4 = [(AAAgeMigrationPromptModelProtocol *)self->_ageMigrationPromptModel title];
  v5 = [(AAAgeMigrationPromptModelProtocol *)self->_ageMigrationPromptModel message];
  v6 = [v3 initWithTitle:v4 detailText:v5 icon:v16];

  [v6 setModalInPresentation:1];
  v7 = +[OBBoldTrayButton boldButton];
  v8 = [(AAAgeMigrationPromptModelProtocol *)self->_ageMigrationPromptModel secondaryButtonText];
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:"goToSettingsTapped:" forControlEvents:64];
  v9 = [v6 buttonTray];
  [v9 addButton:v7];

  v10 = +[OBLinkTrayButton linkButton];
  v11 = [(AAAgeMigrationPromptModelProtocol *)self->_ageMigrationPromptModel primaryButtonText];
  [v10 setTitle:v11 forState:0];

  [v10 addTarget:self action:"learnMoreTapped:" forControlEvents:64];
  v12 = [v6 buttonTray];
  [v12 addButton:v10];

  v13 = [[UINavigationController alloc] initWithRootViewController:v6];
  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelTapped:"];
  v15 = [v6 navigationItem];
  [v15 setRightBarButtonItem:v14];

  [(AAUIRemoteViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_userActionResponse:(int)a3
{
  ageMigrationPromptModel = self->_ageMigrationPromptModel;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (ageMigrationPromptModel)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D24();
    }

    v8 = _AAUILogSystem();
    v9 = v8;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315394;
          v11 = "[AAUIRemoteViewController _userActionResponse:]";
          v12 = 1024;
          v13 = 3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: User tapped on %i in misconfigured age prompt. cancel out", &v10, 0x12u);
        }

        goto LABEL_25;
      }

      if (a3 != 5)
      {
LABEL_18:
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100005DAC();
        }

LABEL_25:

        [(AAUIRemoteViewController *)self handleCancellation];
        return;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[AAUIRemoteViewController _userActionResponse:]";
        v12 = 1024;
        v13 = 5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: User tapped on %i in misconfigured age prompt. Navigate to kb article", &v10, 0x12u);
      }

      [(AAUIRemoteViewController *)self _goToKBArticleAboutChangingBirthday];
      [(AAUIRemoteViewController *)self _callCompletionWithError:0];
    }

    else
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315394;
            v11 = "[AAUIRemoteViewController _userActionResponse:]";
            v12 = 1024;
            v13 = 2;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: User tapped on %i in misconfigured age prompt. going to settings...", &v10, 0x12u);
          }

          [(AAUIRemoteViewController *)self _persistUserHaveSeenAlertWithAction:2];
          [(AAUIRemoteViewController *)self _goToAccountPersonalInformation];
          return;
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[AAUIRemoteViewController _userActionResponse:]";
        v12 = 1024;
        v13 = 1;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: User tapped on %i in misconfigured age prompt. dismiss", &v10, 0x12u);
      }

      [(AAUIRemoteViewController *)self _persistUserHaveSeenAlertWithAction:1];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005E2C();
    }
  }
}

- (void)_buildViewModelWithContextInfo:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Building with context info: %@", buf, 0xCu);
  }

  v6 = [(AAUIOBWelcomeControllerViewModelProtocol *)v4 objectForKeyedSubscript:@"modelData"];
  v7 = [(AAUIOBWelcomeControllerViewModelProtocol *)v4 objectForKeyedSubscript:@"modelType"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v50 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v50];
    v12 = v50;
    v13 = [[AAUIOBCustodianInvitationModel alloc] initWithModel:v11];
    viewModel = self->_viewModel;
    self->_viewModel = v13;

    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_viewModel;
      *buf = 138412290;
      v52 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_viewModel %@", buf, 0xCu);
    }

    [(AAUIRemoteViewController *)self setViewServiceFlowType:0];
    goto LABEL_7;
  }

  v18 = [(AAUIOBWelcomeControllerViewModelProtocol *)v4 objectForKeyedSubscript:@"modelType"];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v18 isEqualToString:v20];

  if (v21)
  {
    v49 = 0;
    v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v49];
    v12 = v49;
    v22 = [[AAUIOBInvitationSentViewModel alloc] initWithModel:v17];
    v23 = self->_viewModel;
    self->_viewModel = v22;

    v24 = self;
    v25 = 1;
  }

  else
  {
    v26 = [(AAUIOBWelcomeControllerViewModelProtocol *)v4 objectForKeyedSubscript:@"modelType"];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 isEqualToString:v28];

    if (v29)
    {
      v48 = 0;
      v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v48];
      v12 = v48;
      v30 = [[AAUIOBTrustedContactInviteMessageModel alloc] initWithModel:v17];
      v31 = self->_viewModel;
      self->_viewModel = v30;

      v24 = self;
      v25 = 2;
    }

    else
    {
      v32 = [(AAUIOBWelcomeControllerViewModelProtocol *)v4 objectForKeyedSubscript:@"modelType"];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v32 isEqualToString:v34];

      if (!v35)
      {
        v39 = [(AAUIOBWelcomeControllerViewModelProtocol *)v4 objectForKeyedSubscript:@"modelType"];
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        if ([v39 isEqualToString:v41])
        {
          v42 = +[AAUIFeatureFlags isU13InferPromptEnabled];

          if (v42)
          {
            v46 = 0;
            v43 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v46];
            v12 = v46;
            ageMigrationPromptModel = self->_ageMigrationPromptModel;
            self->_ageMigrationPromptModel = v43;

            [(AAUIRemoteViewController *)self setViewServiceFlowType:4];
LABEL_7:
            v17 = 0;
            goto LABEL_15;
          }
        }

        else
        {
        }

        v45 = _AAUILogSystem();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100005F34(v4, v45);
        }

        v12 = 0;
        v17 = 0;
        if ([v6 length])
        {
          goto LABEL_29;
        }

LABEL_26:
        v38 = _AAUILogSystem();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100006040();
        }

        goto LABEL_28;
      }

      v47 = 0;
      v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v47];
      v12 = v47;
      v36 = [[AAUIOBInheritanceInvitationViewModel alloc] initWithModel:v17];
      v37 = self->_viewModel;
      self->_viewModel = v36;

      v24 = self;
      v25 = 3;
    }
  }

  [(AAUIRemoteViewController *)v24 setViewServiceFlowType:v25];
LABEL_15:
  if (![v6 length])
  {
    goto LABEL_26;
  }

  if (v12)
  {
    v38 = _AAUILogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100005FD0();
    }

LABEL_28:
  }

LABEL_29:
}

- (void)_prepareMessagesInvitation
{
  v3 = [[AAUIOBWelcomeController alloc] initWithViewModel:self->_viewModel];
  welcomeController = self->_welcomeController;
  self->_welcomeController = v3;

  viewModel = self->_viewModel;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(AAUIOBWelcomeControllerViewModelProtocol *)self->_viewModel custodianshipInfo];
    v7 = [v6 status];

    v8 = _AAUILogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7 == 1)
    {
      if (v9)
      {
        sub_1000061A8();
      }

      v10 = [(AAUIOBWelcomeController *)self->_welcomeController primaryButton];
      [v10 addTarget:self action:"_acceptInheritanceInvite" forEvents:64];

      v11 = [(AAUIOBWelcomeController *)self->_welcomeController secondaryButton];
      v12 = v11;
      v13 = "_declineInheritanceInvite";
    }

    else
    {
      if (v9)
      {
        sub_10000616C();
      }

      v21 = [(AAUIOBWelcomeController *)self->_welcomeController primaryButton];
      [v21 addTarget:self action:"_legacyContactExitWithoutSettings" forEvents:64];

      v11 = [(AAUIOBWelcomeController *)self->_welcomeController secondaryButton];
      v12 = v11;
      v13 = "_goToAccountBeneficiarySettings";
    }
  }

  else
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10000607C();
    }

    self->_isCustodianFlow = 1;
    v15 = self->_viewModel;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(AAUIOBWelcomeControllerViewModelProtocol *)self->_viewModel custodianshipInfo], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      [(AAUIOBWelcomeController *)self->_welcomeController setDelegate:self];
      return;
    }

    v17 = [(AAUIOBWelcomeControllerViewModelProtocol *)self->_viewModel custodianshipInfo];
    v18 = [v17 status];

    if (v18 == 1)
    {
      v19 = _AAUILogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100006130();
      }

      v20 = [(AAUIOBWelcomeController *)self->_welcomeController primaryButton];
      [v20 addTarget:self action:"_acceptCustodianshipInvite" forEvents:64];

      v11 = [(AAUIOBWelcomeController *)self->_welcomeController secondaryButton];
    }

    else
    {
      v22 = [(AAUIOBWelcomeControllerViewModelProtocol *)self->_viewModel custodianshipInfo];
      v23 = [v22 status];

      v24 = _AAUILogSystem();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
      if (v23 != 5)
      {
        if (v25)
        {
          sub_1000060B8();
        }

        v26 = [(AAUIOBWelcomeController *)self->_welcomeController primaryButton];
        [v26 addTarget:self action:"_dismissAndExit" forEvents:64];

        v11 = [(AAUIOBWelcomeController *)self->_welcomeController secondaryButton];
        v12 = v11;
        v13 = "_goToAccountRecoverySettings";
        goto LABEL_26;
      }

      if (v25)
      {
        sub_1000060F4();
      }

      v11 = [(AAUIOBWelcomeController *)self->_welcomeController primaryButton];
    }

    v12 = v11;
    v13 = "_declineCustodianshipInvite";
  }

LABEL_26:
  [v11 addTarget:self action:v13 forEvents:64];
}

- (void)prepareViewServiceForPresentation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036B4;
  block[3] = &unk_100010398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setUpLookupConnection:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000061E4();
  }

  v6 = objc_opt_new();
  [v6 _setEndpoint:v4];
  v7 = [[NSXPCConnection alloc] initWithListenerEndpoint:v6];
  v8 = [(AAUIRemoteViewController *)self remoteObjectInterface];
  [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

  [(NSXPCConnection *)v7 resume];
  lookupConnection = self->_lookupConnection;
  self->_lookupConnection = v7;

  [(AAUIRemoteViewController *)self setUpHostProxy];
}

- (void)setUpHostProxy
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100006254();
  }

  objc_initWeak(&location, self);
  lookupConnection = self->_lookupConnection;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000039C0;
  v7[3] = &unk_100010438;
  objc_copyWeak(&v8, &location);
  v5 = [(NSXPCConnection *)lookupConnection remoteObjectProxyWithErrorHandler:v7];
  hostProxy = self->_hostProxy;
  self->_hostProxy = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)handleCancellation
{
  v3 = [NSError aa_errorWithCode:-1];
  [(AAUIRemoteViewController *)self _callCompletionWithError:v3];
}

- (void)_setupRemoteProxy
{
  v2 = [(AAUIRemoteViewController *)self _remoteViewControllerProxy];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up remote proxy", v4, 2u);
  }

  [v2 setShouldDisableFadeInAnimation:1];
  [v2 setAllowsMenuButtonDismissal:1];
  [v2 setAllowsSiri:0];
  [v2 setAllowsAlertStacking:1];
  [v2 setDesiredHardwareButtonEvents:17];
  [v2 setSwipeDismissalStyle:0];
  [v2 setDismissalAnimationStyle:1];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Configuring remote view service with context %@", &v11, 0xCu);
  }

  v9 = [v6 xpcEndpoint];
  [(AAUIRemoteViewController *)self setUpLookupConnection:v9];

  v10 = [v6 userInfo];
  [(AAUIRemoteViewController *)self _buildViewModelWithContextInfo:v10];

  v7[2](v7);
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 events] & 0x10;
        if (v10 & 0xFFFFFFFFFFFFFFFELL | [v9 events] & 1)
        {
          v11 = [NSError aa_errorWithCode:-1];
          [(AAUIRemoteViewController *)self _callCompletionWithError:v11];
        }

        [v9 sendResponseWithUnHandledEvents:{objc_msgSend(v9, "events") ^ v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_callCompletionWithError:(id)a3
{
  hostProxy = self->_hostProxy;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003E50;
  v4[3] = &unk_100010410;
  v4[4] = self;
  [(AAFlowPresenterHostProtocol *)hostProxy flowFinishedWithError:a3 completion:v4];
}

- (void)endUIService
{
  v2 = [(AAUIRemoteViewController *)self _remoteViewControllerProxy];
  [v2 invalidate];
}

- (void)_dismissAndExit
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004064;
  block[3] = &unk_100010398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_main_dismissAndExit
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000415C;
  v6[3] = &unk_100010398;
  v6[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000419C;
  v4[3] = &unk_1000104A0;
  v5 = objc_retainBlock(v6);
  v3 = v5;
  [(AAUIRemoteViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (void)_invalidateLookupConnection
{
  [(NSXPCConnection *)self->_lookupConnection invalidate];
  lookupConnection = self->_lookupConnection;
  self->_lookupConnection = 0;
}

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100006300();
  }

  [(AAUIRemoteViewController *)self _invalidateLookupConnection];
  v4.receiver = self;
  v4.super_class = AAUIRemoteViewController;
  [(AAUIRemoteViewController *)&v4 dealloc];
}

- (void)_checkManateeAvailabilityForFlowType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[AAUID2DEncryptionFlowContext alloc] initWithType:a3];
  v8 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v7 withPresentingViewController:self->_welcomeController];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000437C;
  v10[3] = &unk_1000104C8;
  v9 = v6;
  v11 = v9;
  [v8 verifyAndRepairManateeWithCompletion:v10];

  objc_destroyWeak(&location);
}

- (void)_acceptInheritanceInvite
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LCInvite: Checking manatee availability before accepting", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004540;
  v4[3] = &unk_1000104F0;
  objc_copyWeak(&v5, buf);
  [(AAUIRemoteViewController *)self _checkManateeAvailabilityForFlowType:1 completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_declineInheritanceInvite
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LCInvite: Declining", v4, 2u);
  }

  [(AAUIRemoteViewController *)self _respondToInheritanceInvitationWithResponse:0];
}

- (void)_acceptCustodianshipInvite
{
  v3 = [[AAUID2DEncryptionFlowContext alloc] initWithType:0];
  v4 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v3 withPresentingViewController:self->_welcomeController];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000494C;
  v6[3] = &unk_1000103E8;
  v5 = v4;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [v5 verifyAndRepairManateeWithCompletion:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (void)_showCustodianInvitationAcceptedView
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Displaying custodian acceptance UI.", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004D3C;
  block[3] = &unk_100010540;
  objc_copyWeak(&v5, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_showInheritanceInvitationAcceptedView
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LCInvite: Displaying Inheritance accepted UI.", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004FA8;
  block[3] = &unk_100010540;
  objc_copyWeak(&v5, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_dismissCustodianInvitationReminderFollowUp
{
  v3 = objc_alloc_init(AAFollowUpController);
  v4 = AAFollowUpIdentifierCustodianInvitationReminder;
  v5 = [(AAUIOBWelcomeControllerViewModelProtocol *)self->_viewModel custodianshipInfo];
  v6 = [v5 custodianID];
  v7 = [NSString stringWithFormat:@"%@-%@", v4, v6];

  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100006538();
  }

  [v3 dismissFollowUpWithIdentifier:v7 completion:&stru_100010580];
}

- (void)_dismissBeneficiaryInvitationReminderFollowUp
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LCInvite: Dismissing Inheritance Invitation Reminder CFU.", buf, 2u);
  }

  v4 = objc_alloc_init(AAFollowUpController);
  v5 = [(AAUIOBWelcomeControllerViewModelProtocol *)self->_viewModel custodianshipInfo];
  v6 = [v5 custodianID];
  v7 = [NSString stringWithFormat:@"%@-%@", @"com.apple.AAFollowUpIdentifier.beneficiaryInvitationReminder", v6];

  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100006538();
  }

  [v4 dismissFollowUpWithIdentifier:v7 completion:&stru_1000105A0];
}

- (void)_goToAccountRecoverySettings
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Taking user to account recovery settings", v5, 2u);
  }

  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountRecovery"];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)_goToAccountBeneficiarySettings
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Taking user to account beneficiary settings", v5, 2u);
  }

  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountBeneficiary"];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)_goToAccountPersonalInformation
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Taking user to account personal information", v5, 2u);
  }

  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=APPLE_ACCOUNT_CONTACT"];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)_goToKBArticleAboutChangingBirthday
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Take user to KB article about changing birthday", v5, 2u);
  }

  v3 = [NSURL URLWithString:@"https://support.apple.com/en-us/102473"];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:0];
}

@end
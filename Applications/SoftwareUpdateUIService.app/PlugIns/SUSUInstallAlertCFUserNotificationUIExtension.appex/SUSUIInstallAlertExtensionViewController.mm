@interface SUSUIInstallAlertExtensionViewController
- (SUSUIInstallAlertExtensionViewController)init;
- (id)_createView;
- (id)_messageTextWithCountdown;
- (void)_clearCountdownTimer;
- (void)_countdownTimerFired;
- (void)_startCountdownTimerWithInitialTime:(unint64_t)time;
- (void)client:(id)client installDidStart:(id)start;
- (void)client:(id)client installWantsToStart:(id)start completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)loadView;
- (void)reboot;
- (void)userWantsToDeferInstall:(id)install;
- (void)viewDidLoad;
@end

@implementation SUSUIInstallAlertExtensionViewController

- (SUSUIInstallAlertExtensionViewController)init
{
  v3 = SUSUILogExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Initing %@", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = SUSUIInstallAlertExtensionViewController;
  v5 = [(SUSUIInstallAlertExtensionViewController *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.susui.countdownInstallQueue", 0);
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = [[SUManagerClient alloc] initWithDelegate:v5 queue:v5->_clientQueue clientType:0];
    client = v5->_client;
    v5->_client = v8;
  }

  return v5;
}

- (void)dealloc
{
  v3 = SUSUILogExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Deallocating %@", buf, 0xCu);
  }

  [(SUSUIInstallAlertExtensionViewController *)self invalidate];
  clientQueue = self->_clientQueue;
  if (clientQueue)
  {
    self->_clientQueue = 0;
  }

  client = self->_client;
  if (client)
  {
    [(SUManagerClient *)client invalidate];
    v7 = self->_client;
    self->_client = 0;
  }

  v8.receiver = self;
  v8.super_class = SUSUIInstallAlertExtensionViewController;
  [(SUSUIInstallAlertExtensionViewController *)&v8 dealloc];
}

- (void)loadView
{
  v3 = SUSUILogExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Loading view", &v29, 2u);
  }

  extensionContext = [(SUSUIInstallAlertExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];

  if (inputItems && [inputItems count])
  {
    v6 = [inputItems objectAtIndexedSubscript:0];
    v7 = v6;
    if (!v6)
    {
      v9 = SUSUILogExtension();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Failed to get extension item", &v29, 2u);
      }

      goto LABEL_40;
    }

    userInfo = [v6 userInfo];
    v9 = userInfo;
    if (userInfo)
    {
      v10 = [userInfo objectForKeyedSubscript:@"ExtensionAlertKeyHumanReadableUpdateName"];
      updateName = self->_updateName;
      self->_updateName = v10;

      if (self->_updateName)
      {
        v12 = [v9 objectForKeyedSubscript:@"ExtensionAlertKeyCompletionAction"];
        completionAction = self->_completionAction;
        self->_completionAction = v12;

        if (!self->_completionAction)
        {
          self->_completionAction = @"ExtensionAlertKeyCompletionActionInstall";
        }

        v14 = [v9 objectForKeyedSubscript:@"ExtensionAlertKeyIsAutoInstall"];
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          self->_autoUpdate = [v14 BOOLValue];
        }

        else
        {
          self->_autoUpdate = 0;
        }

        v16 = [v9 objectForKeyedSubscript:@"ExtensionAlertKeySingularText"];
        singularText = self->_singularText;
        self->_singularText = v16;

        if (!self->_singularText)
        {
          self->_singularText = @"SOFTWARE_UPDATE_INSTALL_ALERT_COUNTDOWN_BODY_SINGULAR";
        }

        v18 = [v9 objectForKeyedSubscript:@"ExtensionAlertKeyPluralText"];
        pluralText = self->_pluralText;
        self->_pluralText = v18;

        if (!self->_pluralText)
        {
          self->_pluralText = @"SOFTWARE_UPDATE_INSTALL_ALERT_COUNTDOWN_BODY_PLURAL";
        }

        v20 = [v9 objectForKeyedSubscript:@"ExtensionAlertKeyCountdown"];
        v21 = v20;
        if (v20 && [v20 unsignedLongValue])
        {
          self->_countdownTimeout = [v21 unsignedLongValue];
          v22 = SUSUILogExtension();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            countdownTimeout = self->_countdownTimeout;
            v29 = 134217984;
            v30 = countdownTimeout;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Alert item has asked to use countdown = %lu", &v29, 0xCu);
          }
        }

        else
        {
          self->_countdownTimeout = 10;
          v22 = SUSUILogExtension();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = self->_countdownTimeout;
            v29 = 134217984;
            v30 = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Use default countdown = %lu", &v29, 0xCu);
          }
        }

        v25 = objc_alloc_init(SUInstallOptions);
        installOptions = self->_installOptions;
        self->_installOptions = v25;

        if (self->_autoUpdate)
        {
          [(SUInstallOptions *)self->_installOptions setDarkBoot:1];
          [(SUInstallOptions *)self->_installOptions setAutomaticInstallation:1];
        }

        v27 = [v9 objectForKeyedSubscript:@"ExtensionAlertKeyIgnorableConstraints"];
        if (v27)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[SUInstallOptions setIgnorableConstraints:](self->_installOptions, "setIgnorableConstraints:", [v27 unsignedIntegerValue]);
          }
        }

        [(SUSUIInstallAlertExtensionViewController *)self _clearCountdownTimer];
        [(SUSUIInstallAlertExtensionViewController *)self _startCountdownTimerWithInitialTime:self->_countdownTimeout];
        _createView = [(SUSUIInstallAlertExtensionViewController *)self _createView];
        [(SUSUIInstallAlertExtensionViewController *)self setView:_createView];

        goto LABEL_39;
      }

      v14 = SUSUILogExtension();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v15 = "[SUSUIInstallAlertExtensionViewController] Failed to get update name";
        goto LABEL_38;
      }
    }

    else
    {
      v14 = SUSUILogExtension();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v15 = "[SUSUIInstallAlertExtensionViewController] Failed to get user info";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v29, 2u);
      }
    }

LABEL_39:

LABEL_40:
    goto LABEL_41;
  }

  v7 = SUSUILogExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] extension input items null or empty. Unable to create alert view", &v29, 2u);
  }

LABEL_41:
}

- (void)viewDidLoad
{
  v3 = SUSUILogExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] View did load", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SUSUIInstallAlertExtensionViewController;
  [(SUSUIInstallAlertExtensionViewController *)&v4 viewDidLoad];
}

- (void)userWantsToDeferInstall:(id)install
{
  v4 = SUSUILogExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Install wants to defer install, invalidating", v5, 2u);
  }

  [(SUSUIInstallAlertExtensionViewController *)self invalidate];
}

- (void)client:(id)client installWantsToStart:(id)start completion:(id)completion
{
  v6 = SUSUILogExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Install wants to start, invalidating", v7, 2u);
  }

  [(SUSUIInstallAlertExtensionViewController *)self invalidate];
}

- (void)client:(id)client installDidStart:(id)start
{
  v5 = SUSUILogExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Install did start, invalidating", v6, 2u);
  }

  [(SUSUIInstallAlertExtensionViewController *)self invalidate];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(SUSUIInstallAlertExtensionViewController *)obj _clearCountdownTimer];
  objc_sync_exit(obj);
}

- (id)_createView
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
  v4 = [UIFont fontWithDescriptor:v3 size:14.0];
  v5 = [[UILabel alloc] initWithSize:{0.0, 0.0}];
  label = self->_label;
  self->_label = v5;

  v7 = self->_label;
  _messageTextWithCountdown = [(SUSUIInstallAlertExtensionViewController *)self _messageTextWithCountdown];
  [(UILabel *)v7 setText:_messageTextWithCountdown];

  [(UILabel *)self->_label setAutoresizingMask:40];
  [(UILabel *)self->_label setLineBreakMode:0];
  [(UILabel *)self->_label setNumberOfLines:0];
  [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setFont:v4];
  [(UILabel *)self->_label sizeThatFits:220.0, 1000.0];
  v10 = v9;
  v12 = v11;
  [(UILabel *)self->_label setSize:?];
  [(SUSUIInstallAlertExtensionViewController *)self setPreferredContentSize:v10, v12];
  v13 = self->_label;
  v14 = v13;

  return v13;
}

- (void)_countdownTimerFired
{
  v3 = SUSUILogExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    countdownTimer = self->_countdownTimer;
    *buf = 138412290;
    v11 = countdownTimer;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Countdown timer hit, timer:%@", buf, 0xCu);
  }

  timeLeftUntilInstall = self->_timeLeftUntilInstall - 1;
  self->_timeLeftUntilInstall = timeLeftUntilInstall;
  label = self->_label;
  if (label)
  {
    _messageTextWithCountdown = [(SUSUIInstallAlertExtensionViewController *)self _messageTextWithCountdown];
    [(UILabel *)label setText:_messageTextWithCountdown];

    timeLeftUntilInstall = self->_timeLeftUntilInstall;
  }

  if (!timeLeftUntilInstall)
  {
    [(SUSUIInstallAlertExtensionViewController *)self _clearCountdownTimer];
    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001DCC;
    block[3] = &unk_1000081C0;
    block[4] = self;
    dispatch_async(clientQueue, block);
    [(SUSUIInstallAlertExtensionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)reboot
{
  v3 = objc_alloc_init(FBSSystemService);
  v2 = [[FBSShutdownOptions alloc] initWithReason:@"OTA Software Update"];
  [v2 setRebootType:1];
  [v3 shutdownWithOptions:v2];
}

- (id)_messageTextWithCountdown
{
  v3 = self->_pluralText;
  if (self->_timeLeftUntilInstall == 1)
  {
    v4 = self->_singularText;

    v3 = v4;
  }

  if (qword_10000C9E0 != -1)
  {
    sub_100002530();
  }

  v5 = [qword_10000C9D8 localizedStringForKey:v3 value:&stru_100008400 table:@"ui_alerts"];
  v6 = [NSString stringWithFormat:@"%@\n", v5];

  updateName = self->_updateName;
  v8 = [NSNumber numberWithUnsignedInteger:self->_timeLeftUntilInstall];
  v9 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@ %@" error:0, updateName, v8];

  return v9;
}

- (void)_clearCountdownTimer
{
  if (self->_countdownTimer)
  {
    v3 = SUSUILogExtension();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      countdownTimer = self->_countdownTimer;
      v6 = 138412290;
      v7 = countdownTimer;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Clearing countdown timer %@", &v6, 0xCu);
    }

    [(NSTimer *)self->_countdownTimer invalidate];
    v5 = self->_countdownTimer;
    self->_countdownTimer = 0;
  }
}

- (void)_startCountdownTimerWithInitialTime:(unint64_t)time
{
  self->_timeLeftUntilInstall = time;
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_countdownTimerFired" selector:0 userInfo:1 repeats:1.0];
  countdownTimer = self->_countdownTimer;
  self->_countdownTimer = v5;

  v7 = SUSUILogExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_countdownTimer;
    v9 = 138412546;
    v10 = v8;
    v11 = 2048;
    timeCopy = time;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Started countdown timer %@ with initial time %lu", &v9, 0x16u);
  }
}

@end
@interface HODataSyncingViewController
- (double)bottomPadding;
- (double)insetSize;
- (id)_bottomPaddingConstraintForLowestView:(id)view;
- (id)_createButtonWithString:(id)string;
- (id)_createConstraintForTextView;
- (id)_createConstraintsForButton:(id)button includeBottomConstraint:(BOOL)constraint;
- (id)_createResetSectionConstraints;
- (void)_createAndAddResetLabelsIfNeeded;
- (void)_enableButtonPressed:(id)pressed;
- (void)_enableICloud;
- (void)_internalCyclePressed:(id)pressed;
- (void)_quit;
- (void)_removeLowerSectionControlsAndLabels;
- (void)_resetButtonConfirmed;
- (void)_resetButtonPressed:(id)pressed;
- (void)setDataSyncState:(unint64_t)state;
- (void)startCDPRepair;
- (void)viewDidLoad;
@end

@implementation HODataSyncingViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HODataSyncingViewController;
  [(HODataSyncingViewController *)&v12 viewDidLoad];
  [(HODataSyncingViewController *)self setModalInPresentation:1];
  v3 = +[UIColor systemBackgroundColor];
  view = [(HODataSyncingViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc_init(HODataSyncingTextView);
  [(HODataSyncingViewController *)self setTextView:v5];

  dataSyncState = [(HODataSyncingViewController *)self dataSyncState];
  textView = [(HODataSyncingViewController *)self textView];
  [textView setDataSyncState:dataSyncState];

  view2 = [(HODataSyncingViewController *)self view];
  textView2 = [(HODataSyncingViewController *)self textView];
  [view2 addSubview:textView2];

  _createConstraintForTextView = [(HODataSyncingViewController *)self _createConstraintForTextView];
  [(HODataSyncingViewController *)self setTextViewConstraints:_createConstraintForTextView];

  textViewConstraints = [(HODataSyncingViewController *)self textViewConstraints];
  [NSLayoutConstraint activateConstraints:textViewConstraints];
}

- (double)insetSize
{
  view = [(HODataSyncingViewController *)self view];
  [view frame];
  v4 = HUViewSizeSubclassForViewSize();
  view2 = [(HODataSyncingViewController *)self view];
  [view2 bounds];
  [HOUtilities viewMarginInsetForViewSizeSubclass:v4 withViewWidth:CGRectGetWidth(v9)];
  v7 = v6;

  return v7;
}

- (double)bottomPadding
{
  view = [(HODataSyncingViewController *)self view];
  [view frame];
  [HOUtilities buttonPaddingToViewBottomForViewSizeSubclass:HUViewSizeSubclassForViewSize()];
  v4 = v3;

  return v4;
}

- (void)setDataSyncState:(unint64_t)state
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataSyncState = self->_dataSyncState;
    v7 = HMHomeManagerDataSyncStateToString();
    v8 = HMHomeManagerDataSyncStateToString();
    *buf = 134218754;
    v52 = dataSyncState;
    v53 = 2112;
    v54 = v7;
    v55 = 2048;
    stateCopy = state;
    v57 = 2112;
    v58 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:setDataSyncState] prev state = %lu (%@) | new state = %lu (%@)", buf, 0x2Au);
  }

  if (self->_dataSyncState != state)
  {
    self->_dataSyncState = state;
    textView = [(HODataSyncingViewController *)self textView];
    [textView setDataSyncState:state];

    [(HODataSyncingViewController *)self _removeLowerSectionControlsAndLabels];
    if (state <= 2)
    {
      switch(state)
      {
        case 0uLL:
LABEL_20:
          [(HODataSyncingViewController *)self _createAndAddResetLabelsIfNeeded];
          resetSectionConstraints = [(HODataSyncingViewController *)self resetSectionConstraints];

          if (!resetSectionConstraints)
          {
            _createResetSectionConstraints = [(HODataSyncingViewController *)self _createResetSectionConstraints];
            [(HODataSyncingViewController *)self setResetSectionConstraints:_createResetSectionConstraints];
          }

          resetSectionConstraints2 = [(HODataSyncingViewController *)self resetSectionConstraints];
          [NSLayoutConstraint activateConstraints:resetSectionConstraints2];

          resetNukeButton = [(HODataSyncingViewController *)self resetNukeButton];
          [resetNukeButton setHidden:1];

          v37 = HFLogForCategory();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
          v38 = "[HODataSyncingViewController:setDataSyncState] Hiding reset nuke button";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
LABEL_30:

          goto LABEL_31;
        case 1uLL:
LABEL_31:
          view = [(HODataSyncingViewController *)self view];
          [view setNeedsLayout];

          return;
        case 2uLL:
LABEL_16:
          v11 = sub_10003FCAC(@"HODataSyncingButtonEnableKeychain");
          v12 = [(HODataSyncingViewController *)self _createButtonWithString:v11];
          [(HODataSyncingViewController *)self setEnableButton:v12];

          view2 = [(HODataSyncingViewController *)self view];
          enableButton = [(HODataSyncingViewController *)self enableButton];
          [view2 addSubview:enableButton];

          enableButton2 = [(HODataSyncingViewController *)self enableButton];
          v16 = [(HODataSyncingViewController *)self _createConstraintsForButton:enableButton2 includeBottomConstraint:+[HFUtilities isAMac]^ 1];
          [NSLayoutConstraint activateConstraints:v16];

          if (+[HFUtilities isAMac])
          {
            v17 = objc_alloc_init(UIButton);
            [(HODataSyncingViewController *)self setCancelButton:v17];

            cancelButton = [(HODataSyncingViewController *)self cancelButton];
            [cancelButton addTarget:self action:"_quit" forControlEvents:64];

            cancelButton2 = [(HODataSyncingViewController *)self cancelButton];
            v20 = sub_10003FCAC(@"HODataSyncingButtonQuit");
            [cancelButton2 setTitle:v20 forState:0];

            cancelButton3 = [(HODataSyncingViewController *)self cancelButton];
            v22 = +[UIColor labelColor];
            [cancelButton3 setTitleColor:v22 forState:0];

            view3 = [(HODataSyncingViewController *)self view];
            cancelButton4 = [(HODataSyncingViewController *)self cancelButton];
            [view3 addSubview:cancelButton4];

            cancelButton5 = [(HODataSyncingViewController *)self cancelButton];
            v26 = [(HODataSyncingViewController *)self _createConstraintsForButton:cancelButton5 includeBottomConstraint:1];
            [NSLayoutConstraint activateConstraints:v26];

            cancelButton6 = [(HODataSyncingViewController *)self cancelButton];
            topAnchor = [cancelButton6 topAnchor];
            enableButton3 = [(HODataSyncingViewController *)self enableButton];
            bottomAnchor = [enableButton3 bottomAnchor];
            [(HODataSyncingViewController *)self bottomPadding];
            v31 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
            v50 = v31;
            v32 = [NSArray arrayWithObjects:&v50 count:1];
            [NSLayoutConstraint activateConstraints:v32];
          }

          if (state == 6)
          {
            [(HODataSyncingViewController *)self startCDPRepair];
          }

          goto LABEL_31;
      }
    }

    else
    {
      if (state <= 4)
      {
        if (state != 3)
        {
          goto LABEL_20;
        }

        v39 = sub_10003FCAC(@"HODataSyncingButtonEnableiCloud");
        v40 = [(HODataSyncingViewController *)self _createButtonWithString:v39];
        [(HODataSyncingViewController *)self setEnableButton:v40];

        view4 = [(HODataSyncingViewController *)self view];
        enableButton4 = [(HODataSyncingViewController *)self enableButton];
        [view4 addSubview:enableButton4];

        enableButton5 = [(HODataSyncingViewController *)self enableButton];
        v44 = [(HODataSyncingViewController *)self _createConstraintsForButton:enableButton5 includeBottomConstraint:1];
        [NSLayoutConstraint activateConstraints:v44];

        goto LABEL_31;
      }

      if (state == 5)
      {
        [(HODataSyncingViewController *)self _createAndAddResetLabelsIfNeeded];
        resetSectionConstraints3 = [(HODataSyncingViewController *)self resetSectionConstraints];

        if (!resetSectionConstraints3)
        {
          _createResetSectionConstraints2 = [(HODataSyncingViewController *)self _createResetSectionConstraints];
          [(HODataSyncingViewController *)self setResetSectionConstraints:_createResetSectionConstraints2];
        }

        resetSectionConstraints4 = [(HODataSyncingViewController *)self resetSectionConstraints];
        [NSLayoutConstraint activateConstraints:resetSectionConstraints4];

        resetNukeButton2 = [(HODataSyncingViewController *)self resetNukeButton];
        [resetNukeButton2 setHidden:0];

        v37 = HFLogForCategory();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 0;
        v38 = "[HODataSyncingViewController:setDataSyncState] Showing reset nuke button";
        goto LABEL_29;
      }

      if (state == 6)
      {
        goto LABEL_16;
      }
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000811C0();
    }

    NSLog(@"[HODataSyncingViewController-setDataSyncState:] unknown state %lu", state);
    goto LABEL_31;
  }
}

- (void)_removeLowerSectionControlsAndLabels
{
  enableButton = [(HODataSyncingViewController *)self enableButton];
  [enableButton removeFromSuperview];

  resetNukeButton = [(HODataSyncingViewController *)self resetNukeButton];
  [resetNukeButton removeFromSuperview];
}

- (id)_createConstraintForTextView
{
  textView = [(HODataSyncingViewController *)self textView];
  [textView setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_opt_new();
  textView2 = [(HODataSyncingViewController *)self textView];
  centerXAnchor = [textView2 centerXAnchor];
  view = [(HODataSyncingViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v4 addObject:v9];

  textView3 = [(HODataSyncingViewController *)self textView];
  leadingAnchor = [textView3 leadingAnchor];
  view2 = [(HODataSyncingViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
  [v4 addObject:v14];

  textView4 = [(HODataSyncingViewController *)self textView];
  trailingAnchor = [textView4 trailingAnchor];
  view3 = [(HODataSyncingViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v19 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:?];
  [v4 addObject:v19];

  textView5 = [(HODataSyncingViewController *)self textView];
  view4 = [(HODataSyncingViewController *)self view];
  v22 = [NSLayoutConstraint constraintWithItem:textView5 attribute:3 relatedBy:0 toItem:view4 attribute:10 multiplier:0.4 constant:0.0];
  [v4 addObject:v22];

  return v4;
}

- (id)_createButtonWithString:(id)string
{
  stringCopy = string;
  v5 = [[HUColoredButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTitle:stringCopy forState:0];

  v6 = +[UIColor hf_keyColor];
  [v5 setBackgroundColor:v6];

  [v5 addTarget:self action:"_enableButtonPressed:" forControlEvents:64];

  return v5;
}

- (id)_createConstraintsForButton:(id)button includeBottomConstraint:(BOOL)constraint
{
  constraintCopy = constraint;
  buttonCopy = button;
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  centerXAnchor = [buttonCopy centerXAnchor];
  view = [(HODataSyncingViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 addObject:v11];

  widthAnchor = [buttonCopy widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:288.0];
  [v7 addObject:v13];

  heightAnchor = [buttonCopy heightAnchor];
  +[HUColoredButton defaultHeight];
  v15 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  [v7 addObject:v15];

  if (constraintCopy)
  {
    v16 = [(HODataSyncingViewController *)self _bottomPaddingConstraintForLowestView:buttonCopy];
    [v7 addObject:v16];
  }

  return v7;
}

- (id)_bottomPaddingConstraintForLowestView:(id)view
{
  bottomAnchor = [view bottomAnchor];
  view = [(HODataSyncingViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  [(HODataSyncingViewController *)self bottomPadding];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v8];

  return v9;
}

- (id)_createResetSectionConstraints
{
  resetNukeButton = [(HODataSyncingViewController *)self resetNukeButton];
  [resetNukeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_opt_new();
  resetNukeButton2 = [(HODataSyncingViewController *)self resetNukeButton];
  leadingAnchor = [resetNukeButton2 leadingAnchor];
  view = [(HODataSyncingViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v9 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
  [v4 addObject:v9];

  resetNukeButton3 = [(HODataSyncingViewController *)self resetNukeButton];
  trailingAnchor = [resetNukeButton3 trailingAnchor];
  view2 = [(HODataSyncingViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v14 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:?];
  [v4 addObject:v14];

  resetNukeButton4 = [(HODataSyncingViewController *)self resetNukeButton];
  centerXAnchor = [resetNukeButton4 centerXAnchor];
  view3 = [(HODataSyncingViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v4 addObject:v19];

  resetNukeButton5 = [(HODataSyncingViewController *)self resetNukeButton];
  v21 = [(HODataSyncingViewController *)self _bottomPaddingConstraintForLowestView:resetNukeButton5];
  [v4 addObject:v21];

  return v4;
}

- (void)_createAndAddResetLabelsIfNeeded
{
  resetNukeButton = [(HODataSyncingViewController *)self resetNukeButton];

  if (!resetNukeButton)
  {
    v4 = [UIButton buttonWithType:1];
    [(HODataSyncingViewController *)self setResetNukeButton:v4];

    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    resetNukeButton2 = [(HODataSyncingViewController *)self resetNukeButton];
    titleLabel = [resetNukeButton2 titleLabel];
    [titleLabel setFont:v5];

    resetNukeButton3 = [(HODataSyncingViewController *)self resetNukeButton];
    v9 = sub_10003FCAC(@"HODataSyncingButtonReset");
    [resetNukeButton3 setTitle:v9 forState:0];

    resetNukeButton4 = [(HODataSyncingViewController *)self resetNukeButton];
    titleLabel2 = [resetNukeButton4 titleLabel];
    [titleLabel2 setNumberOfLines:1];

    resetNukeButton5 = [(HODataSyncingViewController *)self resetNukeButton];
    titleLabel3 = [resetNukeButton5 titleLabel];
    [titleLabel3 setTextAlignment:1];

    resetNukeButton6 = [(HODataSyncingViewController *)self resetNukeButton];
    [resetNukeButton6 addTarget:self action:"_resetButtonPressed:" forControlEvents:64];

    resetNukeButton7 = [(HODataSyncingViewController *)self resetNukeButton];
    [resetNukeButton7 setAccessibilityIdentifier:@"HODataSyncingViewController.resetNukeButton"];
  }

  view = [(HODataSyncingViewController *)self view];
  resetNukeButton8 = [(HODataSyncingViewController *)self resetNukeButton];
  [view addSubview:resetNukeButton8];
}

- (void)_enableButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dataSyncState = [(HODataSyncingViewController *)self dataSyncState];
    [(HODataSyncingViewController *)self dataSyncState];
    v6 = HMHomeManagerDataSyncStateToString();
    v11 = 134218242;
    v12 = dataSyncState;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_enableButtonPressed] User tapped 'enable' button | state = %lu (%@)", &v11, 0x16u);
  }

  dataSyncState2 = [(HODataSyncingViewController *)self dataSyncState];
  switch(dataSyncState2)
  {
    case 2uLL:
      if ((+[HFUtilities isAMac]& 1) != 0)
      {
        +[NSURL hf_openiCloudPreferencesURL];
      }

      else
      {
        +[NSURL hf_openiCloudKeychainPreferences];
      }
      v8 = ;
      v9 = +[HFOpenURLRouter sharedInstance];
      v10 = [v9 openURL:v8];

      break;
    case 6uLL:
      [(HODataSyncingViewController *)self startCDPRepair];
      break;
    case 3uLL:
      [(HODataSyncingViewController *)self _enableICloud];
      break;
  }
}

- (void)_enableICloud
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v2 homeManager];

  [homeManager updateiCloudSwitchState:1 completionHandler:&stru_1000C3FC0];
}

- (void)_quit
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_quit] User tapped 'quit' button", v4, 2u);
  }

  [(HODataSyncingViewController *)self dismissViewControllerAnimated:1 completion:&stru_1000C3FE0];
}

- (void)_resetButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonPressed] User tapped 'reset' button", buf, 2u);
  }

  iCloudURLIsReachable = [(HODataSyncingViewController *)self iCloudURLIsReachable];
  v6 = sub_10003FCAC(@"HODataSyncingAlertTitle");
  if (iCloudURLIsReachable)
  {
    v7 = sub_10003FCAC(@"HODataSyncingResetWithiCloud");
    v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = sub_10003FCAC(@"HODataSyncingButtonResetConfirmation");
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100040F14;
    v15[3] = &unk_1000C2318;
    v15[4] = self;
    v10 = [UIAlertAction actionWithTitle:v9 style:2 handler:v15];

    [v8 addAction:v10];
    v11 = sub_10003FCAC(@"HODataSyncingButtonAlertCancel");
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:&stru_1000C4060];

    [v8 addAction:v12];
    [(HODataSyncingViewController *)self presentViewController:v8 animated:1 completion:&stru_1000C4080];
  }

  else
  {
    v13 = sub_10003FCAC(@"HODataSyncingResetBodyNetworkFailure");
    v8 = [UIAlertController alertControllerWithTitle:v6 message:v13 preferredStyle:1];

    v14 = sub_10003FCAC(@"HODataSyncingAlertOKButton");
    v10 = [UIAlertAction actionWithTitle:v14 style:0 handler:&stru_1000C4020];

    [v8 addAction:v10];
    [(HODataSyncingViewController *)self presentViewController:v8 animated:1 completion:&stru_1000C4040];
  }
}

- (void)_resetButtonConfirmed
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004110C;
  v5[3] = &unk_1000C1F28;
  v5[4] = self;
  [homeManager eraseHomeDataWithCompletionHandler:v5];
}

- (void)startCDPRepair
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:startCDPRepair]", buf, 2u);
  }

  hf_topmostViewController = [(HODataSyncingViewController *)self hf_topmostViewController];
  v5 = +[CDPAccount sharedInstance];
  primaryAccountAltDSID = [v5 primaryAccountAltDSID];

  v7 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithAltDSID:primaryAccountAltDSID];
  v8 = +[NSBundle mainBundle];
  infoDictionary = [v8 infoDictionary];
  v10 = [infoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
  [v7 setFeatureName:v10];

  [v7 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [v7 setDeviceToDeviceEncryptionUpgradeType:0];
  [v7 setPresentingViewController:hf_topmostViewController];
  [v7 setSecurityUpgradeContext:AKSecurityUpgradeContextGeneric];
  v11 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v7];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041508;
  v13[3] = &unk_1000C4108;
  v14 = primaryAccountAltDSID;
  selfCopy = self;
  v12 = primaryAccountAltDSID;
  [v11 performDeviceToDeviceEncryptionStateRepairWithCompletion:v13];
}

- (void)_internalCyclePressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dataSyncState = [(HODataSyncingViewController *)self dataSyncState];
    [(HODataSyncingViewController *)self dataSyncState];
    v6 = HMHomeManagerDataSyncStateToString();
    v8 = 134218242;
    v9 = dataSyncState;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_internalCyclePressed] dataSyncState = %lu (%@)", &v8, 0x16u);
  }

  if ([(HODataSyncingViewController *)self dataSyncState]> 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = [(HODataSyncingViewController *)self dataSyncState]+ 1;
  }

  [(HODataSyncingViewController *)self setDataSyncState:v7];
}

@end
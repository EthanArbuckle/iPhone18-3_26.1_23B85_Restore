@interface HODataSyncingViewController
- (double)bottomPadding;
- (double)insetSize;
- (id)_bottomPaddingConstraintForLowestView:(id)a3;
- (id)_createButtonWithString:(id)a3;
- (id)_createConstraintForTextView;
- (id)_createConstraintsForButton:(id)a3 includeBottomConstraint:(BOOL)a4;
- (id)_createResetSectionConstraints;
- (void)_createAndAddResetLabelsIfNeeded;
- (void)_enableButtonPressed:(id)a3;
- (void)_enableICloud;
- (void)_internalCyclePressed:(id)a3;
- (void)_quit;
- (void)_removeLowerSectionControlsAndLabels;
- (void)_resetButtonConfirmed;
- (void)_resetButtonPressed:(id)a3;
- (void)setDataSyncState:(unint64_t)a3;
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
  v4 = [(HODataSyncingViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(HODataSyncingTextView);
  [(HODataSyncingViewController *)self setTextView:v5];

  v6 = [(HODataSyncingViewController *)self dataSyncState];
  v7 = [(HODataSyncingViewController *)self textView];
  [v7 setDataSyncState:v6];

  v8 = [(HODataSyncingViewController *)self view];
  v9 = [(HODataSyncingViewController *)self textView];
  [v8 addSubview:v9];

  v10 = [(HODataSyncingViewController *)self _createConstraintForTextView];
  [(HODataSyncingViewController *)self setTextViewConstraints:v10];

  v11 = [(HODataSyncingViewController *)self textViewConstraints];
  [NSLayoutConstraint activateConstraints:v11];
}

- (double)insetSize
{
  v3 = [(HODataSyncingViewController *)self view];
  [v3 frame];
  v4 = HUViewSizeSubclassForViewSize();
  v5 = [(HODataSyncingViewController *)self view];
  [v5 bounds];
  [HOUtilities viewMarginInsetForViewSizeSubclass:v4 withViewWidth:CGRectGetWidth(v9)];
  v7 = v6;

  return v7;
}

- (double)bottomPadding
{
  v2 = [(HODataSyncingViewController *)self view];
  [v2 frame];
  [HOUtilities buttonPaddingToViewBottomForViewSizeSubclass:HUViewSizeSubclassForViewSize()];
  v4 = v3;

  return v4;
}

- (void)setDataSyncState:(unint64_t)a3
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
    v56 = a3;
    v57 = 2112;
    v58 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:setDataSyncState] prev state = %lu (%@) | new state = %lu (%@)", buf, 0x2Au);
  }

  if (self->_dataSyncState != a3)
  {
    self->_dataSyncState = a3;
    v9 = [(HODataSyncingViewController *)self textView];
    [v9 setDataSyncState:a3];

    [(HODataSyncingViewController *)self _removeLowerSectionControlsAndLabels];
    if (a3 <= 2)
    {
      switch(a3)
      {
        case 0uLL:
LABEL_20:
          [(HODataSyncingViewController *)self _createAndAddResetLabelsIfNeeded];
          v33 = [(HODataSyncingViewController *)self resetSectionConstraints];

          if (!v33)
          {
            v34 = [(HODataSyncingViewController *)self _createResetSectionConstraints];
            [(HODataSyncingViewController *)self setResetSectionConstraints:v34];
          }

          v35 = [(HODataSyncingViewController *)self resetSectionConstraints];
          [NSLayoutConstraint activateConstraints:v35];

          v36 = [(HODataSyncingViewController *)self resetNukeButton];
          [v36 setHidden:1];

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
          v49 = [(HODataSyncingViewController *)self view];
          [v49 setNeedsLayout];

          return;
        case 2uLL:
LABEL_16:
          v11 = sub_10003FCAC(@"HODataSyncingButtonEnableKeychain");
          v12 = [(HODataSyncingViewController *)self _createButtonWithString:v11];
          [(HODataSyncingViewController *)self setEnableButton:v12];

          v13 = [(HODataSyncingViewController *)self view];
          v14 = [(HODataSyncingViewController *)self enableButton];
          [v13 addSubview:v14];

          v15 = [(HODataSyncingViewController *)self enableButton];
          v16 = [(HODataSyncingViewController *)self _createConstraintsForButton:v15 includeBottomConstraint:+[HFUtilities isAMac]^ 1];
          [NSLayoutConstraint activateConstraints:v16];

          if (+[HFUtilities isAMac])
          {
            v17 = objc_alloc_init(UIButton);
            [(HODataSyncingViewController *)self setCancelButton:v17];

            v18 = [(HODataSyncingViewController *)self cancelButton];
            [v18 addTarget:self action:"_quit" forControlEvents:64];

            v19 = [(HODataSyncingViewController *)self cancelButton];
            v20 = sub_10003FCAC(@"HODataSyncingButtonQuit");
            [v19 setTitle:v20 forState:0];

            v21 = [(HODataSyncingViewController *)self cancelButton];
            v22 = +[UIColor labelColor];
            [v21 setTitleColor:v22 forState:0];

            v23 = [(HODataSyncingViewController *)self view];
            v24 = [(HODataSyncingViewController *)self cancelButton];
            [v23 addSubview:v24];

            v25 = [(HODataSyncingViewController *)self cancelButton];
            v26 = [(HODataSyncingViewController *)self _createConstraintsForButton:v25 includeBottomConstraint:1];
            [NSLayoutConstraint activateConstraints:v26];

            v27 = [(HODataSyncingViewController *)self cancelButton];
            v28 = [v27 topAnchor];
            v29 = [(HODataSyncingViewController *)self enableButton];
            v30 = [v29 bottomAnchor];
            [(HODataSyncingViewController *)self bottomPadding];
            v31 = [v28 constraintEqualToAnchor:v30 constant:?];
            v50 = v31;
            v32 = [NSArray arrayWithObjects:&v50 count:1];
            [NSLayoutConstraint activateConstraints:v32];
          }

          if (a3 == 6)
          {
            [(HODataSyncingViewController *)self startCDPRepair];
          }

          goto LABEL_31;
      }
    }

    else
    {
      if (a3 <= 4)
      {
        if (a3 != 3)
        {
          goto LABEL_20;
        }

        v39 = sub_10003FCAC(@"HODataSyncingButtonEnableiCloud");
        v40 = [(HODataSyncingViewController *)self _createButtonWithString:v39];
        [(HODataSyncingViewController *)self setEnableButton:v40];

        v41 = [(HODataSyncingViewController *)self view];
        v42 = [(HODataSyncingViewController *)self enableButton];
        [v41 addSubview:v42];

        v43 = [(HODataSyncingViewController *)self enableButton];
        v44 = [(HODataSyncingViewController *)self _createConstraintsForButton:v43 includeBottomConstraint:1];
        [NSLayoutConstraint activateConstraints:v44];

        goto LABEL_31;
      }

      if (a3 == 5)
      {
        [(HODataSyncingViewController *)self _createAndAddResetLabelsIfNeeded];
        v45 = [(HODataSyncingViewController *)self resetSectionConstraints];

        if (!v45)
        {
          v46 = [(HODataSyncingViewController *)self _createResetSectionConstraints];
          [(HODataSyncingViewController *)self setResetSectionConstraints:v46];
        }

        v47 = [(HODataSyncingViewController *)self resetSectionConstraints];
        [NSLayoutConstraint activateConstraints:v47];

        v48 = [(HODataSyncingViewController *)self resetNukeButton];
        [v48 setHidden:0];

        v37 = HFLogForCategory();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 0;
        v38 = "[HODataSyncingViewController:setDataSyncState] Showing reset nuke button";
        goto LABEL_29;
      }

      if (a3 == 6)
      {
        goto LABEL_16;
      }
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000811C0();
    }

    NSLog(@"[HODataSyncingViewController-setDataSyncState:] unknown state %lu", a3);
    goto LABEL_31;
  }
}

- (void)_removeLowerSectionControlsAndLabels
{
  v3 = [(HODataSyncingViewController *)self enableButton];
  [v3 removeFromSuperview];

  v4 = [(HODataSyncingViewController *)self resetNukeButton];
  [v4 removeFromSuperview];
}

- (id)_createConstraintForTextView
{
  v3 = [(HODataSyncingViewController *)self textView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_opt_new();
  v5 = [(HODataSyncingViewController *)self textView];
  v6 = [v5 centerXAnchor];
  v7 = [(HODataSyncingViewController *)self view];
  v8 = [v7 centerXAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v4 addObject:v9];

  v10 = [(HODataSyncingViewController *)self textView];
  v11 = [v10 leadingAnchor];
  v12 = [(HODataSyncingViewController *)self view];
  v13 = [v12 leadingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13 constant:?];
  [v4 addObject:v14];

  v15 = [(HODataSyncingViewController *)self textView];
  v16 = [v15 trailingAnchor];
  v17 = [(HODataSyncingViewController *)self view];
  v18 = [v17 trailingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v19 = [v16 constraintLessThanOrEqualToAnchor:v18 constant:?];
  [v4 addObject:v19];

  v20 = [(HODataSyncingViewController *)self textView];
  v21 = [(HODataSyncingViewController *)self view];
  v22 = [NSLayoutConstraint constraintWithItem:v20 attribute:3 relatedBy:0 toItem:v21 attribute:10 multiplier:0.4 constant:0.0];
  [v4 addObject:v22];

  return v4;
}

- (id)_createButtonWithString:(id)a3
{
  v4 = a3;
  v5 = [[HUColoredButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTitle:v4 forState:0];

  v6 = +[UIColor hf_keyColor];
  [v5 setBackgroundColor:v6];

  [v5 addTarget:self action:"_enableButtonPressed:" forControlEvents:64];

  return v5;
}

- (id)_createConstraintsForButton:(id)a3 includeBottomConstraint:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  v8 = [v6 centerXAnchor];
  v9 = [(HODataSyncingViewController *)self view];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v7 addObject:v11];

  v12 = [v6 widthAnchor];
  v13 = [v12 constraintEqualToConstant:288.0];
  [v7 addObject:v13];

  v14 = [v6 heightAnchor];
  +[HUColoredButton defaultHeight];
  v15 = [v14 constraintGreaterThanOrEqualToConstant:?];
  [v7 addObject:v15];

  if (v4)
  {
    v16 = [(HODataSyncingViewController *)self _bottomPaddingConstraintForLowestView:v6];
    [v7 addObject:v16];
  }

  return v7;
}

- (id)_bottomPaddingConstraintForLowestView:(id)a3
{
  v4 = [a3 bottomAnchor];
  v5 = [(HODataSyncingViewController *)self view];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 bottomAnchor];
  [(HODataSyncingViewController *)self bottomPadding];
  v9 = [v4 constraintEqualToAnchor:v7 constant:-v8];

  return v9;
}

- (id)_createResetSectionConstraints
{
  v3 = [(HODataSyncingViewController *)self resetNukeButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_opt_new();
  v5 = [(HODataSyncingViewController *)self resetNukeButton];
  v6 = [v5 leadingAnchor];
  v7 = [(HODataSyncingViewController *)self view];
  v8 = [v7 leadingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v9 = [v6 constraintGreaterThanOrEqualToAnchor:v8 constant:?];
  [v4 addObject:v9];

  v10 = [(HODataSyncingViewController *)self resetNukeButton];
  v11 = [v10 trailingAnchor];
  v12 = [(HODataSyncingViewController *)self view];
  v13 = [v12 trailingAnchor];
  [(HODataSyncingViewController *)self insetSize];
  v14 = [v11 constraintLessThanOrEqualToAnchor:v13 constant:?];
  [v4 addObject:v14];

  v15 = [(HODataSyncingViewController *)self resetNukeButton];
  v16 = [v15 centerXAnchor];
  v17 = [(HODataSyncingViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v4 addObject:v19];

  v20 = [(HODataSyncingViewController *)self resetNukeButton];
  v21 = [(HODataSyncingViewController *)self _bottomPaddingConstraintForLowestView:v20];
  [v4 addObject:v21];

  return v4;
}

- (void)_createAndAddResetLabelsIfNeeded
{
  v3 = [(HODataSyncingViewController *)self resetNukeButton];

  if (!v3)
  {
    v4 = [UIButton buttonWithType:1];
    [(HODataSyncingViewController *)self setResetNukeButton:v4];

    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    v6 = [(HODataSyncingViewController *)self resetNukeButton];
    v7 = [v6 titleLabel];
    [v7 setFont:v5];

    v8 = [(HODataSyncingViewController *)self resetNukeButton];
    v9 = sub_10003FCAC(@"HODataSyncingButtonReset");
    [v8 setTitle:v9 forState:0];

    v10 = [(HODataSyncingViewController *)self resetNukeButton];
    v11 = [v10 titleLabel];
    [v11 setNumberOfLines:1];

    v12 = [(HODataSyncingViewController *)self resetNukeButton];
    v13 = [v12 titleLabel];
    [v13 setTextAlignment:1];

    v14 = [(HODataSyncingViewController *)self resetNukeButton];
    [v14 addTarget:self action:"_resetButtonPressed:" forControlEvents:64];

    v15 = [(HODataSyncingViewController *)self resetNukeButton];
    [v15 setAccessibilityIdentifier:@"HODataSyncingViewController.resetNukeButton"];
  }

  v17 = [(HODataSyncingViewController *)self view];
  v16 = [(HODataSyncingViewController *)self resetNukeButton];
  [v17 addSubview:v16];
}

- (void)_enableButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HODataSyncingViewController *)self dataSyncState];
    [(HODataSyncingViewController *)self dataSyncState];
    v6 = HMHomeManagerDataSyncStateToString();
    v11 = 134218242;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_enableButtonPressed] User tapped 'enable' button | state = %lu (%@)", &v11, 0x16u);
  }

  v7 = [(HODataSyncingViewController *)self dataSyncState];
  switch(v7)
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
  v3 = [v2 homeManager];

  [v3 updateiCloudSwitchState:1 completionHandler:&stru_1000C3FC0];
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

- (void)_resetButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonPressed] User tapped 'reset' button", buf, 2u);
  }

  v5 = [(HODataSyncingViewController *)self iCloudURLIsReachable];
  v6 = sub_10003FCAC(@"HODataSyncingAlertTitle");
  if (v5)
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
  v4 = [v3 homeManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004110C;
  v5[3] = &unk_1000C1F28;
  v5[4] = self;
  [v4 eraseHomeDataWithCompletionHandler:v5];
}

- (void)startCDPRepair
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:startCDPRepair]", buf, 2u);
  }

  v4 = [(HODataSyncingViewController *)self hf_topmostViewController];
  v5 = +[CDPAccount sharedInstance];
  v6 = [v5 primaryAccountAltDSID];

  v7 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithAltDSID:v6];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 infoDictionary];
  v10 = [v9 objectForKeyedSubscript:@"CFBundleDisplayName"];
  [v7 setFeatureName:v10];

  [v7 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [v7 setDeviceToDeviceEncryptionUpgradeType:0];
  [v7 setPresentingViewController:v4];
  [v7 setSecurityUpgradeContext:AKSecurityUpgradeContextGeneric];
  v11 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v7];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041508;
  v13[3] = &unk_1000C4108;
  v14 = v6;
  v15 = self;
  v12 = v6;
  [v11 performDeviceToDeviceEncryptionStateRepairWithCompletion:v13];
}

- (void)_internalCyclePressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HODataSyncingViewController *)self dataSyncState];
    [(HODataSyncingViewController *)self dataSyncState];
    v6 = HMHomeManagerDataSyncStateToString();
    v8 = 134218242;
    v9 = v5;
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
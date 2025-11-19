@interface ClarityUISecurityConfirmationSetupController
- (ClarityUIOnboardingDismissalDelegate)delegate;
- (ClarityUISecurityConfirmationSetupController)initWithShortName:(id)a3 delegate:(id)a4 andCompletion:(id)a5;
- (id)_axDeviceLockTypeDescription:(unint64_t)a3;
- (id)_axDeviceLockTypeLabel:(unint64_t)a3;
- (unint64_t)_axDeviceLockType;
- (void)_didTapChangeSecuritySettingsButton:(id)a3;
@end

@implementation ClarityUISecurityConfirmationSetupController

- (ClarityUISecurityConfirmationSetupController)initWithShortName:(id)a3 delegate:(id)a4 andCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClarityUISecurityConfirmationSetupController *)self _axDeviceLockType];
  if ([v8 length])
  {
    v12 = AXLocStringKeyForModel();
    v13 = settingsLocString(v12, @"ClarityUISettings");
    v14 = AXCFormattedString();
  }

  else
  {
    v12 = AXLocStringKeyForModel();
    v14 = settingsLocString(v12, @"ClarityUISettings");
  }

  v15 = [(ClarityUISecurityConfirmationSetupController *)self _axDeviceLockTypeDescription:v11];
  v63.receiver = self;
  v63.super_class = ClarityUISecurityConfirmationSetupController;
  v16 = [(ClarityUISecurityConfirmationSetupController *)&v63 initWithTitle:v14 detailText:v15 symbolName:@"lock.fill" contentLayout:2];

  if (v16)
  {
    v17 = [(ClarityUISecurityConfirmationSetupController *)v16 contentView];
    objc_storeWeak(&v16->_delegate, v9);
    v18 = objc_retainBlock(v10);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v18;

    v20 = +[OBBoldTrayButton boldButton];
    v21 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    v60 = v20;
    [v20 setTitle:v21 forState:0];

    [v20 addTarget:v16 action:"_didTapNextButton:" forControlEvents:0x2000];
    v22 = [(ClarityUISecurityConfirmationSetupController *)v16 buttonTray];
    [v22 addButton:v20];

    v23 = +[OBLinkTrayButton linkButton];
    v24 = settingsLocString(@"CHANGE_SECURITY_SETTINGS", @"ClarityUISettings");
    [v23 setTitle:v24 forState:0];

    v59 = v23;
    [v23 addTarget:v16 action:"_didTapChangeSecuritySettingsButton:" forControlEvents:0x2000];
    v25 = [(ClarityUISecurityConfirmationSetupController *)v16 buttonTray];
    [v25 addButton:v23];

    v26 = objc_alloc_init(UILabel);
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v26 setFont:v27];

    [v26 setAdjustsFontForContentSizeCategory:1];
    [v26 setNumberOfLines:0];
    [v26 setTextAlignment:1];
    v28 = [(ClarityUISecurityConfirmationSetupController *)v16 _axDeviceLockTypeLabel:v11];
    [v26 setText:v28];

    [v17 addSubview:v26];
    v29 = [v26 trailingAnchor];
    v30 = [v17 trailingAnchor];
    [v29 constraintEqualToAnchor:v30];
    v31 = v61 = v16;
    [v31 setActive:1];

    v32 = [v26 leadingAnchor];
    v33 = [v17 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [v26 topAnchor];
    v36 = [v17 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [v26 bottomAnchor];
    v39 = [v17 bottomAnchor];
    v40 = [v38 constraintLessThanOrEqualToAnchor:v39];
    [v40 setActive:1];

    v58 = [v26 trailingAnchor];
    v57 = [v17 trailingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v64[0] = v56;
    v55 = [v26 leadingAnchor];
    v53 = [v17 leadingAnchor];
    v52 = [v55 constraintEqualToAnchor:v53];
    v64[1] = v52;
    v51 = [v26 topAnchor];
    v54 = v17;
    v41 = [v17 topAnchor];
    v42 = [v51 constraintEqualToAnchor:v41];
    v64[2] = v42;
    v43 = [v26 bottomAnchor];
    [v17 bottomAnchor];
    v44 = v62 = v10;
    [v43 constraintLessThanOrEqualToAnchor:v44];
    v45 = v14;
    v46 = v9;
    v48 = v47 = v8;
    v64[3] = v48;
    v49 = [NSArray arrayWithObjects:v64 count:4];
    [NSLayoutConstraint activateConstraints:v49];

    v8 = v47;
    v9 = v46;
    v14 = v45;

    v10 = v62;
    v16 = v61;
  }

  return v16;
}

- (void)_didTapChangeSecuritySettingsButton:(id)a3
{
  v3 = [(ClarityUISecurityConfirmationSetupController *)self delegate];
  [v3 dimissOnboardingControllerEarlyWithCompletion:&__block_literal_global_56];
}

void __84__ClarityUISecurityConfirmationSetupController__didTapChangeSecuritySettingsButton___block_invoke(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=PASSCODE"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

- (unint64_t)_axDeviceLockType
{
  v2 = objc_alloc_init(LAContext);
  if ([v2 canEvaluatePolicy:1 error:0])
  {
    v3 = [v2 biometryType];
    v4 = 3;
    if (v3 == &dword_0 + 2)
    {
      v4 = 1;
    }

    if (v3 == &dword_0 + 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 3;
  }

  if (![v2 canEvaluatePolicy:2 error:0])
  {
    v5 = 0;
  }

  return v5;
}

- (id)_axDeviceLockTypeLabel:(unint64_t)a3
{
  if (a3 <= 3)
  {
    self = settingsLocString(off_2586F0[a3], @"ClarityUISettings");
  }

  return self;
}

- (id)_axDeviceLockTypeDescription:(unint64_t)a3
{
  if (a3 <= 3)
  {
    v4 = AXLocStringKeyForModel();
    v3 = settingsLocString(v4, @"ClarityUISettings");
  }

  return v3;
}

- (ClarityUIOnboardingDismissalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
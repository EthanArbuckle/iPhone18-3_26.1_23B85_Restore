@interface ClarityUISecurityConfirmationSetupController
- (ClarityUIOnboardingDismissalDelegate)delegate;
- (ClarityUISecurityConfirmationSetupController)initWithShortName:(id)name delegate:(id)delegate andCompletion:(id)completion;
- (id)_axDeviceLockTypeDescription:(unint64_t)description;
- (id)_axDeviceLockTypeLabel:(unint64_t)label;
- (unint64_t)_axDeviceLockType;
- (void)_didTapChangeSecuritySettingsButton:(id)button;
@end

@implementation ClarityUISecurityConfirmationSetupController

- (ClarityUISecurityConfirmationSetupController)initWithShortName:(id)name delegate:(id)delegate andCompletion:(id)completion
{
  nameCopy = name;
  delegateCopy = delegate;
  completionCopy = completion;
  _axDeviceLockType = [(ClarityUISecurityConfirmationSetupController *)self _axDeviceLockType];
  if ([nameCopy length])
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

  v15 = [(ClarityUISecurityConfirmationSetupController *)self _axDeviceLockTypeDescription:_axDeviceLockType];
  v63.receiver = self;
  v63.super_class = ClarityUISecurityConfirmationSetupController;
  v16 = [(ClarityUISecurityConfirmationSetupController *)&v63 initWithTitle:v14 detailText:v15 symbolName:@"lock.fill" contentLayout:2];

  if (v16)
  {
    contentView = [(ClarityUISecurityConfirmationSetupController *)v16 contentView];
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v18 = objc_retainBlock(completionCopy);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v18;

    v20 = +[OBBoldTrayButton boldButton];
    v21 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    v60 = v20;
    [v20 setTitle:v21 forState:0];

    [v20 addTarget:v16 action:"_didTapNextButton:" forControlEvents:0x2000];
    buttonTray = [(ClarityUISecurityConfirmationSetupController *)v16 buttonTray];
    [buttonTray addButton:v20];

    v23 = +[OBLinkTrayButton linkButton];
    v24 = settingsLocString(@"CHANGE_SECURITY_SETTINGS", @"ClarityUISettings");
    [v23 setTitle:v24 forState:0];

    v59 = v23;
    [v23 addTarget:v16 action:"_didTapChangeSecuritySettingsButton:" forControlEvents:0x2000];
    buttonTray2 = [(ClarityUISecurityConfirmationSetupController *)v16 buttonTray];
    [buttonTray2 addButton:v23];

    v26 = objc_alloc_init(UILabel);
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v26 setFont:v27];

    [v26 setAdjustsFontForContentSizeCategory:1];
    [v26 setNumberOfLines:0];
    [v26 setTextAlignment:1];
    v28 = [(ClarityUISecurityConfirmationSetupController *)v16 _axDeviceLockTypeLabel:_axDeviceLockType];
    [v26 setText:v28];

    [contentView addSubview:v26];
    trailingAnchor = [v26 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31 = v61 = v16;
    [v31 setActive:1];

    leadingAnchor = [v26 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v34 setActive:1];

    topAnchor = [v26 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v37 setActive:1];

    bottomAnchor = [v26 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v40 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [v40 setActive:1];

    trailingAnchor3 = [v26 trailingAnchor];
    trailingAnchor4 = [contentView trailingAnchor];
    v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v64[0] = v56;
    leadingAnchor3 = [v26 leadingAnchor];
    leadingAnchor4 = [contentView leadingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v64[1] = v52;
    topAnchor3 = [v26 topAnchor];
    v54 = contentView;
    topAnchor4 = [contentView topAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v64[2] = v42;
    bottomAnchor3 = [v26 bottomAnchor];
    [contentView bottomAnchor];
    v44 = v62 = completionCopy;
    [bottomAnchor3 constraintLessThanOrEqualToAnchor:v44];
    v45 = v14;
    v46 = delegateCopy;
    v48 = v47 = nameCopy;
    v64[3] = v48;
    v49 = [NSArray arrayWithObjects:v64 count:4];
    [NSLayoutConstraint activateConstraints:v49];

    nameCopy = v47;
    delegateCopy = v46;
    v14 = v45;

    completionCopy = v62;
    v16 = v61;
  }

  return v16;
}

- (void)_didTapChangeSecuritySettingsButton:(id)button
{
  delegate = [(ClarityUISecurityConfirmationSetupController *)self delegate];
  [delegate dimissOnboardingControllerEarlyWithCompletion:&__block_literal_global_56];
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
    biometryType = [v2 biometryType];
    v4 = 3;
    if (biometryType == &dword_0 + 2)
    {
      v4 = 1;
    }

    if (biometryType == &dword_0 + 1)
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

- (id)_axDeviceLockTypeLabel:(unint64_t)label
{
  if (label <= 3)
  {
    self = settingsLocString(off_2586F0[label], @"ClarityUISettings");
  }

  return self;
}

- (id)_axDeviceLockTypeDescription:(unint64_t)description
{
  if (description <= 3)
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
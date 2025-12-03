@interface NPKChangePasscodeCompanionInstructionViewController
- (NPKChangePasscodeCompanionInstructionViewController)initWithHidesCancelButton:(BOOL)button;
- (NPKChangePasscodeCompanionInstructionViewControllerDelegate)delegate;
- (id)_errorAcknowledgeButtonTitle;
- (id)_instructionMessage;
- (id)_instructionTitle;
- (id)_unlockRequiredMessage;
- (id)_unlockRequiredTitle;
- (void)didMoveToParentViewController:(id)controller;
- (void)handleChangePasscodeUnlockRequired;
- (void)viewDidLoad;
@end

@implementation NPKChangePasscodeCompanionInstructionViewController

- (NPKChangePasscodeCompanionInstructionViewController)initWithHidesCancelButton:(BOOL)button
{
  v5.receiver = self;
  v5.super_class = NPKChangePasscodeCompanionInstructionViewController;
  result = [(NPKChangePasscodeCompanionInstructionViewController *)&v5 init];
  if (result)
  {
    result->_hidesCancelButton = button;
  }

  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NPKChangePasscodeCompanionInstructionViewController;
  [(NPKBridgeInstructionViewController *)&v4 viewDidLoad];
  if ([(NPKChangePasscodeCompanionInstructionViewController *)self hidesCancelButton])
  {
    navigationItem = [(NPKChangePasscodeCompanionInstructionViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = NPKChangePasscodeCompanionInstructionViewController;
  [(NPKChangePasscodeCompanionInstructionViewController *)&v6 didMoveToParentViewController:?];
  if (!controller)
  {
    cancellationHandler = [(NPKBridgeInstructionViewController *)self cancellationHandler];
    [(NPKBridgeInstructionViewController *)self setCancellationHandler:0];
    if (cancellationHandler)
    {
      cancellationHandler[2](cancellationHandler);
    }
  }
}

- (id)_instructionTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHANGE_PASSCODE_TITLE_COMPANION" value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];

  return v3;
}

- (id)_instructionMessage
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v2 = qword_34D18;
  v22 = qword_34D18;
  if (!qword_34D18)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1596C;
    v17 = &unk_2CF68;
    v18 = &v19;
    sub_1596C(&v14);
    v2 = v20[3];
  }

  v3 = v2;
  _Block_object_dispose(&v19, 8);
  sharedConnection = [v2 sharedConnection];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v5 = qword_34D28;
  v22 = qword_34D28;
  if (!qword_34D28)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_15B38;
    v17 = &unk_2CF68;
    v18 = &v19;
    v6 = sub_159C4();
    v7 = dlsym(v6, "MCFeatureMinimumPasscodeLength");
    *(v18[1] + 24) = v7;
    qword_34D28 = *(v18[1] + 24);
    v5 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v5)
  {
    sub_166B0();
  }

  v8 = [sharedConnection valueRestrictionForFeature:*v5];

  if (!v8)
  {
    v8 = [NSNumber numberWithUnsignedInteger:PKUpgradedDevicePasscodeMinimumLength];
  }

  v9 = [NSNumberFormatter localizedStringFromNumber:v8 numberStyle:5];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CHANGE_PASSCODE_MESSAGE_COMPANION" value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];
  v12 = [NSString stringWithFormat:v11, v9];

  return v12;
}

- (void)handleChangePasscodeUnlockRequired
{
  _unlockRequiredTitle = [(NPKChangePasscodeCompanionInstructionViewController *)self _unlockRequiredTitle];
  _unlockRequiredMessage = [(NPKChangePasscodeCompanionInstructionViewController *)self _unlockRequiredMessage];
  _errorAcknowledgeButtonTitle = [(NPKChangePasscodeCompanionInstructionViewController *)self _errorAcknowledgeButtonTitle];
  [(NPKBridgeInstructionViewController *)self handleErrorWithTitle:_unlockRequiredTitle message:_unlockRequiredMessage acknowledgeButtonTitle:_errorAcknowledgeButtonTitle];
}

- (id)_unlockRequiredTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHANGE_PASSCODE_ALERT_UNLOCK_REQUIRED_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];

  return v3;
}

- (id)_unlockRequiredMessage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHANGE_PASSCODE_ALERT_UNLOCK_REQUIRED_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];

  return v3;
}

- (id)_errorAcknowledgeButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHANGE_PASSCODE_ALERT_ERROR_ACKNOWLEDGE_BUTTON_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];

  return v3;
}

- (NPKChangePasscodeCompanionInstructionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
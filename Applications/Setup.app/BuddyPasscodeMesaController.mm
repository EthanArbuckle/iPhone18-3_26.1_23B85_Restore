@interface BuddyPasscodeMesaController
- (BOOL)controllerNeedsToRun;
- (BOOL)passcodeViewControllerAllowSkip:(id)skip;
- (id)passcodeViewControllerCustomFirstEntryInstructions:(id)instructions;
- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation;
@end

@implementation BuddyPasscodeMesaController

- (BOOL)controllerNeedsToRun
{
  v12 = 0;
  capabilities = [(BuddyPasscodeController *)self capabilities];
  supportsTouchID = [(BYCapabilities *)capabilities supportsTouchID];

  if (supportsTouchID)
  {
    capabilities2 = [(BuddyPasscodeController *)self capabilities];
    v12 = [(BYCapabilities *)capabilities2 isTouchIDEnrolled]& 1;
  }

  else
  {
    capabilities3 = [(BuddyPasscodeController *)self capabilities];
    supportsPearl = [(BYCapabilities *)capabilities3 supportsPearl];

    if (supportsPearl)
    {
      capabilities4 = [(BuddyPasscodeController *)self capabilities];
      v12 = [(BYCapabilities *)capabilities4 isPearlEnrolled]& 1;
    }
  }

  v10 = 0;
  v8 = 0;
  if (v12)
  {
    managedConfiguration = [(BuddyPasscodeController *)self managedConfiguration];
    v10 = 1;
    v8 = [(MCProfileConnection *)managedConfiguration isPasscodeSet]^ 1;
  }

  v14 = v8 & 1;
  if (v10)
  {
  }

  return v14;
}

- (id)passcodeViewControllerCustomFirstEntryInstructions:(id)instructions
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, instructions);
  capabilities = [(BuddyPasscodeController *)selfCopy capabilities];
  supportsPearl = [(BYCapabilities *)capabilities supportsPearl];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (supportsPearl)
  {
    v10 = [(NSBundle *)v5 localizedStringForKey:@"ENTER_PASSCODE_SUBTITLE_FACEID" value:&stru_10032F900 table:@"Localizable"];
  }

  else
  {
    v10 = [(NSBundle *)v5 localizedStringForKey:@"ENTER_PASSCODE_SUBTITLE_TOUCHID" value:&stru_10032F900 table:@"Localizable"];
  }

  objc_storeStrong(location, 0);
  v6 = v10;

  return v6;
}

- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  objc_storeStrong(&v7, creation);
  managedConfiguration = [(BuddyPasscodeController *)selfCopy managedConfiguration];
  [(MCProfileConnection *)managedConfiguration setFingerprintUnlockAllowed:1 passcode:v7 completion:0];

  v6.receiver = selfCopy;
  v6.super_class = BuddyPasscodeMesaController;
  [(BuddyPasscodeController *)&v6 passcodeViewController:location[0] didFinishWithPasscodeCreation:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)passcodeViewControllerAllowSkip:(id)skip
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, skip);
  objc_storeStrong(location, 0);
  return 0;
}

@end
@interface BuddyPasscodeMesaController
- (BOOL)controllerNeedsToRun;
- (BOOL)passcodeViewControllerAllowSkip:(id)a3;
- (id)passcodeViewControllerCustomFirstEntryInstructions:(id)a3;
- (void)passcodeViewController:(id)a3 didFinishWithPasscodeCreation:(id)a4;
@end

@implementation BuddyPasscodeMesaController

- (BOOL)controllerNeedsToRun
{
  v12 = 0;
  v2 = [(BuddyPasscodeController *)self capabilities];
  v3 = [(BYCapabilities *)v2 supportsTouchID];

  if (v3)
  {
    v4 = [(BuddyPasscodeController *)self capabilities];
    v12 = [(BYCapabilities *)v4 isTouchIDEnrolled]& 1;
  }

  else
  {
    v5 = [(BuddyPasscodeController *)self capabilities];
    v6 = [(BYCapabilities *)v5 supportsPearl];

    if (v6)
    {
      v7 = [(BuddyPasscodeController *)self capabilities];
      v12 = [(BYCapabilities *)v7 isPearlEnrolled]& 1;
    }
  }

  v10 = 0;
  v8 = 0;
  if (v12)
  {
    v11 = [(BuddyPasscodeController *)self managedConfiguration];
    v10 = 1;
    v8 = [(MCProfileConnection *)v11 isPasscodeSet]^ 1;
  }

  v14 = v8 & 1;
  if (v10)
  {
  }

  return v14;
}

- (id)passcodeViewControllerCustomFirstEntryInstructions:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPasscodeController *)v9 capabilities];
  v4 = [(BYCapabilities *)v3 supportsPearl];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (v4)
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

- (void)passcodeViewController:(id)a3 didFinishWithPasscodeCreation:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [(BuddyPasscodeController *)v9 managedConfiguration];
  [(MCProfileConnection *)v5 setFingerprintUnlockAllowed:1 passcode:v7 completion:0];

  v6.receiver = v9;
  v6.super_class = BuddyPasscodeMesaController;
  [(BuddyPasscodeController *)&v6 passcodeViewController:location[0] didFinishWithPasscodeCreation:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)passcodeViewControllerAllowSkip:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

@end
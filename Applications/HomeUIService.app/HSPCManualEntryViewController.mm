@interface HSPCManualEntryViewController
- (HSPCManualEntryViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (void)configureNextViewController:(id)controller;
- (void)didCompleteTextEntry:(id)entry;
- (void)setNumberOfDigits:(int64_t)digits;
- (void)textDidChange:(id)change;
@end

@implementation HSPCManualEntryViewController

- (HSPCManualEntryViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v17.receiver = self;
  v17.super_class = HSPCManualEntryViewController;
  v9 = [(HSPCManualEntryViewController *)&v17 initWithContentView:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coordinator, coordinator);
    objc_storeStrong(&v10->_config, config);
    v11 = sub_100063A44(@"HSSetupCodeTitleManuallyEnterSetupCode");
    [(HSPCManualEntryViewController *)v10 setTitle:v11];

    v12 = [UIImage imageNamed:@"HomeKitCode"];
    [(HSPCPasscodeEntryViewController *)v10 setImage:v12];

    [(HSPCManualEntryViewController *)v10 setNumberOfDigits:8];
    [(HSPCPasscodeEntryViewController *)v10 setUseMonospacedFont:1];
    v13 = [(HSPCManualEntryViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
    continueAction = v10->_continueAction;
    v10->_continueAction = v13;

    [(PRXAction *)v10->_continueAction setEnabled:0];
    v15 = [(HSPCManualEntryViewController *)v10 addOptionalButtonWithTitleKey:@"HSSetupCodeActionButtonCamera" target:v10 futureSelector:"onCameraButton"];
  }

  return v10;
}

- (id)commitConfiguration
{
  coordinator = [(HSPCManualEntryViewController *)self coordinator];
  setupCode = [(HSPCManualEntryViewController *)self setupCode];
  v5 = [coordinator didReceiveSetupCode:setupCode withPayload:0 fromViewController:self];
  v6 = [v5 flatMap:&stru_1000C7900];

  return v6;
}

- (void)configureNextViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v6 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setMode:0];
}

- (void)setNumberOfDigits:(int64_t)digits
{
  v14.receiver = self;
  v14.super_class = HSPCManualEntryViewController;
  [(HSPCPasscodeEntryViewController *)&v14 setNumberOfDigits:digits];
  v4 = [NSAttributedString alloc];
  numberOfDigits = [(HSPCPasscodeEntryViewController *)self numberOfDigits];
  v12 = sub_100063B5C(@"HSSetupCodeSubtitleFindSetupCodeFormat", @"%ld", v6, v7, v8, v9, v10, v11, numberOfDigits);
  v13 = [v4 initWithString:v12];
  [(HSPCPasscodeEntryViewController *)self setFootnote:v13];
}

- (void)didCompleteTextEntry:(id)entry
{
  text = [entry text];
  [(HSPCManualEntryViewController *)self setSetupCode:text];

  continueAction = [(HSPCManualEntryViewController *)self continueAction];
  [continueAction setEnabled:1];
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  v6 = [text length];
  numberOfDigits = [changeCopy numberOfDigits];

  if (v6 != numberOfDigits)
  {
    [(HSPCManualEntryViewController *)self setSetupCode:0];
    continueAction = [(HSPCManualEntryViewController *)self continueAction];
    [continueAction setEnabled:0];
  }
}

@end
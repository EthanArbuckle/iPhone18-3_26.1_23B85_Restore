@interface HSPCManualEntryViewController
- (HSPCManualEntryViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (void)configureNextViewController:(id)a3;
- (void)didCompleteTextEntry:(id)a3;
- (void)setNumberOfDigits:(int64_t)a3;
- (void)textDidChange:(id)a3;
@end

@implementation HSPCManualEntryViewController

- (HSPCManualEntryViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HSPCManualEntryViewController;
  v9 = [(HSPCManualEntryViewController *)&v17 initWithContentView:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coordinator, a3);
    objc_storeStrong(&v10->_config, a4);
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
  v3 = [(HSPCManualEntryViewController *)self coordinator];
  v4 = [(HSPCManualEntryViewController *)self setupCode];
  v5 = [v3 didReceiveSetupCode:v4 withPayload:0 fromViewController:self];
  v6 = [v5 flatMap:&stru_1000C7900];

  return v6;
}

- (void)configureNextViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = v3;
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

- (void)setNumberOfDigits:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = HSPCManualEntryViewController;
  [(HSPCPasscodeEntryViewController *)&v14 setNumberOfDigits:a3];
  v4 = [NSAttributedString alloc];
  v5 = [(HSPCPasscodeEntryViewController *)self numberOfDigits];
  v12 = sub_100063B5C(@"HSSetupCodeSubtitleFindSetupCodeFormat", @"%ld", v6, v7, v8, v9, v10, v11, v5);
  v13 = [v4 initWithString:v12];
  [(HSPCPasscodeEntryViewController *)self setFootnote:v13];
}

- (void)didCompleteTextEntry:(id)a3
{
  v4 = [a3 text];
  [(HSPCManualEntryViewController *)self setSetupCode:v4];

  v5 = [(HSPCManualEntryViewController *)self continueAction];
  [v5 setEnabled:1];
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length];
  v7 = [v4 numberOfDigits];

  if (v6 != v7)
  {
    [(HSPCManualEntryViewController *)self setSetupCode:0];
    v8 = [(HSPCManualEntryViewController *)self continueAction];
    [v8 setEnabled:0];
  }
}

@end
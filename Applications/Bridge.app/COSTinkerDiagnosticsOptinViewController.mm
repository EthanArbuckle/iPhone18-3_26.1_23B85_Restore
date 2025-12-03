@interface COSTinkerDiagnosticsOptinViewController
+ (BOOL)controllerNeedsToRun;
- (COSTinkerDiagnosticsOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSTinkerDiagnosticsOptinViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = +[UIApplication sharedApplication];
  activeWatch = [v2 activeWatch];

  v4 = [activeWatch valueForProperty:NRDevicePropertyIsInternalInstall];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"QA-DiagsAndUsage-Testing"];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DIAG_TITLE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
  v7 = [NSString stringWithFormat:v3, localizedCapitalizedString];

  return v7;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DIAG_DETAIL_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
  v7 = [NSString stringWithFormat:v3, localizedCapitalizedString];

  return v7;
}

- (COSTinkerDiagnosticsOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerDiagnosticsOptinViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerDiagnosticsOptinViewController *)v2 setStyle:90];
  }

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  [PBBridgeCAReporter recordTinkerGuardianAcceptedDiagsAndUsage:1];
  v4 = +[UIApplication sharedApplication];
  bridgeController = [v4 bridgeController];
  [bridgeController tellGizmoToSetDiagnosticsEnabled:1];

  delegate = [(COSTinkerDiagnosticsOptinViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  [PBBridgeCAReporter recordTinkerGuardianAcceptedDiagsAndUsage:0];
  delegate = [(COSTinkerDiagnosticsOptinViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DIAG_ACCEPT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DIAG_DECLINE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ABOUT_DIAGS" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_DIAGS" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v9 = objc_alloc_init(COSAboutTextViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"ABOUT_DIAGNOSTICS_PRIVACY" value:&stru_10026E598 table:@"OptinDescriptions"];
  [(COSAboutTextViewController *)v9 setTitleString:v5];

  v6 = [UIImage systemImageNamed:@"chart.bar.xaxis"];
  [(COSAboutTextViewController *)v9 setHeaderGlyph:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"ABOUT_DIAGNOSTICS_INFO_TEXT" value:&stru_10026E598 table:@"OptinDescriptions"];
  [(COSAboutTextViewController *)v9 setHeaderString:v8];

  [(COSAboutTextViewController *)v9 presentWithController:self];
}

@end
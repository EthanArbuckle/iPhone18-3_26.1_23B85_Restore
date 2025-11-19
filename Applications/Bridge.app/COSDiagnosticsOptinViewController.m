@interface COSDiagnosticsOptinViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)wantsUnifiedFYI;
- (COSDiagnosticsOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)a3;
- (void)learnMoreButtonPressed:(id)a3;
@end

@implementation COSDiagnosticsOptinViewController

+ (BOOL)wantsUnifiedFYI
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed] == 1;

  return v3;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:MCFeatureDiagnosticsSubmissionAllowed];

  if (v3)
  {
    return 0;
  }

  else
  {
    return !+[COSDiagnosticsOptinViewController wantsUnifiedFYI];
  }
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DIAG_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DIAG_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (COSDiagnosticsOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = COSDiagnosticsOptinViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSDiagnosticsOptinViewController *)v2 setStyle:90];
  }

  return v3;
}

- (void)applyConfirmedOptin:(BOOL)a3
{
  v3 = a3;
  v5 = +[MCProfileConnection sharedConnection];
  [v5 setBoolValue:v3 forSetting:MCFeatureDiagnosticsSubmissionAllowed];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 bridgeController];
  [v7 tellGizmoToSetDiagnosticsEnabled:v3];

  v8 = [(COSDiagnosticsOptinViewController *)self delegate];
  [v8 buddyControllerDone:self];
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

- (void)learnMoreButtonPressed:(id)a3
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
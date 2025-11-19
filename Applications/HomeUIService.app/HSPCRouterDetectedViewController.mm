@interface HSPCRouterDetectedViewController
- (BOOL)canContinue;
- (HSPCRouterDetectedViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)prominentButtonLocalizedTitle;
@end

@implementation HSPCRouterDetectedViewController

- (HSPCRouterDetectedViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v12.receiver = self;
  v12.super_class = HSPCRouterDetectedViewController;
  v4 = [(HSPCDetectedViewController *)&v12 initWithCoordinator:a3 config:a4];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (![(HSPCRouterDetectedViewController *)v4 canContinue])
  {
    v6 = sub_100063A44(@"HSSetupConfirmationNetworkRouterResidentRequiredViewControllerTitle");
    [(HSPCRouterDetectedViewController *)v5 setTitle:v6];

LABEL_6:
    v7 = HFLocalizedWiFiStringKeyForKey();
    v8 = sub_100063A44(v7);
    [(HSPCRouterDetectedViewController *)v5 setSubtitle:v8];

    goto LABEL_8;
  }

  if ([(HSPCDetectedViewController *)v5 isFirstDetectedCard])
  {
    goto LABEL_6;
  }

  [(HSPCRouterDetectedViewController *)v5 setSubtitle:0];
LABEL_8:
  v9 = [(HSPCRouterDetectedViewController *)v5 subtitle];

  if (v9)
  {
    v10 = +[NSURL hf_learnAboutNetworkProtectionURL];
    [(HSPCRouterDetectedViewController *)v5 addLearnMoreButtonWithURL:v10];
  }

  return v5;
}

- (BOOL)canContinue
{
  v2 = [(HSPCCenterIconViewController *)self config];
  v3 = [v2 home];

  v4 = !v3 || ([v3 hf_isNetworkRouterSupported] & 1) != 0 || (objc_msgSend(v3, "networkRouterSupportDisableReason") & 1) == 0;
  return v4;
}

- (id)prominentButtonLocalizedTitle
{
  if ([(HSPCRouterDetectedViewController *)self canContinue])
  {
    v5.receiver = self;
    v5.super_class = HSPCRouterDetectedViewController;
    v3 = [(HSPCDetectedViewController *)&v5 prominentButtonLocalizedTitle];
  }

  else
  {
    v3 = HULocalizedString();
  }

  return v3;
}

- (id)commitConfiguration
{
  v2 = [NSNumber numberWithUnsignedInteger:[(HSPCRouterDetectedViewController *)self canContinue]^ 1];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

@end
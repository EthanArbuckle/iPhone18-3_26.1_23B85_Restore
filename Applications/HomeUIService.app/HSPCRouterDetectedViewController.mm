@interface HSPCRouterDetectedViewController
- (BOOL)canContinue;
- (HSPCRouterDetectedViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)prominentButtonLocalizedTitle;
@end

@implementation HSPCRouterDetectedViewController

- (HSPCRouterDetectedViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  v12.receiver = self;
  v12.super_class = HSPCRouterDetectedViewController;
  v4 = [(HSPCDetectedViewController *)&v12 initWithCoordinator:coordinator config:config];
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
  subtitle = [(HSPCRouterDetectedViewController *)v5 subtitle];

  if (subtitle)
  {
    v10 = +[NSURL hf_learnAboutNetworkProtectionURL];
    [(HSPCRouterDetectedViewController *)v5 addLearnMoreButtonWithURL:v10];
  }

  return v5;
}

- (BOOL)canContinue
{
  config = [(HSPCCenterIconViewController *)self config];
  home = [config home];

  v4 = !home || ([home hf_isNetworkRouterSupported] & 1) != 0 || (objc_msgSend(home, "networkRouterSupportDisableReason") & 1) == 0;
  return v4;
}

- (id)prominentButtonLocalizedTitle
{
  if ([(HSPCRouterDetectedViewController *)self canContinue])
  {
    v5.receiver = self;
    v5.super_class = HSPCRouterDetectedViewController;
    prominentButtonLocalizedTitle = [(HSPCDetectedViewController *)&v5 prominentButtonLocalizedTitle];
  }

  else
  {
    prominentButtonLocalizedTitle = HULocalizedString();
  }

  return prominentButtonLocalizedTitle;
}

- (id)commitConfiguration
{
  v2 = [NSNumber numberWithUnsignedInteger:[(HSPCRouterDetectedViewController *)self canContinue]^ 1];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

@end
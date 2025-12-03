@interface HSPCHomeHubRequiredViewController
- (HSPCHomeHubRequiredViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)handleLearnMoreURL;
- (id)iconDescriptor;
@end

@implementation HSPCHomeHubRequiredViewController

- (HSPCHomeHubRequiredViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  v15.receiver = self;
  v15.super_class = HSPCHomeHubRequiredViewController;
  v7 = [(HSPCCenterIconViewController *)&v15 initWithCoordinator:coordinator config:configCopy];
  if (v7)
  {
    home = [configCopy home];
    residentDevices = [home residentDevices];
    [residentDevices count];

    v10 = HULocalizedString();
    [(HSPCHomeHubRequiredViewController *)v7 setTitle:v10];

    v11 = HULocalizedString();
    [(HSPCHomeHubRequiredViewController *)v7 setSubtitle:v11];

    v12 = [(HSPCHomeHubRequiredViewController *)v7 addProminentButtonWithTitleKey:@"HULearnMoreTitle" target:v7 futureSelector:"handleLearnMoreURL"];
    v13 = [(HSPCHomeHubRequiredViewController *)v7 addOptionalDismissButtonWithLocalizedTitleKey:@"HUOkTitle"];
  }

  return v7;
}

- (id)iconDescriptor
{
  v2 = +[UIColor hf_keyColor];
  v3 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v2];

  v4 = [HFImageIconDescriptor alloc];
  v5 = [v4 initWithSystemImageNamed:HFSymbolIconIdentifierBridge configuration:v3];

  return v5;
}

- (id)handleLearnMoreURL
{
  v3 = +[NSURL hf_homeHubRequiredLearnMoreURL];
  [(HSPCHomeHubRequiredViewController *)self openURL:v3];

  return [NAFuture futureWithResult:&off_1000CD4F8];
}

@end
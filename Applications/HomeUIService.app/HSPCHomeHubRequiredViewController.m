@interface HSPCHomeHubRequiredViewController
- (HSPCHomeHubRequiredViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)handleLearnMoreURL;
- (id)iconDescriptor;
@end

@implementation HSPCHomeHubRequiredViewController

- (HSPCHomeHubRequiredViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = HSPCHomeHubRequiredViewController;
  v7 = [(HSPCCenterIconViewController *)&v15 initWithCoordinator:a3 config:v6];
  if (v7)
  {
    v8 = [v6 home];
    v9 = [v8 residentDevices];
    [v9 count];

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
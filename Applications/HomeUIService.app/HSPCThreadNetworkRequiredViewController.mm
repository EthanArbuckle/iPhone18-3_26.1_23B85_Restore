@interface HSPCThreadNetworkRequiredViewController
- (id)handleLearnMoreURL;
- (void)configureCard;
@end

@implementation HSPCThreadNetworkRequiredViewController

- (void)configureCard
{
  v3 = HULocalizedString();
  [(HSPCThreadNetworkRequiredViewController *)self setTitle:v3];

  v4 = HULocalizedString();
  [(HSPCThreadNetworkRequiredViewController *)self setSubtitle:v4];

  v5 = [(HSPCThreadNetworkRequiredViewController *)self addProminentButtonWithTitleKey:@"HULearnMoreTitle" target:self futureSelector:"handleLearnMoreURL"];
  v6 = [(HSPCThreadNetworkRequiredViewController *)self addOptionalDismissButtonWithLocalizedTitleKey:@"HUDoneTitle"];
}

- (id)handleLearnMoreURL
{
  v3 = +[NSURL hf_threadNetworkRequiredLearnMoreURL];
  [(HSPCThreadNetworkRequiredViewController *)self openURL:v3];

  return [NAFuture futureWithResult:&off_1000CD678];
}

@end
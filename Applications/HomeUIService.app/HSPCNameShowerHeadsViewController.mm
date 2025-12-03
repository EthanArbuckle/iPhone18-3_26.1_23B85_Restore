@interface HSPCNameShowerHeadsViewController
- (HSPCNameShowerHeadsViewController)initWithCoordinator:(id)coordinator config:(id)config;
@end

@implementation HSPCNameShowerHeadsViewController

- (HSPCNameShowerHeadsViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  v7.receiver = self;
  v7.super_class = HSPCNameShowerHeadsViewController;
  v4 = [(HSPCNameZonesViewController *)&v7 initWithCoordinator:coordinator config:config];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCNameShowerHeadsViewController *)v4 setTitle:v5];

    [(HSPCNameShowerHeadsViewController *)v4 setSubtitle:0];
  }

  return v4;
}

@end
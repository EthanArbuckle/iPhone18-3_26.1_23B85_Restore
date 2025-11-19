@interface HSPCNameShowerHeadsViewController
- (HSPCNameShowerHeadsViewController)initWithCoordinator:(id)a3 config:(id)a4;
@end

@implementation HSPCNameShowerHeadsViewController

- (HSPCNameShowerHeadsViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7.receiver = self;
  v7.super_class = HSPCNameShowerHeadsViewController;
  v4 = [(HSPCNameZonesViewController *)&v7 initWithCoordinator:a3 config:a4];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCNameShowerHeadsViewController *)v4 setTitle:v5];

    [(HSPCNameShowerHeadsViewController *)v4 setSubtitle:0];
  }

  return v4;
}

@end
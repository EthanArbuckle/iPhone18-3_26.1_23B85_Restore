@interface HSPCSiriUpdateRequiredViewController
- (HSPCSiriUpdateRequiredViewController)initWithCoordinator:(id)a3 config:(id)a4;
@end

@implementation HSPCSiriUpdateRequiredViewController

- (HSPCSiriUpdateRequiredViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [UIImageView alloc];
  v10 = HUImageNamed();
  v11 = [v9 initWithImage:v10];

  [v11 setContentMode:2];
  v19.receiver = self;
  v19.super_class = HSPCSiriUpdateRequiredViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v19 initWithCenterContentView:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, a4);
    objc_storeStrong(&v13->_coordinator, a3);
    v14 = HULocalizedString();
    [(HSPCSiriUpdateRequiredViewController *)v13 setTitle:v14];

    v15 = HULocalizedString();
    v16 = [(HSPCSiriUpdateRequiredViewController *)v13 addProminentButtonWithLocalizedTitle:v15 target:v13 futureSelector:"commitConfiguration"];

    v17 = HULocalizedString();
    [(HSPCSiriUpdateRequiredViewController *)v13 setSubtitle:v17];
  }

  return v13;
}

@end
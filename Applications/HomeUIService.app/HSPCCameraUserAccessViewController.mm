@interface HSPCCameraUserAccessViewController
- (HSPCCameraUserAccessViewController)initWithCoordinator:(id)a3 config:(id)a4;
@end

@implementation HSPCCameraUserAccessViewController

- (HSPCCameraUserAccessViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HSPCCameraUserAccessViewController;
  v9 = [(HSPCMVVMShellViewController *)&v15 initWithTableViewStyle:2 moduleCreator:&stru_1000C7C78 moduleControllerBuilder:&stru_1000C7C98];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = HULocalizedString();
    [(HSPCCameraUserAccessViewController *)v10 setTitle:v11];

    v12 = HULocalizedString();
    [(HSPCCameraUserAccessViewController *)v10 setSubtitle:v12];

    v13 = [(HSPCCameraUserAccessViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

@end
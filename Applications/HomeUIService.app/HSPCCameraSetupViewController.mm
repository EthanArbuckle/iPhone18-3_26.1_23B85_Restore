@interface HSPCCameraSetupViewController
- (HSPCCameraSetupViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (void)launchCameraRecordingLearnMore;
@end

@implementation HSPCCameraSetupViewController

- (HSPCCameraSetupViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  addedAccessory = [configCopy addedAccessory];
  [addedAccessory cameraProfiles];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100025EE0;
  v10 = v19[3] = &unk_1000C6648;
  v20 = v10;
  v11 = objc_retainBlock(v19);
  v18.receiver = self;
  v18.super_class = HSPCCameraSetupViewController;
  v12 = [(HSPCMVVMShellViewController *)&v18 initWithTableViewStyle:2 moduleCreator:v11 moduleControllerBuilder:&stru_1000C6688];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, config);
    objc_storeStrong(&v13->_coordinator, coordinator);
    v14 = HULocalizedString();
    [(HSPCCameraSetupViewController *)v13 setTitle:v14];

    v15 = HULocalizedString();
    [(HSPCCameraSetupViewController *)v13 setSubtitle:v15];

    v16 = [(HSPCCameraSetupViewController *)v13 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v13 futureSelector:"commitConfiguration"];
    [(HSPCCameraSetupViewController *)v13 addLearnMoreButtonWithTarget:v13 action:"launchCameraRecordingLearnMore" userInfo:0];
  }

  return v13;
}

- (void)launchCameraRecordingLearnMore
{
  v3 = objc_alloc_init(HUCameraRecordingLearnMoreViewController);
  [(HSPCCameraSetupViewController *)self presentViewController:v3 animated:1 completion:0];
}

@end
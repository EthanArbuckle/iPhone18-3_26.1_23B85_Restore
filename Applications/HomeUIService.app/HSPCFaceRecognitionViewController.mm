@interface HSPCFaceRecognitionViewController
- (HSPCFaceRecognitionViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (void)viewDidLoad;
@end

@implementation HSPCFaceRecognitionViewController

- (HSPCFaceRecognitionViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = HSPCFaceRecognitionViewController;
  v9 = [(HSPCFaceRecognitionViewController *)&v28 init];
  v10 = v9;
  if (v9)
  {
    v9->_isPreloaded = 0;
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    v11 = HULocalizedString();
    [(HSPCFaceRecognitionViewController *)v10 setTitle:v11];

    v12 = [(HSPCFaceRecognitionViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
    home = [configCopy home];
    objc_initWeak(&location, v10);
    v14 = [PRXFeature alloc];
    v15 = HULocalizedString();
    v16 = HULocalizedString();
    v17 = +[UIColor systemBlueColor];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011900;
    v24[3] = &unk_1000C5D40;
    objc_copyWeak(&v26, &location);
    v18 = home;
    v25 = v18;
    v19 = [v14 initWithTitle:v15 detailText:v16 icon:0 tintColor:v17 valueChangedBlock:v24];

    personManagerSettings = [v18 personManagerSettings];
    isFaceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

    [v19 setOn:isFaceClassificationEnabled];
    v22 = [(HSPCFaceRecognitionViewController *)v10 addFeature:v19];
    [(HSPCFaceRecognitionViewController *)v10 setIdentifyPeopleFeature:v19];
    [(HSPCFaceRecognitionViewController *)v10 setIsPreloaded:1];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCFaceRecognitionViewController;
  [(HSPCFaceRecognitionViewController *)&v4 viewDidLoad];
  tableView = [(HSPCFaceRecognitionViewController *)self tableView];
  [tableView setSeparatorStyle:0];
}

@end
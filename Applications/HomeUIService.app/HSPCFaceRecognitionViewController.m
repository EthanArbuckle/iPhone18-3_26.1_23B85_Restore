@interface HSPCFaceRecognitionViewController
- (HSPCFaceRecognitionViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (void)viewDidLoad;
@end

@implementation HSPCFaceRecognitionViewController

- (HSPCFaceRecognitionViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = HSPCFaceRecognitionViewController;
  v9 = [(HSPCFaceRecognitionViewController *)&v28 init];
  v10 = v9;
  if (v9)
  {
    v9->_isPreloaded = 0;
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = HULocalizedString();
    [(HSPCFaceRecognitionViewController *)v10 setTitle:v11];

    v12 = [(HSPCFaceRecognitionViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
    v13 = [v8 home];
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
    v18 = v13;
    v25 = v18;
    v19 = [v14 initWithTitle:v15 detailText:v16 icon:0 tintColor:v17 valueChangedBlock:v24];

    v20 = [v18 personManagerSettings];
    v21 = [v20 isFaceClassificationEnabled];

    [v19 setOn:v21];
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
  v3 = [(HSPCFaceRecognitionViewController *)self tableView];
  [v3 setSeparatorStyle:0];
}

@end
@interface HSPCChimeViewController
+ (BOOL)_shouldShowHomePodChimeFeatureForHome:(id)a3;
+ (BOOL)_shouldShowTraditionalChimeFeatureForAccessory:(id)a3;
+ (BOOL)shouldSkipForAccessory:(id)a3 inHome:(id)a4;
+ (id)_muteCharacteristicForAccessory:(id)a3;
- (BOOL)isHomePodChimeEnabled;
- (BOOL)isTraditionalChimeEnabled;
- (HSPCChimeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)setHomePodChime:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HSPCChimeViewController

- (HSPCChimeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = HSPCChimeViewController;
  v9 = [(HSPCChimeViewController *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = [v8 home];
    v12 = [HSPCChimeViewController _shouldShowHomePodChimeFeatureForHome:v11];

    if (v12)
    {
      v13 = [PRXFeature alloc];
      v14 = HULocalizedString();
      v15 = HULocalizedString();
      v16 = +[UIColor systemBlueColor];
      v17 = [v13 initWithTitle:v14 detailText:v15 icon:0 tintColor:v16 valueChangedBlock:&stru_1000C6DE8];
      homePodChimeFeature = v10->_homePodChimeFeature;
      v10->_homePodChimeFeature = v17;

      [(HSPCChimeViewController *)v10 setInitialHomePodChimeState:[(HSPCChimeViewController *)v10 isHomePodChimeEnabled]];
      [(PRXFeature *)v10->_homePodChimeFeature setOn:[(HSPCChimeViewController *)v10 initialHomePodChimeState]];
      v19 = [(HSPCChimeViewController *)v10 addFeature:v10->_homePodChimeFeature];
    }

    v20 = [v8 addedAccessory];
    v21 = [HSPCChimeViewController _shouldShowTraditionalChimeFeatureForAccessory:v20];

    if (v21)
    {
      v22 = [PRXFeature alloc];
      v23 = HULocalizedString();
      v24 = HULocalizedString();
      v25 = +[UIColor systemBlueColor];
      v26 = [v22 initWithTitle:v23 detailText:v24 icon:0 tintColor:v25 valueChangedBlock:&stru_1000C6E08];
      traditionalChimeFeature = v10->_traditionalChimeFeature;
      v10->_traditionalChimeFeature = v26;

      [(PRXFeature *)v10->_traditionalChimeFeature setOn:[(HSPCChimeViewController *)v10 isTraditionalChimeEnabled]];
      v28 = [(HSPCChimeViewController *)v10 addFeature:v10->_traditionalChimeFeature];
    }

    v29 = HULocalizedString();
    [(HSPCChimeViewController *)v10 setTitle:v29];

    v30 = [(HSPCChimeViewController *)v10 features];
    v31 = [v30 count];

    if (v31 >= 2)
    {
      v32 = HULocalizedString();
      [(HSPCChimeViewController *)v10 setSubtitle:v32];
    }

    v33 = [(HSPCChimeViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  v3 = [(HSPCChimeViewController *)self traditionalChimeFeature];

  if (v3)
  {
    v4 = [(HSPCChimeViewController *)self traditionalChimeFeature];
    -[HSPCChimeViewController setTraditionalDoorbellChime:](self, "setTraditionalDoorbellChime:", [v4 isOn]);
  }

  v5 = [(HSPCChimeViewController *)self homePodChimeFeature];
  if (!v5 || (v6 = v5, -[HSPCChimeViewController homePodChimeFeature](self, "homePodChimeFeature"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isOn], v9 = -[HSPCChimeViewController initialHomePodChimeState](self, "initialHomePodChimeState"), v7, v6, v8 == v9))
  {
    v12 = [NAFuture futureWithResult:&off_1000CD6D8];
  }

  else
  {
    v10 = [(HSPCChimeViewController *)self homePodChimeFeature];
    v11 = -[HSPCChimeViewController setHomePodChime:](self, "setHomePodChime:", [v10 isOn]);
    v12 = [v11 hs_commitConfigurationFutureWithContextMessage:@"HomePod Chime"];
  }

  return v12;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HSPCChimeViewController;
  [(HSPCChimeViewController *)&v7 viewDidLoad];
  v3 = [(HSPCChimeViewController *)self features];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(HSPCChimeViewController *)self tableView];
    [v5 setSeparatorStyle:0];
  }

  else
  {
    v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 1.0}];
    v6 = [(HSPCChimeViewController *)self tableView];
    [v6 setTableFooterView:v5];
  }
}

- (id)setHomePodChime:(BOOL)a3
{
  v4 = [(HSPCChimeViewController *)self config];
  v5 = [v4 home];

  v6 = [v5 hf_characteristicValueManager];
  v7 = [v5 hf_allHomePodsOrStereoPairs];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100032A54;
  v16 = &unk_1000C6E30;
  v17 = v6;
  v18 = a3;
  v8 = v6;
  v9 = [v7 na_map:&v13];
  v10 = [NAScheduler mainThreadScheduler:v13];
  v11 = [NAFuture combineAllFutures:v9 ignoringErrors:1 scheduler:v10];

  return v11;
}

- (BOOL)isTraditionalChimeEnabled
{
  v2 = [(HSPCChimeViewController *)self config];
  v3 = [v2 addedAccessory];
  v4 = [HSPCChimeViewController _muteCharacteristicForAccessory:v3];

  objc_opt_class();
  v5 = [v4 value];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isHomePodChimeEnabled
{
  v2 = [(HSPCChimeViewController *)self config];
  v3 = [v2 home];
  v4 = [v3 hf_allHomePodsOrStereoPairsThatWillChime];
  v5 = [v4 count] != 0;

  return v5;
}

+ (BOOL)_shouldShowHomePodChimeFeatureForHome:(id)a3
{
  v3 = [a3 hf_allHomePodProfileContainers];
  v4 = [v3 na_filter:&stru_1000C6E70];
  v5 = [v4 count];

  return v5 != 0;
}

+ (id)_muteCharacteristicForAccessory:(id)a3
{
  v3 = [a3 cameraProfiles];
  v4 = [v3 firstObject];

  v5 = [v4 hf_doorbellChimeMuteCharacteristic];

  return v5;
}

+ (BOOL)_shouldShowTraditionalChimeFeatureForAccessory:(id)a3
{
  v3 = [HSPCChimeViewController _muteCharacteristicForAccessory:a3];
  v4 = [v3 hf_isWritable];

  return v4;
}

+ (BOOL)shouldSkipForAccessory:(id)a3 inHome:(id)a4
{
  v5 = a3;
  if ([HSPCChimeViewController _shouldShowHomePodChimeFeatureForHome:a4])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![HSPCChimeViewController _shouldShowTraditionalChimeFeatureForAccessory:v5];
  }

  return v6;
}

@end
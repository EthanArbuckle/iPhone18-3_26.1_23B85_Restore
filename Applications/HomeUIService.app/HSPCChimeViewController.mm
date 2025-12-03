@interface HSPCChimeViewController
+ (BOOL)_shouldShowHomePodChimeFeatureForHome:(id)home;
+ (BOOL)_shouldShowTraditionalChimeFeatureForAccessory:(id)accessory;
+ (BOOL)shouldSkipForAccessory:(id)accessory inHome:(id)home;
+ (id)_muteCharacteristicForAccessory:(id)accessory;
- (BOOL)isHomePodChimeEnabled;
- (BOOL)isTraditionalChimeEnabled;
- (HSPCChimeViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)setHomePodChime:(BOOL)chime;
- (void)viewDidLoad;
@end

@implementation HSPCChimeViewController

- (HSPCChimeViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v35.receiver = self;
  v35.super_class = HSPCChimeViewController;
  v9 = [(HSPCChimeViewController *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    home = [configCopy home];
    v12 = [HSPCChimeViewController _shouldShowHomePodChimeFeatureForHome:home];

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

    addedAccessory = [configCopy addedAccessory];
    v21 = [HSPCChimeViewController _shouldShowTraditionalChimeFeatureForAccessory:addedAccessory];

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

    features = [(HSPCChimeViewController *)v10 features];
    v31 = [features count];

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
  traditionalChimeFeature = [(HSPCChimeViewController *)self traditionalChimeFeature];

  if (traditionalChimeFeature)
  {
    traditionalChimeFeature2 = [(HSPCChimeViewController *)self traditionalChimeFeature];
    -[HSPCChimeViewController setTraditionalDoorbellChime:](self, "setTraditionalDoorbellChime:", [traditionalChimeFeature2 isOn]);
  }

  homePodChimeFeature = [(HSPCChimeViewController *)self homePodChimeFeature];
  if (!homePodChimeFeature || (v6 = homePodChimeFeature, -[HSPCChimeViewController homePodChimeFeature](self, "homePodChimeFeature"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isOn], v9 = -[HSPCChimeViewController initialHomePodChimeState](self, "initialHomePodChimeState"), v7, v6, v8 == v9))
  {
    v12 = [NAFuture futureWithResult:&off_1000CD6D8];
  }

  else
  {
    homePodChimeFeature2 = [(HSPCChimeViewController *)self homePodChimeFeature];
    v11 = -[HSPCChimeViewController setHomePodChime:](self, "setHomePodChime:", [homePodChimeFeature2 isOn]);
    v12 = [v11 hs_commitConfigurationFutureWithContextMessage:@"HomePod Chime"];
  }

  return v12;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HSPCChimeViewController;
  [(HSPCChimeViewController *)&v7 viewDidLoad];
  features = [(HSPCChimeViewController *)self features];
  v4 = [features count];

  if (v4 == 1)
  {
    tableView = [(HSPCChimeViewController *)self tableView];
    [tableView setSeparatorStyle:0];
  }

  else
  {
    tableView = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 1.0}];
    tableView2 = [(HSPCChimeViewController *)self tableView];
    [tableView2 setTableFooterView:tableView];
  }
}

- (id)setHomePodChime:(BOOL)chime
{
  config = [(HSPCChimeViewController *)self config];
  home = [config home];

  hf_characteristicValueManager = [home hf_characteristicValueManager];
  hf_allHomePodsOrStereoPairs = [home hf_allHomePodsOrStereoPairs];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100032A54;
  v16 = &unk_1000C6E30;
  v17 = hf_characteristicValueManager;
  chimeCopy = chime;
  v8 = hf_characteristicValueManager;
  v9 = [hf_allHomePodsOrStereoPairs na_map:&v13];
  v10 = [NAScheduler mainThreadScheduler:v13];
  v11 = [NAFuture combineAllFutures:v9 ignoringErrors:1 scheduler:v10];

  return v11;
}

- (BOOL)isTraditionalChimeEnabled
{
  config = [(HSPCChimeViewController *)self config];
  addedAccessory = [config addedAccessory];
  v4 = [HSPCChimeViewController _muteCharacteristicForAccessory:addedAccessory];

  objc_opt_class();
  value = [v4 value];
  if (objc_opt_isKindOfClass())
  {
    v6 = value;
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
  config = [(HSPCChimeViewController *)self config];
  home = [config home];
  hf_allHomePodsOrStereoPairsThatWillChime = [home hf_allHomePodsOrStereoPairsThatWillChime];
  v5 = [hf_allHomePodsOrStereoPairsThatWillChime count] != 0;

  return v5;
}

+ (BOOL)_shouldShowHomePodChimeFeatureForHome:(id)home
{
  hf_allHomePodProfileContainers = [home hf_allHomePodProfileContainers];
  v4 = [hf_allHomePodProfileContainers na_filter:&stru_1000C6E70];
  v5 = [v4 count];

  return v5 != 0;
}

+ (id)_muteCharacteristicForAccessory:(id)accessory
{
  cameraProfiles = [accessory cameraProfiles];
  firstObject = [cameraProfiles firstObject];

  hf_doorbellChimeMuteCharacteristic = [firstObject hf_doorbellChimeMuteCharacteristic];

  return hf_doorbellChimeMuteCharacteristic;
}

+ (BOOL)_shouldShowTraditionalChimeFeatureForAccessory:(id)accessory
{
  v3 = [HSPCChimeViewController _muteCharacteristicForAccessory:accessory];
  hf_isWritable = [v3 hf_isWritable];

  return hf_isWritable;
}

+ (BOOL)shouldSkipForAccessory:(id)accessory inHome:(id)home
{
  accessoryCopy = accessory;
  if ([HSPCChimeViewController _shouldShowHomePodChimeFeatureForHome:home])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![HSPCChimeViewController _shouldShowTraditionalChimeFeatureForAccessory:accessoryCopy];
  }

  return v6;
}

@end
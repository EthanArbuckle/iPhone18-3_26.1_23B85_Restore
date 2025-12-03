@interface HSPCNameAccessoryViewController
- (HSPCNameAccessoryViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)suggestedAccessoryName;
- (void)viewDidLoad;
@end

@implementation HSPCNameAccessoryViewController

- (HSPCNameAccessoryViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = HSPCNameAccessoryViewController;
  v9 = [(HSPCTextFieldViewController *)&v28 initWithCoordinator:coordinatorCopy config:configCopy];
  if (v9)
  {
    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
    v15 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCNameAccessoryViewController *)v9 setTitle:v15];

    v16 = HULocalizedString();
    [(HSPCNameAccessoryViewController *)v9 setSubtitle:v16];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      addedAccessory = [configCopy addedAccessory];
      matterDeviceTypeID2 = [addedAccessory matterDeviceTypeID];
      setupAccessoryDescription2 = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload2 = [setupAccessoryDescription2 setupAccessoryPayload];
      matterDeviceTypeID3 = [setupAccessoryPayload2 matterDeviceTypeID];
      addedAccessory2 = [configCopy addedAccessory];
      setupAccessoryDescription3 = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload3 = [setupAccessoryDescription3 setupAccessoryPayload];
      *buf = 138413570;
      v30 = v9;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = matterDeviceTypeID2;
      v35 = 2112;
      v36 = matterDeviceTypeID3;
      v37 = 2112;
      v38 = addedAccessory2;
      v39 = 2112;
      v40 = setupAccessoryPayload3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: addedAccessory.matterDeviceTypeID: %@ setupAccessoryPayload.matterDeviceTypeID: %@ addedAccessory: %@ setupAccessoryPayload: %@", buf, 0x3Eu);
    }
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCNameAccessoryViewController;
  [(HSPCTextFieldViewController *)&v4 viewDidLoad];
  suggestedAccessoryName = [(HSPCNameAccessoryViewController *)self suggestedAccessoryName];
  [(HSPCTextFieldViewController *)self setTextFieldText:suggestedAccessoryName];
  [(HSPCTextFieldViewController *)self setTextFieldPlaceholderText:suggestedAccessoryName];
}

- (id)commitConfiguration
{
  [(HSPCTextFieldViewController *)self endEditing];
  config = [(HSPCTextFieldViewController *)self config];
  textFieldText = [(HSPCTextFieldViewController *)self textFieldText];
  v5 = [config updateUserGivenAccessoryName:textFieldText];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100034748;
  v13[3] = &unk_1000C68B8;
  v13[4] = self;
  v6 = [v5 flatMap:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034798;
  v12[3] = &unk_1000C68B8;
  v12[4] = self;
  v7 = [v6 flatMap:v12];
  textFieldText2 = [(HSPCTextFieldViewController *)self textFieldText];
  v9 = [NSString stringWithFormat:@"Accessory update naming: %@", textFieldText2];
  v10 = [v7 hs_commitConfigurationFutureWithContextMessage:v9];

  return v10;
}

- (id)suggestedAccessoryName
{
  coordinator = [(HSPCTextFieldViewController *)self coordinator];
  setupAccessoryDescription = [coordinator setupAccessoryDescription];
  suggestedAccessoryName = [setupAccessoryDescription suggestedAccessoryName];
  v6 = suggestedAccessoryName;
  if (suggestedAccessoryName)
  {
    v7 = suggestedAccessoryName;
  }

  else
  {
    coordinator2 = [(HSPCTextFieldViewController *)self coordinator];
    activeTuple = [coordinator2 activeTuple];
    titleForAccessory = [activeTuple titleForAccessory];
    v11 = titleForAccessory;
    v12 = &stru_1000C89F8;
    if (titleForAccessory)
    {
      v12 = titleForAccessory;
    }

    v7 = v12;
  }

  config = [(HSPCTextFieldViewController *)self config];
  home = [config home];

  if (home)
  {
    accessories = [home accessories];
    v16 = [accessories na_map:&stru_1000C6F10];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &__NSArray0__struct;
    }

    v19 = [NSSet setWithArray:v18];
    config2 = [(HSPCTextFieldViewController *)self config];
    addedAccessory = [config2 addedAccessory];
    name = [addedAccessory name];
    v23 = [NSSet na_setWithSafeObject:name];
    v24 = [v19 na_setByRemovingObjectsFromSet:v23];

    v25 = [HFUtilities uniqueHomeKitNameForName:v7 allNames:v24];
  }

  else
  {
    v25 = v7;
  }

  return v25;
}

@end
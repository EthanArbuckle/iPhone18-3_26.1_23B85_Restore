@interface HSPCNameAccessoryViewController
- (HSPCNameAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)suggestedAccessoryName;
- (void)viewDidLoad;
@end

@implementation HSPCNameAccessoryViewController

- (HSPCNameAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = HSPCNameAccessoryViewController;
  v9 = [(HSPCTextFieldViewController *)&v28 initWithCoordinator:v7 config:v8];
  if (v9)
  {
    v10 = [v7 activeTuple];
    v11 = [v10 accessoryCategoryOrPrimaryServiceType];
    v12 = [v7 setupAccessoryDescription];
    v13 = [v12 setupAccessoryPayload];
    v14 = [v13 matterDeviceTypeID];
    v15 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCNameAccessoryViewController *)v9 setTitle:v15];

    v16 = HULocalizedString();
    [(HSPCNameAccessoryViewController *)v9 setSubtitle:v16];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      v27 = [v8 addedAccessory];
      v19 = [v27 matterDeviceTypeID];
      v26 = [v7 setupAccessoryDescription];
      v25 = [v26 setupAccessoryPayload];
      v20 = [v25 matterDeviceTypeID];
      v21 = [v8 addedAccessory];
      v22 = [v7 setupAccessoryDescription];
      v23 = [v22 setupAccessoryPayload];
      *buf = 138413570;
      v30 = v9;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v23;
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
  v3 = [(HSPCNameAccessoryViewController *)self suggestedAccessoryName];
  [(HSPCTextFieldViewController *)self setTextFieldText:v3];
  [(HSPCTextFieldViewController *)self setTextFieldPlaceholderText:v3];
}

- (id)commitConfiguration
{
  [(HSPCTextFieldViewController *)self endEditing];
  v3 = [(HSPCTextFieldViewController *)self config];
  v4 = [(HSPCTextFieldViewController *)self textFieldText];
  v5 = [v3 updateUserGivenAccessoryName:v4];
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
  v8 = [(HSPCTextFieldViewController *)self textFieldText];
  v9 = [NSString stringWithFormat:@"Accessory update naming: %@", v8];
  v10 = [v7 hs_commitConfigurationFutureWithContextMessage:v9];

  return v10;
}

- (id)suggestedAccessoryName
{
  v3 = [(HSPCTextFieldViewController *)self coordinator];
  v4 = [v3 setupAccessoryDescription];
  v5 = [v4 suggestedAccessoryName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(HSPCTextFieldViewController *)self coordinator];
    v9 = [v8 activeTuple];
    v10 = [v9 titleForAccessory];
    v11 = v10;
    v12 = &stru_1000C89F8;
    if (v10)
    {
      v12 = v10;
    }

    v7 = v12;
  }

  v13 = [(HSPCTextFieldViewController *)self config];
  v14 = [v13 home];

  if (v14)
  {
    v15 = [v14 accessories];
    v16 = [v15 na_map:&stru_1000C6F10];
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
    v20 = [(HSPCTextFieldViewController *)self config];
    v21 = [v20 addedAccessory];
    v22 = [v21 name];
    v23 = [NSSet na_setWithSafeObject:v22];
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
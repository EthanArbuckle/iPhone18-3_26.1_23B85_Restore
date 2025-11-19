@interface HSPCNameServicesViewController
+ (id)applicableServicesForAccessory:(id)a3;
- (BOOL)_indexPathAllowsToggling:(id)a3;
- (BOOL)isServiceSelectable:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (HSPCNameServicesViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (NSSet)characteristicTypesToPreload;
- (NSSet)servicesToPreload;
- (UITableView)tableView;
- (id)_enabledServicesSetFromServices:(id)a3;
- (id)_frozenServicesFromServices:(id)a3;
- (id)_givenNameForService:(id)a3;
- (id)cellReuseIdentifierForService:(id)a3;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)readCharacteristics:(id)a3 inServices:(id)a4;
- (id)serviceForIndexPath:(id)a3;
- (id)suggestedNamesForServices:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_logDetailedServices;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCNameServicesViewController

- (id)readCharacteristics:(id)a3 inServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] && objc_msgSend(v7, "count"))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000572D8;
    v15[3] = &unk_1000C7B80;
    v16 = v7;
    v8 = [v6 na_flatMap:v15];
    v9 = [(HSPCNameServicesViewController *)self config];
    v10 = [v9 home];
    v11 = [v10 hf_characteristicValueManager];
    v12 = [v11 readValuesForCharacteristics:v8];
    v13 = [v12 flatMap:&stru_1000C7BC0];
  }

  else
  {
    v13 = +[NAFuture futureWithNoResult];
  }

  return v13;
}

- (HSPCNameServicesViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v11 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v10];
  v55.receiver = self;
  v55.super_class = HSPCNameServicesViewController;
  v12 = [(HSPCNameServicesViewController *)&v55 initWithContentView:v11];
  v13 = v12;
  if (v12)
  {
    aSelector = a2;
    v53 = v11;
    v54 = v9;
    objc_storeStrong(&v12->_config, a4);
    objc_storeStrong(&v13->_coordinator, a3);
    v14 = objc_storeWeak(&v13->_tableView, v10);
    [v10 setDelegate:v13];

    WeakRetained = objc_loadWeakRetained(&v13->_tableView);
    [WeakRetained setDataSource:v13];

    v16 = objc_loadWeakRetained(&v13->_tableView);
    [v16 setAllowsMultipleSelection:1];

    v17 = +[UIColor systemBackgroundColor];
    v18 = objc_loadWeakRetained(&v13->_tableView);
    [v18 setBackgroundColor:v17];

    +[HSPCRow leadingSeparatorMargin];
    v20 = v19;
    v21 = objc_loadWeakRetained(&v13->_tableView);
    [v21 setSeparatorInset:{0.0, v20, 0.0, 0.0}];

    v22 = objc_loadWeakRetained(&v13->_tableView);
    [v22 _setTopPadding:0.0];

    v23 = objc_loadWeakRetained(&v13->_tableView);
    [v23 _setBottomPadding:0.0];

    v24 = objc_loadWeakRetained(&v13->_tableView);
    v25 = objc_opt_class();
    v26 = +[HSPCNameServiceRow _reuseIdentifier];
    [v24 registerClass:v25 forCellReuseIdentifier:v26];

    v27 = objc_loadWeakRetained(&v13->_tableView);
    v28 = objc_opt_class();
    v29 = +[HSPCNameServiceNoIconRow _reuseIdentifier];
    [v27 registerClass:v28 forCellReuseIdentifier:v29];

    v30 = objc_loadWeakRetained(&v13->_tableView);
    v31 = objc_opt_class();
    v32 = +[HSPCNameToggleServiceRow _reuseIdentifier];
    [v30 registerClass:v31 forCellReuseIdentifier:v32];

    v33 = objc_loadWeakRetained(&v13->_tableView);
    v34 = objc_opt_class();
    v35 = +[HSPCNameIdentifyServiceRow _reuseIdentifier];
    [v33 registerClass:v34 forCellReuseIdentifier:v35];

    v36 = [v8 activeTuple];
    v37 = [v36 accessoryCategoryOrPrimaryServiceType];
    v38 = [v8 setupAccessoryDescription];
    v39 = [v38 setupAccessoryPayload];
    v40 = [v39 matterDeviceTypeID];
    v41 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCNameServicesViewController *)v13 setTitle:v41];

    v42 = HULocalizedString();
    [(HSPCNameServicesViewController *)v13 setSubtitle:v42];

    v43 = [(HSPCNameServicesViewController *)v13 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v13 futureSelector:"commitConfiguration"];
    v44 = HFLogForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = NSStringFromSelector(aSelector);
      v46 = [v8 setupAccessoryDescription];
      v47 = [v46 setupAccessoryPayload];
      v48 = [v47 matterDeviceTypeID];
      v49 = [v8 setupAccessoryDescription];
      v50 = [v49 setupAccessoryPayload];
      *buf = 138413058;
      v57 = v13;
      v58 = 2112;
      v59 = v45;
      v60 = 2112;
      v61 = v48;
      v62 = 2112;
      v63 = v50;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@", buf, 0x2Au);
    }

    v11 = v53;
    v9 = v54;
  }

  return v13;
}

- (id)hu_preloadContent
{
  objc_initWeak(&location, self);
  v3 = [(HSPCNameServicesViewController *)self characteristicTypesToPreload];
  v4 = [(HSPCNameServicesViewController *)self servicesToPreload];
  v5 = [(HSPCNameServicesViewController *)self readCharacteristics:v3 inServices:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000579CC;
  v8[3] = &unk_1000C7BE8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

- (id)commitConfiguration
{
  v3 = [(HSPCNameServicesViewController *)self view];
  [v3 endEditing:1];

  v4 = [(HSPCNameServicesViewController *)self serviceNames];
  v5 = [NSSet setWithArray:v4];

  v6 = [v5 count];
  v7 = [(HSPCNameServicesViewController *)self serviceNames];
  v8 = [v7 count];

  if (v6 == v8)
  {
    v9 = [(HSPCNameServicesViewController *)self services];
    v10 = [NSSet setWithArray:v9];

    v11 = [(HSPCNameServicesViewController *)self enabledServices];
    v12 = [v10 na_setByRemovingObjectsFromSet:v11];

    v13 = [(HSPCNameServicesViewController *)self config];
    v14 = [(HSPCNameServicesViewController *)self serviceNames];
    v15 = [v13 validateNames:v14];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100057EB8;
    v29[3] = &unk_1000C68B8;
    v29[4] = self;
    v16 = [v15 flatMap:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100057F3C;
    v27[3] = &unk_1000C68B8;
    v28 = v12;
    v17 = v12;
    v18 = [v16 flatMap:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100057F50;
    v26[3] = &unk_1000C68B8;
    v26[4] = self;
    v19 = [v18 flatMap:v26];
    v20 = [v19 hs_commitConfigurationFutureWithContextMessage:@"Service updates"];
  }

  else
  {
    v21 = HULocalizedString();
    v22 = HULocalizedString();
    v10 = [UIAlertController alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    v23 = HULocalizedString();
    v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:0];
    [v10 addAction:v24];

    [(HSPCNameServicesViewController *)self presentViewController:v10 animated:1 completion:0];
    v20 = [NAFuture futureWithResult:&off_1000CDFD8];
  }

  return v20;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCNameServicesViewController;
  [(HSPCNameServicesViewController *)&v4 viewDidLoad];
  v3 = [(HSPCNameServicesViewController *)self tableView];
  [v3 reloadData];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [a3 tag], 0);
  [(HSPCNameServicesViewController *)self setIndexPathOfFirstResponder:v4];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  [v4 setText:v7];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v4 text];
    v10 = [v4 placeholder];
    *buf = 136315650;
    v19 = "[HSPCNameServicesViewController textFieldDidEndEditing:]";
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Title: %@ | Placeholder: %@", buf, 0x20u);
  }

  v11 = [v4 tag];
  if (v11 < 0 || (-[HSPCNameServicesViewController serviceNames](self, "serviceNames"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v11 >= v13))
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007B23C(self, v11, v17);
    }

    v15 = [(HSPCNameServicesViewController *)self serviceNames];
    NSLog(@"Well this isn't right, textfield is tagged with an invalid row tag: %ld, totalRows: %ld", v11, [v15 count]);
  }

  else
  {
    v14 = [(HSPCNameServicesViewController *)self serviceNames];
    v15 = [v14 mutableCopy];

    v16 = [v4 text];
    [v15 setObject:v16 atIndexedSubscript:v11];

    [(HSPCNameServicesViewController *)self setServiceNames:v15];
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  v6 = [(HSPCNameServicesViewController *)self tableView];
  v7 = [(HSPCNameServicesViewController *)self tableView:v6 numberOfRowsInSection:0];

  if (v5 >= v7 - 1)
  {
    [(HSPCNameServicesViewController *)self setIndexPathOfFirstResponder:0];
    [v4 resignFirstResponder];
  }

  else
  {
    v8 = [NSIndexPath indexPathForRow:v5 + 1 inSection:0];
    [(HSPCNameServicesViewController *)self setIndexPathOfFirstResponder:v8];
    objc_opt_class();
    v9 = [(HSPCNameServicesViewController *)self tableView];
    v10 = [v9 cellForRowAtIndexPath:v8];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [v12 textField];
      [v13 becomeFirstResponder];
    }

    else
    {
      v13 = [(HSPCNameServicesViewController *)self tableView];
      [v13 scrollToRowAtIndexPath:v8 atScrollPosition:2 animated:1];
    }
  }

  return 1;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(HSPCNameServicesViewController *)self indexPathOfFirstResponder];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    objc_opt_class();
    v10 = v14;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 textField];
    [v13 becomeFirstResponder];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(HSPCNameServicesViewController *)self _indexPathAllowsToggling:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(HSPCNameServicesViewController *)self _indexPathAllowsToggling:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_indexPathAllowsToggling:(id)a3
{
  v4 = [(HSPCNameServicesViewController *)self serviceForIndexPath:a3];
  v5 = [(HSPCNameServicesViewController *)self isServiceSelectable:v4];
  v6 = [(HSPCNameServicesViewController *)self frozenServices];
  v7 = [v6 containsObject:v4];

  return v5 & (v7 ^ 1);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 cellForRowAtIndexPath:v12];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(HSPCNameServicesViewController *)self serviceForIndexPath:v12];
    [v9 setSelected:1];
    v11 = [(HSPCNameServicesViewController *)self enabledServices];
    [v11 addObject:v10];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v12 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 cellForRowAtIndexPath:v12];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(HSPCNameServicesViewController *)self serviceForIndexPath:v12];
    [v9 setSelected:0];
    v11 = [(HSPCNameServicesViewController *)self enabledServices];
    [v11 removeObject:v10];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HSPCNameServicesViewController *)self services:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HSPCNameServicesViewController *)self services];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v10 = [(HSPCNameServicesViewController *)self cellReuseIdentifierForService:v9];
  v11 = [v6 dequeueReusableCellWithIdentifier:v10 forIndexPath:v7];

  v12 = [(HSPCNameServicesViewController *)self serviceNames];
  v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  [v11 updateUIWithService:v9 suggestedName:v13];
  objc_opt_class();
  v14 = v11;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = [(HSPCNameServicesViewController *)self frozenServices];
    [v16 setFrozen:{objc_msgSend(v17, "containsObject:", v9)}];
  }

  v18 = [v14 textField];
  [v18 setDelegate:self];

  v19 = [v7 row];
  v20 = [v14 textField];
  [v20 setTag:v19];

  v21 = [v7 row];
  v22 = -[HSPCNameServicesViewController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v6, [v7 section]) - 1;
  v23 = [v14 textField];
  v24 = v23;
  if (v21 == v22)
  {
    v25 = 9;
  }

  else
  {
    v25 = 4;
  }

  [v23 setReturnKeyType:v25];

  return v14;
}

- (id)cellReuseIdentifierForService:(id)a3
{
  v4 = a3;
  if ([(HSPCNameServicesViewController *)self isServiceSelectable:v4])
  {
    v5 = [v4 accessory];
    v6 = [(HSPCNameServicesViewController *)self config];
    v7 = [v6 addedAccessory];

    v8 = off_1000C4938;
    if (v5 == v7)
    {
      v8 = off_1000C4950;
    }
  }

  else
  {
    v8 = off_1000C4948;
  }

  v9 = [(__objc2_class *)*v8 _reuseIdentifier];

  return v9;
}

- (id)serviceForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HSPCNameServicesViewController *)self services];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (BOOL)isServiceSelectable:(id)a3
{
  v3 = [a3 serviceType];
  if ([v3 isEqualToString:HMServiceTypeInputSource])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:HMServiceTypeValve];
  }

  return v4;
}

- (NSSet)servicesToPreload
{
  v2 = [(HSPCNameServicesViewController *)self config];
  v3 = [v2 addedAccessory];

  v4 = [objc_opt_class() applicableServicesForAccessory:v3];

  return v4;
}

- (NSSet)characteristicTypesToPreload
{
  v5[0] = HMCharacteristicTypeIsConfigured;
  v5[1] = HMCharacteristicTypeConfiguredName;
  v5[2] = HMCharacteristicTypeName;
  v2 = [NSArray arrayWithObjects:v5 count:3];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)applicableServicesForAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 hf_primaryService];
  v5 = [v3 hf_visibleServices];

  v6 = [v4 hf_childServices];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  [NSSet setWithObjects:HMServiceTypeIrrigationSystem, HMServiceTypeValve, HMServiceTypeTelevision, HMServiceTypeInputSource, HMServiceTypeHeaterCooler, 0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100059080;
  v15 = v14[3] = &unk_1000C7C10;
  v8 = v15;
  v9 = [v7 na_filter:v14];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    v12 = [v9 count];
    *buf = 136315650;
    v17 = "+[HSPCNameServicesViewController applicableServicesForAccessory:]";
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s found %ld total services, %ld should be shown to user", buf, 0x20u);
  }

  return v9;
}

- (id)_enabledServicesSetFromServices:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100059158;
  v5[3] = &unk_1000C7C10;
  v5[4] = self;
  v3 = [a3 na_filter:v5];

  return v3;
}

- (id)_frozenServicesFromServices:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000591F4;
  v5[3] = &unk_1000C7C10;
  v5[4] = self;
  v3 = [a3 na_filter:v5];

  return v3;
}

- (id)suggestedNamesForServices:(id)a3
{
  v4 = a3;
  +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000592DC;
  v8[3] = &unk_1000C7C38;
  v9 = v8[4] = self;
  v5 = v9;
  v6 = [v4 na_map:v8];

  return v6;
}

- (id)_givenNameForService:(id)a3
{
  v3 = a3;
  v4 = [v3 configuredName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 configuredName];
  }

  else
  {
    v7 = [v3 serviceType];
    v8 = [v7 isEqualToString:HMServiceTypeInputSource];

    if (v8 && ([v3 defaultName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      v6 = [v3 defaultName];
    }

    else
    {
      v6 = [v3 hf_userFriendlyLocalizedCapitalizedDescription];
    }
  }

  v11 = v6;

  return v11;
}

- (void)_logDetailedServices
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HSPCNameServicesViewController is operating on the following services:", buf, 2u);
  }

  v4 = [(HSPCNameServicesViewController *)self services];
  v5 = [v4 count];

  if (v5)
  {
    v7 = 0;
    *&v6 = 138413058;
    v19 = v6;
    do
    {
      v8 = [(HSPCNameServicesViewController *)self services];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [(HSPCNameServicesViewController *)self serviceNames];
      v11 = [v10 objectAtIndexedSubscript:v7];

      v12 = [(HSPCNameServicesViewController *)self frozenServices];
      v13 = [v12 containsObject:v9];

      v14 = [(HSPCNameServicesViewController *)self enabledServices];
      v15 = [v14 containsObject:v9];

      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v19;
        v21 = v11;
        v22 = 1024;
        v23 = v13;
        v24 = 1024;
        v25 = v15;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ : isFrozen: %d : startsEnabled: %d : %@", buf, 0x22u);
      }

      ++v7;
      v17 = [(HSPCNameServicesViewController *)self services];
      v18 = [v17 count];
    }

    while (v7 < v18);
  }
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end
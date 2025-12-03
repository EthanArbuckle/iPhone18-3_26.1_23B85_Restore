@interface HSPCNameServicesViewController
+ (id)applicableServicesForAccessory:(id)accessory;
- (BOOL)_indexPathAllowsToggling:(id)toggling;
- (BOOL)isServiceSelectable:(id)selectable;
- (BOOL)textFieldShouldReturn:(id)return;
- (HSPCNameServicesViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (NSSet)characteristicTypesToPreload;
- (NSSet)servicesToPreload;
- (UITableView)tableView;
- (id)_enabledServicesSetFromServices:(id)services;
- (id)_frozenServicesFromServices:(id)services;
- (id)_givenNameForService:(id)service;
- (id)cellReuseIdentifierForService:(id)service;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)readCharacteristics:(id)characteristics inServices:(id)services;
- (id)serviceForIndexPath:(id)path;
- (id)suggestedNamesForServices:(id)services;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_logDetailedServices;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation HSPCNameServicesViewController

- (id)readCharacteristics:(id)characteristics inServices:(id)services
{
  characteristicsCopy = characteristics;
  servicesCopy = services;
  if ([characteristicsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000572D8;
    v15[3] = &unk_1000C7B80;
    v16 = servicesCopy;
    v8 = [characteristicsCopy na_flatMap:v15];
    config = [(HSPCNameServicesViewController *)self config];
    home = [config home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];
    v12 = [hf_characteristicValueManager readValuesForCharacteristics:v8];
    v13 = [v12 flatMap:&stru_1000C7BC0];
  }

  else
  {
    v13 = +[NAFuture futureWithNoResult];
  }

  return v13;
}

- (HSPCNameServicesViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
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
    v54 = configCopy;
    objc_storeStrong(&v12->_config, config);
    objc_storeStrong(&v13->_coordinator, coordinator);
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

    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
    v41 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCNameServicesViewController *)v13 setTitle:v41];

    v42 = HULocalizedString();
    [(HSPCNameServicesViewController *)v13 setSubtitle:v42];

    v43 = [(HSPCNameServicesViewController *)v13 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v13 futureSelector:"commitConfiguration"];
    v44 = HFLogForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = NSStringFromSelector(aSelector);
      setupAccessoryDescription2 = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload2 = [setupAccessoryDescription2 setupAccessoryPayload];
      matterDeviceTypeID2 = [setupAccessoryPayload2 matterDeviceTypeID];
      setupAccessoryDescription3 = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload3 = [setupAccessoryDescription3 setupAccessoryPayload];
      *buf = 138413058;
      v57 = v13;
      v58 = 2112;
      v59 = v45;
      v60 = 2112;
      v61 = matterDeviceTypeID2;
      v62 = 2112;
      v63 = setupAccessoryPayload3;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@", buf, 0x2Au);
    }

    v11 = v53;
    configCopy = v54;
  }

  return v13;
}

- (id)hu_preloadContent
{
  objc_initWeak(&location, self);
  characteristicTypesToPreload = [(HSPCNameServicesViewController *)self characteristicTypesToPreload];
  servicesToPreload = [(HSPCNameServicesViewController *)self servicesToPreload];
  v5 = [(HSPCNameServicesViewController *)self readCharacteristics:characteristicTypesToPreload inServices:servicesToPreload];
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
  view = [(HSPCNameServicesViewController *)self view];
  [view endEditing:1];

  serviceNames = [(HSPCNameServicesViewController *)self serviceNames];
  v5 = [NSSet setWithArray:serviceNames];

  v6 = [v5 count];
  serviceNames2 = [(HSPCNameServicesViewController *)self serviceNames];
  v8 = [serviceNames2 count];

  if (v6 == v8)
  {
    services = [(HSPCNameServicesViewController *)self services];
    v10 = [NSSet setWithArray:services];

    enabledServices = [(HSPCNameServicesViewController *)self enabledServices];
    v12 = [v10 na_setByRemovingObjectsFromSet:enabledServices];

    config = [(HSPCNameServicesViewController *)self config];
    serviceNames3 = [(HSPCNameServicesViewController *)self serviceNames];
    v15 = [config validateNames:serviceNames3];
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
  tableView = [(HSPCNameServicesViewController *)self tableView];
  [tableView reloadData];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [editing tag], 0);
  [(HSPCNameServicesViewController *)self setIndexPathOfFirstResponder:v4];
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [text stringByTrimmingCharactersInSet:v6];
  [editingCopy setText:v7];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    text2 = [editingCopy text];
    placeholder = [editingCopy placeholder];
    *buf = 136315650;
    v19 = "[HSPCNameServicesViewController textFieldDidEndEditing:]";
    v20 = 2112;
    v21 = text2;
    v22 = 2112;
    v23 = placeholder;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Title: %@ | Placeholder: %@", buf, 0x20u);
  }

  v11 = [editingCopy tag];
  if (v11 < 0 || (-[HSPCNameServicesViewController serviceNames](self, "serviceNames"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v11 >= v13))
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007B23C(self, v11, v17);
    }

    serviceNames = [(HSPCNameServicesViewController *)self serviceNames];
    NSLog(@"Well this isn't right, textfield is tagged with an invalid row tag: %ld, totalRows: %ld", v11, [serviceNames count]);
  }

  else
  {
    serviceNames2 = [(HSPCNameServicesViewController *)self serviceNames];
    serviceNames = [serviceNames2 mutableCopy];

    text3 = [editingCopy text];
    [serviceNames setObject:text3 atIndexedSubscript:v11];

    [(HSPCNameServicesViewController *)self setServiceNames:serviceNames];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = [returnCopy tag];
  tableView = [(HSPCNameServicesViewController *)self tableView];
  v7 = [(HSPCNameServicesViewController *)self tableView:tableView numberOfRowsInSection:0];

  if (v5 >= v7 - 1)
  {
    [(HSPCNameServicesViewController *)self setIndexPathOfFirstResponder:0];
    [returnCopy resignFirstResponder];
  }

  else
  {
    v8 = [NSIndexPath indexPathForRow:v5 + 1 inSection:0];
    [(HSPCNameServicesViewController *)self setIndexPathOfFirstResponder:v8];
    objc_opt_class();
    tableView2 = [(HSPCNameServicesViewController *)self tableView];
    v10 = [tableView2 cellForRowAtIndexPath:v8];
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
      textField = [v12 textField];
      [textField becomeFirstResponder];
    }

    else
    {
      textField = [(HSPCNameServicesViewController *)self tableView];
      [textField scrollToRowAtIndexPath:v8 atScrollPosition:2 animated:1];
    }
  }

  return 1;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  indexPathOfFirstResponder = [(HSPCNameServicesViewController *)self indexPathOfFirstResponder];
  v9 = [pathCopy isEqual:indexPathOfFirstResponder];

  if (v9)
  {
    objc_opt_class();
    v10 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    textField = [v12 textField];
    [textField becomeFirstResponder];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(HSPCNameServicesViewController *)self _indexPathAllowsToggling:pathCopy])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(HSPCNameServicesViewController *)self _indexPathAllowsToggling:pathCopy])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_indexPathAllowsToggling:(id)toggling
{
  v4 = [(HSPCNameServicesViewController *)self serviceForIndexPath:toggling];
  v5 = [(HSPCNameServicesViewController *)self isServiceSelectable:v4];
  frozenServices = [(HSPCNameServicesViewController *)self frozenServices];
  v7 = [frozenServices containsObject:v4];

  return v5 & (v7 ^ 1);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];

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
    v10 = [(HSPCNameServicesViewController *)self serviceForIndexPath:pathCopy];
    [v9 setSelected:1];
    enabledServices = [(HSPCNameServicesViewController *)self enabledServices];
    [enabledServices addObject:v10];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];

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
    v10 = [(HSPCNameServicesViewController *)self serviceForIndexPath:pathCopy];
    [v9 setSelected:0];
    enabledServices = [(HSPCNameServicesViewController *)self enabledServices];
    [enabledServices removeObject:v10];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HSPCNameServicesViewController *)self services:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  services = [(HSPCNameServicesViewController *)self services];
  v9 = [services objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v10 = [(HSPCNameServicesViewController *)self cellReuseIdentifierForService:v9];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

  serviceNames = [(HSPCNameServicesViewController *)self serviceNames];
  v13 = [serviceNames objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

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
    frozenServices = [(HSPCNameServicesViewController *)self frozenServices];
    [v16 setFrozen:{objc_msgSend(frozenServices, "containsObject:", v9)}];
  }

  textField = [v14 textField];
  [textField setDelegate:self];

  v19 = [pathCopy row];
  textField2 = [v14 textField];
  [textField2 setTag:v19];

  v21 = [pathCopy row];
  v22 = -[HSPCNameServicesViewController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", viewCopy, [pathCopy section]) - 1;
  textField3 = [v14 textField];
  v24 = textField3;
  if (v21 == v22)
  {
    v25 = 9;
  }

  else
  {
    v25 = 4;
  }

  [textField3 setReturnKeyType:v25];

  return v14;
}

- (id)cellReuseIdentifierForService:(id)service
{
  serviceCopy = service;
  if ([(HSPCNameServicesViewController *)self isServiceSelectable:serviceCopy])
  {
    accessory = [serviceCopy accessory];
    config = [(HSPCNameServicesViewController *)self config];
    addedAccessory = [config addedAccessory];

    v8 = off_1000C4938;
    if (accessory == addedAccessory)
    {
      v8 = off_1000C4950;
    }
  }

  else
  {
    v8 = off_1000C4948;
  }

  _reuseIdentifier = [(__objc2_class *)*v8 _reuseIdentifier];

  return _reuseIdentifier;
}

- (id)serviceForIndexPath:(id)path
{
  pathCopy = path;
  services = [(HSPCNameServicesViewController *)self services];
  v6 = [pathCopy row];

  v7 = [services objectAtIndexedSubscript:v6];

  return v7;
}

- (BOOL)isServiceSelectable:(id)selectable
{
  serviceType = [selectable serviceType];
  if ([serviceType isEqualToString:HMServiceTypeInputSource])
  {
    v4 = 1;
  }

  else
  {
    v4 = [serviceType isEqualToString:HMServiceTypeValve];
  }

  return v4;
}

- (NSSet)servicesToPreload
{
  config = [(HSPCNameServicesViewController *)self config];
  addedAccessory = [config addedAccessory];

  v4 = [objc_opt_class() applicableServicesForAccessory:addedAccessory];

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

+ (id)applicableServicesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  hf_primaryService = [accessoryCopy hf_primaryService];
  hf_visibleServices = [accessoryCopy hf_visibleServices];

  hf_childServices = [hf_primaryService hf_childServices];
  v7 = [hf_visibleServices setByAddingObjectsFromSet:hf_childServices];

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

- (id)_enabledServicesSetFromServices:(id)services
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100059158;
  v5[3] = &unk_1000C7C10;
  v5[4] = self;
  v3 = [services na_filter:v5];

  return v3;
}

- (id)_frozenServicesFromServices:(id)services
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000591F4;
  v5[3] = &unk_1000C7C10;
  v5[4] = self;
  v3 = [services na_filter:v5];

  return v3;
}

- (id)suggestedNamesForServices:(id)services
{
  servicesCopy = services;
  +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [servicesCopy count]);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000592DC;
  v8[3] = &unk_1000C7C38;
  v9 = v8[4] = self;
  v5 = v9;
  v6 = [servicesCopy na_map:v8];

  return v6;
}

- (id)_givenNameForService:(id)service
{
  serviceCopy = service;
  configuredName = [serviceCopy configuredName];
  v5 = [configuredName length];

  if (v5)
  {
    configuredName2 = [serviceCopy configuredName];
  }

  else
  {
    serviceType = [serviceCopy serviceType];
    v8 = [serviceType isEqualToString:HMServiceTypeInputSource];

    if (v8 && ([serviceCopy defaultName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      configuredName2 = [serviceCopy defaultName];
    }

    else
    {
      configuredName2 = [serviceCopy hf_userFriendlyLocalizedCapitalizedDescription];
    }
  }

  v11 = configuredName2;

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

  services = [(HSPCNameServicesViewController *)self services];
  v5 = [services count];

  if (v5)
  {
    v7 = 0;
    *&v6 = 138413058;
    v19 = v6;
    do
    {
      services2 = [(HSPCNameServicesViewController *)self services];
      v9 = [services2 objectAtIndexedSubscript:v7];

      serviceNames = [(HSPCNameServicesViewController *)self serviceNames];
      v11 = [serviceNames objectAtIndexedSubscript:v7];

      frozenServices = [(HSPCNameServicesViewController *)self frozenServices];
      v13 = [frozenServices containsObject:v9];

      enabledServices = [(HSPCNameServicesViewController *)self enabledServices];
      v15 = [enabledServices containsObject:v9];

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
      services3 = [(HSPCNameServicesViewController *)self services];
      v18 = [services3 count];
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
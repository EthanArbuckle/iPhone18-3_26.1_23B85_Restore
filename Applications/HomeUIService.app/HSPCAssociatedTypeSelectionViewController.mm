@interface HSPCAssociatedTypeSelectionViewController
- (HSPCAssociatedTypeSelectionViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (UITableView)tableView;
- (id)commitConfiguration;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HSPCAssociatedTypeSelectionViewController

- (HSPCAssociatedTypeSelectionViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v9];
  v47.receiver = self;
  v47.super_class = HSPCAssociatedTypeSelectionViewController;
  v11 = [(HSPCAssociatedTypeSelectionViewController *)&v47 initWithContentView:v10];
  v12 = v11;
  if (v11)
  {
    v46 = v10;
    objc_storeStrong(&v11->_config, a4);
    objc_storeStrong(&v12->_coordinator, a3);
    v13 = objc_storeWeak(&v12->_tableView, v9);
    [v9 setDelegate:v12];

    WeakRetained = objc_loadWeakRetained(&v12->_tableView);
    [WeakRetained setDataSource:v12];

    v15 = +[UIColor systemBackgroundColor];
    v16 = objc_loadWeakRetained(&v12->_tableView);
    [v16 setBackgroundColor:v15];

    v17 = objc_loadWeakRetained(&v12->_tableView);
    [v17 setRowHeight:44.0];

    +[HSPCRow leadingSeparatorMargin];
    v19 = v18;
    v20 = objc_loadWeakRetained(&v12->_tableView);
    [v20 setSeparatorInset:{0.0, v19, 0.0, 0.0}];

    v21 = objc_loadWeakRetained(&v12->_tableView);
    [v21 _setTopPadding:0.0];

    v22 = objc_loadWeakRetained(&v12->_tableView);
    [v22 _setBottomPadding:0.0];

    v23 = objc_loadWeakRetained(&v12->_tableView);
    [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

    v24 = [(HSPCAssociatedTypeSelectionViewController *)v12 config];
    v25 = [v24 addedAccessory];
    v26 = [v25 hf_primaryService];
    service = v12->_service;
    v12->_service = v26;

    v28 = [(HMService *)v12->_service serviceType];
    defaultAssociatedServiceType = v12->_defaultAssociatedServiceType;
    v12->_defaultAssociatedServiceType = v28;

    v30 = [(HMService *)v12->_service serviceType];
    v31 = [HFAssociatedServiceTypeFactory associatedServiceTypesArrayFor:v30];
    possibleAssociatedServiceTypes = v12->_possibleAssociatedServiceTypes;
    v12->_possibleAssociatedServiceTypes = v31;

    v33 = HULocalizedString();
    [(HSPCAssociatedTypeSelectionViewController *)v12 setTitle:v33];

    v34 = [v7 activeTuple];
    v35 = [v34 accessoryCategoryOrPrimaryServiceType];
    v36 = v7;
    v37 = [v7 setupAccessoryDescription];
    v38 = [v37 setupAccessoryPayload];
    v39 = [v38 matterDeviceTypeID];
    v40 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCAssociatedTypeSelectionViewController *)v12 setSubtitle:v40];

    v41 = [(HSPCAssociatedTypeSelectionViewController *)v12 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v12 futureSelector:"commitConfiguration"];
    v42 = HFLogForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v12->_service;
      *buf = 136315394;
      v49 = "[HSPCAssociatedTypeSelectionViewController initWithCoordinator:config:]";
      v50 = 2112;
      v51 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s acting on %@", buf, 0x16u);
    }

    v44 = v12;
    v7 = v36;
    v10 = v46;
  }

  return v12;
}

- (id)commitConfiguration
{
  v3 = [(HSPCAssociatedTypeSelectionViewController *)self tableView];
  v4 = [v3 indexPathForSelectedRow];
  v5 = [v4 row];

  v6 = [(HSPCAssociatedTypeSelectionViewController *)self possibleAssociatedServiceTypes];
  v7 = [v6 objectAtIndexedSubscript:v5];

  v8 = [NAFuture futureWithResult:&off_1000CD9C0];
  v9 = [(HSPCAssociatedTypeSelectionViewController *)self service];
  v10 = v9;
  if (v9)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10004EDF4;
    v26[3] = &unk_1000C63A0;
    v11 = v9;
    v27 = v11;
    v12 = v7;
    v28 = v12;
    v13 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v26];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004EE04;
    v22[3] = &unk_1000C7498;
    v23 = v12;
    v24 = v11;
    v14 = v8;
    v25 = v14;
    v15 = [v13 flatMap:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004EED0;
    v20[3] = &unk_1000C5998;
    v21 = v14;
    v16 = v14;
    v8 = [v15 recover:v20];
  }

  else
  {
    v17 = [(HSPCAssociatedTypeSelectionViewController *)self config];
    v18 = [v17 addedAccessory];
    NSLog(@"Attempting to set an associated service on an accessory without any services that support that: %@", v18);
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCAssociatedTypeSelectionViewController;
  [(HSPCAssociatedTypeSelectionViewController *)&v4 viewDidLoad];
  v3 = [(HSPCAssociatedTypeSelectionViewController *)self tableView];
  [v3 reloadData];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  [v6 setAccessoryType:3];

  return v5;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  [v6 setAccessoryType:0];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HSPCAssociatedTypeSelectionViewController *)self possibleAssociatedServiceTypes:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  v9 = [(HSPCAssociatedTypeSelectionViewController *)self possibleAssociatedServiceTypes];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  [v8 updateUIWithServiceType:v10];
  v11 = [v7 indexPathForSelectedRow];

  LODWORD(v7) = [v11 isEqual:v6];
  if (v7)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessoryType:v12];

  return v8;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end
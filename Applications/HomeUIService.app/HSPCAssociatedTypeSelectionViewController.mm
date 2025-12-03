@interface HSPCAssociatedTypeSelectionViewController
- (HSPCAssociatedTypeSelectionViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (UITableView)tableView;
- (id)commitConfiguration;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation HSPCAssociatedTypeSelectionViewController

- (HSPCAssociatedTypeSelectionViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v9];
  v47.receiver = self;
  v47.super_class = HSPCAssociatedTypeSelectionViewController;
  v11 = [(HSPCAssociatedTypeSelectionViewController *)&v47 initWithContentView:v10];
  v12 = v11;
  if (v11)
  {
    v46 = v10;
    objc_storeStrong(&v11->_config, config);
    objc_storeStrong(&v12->_coordinator, coordinator);
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

    config = [(HSPCAssociatedTypeSelectionViewController *)v12 config];
    addedAccessory = [config addedAccessory];
    hf_primaryService = [addedAccessory hf_primaryService];
    service = v12->_service;
    v12->_service = hf_primaryService;

    serviceType = [(HMService *)v12->_service serviceType];
    defaultAssociatedServiceType = v12->_defaultAssociatedServiceType;
    v12->_defaultAssociatedServiceType = serviceType;

    serviceType2 = [(HMService *)v12->_service serviceType];
    v31 = [HFAssociatedServiceTypeFactory associatedServiceTypesArrayFor:serviceType2];
    possibleAssociatedServiceTypes = v12->_possibleAssociatedServiceTypes;
    v12->_possibleAssociatedServiceTypes = v31;

    v33 = HULocalizedString();
    [(HSPCAssociatedTypeSelectionViewController *)v12 setTitle:v33];

    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    v36 = coordinatorCopy;
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
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
    coordinatorCopy = v36;
    v10 = v46;
  }

  return v12;
}

- (id)commitConfiguration
{
  tableView = [(HSPCAssociatedTypeSelectionViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  v5 = [indexPathForSelectedRow row];

  possibleAssociatedServiceTypes = [(HSPCAssociatedTypeSelectionViewController *)self possibleAssociatedServiceTypes];
  v7 = [possibleAssociatedServiceTypes objectAtIndexedSubscript:v5];

  v8 = [NAFuture futureWithResult:&off_1000CD9C0];
  service = [(HSPCAssociatedTypeSelectionViewController *)self service];
  v10 = service;
  if (service)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10004EDF4;
    v26[3] = &unk_1000C63A0;
    v11 = service;
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
    config = [(HSPCAssociatedTypeSelectionViewController *)self config];
    addedAccessory = [config addedAccessory];
    NSLog(@"Attempting to set an associated service on an accessory without any services that support that: %@", addedAccessory);
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCAssociatedTypeSelectionViewController;
  [(HSPCAssociatedTypeSelectionViewController *)&v4 viewDidLoad];
  tableView = [(HSPCAssociatedTypeSelectionViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  [v6 setAccessoryType:3];

  return pathCopy;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  [v6 setAccessoryType:0];

  return pathCopy;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HSPCAssociatedTypeSelectionViewController *)self possibleAssociatedServiceTypes:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  possibleAssociatedServiceTypes = [(HSPCAssociatedTypeSelectionViewController *)self possibleAssociatedServiceTypes];
  v10 = [possibleAssociatedServiceTypes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [v8 updateUIWithServiceType:v10];
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];

  LODWORD(viewCopy) = [indexPathForSelectedRow isEqual:pathCopy];
  if (viewCopy)
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
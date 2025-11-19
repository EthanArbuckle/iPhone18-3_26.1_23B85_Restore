@interface HSPCResumeSelectAccessoryViewController
- (HSPCResumeSelectAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (UITableView)tableView;
- (id)commitConfiguration;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HSPCResumeSelectAccessoryViewController

- (HSPCResumeSelectAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v9];
  v39.receiver = self;
  v39.super_class = HSPCResumeSelectAccessoryViewController;
  v11 = [(HSPCResumeSelectAccessoryViewController *)&v39 initWithContentView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_config, a4);
    objc_storeStrong(&v12->_coordinator, a3);
    v13 = HULocalizedString();
    [(HSPCResumeSelectAccessoryViewController *)v12 setTitle:v13];

    v14 = objc_storeWeak(&v12->_tableView, v9);
    [v9 setDelegate:v12];

    WeakRetained = objc_loadWeakRetained(&v12->_tableView);
    [WeakRetained setDataSource:v12];

    v16 = +[UIColor systemBackgroundColor];
    v17 = objc_loadWeakRetained(&v12->_tableView);
    [v17 setBackgroundColor:v16];

    v18 = objc_loadWeakRetained(&v12->_tableView);
    [v18 setRowHeight:44.0];

    +[HSPCRow leadingSeparatorMargin];
    v20 = v19;
    v21 = objc_loadWeakRetained(&v12->_tableView);
    [v21 setSeparatorInset:{0.0, v20, 0.0, 0.0}];

    v22 = objc_loadWeakRetained(&v12->_tableView);
    [v22 _setTopPadding:0.0];

    v23 = objc_loadWeakRetained(&v12->_tableView);
    [v23 _setBottomPadding:0.0];

    v24 = objc_loadWeakRetained(&v12->_tableView);
    [v24 setAllowsMultipleSelection:1];

    v25 = objc_loadWeakRetained(&v12->_tableView);
    [v25 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

    v26 = [(HSPCResumeSelectAccessoryViewController *)v12 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v12 futureSelector:"commitConfiguration"];
    continueAction = v12->_continueAction;
    v12->_continueAction = v26;

    v28 = [v7 topAccessoryTuple];
    v29 = [NSMutableArray arrayWithObject:v28];

    v30 = [v7 bridgedAccessories];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000466A8;
    v37[3] = &unk_1000C7628;
    v38 = v7;
    v31 = [v30 na_filter:v37];
    [v29 addObjectsFromArray:v31];

    v32 = [v29 copy];
    accessoriesPendingConfiguration = v12->_accessoriesPendingConfiguration;
    v12->_accessoriesPendingConfiguration = v32;

    v34 = [NSMutableSet setWithArray:v12->_accessoriesPendingConfiguration];
    selectedAccessories = v12->_selectedAccessories;
    v12->_selectedAccessories = v34;
  }

  return v12;
}

- (id)commitConfiguration
{
  v3 = [(HSPCResumeSelectAccessoryViewController *)self coordinator];
  v4 = [(HSPCResumeSelectAccessoryViewController *)self selectedAccessories];
  v5 = [v4 na_map:&stru_1000C7668];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100046860;
  v10[3] = &unk_1000C5F38;
  v11 = v3;
  v12 = v5;
  v6 = v5;
  v7 = v3;
  v8 = [NAFuture futureWithBlock:v10];

  return v8;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HSPCResumeSelectAccessoryViewController;
  [(HSPCResumeSelectAccessoryViewController *)&v2 viewDidLoad];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForRowAtIndexPath:v6];
  v8 = [v7 accessoryView];
  [v8 setHidden:0];

  v9 = [(HSPCResumeSelectAccessoryViewController *)self selectedAccessories];
  v10 = [(HSPCResumeSelectAccessoryViewController *)self accessoriesPendingConfiguration];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v9 addObject:v11];

  v12 = [(HSPCResumeSelectAccessoryViewController *)self selectedAccessories];
  v13 = [v12 count] != 0;
  v14 = [(HSPCResumeSelectAccessoryViewController *)self continueAction];
  [v14 setEnabled:v13];

  return v6;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForRowAtIndexPath:v6];
  v8 = [v7 accessoryView];
  [v8 setHidden:1];

  v9 = [(HSPCResumeSelectAccessoryViewController *)self selectedAccessories];
  v10 = [(HSPCResumeSelectAccessoryViewController *)self accessoriesPendingConfiguration];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v9 removeObject:v11];

  v12 = [(HSPCResumeSelectAccessoryViewController *)self selectedAccessories];
  v13 = [v12 count] != 0;
  v14 = [(HSPCResumeSelectAccessoryViewController *)self continueAction];
  [v14 setEnabled:v13];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HSPCResumeSelectAccessoryViewController *)self accessoriesPendingConfiguration:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  v8 = [(HSPCResumeSelectAccessoryViewController *)self accessoriesPendingConfiguration];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  [v7 updateUIWithTuple:v10];

  v11 = [UIImageView alloc];
  v12 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v13 = [v11 initWithImage:v12];
  [v7 setAccessoryView:v13];

  return v7;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end
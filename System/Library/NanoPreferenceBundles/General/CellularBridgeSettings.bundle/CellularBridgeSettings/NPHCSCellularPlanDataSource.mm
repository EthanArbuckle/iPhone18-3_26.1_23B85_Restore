@interface NPHCSCellularPlanDataSource
- (NPHCSCellularPlanDataSource)initWithDelegate:(id)delegate;
- (void)_cellularPlanInfoDidChange:(id)change;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation NPHCSCellularPlanDataSource

- (NPHCSCellularPlanDataSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = NPHCSCellularPlanDataSource;
  v5 = [(NPHCSCellularPlanDataSource *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(NPHCSCellularPlanDataSource *)v5 setDelegate:delegateCopy];
    v7 = [CoreTelephonyClient alloc];
    v8 = dispatch_get_global_queue(0, 0);
    v9 = [v7 initWithQueue:v8];
    [(NPHCSCellularPlanDataSource *)v6 setCoreTelephonyClient:v9];

    coreTelephonyClient = [(NPHCSCellularPlanDataSource *)v6 coreTelephonyClient];
    [coreTelephonyClient setDelegate:v6];

    v11 = +[NPHCellularBridgeUIManager sharedInstance];
    [v11 startRemoteProvisioning];

    v12 = +[NPHCellularBridgeUIManager sharedInstance];
    [v12 updateCellularPlansWithFetch:1];

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = NPHCellularPlanInfoDidChangeNotification;
    v15 = +[NPHCellularBridgeUIManager sharedInstance];
    [v13 addObserver:v6 selector:"_cellularPlanInfoDidChange:" name:v14 object:v15];
  }

  return v6;
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[NPHCSCellularPlanDataSource simStatusDidChange:status:]";
    v13 = 2112;
    v14 = changeCopy;
    v15 = 2112;
    v16 = statusCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s context:%@ status:%@", &v11, 0x20u);
  }

  delegate = [(NPHCSCellularPlanDataSource *)self delegate];
  cellularPlansDictionary = [(NPHCSCellularPlanDataSource *)self cellularPlansDictionary];
  [delegate cellularPlansUpdated:cellularPlansDictionary error:0];
}

- (void)_cellularPlanInfoDidChange:(id)change
{
  changeCopy = change;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[NPHCSCellularPlanDataSource _cellularPlanInfoDidChange:]";
    v34 = 2112;
    v35 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s - notification:%@", buf, 0x16u);
  }

  v6 = +[NPHCellularBridgeUIManager sharedInstance];
  cellularPlans = [v6 cellularPlans];

  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[NPHCSCellularPlanDataSource _cellularPlanInfoDidChange:]";
    v34 = 2112;
    v35 = cellularPlans;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s -- cellularPlans:%@", buf, 0x16u);
  }

  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cellularPlans count]);
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cellularPlans count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = cellularPlans;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if ([v16 shouldDisplay])
        {
          if ([v16 isSelectable])
          {
            v17 = v9;
          }

          else
          {
            v17 = v10;
          }

          [v17 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v13);
  }

  v29[0] = kActiveCellularPlans;
  v18 = [v9 copy];
  v29[1] = kInactiveCellularPlans;
  v30[0] = v18;
  v19 = [v10 copy];
  v30[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  [(NPHCSCellularPlanDataSource *)self setCellularPlansDictionary:v20];

  delegate = [(NPHCSCellularPlanDataSource *)self delegate];
  cellularPlansDictionary = [(NPHCSCellularPlanDataSource *)self cellularPlansDictionary];
  userInfo = [changeCopy userInfo];
  v24 = [userInfo objectForKeyedSubscript:NPHCellularPlanInfoError];
  [delegate cellularPlansUpdated:cellularPlansDictionary error:v24];
}

@end
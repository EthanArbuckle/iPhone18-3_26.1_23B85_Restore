@interface MapDataSubscriptionsDebugViewController
- (id)_configuredCellForSubscriptionIdentifier:(id)identifier;
- (void)_reloadSubscriptions;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MapDataSubscriptionsDebugViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v8 = [pathCopy row];
    if (v8 >= [(NSArray *)self->_subscriptions count])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: (NSUInteger)indexPath.row < _subscriptions.count", v12, 2u);
      }
    }

    else
    {
      v9 = -[NSArray objectAtIndexedSubscript:](self->_subscriptions, "objectAtIndexedSubscript:", [pathCopy row]);
      v10 = [[MapDataSubscriptionDetailsDebugViewController alloc] initWithSubscription:v9];
      navigationController = [(MapDataSubscriptionsDebugViewController *)self navigationController];
      [navigationController pushViewController:v10 animated:1];

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }
}

- (void)_reloadSubscriptions
{
  objc_initWeak(&location, self);
  subscriptionManager = self->_subscriptionManager;
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100936BA0;
  v5[3] = &unk_10165F290;
  objc_copyWeak(&v6, &location);
  [(GEOMapDataSubscriptionManager *)subscriptionManager fetchAllSubscriptionsWithCallbackQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_configuredCellForSubscriptionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = self->_subscriptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v6)
  {
    v7 = *v40;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v40 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v39 + 1) + 8 * v8);
      subscription = [v9 subscription];
      identifier = [subscription identifier];
      v12 = [identifier isEqual:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v13 = v9;

    if (!v13)
    {
      v6 = 0;
      goto LABEL_19;
    }

    tableView = [(MapDataSubscriptionsDebugViewController *)self tableView];
    v6 = [tableView dequeueReusableCellWithIdentifier:@"subscription"];

    state = [(NSArray *)v13 state];
    v16 = +[UIListContentConfiguration subtitleCellConfiguration];
    subscription2 = [(NSArray *)v13 subscription];
    identifier2 = [subscription2 identifier];
    [v16 setText:identifier2];

    subscription3 = [(NSArray *)v13 subscription];
    [subscription3 policy];
    v20 = GEOMapDataSubscriptionPolicyAsString();
    [subscription3 dataTypes];
    v21 = GEOMapDataSubscriptionDataTypeAsString();
    v22 = [NSString stringWithFormat:@"%@ • %@", v20, v21];

    [v16 setSecondaryText:v22];
    if ([state loadState])
    {
      [v6 setAccessoryView:0];
      [v6 setAccessoryType:1];
    }

    else
    {
      objc_initWeak(&location, self);
      downloadProgress = [state downloadProgress];
      v24 = downloadProgress == 0;

      if (v24)
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100937B84;
        v32[3] = &unk_101660418;
        objc_copyWeak(&v34, &location);
        v33 = v13;
        v28 = [UIAction actionWithHandler:v32];
        v29 = [UIButton buttonWithType:0 primaryAction:v28];

        v30 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
        [v29 setImage:v30 forState:0];

        [v29 sizeToFit];
        [v6 setAccessoryView:v29];

        objc_destroyWeak(&v34);
      }

      else
      {
        v25 = objc_alloc_init(MUCircleProgressObservingView);
        v26 = [UIImage systemImageNamed:@"stop.fill"];
        [v25 setImage:v26];

        downloadProgress2 = [state downloadProgress];
        [v25 setProgress:downloadProgress2];

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100937AF4;
        v35[3] = &unk_101661340;
        objc_copyWeak(&v37, &location);
        v36 = v13;
        [v25 setPrimaryAction:v35];
        [v6 setAccessoryView:v25];

        objc_destroyWeak(&v37);
      }

      objc_destroyWeak(&location);
    }

    [v6 setContentConfiguration:v16];

    v5 = v13;
  }

LABEL_18:

LABEL_19:

  return v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MapDataSubscriptionsDebugViewController;
  [(MapDataSubscriptionsDebugViewController *)&v4 viewWillDisappear:disappear];
  notify_cancel(self->_subscriptionsChangedNotifyToken);
  self->_subscriptionsChangedNotifyToken = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = MapDataSubscriptionsDebugViewController;
  [(MapDataSubscriptionsDebugViewController *)&v14 viewWillAppear:appear];
  if (!self->_subscriptionManager)
  {
    v4 = objc_alloc_init(GEOMapDataSubscriptionManager);
    subscriptionManager = self->_subscriptionManager;
    self->_subscriptionManager = v4;
  }

  objc_initWeak(&location, self);
  v6 = GEOMapDataSubscriptionManagerSubscriptionsDidChangeDarwinNotification;
  v7 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100937DC0;
  v11 = &unk_101658C08;
  objc_copyWeak(&v12, &location);
  notify_register_dispatch(v6, &self->_subscriptionsChangedNotifyToken, &_dispatch_main_q, &v8);

  [(MapDataSubscriptionsDebugViewController *)self _reloadSubscriptions:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = MapDataSubscriptionsDebugViewController;
  [(MapDataSubscriptionsDebugViewController *)&v20 viewDidLoad];
  tableView = [(MapDataSubscriptionsDebugViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"subscription"];

  tableView2 = [(MapDataSubscriptionsDebugViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"map"];

  objc_initWeak(&location, self);
  v5 = [UITableViewDiffableDataSource alloc];
  tableView3 = [(MapDataSubscriptionsDebugViewController *)self tableView];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100937FFC;
  v17 = &unk_10162F088;
  objc_copyWeak(&v18, &location);
  v7 = [v5 initWithTableView:tableView3 cellProvider:&v14];
  dataSource = self->_dataSource;
  self->_dataSource = v7;

  v9 = self->_dataSource;
  v10 = [(MapDataSubscriptionsDebugViewController *)self tableView:v14];
  [v10 setDataSource:v9];

  v11 = objc_alloc_init(_MapDataSubscriptionStateObserverRegistry);
  observerRegistry = self->_observerRegistry;
  self->_observerRegistry = v11;

  v13 = self->_observerRegistry;
  if (v13)
  {
    objc_storeStrong(&v13->_dataSource, self->_dataSource);
  }

  [(MapDataSubscriptionsDebugViewController *)self setTitle:@"Data Subscriptions"];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end
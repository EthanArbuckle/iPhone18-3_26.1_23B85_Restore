@interface ICDeviceListRequest
+ (id)combineICloudDevices:(id)a3 withCloudKitDevices:(id)a4;
+ (id)filteredDevices:(id)a3;
+ (id)setOfDeviceNamesFromDevices:(id)a3;
- (BOOL)anyDeviceNeedsUpgrade;
- (BOOL)anyDeviceNotUpgradable;
- (BOOL)anyOSXDeviceNotUpgraded;
- (BOOL)waitForFetchWithTimeout:(double)a3;
- (ICDeviceListRequest)initWithAccount:(id)a3;
- (void)fetchCloudKitDevicesWithCompletionBlock:(id)a3;
- (void)fetchICloudDevicesWithCompletionBlock:(id)a3;
- (void)fetchWithCompletionBlock:(id)a3;
@end

@implementation ICDeviceListRequest

- (ICDeviceListRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICDeviceListRequest;
  v6 = [(ICDeviceListRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = dispatch_semaphore_create(0);
    workSemaphore = v7->_workSemaphore;
    v7->_workSemaphore = v8;
  }

  return v7;
}

- (BOOL)anyDeviceNeedsUpgrade
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ICDeviceListRequest *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) upgraded])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)anyDeviceNotUpgradable
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ICDeviceListRequest *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) upgradable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)anyOSXDeviceNotUpgraded
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ICDeviceListRequest *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isOSXDevice] && !objc_msgSend(v6, "upgraded"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)waitForFetchWithTimeout:(double)a3
{
  v4 = self;
  v5 = [(ICDeviceListRequest *)self workSemaphore];
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_semaphore_wait(v5, v6);

  v7 = [(ICDeviceListRequest *)v4 devices];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

- (void)fetchCloudKitDevicesWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [AACloudKitDevicesListRequest alloc];
  v6 = [(ICDeviceListRequest *)self account];
  v7 = [v5 initWithAccount:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100056920;
  v9[3] = &unk_1007121D8;
  v10 = v4;
  v8 = v4;
  [v7 performRequestWithHandler:v9];
}

- (void)fetchICloudDevicesWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 name];
  v7 = [v5 systemName];
  v8 = [v5 systemVersion];
  v9 = [NSString stringWithFormat:@"%@%@", v7, v8];;

  v10 = [AADeviceListRequest alloc];
  v11 = [(ICDeviceListRequest *)self account];
  v12 = [v10 initWithAccount:v11];

  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100056CAC;
  v16[3] = &unk_100712200;
  objc_copyWeak(&v20, &location);
  v13 = v6;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v4;
  v19 = v15;
  [v12 performRequestWithHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)fetchWithCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000570D4;
  v7[3] = &unk_1007122C8;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

+ (id)filteredDevices:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 shouldBeHidden] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)setOfDeviceNamesFromDevices:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 name];

        if (v11)
        {
          v12 = [v10 name];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)combineICloudDevices:(id)a3 withCloudKitDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 setOfDeviceNamesFromDevices:v6];
  v9 = [NSMutableArray arrayWithArray:v6];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 name];

        if (v16)
        {
          v17 = [v15 name];
          v18 = [v8 containsObject:v17];

          if ((v18 & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

@end
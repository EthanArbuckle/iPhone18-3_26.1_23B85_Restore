@interface HDHealthServicesServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (HDHealthServicesServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)connectionInterrupted;
- (void)remote_addPairingForHealthService:(id)a3 withCompletion:(id)a4;
- (void)remote_addPeripheral:(id)a3 name:(id)a4 forServices:(id)a5 withCompletion:(id)a6;
- (void)remote_beginBluetoothStatusUpdates:(id)a3;
- (void)remote_endBluetoothStatusUpdates;
- (void)remote_endHealthServiceDiscovery:(unint64_t)a3;
- (void)remote_endHealthServiceSession:(unint64_t)a3;
- (void)remote_fetchSupportedServiceIDsWithCompletion:(id)a3;
- (void)remote_getEnabledStatusForPeripheral:(id)a3 withCompletion:(id)a4;
- (void)remote_getHealthPeripheralsWithFilter:(unint64_t)a3 handler:(id)a4;
- (void)remote_getHealthServiceProperty:(id)a3 forSession:(unint64_t)a4 withHandler:(id)a5;
- (void)remote_getSupportedPropertyNamesWithHandler:(id)a3;
- (void)remote_performHealthServiceOperation:(id)a3 onSession:(unint64_t)a4 withParameters:(id)a5 completion:(id)a6;
- (void)remote_removePairingForHealthService:(id)a3 withCompletion:(id)a4;
- (void)remote_removePeripheral:(id)a3 withCompletion:(id)a4;
- (void)remote_setEnabledStatus:(BOOL)a3 forPeripheral:(id)a4 withCompletion:(id)a5;
- (void)remote_startHealthServiceDiscovery:(int64_t)a3 withCompletion:(id)a4;
- (void)remote_startHealthServiceSession:(id)a3 withCompletion:(id)a4;
@end

@implementation HDHealthServicesServer

- (HDHealthServicesServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HDHealthServicesServer;
  v11 = [(HDHealthServicesServer *)&v18 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [v10 profile];
    v15 = [v14 serviceManager];
    healthServiceManager = v11->_healthServiceManager;
    v11->_healthServiceManager = v15;
  }

  return v11;
}

- (void)remote_fetchSupportedServiceIDsWithCompletion:(id)a3
{
  v4 = a3;
  v3 = HDHealthPeripheralProfiles();
  if (v4)
  {
    v4[2](v4, v3, 0);
  }
}

- (void)remote_startHealthServiceDiscovery:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    sub_2D60C(self, &v7, a3, v6);
  }
}

- (void)remote_startHealthServiceSession:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [HDDaemonTransaction transactionWithOwner:self activityName:@"StartSession"];
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AE70;
    block[3] = &unk_5CEF0;
    v13 = v7;
    v14 = self;
    v16 = v8;
    v17 = a2;
    v15 = v9;
    v11 = v9;
    dispatch_async(queue, block);
  }
}

- (void)remote_getHealthPeripheralsWithFilter:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    sub_2D948(self, &v7, a3, v6);
  }
}

- (void)remote_addPairingForHealthService:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    sub_2DA10();
  }
}

- (void)remote_removePairingForHealthService:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    sub_2DAD4();
  }
}

- (void)remote_addPeripheral:(id)a3 name:(id)a4 forServices:(id)a5 withCompletion:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (v10)
  {
    v11 = [HDDaemonTransaction transactionWithOwner:self activityName:@"AddPeripheral"];
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_BAE8;
    block[3] = &unk_5CEF0;
    v15 = v9;
    v16 = self;
    v18 = v10;
    v19 = a2;
    v17 = v11;
    v13 = v11;
    dispatch_async(queue, block);
  }
}

- (void)remote_removePeripheral:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    sub_2DB98();
  }
}

- (void)remote_getEnabledStatusForPeripheral:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    sub_2DC5C(self, &v8, v6, v7);
  }
}

- (void)remote_setEnabledStatus:(BOOL)a3 forPeripheral:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [HDDaemonTransaction transactionWithOwner:self activityName:@"SetPeripheralStatus"];
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2D0F0;
    block[3] = &unk_5CFA8;
    block[4] = self;
    v17 = a3;
    v14 = v8;
    v15 = v10;
    v16 = v9;
    v12 = v10;
    dispatch_async(queue, block);
  }
}

- (void)remote_getSupportedPropertyNamesWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sub_2DD3C(self, v5, v4);
  }
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 serviceManager];

  if (v16)
  {
    v17 = [[HDHealthServicesServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
  }

  else
  {
    v18 = +[NSError hk_featureUnavailableForProfileError];
    if (v18)
    {
      if (a7)
      {
        v19 = v18;
        *a7 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

+ (id)requiredEntitlements
{
  v4 = HKPrivateHealthKitEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)connectionInterrupted
{
  if (a1)
  {
    [a1 remote_endBluetoothStatusUpdates];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = [a1[4] allValues];
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        v6 = 0;
        do
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [a1 remote_endHealthServiceDiscovery:{objc_msgSend(*(*(&v16 + 1) + 8 * v6), "integerValue")}];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v4);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [a1[6] allValues];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [a1 remote_endHealthServiceSession:{objc_msgSend(*(*(&v12 + 1) + 8 * v11), "integerValue")}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)remote_beginBluetoothStatusUpdates:(id)a3
{
  v4 = a3;
  [HDDaemonTransaction transactionWithOwner:self activityName:@"BeginStatusUpdates"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  sub_4FB4();
  sub_7D04();
  v10 = v6;
  v7 = v6;
  v8 = v4;
  sub_C2AC();
  dispatch_async(queue, v9);
}

- (void)remote_endBluetoothStatusUpdates
{
  [HDDaemonTransaction transactionWithOwner:self activityName:@"EndStatusUpdates"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  sub_7C60();
  sub_7D74();
  v7 = v4;
  v5 = v4;
  sub_C2DC();
  dispatch_async(queue, v6);
}

- (void)remote_endHealthServiceDiscovery:(unint64_t)a3
{
  [HDDaemonTransaction transactionWithOwner:self activityName:@"EndDiscovery"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  sub_7C60();
  sub_7D74();
  v8 = v5;
  v6 = v5;
  sub_C2DC();
  dispatch_async(queue, v7);
}

- (void)remote_endHealthServiceSession:(unint64_t)a3
{
  [HDDaemonTransaction transactionWithOwner:self activityName:@"EndSession"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  sub_4FB4();
  sub_7D04();
  v8 = v5;
  v6 = v5;
  sub_C2AC();
  dispatch_async(queue, v7);
}

- (void)remote_getHealthServiceProperty:(id)a3 forSession:(unint64_t)a4 withHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  [HDDaemonTransaction transactionWithOwner:self activityName:@"GetProperty"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  sub_4FB4();
  sub_7D04();
  v15 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v7;
  sub_C2AC();
  dispatch_async(queue, v14);
}

- (void)remote_performHealthServiceOperation:(id)a3 onSession:(unint64_t)a4 withParameters:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  [HDDaemonTransaction transactionWithOwner:self activityName:@"PerformOperation"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  sub_7C60();
  sub_7D74();
  v19 = v10;
  v20 = v13;
  v14 = v13;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  sub_C2DC();
  dispatch_async(queue, v18);
}

@end
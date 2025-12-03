@interface HDHealthServicesServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (HDHealthServicesServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)connectionInterrupted;
- (void)remote_addPairingForHealthService:(id)service withCompletion:(id)completion;
- (void)remote_addPeripheral:(id)peripheral name:(id)name forServices:(id)services withCompletion:(id)completion;
- (void)remote_beginBluetoothStatusUpdates:(id)updates;
- (void)remote_endBluetoothStatusUpdates;
- (void)remote_endHealthServiceDiscovery:(unint64_t)discovery;
- (void)remote_endHealthServiceSession:(unint64_t)session;
- (void)remote_fetchSupportedServiceIDsWithCompletion:(id)completion;
- (void)remote_getEnabledStatusForPeripheral:(id)peripheral withCompletion:(id)completion;
- (void)remote_getHealthPeripheralsWithFilter:(unint64_t)filter handler:(id)handler;
- (void)remote_getHealthServiceProperty:(id)property forSession:(unint64_t)session withHandler:(id)handler;
- (void)remote_getSupportedPropertyNamesWithHandler:(id)handler;
- (void)remote_performHealthServiceOperation:(id)operation onSession:(unint64_t)session withParameters:(id)parameters completion:(id)completion;
- (void)remote_removePairingForHealthService:(id)service withCompletion:(id)completion;
- (void)remote_removePeripheral:(id)peripheral withCompletion:(id)completion;
- (void)remote_setEnabledStatus:(BOOL)status forPeripheral:(id)peripheral withCompletion:(id)completion;
- (void)remote_startHealthServiceDiscovery:(int64_t)discovery withCompletion:(id)completion;
- (void)remote_startHealthServiceSession:(id)session withCompletion:(id)completion;
@end

@implementation HDHealthServicesServer

- (HDHealthServicesServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = HDHealthServicesServer;
  v11 = [(HDHealthServicesServer *)&v18 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    profile = [clientCopy profile];
    serviceManager = [profile serviceManager];
    healthServiceManager = v11->_healthServiceManager;
    v11->_healthServiceManager = serviceManager;
  }

  return v11;
}

- (void)remote_fetchSupportedServiceIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = HDHealthPeripheralProfiles();
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v3, 0);
  }
}

- (void)remote_startHealthServiceDiscovery:(int64_t)discovery withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    sub_2D60C(self, &v7, discovery, completionCopy);
  }
}

- (void)remote_startHealthServiceSession:(id)session withCompletion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  if (completionCopy)
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
    v13 = sessionCopy;
    selfCopy = self;
    v16 = completionCopy;
    v17 = a2;
    v15 = v9;
    v11 = v9;
    dispatch_async(queue, block);
  }
}

- (void)remote_getHealthPeripheralsWithFilter:(unint64_t)filter handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    sub_2D948(self, &v7, filter, handlerCopy);
  }
}

- (void)remote_addPairingForHealthService:(id)service withCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (completionCopy)
  {
    sub_2DA10();
  }
}

- (void)remote_removePairingForHealthService:(id)service withCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (completionCopy)
  {
    sub_2DAD4();
  }
}

- (void)remote_addPeripheral:(id)peripheral name:(id)name forServices:(id)services withCompletion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  if (completionCopy)
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
    v15 = servicesCopy;
    selfCopy = self;
    v18 = completionCopy;
    v19 = a2;
    v17 = v11;
    v13 = v11;
    dispatch_async(queue, block);
  }
}

- (void)remote_removePeripheral:(id)peripheral withCompletion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  if (completionCopy)
  {
    sub_2DB98();
  }
}

- (void)remote_getEnabledStatusForPeripheral:(id)peripheral withCompletion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  if (completionCopy)
  {
    sub_2DC5C(self, &v8, peripheralCopy, completionCopy);
  }
}

- (void)remote_setEnabledStatus:(BOOL)status forPeripheral:(id)peripheral withCompletion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  if (completionCopy)
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
    statusCopy = status;
    v14 = peripheralCopy;
    v15 = v10;
    v16 = completionCopy;
    v12 = v10;
    dispatch_async(queue, block);
  }
}

- (void)remote_getSupportedPropertyNamesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    sub_2DD3C(self, v5, handlerCopy);
  }
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  serviceManager = [profile serviceManager];

  if (serviceManager)
  {
    v17 = [[HDHealthServicesServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  }

  else
  {
    v18 = +[NSError hk_featureUnavailableForProfileError];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
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
  if (self)
  {
    [self remote_endBluetoothStatusUpdates];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [self[4] allValues];
    v3 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [self remote_endHealthServiceDiscovery:{objc_msgSend(*(*(&v16 + 1) + 8 * v6), "integerValue")}];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v4);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues2 = [self[6] allValues];
    v8 = [allValues2 countByEnumeratingWithState:&v12 objects:v20 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          [self remote_endHealthServiceSession:{objc_msgSend(*(*(&v12 + 1) + 8 * v11), "integerValue")}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [allValues2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)remote_beginBluetoothStatusUpdates:(id)updates
{
  updatesCopy = updates;
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
  v8 = updatesCopy;
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

- (void)remote_endHealthServiceDiscovery:(unint64_t)discovery
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

- (void)remote_endHealthServiceSession:(unint64_t)session
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

- (void)remote_getHealthServiceProperty:(id)property forSession:(unint64_t)session withHandler:(id)handler
{
  propertyCopy = property;
  handlerCopy = handler;
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
  v12 = handlerCopy;
  v13 = propertyCopy;
  sub_C2AC();
  dispatch_async(queue, v14);
}

- (void)remote_performHealthServiceOperation:(id)operation onSession:(unint64_t)session withParameters:(id)parameters completion:(id)completion
{
  operationCopy = operation;
  parametersCopy = parameters;
  completionCopy = completion;
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
  v19 = parametersCopy;
  v20 = v13;
  v14 = v13;
  v15 = completionCopy;
  v16 = parametersCopy;
  v17 = operationCopy;
  sub_C2DC();
  dispatch_async(queue, v18);
}

@end
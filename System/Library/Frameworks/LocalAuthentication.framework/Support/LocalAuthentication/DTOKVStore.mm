@interface DTOKVStore
- (DTOKVStore)initWithWorkQueue:(id)queue;
- (int64_t)_storageKeyForKVSKey:(int64_t)key;
- (void)_removeValueForKey:(int64_t)key contextUUID:(id)d connection:(id)connection storage:(id)storage completion:(id)completion;
- (void)_setValue:(id)value forKey:(int64_t)key contextUUID:(id)d connection:(id)connection storage:(id)storage completion:(id)completion;
- (void)_valueForKey:(int64_t)key connection:(id)connection storage:(id)storage completion:(id)completion;
- (void)processReadRequest:(id)request completion:(id)completion;
- (void)processWriteRequest:(id)request completion:(id)completion;
- (void)setValue:(id)value forKey:(int64_t)key completion:(id)completion;
- (void)setValue:(id)value forKey:(int64_t)key connection:(id)connection completion:(id)completion;
- (void)setValue:(id)value forKey:(int64_t)key contextUUID:(id)d completion:(id)completion;
- (void)setValue:(id)value forKey:(int64_t)key contextUUID:(id)d connection:(id)connection completion:(id)completion;
- (void)valueForKey:(int64_t)key completion:(id)completion;
- (void)valueForKey:(int64_t)key connection:(id)connection completion:(id)completion;
@end

@implementation DTOKVStore

- (DTOKVStore)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = DTOKVStore;
  v6 = [(DTOKVStore *)&v15 init];
  if (v6)
  {
    v7 = +[SecureStorageProvider sharedInstance];
    secureStorage = [v7 secureStorage];
    storage = v6->_storage;
    v6->_storage = secureStorage;

    v10 = +[SecureStorageProvider sharedInstance];
    v11 = [[LACSecureStorageConfiguration alloc] initWithBypassEntitlementChecks:1];
    v12 = [v10 secureStorageWithConfig:v11];
    uncheckedStorage = v6->_uncheckedStorage;
    v6->_uncheckedStorage = v12;

    objc_storeStrong(&v6->_workQueue, queue);
  }

  return v6;
}

- (void)valueForKey:(int64_t)key completion:(id)completion
{
  completionCopy = completion;
  v6 = [[LACDTOMutableKVStoreReadRequest alloc] initWithKey:key];
  [(DTOKVStore *)self processReadRequest:v6 completion:completionCopy];
}

- (void)valueForKey:(int64_t)key connection:(id)connection completion:(id)completion
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100002D74;
  v14 = &unk_100054CB0;
  connectionCopy = connection;
  keyCopy = key;
  v8 = connectionCopy;
  completionCopy = completion;
  v10 = sub_100002D74(&v11);
  [(DTOKVStore *)self processReadRequest:v10 completion:completionCopy, v11, v12, v13, v14];
}

- (void)processReadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = [requestCopy key];
  connection = [requestCopy connection];
  v9 = connection;
  if (!connection)
  {
    v9 = +[NSXPCConnection currentConnection];
  }

  bypassEntitlements = [requestCopy bypassEntitlements];
  v11 = 8;
  if (bypassEntitlements)
  {
    v11 = 16;
  }

  [(DTOKVStore *)self _valueForKey:v7 connection:v9 storage:*(&self->super.isa + v11) completion:completionCopy];

  if (!connection)
  {
  }
}

- (void)setValue:(id)value forKey:(int64_t)key completion:(id)completion
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100002F74;
  v14 = &unk_100054CD8;
  valueCopy = value;
  keyCopy = key;
  v8 = valueCopy;
  completionCopy = completion;
  v10 = sub_100002F74(&v11);
  [(DTOKVStore *)self processWriteRequest:v10 completion:completionCopy, v11, v12, v13, v14];
}

- (void)setValue:(id)value forKey:(int64_t)key connection:(id)connection completion:(id)completion
{
  valueCopy = value;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000030B8;
  v15[3] = &unk_100054D00;
  connectionCopy = connection;
  keyCopy = key;
  v16 = valueCopy;
  v11 = connectionCopy;
  v12 = valueCopy;
  completionCopy = completion;
  v14 = sub_1000030B8(v15);
  [(DTOKVStore *)self processWriteRequest:v14 completion:completionCopy];
}

- (void)setValue:(id)value forKey:(int64_t)key contextUUID:(id)d completion:(id)completion
{
  valueCopy = value;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003210;
  v15[3] = &unk_100054D00;
  dCopy = d;
  keyCopy = key;
  v16 = valueCopy;
  v11 = dCopy;
  v12 = valueCopy;
  completionCopy = completion;
  v14 = sub_100003210(v15);
  [(DTOKVStore *)self processWriteRequest:v14 completion:completionCopy];
}

- (void)setValue:(id)value forKey:(int64_t)key contextUUID:(id)d connection:(id)connection completion:(id)completion
{
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100003388;
  v20 = &unk_100054D28;
  valueCopy = value;
  dCopy = d;
  connectionCopy = connection;
  keyCopy = key;
  v12 = connectionCopy;
  v13 = dCopy;
  v14 = valueCopy;
  completionCopy = completion;
  v16 = sub_100003388(&v17);
  [(DTOKVStore *)self processWriteRequest:v16 completion:completionCopy, v17, v18, v19, v20];
}

- (void)processWriteRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  connection = [requestCopy connection];
  v8 = connection;
  if (connection)
  {
    v9 = connection;
  }

  else
  {
    v9 = +[NSXPCConnection currentConnection];
  }

  v10 = v9;

  bypassEntitlements = [requestCopy bypassEntitlements];
  v12 = 8;
  if (bypassEntitlements)
  {
    v12 = 16;
  }

  v13 = *(&self->super.isa + v12);
  value = [requestCopy value];

  if (value)
  {
    value2 = [requestCopy value];
    v16 = [requestCopy key];
    contextUUID = [requestCopy contextUUID];
    [(DTOKVStore *)self _setValue:value2 forKey:v16 contextUUID:contextUUID connection:v10 storage:v13 completion:completionCopy];

    v13 = contextUUID;
  }

  else
  {
    v18 = [requestCopy key];
    value2 = [requestCopy contextUUID];
    [(DTOKVStore *)self _removeValueForKey:v18 contextUUID:value2 connection:v10 storage:v13 completion:completionCopy];
  }
}

- (void)_valueForKey:(int64_t)key connection:(id)connection storage:(id)storage completion:(id)completion
{
  connectionCopy = connection;
  storageCopy = storage;
  completionCopy = completion;
  v13 = [(DTOKVStore *)self _storageKeyForKVSKey:key];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003698;
  v15[3] = &unk_100054D50;
  v17[1] = v13;
  objc_copyWeak(v17, &location);
  v14 = completionCopy;
  v16 = v14;
  v17[2] = key;
  [storageCopy objectForKey:v13 contextUUID:0 connection:connectionCopy completionHandler:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)_setValue:(id)value forKey:(int64_t)key contextUUID:(id)d connection:(id)connection storage:(id)storage completion:(id)completion
{
  valueCopy = value;
  dCopy = d;
  connectionCopy = connection;
  storageCopy = storage;
  completionCopy = completion;
  v19 = [(DTOKVStore *)self _storageKeyForKVSKey:key];
  objc_initWeak(&location, self);
  data = [valueCopy data];
  v21 = objc_opt_new();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003AF4;
  v23[3] = &unk_100054D78;
  v25[1] = v19;
  objc_copyWeak(v25, &location);
  v22 = completionCopy;
  v24 = v22;
  [storageCopy setObject:data acl:v21 forKey:v19 options:0 contextUUID:dCopy connection:connectionCopy completionHandler:v23];

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

- (void)_removeValueForKey:(int64_t)key contextUUID:(id)d connection:(id)connection storage:(id)storage completion:(id)completion
{
  dCopy = d;
  connectionCopy = connection;
  storageCopy = storage;
  completionCopy = completion;
  v16 = [(DTOKVStore *)self _storageKeyForKVSKey:key];
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003D5C;
  v18[3] = &unk_100054D78;
  v20[1] = v16;
  objc_copyWeak(v20, &location);
  v17 = completionCopy;
  v19 = v17;
  [storageCopy removeObjectForKey:v16 contextUUID:dCopy connection:connectionCopy completionHandler:v18];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (int64_t)_storageKeyForKVSKey:(int64_t)key
{
  if (key <= 2)
  {
    if (key)
    {
      if (key == 1)
      {
        v3 = &LACStorageKeyDSLMode;
      }

      else
      {
        if (key != 2)
        {
          return self;
        }

        v3 = &LACStorageKeyDSLLostModeEnabled;
      }
    }

    else
    {
      v3 = &LACStorageKeyDSLModeEnabled;
    }
  }

  else if (key > 4)
  {
    if (key == 5)
    {
      v3 = &LACStorageKeyInstalledBiometricSensorUUID;
    }

    else
    {
      if (key != 6)
      {
        return self;
      }

      v3 = &LACStorageKeyTrustedBiometricSensorUUID;
    }
  }

  else if (key == 3)
  {
    v3 = &LACStorageKeyBiometricLivenessFlag;
  }

  else
  {
    v3 = &LACStorageKeyDSLStrictModeEnabled;
  }

  return *v3;
}

@end
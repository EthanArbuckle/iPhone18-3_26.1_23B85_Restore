@interface DTOKVStore
- (DTOKVStore)initWithWorkQueue:(id)a3;
- (int64_t)_storageKeyForKVSKey:(int64_t)a3;
- (void)_removeValueForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 storage:(id)a6 completion:(id)a7;
- (void)_setValue:(id)a3 forKey:(int64_t)a4 contextUUID:(id)a5 connection:(id)a6 storage:(id)a7 completion:(id)a8;
- (void)_valueForKey:(int64_t)a3 connection:(id)a4 storage:(id)a5 completion:(id)a6;
- (void)processReadRequest:(id)a3 completion:(id)a4;
- (void)processWriteRequest:(id)a3 completion:(id)a4;
- (void)setValue:(id)a3 forKey:(int64_t)a4 completion:(id)a5;
- (void)setValue:(id)a3 forKey:(int64_t)a4 connection:(id)a5 completion:(id)a6;
- (void)setValue:(id)a3 forKey:(int64_t)a4 contextUUID:(id)a5 completion:(id)a6;
- (void)setValue:(id)a3 forKey:(int64_t)a4 contextUUID:(id)a5 connection:(id)a6 completion:(id)a7;
- (void)valueForKey:(int64_t)a3 completion:(id)a4;
- (void)valueForKey:(int64_t)a3 connection:(id)a4 completion:(id)a5;
@end

@implementation DTOKVStore

- (DTOKVStore)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = DTOKVStore;
  v6 = [(DTOKVStore *)&v15 init];
  if (v6)
  {
    v7 = +[SecureStorageProvider sharedInstance];
    v8 = [v7 secureStorage];
    storage = v6->_storage;
    v6->_storage = v8;

    v10 = +[SecureStorageProvider sharedInstance];
    v11 = [[LACSecureStorageConfiguration alloc] initWithBypassEntitlementChecks:1];
    v12 = [v10 secureStorageWithConfig:v11];
    uncheckedStorage = v6->_uncheckedStorage;
    v6->_uncheckedStorage = v12;

    objc_storeStrong(&v6->_workQueue, a3);
  }

  return v6;
}

- (void)valueForKey:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [[LACDTOMutableKVStoreReadRequest alloc] initWithKey:a3];
  [(DTOKVStore *)self processReadRequest:v6 completion:v5];
}

- (void)valueForKey:(int64_t)a3 connection:(id)a4 completion:(id)a5
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100002D74;
  v14 = &unk_100054CB0;
  v15 = a4;
  v16 = a3;
  v8 = v15;
  v9 = a5;
  v10 = sub_100002D74(&v11);
  [(DTOKVStore *)self processReadRequest:v10 completion:v9, v11, v12, v13, v14];
}

- (void)processReadRequest:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 key];
  v8 = [v12 connection];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSXPCConnection currentConnection];
  }

  v10 = [v12 bypassEntitlements];
  v11 = 8;
  if (v10)
  {
    v11 = 16;
  }

  [(DTOKVStore *)self _valueForKey:v7 connection:v9 storage:*(&self->super.isa + v11) completion:v6];

  if (!v8)
  {
  }
}

- (void)setValue:(id)a3 forKey:(int64_t)a4 completion:(id)a5
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100002F74;
  v14 = &unk_100054CD8;
  v15 = a3;
  v16 = a4;
  v8 = v15;
  v9 = a5;
  v10 = sub_100002F74(&v11);
  [(DTOKVStore *)self processWriteRequest:v10 completion:v9, v11, v12, v13, v14];
}

- (void)setValue:(id)a3 forKey:(int64_t)a4 connection:(id)a5 completion:(id)a6
{
  v10 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000030B8;
  v15[3] = &unk_100054D00;
  v17 = a5;
  v18 = a4;
  v16 = v10;
  v11 = v17;
  v12 = v10;
  v13 = a6;
  v14 = sub_1000030B8(v15);
  [(DTOKVStore *)self processWriteRequest:v14 completion:v13];
}

- (void)setValue:(id)a3 forKey:(int64_t)a4 contextUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003210;
  v15[3] = &unk_100054D00;
  v17 = a5;
  v18 = a4;
  v16 = v10;
  v11 = v17;
  v12 = v10;
  v13 = a6;
  v14 = sub_100003210(v15);
  [(DTOKVStore *)self processWriteRequest:v14 completion:v13];
}

- (void)setValue:(id)a3 forKey:(int64_t)a4 contextUUID:(id)a5 connection:(id)a6 completion:(id)a7
{
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100003388;
  v20 = &unk_100054D28;
  v21 = a3;
  v22 = a5;
  v23 = a6;
  v24 = a4;
  v12 = v23;
  v13 = v22;
  v14 = v21;
  v15 = a7;
  v16 = sub_100003388(&v17);
  [(DTOKVStore *)self processWriteRequest:v16 completion:v15, v17, v18, v19, v20];
}

- (void)processWriteRequest:(id)a3 completion:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 connection];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSXPCConnection currentConnection];
  }

  v10 = v9;

  v11 = [v19 bypassEntitlements];
  v12 = 8;
  if (v11)
  {
    v12 = 16;
  }

  v13 = *(&self->super.isa + v12);
  v14 = [v19 value];

  if (v14)
  {
    v15 = [v19 value];
    v16 = [v19 key];
    v17 = [v19 contextUUID];
    [(DTOKVStore *)self _setValue:v15 forKey:v16 contextUUID:v17 connection:v10 storage:v13 completion:v6];

    v13 = v17;
  }

  else
  {
    v18 = [v19 key];
    v15 = [v19 contextUUID];
    [(DTOKVStore *)self _removeValueForKey:v18 contextUUID:v15 connection:v10 storage:v13 completion:v6];
  }
}

- (void)_valueForKey:(int64_t)a3 connection:(id)a4 storage:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DTOKVStore *)self _storageKeyForKVSKey:a3];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003698;
  v15[3] = &unk_100054D50;
  v17[1] = v13;
  objc_copyWeak(v17, &location);
  v14 = v12;
  v16 = v14;
  v17[2] = a3;
  [v11 objectForKey:v13 contextUUID:0 connection:v10 completionHandler:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)_setValue:(id)a3 forKey:(int64_t)a4 contextUUID:(id)a5 connection:(id)a6 storage:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(DTOKVStore *)self _storageKeyForKVSKey:a4];
  objc_initWeak(&location, self);
  v20 = [v14 data];
  v21 = objc_opt_new();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003AF4;
  v23[3] = &unk_100054D78;
  v25[1] = v19;
  objc_copyWeak(v25, &location);
  v22 = v18;
  v24 = v22;
  [v17 setObject:v20 acl:v21 forKey:v19 options:0 contextUUID:v15 connection:v16 completionHandler:v23];

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

- (void)_removeValueForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 storage:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(DTOKVStore *)self _storageKeyForKVSKey:a3];
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003D5C;
  v18[3] = &unk_100054D78;
  v20[1] = v16;
  objc_copyWeak(v20, &location);
  v17 = v15;
  v19 = v17;
  [v14 removeObjectForKey:v16 contextUUID:v12 connection:v13 completionHandler:v18];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (int64_t)_storageKeyForKVSKey:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = &LACStorageKeyDSLMode;
      }

      else
      {
        if (a3 != 2)
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

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v3 = &LACStorageKeyInstalledBiometricSensorUUID;
    }

    else
    {
      if (a3 != 6)
      {
        return self;
      }

      v3 = &LACStorageKeyTrustedBiometricSensorUUID;
    }
  }

  else if (a3 == 3)
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
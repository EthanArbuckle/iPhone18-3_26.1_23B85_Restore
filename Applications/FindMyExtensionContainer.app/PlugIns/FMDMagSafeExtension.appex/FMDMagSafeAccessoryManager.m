@interface FMDMagSafeAccessoryManager
+ (id)sharedInstance;
- (FMDMagSafeAccessoryManager)init;
- (id)connectdAccessoryWithSerialNumber:(id)a3;
- (id)getAllAccessories;
- (id)getFindMyEnabledAccessories;
- (id)styleFor:(id)a3;
- (void)accessoryDidConnect:(id)a3;
- (void)accessoryDidDisconnect:(id)a3;
- (void)accessoryDidUpdate:(id)a3;
- (void)conncetionStatusFor:(id)a3 withCompletion:(id)a4;
- (void)launchSetupModuleWithInfo2:(id)a3 withCompletion:(id)a4;
- (void)launchSetupModuleWithInfo:(id)a3 withCompletion:(id)a4;
- (void)removeAccesoryWithSerialNumber:(id)a3 completion:(id)a4;
- (void)setPhoneNumberForAccessoryId:(id)a3 phoneNumber:(id)a4 completion:(id)a5;
- (void)updateCompletedFor:(id)a3 withCompletion:(id)a4;
@end

@implementation FMDMagSafeAccessoryManager

+ (id)sharedInstance
{
  if (qword_100030B50 != -1)
  {
    sub_1000157B4();
  }

  v3 = qword_100030B48;

  return v3;
}

- (FMDMagSafeAccessoryManager)init
{
  v21.receiver = self;
  v21.super_class = FMDMagSafeAccessoryManager;
  v2 = [(FMDMagSafeAccessoryManager *)&v21 init];
  if (v2)
  {
    v3 = +[FMDMagSafeDataStore sharedInstance];
    [(FMDMagSafeAccessoryManager *)v2 setDataSource:v3];

    v4 = objc_alloc_init(NSLock);
    accessoriesLock = v2->_accessoriesLock;
    v2->_accessoriesLock = v4;

    v6 = [(FMDMagSafeAccessoryManager *)v2 getFindMyEnabledAccessories];
    [(NSLock *)v2->_accessoriesLock lock];
    [(FMDMagSafeAccessoryManager *)v2 setAllAccessories:v6];
    [(NSLock *)v2->_accessoriesLock unlock];
    v7 = objc_alloc_init(NSLock);
    groupLock = v2->_groupLock;
    v2->_groupLock = v7;

    v9 = sub_100004FC8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "initialising core accessory manager", v20, 2u);
    }

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("FMDMagSafeAccessoryManager.serialQueue", v10);
    [(FMDMagSafeAccessoryManager *)v2 setSerialQueue:v11];

    v12 = dispatch_group_create();
    [(FMDMagSafeAccessoryManager *)v2 setCaGroup:v12];

    v13 = [(FMDMagSafeAccessoryManager *)v2 caGroup];
    dispatch_group_enter(v13);

    v14 = [[FMDCoreAccessoryManager alloc] initWithDelegate:v2];
    [(FMDMagSafeAccessoryManager *)v2 setCaAccessoryManager:v14];

    v15 = [(FMDMagSafeAccessoryManager *)v2 caGroup];
    v16 = dispatch_time(0, 1000000000);
    v17 = dispatch_group_wait(v15, v16);

    if (v17)
    {
      v18 = sub_100001508();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000157C8();
      }
    }
  }

  return v2;
}

- (id)getFindMyEnabledAccessories
{
  v2 = [(FMDMagSafeAccessoryManager *)self dataSource];
  v3 = [v2 readAllAccessoriesFromDisk];

  v4 = objc_alloc_init(NSMutableDictionary);
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
        v11 = [v5 objectForKeyedSubscript:{v10, v13}];
        if ([v11 findMyEnabled])
        {
          [v4 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)getAllAccessories
{
  v3 = [(FMDMagSafeAccessoryManager *)self getFindMyEnabledAccessories];
  [(NSLock *)self->_accessoriesLock lock];
  [(FMDMagSafeAccessoryManager *)self setAllAccessories:v3];
  [(NSLock *)self->_accessoriesLock unlock];
  v4 = [(FMDMagSafeAccessoryManager *)self allAccessories];

  return v4;
}

- (void)conncetionStatusFor:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSLock *)self->_accessoriesLock lock];
  v8 = [(FMDMagSafeAccessoryManager *)self allAccessories];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [(FMDMagSafeAccessoryManager *)self allAccessories];
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 serialNumbers];
    v13 = [v12 objectForKeyedSubscript:@"systemSerialNumber"];

    [(NSLock *)self->_accessoriesLock unlock];
  }

  else
  {
    [(NSLock *)self->_accessoriesLock unlock];
    v14 = sub_100001508();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100015838();
    }

    v15 = [NSError errorWithMessage:@"accessory not found"];
    v7[2](v7, 0, v15);

    v13 = 0;
  }

  v16 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:v13];
  (v7)[2](v7, v16 != 0, 0);
}

- (id)styleFor:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_accessoriesLock lock];
  v5 = [(FMDMagSafeAccessoryManager *)self allAccessories];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(FMDMagSafeAccessoryManager *)self allAccessories];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 style];
  }

  else
  {
    v10 = sub_100001508();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100015838();
    }

    v9 = 0;
  }

  [(NSLock *)self->_accessoriesLock unlock];

  return v9;
}

- (void)removeAccesoryWithSerialNumber:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004FC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing accessory with serialnumber %@", buf, 0xCu);
  }

  [FMPreferencesUtil removeKey:v6 inDomain:kFMDNotBackedUpMagSafePrefDomain];
  v9 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:v6];
  v10 = sub_100004FC8();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accessory is connected removing keys", buf, 2u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000C59C;
    v18[3] = &unk_1000255D8;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    v12 = v7;
    [v9 removeKeysWithCompletion:v18];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accessory not connected removing keys from device", buf, 2u);
    }

    v12 = [NSString stringWithFormat:@"com.apple.accessoryd.mfi4.userPublicKey.%@", v6];
    v13 = sub_100004FC8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: featureTag: %@", buf, 0xCu);
    }

    MFi4AuthFeatureGroup();
    DeleteSynchronizableKeyForAuthFeature();
    v14 = [(FMDMagSafeAccessoryManager *)self dataSource];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C84C;
    v16[3] = &unk_1000255B0;
    v16[4] = self;
    v17 = v7;
    v15 = v7;
    [v14 removeAccessoryWithSerialNumber:v6 withCompletion:v16];
  }
}

- (id)connectdAccessoryWithSerialNumber:(id)a3
{
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(FMDMagSafeAccessoryManager *)self caAccessoryManager];
  v6 = [v5 accessoryRawInfo];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = +[FMDAccessoryTypeValidator sharedInstance];
        v13 = [v11 accessoryType];
        if ([v12 isAllowedAccessoryWithType:v13] && objc_msgSend(v11, "isMF4i"))
        {
          v14 = [v11 authPassed];

          if (v14)
          {
            v15 = [v11 serialNumber];
            v16 = [v4 isEqualToString:v15];

            if (v16)
            {
              v8 = v11;
              goto LABEL_14;
            }
          }
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

LABEL_14:

  return v8;
}

- (void)setPhoneNumberForAccessoryId:(id)a3 phoneNumber:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = sub_100004FC8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "not supported", v8, 2u);
  }

  v7 = [NSError errorWithMessage:@"Not supported"];
  v5[2](v5, v7);
}

- (void)launchSetupModuleWithInfo:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CD00;
  block[3] = &unk_100024930;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)launchSetupModuleWithInfo2:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001508();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "### get asked to launch setup module with info = %@", buf, 0xCu);
  }

  v9 = [(FMDMagSafeAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1A4;
  block[3] = &unk_100024930;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)updateCompletedFor:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:v6];
  v9 = sub_1000011D8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### setting keysUpdated for %@", buf, 0xCu);
  }

  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000E8AC;
    v11[3] = &unk_100025720;
    v12 = v8;
    v13 = v6;
    v14 = v7;
    [v12 getPairingDataWithCompletion:v11];
  }

  else
  {
    v10 = sub_1000011D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "### accessory not connected storing the operation", buf, 2u);
    }

    [FMPreferencesUtil setBool:1 forKey:v6 inDomain:kFMDNotBackedUpMagSafePrefDomain];
  }
}

- (void)accessoryDidConnect:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[FMDMagSafeAccessoryManager accessoryDidConnect:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(NSLock *)self->_groupLock lock];
  v6 = [(FMDMagSafeAccessoryManager *)self caGroup];

  if (v6)
  {
    v7 = [(FMDMagSafeAccessoryManager *)self caGroup];
    dispatch_group_leave(v7);

    [(FMDMagSafeAccessoryManager *)self setCaGroup:0];
  }

  [(NSLock *)self->_groupLock unlock];
  v8 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:v4];
  [(FMDMagSafeAccessoryManager *)self setConnectedAccessory:v8];

  v9 = [(FMDMagSafeAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC34;
  block[3] = &unk_1000248E0;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)accessoryDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FMDMagSafeAccessoryManager accessoryDidDisconnect:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  [(FMDMagSafeAccessoryManager *)self setConnectedAccessory:0];
}

- (void)accessoryDidUpdate:(id)a3
{
  v3 = a3;
  v4 = sub_100004FC8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[FMDMagSafeAccessoryManager accessoryDidUpdate:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }
}

@end
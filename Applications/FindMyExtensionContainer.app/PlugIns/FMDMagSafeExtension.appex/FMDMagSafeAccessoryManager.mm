@interface FMDMagSafeAccessoryManager
+ (id)sharedInstance;
- (FMDMagSafeAccessoryManager)init;
- (id)connectdAccessoryWithSerialNumber:(id)number;
- (id)getAllAccessories;
- (id)getFindMyEnabledAccessories;
- (id)styleFor:(id)for;
- (void)accessoryDidConnect:(id)connect;
- (void)accessoryDidDisconnect:(id)disconnect;
- (void)accessoryDidUpdate:(id)update;
- (void)conncetionStatusFor:(id)for withCompletion:(id)completion;
- (void)launchSetupModuleWithInfo2:(id)info2 withCompletion:(id)completion;
- (void)launchSetupModuleWithInfo:(id)info withCompletion:(id)completion;
- (void)removeAccesoryWithSerialNumber:(id)number completion:(id)completion;
- (void)setPhoneNumberForAccessoryId:(id)id phoneNumber:(id)number completion:(id)completion;
- (void)updateCompletedFor:(id)for withCompletion:(id)completion;
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

    getFindMyEnabledAccessories = [(FMDMagSafeAccessoryManager *)v2 getFindMyEnabledAccessories];
    [(NSLock *)v2->_accessoriesLock lock];
    [(FMDMagSafeAccessoryManager *)v2 setAllAccessories:getFindMyEnabledAccessories];
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

    caGroup = [(FMDMagSafeAccessoryManager *)v2 caGroup];
    dispatch_group_enter(caGroup);

    v14 = [[FMDCoreAccessoryManager alloc] initWithDelegate:v2];
    [(FMDMagSafeAccessoryManager *)v2 setCaAccessoryManager:v14];

    caGroup2 = [(FMDMagSafeAccessoryManager *)v2 caGroup];
    v16 = dispatch_time(0, 1000000000);
    v17 = dispatch_group_wait(caGroup2, v16);

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
  dataSource = [(FMDMagSafeAccessoryManager *)self dataSource];
  readAllAccessoriesFromDisk = [dataSource readAllAccessoriesFromDisk];

  v4 = objc_alloc_init(NSMutableDictionary);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = readAllAccessoriesFromDisk;
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
  getFindMyEnabledAccessories = [(FMDMagSafeAccessoryManager *)self getFindMyEnabledAccessories];
  [(NSLock *)self->_accessoriesLock lock];
  [(FMDMagSafeAccessoryManager *)self setAllAccessories:getFindMyEnabledAccessories];
  [(NSLock *)self->_accessoriesLock unlock];
  allAccessories = [(FMDMagSafeAccessoryManager *)self allAccessories];

  return allAccessories;
}

- (void)conncetionStatusFor:(id)for withCompletion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  [(NSLock *)self->_accessoriesLock lock];
  allAccessories = [(FMDMagSafeAccessoryManager *)self allAccessories];
  v9 = [allAccessories objectForKeyedSubscript:forCopy];

  if (v9)
  {
    allAccessories2 = [(FMDMagSafeAccessoryManager *)self allAccessories];
    v11 = [allAccessories2 objectForKeyedSubscript:forCopy];
    serialNumbers = [v11 serialNumbers];
    v13 = [serialNumbers objectForKeyedSubscript:@"systemSerialNumber"];

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
    completionCopy[2](completionCopy, 0, v15);

    v13 = 0;
  }

  v16 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:v13];
  (completionCopy)[2](completionCopy, v16 != 0, 0);
}

- (id)styleFor:(id)for
{
  forCopy = for;
  [(NSLock *)self->_accessoriesLock lock];
  allAccessories = [(FMDMagSafeAccessoryManager *)self allAccessories];
  v6 = [allAccessories objectForKeyedSubscript:forCopy];

  if (v6)
  {
    allAccessories2 = [(FMDMagSafeAccessoryManager *)self allAccessories];
    v8 = [allAccessories2 objectForKeyedSubscript:forCopy];
    style = [v8 style];
  }

  else
  {
    v10 = sub_100001508();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100015838();
    }

    style = 0;
  }

  [(NSLock *)self->_accessoriesLock unlock];

  return style;
}

- (void)removeAccesoryWithSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  v8 = sub_100004FC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = numberCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing accessory with serialnumber %@", buf, 0xCu);
  }

  [FMPreferencesUtil removeKey:numberCopy inDomain:kFMDNotBackedUpMagSafePrefDomain];
  v9 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:numberCopy];
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
    v19 = numberCopy;
    v20 = completionCopy;
    numberCopy = completionCopy;
    [v9 removeKeysWithCompletion:v18];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accessory not connected removing keys from device", buf, 2u);
    }

    numberCopy = [NSString stringWithFormat:@"com.apple.accessoryd.mfi4.userPublicKey.%@", numberCopy];
    v13 = sub_100004FC8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = numberCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handle_NVMEraseResponse: featureTag: %@", buf, 0xCu);
    }

    MFi4AuthFeatureGroup();
    DeleteSynchronizableKeyForAuthFeature();
    dataSource = [(FMDMagSafeAccessoryManager *)self dataSource];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C84C;
    v16[3] = &unk_1000255B0;
    v16[4] = self;
    v17 = completionCopy;
    v15 = completionCopy;
    [dataSource removeAccessoryWithSerialNumber:numberCopy withCompletion:v16];
  }
}

- (id)connectdAccessoryWithSerialNumber:(id)number
{
  numberCopy = number;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  caAccessoryManager = [(FMDMagSafeAccessoryManager *)self caAccessoryManager];
  accessoryRawInfo = [caAccessoryManager accessoryRawInfo];
  allValues = [accessoryRawInfo allValues];

  v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = +[FMDAccessoryTypeValidator sharedInstance];
        accessoryType = [v11 accessoryType];
        if ([v12 isAllowedAccessoryWithType:accessoryType] && objc_msgSend(v11, "isMF4i"))
        {
          authPassed = [v11 authPassed];

          if (authPassed)
          {
            serialNumber = [v11 serialNumber];
            v16 = [numberCopy isEqualToString:serialNumber];

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

      v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

LABEL_14:

  return v8;
}

- (void)setPhoneNumberForAccessoryId:(id)id phoneNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100004FC8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "not supported", v8, 2u);
  }

  v7 = [NSError errorWithMessage:@"Not supported"];
  completionCopy[2](completionCopy, v7);
}

- (void)launchSetupModuleWithInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  serialQueue = [(FMDMagSafeAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CD00;
  block[3] = &unk_100024930;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(serialQueue, block);
}

- (void)launchSetupModuleWithInfo2:(id)info2 withCompletion:(id)completion
{
  info2Copy = info2;
  completionCopy = completion;
  v8 = sub_100001508();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = info2Copy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "### get asked to launch setup module with info = %@", buf, 0xCu);
  }

  serialQueue = [(FMDMagSafeAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1A4;
  block[3] = &unk_100024930;
  block[4] = self;
  v13 = info2Copy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = info2Copy;
  dispatch_async(serialQueue, block);
}

- (void)updateCompletedFor:(id)for withCompletion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  v8 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:forCopy];
  v9 = sub_1000011D8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = forCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### setting keysUpdated for %@", buf, 0xCu);
  }

  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000E8AC;
    v11[3] = &unk_100025720;
    v12 = v8;
    v13 = forCopy;
    v14 = completionCopy;
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

    [FMPreferencesUtil setBool:1 forKey:forCopy inDomain:kFMDNotBackedUpMagSafePrefDomain];
  }
}

- (void)accessoryDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[FMDMagSafeAccessoryManager accessoryDidConnect:]";
    v13 = 2112;
    v14 = connectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(NSLock *)self->_groupLock lock];
  caGroup = [(FMDMagSafeAccessoryManager *)self caGroup];

  if (caGroup)
  {
    caGroup2 = [(FMDMagSafeAccessoryManager *)self caGroup];
    dispatch_group_leave(caGroup2);

    [(FMDMagSafeAccessoryManager *)self setCaGroup:0];
  }

  [(NSLock *)self->_groupLock unlock];
  v8 = [(FMDMagSafeAccessoryManager *)self connectdAccessoryWithSerialNumber:connectCopy];
  [(FMDMagSafeAccessoryManager *)self setConnectedAccessory:v8];

  serialQueue = [(FMDMagSafeAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC34;
  block[3] = &unk_1000248E0;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)accessoryDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FMDMagSafeAccessoryManager accessoryDidDisconnect:]";
    v8 = 2112;
    v9 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  [(FMDMagSafeAccessoryManager *)self setConnectedAccessory:0];
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  v4 = sub_100004FC8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[FMDMagSafeAccessoryManager accessoryDidUpdate:]";
    v7 = 2112;
    v8 = updateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }
}

@end
@interface FMDCoreAccessoriesCache
- (BOOL)isCachedAccessoryWithUUID:(id)a3;
- (FMDCoreAccessoriesCache)init;
- (id)accessoriesRawInfo;
- (id)getAccessoryWithUUID:(id)a3;
- (void)_cleanupDuplicationsOfAccessoryWithSerialNumber:(id)a3 currentAccessoryUUID:(id)a4;
- (void)accessoryDidUpdateWithUUID:(id)a3;
- (void)deleteAccessoryWithUUID:(id)a3;
- (void)saveAccessory:(id)a3 withUUID:(id)a4;
@end

@implementation FMDCoreAccessoriesCache

- (FMDCoreAccessoriesCache)init
{
  v6.receiver = self;
  v6.super_class = FMDCoreAccessoriesCache;
  v2 = [(FMDCoreAccessoriesCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accessoryRawInfo = v2->_accessoryRawInfo;
    v2->_accessoryRawInfo = v3;
  }

  return v2;
}

- (id)accessoriesRawInfo
{
  v2 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v3 = [v2 copy];

  return v3;
}

- (id)getAccessoryWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isCachedAccessoryWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)saveAccessory:(id)a3 withUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 serialNumber];
  [(FMDCoreAccessoriesCache *)self _cleanupDuplicationsOfAccessoryWithSerialNumber:v8 currentAccessoryUUID:v6];

  v9 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  [v9 setObject:v7 forKeyedSubscript:v6];
}

- (void)accessoryDidUpdateWithUUID:(id)a3
{
  v4 = a3;
  v7 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v5 = [v7 objectForKeyedSubscript:v4];
  v6 = [v5 serialNumber];
  [(FMDCoreAccessoriesCache *)self _cleanupDuplicationsOfAccessoryWithSerialNumber:v6 currentAccessoryUUID:v4];
}

- (void)deleteAccessoryWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  [v5 removeObjectForKey:v4];
}

- (void)_cleanupDuplicationsOfAccessoryWithSerialNumber:(id)a3 currentAccessoryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000102E4;
    v21 = sub_1000102F4;
    v22 = objc_opt_new();
    v8 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000102FC;
    v13[3] = &unk_100025798;
    v9 = v6;
    v14 = v9;
    v15 = v7;
    v16 = &v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v13];

    if ([v18[5] count])
    {
      v10 = sub_100004FC8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v18[5] count];
        *buf = 134218242;
        v24 = v11;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDCoreAccessoriesCache removing %lu duplications of accessory with %@ serial number", buf, 0x16u);
      }
    }

    v12 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
    [v12 removeObjectsForKeys:v18[5]];

    _Block_object_dispose(&v17, 8);
  }
}

@end
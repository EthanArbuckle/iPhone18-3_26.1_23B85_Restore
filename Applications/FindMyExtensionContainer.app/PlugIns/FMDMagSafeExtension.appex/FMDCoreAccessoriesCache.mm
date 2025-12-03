@interface FMDCoreAccessoriesCache
- (BOOL)isCachedAccessoryWithUUID:(id)d;
- (FMDCoreAccessoriesCache)init;
- (id)accessoriesRawInfo;
- (id)getAccessoryWithUUID:(id)d;
- (void)_cleanupDuplicationsOfAccessoryWithSerialNumber:(id)number currentAccessoryUUID:(id)d;
- (void)accessoryDidUpdateWithUUID:(id)d;
- (void)deleteAccessoryWithUUID:(id)d;
- (void)saveAccessory:(id)accessory withUUID:(id)d;
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
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v3 = [accessoryRawInfo copy];

  return v3;
}

- (id)getAccessoryWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v6 = [accessoryRawInfo objectForKeyedSubscript:dCopy];

  return v6;
}

- (BOOL)isCachedAccessoryWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v6 = [accessoryRawInfo objectForKeyedSubscript:dCopy];

  return v6 != 0;
}

- (void)saveAccessory:(id)accessory withUUID:(id)d
{
  dCopy = d;
  accessoryCopy = accessory;
  serialNumber = [accessoryCopy serialNumber];
  [(FMDCoreAccessoriesCache *)self _cleanupDuplicationsOfAccessoryWithSerialNumber:serialNumber currentAccessoryUUID:dCopy];

  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  [accessoryRawInfo setObject:accessoryCopy forKeyedSubscript:dCopy];
}

- (void)accessoryDidUpdateWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v5 = [accessoryRawInfo objectForKeyedSubscript:dCopy];
  serialNumber = [v5 serialNumber];
  [(FMDCoreAccessoriesCache *)self _cleanupDuplicationsOfAccessoryWithSerialNumber:serialNumber currentAccessoryUUID:dCopy];
}

- (void)deleteAccessoryWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  [accessoryRawInfo removeObjectForKey:dCopy];
}

- (void)_cleanupDuplicationsOfAccessoryWithSerialNumber:(id)number currentAccessoryUUID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (numberCopy && [numberCopy length])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000102E4;
    v21 = sub_1000102F4;
    v22 = objc_opt_new();
    accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000102FC;
    v13[3] = &unk_100025798;
    v9 = numberCopy;
    v14 = v9;
    v15 = dCopy;
    v16 = &v17;
    [accessoryRawInfo enumerateKeysAndObjectsUsingBlock:v13];

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

    accessoryRawInfo2 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
    [accessoryRawInfo2 removeObjectsForKeys:v18[5]];

    _Block_object_dispose(&v17, 8);
  }
}

@end
@interface FMDMagSafeDataStore
+ (id)defaultStorageLocation;
+ (id)deprecatedLostModeStorageLocation;
+ (id)deprecatedStorageLocation;
+ (id)lostModeStorageLocation;
+ (id)magSafeContainerURL;
+ (id)sharedInstance;
- (FMDMagSafeDataStore)init;
- (id)_writeAccessoriesToDisk:(id)disk;
- (id)readAllAccessoriesFromDisk;
- (id)readLostModeAccessoriesList;
- (id)readLostModeAccessoriesListVersion;
- (id)writeLostModeInfo:(id)info version:(id)version;
- (void)addAccessory:(id)accessory withCompletion:(id)completion;
- (void)clearDataStore;
- (void)migrateDataStore;
- (void)removeAccessoryWithId:(id)id withCompletion:(id)completion;
- (void)removeAccessoryWithSerialNumber:(id)number withCompletion:(id)completion;
- (void)updateLostModeKeyRollTimeFor:(id)for lastLostModeKeyRollTime:(id)time withCompletion:(id)completion;
@end

@implementation FMDMagSafeDataStore

+ (id)magSafeContainerURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.icloud.findmydevice.magsafe"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_1000011D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100015120(v6);
    }
  }

  return v4;
}

+ (id)defaultStorageLocation
{
  magSafeContainerURL = [self magSafeContainerURL];
  v3 = [magSafeContainerURL fm_preferencesPathURLForDomain:@"fmdMagSafeDevices"];

  return v3;
}

+ (id)lostModeStorageLocation
{
  magSafeContainerURL = [self magSafeContainerURL];
  v3 = [magSafeContainerURL fm_preferencesPathURLForDomain:@"fmdMagSafeLostDevices"];

  return v3;
}

+ (id)deprecatedStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_1000308F0];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"fmdMagSafeDevices"];

  return v5;
}

+ (id)deprecatedLostModeStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_1000308F0];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"fmdMagSafeLostDevices"];

  return v5;
}

+ (id)sharedInstance
{
  if (qword_100030AE0 != -1)
  {
    sub_100015164();
  }

  v3 = qword_100030AD8;

  return v3;
}

- (FMDMagSafeDataStore)init
{
  v18.receiver = self;
  v18.super_class = FMDMagSafeDataStore;
  v2 = [(FMDMagSafeDataStore *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDMagSafeDataStore.serialQueue", 0);
    [(FMDMagSafeDataStore *)v2 setSerialQueue:v3];

    v4 = [FMDataArchiver alloc];
    defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
    v6 = [v4 initWithFileURL:defaultStorageLocation];
    [(FMDMagSafeDataStore *)v2 setDataArchiver:v6];

    dataArchiver = [(FMDMagSafeDataStore *)v2 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDMagSafeDataStore *)v2 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDMagSafeDataStore *)v2 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    v10 = [FMDataArchiver alloc];
    lostModeStorageLocation = [objc_opt_class() lostModeStorageLocation];
    v12 = [v10 initWithFileURL:lostModeStorageLocation];
    [(FMDMagSafeDataStore *)v2 setLostModeDataArchiver:v12];

    lostModeDataArchiver = [(FMDMagSafeDataStore *)v2 lostModeDataArchiver];
    [lostModeDataArchiver setDataProtectionClass:4];

    lostModeDataArchiver2 = [(FMDMagSafeDataStore *)v2 lostModeDataArchiver];
    [lostModeDataArchiver2 setBackedUp:0];

    lostModeDataArchiver3 = [(FMDMagSafeDataStore *)v2 lostModeDataArchiver];
    [lostModeDataArchiver3 setCreateDirectories:1];

    v16 = sub_1000011D8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100015178(v2, v16);
    }
  }

  return v2;
}

- (void)clearDataStore
{
  serialQueue = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005DA4;
  block[3] = &unk_1000248E0;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)addAccessory:(id)accessory withCompletion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  serialQueue = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005F70;
  block[3] = &unk_100024930;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = accessoryCopy;
  dispatch_async(serialQueue, block);
}

- (void)removeAccessoryWithId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  serialQueue = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006190;
  block[3] = &unk_100024930;
  block[4] = self;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(serialQueue, block);
}

- (void)removeAccessoryWithSerialNumber:(id)number withCompletion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  serialQueue = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006394;
  block[3] = &unk_100024930;
  block[4] = self;
  v12 = numberCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = numberCopy;
  dispatch_async(serialQueue, block);
}

- (id)readAllAccessoriesFromDisk
{
  [(FMDMagSafeDataStore *)self migrateDataStore];
  dataArchiver = [(FMDMagSafeDataStore *)self dataArchiver];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v13 = 0;
  v6 = [dataArchiver readDictionaryAndClasses:v5 error:&v13];
  v7 = v13;

  if (([v7 fm_isFileNotFoundError] & 1) == 0 && (!v6 || v7 != 0))
  {

    v9 = sub_1000011D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100015210();
    }

    v6 = &__NSDictionary0__struct;
  }

  v10 = sub_100001508();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 count];
    *buf = 134218242;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "readAllAccessoriesFromDisk total = %lu accessories = %@", buf, 0x16u);
  }

  return v6;
}

- (id)_writeAccessoriesToDisk:(id)disk
{
  diskCopy = disk;
  dataArchiver = [(FMDMagSafeDataStore *)self dataArchiver];
  v6 = [dataArchiver saveDictionary:diskCopy];

  return v6;
}

- (id)writeLostModeInfo:(id)info version:(id)version
{
  v13[0] = @"accessoryList";
  v13[1] = @"version";
  v14[0] = info;
  v14[1] = version;
  versionCopy = version;
  infoCopy = info;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  lostModeDataArchiver = [(FMDMagSafeDataStore *)self lostModeDataArchiver];
  v10 = [lostModeDataArchiver saveDictionary:v8];

  if (!v10)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.findmydeviced.findkit.magSafe.added", 0, 0, 1u);
  }

  return v10;
}

- (id)readLostModeAccessoriesList
{
  [(FMDMagSafeDataStore *)self migrateDataStore];
  lostModeDataArchiver = [(FMDMagSafeDataStore *)self lostModeDataArchiver];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  v15 = 0;
  v7 = [lostModeDataArchiver readDictionaryAndClasses:v6 error:&v15];
  v8 = v15;

  if (([v8 fm_isFileNotFoundError] & 1) == 0 && (!v7 || v8))
  {
    v9 = sub_1000011D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100015210();
    }
  }

  v10 = sub_100001508();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 objectForKeyedSubscript:@"accessoryList"];
    v12 = [v11 count];
    *buf = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "readLostModeAccessoriesList total = %lu accessories = %@", buf, 0x16u);
  }

  v13 = [v7 objectForKeyedSubscript:@"accessoryList"];

  return v13;
}

- (id)readLostModeAccessoriesListVersion
{
  [(FMDMagSafeDataStore *)self migrateDataStore];
  lostModeDataArchiver = [(FMDMagSafeDataStore *)self lostModeDataArchiver];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  v15 = 0;
  v7 = [lostModeDataArchiver readDictionaryAndClasses:v6 error:&v15];
  v8 = v15;

  if (([v8 fm_isFileNotFoundError] & 1) == 0 && (!v7 || v8))
  {
    v9 = sub_1000011D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100015210();
    }
  }

  v10 = sub_100001508();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 objectForKeyedSubscript:@"accessoryList"];
    v12 = [v11 count];
    *buf = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "readLostModeAccessoriesList total = %lu accessories = %@", buf, 0x16u);
  }

  v13 = [v7 objectForKeyedSubscript:@"version"];

  return v13;
}

- (void)updateLostModeKeyRollTimeFor:(id)for lastLostModeKeyRollTime:(id)time withCompletion:(id)completion
{
  forCopy = for;
  timeCopy = time;
  completionCopy = completion;
  serialQueue = [(FMDMagSafeDataStore *)self serialQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006F58;
  v15[3] = &unk_100024980;
  v15[4] = self;
  v16 = forCopy;
  v17 = timeCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = timeCopy;
  v14 = forCopy;
  dispatch_async(serialQueue, v15);
}

- (void)migrateDataStore
{
  deprecatedStorageLocation = [objc_opt_class() deprecatedStorageLocation];
  defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
  v4 = +[NSFileManager defaultManager];
  [v4 fm_migrateFileFromURL:deprecatedStorageLocation toURL:defaultStorageLocation];

  deprecatedLostModeStorageLocation = [objc_opt_class() deprecatedLostModeStorageLocation];

  lostModeStorageLocation = [objc_opt_class() lostModeStorageLocation];

  v6 = +[NSFileManager defaultManager];
  [v6 fm_migrateFileFromURL:deprecatedLostModeStorageLocation toURL:lostModeStorageLocation];
}

@end
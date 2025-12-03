@interface MBLockdown
+ (id)buddySetupState;
+ (id)connect;
+ (id)dateOfLastBackupFromLockdownPlist;
+ (void)setDeviceName:(id)name;
- (BOOL)connect;
- (BOOL)removeObjectWithDomain:(id)domain andKey:(id)key withError:(id *)error;
- (BOOL)setObject:(id)object forDomain:(id)domain andKey:(id)key withError:(id *)error;
- (MBLockdown)init;
- (id)objectForDomain:(id)domain andKey:(id)key;
- (void)dealloc;
- (void)disconnect;
@end

@implementation MBLockdown

+ (id)connect
{
  v2 = objc_alloc_init(MBLockdown);

  return v2;
}

- (MBLockdown)init
{
  v4.receiver = self;
  v4.super_class = MBLockdown;
  v2 = [(MBLockdown *)&v4 init];
  if (v2)
  {
    if (qword_2A848 != -1)
    {
      sub_13A30();
    }

    if (![(MBLockdown *)v2 connect])
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(MBLockdown *)self disconnect];
  v3.receiver = self;
  v3.super_class = MBLockdown;
  [(MBLockdown *)&v3 dealloc];
}

- (BOOL)connect
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1169C;
  v4[3] = &unk_24CB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(qword_2A850, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)disconnect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11758;
  block[3] = &unk_24CD8;
  block[4] = self;
  dispatch_sync(qword_2A850, block);
}

- (id)objectForDomain:(id)domain andKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_11868;
  v11 = sub_11878;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_11884;
  v6[3] = &unk_24D00;
  v6[4] = self;
  v6[5] = domain;
  v6[6] = key;
  v6[7] = &v7;
  dispatch_sync(qword_2A850, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)setObject:(id)object forDomain:(id)domain andKey:(id)key withError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_11980;
  v8[3] = &unk_24D28;
  v8[4] = self;
  v8[5] = domain;
  v8[6] = key;
  v8[7] = object;
  v8[8] = &v9;
  v8[9] = error;
  dispatch_sync(qword_2A850, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (BOOL)removeObjectWithDomain:(id)domain andKey:(id)key withError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11B70;
  block[3] = &unk_24D50;
  block[4] = domain;
  block[5] = key;
  block[7] = &v8;
  block[8] = error;
  block[6] = self;
  dispatch_sync(qword_2A850, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (id)dateOfLastBackupFromLockdownPlist
{
  v2 = CFPreferencesCopyValue(@"LastCloudBackupDate", @"com.apple.mobile.ldbackup", kMBMobileUserName, kCFPreferencesAnyHost);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFNumberGetTypeID())
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v8 = @"LastCloudBackupDate";
      v9 = 2048;
      v10 = CFGetTypeID(v3);
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Invalid type for %@: %ld", buf, 0x16u);
      CFGetTypeID(v3);
      _MBLog();
    }

    CFRelease(v3);
    return 0;
  }

  return v3;
}

+ (id)buddySetupState
{
  v2 = CFPreferencesCopyValue(@"SetupState", @"com.apple.purplebuddy", kMBMobileUserName, kCFPreferencesAnyHost);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFStringGetTypeID())
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v8 = @"com.apple.purplebuddy";
      v9 = 2112;
      v10 = @"SetupState";
      v11 = 2048;
      v12 = CFGetTypeID(v3);
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Invalid type for %@/%@: %ld", buf, 0x20u);
      CFGetTypeID(v3);
      _MBLog();
    }

    CFRelease(v3);
    return 0;
  }

  return v3;
}

+ (void)setDeviceName:(id)name
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    nameCopy2 = name;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Updating the device name to %@", buf, 0xCu);
    _MBLog();
  }

  if (name)
  {
    v5 = +[MBLockdown connect];
    if (v5)
    {
      v6 = v5;
      v11 = 0;
      v7 = [v5 setObject:name forDomain:0 andKey:kLockdownDeviceNameKey withError:&v11];
      [v6 disconnect];
      v8 = MBGetDefaultLog();
      v9 = v8;
      if (v7)
      {
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 138412290;
        nameCopy2 = name;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updated the device name to %@", buf, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 138412290;
        nameCopy2 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed to update the device name: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = MBGetDefaultLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to connect to lockdown to update the device name", buf, 2u);
    }

    _MBLog();
  }
}

@end
@interface BackupConfigurationService
+ (BOOL)checkBackupConfiguration;
+ (BOOL)checkBackupConfigurationWithFileManager:(id)a3 url:(id)a4 tccServices:(id)a5;
+ (BOOL)hasLocalContactsWithError:(id *)a3;
+ (void)run;
@end

@implementation BackupConfigurationService

+ (void)run
{
  v3 = +[CNContactsDaemonLogs backup];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D10C(a1);
  }

  if (([a1 checkBackupConfiguration] & 1) == 0)
  {
    v4 = +[CNContactsDaemonLogs backup];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002D1B0(a1);
    }
  }
}

+ (BOOL)checkBackupConfiguration
{
  v3 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/AddressBook"];
  v5 = +[CNTCCFactory defaultTCC];
  LOBYTE(a1) = [a1 checkBackupConfigurationWithFileManager:v3 url:v4 tccServices:v5];

  return a1;
}

+ (BOOL)checkBackupConfigurationWithFileManager:(id)a3 url:(id)a4 tccServices:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 checkAuthorizationStatusOfCurrentProcess];
  if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v23 = v9;
    v14 = +[CNContactsDaemonLogs backup];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [NSNumber numberWithInteger:v23];
      *buf = 138412290;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "TCC access is not granted, CNTCC status is %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = [v8 path];
  v11 = [v7 fileExistsAtPath:v10];

  if ((v11 & 1) == 0)
  {
    v14 = +[CNContactsDaemonLogs backup];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Database folder does not exist.", buf, 2u);
    }

LABEL_13:
    v22 = 0;
    goto LABEL_25;
  }

  v28 = NSURLIsExcludedFromBackupKey;
  v12 = [NSArray arrayWithObjects:&v28 count:1];
  v27 = 0;
  v13 = [v8 resourceValuesForKeys:v12 error:&v27];
  v14 = v27;

  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:NSURLIsExcludedFromBackupKey];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = [NSNumber numberWithBool:0];
      v26 = v14;
      v18 = [v8 setResourceValue:v17 forKey:NSURLIsExcludedFromBackupKey error:&v26];
      v19 = v26;

      v20 = +[CNContactsDaemonLogs backup];
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_10002D3B8(v8);
        }

        v22 = 1;
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10002D310(v8);
        }

        v22 = 0;
      }

      v14 = v19;
    }

    else
    {
      v21 = +[CNContactsDaemonLogs backup];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10002D254(v8);
      }

      v22 = 1;
    }
  }

  else
  {
    v21 = +[CNContactsDaemonLogs backup];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10002D474(v8);
    }

    v22 = 0;
  }

LABEL_25:
  return v22;
}

+ (BOOL)hasLocalContactsWithError:(id *)a3
{
  error = 0;
  v4 = ABAddressBookCreateWithOptions(0, &error);
  if (v4)
  {
    v5 = v4;
    HasLocalContent = ABAddressBookHasLocalContent();
    CFRelease(v5);
  }

  else
  {
    v7 = error;
    if (a3)
    {
      v8 = error;
      *a3 = v7;
    }

    v9 = +[CNContactsDaemonLogs backup];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002D51C();
    }

    return 0;
  }

  return HasLocalContent;
}

@end
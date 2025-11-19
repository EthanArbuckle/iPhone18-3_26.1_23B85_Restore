@interface BCSyncUserDefaults
+ (BOOL)_isICloudDriveSyncOptedIn;
+ (BOOL)_q_archivedICloudDriveSyncOptedInBeforeInitialTCCSync;
+ (BOOL)archivedICloudDriveSyncOptedInBeforeInitialTCCSync;
+ (BOOL)isCloudKitSyncOptedIn;
+ (BOOL)isGlobalICloudDriveSyncOptedIn;
+ (BOOL)isICloudDriveEnabledForBooks;
+ (BOOL)isICloudDriveSyncOptedIn;
+ (BOOL)isReadingNowSyncOptedIn;
+ (BOOL)isSignedIntoICloud;
+ (NSArray)userDefaultsKeysUsedForSyncing;
+ (id)makeOSStateHandler;
+ (void)initialize;
+ (void)syncDefaultsWithTCC;
@end

@implementation BCSyncUserDefaults

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v9[0] = @"BKLibrary.ReadingNow";
    v9[1] = @"BCSyncICloudDrive";
    v10[0] = &__kCFBooleanTrue;
    v10[1] = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 registerDefaults:v3];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_DEFAULT, 0);

    v7 = dispatch_queue_create("com.apple.iBooks.BCSyncUserDefaults", v6);
    v8 = qword_3428A8;
    qword_3428A8 = v7;
  }
}

+ (BOOL)isSignedIntoICloud
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isUserSignedInToiCloud];

  v4 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "BCSyncUserDefaults: isSignedIntoICloud = %@", &v7, 0xCu);
  }

  return v3;
}

+ (BOOL)isCloudKitSyncOptedIn
{
  +[BCSyncUserDefaults waitForPendingSyncIfNeeded];
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isPrimaryAccountManagedAppleID];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"BCSyncCloudKit"];

  return (v3 | v5) & 1;
}

+ (BOOL)isGlobalICloudDriveSyncOptedIn
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isGlobalICloudDriveSyncOptedIn];

  v4 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "BCSyncUserDefaults: isGlobalICloudDriveSyncOptedIn = %@", &v7, 0xCu);
  }

  return v3;
}

+ (BOOL)isICloudDriveSyncOptedIn
{
  +[BCSyncUserDefaults waitForPendingSyncIfNeeded];

  return +[BCSyncUserDefaults _isICloudDriveSyncOptedIn];
}

+ (BOOL)_isICloudDriveSyncOptedIn
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isPrimaryAccountManagedAppleID];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"BCSyncICloudDrive"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"BCSyncCloudKit"];

  v8 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v3)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (v5)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    if (v7)
    {
      v9 = @"YES";
    }

    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BCSyncUserDefaults: isICloudDriveSyncOptedIn isPrimaryAccountManagedAppleID = %@ isBCSyncICloudDriveUserDefaults = %@ isBCSyncCloudKitUserDefaults = %@", &v13, 0x20u);
  }

  return (v3 | v5 & v7) & 1;
}

+ (BOOL)archivedICloudDriveSyncOptedInBeforeInitialTCCSync
{
  if (qword_3428B8 != -1)
  {
    sub_1E9D54();
  }

  return byte_3428B0;
}

+ (BOOL)_q_archivedICloudDriveSyncOptedInBeforeInitialTCCSync
{
  if (qword_3428C8 != -1)
  {
    sub_1E9D68();
  }

  return byte_3428C0;
}

+ (BOOL)isICloudDriveEnabledForBooks
{
  v2 = +[BCICloudIdentityToken tokenForCurrentIdentityIfICloudDriveEnabled];

  v3 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "BCSyncUserDefaults: isICloudDriveEnabledForBooks = %@", &v6, 0xCu);
  }

  return v2 != 0;
}

+ (BOOL)isReadingNowSyncOptedIn
{
  v2 = +[BUAccountsProvider sharedProvider];
  if ([v2 isPrimaryAccountManagedAppleID])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v3 = [v4 BOOLForKey:@"BKLibrary.ReadingNow"];
  }

  return v3;
}

+ (void)syncDefaultsWithTCC
{
  v2 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCSyncUserDefaults: syncDefaultsWithTCC", v3, 2u);
  }

  dispatch_async(qword_3428A8, &stru_2CD130);
}

+ (NSArray)userDefaultsKeysUsedForSyncing
{
  if (qword_3428E0 != -1)
  {
    sub_1E9E38();
  }

  v3 = qword_3428D8;

  return v3;
}

+ (id)makeOSStateHandler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_E290C;
  v4[3] = &unk_2CD1B0;
  v4[4] = a1;
  v2 = [[BUOSStateHandler alloc] initWithTitle:@"BCSyncUserDefaults" block:v4];

  return v2;
}

@end
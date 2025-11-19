@interface BuddyBackupUtilities
+ (BOOL)_canRestoreBackupMadeOnVersion:(id)a3 toSystemVersion:(id)a4;
+ (BOOL)canRestoreBackupMadeOnVersion:(id)a3 toSystemVersion:(id)a4 toSystemVersionFetchedFromCurrentSystemVersion:(BOOL)a5;
+ (BOOL)snapshotIsCompatibleWithCurrentSystemVersion:(id)a3;
+ (id)_suggestedBackupForUDID:(id)a3 deviceClass:(id)a4 backups:(id)a5;
+ (id)backupForUUID:(id)a3 backups:(id)a4;
+ (id)backupForUUID:(id)a3 withManager:(id)a4 error:(id *)a5;
+ (id)getBackupListWithFiltering:(BOOL)a3 manager:(id)a4 retries:(unint64_t)a5 error:(id *)a6;
+ (id)latestCommittedSnapshotFromBackup:(id)a3 requireCompatible:(BOOL)a4;
+ (id)suggestedBackupForCurrentDeviceWithBackups:(id)a3;
+ (id)suggestedBackupForProximity:(id)a3 deviceClass:(id)a4 withManager:(id)a5 error:(id *)a6;
@end

@implementation BuddyBackupUtilities

+ (id)backupForUUID:(id)a3 withManager:(id)a4 error:(id *)a5
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a5;
  v7 = [v13 getBackupListWithFiltering:0 manager:v11 retries:3 error:a5];
  v8 = [v13 backupForUUID:location[0] backups:{v7, v7}];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

+ (id)backupForUUID:(id)a3 backups:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  memset(__b, 0, sizeof(__b));
  v5 = v16;
  v6 = [v5 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v6)
  {
    v7 = *__b[2];
    do
    {
      for (i = 0; i < v6; ++i)
      {
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(__b[1] + 8 * i);
        v9 = [v15 backupUUID];
        v10 = [v9 isEqualToString:location[0]];

        if (v10)
        {
          v18 = v15;
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:__b objects:v19 count:16];
    }

    while (v6);
  }

  v13 = 0;
LABEL_11:

  if (!v13)
  {
    v18 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v11 = v18;

  return v11;
}

+ (id)latestCommittedSnapshotFromBackup:(id)a3 requireCompatible:(BOOL)a4
{
  v20 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v5 = [location[0] snapshots];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
  v23 = v6;
  v7 = [NSArray arrayWithObjects:&v23 count:1];
  v17 = [v5 sortedArrayUsingDescriptors:v7];

  memset(__b, 0, sizeof(__b));
  v8 = v17;
  v9 = [v8 countByEnumeratingWithState:__b objects:v22 count:16];
  if (v9)
  {
    v10 = *__b[2];
    do
    {
      for (i = 0; i < v9; ++i)
      {
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(__b[1] + 8 * i);
        if ([v16 state] == 3 && (!v18 || (objc_msgSend(v20, "snapshotIsCompatibleWithCurrentSystemVersion:", v16) & 1) != 0))
        {
          v21 = v16;
          v14 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:__b objects:v22 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_13:

  if (!v14)
  {
    v21 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  v12 = v21;

  return v12;
}

+ (id)getBackupListWithFiltering:(BOOL)a3 manager:(id)a4 retries:(unint64_t)a5 error:(id *)a6
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v38 = a5;
  v37 = a6;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  do
  {
    objc_storeStrong(&v34, 0);
    obj = v34;
    v8 = [location getBackupListWithFiltering:v40 error:&obj];
    objc_storeStrong(&v34, obj);
    v9 = v35;
    v35 = v8;

    if (v34)
    {
      if (++v36 > v38)
      {
        v26 = _BYLoggingFacility();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v26;
          v24 = 0;
          v22 = 0;
          if (_BYIsInternalInstall())
          {
            v17 = v34;
          }

          else if (v34)
          {
            v25 = [v34 domain];
            v24 = 1;
            v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v25, [v34 code]);
            v23 = v17;
            v22 = 1;
          }

          else
          {
            v17 = 0;
          }

          sub_100071CBC(v43, v17);
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to get backup list, giving up: %{public}@", v43, 0xCu);
          if (v22)
          {
          }

          if (v24)
          {
          }
        }

        objc_storeStrong(&v26, 0);
      }

      else
      {
        oslog = _BYLoggingFacility();
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = oslog;
          v11 = v31;
          v12 = v36;
          v13 = v38;
          v14 = _BYIsInternalInstall();
          v29 = 0;
          v27 = 0;
          if (v14)
          {
            v15 = v34;
          }

          else if (v34)
          {
            v30 = [v34 domain];
            v29 = 1;
            v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v30, [v34 code]);
            v28 = v15;
            v27 = 1;
          }

          else
          {
            v15 = 0;
          }

          sub_100179D50(buf, v12, v13, v15);
          _os_log_impl(&_mh_execute_header, v10, v11, "Retrying backup list fetch (%u/%u) due to getting backup list: %{public}@", buf, 0x18u);
          if (v27)
          {
          }

          if (v29)
          {
          }
        }

        objc_storeStrong(&oslog, 0);
        sleep(4u);
      }
    }

    v18 = 0;
    if (v34)
    {
      v18 = v36 <= v38;
    }
  }

  while (v18);
  if (v34 && v37)
  {
    v19 = v34;
    *v37 = v19;
  }

  v20 = v35;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  return v20;
}

+ (id)suggestedBackupForProximity:(id)a3 deviceClass:(id)a4 withManager:(id)a5 error:(id *)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = a6;
  if (location[0])
  {
    v19 = 0;
    v9 = [location[0] backupUUID];
    obj = 0;
    v10 = [BuddyBackupUtilities backupForUUID:v9 withManager:v22 error:&obj];
    objc_storeStrong(&v19, obj);
    v18 = v10;

    if (v19)
    {
      if (v21)
      {
        v11 = v19;
        *v21 = v11;
      }

      v25 = 0;
      v20 = 1;
    }

    else
    {
      v12 = [v18 deviceClass];
      v13 = [v12 isEqualToString:v23] ^ 1;

      if (v13)
      {
        v25 = 0;
        v20 = 1;
      }

      else
      {
        v16 = [BuddyBackupUtilities latestCommittedSnapshotFromBackup:v18 requireCompatible:0];
        if (v16)
        {
          v25 = [RestorableBackupItem restorableBackupItemWithBackup:v18 snapshot:v16];
        }

        else
        {
          v25 = 0;
        }

        v20 = 1;
        objc_storeStrong(&v16, 0);
      }
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v25 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  v14 = v25;

  return v14;
}

+ (id)suggestedBackupForCurrentDeviceWithBackups:(id)a3
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = MGCopyAnswer();
  v7 = v10;
  v3 = MGCopyAnswer();
  v4 = [v9 _suggestedBackupForUDID:v7 deviceClass:v3 backups:{location[0], v3}];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (BOOL)snapshotIsCompatibleWithCurrentSystemVersion:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] isCompatible] & 1;
  if (v11 && (os_variant_has_internal_ui() & 1) != 0 && +[BuddyDataSourceCompatibilityManagerTestingSurrogate enabled])
  {
    v10 = objc_alloc_init(BuddyDataSourceCompatibilityManagerTestingSurrogate);
    v3 = [location[0] requiredProductVersion];
    v4 = v3;
    v7 = 0;
    if (!v3)
    {
      v3 = [location[0] systemVersion];
      v8 = v3;
      v7 = 1;
    }

    v9 = v3;
    if (v7)
    {
    }

    v11 = [v10 canCurrentProductVersionAcceptDataSourceProductVersion:v9] & 1;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  v5 = v11;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

+ (BOOL)canRestoreBackupMadeOnVersion:(id)a3 toSystemVersion:(id)a4 toSystemVersionFetchedFromCurrentSystemVersion:(BOOL)a5
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v11 = [v15 _canRestoreBackupMadeOnVersion:location[0] toSystemVersion:v13] & 1;
  if (v11 && v12 && (os_variant_has_internal_ui() & 1) != 0 && +[BuddyDataSourceCompatibilityManagerTestingSurrogate enabled])
  {
    v7 = objc_alloc_init(BuddyDataSourceCompatibilityManagerTestingSurrogate);
    v11 = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)v7 canCurrentProductVersionAcceptDataSourceProductVersion:location[0], v7];
    objc_storeStrong(&v10, 0);
  }

  v8 = v11;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

+ (BOOL)_canRestoreBackupMadeOnVersion:(id)a3 toSystemVersion:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = [location[0] componentsSeparatedByString:@"."];
  v13 = [v15 componentsSeparatedByString:@"."];
  if ([v14 count] && objc_msgSend(v13, "count"))
  {
    for (i = 0; ; ++i)
    {
      v5 = [v14 count];
      v6 = v5 <= [v13 count] ? objc_msgSend(v13, "count") : objc_msgSend(v14, "count");
      if (i >= v6)
      {
        break;
      }

      v11 = 0;
      v10 = 0;
      if (i < [v14 count])
      {
        v7 = [v14 objectAtIndexedSubscript:i];
        v11 = [v7 intValue];
      }

      if (i < [v13 count])
      {
        v8 = [v13 objectAtIndexedSubscript:i];
        v10 = [v8 intValue];
      }

      if (v10 > v11)
      {
        v17 = 1;
        goto LABEL_19;
      }

      if (v11 > v10)
      {
        v17 = 0;
        goto LABEL_19;
      }
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v17 & 1;
}

+ (id)_suggestedBackupForUDID:(id)a3 deviceClass:(id)a4 backups:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  v27 = 0;
  v26 = 0;
  memset(__b, 0, sizeof(__b));
  v7 = v29;
  v8 = [v7 countByEnumeratingWithState:__b objects:v33 count:16];
  if (v8)
  {
    v9 = *__b[2];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v7);
      }

      obj = *(__b[1] + 8 * v10);
      v23 = [BuddyBackupUtilities latestCommittedSnapshotFromBackup:obj requireCompatible:0];
      v11 = [obj backupUDID];
      v12 = [v11 isEqualToString:location[0]];

      if (v12)
      {
        objc_storeStrong(&v28, obj);
        objc_storeStrong(&v27, v23);
        v22 = 2;
      }

      else
      {
        v13 = [obj deviceClass];
        v20 = 0;
        v14 = 0;
        if ([v13 isEqualToString:v30])
        {
          v14 = 1;
          if (v26)
          {
            v15 = v26;
            v21 = [v23 date];
            v20 = 1;
            v14 = [v15 compare:?] == -1;
          }
        }

        if (v20)
        {
        }

        if (v14)
        {
          objc_storeStrong(&v28, obj);
          objc_storeStrong(&v27, v23);
          v16 = [v23 date];
          v17 = v26;
          v26 = v16;
        }

        v22 = 0;
      }

      objc_storeStrong(&v23, 0);
      if (v22)
      {
        break;
      }

      if (++v10 >= v8)
      {
        v8 = [v7 countByEnumeratingWithState:__b objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v28 && v27)
  {
    v32 = [RestorableBackupItem restorableBackupItemWithBackup:v28 snapshot:v27];
  }

  else
  {
    v32 = 0;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  v18 = v32;

  return v18;
}

@end
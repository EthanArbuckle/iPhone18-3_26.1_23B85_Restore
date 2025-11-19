@interface CloudExtensionSQLiteStore
- (CloudExtensionSQLiteStore)initWithDatabaseURL:(id)a3 cloudExtensionsRecordZoneID:(id)a4;
- (CloudExtensionSQLiteStoreDelegate)delegate;
- (id)_cloudExtensionStateFromRow:(id)a3 deviceUUIDString:(id)a4;
- (id)_loadDeviceWithUUIDString:(id)a3;
- (id)_loadDevices;
- (int)_createFreshDatabaseSchema;
- (int)_loadExtensionStatesForDevice:(id)a3;
- (int)_resetDatabaseSchema;
- (int)_saveDevice:(id)a3;
- (int)_saveExtensionState:(id)a3;
- (void)_databaseAtURL:(id)a3 failedToDeleteWithError:(id)a4;
- (void)_databaseAtURL:(id)a3 failedToOpenWithError:(id)a4;
- (void)_databaseAtURL:(id)a3 hasIncorrectSchemaVersion:(int)a4;
- (void)_databaseWillBeClosed;
- (void)_databaseWillBeDeleted;
- (void)_databaseWillBeOpened;
- (void)_databaseWillBeRecreated;
- (void)_failedToDeleteMetadataValueWithKey:(id)a3 error:(int)a4;
- (void)_failedToEnableForeignKeysWithError:(int)a3;
- (void)_failedToEnableSecureDeleteWithError:(int)a3;
- (void)_failedToEnableWALWithError:(id)a3;
- (void)_failedToExcludeDatabaseFromBackupWithError:(id)a3;
- (void)_failedToInsertMetadataValueWithKey:(id)a3 error:(int)a4;
- (void)_failedToSetSchemaVersion:(int)a3 withError:(int)a4;
- (void)_failedToUpdateMetadataValueWithKey:(id)a3 error:(int)a4;
- (void)_vacuumFailedWithError:(int)a3;
- (void)database:(id)a3 hadSevereError:(id)a4;
- (void)deleteRecordsWithPrimaryKeys:(id)a3 completionHandler:(id)a4;
- (void)loadCloudExtensionDataWithCompletionHandler:(id)a3;
- (void)loadCloudExtensionDeviceWithUUIDString:(id)a3 includeCloudExtensionStates:(BOOL)a4 completionHandler:(id)a5;
- (void)saveCloudExtensionDevices:(id)a3 extensionStates:(id)a4 completionHandler:(id)a5;
@end

@implementation CloudExtensionSQLiteStore

- (CloudExtensionSQLiteStore)initWithDatabaseURL:(id)a3 cloudExtensionsRecordZoneID:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CloudExtensionSQLiteStore;
  v8 = [(CloudKitSQLiteStore *)&v12 initWithDatabaseURL:a3 databaseQueueLabel:"com.apple.Safari.CloudBookmarks.CloudExtensionSQLiteStore"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudExtensionsRecordZoneID, a4);
    v10 = v9;
  }

  return v9;
}

- (void)loadCloudExtensionDeviceWithUUIDString:(id)a3 includeCloudExtensionStates:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CloudKitSQLiteStore *)self _databaseQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087E14;
  v13[3] = &unk_100135448;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)loadCloudExtensionDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CloudKitSQLiteStore *)self _databaseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100087FD8;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)deleteRecordsWithPrimaryKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CloudKitSQLiteStore *)self _databaseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000882A4;
    block[3] = &unk_100135498;
    block[4] = self;
    v11 = v7;
    v10 = v6;
    dispatch_async(v8, block);
  }

  else
  {
    (*(v7 + 2))(v7, 101);
  }
}

- (void)saveCloudExtensionDevices:(id)a3 extensionStates:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudKitSQLiteStore *)self _databaseQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000886B8;
  v15[3] = &unk_1001354C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)database:(id)a3 hadSevereError:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 cloudExtensionSQLiteStoreStore:self hadSevereError:v8];
  }
}

- (int)_createFreshDatabaseSchema
{
  v3 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v3, 0, @"CREATE TABLE cloud_extension_devices (device_uuid TEXT PRIMARY KEY NOT NULL,system_fields BLOB NOT NULL,device_name TEXT,last_modified REAL NOT NULL,new_tab_page_composed_identifier TEXT,new_tab_page_set_by_user_gesture BOOLEAN DEFAULT 0,new_tab_page_last_modified REAL NOT NULL)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [(CloudKitSQLiteStore *)self _database];
      v12 = [v11 lastErrorMessage];
      v18 = 138543618;
      v19 = v12;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the cloud_extension_devices table: %{public}@ (%d)", &v18, 0x12u);
    }

    goto LABEL_13;
  }

  v5 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v5, 0, @"CREATE TABLE cloud_extension_states (record_name TEXT PRIMARY KEY NOT NULL,composed_identifier TEXT NOT NULL,system_fields BLOB NOT NULL,owning_device_uuid TEXT NOT NULL,containing_app_adam_id TEXT,display_name TEXT NOT NULL,is_enabled BOOLEAN DEFAULT 0,was_enabled_by_user_gesture BOOLEAN DEFAULT 0,ios_app_bundle_identifier TEXT,ios_extension_bundle_identifier TEXT,mac_app_bundle_identifier TEXT,mac_extension_bundle_identifier TEXT,profile_uuid_string TEXT,last_modified REAL NOT NULL,FOREIGN KEY(owning_device_uuid) REFERENCES cloud_extension_devices(device_uuid) ON DELETE CASCADE)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CloudKitSQLiteStore *)self _database];
      v14 = [v13 lastErrorMessage];
      v18 = 138543618;
      v19 = v14;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the cloud_extension_states table: %{public}@ (%d)", &v18, 0x12u);
    }

    goto LABEL_13;
  }

  v6 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v6, 0, @"CREATE INDEX cloud_extension_states__owning_device_uuid ON cloud_extension_states (owning_device_uuid)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = [(CloudKitSQLiteStore *)self _database];
      v17 = [v16 lastErrorMessage];
      v18 = 138543618;
      v19 = v17;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the index for cloud_extension_states table: %{public}@ (%d)", &v18, 0x12u);
    }

    goto LABEL_13;
  }

  v7 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v7, 0, @"CREATE TABLE metadata (key TEXT NOT NULL UNIQUE, value)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(CloudKitSQLiteStore *)self _database];
      v10 = [v9 lastErrorMessage];
      v18 = 138543618;
      v19 = v10;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the metadata table: %{public}@ (%d)", &v18, 0x12u);
    }

LABEL_13:
  }

  return v4;
}

- (int)_resetDatabaseSchema
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&off_10013CB78 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(&off_10013CB78);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = [(CloudKitSQLiteStore *)self _database];
        v8 = sub_100001E04(v7, 0, v6);

        if (v8 != 101)
        {
          v9 = sub_1000D23FC();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = [(CloudKitSQLiteStore *)self _database];
            v12 = [v11 lastErrorMessage];
            *buf = 138543618;
            v18 = v12;
            v19 = 1024;
            v20 = v8;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to execute query when resetting database schema: %{public}@ (%d)", buf, 0x12u);
          }

          return v8;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [&off_10013CB78 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = [(CloudKitSQLiteStore *)self _setDatabaseSchemaVersion:0];
  [(CloudKitSQLiteStore *)self _vacuum];
  return v8;
}

- (void)_databaseWillBeOpened
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BF30();
  }
}

- (void)_databaseAtURL:(id)a3 failedToOpenWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 safari_privacyPreservingDescription];
    sub_10008BF70(v5, v8, &v9);
  }
}

- (void)_failedToExcludeDatabaseFromBackupWithError:(id)a3
{
  v3 = a3;
  v4 = sub_1000D23FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 safari_privacyPreservingDescription];
    sub_10008BFC8(v5, &v6);
  }
}

- (void)_failedToEnableWALWithError:(id)a3
{
  v3 = a3;
  v4 = sub_1000D23FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 safari_privacyPreservingDescription];
    sub_10008C01C(v5, &v6);
  }
}

- (void)_failedToEnableForeignKeysWithError:(int)a3
{
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(CloudKitSQLiteStore *)self _database];
    v7 = [v6 lastErrorMessage];
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable foreign keys on iCloud Extensions store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_failedToEnableSecureDeleteWithError:(int)a3
{
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(CloudKitSQLiteStore *)self _database];
    v7 = [v6 lastErrorMessage];
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable secure delete on iCloud Extensions store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_databaseAtURL:(id)a3 hasIncorrectSchemaVersion:(int)a4
{
  v4 = a3;
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10008C070();
  }
}

- (void)_databaseWillBeClosed
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C104();
  }
}

- (void)_databaseWillBeDeleted
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing iCloud Extensions store file", v3, 2u);
  }
}

- (void)_databaseAtURL:(id)a3 failedToDeleteWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 safari_privacyPreservingDescription];
    sub_10008C144(v5, v8, &v9);
  }
}

- (void)_databaseWillBeRecreated
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Recreating iCloud Extensions store file after removing it", v3, 2u);
  }
}

- (void)_failedToSetSchemaVersion:(int)a3 withError:(int)a4
{
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(CloudKitSQLiteStore *)self _database];
    v9 = [v8 lastErrorMessage];
    v10[0] = 67109634;
    v10[1] = a3;
    v11 = 2114;
    v12 = v9;
    v13 = 1024;
    v14 = a4;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set the database schema version to %d: %{public}@ (%d)", v10, 0x18u);
  }
}

- (void)_failedToUpdateMetadataValueWithKey:(id)a3 error:(int)a4
{
  v6 = a3;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(CloudKitSQLiteStore *)self _database];
    v9 = [v8 lastErrorMessage];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    v14 = 1024;
    v15 = a4;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update metadata value %{public}@: %{public}@ (%d)", &v10, 0x1Cu);
  }
}

- (void)_failedToInsertMetadataValueWithKey:(id)a3 error:(int)a4
{
  v6 = a3;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(CloudKitSQLiteStore *)self _database];
    v9 = [v8 lastErrorMessage];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    v14 = 1024;
    v15 = a4;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to insert metadata value %{public}@: %{public}@ (%d)", &v10, 0x1Cu);
  }
}

- (void)_failedToDeleteMetadataValueWithKey:(id)a3 error:(int)a4
{
  v6 = a3;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(CloudKitSQLiteStore *)self _database];
    v9 = [v8 lastErrorMessage];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    v14 = 1024;
    v15 = a4;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to delete metadata value for key %{public}@: %{public}@ (%d)", &v10, 0x1Cu);
  }
}

- (void)_vacuumFailedWithError:(int)a3
{
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(CloudKitSQLiteStore *)self _database];
    v7 = [v6 lastErrorMessage];
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to vacuum database: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (id)_loadDevices
{
  v2 = [(CloudKitSQLiteStore *)self _database];
  v22 = sub_100002034(v2, @"SELECT device_uuid, system_fields, device_name, last_modified, new_tab_page_composed_identifier, new_tab_page_set_by_user_gesture, new_tab_page_last_modified FROM cloud_extension_devices");

  v23 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v22;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v26 = *v33;
    v4 = &CPSharedResourcesDirectory_ptr;
    do
    {
      v27 = v3;
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = [v6 stringAtIndex:0];
        if ([v7 length])
        {
          v8 = [v6 uncopiedDataAtIndex:1];
          if ([v8 length])
          {
            v9 = [v6 stringAtIndex:2];
            v10 = v4[427];
            [v6 doubleAtIndex:3];
            v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
            v12 = [v6 stringAtIndex:4];
            v13 = [v6 BOOLAtIndex:5];
            v14 = v4;
            v15 = v4[427];
            [v6 doubleAtIndex:6];
            v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
            v17 = [CloudExtensionDevice cloudExtensionDeviceWithDeviceUUIDString:v7 deviceName:v9 lastModifiedDate:v11 newTabPageComposedIdentifier:v12 newTabPageSetByUserGesture:v13 newTabPageLastModifiedDate:v16 encodedSystemFieldsData:v8 cloudExtensionsRecordZoneID:self->_cloudExtensionsRecordZoneID];
            if (v17)
            {
              [v23 addObject:v17];
            }

            v4 = v14;
          }

          else
          {
            v19 = sub_1000D23FC();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_10008C19C(&v28, v29);
            }
          }
        }

        else
        {
          v18 = sub_1000D23FC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10008C1D8(&v30, v31);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v3);
  }

  v20 = [obj statement];
  [v20 invalidate];

  return v23;
}

- (id)_loadDeviceWithUUIDString:(id)a3
{
  v18 = a3;
  v4 = [(CloudKitSQLiteStore *)self _database];
  v5 = sub_10008A264(v4, @"SELECT system_fields, device_name, last_modified, new_tab_page_composed_identifier, new_tab_page_set_by_user_gesture, new_tab_page_last_modified FROM cloud_extension_devices WHERE device_uuid = ?", &v18);

  v6 = [v5 nextObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 dataAtIndex:0];
    if ([v8 length])
    {
      v9 = [v7 stringAtIndex:1];
      [v7 doubleAtIndex:2];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v11 = [v7 stringAtIndex:3];
      v12 = [v7 BOOLAtIndex:4];
      [v7 doubleAtIndex:5];
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v14 = [v5 statement];
      [v14 invalidate];

      v15 = [CloudExtensionDevice cloudExtensionDeviceWithDeviceUUIDString:v18 deviceName:v9 lastModifiedDate:v10 newTabPageComposedIdentifier:v11 newTabPageSetByUserGesture:v12 newTabPageLastModifiedDate:v13 encodedSystemFieldsData:v8 cloudExtensionsRecordZoneID:self->_cloudExtensionsRecordZoneID];
    }

    else
    {
      v16 = sub_1000D23FC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008C214();
      }

      v9 = [v5 statement];
      [v9 invalidate];
      v15 = 0;
    }
  }

  else
  {
    v8 = [v5 statement];
    [v8 invalidate];
    v15 = 0;
  }

  return v15;
}

- (int)_saveDevice:(id)a3
{
  v4 = a3;
  v5 = [WBSSQLiteStatement alloc];
  v6 = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:v6 query:{@"INSERT INTO cloud_extension_devices (device_uuid, system_fields, device_name, last_modified, new_tab_page_composed_identifier, new_tab_page_set_by_user_gesture, new_tab_page_last_modified)VALUES (?, ?, ?, ?, ?, ?, ?)ON CONFLICT(device_uuid) DO UPDATE SET device_uuid = ?1, system_fields = ?2, device_name = ?3, last_modified = ?4, new_tab_page_composed_identifier = ?5, new_tab_page_set_by_user_gesture = ?6, new_tab_page_last_modified = ?7"}];

  v23 = [v4 deviceUUIDString];
  v8 = [v4 record];
  v22 = [v8 safari_encodedSystemFieldsData];
  v21 = [v4 deviceName];
  v9 = [v4 lastModifiedDate];
  [v9 timeIntervalSinceReferenceDate];
  *buf = v10;
  v20 = [v4 composedIdentifierForNewTabPage];
  v19 = [v4 wasNewTabPageSetByUserGesture];
  v11 = [v4 lastModifiedDateForNewTabPage];
  [v11 timeIntervalSinceReferenceDate];
  v18 = v12;
  sub_10008B294(v7, &v23, &v22, &v21, buf, &v20, &v19, &v18);

  v13 = [v7 execute];
  [v7 reset];
  if (v13 != 101)
  {
    v14 = sub_1000D23FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [(CloudKitSQLiteStore *)self _database];
      v17 = [v16 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = v17;
      v25 = 1024;
      v26 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to insert or replace device: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return v13;
}

- (int)_loadExtensionStatesForDevice:(id)a3
{
  v4 = a3;
  v22 = [v4 deviceUUIDString];
  v5 = [(CloudKitSQLiteStore *)self _database];
  v6 = sub_10008A264(v5, @"SELECT composed_identifier, system_fields, containing_app_adam_id, display_name, is_enabled, was_enabled_by_user_gesture, ios_app_bundle_identifier, ios_extension_bundle_identifier, mac_app_bundle_identifier, mac_extension_bundle_identifier, last_modified, record_name, profile_uuid_string FROM cloud_extension_states WHERE owning_device_uuid = ?", &v22);

  v7 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(CloudExtensionSQLiteStore *)self _cloudExtensionStateFromRow:*(*(&v18 + 1) + 8 * i) deviceUUIDString:v22, v18];
        if (!v12)
        {
          v16 = [v8 statement];
          [v16 invalidate];

          v15 = 1;
          v14 = v8;
          goto LABEL_11;
        }

        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v8 statement];
  [v13 invalidate];

  v14 = [v7 copy];
  [v4 setCloudExtensionStates:v14];
  v15 = 101;
LABEL_11:

  return v15;
}

- (id)_cloudExtensionStateFromRow:(id)a3 deviceUUIDString:(id)a4
{
  v6 = a3;
  v24 = a4;
  v7 = [v6 stringAtIndex:0];
  if ([v7 length])
  {
    v23 = [v6 dataAtIndex:1];
    if ([v23 length])
    {
      v22 = [v6 stringAtIndex:2];
      v21 = [v6 stringAtIndex:3];
      v8 = [v6 BOOLAtIndex:4];
      v20 = [v6 BOOLAtIndex:5];
      v9 = [v6 stringAtIndex:6];
      if (![v9 length])
      {

        v9 = 0;
      }

      v10 = [v6 stringAtIndex:7];
      if (![v10 length])
      {

        v10 = 0;
      }

      v11 = [v6 stringAtIndex:8];
      if (![v11 length])
      {

        v11 = 0;
      }

      v12 = [v6 stringAtIndex:9];
      if (![v12 length])
      {

        v12 = 0;
      }

      [v6 doubleAtIndex:10];
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v14 = [v6 stringAtIndex:12];
      if (![v14 length])
      {

        v14 = 0;
      }

      LOBYTE(v19) = v20;
      v15 = [CloudExtensionState cloudExtensionStateWithComposedIdentifier:v7 owningDeviceUUIDString:v24 lastModifiedDate:v13 containingAppAdamID:v22 displayName:v21 isEnabled:v8 wasEnabledByUserGesture:v19 iosAppBundleIdentifier:v9 iosExtensionBundleIdentifier:v10 macAppBundleIdentifier:v11 macExtensionBundleIdentifier:v12 profileIdentifier:v14 encodedSystemFieldsData:v23 cloudExtensionsRecordZoneID:self->_cloudExtensionsRecordZoneID];
    }

    else
    {
      v17 = sub_1000D23FC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10008C248();
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = sub_1000D23FC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10008C27C();
    }

    v15 = 0;
  }

  return v15;
}

- (int)_saveExtensionState:(id)a3
{
  v4 = a3;
  v5 = [WBSSQLiteStatement alloc];
  v6 = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:v6 query:{@"INSERT OR REPLACE INTO cloud_extension_states (record_name, composed_identifier, system_fields, owning_device_uuid, containing_app_adam_id, display_name, is_enabled, was_enabled_by_user_gesture, ios_app_bundle_identifier, ios_extension_bundle_identifier, mac_app_bundle_identifier, mac_extension_bundle_identifier, profile_uuid_string, last_modified)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];

  v8 = [v4 iosAppBundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_100137BA8;
  }

  v44 = v10;

  v11 = [v4 iosExtensionBundleIdentifier];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_100137BA8;
  }

  v43 = v13;

  v14 = [v4 macAppBundleIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_100137BA8;
  }

  v42 = v16;

  v17 = [v4 macExtensionBundleIdentifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_100137BA8;
  }

  v41 = v19;

  v20 = [v4 profileIdentifier];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_100137BA8;
  }

  v40 = v22;

  v23 = [v4 record];
  v39 = [v23 safari_recordName];
  v38 = [v4 composedIdentifier];
  v24 = [v4 record];
  v37 = [v24 safari_encodedSystemFieldsData];
  v36 = [v4 owningDeviceUUIDString];
  v35 = [v4 containingAppAdamID];
  v34 = [v4 displayName];
  v33 = [v4 isEnabled];
  v32 = [v4 wasEnabledByUserGesture];
  v25 = [v4 lastModifiedDate];
  [v25 timeIntervalSinceReferenceDate];
  *buf = v26;
  sub_10008B610(v7, &v39, &v38, &v37, &v36, &v35, &v34, &v33, &v32, &v44, &v43, &v42, &v41, &v40, buf);

  v27 = [v7 execute];
  [v7 reset];
  if (v27 != 101)
  {
    v28 = sub_1000D23FC();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = [(CloudKitSQLiteStore *)self _database];
      v31 = [v30 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = v31;
      v46 = 1024;
      v47 = v27;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to insert or replace extension state: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return v27;
}

- (CloudExtensionSQLiteStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
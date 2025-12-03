@interface CloudExtensionSQLiteStore
- (CloudExtensionSQLiteStore)initWithDatabaseURL:(id)l cloudExtensionsRecordZoneID:(id)d;
- (CloudExtensionSQLiteStoreDelegate)delegate;
- (id)_cloudExtensionStateFromRow:(id)row deviceUUIDString:(id)string;
- (id)_loadDeviceWithUUIDString:(id)string;
- (id)_loadDevices;
- (int)_createFreshDatabaseSchema;
- (int)_loadExtensionStatesForDevice:(id)device;
- (int)_resetDatabaseSchema;
- (int)_saveDevice:(id)device;
- (int)_saveExtensionState:(id)state;
- (void)_databaseAtURL:(id)l failedToDeleteWithError:(id)error;
- (void)_databaseAtURL:(id)l failedToOpenWithError:(id)error;
- (void)_databaseAtURL:(id)l hasIncorrectSchemaVersion:(int)version;
- (void)_databaseWillBeClosed;
- (void)_databaseWillBeDeleted;
- (void)_databaseWillBeOpened;
- (void)_databaseWillBeRecreated;
- (void)_failedToDeleteMetadataValueWithKey:(id)key error:(int)error;
- (void)_failedToEnableForeignKeysWithError:(int)error;
- (void)_failedToEnableSecureDeleteWithError:(int)error;
- (void)_failedToEnableWALWithError:(id)error;
- (void)_failedToExcludeDatabaseFromBackupWithError:(id)error;
- (void)_failedToInsertMetadataValueWithKey:(id)key error:(int)error;
- (void)_failedToSetSchemaVersion:(int)version withError:(int)error;
- (void)_failedToUpdateMetadataValueWithKey:(id)key error:(int)error;
- (void)_vacuumFailedWithError:(int)error;
- (void)database:(id)database hadSevereError:(id)error;
- (void)deleteRecordsWithPrimaryKeys:(id)keys completionHandler:(id)handler;
- (void)loadCloudExtensionDataWithCompletionHandler:(id)handler;
- (void)loadCloudExtensionDeviceWithUUIDString:(id)string includeCloudExtensionStates:(BOOL)states completionHandler:(id)handler;
- (void)saveCloudExtensionDevices:(id)devices extensionStates:(id)states completionHandler:(id)handler;
@end

@implementation CloudExtensionSQLiteStore

- (CloudExtensionSQLiteStore)initWithDatabaseURL:(id)l cloudExtensionsRecordZoneID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CloudExtensionSQLiteStore;
  v8 = [(CloudKitSQLiteStore *)&v12 initWithDatabaseURL:l databaseQueueLabel:"com.apple.Safari.CloudBookmarks.CloudExtensionSQLiteStore"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudExtensionsRecordZoneID, d);
    v10 = v9;
  }

  return v9;
}

- (void)loadCloudExtensionDeviceWithUUIDString:(id)string includeCloudExtensionStates:(BOOL)states completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087E14;
  v13[3] = &unk_100135448;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  statesCopy = states;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(_databaseQueue, v13);
}

- (void)loadCloudExtensionDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100087FD8;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_databaseQueue, v7);
}

- (void)deleteRecordsWithPrimaryKeys:(id)keys completionHandler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  if ([keysCopy count])
  {
    _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000882A4;
    block[3] = &unk_100135498;
    block[4] = self;
    v11 = handlerCopy;
    v10 = keysCopy;
    dispatch_async(_databaseQueue, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 101);
  }
}

- (void)saveCloudExtensionDevices:(id)devices extensionStates:(id)states completionHandler:(id)handler
{
  devicesCopy = devices;
  statesCopy = states;
  handlerCopy = handler;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000886B8;
  v15[3] = &unk_1001354C0;
  v15[4] = self;
  v16 = devicesCopy;
  v17 = statesCopy;
  v18 = handlerCopy;
  v12 = statesCopy;
  v13 = devicesCopy;
  v14 = handlerCopy;
  dispatch_async(_databaseQueue, v15);
}

- (void)database:(id)database hadSevereError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 cloudExtensionSQLiteStoreStore:self hadSevereError:errorCopy];
  }
}

- (int)_createFreshDatabaseSchema
{
  _database = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database, 0, @"CREATE TABLE cloud_extension_devices (device_uuid TEXT PRIMARY KEY NOT NULL,system_fields BLOB NOT NULL,device_name TEXT,last_modified REAL NOT NULL,new_tab_page_composed_identifier TEXT,new_tab_page_set_by_user_gesture BOOLEAN DEFAULT 0,new_tab_page_last_modified REAL NOT NULL)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      v18 = 138543618;
      v19 = lastErrorMessage;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the cloud_extension_devices table: %{public}@ (%d)", &v18, 0x12u);
    }

    goto LABEL_13;
  }

  _database3 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database3, 0, @"CREATE TABLE cloud_extension_states (record_name TEXT PRIMARY KEY NOT NULL,composed_identifier TEXT NOT NULL,system_fields BLOB NOT NULL,owning_device_uuid TEXT NOT NULL,containing_app_adam_id TEXT,display_name TEXT NOT NULL,is_enabled BOOLEAN DEFAULT 0,was_enabled_by_user_gesture BOOLEAN DEFAULT 0,ios_app_bundle_identifier TEXT,ios_extension_bundle_identifier TEXT,mac_app_bundle_identifier TEXT,mac_extension_bundle_identifier TEXT,profile_uuid_string TEXT,last_modified REAL NOT NULL,FOREIGN KEY(owning_device_uuid) REFERENCES cloud_extension_devices(device_uuid) ON DELETE CASCADE)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _database4 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage2 = [_database4 lastErrorMessage];
      v18 = 138543618;
      v19 = lastErrorMessage2;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the cloud_extension_states table: %{public}@ (%d)", &v18, 0x12u);
    }

    goto LABEL_13;
  }

  _database5 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database5, 0, @"CREATE INDEX cloud_extension_states__owning_device_uuid ON cloud_extension_states (owning_device_uuid)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _database6 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage3 = [_database6 lastErrorMessage];
      v18 = 138543618;
      v19 = lastErrorMessage3;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create the index for cloud_extension_states table: %{public}@ (%d)", &v18, 0x12u);
    }

    goto LABEL_13;
  }

  _database7 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database7, 0, @"CREATE TABLE metadata (key TEXT NOT NULL UNIQUE, value)");

  if (v4 != 101)
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _database8 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage4 = [_database8 lastErrorMessage];
      v18 = 138543618;
      v19 = lastErrorMessage4;
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
        _database = [(CloudKitSQLiteStore *)self _database];
        v8 = sub_100001E04(_database, 0, v6);

        if (v8 != 101)
        {
          v9 = sub_1000D23FC();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            _database2 = [(CloudKitSQLiteStore *)self _database];
            lastErrorMessage = [_database2 lastErrorMessage];
            *buf = 138543618;
            v18 = lastErrorMessage;
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

- (void)_databaseAtURL:(id)l failedToOpenWithError:(id)error
{
  lCopy = l;
  errorCopy = error;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_10008BF70(lCopy, safari_privacyPreservingDescription, &v9);
  }
}

- (void)_failedToExcludeDatabaseFromBackupWithError:(id)error
{
  errorCopy = error;
  v4 = sub_1000D23FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_10008BFC8(safari_privacyPreservingDescription, &v6);
  }
}

- (void)_failedToEnableWALWithError:(id)error
{
  errorCopy = error;
  v4 = sub_1000D23FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_10008C01C(safari_privacyPreservingDescription, &v6);
  }
}

- (void)_failedToEnableForeignKeysWithError:(int)error
{
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v8 = 138543618;
    v9 = lastErrorMessage;
    v10 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable foreign keys on iCloud Extensions store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_failedToEnableSecureDeleteWithError:(int)error
{
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v8 = 138543618;
    v9 = lastErrorMessage;
    v10 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable secure delete on iCloud Extensions store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_databaseAtURL:(id)l hasIncorrectSchemaVersion:(int)version
{
  lCopy = l;
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

- (void)_databaseAtURL:(id)l failedToDeleteWithError:(id)error
{
  lCopy = l;
  errorCopy = error;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_10008C144(lCopy, safari_privacyPreservingDescription, &v9);
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

- (void)_failedToSetSchemaVersion:(int)version withError:(int)error
{
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v10[0] = 67109634;
    v10[1] = version;
    v11 = 2114;
    v12 = lastErrorMessage;
    v13 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set the database schema version to %d: %{public}@ (%d)", v10, 0x18u);
  }
}

- (void)_failedToUpdateMetadataValueWithKey:(id)key error:(int)error
{
  keyCopy = key;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v10 = 138543874;
    v11 = keyCopy;
    v12 = 2114;
    v13 = lastErrorMessage;
    v14 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update metadata value %{public}@: %{public}@ (%d)", &v10, 0x1Cu);
  }
}

- (void)_failedToInsertMetadataValueWithKey:(id)key error:(int)error
{
  keyCopy = key;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v10 = 138543874;
    v11 = keyCopy;
    v12 = 2114;
    v13 = lastErrorMessage;
    v14 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to insert metadata value %{public}@: %{public}@ (%d)", &v10, 0x1Cu);
  }
}

- (void)_failedToDeleteMetadataValueWithKey:(id)key error:(int)error
{
  keyCopy = key;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v10 = 138543874;
    v11 = keyCopy;
    v12 = 2114;
    v13 = lastErrorMessage;
    v14 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to delete metadata value for key %{public}@: %{public}@ (%d)", &v10, 0x1Cu);
  }
}

- (void)_vacuumFailedWithError:(int)error
{
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v8 = 138543618;
    v9 = lastErrorMessage;
    v10 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to vacuum database: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (id)_loadDevices
{
  _database = [(CloudKitSQLiteStore *)self _database];
  v22 = sub_100002034(_database, @"SELECT device_uuid, system_fields, device_name, last_modified, new_tab_page_composed_identifier, new_tab_page_set_by_user_gesture, new_tab_page_last_modified FROM cloud_extension_devices");

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

  statement = [obj statement];
  [statement invalidate];

  return v23;
}

- (id)_loadDeviceWithUUIDString:(id)string
{
  stringCopy = string;
  _database = [(CloudKitSQLiteStore *)self _database];
  v5 = sub_10008A264(_database, @"SELECT system_fields, device_name, last_modified, new_tab_page_composed_identifier, new_tab_page_set_by_user_gesture, new_tab_page_last_modified FROM cloud_extension_devices WHERE device_uuid = ?", &stringCopy);

  nextObject = [v5 nextObject];
  v7 = nextObject;
  if (nextObject)
  {
    statement3 = [nextObject dataAtIndex:0];
    if ([statement3 length])
    {
      statement2 = [v7 stringAtIndex:1];
      [v7 doubleAtIndex:2];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v11 = [v7 stringAtIndex:3];
      v12 = [v7 BOOLAtIndex:4];
      [v7 doubleAtIndex:5];
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      statement = [v5 statement];
      [statement invalidate];

      v15 = [CloudExtensionDevice cloudExtensionDeviceWithDeviceUUIDString:stringCopy deviceName:statement2 lastModifiedDate:v10 newTabPageComposedIdentifier:v11 newTabPageSetByUserGesture:v12 newTabPageLastModifiedDate:v13 encodedSystemFieldsData:statement3 cloudExtensionsRecordZoneID:self->_cloudExtensionsRecordZoneID];
    }

    else
    {
      v16 = sub_1000D23FC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008C214();
      }

      statement2 = [v5 statement];
      [statement2 invalidate];
      v15 = 0;
    }
  }

  else
  {
    statement3 = [v5 statement];
    [statement3 invalidate];
    v15 = 0;
  }

  return v15;
}

- (int)_saveDevice:(id)device
{
  deviceCopy = device;
  v5 = [WBSSQLiteStatement alloc];
  _database = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:_database query:{@"INSERT INTO cloud_extension_devices (device_uuid, system_fields, device_name, last_modified, new_tab_page_composed_identifier, new_tab_page_set_by_user_gesture, new_tab_page_last_modified)VALUES (?, ?, ?, ?, ?, ?, ?)ON CONFLICT(device_uuid) DO UPDATE SET device_uuid = ?1, system_fields = ?2, device_name = ?3, last_modified = ?4, new_tab_page_composed_identifier = ?5, new_tab_page_set_by_user_gesture = ?6, new_tab_page_last_modified = ?7"}];

  deviceUUIDString = [deviceCopy deviceUUIDString];
  record = [deviceCopy record];
  safari_encodedSystemFieldsData = [record safari_encodedSystemFieldsData];
  deviceName = [deviceCopy deviceName];
  lastModifiedDate = [deviceCopy lastModifiedDate];
  [lastModifiedDate timeIntervalSinceReferenceDate];
  *buf = v10;
  composedIdentifierForNewTabPage = [deviceCopy composedIdentifierForNewTabPage];
  wasNewTabPageSetByUserGesture = [deviceCopy wasNewTabPageSetByUserGesture];
  lastModifiedDateForNewTabPage = [deviceCopy lastModifiedDateForNewTabPage];
  [lastModifiedDateForNewTabPage timeIntervalSinceReferenceDate];
  v18 = v12;
  sub_10008B294(v7, &deviceUUIDString, &safari_encodedSystemFieldsData, &deviceName, buf, &composedIdentifierForNewTabPage, &wasNewTabPageSetByUserGesture, &v18);

  execute = [v7 execute];
  [v7 reset];
  if (execute != 101)
  {
    v14 = sub_1000D23FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = lastErrorMessage;
      v25 = 1024;
      v26 = execute;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to insert or replace device: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return execute;
}

- (int)_loadExtensionStatesForDevice:(id)device
{
  deviceCopy = device;
  deviceUUIDString = [deviceCopy deviceUUIDString];
  _database = [(CloudKitSQLiteStore *)self _database];
  v6 = sub_10008A264(_database, @"SELECT composed_identifier, system_fields, containing_app_adam_id, display_name, is_enabled, was_enabled_by_user_gesture, ios_app_bundle_identifier, ios_extension_bundle_identifier, mac_app_bundle_identifier, mac_extension_bundle_identifier, last_modified, record_name, profile_uuid_string FROM cloud_extension_states WHERE owning_device_uuid = ?", &deviceUUIDString);

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

        v12 = [(CloudExtensionSQLiteStore *)self _cloudExtensionStateFromRow:*(*(&v18 + 1) + 8 * i) deviceUUIDString:deviceUUIDString, v18];
        if (!v12)
        {
          statement = [v8 statement];
          [statement invalidate];

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

  statement2 = [v8 statement];
  [statement2 invalidate];

  v14 = [v7 copy];
  [deviceCopy setCloudExtensionStates:v14];
  v15 = 101;
LABEL_11:

  return v15;
}

- (id)_cloudExtensionStateFromRow:(id)row deviceUUIDString:(id)string
{
  rowCopy = row;
  stringCopy = string;
  v7 = [rowCopy stringAtIndex:0];
  if ([v7 length])
  {
    v23 = [rowCopy dataAtIndex:1];
    if ([v23 length])
    {
      v22 = [rowCopy stringAtIndex:2];
      v21 = [rowCopy stringAtIndex:3];
      v8 = [rowCopy BOOLAtIndex:4];
      v20 = [rowCopy BOOLAtIndex:5];
      v9 = [rowCopy stringAtIndex:6];
      if (![v9 length])
      {

        v9 = 0;
      }

      v10 = [rowCopy stringAtIndex:7];
      if (![v10 length])
      {

        v10 = 0;
      }

      v11 = [rowCopy stringAtIndex:8];
      if (![v11 length])
      {

        v11 = 0;
      }

      v12 = [rowCopy stringAtIndex:9];
      if (![v12 length])
      {

        v12 = 0;
      }

      [rowCopy doubleAtIndex:10];
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v14 = [rowCopy stringAtIndex:12];
      if (![v14 length])
      {

        v14 = 0;
      }

      LOBYTE(v19) = v20;
      v15 = [CloudExtensionState cloudExtensionStateWithComposedIdentifier:v7 owningDeviceUUIDString:stringCopy lastModifiedDate:v13 containingAppAdamID:v22 displayName:v21 isEnabled:v8 wasEnabledByUserGesture:v19 iosAppBundleIdentifier:v9 iosExtensionBundleIdentifier:v10 macAppBundleIdentifier:v11 macExtensionBundleIdentifier:v12 profileIdentifier:v14 encodedSystemFieldsData:v23 cloudExtensionsRecordZoneID:self->_cloudExtensionsRecordZoneID];
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

- (int)_saveExtensionState:(id)state
{
  stateCopy = state;
  v5 = [WBSSQLiteStatement alloc];
  _database = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:_database query:{@"INSERT OR REPLACE INTO cloud_extension_states (record_name, composed_identifier, system_fields, owning_device_uuid, containing_app_adam_id, display_name, is_enabled, was_enabled_by_user_gesture, ios_app_bundle_identifier, ios_extension_bundle_identifier, mac_app_bundle_identifier, mac_extension_bundle_identifier, profile_uuid_string, last_modified)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];

  iosAppBundleIdentifier = [stateCopy iosAppBundleIdentifier];
  v9 = iosAppBundleIdentifier;
  if (iosAppBundleIdentifier)
  {
    v10 = iosAppBundleIdentifier;
  }

  else
  {
    v10 = &stru_100137BA8;
  }

  v44 = v10;

  iosExtensionBundleIdentifier = [stateCopy iosExtensionBundleIdentifier];
  v12 = iosExtensionBundleIdentifier;
  if (iosExtensionBundleIdentifier)
  {
    v13 = iosExtensionBundleIdentifier;
  }

  else
  {
    v13 = &stru_100137BA8;
  }

  v43 = v13;

  macAppBundleIdentifier = [stateCopy macAppBundleIdentifier];
  v15 = macAppBundleIdentifier;
  if (macAppBundleIdentifier)
  {
    v16 = macAppBundleIdentifier;
  }

  else
  {
    v16 = &stru_100137BA8;
  }

  v42 = v16;

  macExtensionBundleIdentifier = [stateCopy macExtensionBundleIdentifier];
  v18 = macExtensionBundleIdentifier;
  if (macExtensionBundleIdentifier)
  {
    v19 = macExtensionBundleIdentifier;
  }

  else
  {
    v19 = &stru_100137BA8;
  }

  v41 = v19;

  profileIdentifier = [stateCopy profileIdentifier];
  v21 = profileIdentifier;
  if (profileIdentifier)
  {
    v22 = profileIdentifier;
  }

  else
  {
    v22 = &stru_100137BA8;
  }

  v40 = v22;

  record = [stateCopy record];
  safari_recordName = [record safari_recordName];
  composedIdentifier = [stateCopy composedIdentifier];
  record2 = [stateCopy record];
  safari_encodedSystemFieldsData = [record2 safari_encodedSystemFieldsData];
  owningDeviceUUIDString = [stateCopy owningDeviceUUIDString];
  containingAppAdamID = [stateCopy containingAppAdamID];
  displayName = [stateCopy displayName];
  isEnabled = [stateCopy isEnabled];
  wasEnabledByUserGesture = [stateCopy wasEnabledByUserGesture];
  lastModifiedDate = [stateCopy lastModifiedDate];
  [lastModifiedDate timeIntervalSinceReferenceDate];
  *buf = v26;
  sub_10008B610(v7, &safari_recordName, &composedIdentifier, &safari_encodedSystemFieldsData, &owningDeviceUUIDString, &containingAppAdamID, &displayName, &isEnabled, &wasEnabledByUserGesture, &v44, &v43, &v42, &v41, &v40, buf);

  execute = [v7 execute];
  [v7 reset];
  if (execute != 101)
  {
    v28 = sub_1000D23FC();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = lastErrorMessage;
      v46 = 1024;
      v47 = execute;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to insert or replace extension state: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return execute;
}

- (CloudExtensionSQLiteStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
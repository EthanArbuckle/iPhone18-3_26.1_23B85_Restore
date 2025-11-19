@interface CloudTabSQLiteStore
- (CloudTabLocalStoreDelegate)delegate;
- (CloudTabSQLiteStore)initWithDatabaseURL:(id)a3 cloudTabsRecordZoneID:(id)a4;
- (id)_cloudTabFromRow:(id)a3 deviceUUIDString:(id)a4;
- (id)_loadCloseRequests;
- (id)_loadDeviceWithUUIDString:(id)a3;
- (id)_loadDevices;
- (int)_createFreshDatabaseSchema;
- (int)_loadTabsForDevice:(id)a3;
- (int)_resetDatabaseSchema;
- (int)_saveCloseRequest:(id)a3;
- (int)_saveDevice:(id)a3;
- (int)_saveTab:(id)a3;
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
- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)a3;
- (void)loadCloudTabDataWithCompletionHandler:(id)a3;
- (void)loadCloudTabDeviceWithUUIDString:(id)a3 completionHandler:(id)a4;
- (void)saveCloudTabDevices:(id)a3 tabs:(id)a4 closeRequests:(id)a5 completionHandler:(id)a6;
- (void)setUseManateeContainerForSyncing:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation CloudTabSQLiteStore

- (void)_databaseWillBeOpened
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000986DC();
  }
}

- (id)_loadDevices
{
  v3 = [(CloudKitSQLiteStore *)self _database];
  v20 = sub_100002034(v3, @"SELECT device_uuid, system_fields, device_name, has_duplicate_device_name, is_ephemeral_device, last_modified, device_type_identifier FROM cloud_tab_devices");

  v21 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v20;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 stringAtIndex:{0, v20}];
        if ([v9 length])
        {
          v10 = [v8 uncopiedDataAtIndex:1];
          if ([v10 length])
          {
            v11 = objc_alloc_init(CloudTabDeviceParameters);
            [(CloudTabDeviceParameters *)v11 setDeviceUUIDString:v9];
            v12 = [v8 stringAtIndex:2];
            [(CloudTabDeviceParameters *)v11 setDeviceName:v12];

            -[CloudTabDeviceParameters setHasDuplicateName:](v11, "setHasDuplicateName:", [v8 BOOLAtIndex:3]);
            -[CloudTabDeviceParameters setEphemeralDevice:](v11, "setEphemeralDevice:", [v8 BOOLAtIndex:4]);
            [v8 doubleAtIndex:5];
            v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
            [(CloudTabDeviceParameters *)v11 setLastModified:v13];

            v14 = [v8 stringAtIndex:6];
            [(CloudTabDeviceParameters *)v11 setDeviceTypeIdentifier:v14];

            v15 = [CloudTabDevice cloudTabDeviceWithParameters:v11 encodedSystemFieldsData:v10 cloudTabsRecordZoneID:self->_cloudTabsRecordZoneID isManateeContainer:self->_usesManateeContainer];
            if (v15)
            {
              [v21 addObject:v15];
            }
          }

          else
          {
            v17 = sub_100001B78();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100098954(&v22, v23);
            }
          }
        }

        else
        {
          v16 = sub_100001B78();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100098980(&v24, v25);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  v18 = [v4 statement];
  [v18 invalidate];

  return v21;
}

- (id)_loadCloseRequests
{
  v2 = [(CloudKitSQLiteStore *)self _database];
  v21 = sub_100002034(v2, @"SELECT close_request_uuid, system_fields, destination_device_uuid, url, tab_uuid FROM cloud_tab_close_requests");

  v22 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v21;
  v3 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v3)
  {
    v4 = *v38;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = [v6 stringAtIndex:{0, v21}];
        if ([v7 length])
        {
          v8 = [v6 uncopiedDataAtIndex:1];
          if ([v8 length])
          {
            v9 = [v6 stringAtIndex:2];
            if ([v9 length])
            {
              v10 = [v6 stringAtIndex:3];
              if ([v10 length])
              {
                v11 = [v6 stringAtIndex:4];
                if ([v11 length])
                {
                  v12 = [CloudTabCloseRequest cloudTabCloseRequestWithTabUUIDString:v11 tabURLString:v10 destinationDeviceUUIDString:v9 closeRequestUUIDString:v7 encodedSystemFieldsData:v8 cloudTabsRecordZoneID:self->_cloudTabsRecordZoneID];
                  if (v12)
                  {
                    [v22 addObject:v12];
                  }

                  else
                  {
                    v18 = sub_100001B78();
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      sub_100098AB0(&v25, v26);
                    }
                  }
                }

                else
                {
                  v17 = sub_100001B78();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    sub_100098ADC(&v27, v28);
                  }
                }
              }

              else
              {
                v16 = sub_100001B78();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  sub_100098B08(&v29, v30);
                }
              }
            }

            else
            {
              v15 = sub_100001B78();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_100098B34(&v31, v32);
              }
            }
          }

          else
          {
            v14 = sub_100001B78();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_100098B60(&v33, v34);
            }
          }
        }

        else
        {
          v13 = sub_100001B78();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100098B8C(&v35, v36);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v3);
  }

  v19 = [obj statement];
  [v19 invalidate];

  return v22;
}

- (void)_databaseWillBeClosed
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000988BC();
  }
}

- (CloudTabSQLiteStore)initWithDatabaseURL:(id)a3 cloudTabsRecordZoneID:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CloudTabSQLiteStore;
  v8 = [(CloudKitSQLiteStore *)&v12 initWithDatabaseURL:a3 databaseQueueLabel:"com.apple.Safari.CloudBookmarks.CloudTabSQLiteStore"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudTabsRecordZoneID, a4);
    v10 = v9;
  }

  return v9;
}

- (void)loadCloudTabDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CloudKitSQLiteStore *)self _databaseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100094260;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)loadCloudTabDeviceWithUUIDString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudKitSQLiteStore *)self _databaseQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000945A4;
  block[3] = &unk_100135498;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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
    block[2] = sub_1000947A0;
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

- (void)saveCloudTabDevices:(id)a3 tabs:(id)a4 closeRequests:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count] || objc_msgSend(v11, "count") || objc_msgSend(v12, "count"))
  {
    v14 = [(CloudKitSQLiteStore *)self _databaseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100094C80;
    block[3] = &unk_100135600;
    block[4] = self;
    v19 = v13;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(v14, block);
  }

  else
  {
    (*(v13 + 2))(v13, 101);
  }
}

- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CloudKitSQLiteStore *)self _databaseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100095084;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setUseManateeContainerForSyncing:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  self->_usesManateeContainer = a3;
  v7 = [(CloudKitSQLiteStore *)self _databaseQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000951EC;
  block[3] = &unk_100135628;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)database:(id)a3 hadSevereError:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 cloudTabLocalStore:self hadSevereError:v8];
  }
}

- (int)_createFreshDatabaseSchema
{
  v3 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v3, 0, @"CREATE TABLE cloud_tab_devices (device_uuid TEXT PRIMARY KEY NOT NULL,system_fields BLOB NOT NULL,device_name TEXT,device_type_identifier TEXT,has_duplicate_device_name BOOLEAN DEFAULT 0,is_ephemeral_device BOOLEAN DEFAULT 0,last_modified REAL NOT NULL)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CloudKitSQLiteStore *)self _database];
      v14 = [v13 lastErrorMessage];
      v22 = 138543618;
      v23 = v14;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the cloud_tab_devices table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  v5 = [(CloudKitSQLiteStore *)self _database];
  v6 = [NSString stringWithFormat:@"CREATE TABLE cloud_tabs (tab_uuid TEXT PRIMARY KEY NOT NULL, system_fields BLOB NOT NULL, device_uuid TEXT NOT NULL, position BLOB NOT NULL, title TEXT, url TEXT NOT NULL, is_showing_reader BOOLEAN DEFAULT 0, is_pinned BOOLEAN DEFAULT 0, reader_scroll_position_page_index INTEGER, scene_id TEXT, last_viewed_time REAL DEFAULT 0, FOREIGN KEY(device_uuid) REFERENCES cloud_tab_devices(device_uuid) ON DELETE CASCADE)"];
  v4 = sub_100001E04(v5, 0, v6);

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [(CloudKitSQLiteStore *)self _database];
      v16 = [v15 lastErrorMessage];
      v22 = 138543618;
      v23 = v16;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the cloud_tabs table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  v7 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v7, 0, @"CREATE INDEX cloud_tabs__device_uuid ON cloud_tabs (device_uuid)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = [(CloudKitSQLiteStore *)self _database];
      v18 = [v17 lastErrorMessage];
      v22 = 138543618;
      v23 = v18;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the index for cloud_tabs table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  v8 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v8, 0, @"CREATE TABLE cloud_tab_close_requests (close_request_uuid TEXT PRIMARY KEY NOT NULL,system_fields BLOB NOT NULL,destination_device_uuid TEXT NOT NULL,url TEXT NOT NULL,tab_uuid TEXT NOT NULL,FOREIGN KEY(destination_device_uuid) REFERENCES cloud_tab_devices(device_uuid) ON DELETE CASCADE)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = [(CloudKitSQLiteStore *)self _database];
      v21 = [v20 lastErrorMessage];
      v22 = 138543618;
      v23 = v21;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the cloud_tab_close_requests table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  v9 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(v9, 0, @"CREATE TABLE metadata (key TEXT NOT NULL UNIQUE, value)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(CloudKitSQLiteStore *)self _database];
      v12 = [v11 lastErrorMessage];
      v22 = 138543618;
      v23 = v12;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the metadata table: %{public}@ (%d)", &v22, 0x12u);
    }

LABEL_16:
  }

  return v4;
}

- (int)_resetDatabaseSchema
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&off_10013CB90 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(&off_10013CB90);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = [(CloudKitSQLiteStore *)self _database];
        v8 = sub_100001E04(v7, 0, v6);

        if (v8 != 101)
        {
          v9 = sub_100001B78();
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
      v3 = [&off_10013CB90 countByEnumeratingWithState:&v13 objects:v21 count:16];
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

- (void)_databaseAtURL:(id)a3 failedToOpenWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001B78();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 safari_privacyPreservingDescription];
    sub_10009871C(v5, v8, &v9);
  }
}

- (void)_failedToExcludeDatabaseFromBackupWithError:(id)a3
{
  v3 = a3;
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 safari_privacyPreservingDescription];
    sub_100098774(v5, v6, v4);
  }
}

- (void)_failedToEnableWALWithError:(id)a3
{
  v3 = a3;
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 safari_privacyPreservingDescription];
    sub_1000987CC(v5, v6, v4);
  }
}

- (void)_failedToEnableForeignKeysWithError:(int)a3
{
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(CloudKitSQLiteStore *)self _database];
    v7 = [v6 lastErrorMessage];
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable foreign keys on iCloud Tabs store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_failedToEnableSecureDeleteWithError:(int)a3
{
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(CloudKitSQLiteStore *)self _database];
    v7 = [v6 lastErrorMessage];
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable secure delete on iCloud Tabs store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_databaseAtURL:(id)a3 hasIncorrectSchemaVersion:(int)a4
{
  v5 = a3;
  v6 = sub_100001B78();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100098824(v5, a4, v6);
  }
}

- (void)_databaseWillBeDeleted
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing iCloud Tabs store file", v3, 2u);
  }
}

- (void)_databaseAtURL:(id)a3 failedToDeleteWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001B78();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 safari_privacyPreservingDescription];
    sub_1000988FC(v5, v8, &v9);
  }
}

- (void)_databaseWillBeRecreated
{
  v2 = sub_100001B78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Recreating iCloud Tabs store file after removing it", v3, 2u);
  }
}

- (void)_failedToSetSchemaVersion:(int)a3 withError:(int)a4
{
  v7 = sub_100001B78();
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
  v7 = sub_100001B78();
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
  v7 = sub_100001B78();
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
  v7 = sub_100001B78();
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
  v5 = sub_100001B78();
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

- (id)_loadDeviceWithUUIDString:(id)a3
{
  v17 = a3;
  v4 = [(CloudKitSQLiteStore *)self _database];
  v5 = sub_10008A264(v4, @"SELECT system_fields, device_name, has_duplicate_device_name, is_ephemeral_device, last_modified, device_type_identifier FROM cloud_tab_devices WHERE device_uuid = ?", &v17);

  v6 = [v5 nextObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 dataAtIndex:0];
    if ([v8 length])
    {
      v9 = objc_alloc_init(CloudTabDeviceParameters);
      [(CloudTabDeviceParameters *)v9 setDeviceUUIDString:v17];
      v10 = [v7 stringAtIndex:1];
      [(CloudTabDeviceParameters *)v9 setDeviceName:v10];

      -[CloudTabDeviceParameters setHasDuplicateName:](v9, "setHasDuplicateName:", [v7 BOOLAtIndex:2]);
      -[CloudTabDeviceParameters setEphemeralDevice:](v9, "setEphemeralDevice:", [v7 BOOLAtIndex:3]);
      [v7 doubleAtIndex:4];
      v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [(CloudTabDeviceParameters *)v9 setLastModified:v11];

      v12 = [v7 stringAtIndex:5];
      [(CloudTabDeviceParameters *)v9 setDeviceTypeIdentifier:v12];

      v13 = [v5 statement];
      [v13 invalidate];

      v14 = [CloudTabDevice cloudTabDeviceWithParameters:v9 encodedSystemFieldsData:v8 cloudTabsRecordZoneID:self->_cloudTabsRecordZoneID isManateeContainer:self->_usesManateeContainer];
    }

    else
    {
      v15 = sub_100001B78();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10008C214();
      }

      v9 = [v5 statement];
      [(CloudTabDeviceParameters *)v9 invalidate];
      v14 = 0;
    }
  }

  else
  {
    v8 = [v5 statement];
    [v8 invalidate];
    v14 = 0;
  }

  return v14;
}

- (int)_saveDevice:(id)a3
{
  v4 = a3;
  v5 = [WBSSQLiteStatement alloc];
  v6 = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:v6 query:{@"INSERT INTO cloud_tab_devices (device_uuid, system_fields, device_name, has_duplicate_device_name, is_ephemeral_device, last_modified, device_type_identifier)VALUES (?, ?, ?, ?, ?, ?, ?)ON CONFLICT(device_uuid) DO UPDATE SET device_uuid = ?1, system_fields = ?2, device_name = ?3, has_duplicate_device_name = ?4, is_ephemeral_device = ?5, last_modified = ?6, device_type_identifier = ?7"}];

  v21 = [v4 deviceUUIDString];
  v8 = [v4 record];
  v20 = [v8 safari_encodedSystemFieldsData];
  v19 = [v4 deviceName];
  v18 = [v4 hasDuplicateName];
  v17 = [v4 isEphemeralDevice];
  v9 = [v4 lastModified];
  [v9 timeIntervalSinceReferenceDate];
  *buf = v10;
  v16 = [v4 deviceTypeIdentifier];
  sub_100097AA4(v7, &v21, &v20, &v19, &v18, &v17, buf, &v16);

  v11 = [v7 execute];
  [v7 reset];
  if (v11 != 101)
  {
    v12 = sub_100001B78();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [(CloudKitSQLiteStore *)self _database];
      v15 = [v14 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = v15;
      v23 = 1024;
      v24 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to insert or replace device: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return v11;
}

- (int)_loadTabsForDevice:(id)a3
{
  v4 = a3;
  v24 = [v4 deviceUUIDString];
  v5 = [(CloudKitSQLiteStore *)self _database];
  v6 = [NSString stringWithFormat:@"SELECT tab_uuid, system_fields, position, title, url, is_pinned, is_showing_reader, reader_scroll_position_page_index, scene_id, last_viewed_time FROM cloud_tabs WHERE device_uuid = ?"];
  v19 = sub_10008A264(v5, v6, &v24);

  v7 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v19;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(CloudTabSQLiteStore *)self _cloudTabFromRow:v12 deviceUUIDString:v24];
        if (v14)
        {
          [v7 addObject:v14];
        }

        else
        {
          v15 = [v8 statement];
          [v15 invalidate];
        }

        objc_autoreleasePoolPop(v13);
        if (!v14)
        {

          v17 = 1;
          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v8 statement];
  [v16 invalidate];

  [v7 sortUsingComparator:&stru_100135668];
  [v4 setTabs:v7];
  v17 = 101;
LABEL_14:

  return v17;
}

- (id)_cloudTabFromRow:(id)a3 deviceUUIDString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringAtIndex:0];
  if ([v8 length])
  {
    v9 = [v6 dataAtIndex:1];
    if ([v9 length])
    {
      v10 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
      v11 = [v6 dataAtIndex:2];
      v12 = [v10 reverseTransformedValue:v11];

      if (v12)
      {
        v13 = [[WBSCRDTPosition alloc] initWithDictionaryRepresentation:v12];
        if (v13)
        {
          v30 = [v6 stringAtIndex:3];
          v29 = [v6 stringAtIndex:4];
          if ([v29 length])
          {
            v27 = [v6 BOOLAtIndex:5];
            v14 = [v6 BOOLAtIndex:6];
            v15 = [v6 intAtIndex:7];
            v28 = [v6 stringAtIndex:8];
            [v6 doubleAtIndex:9];
            v17 = v16;
            v18 = [[CloudTabParameters alloc] initWithTabUUIDString:v8 owningDeviceUUIDString:v7 owningSceneID:v28 urlString:v29];
            [(CloudTabParameters *)v18 setTitle:v30];
            [(CloudTabParameters *)v18 setPinned:v27];
            [(CloudTabParameters *)v18 setShowingReader:v14];
            if (v15)
            {
              v19 = [NSNumber numberWithInteger:v15];
            }

            else
            {
              v19 = 0;
            }

            [(CloudTabParameters *)v18 setReaderScrollPositionPageIndex:v19];
            if (v15)
            {
            }

            [(CloudTabParameters *)v18 setLastViewedTime:v17];
            [(CloudTabParameters *)v18 setPosition:v13];
            v21 = [CloudTab cloudTabWithParameters:v18 encodedSystemFieldsData:v9 cloudTabsRecordZoneID:self->_cloudTabsRecordZoneID isManateeContainer:self->_usesManateeContainer];
          }

          else
          {
            v25 = sub_100001B78();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1000989AC();
            }

            v21 = 0;
          }
        }

        else
        {
          v24 = sub_100001B78();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000989E0();
          }

          v21 = 0;
        }
      }

      else
      {
        v23 = sub_100001B78();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100098A14();
        }

        v21 = 0;
      }
    }

    else
    {
      v22 = sub_100001B78();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100098A48();
      }

      v21 = 0;
    }
  }

  else
  {
    v20 = sub_100001B78();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100098A7C();
    }

    v21 = 0;
  }

  return v21;
}

- (int)_saveTab:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO cloud_tabs (tab_uuid, system_fields, device_uuid, position, title, url, is_showing_reader, is_pinned, reader_scroll_position_page_index, scene_id, last_viewed_time)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
  v6 = [WBSSQLiteStatement alloc];
  v7 = [(CloudKitSQLiteStore *)self _database];
  v8 = [v6 initWithDatabase:v7 query:v5];

  v9 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
  v10 = [v4 position];
  v11 = [v10 dictionaryRepresentation];
  v29 = [v9 transformedValue:v11];

  v28 = [v4 tabUUIDString];
  v12 = [v4 record];
  v27 = [v12 safari_encodedSystemFieldsData];
  v26 = [v4 owningDeviceUUIDString];
  v25 = [v4 title];
  v24 = [v4 urlString];
  v23 = [v4 isShowingReader];
  v22 = [v4 isPinned];
  v13 = [v4 readerScrollPositionPageIndex];
  *buf = [v13 integerValue];
  v21 = [v4 owningSceneID];
  [v4 lastViewedTime];
  v20 = v14;
  sub_100097E20(v8, &v28, &v27, &v26, &v29, &v25, &v24, &v23, &v22, buf, &v21, &v20);

  v15 = [v8 execute];
  [v8 reset];
  if (v15 != 101)
  {
    v16 = sub_100001B78();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [(CloudKitSQLiteStore *)self _database];
      v19 = [v18 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = v19;
      v31 = 1024;
      v32 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to insert or replace tab: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return v15;
}

- (int)_saveCloseRequest:(id)a3
{
  v4 = a3;
  v5 = [WBSSQLiteStatement alloc];
  v6 = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:v6 query:{@"INSERT OR REPLACE INTO cloud_tab_close_requests (close_request_uuid, system_fields, destination_device_uuid, url, tab_uuid)VALUES (?, ?, ?, ?, ?)"}];

  v18 = [v4 requestUUIDString];
  v8 = [v4 record];
  v17 = [v8 safari_encodedSystemFieldsData];
  v16 = [v4 destinationDeviceUUIDString];
  v15 = [v4 tabURLString];
  v14 = [v4 tabUUIDString];
  sub_1000984B8(v7, &v18, &v17, &v16, &v15, &v14);

  v9 = [v7 execute];
  [v7 invalidate];
  if (v9 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [(CloudKitSQLiteStore *)self _database];
      v13 = [v12 lastErrorMessage];
      *buf = 138543618;
      v20 = v13;
      v21 = 1024;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to insert or replace close request: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return v9;
}

- (CloudTabLocalStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface CloudTabSQLiteStore
- (CloudTabLocalStoreDelegate)delegate;
- (CloudTabSQLiteStore)initWithDatabaseURL:(id)l cloudTabsRecordZoneID:(id)d;
- (id)_cloudTabFromRow:(id)row deviceUUIDString:(id)string;
- (id)_loadCloseRequests;
- (id)_loadDeviceWithUUIDString:(id)string;
- (id)_loadDevices;
- (int)_createFreshDatabaseSchema;
- (int)_loadTabsForDevice:(id)device;
- (int)_resetDatabaseSchema;
- (int)_saveCloseRequest:(id)request;
- (int)_saveDevice:(id)device;
- (int)_saveTab:(id)tab;
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
- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)handler;
- (void)loadCloudTabDataWithCompletionHandler:(id)handler;
- (void)loadCloudTabDeviceWithUUIDString:(id)string completionHandler:(id)handler;
- (void)saveCloudTabDevices:(id)devices tabs:(id)tabs closeRequests:(id)requests completionHandler:(id)handler;
- (void)setUseManateeContainerForSyncing:(BOOL)syncing completionHandler:(id)handler;
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
  _database = [(CloudKitSQLiteStore *)self _database];
  v20 = sub_100002034(_database, @"SELECT device_uuid, system_fields, device_name, has_duplicate_device_name, is_ephemeral_device, last_modified, device_type_identifier FROM cloud_tab_devices");

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

  statement = [v4 statement];
  [statement invalidate];

  return v21;
}

- (id)_loadCloseRequests
{
  _database = [(CloudKitSQLiteStore *)self _database];
  v21 = sub_100002034(_database, @"SELECT close_request_uuid, system_fields, destination_device_uuid, url, tab_uuid FROM cloud_tab_close_requests");

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

  statement = [obj statement];
  [statement invalidate];

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

- (CloudTabSQLiteStore)initWithDatabaseURL:(id)l cloudTabsRecordZoneID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CloudTabSQLiteStore;
  v8 = [(CloudKitSQLiteStore *)&v12 initWithDatabaseURL:l databaseQueueLabel:"com.apple.Safari.CloudBookmarks.CloudTabSQLiteStore"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudTabsRecordZoneID, d);
    v10 = v9;
  }

  return v9;
}

- (void)loadCloudTabDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100094260;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_databaseQueue, v7);
}

- (void)loadCloudTabDeviceWithUUIDString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000945A4;
  block[3] = &unk_100135498;
  v12 = stringCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = stringCopy;
  v10 = handlerCopy;
  dispatch_async(_databaseQueue, block);
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
    block[2] = sub_1000947A0;
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

- (void)saveCloudTabDevices:(id)devices tabs:(id)tabs closeRequests:(id)requests completionHandler:(id)handler
{
  devicesCopy = devices;
  tabsCopy = tabs;
  requestsCopy = requests;
  handlerCopy = handler;
  if ([devicesCopy count] || objc_msgSend(tabsCopy, "count") || objc_msgSend(requestsCopy, "count"))
  {
    _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100094C80;
    block[3] = &unk_100135600;
    block[4] = self;
    v19 = handlerCopy;
    v16 = devicesCopy;
    v17 = tabsCopy;
    v18 = requestsCopy;
    dispatch_async(_databaseQueue, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 101);
  }
}

- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100095084;
  v7[3] = &unk_100135470;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_databaseQueue, v7);
}

- (void)setUseManateeContainerForSyncing:(BOOL)syncing completionHandler:(id)handler
{
  handlerCopy = handler;
  self->_usesManateeContainer = syncing;
  _databaseQueue = [(CloudKitSQLiteStore *)self _databaseQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000951EC;
  block[3] = &unk_100135628;
  block[4] = self;
  v10 = handlerCopy;
  syncingCopy = syncing;
  v8 = handlerCopy;
  dispatch_async(_databaseQueue, block);
}

- (void)database:(id)database hadSevereError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 cloudTabLocalStore:self hadSevereError:errorCopy];
  }
}

- (int)_createFreshDatabaseSchema
{
  _database = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database, 0, @"CREATE TABLE cloud_tab_devices (device_uuid TEXT PRIMARY KEY NOT NULL,system_fields BLOB NOT NULL,device_name TEXT,device_type_identifier TEXT,has_duplicate_device_name BOOLEAN DEFAULT 0,is_ephemeral_device BOOLEAN DEFAULT 0,last_modified REAL NOT NULL)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      v22 = 138543618;
      v23 = lastErrorMessage;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the cloud_tab_devices table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  _database3 = [(CloudKitSQLiteStore *)self _database];
  v6 = [NSString stringWithFormat:@"CREATE TABLE cloud_tabs (tab_uuid TEXT PRIMARY KEY NOT NULL, system_fields BLOB NOT NULL, device_uuid TEXT NOT NULL, position BLOB NOT NULL, title TEXT, url TEXT NOT NULL, is_showing_reader BOOLEAN DEFAULT 0, is_pinned BOOLEAN DEFAULT 0, reader_scroll_position_page_index INTEGER, scene_id TEXT, last_viewed_time REAL DEFAULT 0, FOREIGN KEY(device_uuid) REFERENCES cloud_tab_devices(device_uuid) ON DELETE CASCADE)"];
  v4 = sub_100001E04(_database3, 0, v6);

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _database4 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage2 = [_database4 lastErrorMessage];
      v22 = 138543618;
      v23 = lastErrorMessage2;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the cloud_tabs table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  _database5 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database5, 0, @"CREATE INDEX cloud_tabs__device_uuid ON cloud_tabs (device_uuid)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _database6 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage3 = [_database6 lastErrorMessage];
      v22 = 138543618;
      v23 = lastErrorMessage3;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the index for cloud_tabs table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  _database7 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database7, 0, @"CREATE TABLE cloud_tab_close_requests (close_request_uuid TEXT PRIMARY KEY NOT NULL,system_fields BLOB NOT NULL,destination_device_uuid TEXT NOT NULL,url TEXT NOT NULL,tab_uuid TEXT NOT NULL,FOREIGN KEY(destination_device_uuid) REFERENCES cloud_tab_devices(device_uuid) ON DELETE CASCADE)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _database8 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage4 = [_database8 lastErrorMessage];
      v22 = 138543618;
      v23 = lastErrorMessage4;
      v24 = 1024;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create the cloud_tab_close_requests table: %{public}@ (%d)", &v22, 0x12u);
    }

    goto LABEL_16;
  }

  _database9 = [(CloudKitSQLiteStore *)self _database];
  v4 = sub_100001E04(_database9, 0, @"CREATE TABLE metadata (key TEXT NOT NULL UNIQUE, value)");

  if (v4 != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _database10 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage5 = [_database10 lastErrorMessage];
      v22 = 138543618;
      v23 = lastErrorMessage5;
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
        _database = [(CloudKitSQLiteStore *)self _database];
        v8 = sub_100001E04(_database, 0, v6);

        if (v8 != 101)
        {
          v9 = sub_100001B78();
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

- (void)_databaseAtURL:(id)l failedToOpenWithError:(id)error
{
  lCopy = l;
  errorCopy = error;
  v7 = sub_100001B78();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_10009871C(lCopy, safari_privacyPreservingDescription, &v9);
  }
}

- (void)_failedToExcludeDatabaseFromBackupWithError:(id)error
{
  errorCopy = error;
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_100098774(safari_privacyPreservingDescription, v6, v4);
  }
}

- (void)_failedToEnableWALWithError:(id)error
{
  errorCopy = error;
  v4 = sub_100001B78();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_1000987CC(safari_privacyPreservingDescription, v6, v4);
  }
}

- (void)_failedToEnableForeignKeysWithError:(int)error
{
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v8 = 138543618;
    v9 = lastErrorMessage;
    v10 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable foreign keys on iCloud Tabs store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_failedToEnableSecureDeleteWithError:(int)error
{
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    _database = [(CloudKitSQLiteStore *)self _database];
    lastErrorMessage = [_database lastErrorMessage];
    v8 = 138543618;
    v9 = lastErrorMessage;
    v10 = 1024;
    errorCopy = error;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable secure delete on iCloud Tabs store: %{public}@ (%d)", &v8, 0x12u);
  }
}

- (void)_databaseAtURL:(id)l hasIncorrectSchemaVersion:(int)version
{
  lCopy = l;
  v6 = sub_100001B78();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100098824(lCopy, version, v6);
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

- (void)_databaseAtURL:(id)l failedToDeleteWithError:(id)error
{
  lCopy = l;
  errorCopy = error;
  v7 = sub_100001B78();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    sub_1000988FC(lCopy, safari_privacyPreservingDescription, &v9);
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

- (void)_failedToSetSchemaVersion:(int)version withError:(int)error
{
  v7 = sub_100001B78();
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
  v7 = sub_100001B78();
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
  v7 = sub_100001B78();
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
  v7 = sub_100001B78();
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
  v5 = sub_100001B78();
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

- (id)_loadDeviceWithUUIDString:(id)string
{
  stringCopy = string;
  _database = [(CloudKitSQLiteStore *)self _database];
  v5 = sub_10008A264(_database, @"SELECT system_fields, device_name, has_duplicate_device_name, is_ephemeral_device, last_modified, device_type_identifier FROM cloud_tab_devices WHERE device_uuid = ?", &stringCopy);

  nextObject = [v5 nextObject];
  v7 = nextObject;
  if (nextObject)
  {
    statement3 = [nextObject dataAtIndex:0];
    if ([statement3 length])
    {
      statement2 = objc_alloc_init(CloudTabDeviceParameters);
      [(CloudTabDeviceParameters *)statement2 setDeviceUUIDString:stringCopy];
      v10 = [v7 stringAtIndex:1];
      [(CloudTabDeviceParameters *)statement2 setDeviceName:v10];

      -[CloudTabDeviceParameters setHasDuplicateName:](statement2, "setHasDuplicateName:", [v7 BOOLAtIndex:2]);
      -[CloudTabDeviceParameters setEphemeralDevice:](statement2, "setEphemeralDevice:", [v7 BOOLAtIndex:3]);
      [v7 doubleAtIndex:4];
      v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [(CloudTabDeviceParameters *)statement2 setLastModified:v11];

      v12 = [v7 stringAtIndex:5];
      [(CloudTabDeviceParameters *)statement2 setDeviceTypeIdentifier:v12];

      statement = [v5 statement];
      [statement invalidate];

      v14 = [CloudTabDevice cloudTabDeviceWithParameters:statement2 encodedSystemFieldsData:statement3 cloudTabsRecordZoneID:self->_cloudTabsRecordZoneID isManateeContainer:self->_usesManateeContainer];
    }

    else
    {
      v15 = sub_100001B78();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10008C214();
      }

      statement2 = [v5 statement];
      [(CloudTabDeviceParameters *)statement2 invalidate];
      v14 = 0;
    }
  }

  else
  {
    statement3 = [v5 statement];
    [statement3 invalidate];
    v14 = 0;
  }

  return v14;
}

- (int)_saveDevice:(id)device
{
  deviceCopy = device;
  v5 = [WBSSQLiteStatement alloc];
  _database = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:_database query:{@"INSERT INTO cloud_tab_devices (device_uuid, system_fields, device_name, has_duplicate_device_name, is_ephemeral_device, last_modified, device_type_identifier)VALUES (?, ?, ?, ?, ?, ?, ?)ON CONFLICT(device_uuid) DO UPDATE SET device_uuid = ?1, system_fields = ?2, device_name = ?3, has_duplicate_device_name = ?4, is_ephemeral_device = ?5, last_modified = ?6, device_type_identifier = ?7"}];

  deviceUUIDString = [deviceCopy deviceUUIDString];
  record = [deviceCopy record];
  safari_encodedSystemFieldsData = [record safari_encodedSystemFieldsData];
  deviceName = [deviceCopy deviceName];
  hasDuplicateName = [deviceCopy hasDuplicateName];
  isEphemeralDevice = [deviceCopy isEphemeralDevice];
  lastModified = [deviceCopy lastModified];
  [lastModified timeIntervalSinceReferenceDate];
  *buf = v10;
  deviceTypeIdentifier = [deviceCopy deviceTypeIdentifier];
  sub_100097AA4(v7, &deviceUUIDString, &safari_encodedSystemFieldsData, &deviceName, &hasDuplicateName, &isEphemeralDevice, buf, &deviceTypeIdentifier);

  execute = [v7 execute];
  [v7 reset];
  if (execute != 101)
  {
    v12 = sub_100001B78();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = lastErrorMessage;
      v23 = 1024;
      v24 = execute;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to insert or replace device: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return execute;
}

- (int)_loadTabsForDevice:(id)device
{
  deviceCopy = device;
  deviceUUIDString = [deviceCopy deviceUUIDString];
  _database = [(CloudKitSQLiteStore *)self _database];
  v6 = [NSString stringWithFormat:@"SELECT tab_uuid, system_fields, position, title, url, is_pinned, is_showing_reader, reader_scroll_position_page_index, scene_id, last_viewed_time FROM cloud_tabs WHERE device_uuid = ?"];
  v19 = sub_10008A264(_database, v6, &deviceUUIDString);

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
        v14 = [(CloudTabSQLiteStore *)self _cloudTabFromRow:v12 deviceUUIDString:deviceUUIDString];
        if (v14)
        {
          [v7 addObject:v14];
        }

        else
        {
          statement = [v8 statement];
          [statement invalidate];
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

  statement2 = [v8 statement];
  [statement2 invalidate];

  [v7 sortUsingComparator:&stru_100135668];
  [deviceCopy setTabs:v7];
  v17 = 101;
LABEL_14:

  return v17;
}

- (id)_cloudTabFromRow:(id)row deviceUUIDString:(id)string
{
  rowCopy = row;
  stringCopy = string;
  v8 = [rowCopy stringAtIndex:0];
  if ([v8 length])
  {
    v9 = [rowCopy dataAtIndex:1];
    if ([v9 length])
    {
      v10 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
      v11 = [rowCopy dataAtIndex:2];
      v12 = [v10 reverseTransformedValue:v11];

      if (v12)
      {
        v13 = [[WBSCRDTPosition alloc] initWithDictionaryRepresentation:v12];
        if (v13)
        {
          v30 = [rowCopy stringAtIndex:3];
          v29 = [rowCopy stringAtIndex:4];
          if ([v29 length])
          {
            v27 = [rowCopy BOOLAtIndex:5];
            v14 = [rowCopy BOOLAtIndex:6];
            v15 = [rowCopy intAtIndex:7];
            v28 = [rowCopy stringAtIndex:8];
            [rowCopy doubleAtIndex:9];
            v17 = v16;
            v18 = [[CloudTabParameters alloc] initWithTabUUIDString:v8 owningDeviceUUIDString:stringCopy owningSceneID:v28 urlString:v29];
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

- (int)_saveTab:(id)tab
{
  tabCopy = tab;
  v5 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO cloud_tabs (tab_uuid, system_fields, device_uuid, position, title, url, is_showing_reader, is_pinned, reader_scroll_position_page_index, scene_id, last_viewed_time)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
  v6 = [WBSSQLiteStatement alloc];
  _database = [(CloudKitSQLiteStore *)self _database];
  v8 = [v6 initWithDatabase:_database query:v5];

  v9 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
  position = [tabCopy position];
  dictionaryRepresentation = [position dictionaryRepresentation];
  v29 = [v9 transformedValue:dictionaryRepresentation];

  tabUUIDString = [tabCopy tabUUIDString];
  record = [tabCopy record];
  safari_encodedSystemFieldsData = [record safari_encodedSystemFieldsData];
  owningDeviceUUIDString = [tabCopy owningDeviceUUIDString];
  title = [tabCopy title];
  urlString = [tabCopy urlString];
  isShowingReader = [tabCopy isShowingReader];
  isPinned = [tabCopy isPinned];
  readerScrollPositionPageIndex = [tabCopy readerScrollPositionPageIndex];
  *buf = [readerScrollPositionPageIndex integerValue];
  owningSceneID = [tabCopy owningSceneID];
  [tabCopy lastViewedTime];
  v20 = v14;
  sub_100097E20(v8, &tabUUIDString, &safari_encodedSystemFieldsData, &owningDeviceUUIDString, &v29, &title, &urlString, &isShowingReader, &isPinned, buf, &owningSceneID, &v20);

  execute = [v8 execute];
  [v8 reset];
  if (execute != 101)
  {
    v16 = sub_100001B78();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      *buf = 138543618;
      *&buf[4] = lastErrorMessage;
      v31 = 1024;
      v32 = execute;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to insert or replace tab: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return execute;
}

- (int)_saveCloseRequest:(id)request
{
  requestCopy = request;
  v5 = [WBSSQLiteStatement alloc];
  _database = [(CloudKitSQLiteStore *)self _database];
  v7 = [v5 initWithDatabase:_database query:{@"INSERT OR REPLACE INTO cloud_tab_close_requests (close_request_uuid, system_fields, destination_device_uuid, url, tab_uuid)VALUES (?, ?, ?, ?, ?)"}];

  requestUUIDString = [requestCopy requestUUIDString];
  record = [requestCopy record];
  safari_encodedSystemFieldsData = [record safari_encodedSystemFieldsData];
  destinationDeviceUUIDString = [requestCopy destinationDeviceUUIDString];
  tabURLString = [requestCopy tabURLString];
  tabUUIDString = [requestCopy tabUUIDString];
  sub_1000984B8(v7, &requestUUIDString, &safari_encodedSystemFieldsData, &destinationDeviceUUIDString, &tabURLString, &tabUUIDString);

  execute = [v7 execute];
  [v7 invalidate];
  if (execute != 101)
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _database2 = [(CloudKitSQLiteStore *)self _database];
      lastErrorMessage = [_database2 lastErrorMessage];
      *buf = 138543618;
      v20 = lastErrorMessage;
      v21 = 1024;
      v22 = execute;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to insert or replace close request: %{public}@ (%d)", buf, 0x12u);
    }
  }

  return execute;
}

- (CloudTabLocalStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
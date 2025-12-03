@interface ACXRemoteAppList
+ (id)remoteAppListForStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue;
- (ACXRemoteAppList)initWithCoder:(id)coder;
- (ACXRemoteAppList)initWithStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue;
- (ACXRemoteAppListCommunications)delegate;
- (BOOL)_onQueue_databaseIsSynced;
- (BOOL)applicationIsInstalledWithBundleID:(id)d error:(id *)error;
- (BOOL)applicationIsInstalledWithCounterpartBundleID:(id)d error:(id *)error;
- (BOOL)databaseIsSynced;
- (BOOL)startDatabaseSyncIfNeeded;
- (BOOL)syncPending;
- (OS_dispatch_queue)queue;
- (id)appBundleIDForCounterpartBundleID:(id)d error:(id *)error;
- (id)applicationForBundleID:(id)d error:(id *)error;
- (id)applicationWithCounterpartBundleID:(id)d error:(id *)error;
- (id)bundleIDsTrackedWithError:(id *)error;
- (void)_initCommonReliabilityState;
- (void)_onQueue_acknowledgeAppEvents;
- (void)_onQueue_appsAdded:(id)added;
- (void)_onQueue_appsRemoved:(id)removed;
- (void)_onQueue_appsUpdated:(id)updated;
- (void)_onQueue_databaseResynced;
- (void)_onQueue_fetchAppsForAppInstallRecords;
- (void)_onQueue_fetchOutstandingAppEvents;
- (void)_onQueue_fetchRemainingBundleIDs;
- (void)_onQueue_purgeSavedData;
- (void)_onQueue_reSync;
- (void)_onQueue_saveData;
- (void)_onQueue_startResyncThrottleTimer;
- (void)_onQueue_startSyncTimer;
- (void)_onQueue_stopResyncThrottleTimer;
- (void)_onQueue_stopSyncTimer;
- (void)_resetLastSequenceNumberTo:(unint64_t)to;
- (void)_serializeToDisk;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)appsAdded:(id)added currentRemoteDBUUID:(id)d lastSequenceNumber:(unint64_t)number;
- (void)appsRemoved:(id)removed currentRemoteDBUUID:(id)d lastSequenceNumber:(unint64_t)number;
- (void)encodeWithCoder:(id)coder;
- (void)getCurrentDBUUID:(id *)d sequenceNumber:(unint64_t *)number;
- (void)remoteDeviceConnected;
- (void)remoteDeviceDisconnected;
- (void)removeObserver:(id)observer queue:(id)queue;
- (void)reportAppEvents:(id)events forDBUUID:(id)d startingSequenceNumber:(unint64_t)number;
- (void)reportCurrentDBUUID:(id)d lastSequenceNumber:(unint64_t)number;
- (void)reportTotalSyncFailureForError:(id)error;
- (void)setCurrentDBUUID:(id)d;
- (void)setLastSequenceNumber:(unint64_t)number;
- (void)updateAppInfoWithRecords:(id)records currentRemoteDBUUID:(id)d;
- (void)updateBundleIDList:(id)list currentRemoteDBUUID:(id)d lastSequenceNumber:(unint64_t)number;
@end

@implementation ACXRemoteAppList

- (void)_initCommonReliabilityState
{
  v3 = objc_opt_new();
  [(ACXRemoteAppList *)self setAttemptsPerBundleID:v3];

  [(ACXRemoteAppList *)self setResyncAttempts:0];
}

- (ACXRemoteAppList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ACXRemoteAppList;
  v5 = [(ACXRemoteAppList *)&v20 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"appList"];
  appList = v5->_appList;
  v5->_appList = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentDBUUID"];
  currentDBUUID = v5->_currentDBUUID;
  v5->_currentDBUUID = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSequenceNumber"];
  v5->_lastSequenceNumber = [v14 unsignedIntegerValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppListVersion"];
  v16 = v15;
  if (v15 && [v15 unsignedLongLongValue] != 4)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_13;
    }

LABEL_12:
    MOLogWrite();
LABEL_13:

    v18 = 0;
    goto LABEL_14;
  }

  appList = [(ACXRemoteAppList *)v5 appList];

  if (!appList)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(ACXRemoteAppList *)v5 _initCommonReliabilityState];

LABEL_6:
  v18 = v5;
LABEL_14:

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  appList = self->_appList;
  coderCopy = coder;
  [coderCopy encodeObject:appList forKey:@"appList"];
  [coderCopy encodeObject:self->_currentDBUUID forKey:@"currentDBUUID"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_lastSequenceNumber];
  [coderCopy encodeObject:v5 forKey:@"lastSequenceNumber"];

  [coderCopy encodeObject:&off_100097830 forKey:@"AppListVersion"];
}

- (ACXRemoteAppList)initWithStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = ACXRemoteAppList;
  v12 = [(ACXRemoteAppList *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storageBaseURL, l);
    v14 = objc_opt_new();
    [(ACXRemoteAppList *)v13 setAppList:v14];

    [(ACXRemoteAppList *)v13 setDelegate:delegateCopy];
    [(ACXRemoteAppList *)v13 setDelegateQueue:queueCopy];
    [(ACXRemoteAppList *)v13 _initCommonReliabilityState];
  }

  return v13;
}

- (void)_serializeToDisk
{
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C438;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(queue, block);
}

+ (id)remoteAppListForStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  delegateCopy = delegate;
  queueCopy = queue;
  v10 = [lCopy URLByAppendingPathComponent:@"ACXRemoteAppList.plist" isDirectory:0];
  path = [v10 path];
  v58 = 0;
  v12 = [NSData dataWithContentsOfFile:path options:1 error:&v58];
  v13 = v58;

  if (!v12)
  {
    domain = [v13 domain];
    if (([domain isEqualToString:NSCocoaErrorDomain] & 1) == 0)
    {

      goto LABEL_15;
    }

    code = [v13 code];

    if (code != 260)
    {
      goto LABEL_15;
    }

    v22 = [lCopy URLByAppendingPathComponent:@"com.apple.AppConduit.ACXRemoteAppList.plist" isDirectory:0];

    v10 = v22;
    v59 = 0;
    v23 = [NSDictionary ACX_dictionaryWithContentsOfURL:v10 options:0 error:&v59];
    v24 = v59;
    v52 = v24;
    v53 = v23;
    if (v23)
    {
      v55 = lCopy;
      v25 = queueCopy;
      v26 = delegateCopy;
      v27 = [v23 objectForKeyedSubscript:@"AppListVersion"];
      objc_opt_class();
      v28 = v27;
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v51 = v29;
      unsignedLongLongValue = [v29 unsignedLongLongValue];
      if (unsignedLongLongValue == 1)
      {
        v42 = [v53 objectForKeyedSubscript:@"AppListData"];
        objc_opt_class();
        v43 = v42;
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v47 = v53;
        if (v44)
        {
          delegateCopy = v26;
          queueCopy = v25;
          lCopy = v55;
          goto LABEL_75;
        }

        delegateCopy = v26;
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          path2 = [v10 path];
          path4 = path2;
          MOLogWrite();
          goto LABEL_71;
        }

        v44 = 0;
      }

      else
      {
        v45 = unsignedLongLongValue;
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          path2 = [v10 path];
          v49 = 1;
          v50 = path2;
          path4 = v45;
          MOLogWrite();
          delegateCopy = v26;
LABEL_71:
          queueCopy = v25;
          lCopy = v55;
          goto LABEL_72;
        }

        v44 = 0;
        delegateCopy = v26;
      }

      queueCopy = v25;
      lCopy = v55;
      goto LABEL_74;
    }

    v38 = v24;
    domain2 = [v24 domain];
    if ([domain2 isEqualToString:NSCocoaErrorDomain])
    {
      code2 = [v38 code];

      if (code2 == 260)
      {
        goto LABEL_64;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path2 = [v10 path];
      path4 = path2;
      v49 = v52;
      MOLogWrite();
      v51 = 0;
LABEL_72:

      goto LABEL_73;
    }

LABEL_64:
    v51 = 0;
LABEL_73:
    v44 = 0;
LABEL_74:
    v47 = v53;
LABEL_75:
    v14 = v44;

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_15:
    domain3 = [v13 domain];
    if ([domain3 isEqualToString:NSCocoaErrorDomain])
    {
      code3 = [v13 code];

      if (code3 == 260)
      {
LABEL_34:
        v14 = 0;
        v17 = 0;
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path3 = [v10 path];
      path4 = path3;
      v49 = v13;
      MOLogWrite();
      v14 = 0;
      v17 = 0;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v14 = v12;
LABEL_3:
  v54 = lCopy;
  v15 = queueCopy;
  v16 = delegateCopy;
  v57 = v13;
  v17 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v14 error:&v57];
  v18 = v57;

  if (v17)
  {
    if (v12)
    {
      v19 = [v17 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    }

    else
    {
      v19 = [objc_alloc(objc_opt_class()) initWithCoder:v17];
    }

    v33 = v19;
    if (v19)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        path4 = [v10 path];
        MOLogWrite();
      }

      [v33 setDelegate:{v16, path4}];
      [v33 setDelegateQueue:v15];
      [v33 setStorageBaseURL:v54];
      if (v12)
      {
        v13 = v18;
      }

      else
      {
        [v33 _serializeToDisk];
        v34 = +[NSFileManager defaultManager];
        v56 = v18;
        v35 = [v34 removeItemAtURL:v10 error:&v56];
        v13 = v56;

        if ((v35 & 1) == 0)
        {
          delegateCopy = v16;
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            MOLogWrite();
          }

          goto LABEL_37;
        }
      }

      delegateCopy = v16;
LABEL_37:
      queueCopy = v15;
      lCopy = v54;
      goto LABEL_44;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path3 = [v10 path];
      path4 = path3;
      MOLogWrite();
      goto LABEL_28;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path3 = [v10 path];
      path4 = path3;
      v49 = v18;
      MOLogWrite();
      v17 = 0;
LABEL_28:
      v13 = v18;
      delegateCopy = v16;
      queueCopy = v15;
      lCopy = v54;
LABEL_33:

      goto LABEL_40;
    }

    v17 = 0;
  }

  v13 = v18;
  delegateCopy = v16;
  queueCopy = v15;
  lCopy = v54;
LABEL_40:
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v36 = [NSFileManager defaultManager:path4];
  [v36 removeItemAtURL:v10 error:0];

  v33 = [objc_alloc(objc_opt_class()) initWithStorageBaseURL:lCopy delegate:delegateCopy queue:queueCopy];
LABEL_44:

  return v33;
}

- (OS_dispatch_queue)queue
{
  if (qword_1000A4838 != -1)
  {
    sub_10005A18C();
  }

  v3 = qword_1000A4840;

  return v3;
}

- (BOOL)syncPending
{
  syncTimeout = [(ACXRemoteAppList *)self syncTimeout];
  v3 = syncTimeout != 0;

  return v3;
}

- (void)_resetLastSequenceNumberTo:(unint64_t)to
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    lastSequenceNumber = self->_lastSequenceNumber;
    MOLogWrite();
  }

  self->_lastSequenceNumber = to;
}

- (void)setLastSequenceNumber:(unint64_t)number
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!number || self->_lastSequenceNumber < number)
  {

    [(ACXRemoteAppList *)self _resetLastSequenceNumberTo:number];
  }
}

- (void)setCurrentDBUUID:(id)d
{
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  currentDBUUID = self->_currentDBUUID;
  if (((dCopy != 0) == (currentDBUUID == 0) || ([(NSUUID *)currentDBUUID isEqual:dCopy]& 1) == 0) && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
  {
    v8 = self->_currentDBUUID;
    MOLogWrite();
  }

  v7 = self->_currentDBUUID;
  self->_currentDBUUID = dCopy;
}

- (void)_onQueue_purgeSavedData
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  storageBaseURL = [(ACXRemoteAppList *)self storageBaseURL];
  v5 = [storageBaseURL URLByAppendingPathComponent:@"ACXRemoteAppList.plist" isDirectory:0];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtURL:v5 error:&v12];
    storageBaseURL2 = v12;

    if ((v7 & 1) == 0)
    {
      domain = [storageBaseURL2 domain];
      if ([domain isEqualToString:NSCocoaErrorDomain])
      {
        code = [storageBaseURL2 code];

        if (code == 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        path = [v5 path];
        MOLogWrite();
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    storageBaseURL2 = [(ACXRemoteAppList *)self storageBaseURL];
    MOLogWrite();
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_onQueue_saveData
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(ACXRemoteAppList *)self performingResync])
  {
    v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v4 setOutputFormat:200];
    [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
    encodedData = [v4 encodedData];
    storageBaseURL = [(ACXRemoteAppList *)self storageBaseURL];
    v7 = [storageBaseURL URLByAppendingPathComponent:@"ACXRemoteAppList.plist" isDirectory:0];

    if (v7)
    {
      v11 = 0;
      v8 = [encodedData writeToURL:v7 options:268435457 error:&v11];
      storageBaseURL2 = v11;
      if (v8)
      {
        if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
        {
          goto LABEL_18;
        }
      }

      else if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_18;
      }

      path = [v7 path];
      MOLogWrite();
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_19;
      }

      storageBaseURL2 = [(ACXRemoteAppList *)self storageBaseURL];
      MOLogWrite();
    }

LABEL_18:

LABEL_19:
    return;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {

    MOLogWrite();
  }
}

- (void)_onQueue_startSyncTimer
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ACXRemoteAppList *)self _onQueue_stopSyncTimer];
  v4 = os_transaction_create();
  queue2 = [(ACXRemoteAppList *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);

  v7 = 300 * [(ACXRemoteAppList *)self resyncAttempts]+ 300;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v8 = dispatch_walltime(0, 1000000000 * v7);
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003D490;
  handler[3] = &unk_10008CC38;
  v9 = v6;
  v16 = v9;
  v10 = v4;
  v17 = v10;
  dispatch_source_set_cancel_handler(v9, handler);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003D4F0;
  v12[3] = &unk_10008CC38;
  v11 = v9;
  v13 = v11;
  selfCopy = self;
  dispatch_source_set_event_handler(v11, v12);
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  dispatch_resume(v11);
  [(ACXRemoteAppList *)self setSyncTimeout:v11];
}

- (void)_onQueue_stopSyncTimer
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  syncTimeout = [(ACXRemoteAppList *)self syncTimeout];
  v5 = syncTimeout;
  if (syncTimeout)
  {
    v6 = syncTimeout;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
      v5 = v6;
    }

    dispatch_source_cancel(v5);
    syncTimeout = [(ACXRemoteAppList *)self setSyncTimeout:0];
    v5 = v6;
  }

  _objc_release_x1(syncTimeout, v5);
}

- (void)_onQueue_startResyncThrottleTimer
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  resyncThrottleTimer = [(ACXRemoteAppList *)self resyncThrottleTimer];

  if (resyncThrottleTimer)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {

      MOLogWrite();
    }
  }

  else
  {
    queue2 = [(ACXRemoteAppList *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);

    v7 = 600 * [(ACXRemoteAppList *)self resyncAttempts]+ 600;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v8 = dispatch_walltime(0, 1000000000 * v7);
    dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003D88C;
    handler[3] = &unk_10008CD40;
    v9 = v6;
    v15 = v9;
    dispatch_source_set_cancel_handler(v9, handler);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003D8EC;
    v11[3] = &unk_10008CC38;
    v10 = v9;
    v12 = v10;
    selfCopy = self;
    dispatch_source_set_event_handler(v10, v11);
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    dispatch_resume(v10);
    [(ACXRemoteAppList *)self setResyncThrottleTimer:v10];
  }
}

- (void)_onQueue_stopResyncThrottleTimer
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  resyncThrottleTimer = [(ACXRemoteAppList *)self resyncThrottleTimer];
  v5 = resyncThrottleTimer;
  if (resyncThrottleTimer)
  {
    v6 = resyncThrottleTimer;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
      v5 = v6;
    }

    dispatch_source_cancel(v5);
    resyncThrottleTimer = [(ACXRemoteAppList *)self setResyncThrottleTimer:0];
    v5 = v6;
  }

  _objc_release_x1(resyncThrottleTimer, v5);
}

- (void)_onQueue_reSync
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ACXRemoteAppList *)self _onQueue_stopResyncThrottleTimer];
  if (![(ACXRemoteAppList *)self remoteIsConnected])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }

    goto LABEL_8;
  }

  if ([(ACXRemoteAppList *)self syncPending])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }

LABEL_8:

    MOLogWrite();
    return;
  }

  v4 = objc_opt_new();
  [(ACXRemoteAppList *)self setAttemptsPerBundleID:v4];

  [(ACXRemoteAppList *)self setResyncAttempts:[(ACXRemoteAppList *)self resyncAttempts]+ 1];
  v5 = objc_opt_new();
  [(ACXRemoteAppList *)self setAppList:v5];

  [(ACXRemoteAppList *)self setAppInstallRecordsToFetch:0];
  [(ACXRemoteAppList *)self setBundleIDsToFetch:0];
  [(ACXRemoteAppList *)self setPerformingResync:1];
  [(ACXRemoteAppList *)self _onQueue_purgeSavedData];
  [(ACXRemoteAppList *)self _onQueue_startSyncTimer];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  delegateQueue = [(ACXRemoteAppList *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003DC18;
  v7[3] = &unk_10008CD40;
  v7[4] = self;
  sub_100005828(delegateQueue, v7);
}

- (void)reportTotalSyncFailureForError:(id)error
{
  errorCopy = error;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = errorCopy;
    MOLogWrite();
  }

  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DD34;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueue_fetchRemainingBundleIDs
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ACXRemoteAppList *)self remoteIsConnected])
  {
    if ([(ACXRemoteAppList *)self syncPending])
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {

        MOLogWrite();
      }
    }

    else
    {
      bundleIDsToFetch = [(ACXRemoteAppList *)self bundleIDsToFetch];
      if ([bundleIDsToFetch count])
      {
        v5 = [NSMutableSet setWithCapacity:5];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v6 = bundleIDsToFetch;
        v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          v8 = *v32;
          v9 = 5;
LABEL_19:
          v10 = 0;
          while (1)
          {
            if (*v32 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [v5 addObject:*(*(&v31 + 1) + 8 * v10)];
            if (v9 - 1 == v10)
            {
              break;
            }

            if (v7 == ++v10)
            {
              v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
              v9 -= v10;
              if (v7)
              {
                goto LABEL_19;
              }

              break;
            }
          }
        }

        v11 = [v5 copy];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v23 = v11;
          MOLogWrite();
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v38 count:16];
        if (v13)
        {
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              attemptsPerBundleID = [(ACXRemoteAppList *)self attemptsPerBundleID];
              v18 = [attemptsPerBundleID objectForKeyedSubscript:v16];
              v19 = v18 == 0;

              if (v19)
              {
                attemptsPerBundleID2 = [(ACXRemoteAppList *)self attemptsPerBundleID];
                [attemptsPerBundleID2 setObject:&off_100097848 forKeyedSubscript:v16];
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v27 objects:v38 count:16];
          }

          while (v13);
        }

        [(ACXRemoteAppList *)self _onQueue_startSyncTimer];
        delegateQueue = [(ACXRemoteAppList *)self delegateQueue];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10003E2A8;
        v25[3] = &unk_10008CC38;
        v25[4] = self;
        v26 = v12;
        v22 = v12;
        sub_100005828(delegateQueue, v25);
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }
    }
  }

  else
  {
    resumeOnReconnect = [(ACXRemoteAppList *)self resumeOnReconnect];

    if (!resumeOnReconnect)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      objc_initWeak(&location, self);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10003E264;
      v35[3] = &unk_10008DD10;
      objc_copyWeak(&v36, &location);
      [(ACXRemoteAppList *)self setResumeOnReconnect:v35];
      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }
  }
}

- (void)_onQueue_fetchAppsForAppInstallRecords
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ACXRemoteAppList *)self remoteIsConnected])
  {
    if ([(ACXRemoteAppList *)self syncPending])
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {

        MOLogWrite();
      }
    }

    else
    {
      appInstallRecordsToFetch = [(ACXRemoteAppList *)self appInstallRecordsToFetch];
      allKeys = [appInstallRecordsToFetch allKeys];

      if ([allKeys count])
      {
        v7 = [allKeys count];
        if (v7 >= 5)
        {
          v8 = 5;
        }

        else
        {
          v8 = v7;
        }

        v22 = [allKeys subarrayWithRange:{0, v8}];
        v9 = [NSSet setWithArray:v22];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v21 = v9;
          MOLogWrite();
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v11)
        {
          v12 = *v26;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              attemptsPerBundleID = [(ACXRemoteAppList *)self attemptsPerBundleID];
              v16 = [attemptsPerBundleID objectForKeyedSubscript:v14];
              v17 = v16 == 0;

              if (v17)
              {
                attemptsPerBundleID2 = [(ACXRemoteAppList *)self attemptsPerBundleID];
                [attemptsPerBundleID2 setObject:&off_100097848 forKeyedSubscript:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
          }

          while (v11);
        }

        [(ACXRemoteAppList *)self _onQueue_startSyncTimer];
        delegateQueue = [(ACXRemoteAppList *)self delegateQueue];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10003E7BC;
        v23[3] = &unk_10008CC38;
        v23[4] = self;
        v24 = v10;
        v20 = v10;
        sub_100005828(delegateQueue, v23);
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }
    }
  }

  else
  {
    resumeOnReconnect = [(ACXRemoteAppList *)self resumeOnReconnect];

    if (!resumeOnReconnect)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      objc_initWeak(&location, self);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10003E778;
      v29[3] = &unk_10008DD10;
      objc_copyWeak(&v30, &location);
      [(ACXRemoteAppList *)self setResumeOnReconnect:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }
  }
}

- (void)_onQueue_fetchOutstandingAppEvents
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ACXRemoteAppList *)self remoteIsConnected])
  {
    if ([(ACXRemoteAppList *)self syncPending])
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {

        MOLogWrite();
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      [(ACXRemoteAppList *)self _onQueue_startSyncTimer];
      delegateQueue = [(ACXRemoteAppList *)self delegateQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10003EAB0;
      v6[3] = &unk_10008CD40;
      v6[4] = self;
      sub_100005828(delegateQueue, v6);
    }
  }

  else
  {
    resumeOnReconnect = [(ACXRemoteAppList *)self resumeOnReconnect];

    if (!resumeOnReconnect)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      objc_initWeak(&location, self);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10003EA6C;
      v7[3] = &unk_10008DD10;
      objc_copyWeak(&v8, &location);
      [(ACXRemoteAppList *)self setResumeOnReconnect:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }
  }
}

- (void)_onQueue_acknowledgeAppEvents
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ACXRemoteAppList *)self remoteIsConnected])
  {
    currentDBUUID = [(ACXRemoteAppList *)self currentDBUUID];
    lastSequenceNumber = [(ACXRemoteAppList *)self lastSequenceNumber];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v9 = currentDBUUID;
      v10 = lastSequenceNumber;
      MOLogWrite();
    }

    v6 = [(ACXRemoteAppList *)self delegateQueue:v9];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003ED70;
    v11[3] = &unk_10008CEC8;
    v11[4] = self;
    v12 = currentDBUUID;
    v13 = lastSequenceNumber;
    v7 = currentDBUUID;
    sub_100005828(v6, v11);
  }

  else
  {
    resumeOnReconnect = [(ACXRemoteAppList *)self resumeOnReconnect];

    if (!resumeOnReconnect)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      objc_initWeak(&location, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10003ED2C;
      v14[3] = &unk_10008DD10;
      objc_copyWeak(&v15, &location);
      [(ACXRemoteAppList *)self setResumeOnReconnect:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }
  }
}

- (void)_onQueue_appsAdded:(id)added
{
  addedCopy = added;
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v13 = [addedCopy count];
    MOLogWrite();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(ACXRemoteAppList *)self observers];
  v7 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(observers);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        queue2 = [v11 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10003EFAC;
        v14[3] = &unk_10008CC38;
        v14[4] = v11;
        v15 = addedCopy;
        sub_100005828(queue2, v14);
      }

      v8 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_onQueue_appsUpdated:(id)updated
{
  updatedCopy = updated;
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v13 = [updatedCopy count];
    MOLogWrite();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(ACXRemoteAppList *)self observers];
  v7 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(observers);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        queue2 = [v11 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10003F1E8;
        v14[3] = &unk_10008CC38;
        v14[4] = v11;
        v15 = updatedCopy;
        sub_100005828(queue2, v14);
      }

      v8 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_onQueue_appsRemoved:(id)removed
{
  removedCopy = removed;
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v13 = [removedCopy count];
    MOLogWrite();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(ACXRemoteAppList *)self observers];
  v7 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(observers);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        queue2 = [v11 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10003F424;
        v14[3] = &unk_10008CC38;
        v14[4] = v11;
        v15 = removedCopy;
        sub_100005828(queue2, v14);
      }

      v8 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_onQueue_databaseResynced
{
  queue = [(ACXRemoteAppList *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ACXRemoteAppList *)self setResyncAttempts:0];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(ACXRemoteAppList *)self observers];
  v5 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(observers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        queue2 = [v9 queue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10003F638;
        v11[3] = &unk_10008CD40;
        v11[4] = v9;
        sub_100005828(queue2, v11);
      }

      v6 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F754;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = observerCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = observerCopy;
  dispatch_sync(queue, block);
}

- (void)removeObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F8C4;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = observerCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = observerCopy;
  dispatch_sync(queue, block);
}

- (void)remoteDeviceDisconnected
{
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FB00;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)remoteDeviceConnected
{
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FBFC;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)reportCurrentDBUUID:(id)d lastSequenceNumber:(unint64_t)number
{
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FD98;
  block[3] = &unk_10008CEC8;
  block[4] = self;
  v10 = dCopy;
  numberCopy = number;
  v8 = dCopy;
  dispatch_sync(queue, block);
}

- (void)updateBundleIDList:(id)list currentRemoteDBUUID:(id)d lastSequenceNumber:(unint64_t)number
{
  listCopy = list;
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000400DC;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = dCopy;
  v15 = listCopy;
  numberCopy = number;
  v11 = listCopy;
  v12 = dCopy;
  dispatch_sync(queue, v13);
}

- (void)updateAppInfoWithRecords:(id)records currentRemoteDBUUID:(id)d
{
  recordsCopy = records;
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040284;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = dCopy;
  v13 = recordsCopy;
  v9 = recordsCopy;
  v10 = dCopy;
  dispatch_sync(queue, block);
}

- (void)reportAppEvents:(id)events forDBUUID:(id)d startingSequenceNumber:(unint64_t)number
{
  eventsCopy = events;
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100040E04;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = dCopy;
  v15 = eventsCopy;
  numberCopy = number;
  v11 = eventsCopy;
  v12 = dCopy;
  dispatch_sync(queue, v13);
}

- (void)appsAdded:(id)added currentRemoteDBUUID:(id)d lastSequenceNumber:(unint64_t)number
{
  addedCopy = added;
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041498;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = addedCopy;
  v15 = dCopy;
  numberCopy = number;
  v11 = dCopy;
  v12 = addedCopy;
  dispatch_sync(queue, v13);
}

- (void)appsRemoved:(id)removed currentRemoteDBUUID:(id)d lastSequenceNumber:(unint64_t)number
{
  removedCopy = removed;
  dCopy = d;
  queue = [(ACXRemoteAppList *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041B78;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = removedCopy;
  v15 = dCopy;
  numberCopy = number;
  v11 = dCopy;
  v12 = removedCopy;
  dispatch_sync(queue, v13);
}

- (BOOL)startDatabaseSyncIfNeeded
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100041FE4;
  v5[3] = &unk_10008C958;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_onQueue_databaseIsSynced
{
  appList = [(ACXRemoteAppList *)self appList];
  if ([appList count])
  {
    performingResync = [(ACXRemoteAppList *)self performingResync];

    return performingResync ^ 1;
  }

  else
  {

    return 0;
  }
}

- (BOOL)databaseIsSynced
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000421FC;
  v5[3] = &unk_10008C958;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)bundleIDsTrackedWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000423D0;
  v20 = sub_1000423E0;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000423D0;
  v14 = sub_1000423E0;
  v15 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000423E8;
  block[3] = &unk_10008DD38;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(queue, block);

  v6 = v11[5];
  if (error && !v6)
  {
    *error = v17[5];
    v6 = v11[5];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (id)applicationForBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000423D0;
  v26 = sub_1000423E0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000423D0;
  v20 = sub_1000423E0;
  v21 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042670;
  v12[3] = &unk_10008DD60;
  v12[4] = self;
  v14 = &v22;
  v8 = dCopy;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(queue, v12);

  v9 = v17[5];
  if (error && !v9)
  {
    *error = v23[5];
    v9 = v17[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (BOOL)applicationIsInstalledWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000423D0;
  v23 = sub_1000423E0;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042934;
  v11[3] = &unk_10008DD60;
  v11[4] = self;
  v13 = &v19;
  v8 = dCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, v11);

  v9 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v20[5];
    v9 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9 & 1;
}

- (id)applicationWithCounterpartBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000423D0;
  v26 = sub_1000423E0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000423D0;
  v20 = sub_1000423E0;
  v21 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042C20;
  v12[3] = &unk_10008DD60;
  v12[4] = self;
  v14 = &v22;
  v8 = dCopy;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(queue, v12);

  v9 = v17[5];
  if (error && !v9)
  {
    *error = v23[5];
    v9 = v17[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (BOOL)applicationIsInstalledWithCounterpartBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000423D0;
  v23 = sub_1000423E0;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042FB8;
  v11[3] = &unk_10008DD60;
  v11[4] = self;
  v13 = &v19;
  v8 = dCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, v11);

  v9 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v20[5];
    v9 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9 & 1;
}

- (id)appBundleIDForCounterpartBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000423D0;
  v26 = sub_1000423E0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000423D0;
  v20 = sub_1000423E0;
  v21 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100043384;
  v12[3] = &unk_10008DD60;
  v12[4] = self;
  v14 = &v22;
  v8 = dCopy;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(queue, v12);

  v9 = v17[5];
  if (error && !v9)
  {
    *error = v23[5];
    v9 = v17[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (void)getCurrentDBUUID:(id *)d sequenceNumber:(unint64_t *)number
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000423D0;
  v17 = sub_1000423E0;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = [(ACXRemoteAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000436E8;
  block[3] = &unk_10008DA10;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(queue, block);

  *d = v14[5];
  *number = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

- (ACXRemoteAppListCommunications)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
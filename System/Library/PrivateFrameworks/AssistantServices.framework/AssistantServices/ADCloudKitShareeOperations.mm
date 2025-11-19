@interface ADCloudKitShareeOperations
- (ADCloudKitShareeOperations)initWithQueue:(id)a3 container:(id)a4 instanceContext:(id)a5;
- (id)serverChangeToken;
- (void)_fetchSharedZonesIfAny;
- (void)_setupMultiUserSharedZone:(id)a3;
- (void)_setupSharedDatabase;
- (void)_setupSharedDatabaseView;
- (void)_synchronizeSharedZones;
- (void)dealloc;
- (void)deleteShareForUser:(id)a3 markForReinvitation:(BOOL)a4 completion:(id)a5;
- (void)deleteZones:(id)a3;
- (void)fetchSharedZones;
- (void)fetchZones:(id)a3;
- (void)reset;
- (void)setServerChangeToken:(id)a3;
- (void)synchronizeSharedZones;
@end

@implementation ADCloudKitShareeOperations

- (void)synchronizeSharedZones
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BA80;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)deleteShareForUser:(id)a3 markForReinvitation:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10014BB9C;
  v13[3] = &unk_10051C6C8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)reset
{
  v3 = +[ADPreferences sharedPreferences];
  [v3 setCloudKitSharedDatabaseChangeToken:0];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BF08;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setServerChangeToken:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [v3 ad_archiveTokenToDataWithExceptionBlock:&stru_100513258];
  if (v4)
  {
LABEL_5:
    v5 = +[ADPreferences sharedPreferences];
    [v5 setCloudKitSharedDatabaseChangeToken:v4];

    v6 = +[ADPreferences sharedPreferences];
    [v6 synchronize];
  }
}

- (id)serverChangeToken
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 cloudKitSharedDatabaseChangeToken];

  v4 = [CKServerChangeToken ad_unarchiveTokenFromData:v3 withExceptionBlock:&stru_100513238];

  return v4;
}

- (void)_synchronizeSharedZones
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCloudKitShareeOperations _synchronizeSharedZones]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_sharedZoneUpdaters;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_sharedZoneUpdaters objectForKey:*(*(&v15 + 1) + 8 * v7)];
        v9 = dispatch_time(0, 20000000000);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10014C664;
        block[3] = &unk_10051DFE8;
        v14 = v8;
        v11 = v8;
        dispatch_after(v9, queue, block);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)deleteZones:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) ownerName];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = +[ADMultiUserService sharedService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10014C934;
    v12[3] = &unk_10051C498;
    v13 = v4;
    [v11 removeUserWithShareOwnerNames:v13 completion:v12];
  }
}

- (void)fetchZones:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[ADCloudKitShareeOperations fetchZones:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v6 = 20000000000;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v10 = &RPOptionStatusFlags_ptr;
    v29 = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [objc_alloc(v10[48]) initWithZoneID:v12];
        sharedZoneUpdaters = self->_sharedZoneUpdaters;
        if (sharedZoneUpdaters && ([v12 ownerName], v15 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](sharedZoneUpdaters, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
        {
          v17 = dispatch_time(0, v6);
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10014CD84;
          block[3] = &unk_10051E010;
          v35 = v16;
          v36 = v13;
          v19 = v8;
          v20 = v9;
          v21 = v10;
          v22 = v6;
          v23 = v13;
          v24 = v16;
          dispatch_after(v17, queue, block);

          v6 = v22;
          v10 = v21;
          v9 = v20;
          v8 = v19;
          self = v29;
        }

        else
        {
          v25 = dispatch_time(0, v6);
          v26 = self->_queue;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10014CE14;
          v32[3] = &unk_10051E010;
          v32[4] = self;
          v33 = v13;
          v24 = v13;
          dispatch_after(v25, v26, v32);
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  v27 = dispatch_time(0, v6);
  v28 = self->_queue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10014CE20;
  v31[3] = &unk_10051DFE8;
  v31[4] = self;
  dispatch_after(v27, v28, v31);
}

- (void)_setupMultiUserSharedZone:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.multiuser.shared", @"subscription", @"AssistantVoiceTriggerFileAssetRecord"];
  v6 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.multiuser.shared", @"subscription", @"AssistantKeyValueRecord"];
  v7 = objc_alloc_init(ADCloudKitMultiUserSharedDataStore);
  [(ADCloudKitMultiUserSharedDataStore *)v7 setDataStoreIsOnSharedDatabase:1];
  v8 = [ADCloudKitRecordZoneInfo alloc];
  v23[0] = v5;
  v23[1] = v6;
  v9 = [NSArray arrayWithObjects:v23 count:2];
  v10 = [(ADCloudKitRecordZoneInfo *)v8 initWithZone:v4 dataStore:v7 subscriptionNames:v9];

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADCloudKitShareeOperations _setupMultiUserSharedZone:]";
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s zone is (%@)", buf, 0x16u);
  }

  v12 = [[ADCloudKitSharedZoneUpdater alloc] initWithQueue:self->_queue container:self->_container sharedZone:v10 zoneOwner:0 delegate:0];
  sharedZoneUpdaters = self->_sharedZoneUpdaters;
  if (!sharedZoneUpdaters)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = self->_sharedZoneUpdaters;
    self->_sharedZoneUpdaters = v14;

    sharedZoneUpdaters = self->_sharedZoneUpdaters;
  }

  v16 = [v4 zoneID];
  v17 = [v16 ownerName];
  [(NSMutableDictionary *)sharedZoneUpdaters setObject:v12 forKey:v17];

  v18 = +[ADCloudKitManager sharedManager];
  [v18 fetchChangesWithZoneInfo:v10 useSharedDatabase:1];
}

- (void)_fetchSharedZonesIfAny
{
  v3 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:0];
  [v3 setFetchAllChanges:1];
  objc_initWeak(&location, v3);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_10014D3A8;
  v13[4] = sub_10014D3B8;
  v14 = +[NSMutableArray array];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_10014D3A8;
  v11[4] = sub_10014D3B8;
  v12 = +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014D3C0;
  v9[3] = &unk_1005131A8;
  objc_copyWeak(&v10, &location);
  v9[4] = v13;
  [v3 setRecordZoneWithIDChangedBlock:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014D4BC;
  v7[3] = &unk_1005131A8;
  objc_copyWeak(&v8, &location);
  v7[4] = v11;
  [v3 setRecordZoneWithIDWasDeletedBlock:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014D5B8;
  v6[3] = &unk_1005131D0;
  v6[4] = self;
  [v3 setChangeTokenUpdatedBlock:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014D684;
  v5[3] = &unk_1005131F8;
  v5[4] = self;
  v5[5] = v13;
  v5[6] = v11;
  [v3 setFetchDatabaseChangesCompletionBlock:v5];
  [v3 setQualityOfService:25];
  v4 = [(CKContainer *)self->_container sharedCloudDatabase];
  [v4 addOperation:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  _Block_object_dispose(v11, 8);

  _Block_object_dispose(v13, 8);
  objc_destroyWeak(&location);
}

- (void)fetchSharedZones
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D888;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setupSharedDatabaseView
{
  v3 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:@"sharedZoneSubscription"];
  v4 = objc_alloc_init(CKNotificationInfo);
  [v4 setShouldSendContentAvailable:1];
  [v3 setNotificationInfo:v4];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[ADCloudKitShareeOperations _setupSharedDatabaseView]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = [CKModifySubscriptionsOperation alloc];
  v11 = v3;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v8 = [v6 initWithSubscriptionsToSave:v7 subscriptionIDsToDelete:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014DA5C;
  v10[3] = &unk_100513180;
  v10[4] = self;
  [v8 setModifySubscriptionsCompletionBlock:v10];
  [v8 setQualityOfService:17];
  v9 = [(CKContainer *)self->_container sharedCloudDatabase];
  [v9 addOperation:v8];
}

- (void)_setupSharedDatabase
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014DC2C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ADCloudKitShareeOperations;
  [(ADCloudKitShareeOperations *)&v4 dealloc];
}

- (ADCloudKitShareeOperations)initWithQueue:(id)a3 container:(id)a4 instanceContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (AFSupportsMultiUser())
  {
    v18.receiver = self;
    v18.super_class = ADCloudKitShareeOperations;
    v12 = [(ADCloudKitShareeOperations *)&v18 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, a3);
      objc_storeStrong(&v13->_container, a4);
      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = +[AFInstanceContext defaultContext];
      }

      instanceContext = v13->_instanceContext;
      v13->_instanceContext = v14;

      [(ADCloudKitShareeOperations *)v13 _setupSharedDatabase];
    }

    self = v13;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
@interface ADCloudKitAccountStatusDataStore
- (ADCloudKitAccountStatusDataStore)init;
- (BOOL)hasSetUpRecordZoneSubscription;
- (CKServerChangeToken)serverChangeToken;
- (void)deleteUserData:(id)a3;
- (void)fetchDeviceTypesForAllLanguages:(id)a3;
- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4;
- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6;
- (void)setHasSetUpRecordZoneSubscription:(BOOL)a3;
- (void)setServerChangeToken:(id)a3;
- (void)synchronizeUsingActivity:(id)a3 completion:(id)a4;
- (void)synchronizeWithCompletion:(id)a3;
@end

@implementation ADCloudKitAccountStatusDataStore

- (void)synchronizeUsingActivity:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1);
  }
}

- (void)fetchDeviceTypesForAllLanguages:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)deleteUserData:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCloudKitAccountStatusDataStore deleteUserData:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(ADCloudKitAccountStatusDataStore *)self setServerChangeToken:0];
}

- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v10 count];
    v16 = [v11 count];
    v17 = @"partial";
    *buf = 136315906;
    v54 = "[ADCloudKitAccountStatusDataStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    v56 = v15;
    v55 = 2048;
    if (v7)
    {
      v17 = @"full";
    }

    v57 = 2048;
    v58 = v16;
    v59 = 2112;
    v60 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Merging %zd modified records, %zd deleted records, %@ sync", buf, 0x2Au);
  }

  v18 = +[AFPreferences sharedPreferences];
  v19 = [v18 cloudSyncEnabled];
  self->_cloudSyncEnabled = v19;
  if (v19)
  {
    v44 = v12;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v21)
    {
      v42 = v10;
      v43 = v18;
      v41 = v11;
      v22 = *v48;
LABEL_8:
      v23 = 0;
      while (1)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v47 + 1) + 8 * v23);
        v25 = [v24 recordType];
        v26 = [(NSArray *)self->_supportedRecordTypes firstObject];
        v27 = [v25 isEqualToString:v26];

        if (v27)
        {
          v28 = [v24 recordID];
          v29 = [v28 recordName];

          if ([v29 length])
          {
            if ([v29 isEqualToString:@"SyncEnabled"])
            {
              v21 = v24;

              if (!v21)
              {
                v34 = 0;
                v11 = v41;
                v10 = v42;
                v18 = v43;
                goto LABEL_31;
              }

              v51[0] = objc_opt_class();
              v51[1] = objc_opt_class();
              v35 = [NSArray arrayWithObjects:v51 count:2];
              v36 = [NSSet setWithArray:v35];
              v20 = [v21 _ad_dataOfClasses:v36];

              v11 = v41;
              v10 = v42;
              v18 = v43;
              if (!v20 || ([v20 BOOLValue] & 1) != 0)
              {
                break;
              }

              v37 = [v43 cloudSyncEnabledModificationDate];
              if (v37)
              {
                v38 = [v21 modificationDate];
                v39 = v38;
                if (!v38 || [v38 compare:v37] == 1)
                {
                  [v43 setCloudSyncEnabled:0];

                  goto LABEL_41;
                }

                v40 = +[ADCloudKitManager sharedManager];
                v45[0] = _NSConcreteStackBlock;
                v45[1] = 3221225472;
                v45[2] = sub_100361B84;
                v45[3] = &unk_10051D600;
                v45[4] = self;
                v46 = v44;
                v34 = 1;
                [v40 saveCloudSyncEnabledRecord:1 mirror:0 completion:v45];

                v18 = v43;
              }

              else
              {
                [v43 setCloudSyncEnabled:0];
LABEL_41:
                [ADCloudKitManager _setAppleAccountSiriStateEnabled:0 withCompletion:0];
                v34 = 0;
              }

              goto LABEL_29;
            }
          }

          else
          {
            v33 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v54 = "[ADCloudKitAccountStatusDataStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
              v55 = 2112;
              v56 = v24;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Modified record is lacking a name : (%@)", buf, 0x16u);
            }
          }
        }

        else
        {
          v30 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v31 = v30;
            v32 = [v24 recordType];
            *buf = 136315394;
            v54 = "[ADCloudKitAccountStatusDataStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
            v55 = 2112;
            v56 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Unsupported record type : (%@)", buf, 0x16u);
          }
        }

        if (v21 == ++v23)
        {
          v21 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v21)
          {
            goto LABEL_8;
          }

          v34 = 0;
          v11 = v41;
          v10 = v42;
          v18 = v43;
          goto LABEL_29;
        }
      }
    }

    v34 = 0;
LABEL_29:

LABEL_31:
    v12 = v44;
    if (v44 && (v34 & 1) == 0)
    {
      v44[2](v44, 0);
    }
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)synchronizeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 cloudSyncEnabled];

  if (self->_cloudSyncEnabled != v6)
  {
    self->_cloudSyncEnabled = v6;
    if (v6)
    {
      v7 = [(ADCloudKitAccountStatusDataStore *)self isMirroredDataStore];
      v8 = +[ADCloudKitManager sharedManager];
      v9 = v8;
      if (v7)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100361E04;
        v10[3] = &unk_10051D5D8;
        v11 = v4;
        [v9 saveCloudSyncEnabledRecord:1 mirror:1 completion:v10];

        goto LABEL_8;
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100361D94;
      v12[3] = &unk_10051D5B0;
      v12[4] = self;
      [v8 saveCloudSyncEnabledRecord:1 mirror:0 completion:v12];
    }
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }

LABEL_8:
}

- (void)setServerChangeToken:(id)a3
{
  v7 = a3;
  if (![(ADCloudKitAccountStatusDataStore *)self isMirroredDataStore])
  {
    if (v7)
    {
      v4 = [v7 ad_archiveTokenToDataWithExceptionBlock:&stru_10051D548];
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = +[ADPreferences sharedPreferences];
    [v5 setAccountStatusServerChangeToken:v4];

    v6 = +[ADPreferences sharedPreferences];
    [v6 synchronize];
  }

LABEL_7:
}

- (CKServerChangeToken)serverChangeToken
{
  if ([(ADCloudKitAccountStatusDataStore *)self isMirroredDataStore])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[ADPreferences sharedPreferences];
    v4 = [v3 accountStatusServerChangeToken];

    v2 = [CKServerChangeToken ad_unarchiveTokenFromData:v4 withExceptionBlock:&stru_10051D528];
  }

  return v2;
}

- (void)setHasSetUpRecordZoneSubscription:(BOOL)a3
{
  v3 = a3;
  v4 = +[ADPreferences sharedPreferences];
  [v4 setHasSetUpAccountStatusRecordZoneSubscription:v3];

  v5 = +[ADPreferences sharedPreferences];
  [v5 synchronize];
}

- (BOOL)hasSetUpRecordZoneSubscription
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 hasSetUpAccountStatusRecordZoneSubscription];

  return v3;
}

- (ADCloudKitAccountStatusDataStore)init
{
  v7.receiver = self;
  v7.super_class = ADCloudKitAccountStatusDataStore;
  v2 = [(ADCloudKitAccountStatusDataStore *)&v7 init];
  if (v2)
  {
    v8 = @"AssistantKeyValueRecord";
    v3 = [NSArray arrayWithObjects:&v8 count:1];
    supportedRecordTypes = v2->_supportedRecordTypes;
    v2->_supportedRecordTypes = v3;

    v5 = +[AFPreferences sharedPreferences];
    v2->_cloudSyncEnabled = [v5 cloudSyncEnabled];
  }

  return v2;
}

@end
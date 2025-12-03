@interface ADCloudKitAccountStatusDataStore
- (ADCloudKitAccountStatusDataStore)init;
- (BOOL)hasSetUpRecordZoneSubscription;
- (CKServerChangeToken)serverChangeToken;
- (void)deleteUserData:(id)data;
- (void)fetchDeviceTypesForAllLanguages:(id)languages;
- (void)fetchDeviceTypesForLanguage:(id)language completion:(id)completion;
- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion;
- (void)setHasSetUpRecordZoneSubscription:(BOOL)subscription;
- (void)setServerChangeToken:(id)token;
- (void)synchronizeUsingActivity:(id)activity completion:(id)completion;
- (void)synchronizeWithCompletion:(id)completion;
@end

@implementation ADCloudKitAccountStatusDataStore

- (void)synchronizeUsingActivity:(id)activity completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (void)fetchDeviceTypesForAllLanguages:(id)languages
{
  if (languages)
  {
    (*(languages + 2))(languages, 0, 0);
  }
}

- (void)fetchDeviceTypesForLanguage:(id)language completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)deleteUserData:(id)data
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

- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  recordsCopy = records;
  dsCopy = ds;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [recordsCopy count];
    v16 = [dsCopy count];
    v17 = @"partial";
    *buf = 136315906;
    v54 = "[ADCloudKitAccountStatusDataStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    v56 = v15;
    v55 = 2048;
    if (changesCopy)
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
  cloudSyncEnabled = [v18 cloudSyncEnabled];
  self->_cloudSyncEnabled = cloudSyncEnabled;
  if (cloudSyncEnabled)
  {
    v44 = completionCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = recordsCopy;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v21)
    {
      v42 = recordsCopy;
      v43 = v18;
      v41 = dsCopy;
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
        recordType = [v24 recordType];
        firstObject = [(NSArray *)self->_supportedRecordTypes firstObject];
        v27 = [recordType isEqualToString:firstObject];

        if (v27)
        {
          recordID = [v24 recordID];
          recordName = [recordID recordName];

          if ([recordName length])
          {
            if ([recordName isEqualToString:@"SyncEnabled"])
            {
              v21 = v24;

              if (!v21)
              {
                v34 = 0;
                dsCopy = v41;
                recordsCopy = v42;
                v18 = v43;
                goto LABEL_31;
              }

              v51[0] = objc_opt_class();
              v51[1] = objc_opt_class();
              v35 = [NSArray arrayWithObjects:v51 count:2];
              v36 = [NSSet setWithArray:v35];
              v20 = [v21 _ad_dataOfClasses:v36];

              dsCopy = v41;
              recordsCopy = v42;
              v18 = v43;
              if (!v20 || ([v20 BOOLValue] & 1) != 0)
              {
                break;
              }

              cloudSyncEnabledModificationDate = [v43 cloudSyncEnabledModificationDate];
              if (cloudSyncEnabledModificationDate)
              {
                modificationDate = [v21 modificationDate];
                v39 = modificationDate;
                if (!modificationDate || [modificationDate compare:cloudSyncEnabledModificationDate] == 1)
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
            recordType2 = [v24 recordType];
            *buf = 136315394;
            v54 = "[ADCloudKitAccountStatusDataStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
            v55 = 2112;
            v56 = recordType2;
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
          dsCopy = v41;
          recordsCopy = v42;
          v18 = v43;
          goto LABEL_29;
        }
      }
    }

    v34 = 0;
LABEL_29:

LABEL_31:
    completionCopy = v44;
    if (v44 && (v34 & 1) == 0)
    {
      v44[2](v44, 0);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[AFPreferences sharedPreferences];
  cloudSyncEnabled = [v5 cloudSyncEnabled];

  if (self->_cloudSyncEnabled != cloudSyncEnabled)
  {
    self->_cloudSyncEnabled = cloudSyncEnabled;
    if (cloudSyncEnabled)
    {
      isMirroredDataStore = [(ADCloudKitAccountStatusDataStore *)self isMirroredDataStore];
      v8 = +[ADCloudKitManager sharedManager];
      v9 = v8;
      if (isMirroredDataStore)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100361E04;
        v10[3] = &unk_10051D5D8;
        v11 = completionCopy;
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_8:
}

- (void)setServerChangeToken:(id)token
{
  tokenCopy = token;
  if (![(ADCloudKitAccountStatusDataStore *)self isMirroredDataStore])
  {
    if (tokenCopy)
    {
      v4 = [tokenCopy ad_archiveTokenToDataWithExceptionBlock:&stru_10051D548];
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
    accountStatusServerChangeToken = [v3 accountStatusServerChangeToken];

    v2 = [CKServerChangeToken ad_unarchiveTokenFromData:accountStatusServerChangeToken withExceptionBlock:&stru_10051D528];
  }

  return v2;
}

- (void)setHasSetUpRecordZoneSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  v4 = +[ADPreferences sharedPreferences];
  [v4 setHasSetUpAccountStatusRecordZoneSubscription:subscriptionCopy];

  v5 = +[ADPreferences sharedPreferences];
  [v5 synchronize];
}

- (BOOL)hasSetUpRecordZoneSubscription
{
  v2 = +[ADPreferences sharedPreferences];
  hasSetUpAccountStatusRecordZoneSubscription = [v2 hasSetUpAccountStatusRecordZoneSubscription];

  return hasSetUpAccountStatusRecordZoneSubscription;
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
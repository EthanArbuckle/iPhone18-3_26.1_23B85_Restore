@interface ADCloudKitAccountStatusMirroredStore
- (ADCloudKitAccountStatusMirroredStore)init;
- (void)deleteUserData:(id)data;
- (void)fetchDeviceTypesForAllLanguages:(id)languages;
- (void)fetchDeviceTypesForLanguage:(id)language completion:(id)completion;
- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion;
- (void)synchronizeUsingActivity:(id)activity completion:(id)completion;
- (void)synchronizeWithCompletion:(id)completion;
@end

@implementation ADCloudKitAccountStatusMirroredStore

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
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitAccountStatusMirroredStore deleteUserData:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion
{
  recordsCopy = records;
  dsCopy = ds;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADCloudKitAccountStatusMirroredStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s No merging on mirrored container.", &v12, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
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
      v7 = +[ADCloudKitManager sharedManager];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10012FF44;
      v8[3] = &unk_10051D5D8;
      v9 = completionCopy;
      [v7 saveCloudSyncEnabledRecord:1 mirror:1 completion:v8];
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (ADCloudKitAccountStatusMirroredStore)init
{
  v7.receiver = self;
  v7.super_class = ADCloudKitAccountStatusMirroredStore;
  v2 = [(ADCloudKitAccountStatusMirroredStore *)&v7 init];
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
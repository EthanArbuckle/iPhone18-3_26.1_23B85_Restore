@interface ADCloudKitAccountStatusMirroredStore
- (ADCloudKitAccountStatusMirroredStore)init;
- (void)deleteUserData:(id)a3;
- (void)fetchDeviceTypesForAllLanguages:(id)a3;
- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4;
- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6;
- (void)synchronizeUsingActivity:(id)a3 completion:(id)a4;
- (void)synchronizeWithCompletion:(id)a3;
@end

@implementation ADCloudKitAccountStatusMirroredStore

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
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitAccountStatusMirroredStore deleteUserData:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADCloudKitAccountStatusMirroredStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s No merging on mirrored container.", &v12, 0xCu);
  }

  if (v10)
  {
    v10[2](v10, 0);
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
      v7 = +[ADCloudKitManager sharedManager];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10012FF44;
      v8[3] = &unk_10051D5D8;
      v9 = v4;
      [v7 saveCloudSyncEnabledRecord:1 mirror:1 completion:v8];
    }
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 1);
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
@interface ADCloudKitMirroredContainer
- (ADCloudKitMirroredContainer)initWithContainer:(id)a3 queue:(id)a4;
- (void)_createRecordZone:(id)a3 shared:(BOOL)a4;
- (void)createMirroredZonesWithCompletion:(id)a3;
- (void)resynchronizeMirroredZone:(id)a3 completion:(id)a4;
@end

@implementation ADCloudKitMirroredContainer

- (void)resynchronizeMirroredZone:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 zoneName];
    *buf = 136315394;
    v27 = "[ADCloudKitMirroredContainer resynchronizeMirroredZone:completion:]";
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v11 = [CKRecordZoneID alloc];
  v12 = [v6 zoneName];
  v13 = [v11 initWithZoneName:v12 ownerName:CKCurrentUserDefaultName];

  v14 = [v6 zoneName];
  v15 = [v14 isEqualToString:@"com.apple.assistant.multiuser.shared"];

  v16 = dispatch_time(0, 120000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142538;
  block[3] = &unk_100519D50;
  block[4] = self;
  v22 = v13;
  v25 = v15;
  v23 = v6;
  v24 = v7;
  v18 = v6;
  v19 = v13;
  v20 = v7;
  dispatch_after(v16, queue, block);
}

- (void)_createRecordZone:(id)a3 shared:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 zoneName];
    *buf = 136315394;
    v18 = "[ADCloudKitMirroredContainer _createRecordZone:shared:]";
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v10 = [CKRecordZoneID alloc];
  v11 = [v6 zoneName];
  v12 = [v10 initWithZoneName:v11 ownerName:CKCurrentUserDefaultName];

  dispatch_group_enter(self->_group);
  container = self->_container;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100142B50;
  v15[3] = &unk_100512EA0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  sub_10031AFE0(v12, container, v4, v15);
}

- (void)createMirroredZonesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100142E78;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (ADCloudKitMirroredContainer)initWithContainer:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = ADCloudKitMirroredContainer;
  v9 = [(ADCloudKitMirroredContainer *)&v38 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_containerIdentifier, a3);
    v11 = sub_10031AD70(v7);
    container = v10->_container;
    v10->_container = v11;

    v10->_zoneCreationState = 0;
    v13 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.backedup", @"subscription", @"AssistantKeyValueRecord"];
    v14 = [[ADCloudKitRecordZoneInfo alloc] initWithZoneName:@"com.apple.assistant.backedup" subscriptionName:v13];
    keyValueRecordZoneInfo = v10->_keyValueRecordZoneInfo;
    v10->_keyValueRecordZoneInfo = v14;

    v16 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.account.status", @"subscription", @"AssistantKeyValueRecord"];

    v17 = [[ADCloudKitRecordZoneInfo alloc] initWithZoneName:@"com.apple.assistant.account.status" subscriptionName:v16];
    accountStatusRecordZoneInfo = v10->_accountStatusRecordZoneInfo;
    v10->_accountStatusRecordZoneInfo = v17;

    v19 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.multiuser.shared", @"subscription", @"AssistantVoiceTriggerFileAssetRecord"];
    v20 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.multiuser.shared", @"subscription", @"AssistantKeyValueRecord"];
    v21 = [ADCloudKitRecordZoneInfo alloc];
    v39[0] = v19;
    v39[1] = v20;
    v22 = [NSArray arrayWithObjects:v39 count:2];
    v23 = [(ADCloudKitRecordZoneInfo *)v21 initWithZoneName:@"com.apple.assistant.multiuser.shared" subscriptionNames:v22];
    multiUserRecordZoneInfo = v10->_multiUserRecordZoneInfo;
    v10->_multiUserRecordZoneInfo = v23;

    v25 = v10->_accountStatusRecordZoneInfo;
    v26 = objc_alloc_init(ADCloudKitAccountStatusMirroredStore);
    [(ADCloudKitRecordZoneInfo *)v25 setDataStore:v26];

    v27 = v10->_keyValueRecordZoneInfo;
    v28 = objc_alloc_init(ADCloudKitKeyValueMirroredStore);
    [(ADCloudKitRecordZoneInfo *)v27 setDataStore:v28];

    v29 = v10->_multiUserRecordZoneInfo;
    v30 = objc_alloc_init(ADCloudKitMultiUserSharedDataStore);
    [(ADCloudKitRecordZoneInfo *)v29 setDataStore:v30];

    v31 = [(ADCloudKitRecordZoneInfo *)v10->_accountStatusRecordZoneInfo dataStore];
    [v31 setIsMirroredDataStore:1];

    v32 = [(ADCloudKitRecordZoneInfo *)v10->_keyValueRecordZoneInfo dataStore];
    [v32 setIsMirroredDataStore:1];

    v33 = [(ADCloudKitRecordZoneInfo *)v10->_multiUserRecordZoneInfo dataStore];
    [v33 setIsMirroredDataStore:1];

    v34 = dispatch_group_create();
    group = v10->_group;
    v10->_group = v34;

    v36 = v10;
  }

  return v10;
}

@end
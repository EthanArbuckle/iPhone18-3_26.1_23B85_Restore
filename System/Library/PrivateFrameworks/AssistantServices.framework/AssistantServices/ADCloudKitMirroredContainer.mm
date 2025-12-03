@interface ADCloudKitMirroredContainer
- (ADCloudKitMirroredContainer)initWithContainer:(id)container queue:(id)queue;
- (void)_createRecordZone:(id)zone shared:(BOOL)shared;
- (void)createMirroredZonesWithCompletion:(id)completion;
- (void)resynchronizeMirroredZone:(id)zone completion:(id)completion;
@end

@implementation ADCloudKitMirroredContainer

- (void)resynchronizeMirroredZone:(id)zone completion:(id)completion
{
  zoneCopy = zone;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    zoneName = [zoneCopy zoneName];
    *buf = 136315394;
    v27 = "[ADCloudKitMirroredContainer resynchronizeMirroredZone:completion:]";
    v28 = 2112;
    v29 = zoneName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v11 = [CKRecordZoneID alloc];
  zoneName2 = [zoneCopy zoneName];
  v13 = [v11 initWithZoneName:zoneName2 ownerName:CKCurrentUserDefaultName];

  zoneName3 = [zoneCopy zoneName];
  v15 = [zoneName3 isEqualToString:@"com.apple.assistant.multiuser.shared"];

  v16 = dispatch_time(0, 120000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142538;
  block[3] = &unk_100519D50;
  block[4] = self;
  v22 = v13;
  v25 = v15;
  v23 = zoneCopy;
  v24 = completionCopy;
  v18 = zoneCopy;
  v19 = v13;
  v20 = completionCopy;
  dispatch_after(v16, queue, block);
}

- (void)_createRecordZone:(id)zone shared:(BOOL)shared
{
  sharedCopy = shared;
  zoneCopy = zone;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    zoneName = [zoneCopy zoneName];
    *buf = 136315394;
    v18 = "[ADCloudKitMirroredContainer _createRecordZone:shared:]";
    v19 = 2112;
    v20 = zoneName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v10 = [CKRecordZoneID alloc];
  zoneName2 = [zoneCopy zoneName];
  v12 = [v10 initWithZoneName:zoneName2 ownerName:CKCurrentUserDefaultName];

  dispatch_group_enter(self->_group);
  container = self->_container;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100142B50;
  v15[3] = &unk_100512EA0;
  v15[4] = self;
  v16 = zoneCopy;
  v14 = zoneCopy;
  sub_10031AFE0(v12, container, sharedCopy, v15);
}

- (void)createMirroredZonesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100142E78;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (ADCloudKitMirroredContainer)initWithContainer:(id)container queue:(id)queue
{
  containerCopy = container;
  queueCopy = queue;
  v38.receiver = self;
  v38.super_class = ADCloudKitMirroredContainer;
  v9 = [(ADCloudKitMirroredContainer *)&v38 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_containerIdentifier, container);
    v11 = sub_10031AD70(containerCopy);
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

    dataStore = [(ADCloudKitRecordZoneInfo *)v10->_accountStatusRecordZoneInfo dataStore];
    [dataStore setIsMirroredDataStore:1];

    dataStore2 = [(ADCloudKitRecordZoneInfo *)v10->_keyValueRecordZoneInfo dataStore];
    [dataStore2 setIsMirroredDataStore:1];

    dataStore3 = [(ADCloudKitRecordZoneInfo *)v10->_multiUserRecordZoneInfo dataStore];
    [dataStore3 setIsMirroredDataStore:1];

    v34 = dispatch_group_create();
    group = v10->_group;
    v10->_group = v34;

    v36 = v10;
  }

  return v10;
}

@end
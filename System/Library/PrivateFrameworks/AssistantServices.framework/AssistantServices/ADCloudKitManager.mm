@interface ADCloudKitManager
+ (id)getApplicationIdentifierFromEntitlements;
+ (id)sharedManager;
+ (void)_setAppleAccountSiriStateEnabled:(BOOL)a3 withCompletion:(id)a4;
- (ADCloudKitManager)init;
- (ADCloudKitManager)initWithInstanceContext:(id)a3;
- (APSConnection)pushConnection;
- (BOOL)_forceVoiceProfileDownloadForiCloudAltDSID:(id)a3 retryCount:(int64_t)a4 completion:(id)a5;
- (BOOL)_isCloudSyncEnabledForZone:(id)a3;
- (BOOL)_isCloudSyncEnabledForZone:(id)a3 accountInfo:(id)a4;
- (BOOL)_zoneShouldUpdateMirroredZone;
- (BOOL)preferencesHaveBeenSynchronized;
- (id)_createFileAssetRecordWithDictionary:(id)a3 zone:(id)a4 version:(unint64_t)a5;
- (id)_createKeyValueRecordsWithDictionary:(id)a3 mirror:(BOOL)a4;
- (id)_createRecordsWithDictionary:(id)a3 forZoneInfo:(id)a4;
- (id)_trackedCKAccountInfoForiCloudAltDSID:(id)a3;
- (id)_trackedCKContainerForiCloudAltDSID:(id)a3;
- (id)_verifyAccountWithManateeRequired:(BOOL)a3;
- (id)containerIDs;
- (id)getContainerIDForThisDevice;
- (void)_acceptSharesForMetadatas:(id)a3;
- (void)_buddyStateDidChangeNotification:(id)a3;
- (void)_cancelVoiceTriggerSyncTimer;
- (void)_cleanUpRecordZoneSubscriptionsTimers;
- (void)_cleanUpRecordZonesAndSubscriptions;
- (void)_cloudKitAccountStatusChanged:(id)a3;
- (void)_createRecordZoneSubscriptionWithZoneID:(id)a3 name:(id)a4 recordTypes:(id)a5 container:(id)a6 completion:(id)a7;
- (void)_createRecordZoneWithID:(id)a3 shared:(BOOL)a4 onMirror:(BOOL)a5 completion:(id)a6;
- (void)_deleteRecordZoneWithZoneID:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5;
- (void)_deleteRecordZoneWithZoneInfo:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5;
- (void)_deleteUserData;
- (void)_devicesWithAvailablePHSAssetsForLanguage:(id)a3 iCloudAltDSID:(id)a4 completion:(id)a5;
- (void)_disablePush;
- (void)_emitCloudKitSELFError:(int64_t)a3;
- (void)_enablePush;
- (void)_executeZoneFetchCompletionBlock:(id)a3 zoneInfo:(id)a4 completion:(id)a5;
- (void)_fetchChangesFromZone:(id)a3 serverChangeToken:(id)a4 useSharedDatabase:(BOOL)a5 activity:(id)a6 container:(id)a7 mirror:(BOOL)a8 completion:(id)a9;
- (void)_fetchChangesWithZoneInfo:(id)a3 retryCount:(unint64_t)a4 useSharedDatabase:(BOOL)a5 activity:(id)a6 container:(id)a7 mirror:(BOOL)a8 completion:(id)a9;
- (void)_fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4;
- (void)_fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4 activity:(id)a5 mirror:(BOOL)a6;
- (void)_fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4 mirror:(BOOL)a5;
- (void)_fetchCurrentUserIDWithCompletion:(id)a3;
- (void)_fetchManifest:(id)a3 language:(id)a4 completion:(id)a5;
- (void)_fetchManifest:(id)a3 legacy:(BOOL)a4 language:(id)a5 completion:(id)a6;
- (void)_forceMultiUserSync:(BOOL)a3 download:(BOOL)a4 retryCount:(unint64_t)a5 activity:(id)a6 iCloudAltDSID:(id)a7 completion:(id)a8;
- (void)_forceVoiceProfileDownloadOfAllUsers:(int64_t)a3;
- (void)_handleAccountStatusChange:(id)a3;
- (void)_handleCloudKitNotification:(id)a3;
- (void)_handleSubscriptionNotification:(id)a3 container:(id)a4;
- (void)_homeInfoDidChange:(id)a3;
- (void)_initializeZones;
- (void)_languageCodeDidChange;
- (void)_multiUserVoiceIdentificationDidChange:(id)a3;
- (void)_outputLanguageDidChange;
- (void)_preferencesDidChange;
- (void)_prepareZoneForResetWithZoneInfo:(id)a3;
- (void)_resetZoneFetchCompletionBlock:(id)a3;
- (void)_resetZoneWithZoneInfo:(id)a3;
- (void)_saveCloudSyncEnabledRecord:(BOOL)a3 mirror:(BOOL)a4 qualityOfService:(int64_t)a5 completion:(id)a6;
- (void)_scheduleMirrorSynchronizationAfterDelay:(id)a3;
- (void)_setDefaultiCloudEnabledState;
- (void)_setUpMirroredZoneWithZoneInfo:(id)a3;
- (void)_setUpZoneWithZoneInfo:(id)a3;
- (void)_setupAccount;
- (void)_setupAccountState;
- (void)_setupAccountStatusRecordZone;
- (void)_setupKeyValueRecordZone;
- (void)_setupMultiUserSharedRecordZone;
- (void)_setupMultiUserSharedRecordZoneIfHomeIsReady;
- (void)_setupPrimaryContainer;
- (void)_setupRecordZoneSubscriptionWithZoneInfo:(id)a3 retryInterval:(double)a4 container:(id)a5 withCompletion:(id)a6;
- (void)_setupRecordZoneWithZoneInfo:(id)a3 retryInterval:(double)a4 completion:(id)a5;
- (void)_setupSecondaryAccounts;
- (void)_setupSharedZoneUpdaterForOwner;
- (void)_setupSharedZoneView;
- (void)_setupVoiceTriggerSyncTimer;
- (void)_setupZoneSubscriptionsForSecondaryAccount:(id)a3 zoneInfo:(id)a4;
- (void)_setupZonesForSecondaryAccount:(id)a3 container:(id)a4 acctInfo:(id)a5;
- (void)_sharedUserIdentifierDidChange:(id)a3;
- (void)_startVoiceTriggerSyncTimerWithInterval:(double)a3;
- (void)_synchronizeMirroredContainer:(id)a3;
- (void)_synchronizeVoiceTriggerData;
- (void)_trackCKContainer:(id)a3 accountInfo:(id)a4 foriCloudAltDSID:(id)a5;
- (void)_triggerMultiUserSharingPostBuddyOrCloudSyncChange;
- (void)_triggerVoiceProfileUploadPostBuddyOrCloudSyncChange;
- (void)_untrackiCloudAltDSID:(id)a3;
- (void)_validateAndUpdateSharedZoneUpdater;
- (void)_voiceProfileFullDownloadTriggered:(id)a3;
- (void)_voiceProfileNeedSync:(id)a3;
- (void)_voiceTriggerEnabledDidChange;
- (void)_voiceTriggerPHSProfileDidChange;
- (void)acceptShare:(id)a3 token:(id)a4 containerID:(id)a5 retryCount:(unint64_t)a6 object:(id)a7;
- (void)adCloudKitSharedZoneUpdater:(id)a3 didEncounterError:(id)a4;
- (void)addDictionaryToSharedStore:(id)a3 recordKeysForDeletion:(id)a4 completion:(id)a5;
- (void)addKeyToSharedStore:(id)a3 value:(id)a4;
- (void)addKeyToSharedStore:(id)a3 value:(id)a4 completion:(id)a5;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)continueShareAcceptanceOperations;
- (void)dealloc;
- (void)deleteShareForUser:(id)a3 completion:(id)a4;
- (void)disableAndDeleteCloudSyncWithCompletion:(id)a3;
- (void)disablePushNotifications;
- (void)downloadVoiceProfileForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)dumpAssistantStateChunk:(id)a3;
- (void)enablePushNotifications;
- (void)fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4;
- (void)fetchSharedUserIdForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)fetchValueForKeyFromSharedStore:(id)a3 container:(id)a4 withQOS:(int64_t)a5 completion:(id)a6;
- (void)fetchValueForKeyFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5;
- (void)fetchValuesForKeysFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5;
- (void)forceMultiUserSync:(BOOL)a3 download:(BOOL)a4 activity:(id)a5 iCloudAltDSID:(id)a6 completion:(id)a7;
- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)a3 iCloudAltDSID:(id)a4 completion:(id)a5;
- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)a3;
- (void)handleCloudKitError:(id)a3 forZone:(id)a4 mirror:(BOOL)a5 operationType:(int64_t)a6;
- (void)handleSharedDBCloudKitError:(id)a3 operationType:(int64_t)a4;
- (void)hasEverSetLanguageCodeWithCompletion:(id)a3;
- (void)hasVoiceProfileAvailableForiCloudAltDSID:(id)a3 deviceType:(id)a4 completion:(id)a5;
- (void)ignoreNextNotification:(id)a3;
- (void)removeHomeOwnerCKParticipantAssociation:(id)a3 onShare:(id)a4 onContainer:(id)a5 completion:(id)a6;
- (void)removeHomeOwnerCKParticipantAssociation:(id)a3 participants:(id)a4 completion:(id)a5;
- (void)retryShareDeletionOperation;
- (void)saveCloudSyncEnabledRecord:(BOOL)a3 mirror:(BOOL)a4 completion:(id)a5;
- (void)saveFileAssetRecordsWithDictionary:(id)a3 mirror:(BOOL)a4 onZone:(id)a5 activity:(id)a6 sharedUserId:(id)a7 completion:(id)a8;
- (void)saveKeyValueRecordsWithDictionary:(id)a3 mirror:(BOOL)a4 completion:(id)a5;
- (void)saveParticipantsOnShare:(id)a3 forOwner:(id)a4 participants:(id)a5;
- (void)saveRecordsWithDictionary:(id)a3 inZone:(id)a4 completion:(id)a5;
- (void)setupContainerForiCloudAltDSID:(id)a3;
- (void)setupSharedZoneUpdaterForOwner;
- (void)setupZonesForSecondaryAccount:(id)a3;
- (void)shareWithOwner:(id)a3 addShare:(BOOL)a4 retryCount:(unint64_t)a5 homes:(id)a6 completion:(id)a7;
- (void)syncSiriRMVSetting:(BOOL)a3 iCloudAltDSID:(id)a4 homeUniqueIdentifier:(id)a5 completion:(id)a6;
- (void)synchronize;
- (void)triggerVoiceProfileUploadWithCompletion:(id)a3 completion:(id)a4;
@end

@implementation ADCloudKitManager

- (void)dumpAssistantStateChunk:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(ADCloudKitManager *)self containerDict];
  v12 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v12];
  v8 = v12;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"nil";
    }

    [v5 setObject:v10 forKeyedSubscript:@"containers"];
  }

  else
  {
    v11 = [[NSString alloc] initWithData:v7 encoding:4];
    [v5 setObject:v11 forKeyedSubscript:@"containers"];
  }

  v4[2](v4, v5);
}

- (void)_emitCloudKitSELFError:(int64_t)a3
{
  v10 = objc_alloc_init(CloudKitSchemaCKClientEvent);
  [v10 setHasCloudKitErrorReported:1];
  v4 = objc_alloc_init(CloudKitSchemaCKErrorReported);
  v5 = objc_alloc_init(CloudKitSchemaCKChangeReported);
  v6 = v5;
  if (a3 > 4105)
  {
    switch(a3)
    {
      case 4106:
        v7 = v4;
        v8 = 3;
        goto LABEL_14;
      case 4107:
        v7 = v4;
        v8 = 2;
        goto LABEL_14;
      case 4108:
        [v5 setChangeType:1];
        [v10 setCloudKitChangeReported:v6];
        goto LABEL_15;
    }

LABEL_11:
    v7 = v4;
    v8 = 0;
    goto LABEL_14;
  }

  if (a3 != 4103)
  {
    if (a3 == 4104)
    {
      v7 = v4;
      v8 = 4;
      goto LABEL_14;
    }

    if (a3 != 4105)
    {
      goto LABEL_11;
    }
  }

  v7 = v4;
  v8 = 1;
LABEL_14:
  [v7 setErrorType:v8];
  [v10 setCloudKitErrorReported:v4];
LABEL_15:
  v9 = +[AssistantSiriAnalytics sharedStream];
  [v9 emitMessage:v10];
}

- (void)handleSharedDBCloudKitError:(id)a3 operationType:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 8)
  {
    serialQueue = self->_serialQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AD5A4;
    v9[3] = &unk_10051E010;
    v10 = v6;
    v11 = self;
    dispatch_async(serialQueue, v9);
  }
}

- (void)syncSiriRMVSetting:(BOOL)a3 iCloudAltDSID:(id)a4 homeUniqueIdentifier:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (+[AFFeatureFlags isLassoEnabled])
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[ADCloudKitManager syncSiriRMVSetting:iCloudAltDSID:homeUniqueIdentifier:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ADCC4;
    block[3] = &unk_100519D50;
    block[4] = self;
    v16 = v10;
    v18 = v12;
    v17 = v11;
    v19 = a3;
    dispatch_async(serialQueue, block);
  }
}

- (void)hasVoiceProfileAvailableForiCloudAltDSID:(id)a3 deviceType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
LABEL_6:
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AE318;
    block[3] = &unk_10051E0D8;
    v19 = v9;
    v20 = self;
    v21 = v8;
    v22 = v10;
    dispatch_async(serialQueue, block);

    goto LABEL_10;
  }

  v11 = v9;
  v12 = [NSSet setWithObjects:@"iphone", @"mac", @"ipad", @"appletv", @"audioaccessory", 0];
  v13 = [v11 lowercaseString];
  v14 = [v12 containsObject:v13];
  v15 = AFSiriLogContextDaemon;
  if (v14)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "ADCloudKitIsValidDeviceTypeName";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Valid device type name: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "ADCloudKitIsValidDeviceTypeName";
    v25 = 2112;
    v26 = v11;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Invalid device type name: %@", buf, 0x16u);
  }

  v17 = [AFError errorWithCode:31 description:@"Invalid deviceType name"];
  (*(v10 + 2))(v10, 0, v17);

LABEL_10:
}

- (void)handleCloudKitError:(id)a3 forZone:(id)a4 mirror:(BOOL)a5 operationType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 copy];
  serialQueue = self->_serialQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AE8EC;
  v17[3] = &unk_100518868;
  v23 = a5;
  v18 = v11;
  v19 = self;
  v20 = v12;
  v21 = v10;
  v22 = a6;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  dispatch_async(serialQueue, v17);
}

- (void)fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4
{
  v6 = a3;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF5BC;
  block[3] = &unk_10051C890;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(serialQueue, block);
}

- (void)_forceMultiUserSync:(BOOL)a3 download:(BOOL)a4 retryCount:(unint64_t)a5 activity:(id)a6 iCloudAltDSID:(id)a7 completion:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (a5 < 4)
  {
    serialQueue = self->_serialQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000AF79C;
    v20[3] = &unk_100510BB0;
    v21 = v15;
    v22 = self;
    v26 = a3;
    v24 = v16;
    v27 = a4;
    v23 = v14;
    v25 = a5;
    dispatch_async(serialQueue, v20);

    v18 = v21;
    goto LABEL_6;
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]";
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Too many retries. Bailing out", buf, 0xCu);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (v16)
  {
LABEL_4:
    v18 = [AFError errorWithCode:6001];
    (*(v16 + 2))(v16, v18);
LABEL_6:
  }

LABEL_7:
}

- (void)forceMultiUserSync:(BOOL)a3 download:(BOOL)a4 activity:(id)a5 iCloudAltDSID:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[ADCloudKitManager forceMultiUserSync:download:activity:iCloudAltDSID:completion:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (a3 || a4)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B0B1C;
    block[3] = &unk_100516840;
    block[4] = self;
    v22 = a3;
    v23 = a4;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    dispatch_async(serialQueue, block);
  }

  else if (v14)
  {
    v16 = [AFError errorWithCode:6002];
    (*(v14 + 2))(v14, v16);
  }
}

- (void)hasEverSetLanguageCodeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B0C6C;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (void)_fetchManifest:(id)a3 legacy:(BOOL)a4 language:(id)a5 completion:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.assistant.backedup" ownerName:CKCurrentUserDefaultName];
  v13 = [CKRecordID alloc];
  if (v7)
  {
    v14 = @"PHS Language Manifest";
  }

  else
  {
    v14 = @"PHS Language Manifest V2";
  }

  v15 = [v13 initWithRecordName:v14 zoneID:v12];
  v31 = v15;
  v16 = [NSArray arrayWithObjects:&v31 count:1];
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = @"manifest lookup";
    if (v7)
    {
      v18 = @"legacy manifest lookup";
    }

    *buf = 136315394;
    v28 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]";
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v19 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v16];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B1728;
  v23[3] = &unk_1005173D8;
  v24 = v16;
  v25 = v9;
  v26 = v10;
  v20 = v10;
  v21 = v9;
  v22 = v16;
  [v19 setFetchRecordsCompletionBlock:v23];
  [v19 setQualityOfService:25];
  [v11 addOperation:v19];
}

- (void)_fetchManifest:(id)a3 language:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B1F14;
  v10[3] = &unk_100510B38;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v14;
  [(ADCloudKitManager *)v11 _fetchManifest:v8 legacy:0 language:v7 completion:v10];
}

- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B2030;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(serialQueue, v7);
  }
}

- (void)_devicesWithAvailablePHSAssetsForLanguage:(id)a3 iCloudAltDSID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADCloudKitManager _devicesWithAvailablePHSAssetsForLanguage:iCloudAltDSID:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (v10)
  {
    if ([v8 length])
    {
      serialQueue = self->_serialQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000B2334;
      v13[3] = &unk_10051E0D8;
      v14 = v9;
      v15 = self;
      v16 = v8;
      v17 = v10;
      dispatch_async(serialQueue, v13);
    }

    else
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)a3 iCloudAltDSID:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B28D4;
  v8[3] = &unk_10051D5D8;
  v9 = a5;
  v7 = v9;
  [(ADCloudKitManager *)self _devicesWithAvailablePHSAssetsForLanguage:a3 iCloudAltDSID:0 completion:v8];
}

- (id)_verifyAccountWithManateeRequired:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADCloudKitManager _verifyAccountWithManateeRequired:]";
    v21 = 1024;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Requires manatee: %d", &v19, 0x12u);
  }

  if (v3 && !self->_usingNonManateeIdentity && ![(CKAccountInfo *)self->_primaryAccountInfo supportsDeviceToDeviceEncryption]|| [(CKAccountInfo *)self->_primaryAccountInfo accountStatus]!= 1)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "[ADCloudKitManager _verifyAccountWithManateeRequired:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s CloudKit account is unavailable", &v19, 0xCu);
    }

    v15 = 4013;
    goto LABEL_24;
  }

  if (!self->_cloudSyncEnabled)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "[ADCloudKitManager _verifyAccountWithManateeRequired:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Cloud sync is disabled", &v19, 0xCu);
    }

    v15 = 4014;
LABEL_24:
    v13 = [AFError errorWithCode:v15];
    goto LABEL_25;
  }

  primaryContainer = self->_primaryContainer;
  if (!primaryContainer)
  {
    v7 = [(ADCloudKitManager *)self getContainerIDForThisDevice];
    v8 = sub_10031AD70(v7);
    v9 = self->_primaryContainer;
    self->_primaryContainer = v8;

    if (self->_primaryAccountiCloudAltDSID)
    {
      [(ADCloudKitManager *)self _trackCKContainer:self->_primaryContainer accountInfo:0 foriCloudAltDSID:?];
    }

    if (AFIsMultiUserCompanion() && !self->_usingNonManateeIdentity)
    {
      v10 = [[ADCloudKitMirroredContainer alloc] initWithContainer:@"com.apple.siri.data" queue:self->_serialQueue];
      mirroredContainer = self->_mirroredContainer;
      self->_mirroredContainer = v10;
    }

    primaryContainer = self->_primaryContainer;
  }

  v12 = [(CKContainer *)primaryContainer privateCloudDatabase];
  if (!v12)
  {
    v18 = 4015;
LABEL_30:
    v13 = [AFError errorWithCode:v18];
    goto LABEL_31;
  }

  if (!self->_multiUserRecordZoneInfo)
  {
    v18 = 4016;
    goto LABEL_30;
  }

  v13 = 0;
LABEL_31:

LABEL_25:

  return v13;
}

- (void)downloadVoiceProfileForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCloudKitManager downloadVoiceProfileForiCloudAltDSID:completion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s iCloudAltDSID: %@", &v9, 0x16u);
  }

  if (v6)
  {
    v8 = [AFError errorWithCode:13];
    v6[2](v6, v8);
  }
}

- (void)triggerVoiceProfileUploadWithCompletion:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCloudKitManager triggerVoiceProfileUploadWithCompletion:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2EB0;
  v9[3] = &unk_10051E038;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(serialQueue, v9);
}

- (void)disableAndDeleteCloudSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCloudKitManager disableAndDeleteCloudSyncWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B3138;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (void)synchronize
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3BB4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (BOOL)preferencesHaveBeenSynchronized
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 keyValueServerChangeToken];
  v4 = v3 != 0;

  return v4;
}

- (void)retryShareDeletionOperation
{
  v2 = +[ADHomeInfoManager sharedInfoManager];
  [v2 restartShareDeletion];
}

- (void)saveParticipantsOnShare:(id)a3 forOwner:(id)a4 participants:(id)a5
{
  v7 = a4;
  v8 = a5;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3DA8;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(serialQueue, block);
}

- (void)shareWithOwner:(id)a3 addShare:(BOOL)a4 retryCount:(unint64_t)a5 homes:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (a5 < 0x10)
  {
    serialQueue = self->_serialQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B4664;
    v18[3] = &unk_100519338;
    v18[4] = self;
    v23 = a4;
    v19 = v12;
    v22 = a5;
    v20 = v13;
    v21 = v14;
    dispatch_async(serialQueue, v18);

    goto LABEL_6;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]";
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Account not ready or giving up after failures.", buf, 0xCu);
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (v14)
  {
LABEL_4:
    v16 = [AFError errorWithCode:4013];
    (*(v14 + 2))(v14, 0, 0, v16);
  }

LABEL_6:
}

- (void)removeHomeOwnerCKParticipantAssociation:(id)a3 onShare:(id)a4 onContainer:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B50A4;
  v16[3] = &unk_100514360;
  v17 = v10;
  v18 = self;
  v20 = a5;
  v21 = a6;
  v19 = v11;
  v12 = v20;
  v13 = v11;
  v14 = v21;
  v15 = v10;
  [(ADCloudKitManager *)self fetchValueForKeyFromSharedStore:@"ADCloudKitShareParticipants" completion:v16];
}

- (void)removeHomeOwnerCKParticipantAssociation:(id)a3 participants:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 mutableCopy];
  [v10 removeObjectForKey:v8];
  v11 = [NSDictionary alloc];
  v12 = [v10 copy];
  v13 = [v11 initWithObjectsAndKeys:{v12, @"ADCloudKitShareParticipants", 0}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B5E80;
  v18[3] = &unk_100518440;
  v19 = v8;
  v20 = self;
  v21 = v10;
  v22 = v9;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v17 = self;
  [(ADCloudKitManager *)v17 addDictionaryToSharedStore:v13 completion:v18];
}

- (void)deleteShareForUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  shareeOperations = self->_shareeOperations;
  if (!shareeOperations)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[ADCloudKitManager deleteShareForUser:completion:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Request to delete data when sharee operations not setup", &v10, 0xCu);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v7[2](v7);
    goto LABEL_6;
  }

  [(ADCloudKitShareeOperations *)shareeOperations deleteShareForUser:v6 markForReinvitation:0 completion:v7];
LABEL_6:
}

- (void)_acceptSharesForMetadatas:(id)a3
{
  v4 = a3;
  v5 = [[CKAcceptSharesOperation alloc] initWithShareMetadatas:v4];

  v6 = +[NSMutableArray array];
  v7 = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B636C;
  v13[3] = &unk_10051C9D0;
  v13[4] = v7;
  v13[5] = v7;
  [v5 setAcceptSharesCompletionBlock:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B6570;
  v11[3] = &unk_1005109B0;
  v11[4] = v7;
  v11[5] = v7;
  v8 = v6;
  v12 = v8;
  [v5 setPerShareCompletionBlock:v11];
  mirroredContainer = v7->_mirroredContainer;
  if (mirroredContainer)
  {
    v10 = [(ADCloudKitMirroredContainer *)mirroredContainer container];
    [v10 addOperation:v5];
  }

  else
  {
    [(CKContainer *)v7->_primaryContainer addOperation:v5];
  }
}

- (void)acceptShare:(id)a3 token:(id)a4 containerID:(id)a5 retryCount:(unint64_t)a6 object:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  serialQueue = self->_serialQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B69FC;
  v21[3] = &unk_10051A0D8;
  v22 = v15;
  v23 = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = a6;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  dispatch_async(serialQueue, v21);
}

- (void)continueShareAcceptanceOperations
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(AFQueue *)self->_shareAcceptanceQueue frontObject];
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = v4;
      v9 = [v3 url];
      v10 = 136315394;
      v11 = "[ADCloudKitManager continueShareAcceptanceOperations]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Retry for url (%@)", &v10, 0x16u);
    }

    [v3 setRetryCount:{objc_msgSend(v3, "retryCount") + 1}];
    v5 = [v3 url];
    v6 = [v3 token];
    v7 = [v3 containerID];
    -[ADCloudKitManager acceptShare:token:containerID:retryCount:object:](self, "acceptShare:token:containerID:retryCount:object:", v5, v6, v7, [v3 retryCount], v3);
  }
}

- (id)containerIDs
{
  if (self->_usingNonManateeIdentity)
  {
    v6 = @"com.apple.siri.zonesharing";
    v2 = &v6;
  }

  else
  {
    v5 = @"com.apple.siri.data";
    v2 = &v5;
  }

  v3 = [NSArray arrayWithObjects:v2 count:1];

  return v3;
}

- (void)_setupSharedZoneView
{
  if (!self->_shareeOperations)
  {
    self->_shareeOperations = [[ADCloudKitShareeOperations alloc] initWithQueue:self->_serialQueue container:self->_primaryContainer instanceContext:self->_instanceContext];

    _objc_release_x1();
  }
}

- (void)fetchSharedUserIdForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B79C8;
    block[3] = &unk_10051E088;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(serialQueue, block);
  }
}

- (void)fetchValuesForKeysFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    serialQueue = self->_serialQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B7E64;
    v11[3] = &unk_10051C0D8;
    v11[4] = self;
    v13 = v9;
    v12 = v8;
    v14 = a4;
    dispatch_async(serialQueue, v11);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (void)fetchValueForKeyFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  serialQueue = self->_serialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B7FFC;
  v13[3] = &unk_10051C0D8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(serialQueue, v13);
}

- (void)fetchValueForKeyFromSharedStore:(id)a3 container:(id)a4 withQOS:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B81BC;
  block[3] = &unk_1005194E0;
  block[4] = self;
  v18 = v11;
  v20 = v12;
  v21 = a5;
  v19 = v10;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(serialQueue, block);
}

- (void)addDictionaryToSharedStore:(id)a3 recordKeysForDeletion:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 | v9)
  {
    serialQueue = self->_serialQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B8360;
    v13[3] = &unk_10051E0D8;
    v13[4] = self;
    v16 = v10;
    v14 = v8;
    v15 = v9;
    dispatch_async(serialQueue, v13);
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)_validateAndUpdateSharedZoneUpdater
{
  v3 = [(ADCloudKitSharedZoneUpdater *)self->_sharedZoneUpdater sharedZone];
  if (!v3 || (v4 = v3, -[ADCloudKitSharedZoneUpdater sharedZone](self->_sharedZoneUpdater, "sharedZone"), v5 = objc_claimAutoreleasedReturnValue(), [v5 zone], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[ADCloudKitManager _validateAndUpdateSharedZoneUpdater]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s _sharedZoneUpdater does not have sharedZone set.", &v13, 0xCu);
    }

    v8 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer multiUserRecordZoneInfo];
    if (v8 || (v8 = self->_multiUserRecordZoneInfo) != 0)
    {
      v9 = v8;
      v10 = [(ADCloudKitRecordZoneInfo *)v8 zone];

      v11 = AFSiriLogContextDaemon;
      if (v10)
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136315138;
          v14 = "[ADCloudKitManager _validateAndUpdateSharedZoneUpdater]";
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Updating sharedZone for _sharedZoneUpdater.", &v13, 0xCu);
        }

        [(ADCloudKitSharedZoneUpdater *)self->_sharedZoneUpdater setSharedZone:v9];
      }

      else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[ADCloudKitManager _validateAndUpdateSharedZoneUpdater]";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s multiUserRecordZoneInfo does not have CKRecordZone.", &v13, 0xCu);
      }
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[ADCloudKitManager _validateAndUpdateSharedZoneUpdater]";
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s ADCloudkitManager does not have sharedZone.", &v13, 0xCu);
      }
    }
  }
}

- (void)addKeyToSharedStore:(id)a3 value:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B8740;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(serialQueue, v15);
}

- (void)addKeyToSharedStore:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B88B8;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)adCloudKitSharedZoneUpdater:(id)a3 didEncounterError:(id)a4
{
  v5 = a4;
  [(ADCloudKitManager *)self handleCloudKitError:v5 forZone:@"com.apple.assistant.multiuser.shared" mirror:AFIsMultiUserCompanion() operationType:2];
}

- (void)setupSharedZoneUpdaterForOwner
{
  [(ADCloudKitManager *)self _setupSharedZoneUpdaterForOwner];
  if (!self->_sharedZoneUpdater)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[ADCloudKitManager setupSharedZoneUpdaterForOwner]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s _sharedZoneUpdater is nil, scheduling the retryManager", buf, 0xCu);
    }

    v4 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer multiUserRecordZoneInfo];
    if (!v4)
    {
      v4 = self->_multiUserRecordZoneInfo;
    }

    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B8A70;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_async(serialQueue, v7);
  }
}

- (void)_setupSharedZoneUpdaterForOwner
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCloudKitManager _setupSharedZoneUpdaterForOwner]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (self->_sharedZoneUpdater)
  {
    [(ADCloudKitManager *)self _validateAndUpdateSharedZoneUpdater];
  }

  else
  {
    v4 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer multiUserRecordZoneInfo];
    if (!v4)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "[ADCloudKitManager _setupSharedZoneUpdaterForOwner]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s _mirroredContainer multiUserRecordZoneInfo is nil, using _multiUserRecordZoneInfo.", &v10, 0xCu);
      }

      v4 = self->_multiUserRecordZoneInfo;
    }

    v6 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];
    if (!v6 || self->_usingNonManateeIdentity)
    {
      v7 = self->_primaryContainer;

      v6 = v7;
    }

    v8 = [[ADCloudKitSharedZoneUpdater alloc] initWithQueue:self->_serialQueue container:v6 sharedZone:v4 zoneOwner:1 delegate:self];
    sharedZoneUpdater = self->_sharedZoneUpdater;
    self->_sharedZoneUpdater = v8;
  }
}

- (void)_scheduleMirrorSynchronizationAfterDelay:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 600000000000);
  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B8D40;
  v8[3] = &unk_10051E010;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_after(v5, serialQueue, v8);
}

- (void)_synchronizeMirroredContainer:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[ADCloudKitManager _synchronizeMirroredContainer:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = [v4 zoneName];
  v7 = [v6 isEqualToString:@"com.apple.assistant.backedup"];

  if (v7)
  {
    v8 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer keyValueRecordZoneInfo];
    v9 = [v8 dataStore];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B9174;
    v21[3] = &unk_10051B778;
    v21[4] = self;
    [v9 synchronizeWithCompletion:v21];
    [v9 synchronizeKeychainPreferencesWithCompletion:&stru_100510938];

    goto LABEL_10;
  }

  v10 = [v4 zoneName];
  v11 = [v10 isEqualToString:@"com.apple.assistant.account.status"];

  if (v11)
  {
    v12 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer accountStatusRecordZoneInfo];
    v13 = [v12 dataStore];
    v14 = v13;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B924C;
    v20[3] = &unk_10051B778;
    v20[4] = self;
    v15 = v20;
LABEL_9:
    [v13 synchronizeWithCompletion:v15];

    goto LABEL_10;
  }

  v16 = [v4 zoneName];
  v17 = [v16 isEqualToString:@"com.apple.assistant.multiuser.shared"];

  if (v17)
  {
    v12 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer multiUserRecordZoneInfo];
    v13 = [v12 dataStore];
    v14 = v13;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B9324;
    v19[3] = &unk_10051B778;
    v19[4] = self;
    v15 = v19;
    goto LABEL_9;
  }

  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[ADCloudKitManager _synchronizeMirroredContainer:]";
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Unknown zone (%@)", buf, 0x16u);
  }

LABEL_10:
}

- (id)getContainerIDForThisDevice
{
  if (self->_usingNonManateeIdentity)
  {
    return @"com.apple.siri.zonesharing";
  }

  if (AFSupportsMultiUser())
  {
    return @"com.apple.siri.data";
  }

  return @"com.apple.siri.profile";
}

- (void)_cleanUpRecordZonesAndSubscriptions
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager _cleanUpRecordZonesAndSubscriptions]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  [(ADCloudKitManager *)self _cleanUpRecordZoneSubscriptionsTimers];
  [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo setZone:0];
  [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo setSubscriptionList:0];
  [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo setZone:0];
  [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo setSubscriptionList:0];
  [(ADCloudKitRecordZoneInfo *)self->_voiceTriggerRecordZoneInfo setZone:0];
  [(ADCloudKitRecordZoneInfo *)self->_voiceTriggerRecordZoneInfo setSubscriptionList:0];
  [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo setZone:0];
  [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo setSubscriptionList:0];
}

- (void)_cleanUpRecordZoneSubscriptionsTimers
{
  dispatch_assert_queue_V2(self->_serialQueue);
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRecordZoneSetupTimerForZoneInfo:self->_accountStatusRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSubscriptionSetupTimerForZoneInfo:self->_accountStatusRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRateLimitTimerForZoneInfo:self->_accountStatusRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSyncRetryTimerForZoneInfo:self->_accountStatusRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRecordZoneSetupTimerForZoneInfo:self->_keyValueRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSubscriptionSetupTimerForZoneInfo:self->_keyValueRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRateLimitTimerForZoneInfo:self->_keyValueRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSyncRetryTimerForZoneInfo:self->_keyValueRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRecordZoneSetupTimerForZoneInfo:self->_voiceTriggerRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSubscriptionSetupTimerForZoneInfo:self->_voiceTriggerRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRateLimitTimerForZoneInfo:self->_voiceTriggerRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSyncRetryTimerForZoneInfo:self->_voiceTriggerRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRecordZoneSetupTimerForZoneInfo:self->_multiUserRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSubscriptionSetupTimerForZoneInfo:self->_multiUserRecordZoneInfo];
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRateLimitTimerForZoneInfo:self->_multiUserRecordZoneInfo];
  ckRetryManager = self->_ckRetryManager;
  multiUserRecordZoneInfo = self->_multiUserRecordZoneInfo;

  [(ADCloudKitRetryManager *)ckRetryManager cancelSyncRetryTimerForZoneInfo:multiUserRecordZoneInfo];
}

- (void)_createRecordZoneSubscriptionWithZoneID:(id)a3 name:(id)a4 recordTypes:(id)a5 container:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_V2(self->_serialQueue);
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "[ADCloudKitManager _createRecordZoneSubscriptionWithZoneID:name:recordTypes:container:completion:]";
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Creating zone subscription: (%@)", buf, 0x16u);
  }

  if (v15)
  {
    v18 = v15;
LABEL_6:
    v31 = v18;
    v32 = v16;
    v19 = objc_alloc_init(NSMutableArray);
    if ([v14 count])
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = [CKRecordZoneSubscription alloc];
        v23 = [v13 objectAtIndexedSubscript:v20];
        v24 = [v22 initWithZoneID:v12 subscriptionID:v23];

        v25 = [v14 objectAtIndexedSubscript:v20];
        [v24 setRecordType:v25];

        v26 = objc_alloc_init(CKNotificationInfo);
        [v26 setShouldSendContentAvailable:1];
        [v24 setNotificationInfo:v26];
        [v19 addObject:v24];

        v20 = v21;
      }

      while ([v14 count] > v21++);
    }

    v28 = [[CKModifySubscriptionsOperation alloc] initWithSubscriptionsToSave:v19 subscriptionIDsToDelete:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000B9A50;
    v33[3] = &unk_10051BDC0;
    v34 = v13;
    v16 = v32;
    v35 = v32;
    [v28 setModifySubscriptionsCompletionBlock:v33];
    [v28 setQualityOfService:17];
    v29 = v31;
    v30 = [(CKContainer *)v31 privateCloudDatabase];
    [v30 addOperation:v28];

    goto LABEL_10;
  }

  v18 = self->_primaryContainer;
  if (v18)
  {
    goto LABEL_6;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  v29 = [AFError errorWithCode:4003];
  (*(v16 + 2))(v16, v29, 0);
LABEL_10:

LABEL_11:
}

- (void)_setupRecordZoneSubscriptionWithZoneInfo:(id)a3 retryInterval:(double)a4 container:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_serialQueue);
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v41) = 136315138;
    *(&v41 + 4) = "[ADCloudKitManager _setupRecordZoneSubscriptionWithZoneInfo:retryInterval:container:withCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s ", &v41, 0xCu);
  }

  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSubscriptionSetupTimerForZoneInfo:v10];
  *&v41 = 0;
  *(&v41 + 1) = &v41;
  v42 = 0x3032000000;
  v43 = sub_1000B36D4;
  v44 = sub_1000B36E4;
  v45 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v14 = [v10 zoneName];
  v15 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v14];

  v36 = v15;
  if (!v11)
  {
    v11 = self->_primaryContainer;
  }

  if (v34[3])
  {
    v16 = [v10 zone];
    v17 = [v16 zoneID];

    if (v17)
    {
      v18 = [v10 zone];
      v19 = [v18 zoneID];
      v20 = [v10 subscriptionNames];
      v21 = [v10 dataStore];
      v22 = [v21 supportedRecordTypes];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000B9FC8;
      v26[3] = &unk_100510918;
      v26[4] = self;
      v27 = v10;
      v30 = &v33;
      v31 = &v41;
      v29 = v12;
      v32 = a4;
      v28 = v11;
      [(ADCloudKitManager *)self _createRecordZoneSubscriptionWithZoneID:v19 name:v20 recordTypes:v22 container:v28 completion:v26];
    }

    else
    {
      v25 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v38 = "[ADCloudKitManager _setupRecordZoneSubscriptionWithZoneInfo:retryInterval:container:withCompletion:]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Unable to create zone subscription without a record zone", buf, 0xCu);
      }

      [(ADCloudKitRetryManager *)self->_ckRetryManager cancelSubscriptionSetupTimerForZoneInfo:v10];
    }
  }

  else
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v10 zoneName];
      *buf = 136315394;
      v38 = "[ADCloudKitManager _setupRecordZoneSubscriptionWithZoneInfo:retryInterval:container:withCompletion:]";
      v39 = 2112;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Unable to create subscription for zone: (%@)", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v41, 8);
}

- (void)saveRecordsWithDictionary:(id)a3 inZone:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCloudKitManager saveRecordsWithDictionary:inZone:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000BA744;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_async(serialQueue, v16);
}

- (void)saveFileAssetRecordsWithDictionary:(id)a3 mirror:(BOOL)a4 onZone:(id)a5 activity:(id)a6 sharedUserId:(id)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  serialQueue = self->_serialQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000BACAC;
  v22[3] = &unk_1005167F0;
  v23 = v13;
  v24 = self;
  v26 = v15;
  v27 = v16;
  v28 = a4;
  v25 = v14;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  v21 = v13;
  dispatch_async(serialQueue, v22);
}

- (void)saveKeyValueRecordsWithDictionary:(id)a3 mirror:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BB5E0;
  v14[3] = &unk_10051C6C8;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v14[4] = self;
  v12 = v8;
  v13 = v9;
  dispatch_async(serialQueue, v14);
}

- (void)_saveCloudSyncEnabledRecord:(BOOL)a3 mirror:(BOOL)a4 qualityOfService:(int64_t)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    if (v7)
    {
      v12 = @"YES";
    }

    *buf = 136315394;
    v36 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]";
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s mirrored : (%@)", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (v7)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v36 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s mirrored", buf, 0xCu);
    }

    v14 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer accountStatusRecordZoneInfo];
    v15 = [v14 zone];
    v16 = [v15 zoneID];
  }

  else
  {
    v14 = [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo zone];
    v16 = [v14 zoneID];
  }

  if (v16)
  {
    v29 = a5;
    v17 = [[CKRecordID alloc] initWithRecordName:@"SyncEnabled" zoneID:v16];
    v18 = [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo dataStore];
    v19 = [v18 supportedRecordTypes];
    v20 = [v19 firstObject];

    v21 = [[CKRecord alloc] initWithRecordType:v20 recordID:v17];
    v22 = [v21 encryptedValuesByKey];
    v23 = [NSNumber numberWithUnsignedInteger:1];
    [v22 setObject:v23 forKey:@"version"];

    v24 = [v21 encryptedValuesByKey];
    [v24 setObject:@"SyncEnabled" forKey:@"key"];

    v25 = [NSNumber numberWithBool:v8];
    [v21 _ad_setData:v25];

    if (v7)
    {
      v26 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];
    }

    else
    {
      v26 = self->_primaryContainer;
    }

    v27 = v26;
    v34 = v21;
    v28 = [NSArray arrayWithObjects:&v34 count:1];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000BC0E4;
    v30[3] = &unk_100510878;
    v33 = v7;
    v32 = v29;
    v30[4] = self;
    v31 = v10;
    sub_100125F7C(v28, 0, v29, v27, 1, 0, v30);

    goto LABEL_17;
  }

  if (v10)
  {
    v17 = [AFError errorWithCode:4020];
    (*(v10 + 2))(v10, v17, 0);
LABEL_17:
  }
}

- (void)saveCloudSyncEnabledRecord:(BOOL)a3 mirror:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BC4AC;
  block[3] = &unk_100515D80;
  v13 = a3;
  v14 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(serialQueue, block);
}

- (id)_createRecordsWithDictionary:(id)a3 forZoneInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v13 = 0;
    goto LABEL_10;
  }

  v7 = [v6 zone];
  v8 = [v7 zoneID];

  if (v8)
  {
    v9 = [v6 rateLimitTimer];

    if (!v9)
    {
      v13 = sub_100125AEC(v5, v8);
      goto LABEL_9;
    }

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v6 zoneName];
      v15 = 136315394;
      v16 = "[ADCloudKitManager _createRecordsWithDictionary:forZoneInfo:]";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Unable to save records for zone because zone is rate limited: (%@)", &v15, 0x16u);
    }
  }

  v13 = 0;
LABEL_9:

LABEL_10:

  return v13;
}

- (id)_createFileAssetRecordWithDictionary:(id)a3 zone:(id)a4 version:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v8 count])
  {
    objc_opt_class();
    v10 = [v8 objectForKey:@"fileName"];
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
    {
      v11 = [v8 objectForKey:@"fileCompressionType"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v8 objectForKey:@"fileAssetSize"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v8 objectForKey:@"fileAsset"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v8 objectForKey:@"languages"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 count])
            {
              v31 = v13;
              v32 = v12;
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v30 = v14;
              obj = v14;
              v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v35;
                while (2)
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v35 != v17)
                    {
                      objc_enumerationMutation(obj);
                    }

                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v21 = 0;
                      v12 = v32;
                      v23 = obj;
                      v14 = v30;
                      v13 = v31;
                      goto LABEL_33;
                    }
                  }

                  v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              v19 = [v8 objectForKey:@"productType"];
              v13 = v31;
              if (objc_opt_isKindOfClass())
              {
                v29 = v19;
                v20 = [v19 length];
                v12 = v32;
                if (v20)
                {
                  v28 = [v8 objectForKey:@"buildVersion"];
                  v14 = v30;
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 length])
                  {
                    v26 = [[CKRecordID alloc] initWithRecordName:v10 zoneID:v9];
                    v21 = [[CKRecord alloc] initWithRecordType:@"AssistantVoiceTriggerFileAssetRecord" recordID:v26];
                    v27 = [v21 encryptedValuesByKey];
                    v22 = [NSNumber numberWithUnsignedInteger:a5];
                    [v27 setObject:v22 forKey:@"version"];

                    [v27 setObject:v10 forKey:@"fileName"];
                    [v27 setObject:v11 forKey:@"fileCompressionType"];
                    [v27 setObject:v32 forKey:@"fileAssetSize"];
                    [v27 setObject:obj forKey:@"languages"];
                    v23 = v29;
                    [v27 setObject:v29 forKey:@"productType"];
                    v24 = v28;
                    [v27 setObject:v28 forKey:@"buildVersion"];
                    [v21 setObject:v31 forKey:@"fileAsset"];
                  }

                  else
                  {
                    v21 = 0;
                    v24 = v28;
                    v23 = v29;
                  }
                }

                else
                {
                  v21 = 0;
                  v23 = v29;
                  v14 = v30;
                }
              }

              else
              {
                v21 = 0;
                v23 = v19;
                v12 = v32;
                v14 = v30;
              }

LABEL_33:
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_createKeyValueRecordsWithDictionary:(id)a3 mirror:(BOOL)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (![v6 count])
  {
    v9 = 0;
    goto LABEL_15;
  }

  if (a4)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[ADCloudKitManager _createKeyValueRecordsWithDictionary:mirror:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s mirrored", &v18, 0xCu);
    }

    v8 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer keyValueRecordZoneInfo];
  }

  else
  {
    v8 = self->_keyValueRecordZoneInfo;
  }

  v10 = v8;
  v11 = [(ADCloudKitRecordZoneInfo *)v8 zone];
  v12 = [v11 zoneID];

  if (v12)
  {
    v13 = [(ADCloudKitRecordZoneInfo *)v10 rateLimitTimer];

    if (!v13)
    {
      v9 = sub_100125AEC(v6, v12);
      goto LABEL_14;
    }

    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [(ADCloudKitRecordZoneInfo *)v10 zoneName];
      v18 = 136315394;
      v19 = "[ADCloudKitManager _createKeyValueRecordsWithDictionary:mirror:]";
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Unable to save records for zone because zone is rate limited: (%@)", &v18, 0x16u);
    }
  }

  v9 = 0;
LABEL_14:

LABEL_15:

  return v9;
}

- (void)_synchronizeVoiceTriggerData
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo dataStore];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BCD68;
  v4[3] = &unk_10051B778;
  v4[4] = self;
  [v3 synchronizeWithCompletion:v4];
}

- (void)_cancelVoiceTriggerSyncTimer
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCloudKitManager _cancelVoiceTriggerSyncTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  voiceTriggerSyncTimer = self->_voiceTriggerSyncTimer;
  if (voiceTriggerSyncTimer)
  {
    dispatch_source_cancel(voiceTriggerSyncTimer);
    v5 = self->_voiceTriggerSyncTimer;
    self->_voiceTriggerSyncTimer = 0;
  }
}

- (void)_startVoiceTriggerSyncTimerWithInterval:(double)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADCloudKitManager _startVoiceTriggerSyncTimerWithInterval:]";
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Synching Voice Trigger data in %f seconds", buf, 0x16u);
  }

  [(ADCloudKitManager *)self _cancelVoiceTriggerSyncTimer];
  if ([(ADCloudKitManager *)self cloudSyncEnabled])
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_serialQueue);
    voiceTriggerSyncTimer = self->_voiceTriggerSyncTimer;
    self->_voiceTriggerSyncTimer = v6;

    v8 = self->_voiceTriggerSyncTimer;
    v9 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v10 = self->_voiceTriggerSyncTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000BD1C8;
    handler[3] = &unk_10051DFE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_voiceTriggerSyncTimer);
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[ADCloudKitManager _startVoiceTriggerSyncTimerWithInterval:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Voice Trigger setup timer cancelled", buf, 0xCu);
    }
  }
}

- (void)_setupVoiceTriggerSyncTimer
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = +[ADPreferences sharedPreferences];
  v4 = [v3 multiUserSharedDataNeedsSync];

  v5 = 30.0;
  if ((v4 & 1) == 0)
  {
    v6 = +[ADPreferences sharedPreferences];
    v7 = [v6 voiceTriggerNeedsDataSync];

    if ((v7 & 1) == 0)
    {
      if (AFIsMultiUserCompanion())
      {
        v8 = +[ADPreferences sharedPreferences];
        v9 = [v8 mirroredMultiUserSharedDataNeedsSync];

        if (v9)
        {
          v5 = 30.0;
        }

        else
        {
          v5 = 86400.0;
        }
      }

      else
      {
        v5 = 86400.0;
      }
    }
  }

  [(ADCloudKitManager *)self _startVoiceTriggerSyncTimerWithInterval:v5];
}

- (void)_homeInfoDidChange:(id)a3
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD3F0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_voiceProfileNeedSync:(id)a3
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager _voiceProfileNeedSync:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unsupported platform", &v4, 0xCu);
  }
}

- (void)_voiceProfileFullDownloadTriggered:(id)a3
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD5D8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (BOOL)_forceVoiceProfileDownloadForiCloudAltDSID:(id)a3 retryCount:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  v10 = AFSiriLogContextDaemon;
  if (!v8)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[ADCloudKitManager _forceVoiceProfileDownloadForiCloudAltDSID:retryCount:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error: no iCloudAltDSID", buf, 0xCu);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (v9)
    {
LABEL_9:
      v15 = [AFError errorWithCode:31];
      v9[2](v9, v15);
      goto LABEL_17;
    }

    v18 = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    containerDict = self->_containerDict;
    v12 = v10;
    v13 = [(NSMutableDictionary *)containerDict allKeys];
    *buf = 136315651;
    v28 = "[ADCloudKitManager _forceVoiceProfileDownloadForiCloudAltDSID:retryCount:completion:]";
    v29 = 2113;
    v30 = v8;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Choosing container for %{private}@ from %@", buf, 0x20u);
  }

  v14 = [(ADCloudKitManager *)self _trackedCKContainerForiCloudAltDSID:v8];
  if (!v14)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[ADCloudKitManager _forceVoiceProfileDownloadForiCloudAltDSID:retryCount:completion:]";
      v29 = 2112;
      v30 = v8;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s No container found for %@", buf, 0x16u);
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else if (!v9)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_17;
    }

    v20 = [AFError errorWithCode:4022];
    v9[2](v9, v20);

    goto LABEL_13;
  }

  v15 = v14;
  v16 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo zoneName];
  v17 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v16];

  if (!v17)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      multiUserRecordZoneInfo = self->_multiUserRecordZoneInfo;
      v25 = v21;
      v26 = [(ADCloudKitRecordZoneInfo *)multiUserRecordZoneInfo zoneName];
      *buf = 136315394;
      v28 = "[ADCloudKitManager _forceVoiceProfileDownloadForiCloudAltDSID:retryCount:completion:]";
      v29 = 2112;
      v30 = v26;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Cloud sync is not enabled for zone: %@", buf, 0x16u);

      if (!v9)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v9)
    {
LABEL_16:
      v22 = [AFError errorWithCode:4020];
      v9[2](v9, v22);
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:self->_multiUserRecordZoneInfo retryCount:a4 useSharedDatabase:0 activity:0 container:v15 mirror:0 completion:v9];
  v18 = 1;
LABEL_18:

LABEL_19:
  return v18;
}

- (void)_forceVoiceProfileDownloadOfAllUsers:(int64_t)a3
{
  if (a3 >= 4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[ADCloudKitManager _forceVoiceProfileDownloadOfAllUsers:]";
      v15 = 2048;
      v16 = a3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Voice Trigger PHS full download failed after %lu retries.", buf, 0x16u);
    }
  }

  multiUserRecordZoneInfo = self->_multiUserRecordZoneInfo;
  if (!multiUserRecordZoneInfo)
  {
    goto LABEL_12;
  }

  if (self->_multiUserSharedZoneReady)
  {
    [(ADCloudKitRecordZoneInfo *)multiUserRecordZoneInfo setServerChangeToken:0];
    v7 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo zoneName];
    v8 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v7];

    if (v8)
    {
      [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:self->_multiUserRecordZoneInfo useSharedDatabase:0];
    }

    if (AFSupportsMultiUser())
    {
      [(ADCloudKitShareeOperations *)self->_shareeOperations fetchSharedZones];
    }
  }

  if (!self->_multiUserRecordZoneInfo || !self->_multiUserSharedZoneReady)
  {
LABEL_12:
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[ADCloudKitManager _forceVoiceProfileDownloadOfAllUsers:]";
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s MultiUserInfo not ready. Rescheduling. Retry count = %lu", buf, 0x16u);
    }

    v10 = dispatch_time(0, 60000000000);
    serialQueue = self->_serialQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BDB7C;
    v12[3] = &unk_10051D770;
    v12[4] = self;
    v12[5] = a3;
    dispatch_after(v10, serialQueue, v12);
  }
}

- (void)_voiceTriggerPHSProfileDidChange
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BDC18;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_voiceTriggerEnabledDidChange
{
  v3 = sub_10000F1C0();
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BDEC8;
  v5[3] = &unk_10051CBD8;
  v5[4] = self;
  v6 = v3;
  dispatch_async(serialQueue, v5);
}

- (void)_triggerMultiUserSharingPostBuddyOrCloudSyncChange
{
  v2 = +[ADHomeInfoManager sharedInfoManager];
  [v2 restartSharing];
}

- (void)_triggerVoiceProfileUploadPostBuddyOrCloudSyncChange
{
  v2 = +[ADPreferences sharedPreferences];
  [v2 setMultiUserSharedDataNeedsSync:1];
  [v2 setVoiceTriggerNeedsDataSync:1];
  [v2 synchronize];
}

- (void)_setupMultiUserSharedRecordZone
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[ADCloudKitManager _setupMultiUserSharedRecordZone]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  multiUserRecordZoneInfo = self->_multiUserRecordZoneInfo;
  if (multiUserRecordZoneInfo && ([(ADCloudKitRecordZoneInfo *)multiUserRecordZoneInfo zoneName], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v5], v5, v6))
  {
    v7 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo zone];

    if (v7)
    {
      v8 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo subscriptionList];
      if ([v8 count])
      {
        v9 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo hasSetUpRecordZoneSubscription];

        if (v9)
        {
          v10 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo serverChangeToken];

          if (!v10)
          {
            [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:self->_multiUserRecordZoneInfo useSharedDatabase:0];
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

      [(ADCloudKitManager *)self _setupRecordZoneSubscriptionWithZoneInfo:self->_multiUserRecordZoneInfo retryInterval:0 container:120.0];
LABEL_17:
      if (AFIsMultiUserCompanion())
      {
        v14 = +[ADPreferences sharedPreferences];
        v15 = [v14 multiUserVoiceIdentification];
      }

      else
      {
        v15 = 0;
      }

      if (self->_voiceTriggerEnabled || v15)
      {
        [(ADCloudKitManager *)self _setupVoiceTriggerSyncTimer];
      }

      [(ADCloudKitManager *)self setupSharedZoneUpdaterForOwner];
      [(ADCloudKitManager *)self _setupSharedZoneView];
      return;
    }

    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCloudKitManager _setupMultiUserSharedRecordZone]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Setting up _multiUserRecordZoneInfo CKRecordZone.", buf, 0xCu);
    }

    v13 = self->_multiUserRecordZoneInfo;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BE3D0;
    v16[3] = &unk_10051DFE8;
    v16[4] = self;
    [(ADCloudKitManager *)self _setupRecordZoneWithZoneInfo:v13 retryInterval:v16 completion:120.0];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCloudKitManager _setupMultiUserSharedRecordZone]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s CloudSync disabled", buf, 0xCu);
    }
  }
}

- (void)_setupMultiUserSharedRecordZoneIfHomeIsReady
{
  v3 = +[ADHomeInfoManager sharedInfoManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE524;
  v4[3] = &unk_100510850;
  v4[4] = self;
  [v3 getCurrentHomeMemberIds:v4];
}

- (void)_setupKeyValueRecordZone
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo dataStore];
  [v3 setIsMirroredDataStore:0];

  keyValueRecordZoneInfo = self->_keyValueRecordZoneInfo;
  if (!keyValueRecordZoneInfo)
  {
    return;
  }

  v5 = [(ADCloudKitRecordZoneInfo *)keyValueRecordZoneInfo zoneName];
  v6 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v5];

  if (!v6)
  {
    return;
  }

  v7 = [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo zone];

  v8 = self->_keyValueRecordZoneInfo;
  if (v7)
  {
    v9 = [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo subscriptionList];
    if ([v9 count])
    {
      v10 = [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo hasSetUpRecordZoneSubscription];

      if (v10)
      {
        v11 = [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo serverChangeToken];

        if (!v11)
        {
          v13 = self->_keyValueRecordZoneInfo;

          [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:v13 useSharedDatabase:0];
        }

        return;
      }
    }

    else
    {
    }

    v12 = self->_keyValueRecordZoneInfo;

    [(ADCloudKitManager *)self _setupRecordZoneSubscriptionWithZoneInfo:v12 retryInterval:0 container:120.0];
  }

  else
  {

    [(ADCloudKitManager *)self _setupRecordZoneWithZoneInfo:v8 retryInterval:0 completion:120.0];
  }
}

- (void)_setupAccountStatusRecordZone
{
  dispatch_assert_queue_V2(self->_serialQueue);
  accountStatusRecordZoneInfo = self->_accountStatusRecordZoneInfo;
  if (!accountStatusRecordZoneInfo)
  {
    return;
  }

  v4 = [(ADCloudKitRecordZoneInfo *)accountStatusRecordZoneInfo zoneName];
  v5 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v4];

  if (!v5)
  {
    return;
  }

  v6 = [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo zone];

  v7 = self->_accountStatusRecordZoneInfo;
  if (v6)
  {
    v8 = [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo subscriptionList];
    if ([v8 count])
    {
      v9 = [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo hasSetUpRecordZoneSubscription];

      if (v9)
      {
        v10 = [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo serverChangeToken];

        if (!v10)
        {
          v12 = self->_accountStatusRecordZoneInfo;

          [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:v12 useSharedDatabase:0];
        }

        return;
      }
    }

    else
    {
    }

    v11 = self->_accountStatusRecordZoneInfo;

    [(ADCloudKitManager *)self _setupRecordZoneSubscriptionWithZoneInfo:v11 retryInterval:0 container:120.0];
  }

  else
  {

    [(ADCloudKitManager *)self _setupRecordZoneWithZoneInfo:v7 retryInterval:0 completion:120.0];
  }
}

- (void)_prepareZoneForResetWithZoneInfo:(id)a3
{
  v3 = [a3 zoneName];
  v4 = [v3 isEqualToString:@"com.apple.assistant.multiuser.shared"];

  if (v4)
  {
    v5 = +[ADPreferences sharedPreferences];
    [v5 setMultiUserSharedDataNeedsSync:1];
    [v5 setPhsAssetManifest:0 onSharedZone:1];
    if (AFIsMultiUserCompanion())
    {
      [v5 setMirroredMultiUserSharedDataNeedsSync:1];
    }

    [v5 synchronize];
  }
}

- (void)_setUpMirroredZoneWithZoneInfo:(id)a3
{
  v4 = a3;
  mirroredContainer = self->_mirroredContainer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BEA0C;
  v7[3] = &unk_10051C498;
  v8 = v4;
  v6 = v4;
  [(ADCloudKitMirroredContainer *)mirroredContainer resynchronizeMirroredZone:v6 completion:v7];
}

- (void)_setUpZoneWithZoneInfo:(id)a3
{
  v10 = a3;
  v4 = [v10 zoneName];
  v5 = [v4 isEqualToString:@"com.apple.assistant.backedup"];

  if (v5)
  {
    [(ADCloudKitManager *)self _setupKeyValueRecordZone];
  }

  else
  {
    v6 = [v10 zoneName];
    v7 = [v6 isEqualToString:@"com.apple.assistant.account.status"];

    if (v7)
    {
      [(ADCloudKitManager *)self _setupAccountStatusRecordZone];
    }

    else
    {
      v8 = [v10 zoneName];
      v9 = [v8 isEqualToString:@"com.apple.assistant.multiuser.shared"];

      if (v9)
      {
        [(ADCloudKitManager *)self _setupMultiUserSharedRecordZone];
      }
    }
  }
}

- (void)_resetZoneWithZoneInfo:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315138;
    v17 = "[ADCloudKitManager _resetZoneWithZoneInfo:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &v16, 0xCu);
  }

  [v4 setZone:0];
  [v4 setSubscriptionList:0];
  [v4 setHasSetUpRecordZoneSubscription:0];
  [v4 setServerChangeToken:0];
  v6 = [v4 dataStore];
  v7 = [v6 dataStoreIsOnSharedDatabase];

  v8 = [v4 dataStore];
  v9 = [v8 isMirroredDataStore];

  if (v9)
  {
    [(ADCloudKitManager *)self _setUpMirroredZoneWithZoneInfo:v4];
  }

  else if (v7)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "[ADCloudKitManager _resetZoneWithZoneInfo:]";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Resetting shared zone", &v16, 0xCu);
    }

    v11 = [CKRecordZoneID alloc];
    v12 = [v4 zoneName];
    v13 = [v11 initWithZoneName:v12 ownerName:CKCurrentUserDefaultName];

    if (v13)
    {
      shareeOperations = self->_shareeOperations;
      v15 = [v13 ownerName];
      [(ADCloudKitShareeOperations *)shareeOperations deleteShareForUser:v15 markForReinvitation:1 completion:&stru_100510828];
    }
  }

  else
  {
    [(ADCloudKitManager *)self _setUpZoneWithZoneInfo:v4];
  }
}

- (void)_initializeZones
{
  [(ADCloudKitRecordZoneInfo *)self->_accountStatusRecordZoneInfo reset];
  [(ADCloudKitRecordZoneInfo *)self->_keyValueRecordZoneInfo reset];
  [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo reset];
  vtZoneFetchCompletion = self->_vtZoneFetchCompletion;
  self->_vtZoneFetchCompletion = 0;
}

- (void)_deleteRecordZoneWithZoneID:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v25 = a3;
  v7 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = self->_primaryContainer;
  v9 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];
  group = dispatch_group_create();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1000B36D4;
  v39[4] = sub_1000B36E4;
  v40 = 0;
  if (v8)
  {
    if (v9)
    {
      dispatch_group_enter(group);
    }

    v10 = [CKModifyRecordZonesOperation alloc];
    v42 = v25;
    v11 = [NSArray arrayWithObjects:&v42 count:1];
    v12 = [v10 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v11];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000BF478;
    v33[3] = &unk_1005107E0;
    v13 = v25;
    v34 = v13;
    v37 = v39;
    v14 = v7;
    v36 = v14;
    v38 = v9 != 0;
    v15 = group;
    v35 = v15;
    [v12 setModifyRecordZonesCompletionBlock:v33];
    [v12 setQualityOfService:a4];
    v16 = [(CKContainer *)v8 privateCloudDatabase];
    [v16 addOperation:v12];

    if (v9)
    {
      dispatch_group_enter(v15);
      v17 = [CKModifyRecordZonesOperation alloc];
      v41 = v13;
      v18 = [NSArray arrayWithObjects:&v41 count:1];
      v19 = [v17 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v18];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000BF5F0;
      v29[3] = &unk_100510808;
      v30 = v13;
      v32 = v39;
      v20 = v15;
      v31 = v20;
      [v19 setModifyRecordZonesCompletionBlock:v29];
      [v19 setQualityOfService:a4];
      v21 = [v9 privateCloudDatabase];
      [v21 addOperation:v19];

      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BF740;
      block[3] = &unk_10051C8E0;
      v27 = v14;
      v28 = v39;
      dispatch_group_notify(v20, serialQueue, block);
    }

    goto LABEL_9;
  }

  if (v7)
  {
    v12 = [AFError errorWithCode:4022];
    (*(v7 + 2))(v7, v12);
LABEL_9:
  }

  _Block_object_dispose(v39, 8);
}

- (void)_deleteRecordZoneWithZoneInfo:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  v10 = [v8 zone];
  v11 = [v10 zoneID];

  if (!v11)
  {
    v12 = [CKRecordZoneID alloc];
    v13 = [v8 zoneName];
    v11 = [v12 initWithZoneName:v13 ownerName:CKCurrentUserDefaultName];
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v11 zoneName];
    *buf = 136315394;
    v30 = "[ADCloudKitManager _deleteRecordZoneWithZoneInfo:qualityOfService:completion:]";
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Deleting zone: (%@)", buf, 0x16u);
  }

  v17 = self->_primaryContainer;
  v18 = [v8 dataStore];
  v19 = [v18 isMirroredDataStore];

  if (v19)
  {
    v20 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];

    v17 = v20;
  }

  if (v17)
  {
    v21 = [CKModifyRecordZonesOperation alloc];
    v28 = v11;
    v22 = [NSArray arrayWithObjects:&v28 count:1];
    v23 = [v21 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v22];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000BFAFC;
    v25[3] = &unk_10051BDC0;
    v26 = v11;
    v27 = v9;
    [v23 setModifyRecordZonesCompletionBlock:v25];
    [v23 setQualityOfService:a4];
    v24 = [(CKContainer *)v17 privateCloudDatabase];
    [v24 addOperation:v23];

LABEL_11:
    goto LABEL_12;
  }

  if (v9)
  {
    v23 = [AFError errorWithCode:4022];
    (*(v9 + 2))(v9, v23);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_createRecordZoneWithID:(id)a3 shared:(BOOL)a4 onMirror:(BOOL)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  dispatch_assert_queue_V2(self->_serialQueue);
  v12 = [v10 zoneName];
  v13 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v12];

  if (v13)
  {
    if (a5)
    {
      v14 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];
    }

    else
    {
      v14 = self->_primaryContainer;
    }

    v18 = v14;
    v19 = AFSiriLogContextDaemon;
    if (v14)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [v10 zoneName];
        v22 = 136315394;
        v23 = "[ADCloudKitManager _createRecordZoneWithID:shared:onMirror:completion:]";
        v24 = 2112;
        v25 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Creating zone: (%@)", &v22, 0x16u);
      }

      sub_10031AFE0(v10, v18, v8, v11);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315138;
        v23 = "[ADCloudKitManager _createRecordZoneWithID:shared:onMirror:completion:]";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s No container found", &v22, 0xCu);
      }

      v18 = 0;
    }

    goto LABEL_16;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v10 zoneName];
    v22 = 136315394;
    v23 = "[ADCloudKitManager _createRecordZoneWithID:shared:onMirror:completion:]";
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Unable to create zone: (%@)", &v22, 0x16u);
  }

  if (v11)
  {
    v18 = [AFError errorWithCode:4014];
    (*(v11 + 2))(v11, v18, 0);
LABEL_16:
  }
}

- (void)_setupRecordZoneWithZoneInfo:(id)a3 retryInterval:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  [(ADCloudKitRetryManager *)self->_ckRetryManager cancelRecordZoneSetupTimerForZoneInfo:v8];
  v10 = [v8 zoneName];
  v11 = [(ADCloudKitManager *)self _zoneIsShareable:v10];

  v12 = [v8 dataStore];
  v13 = [v12 isMirroredDataStore];

  v14 = [CKRecordZoneID alloc];
  v15 = [v8 zoneName];
  v16 = [v14 initWithZoneName:v15 ownerName:CKCurrentUserDefaultName];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C0064;
  v19[3] = &unk_1005107B8;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v23 = v13;
  v22 = a4;
  v17 = v9;
  v18 = v8;
  [(ADCloudKitManager *)self _createRecordZoneWithID:v16 shared:v11 onMirror:v13 completion:v19];
}

- (BOOL)_isCloudSyncEnabledForZone:(id)a3 accountInfo:(id)a4
{
  v4 = self;
  serialQueue = self->_serialQueue;
  v6 = a3;
  dispatch_assert_queue_V2(serialQueue);
  LOBYTE(v4) = [(ADCloudKitManager *)v4 _isCloudSyncEnabledForZone:v6];

  return v4;
}

- (BOOL)_isCloudSyncEnabledForZone:(id)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (([(CKAccountInfo *)self->_primaryAccountInfo supportsDeviceToDeviceEncryption]& 1) == 0 && !self->_usingNonManateeIdentity)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _isCloudSyncEnabledForZone:]";
      v6 = "%s Manatee is disabled for primary account";
      goto LABEL_9;
    }

    return 0;
  }

  if (!self->_isPastBuddy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _isCloudSyncEnabledForZone:]";
      v6 = "%s Still in Buddy";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v8, 0xCu);
      return 0;
    }

    return 0;
  }

  return self->_cloudSyncEnabled;
}

- (void)_resetZoneFetchCompletionBlock:(id)a3
{
  v4 = [a3 zoneName];
  v5 = [v4 isEqualToString:@"com.apple.assistant.multiuser.shared"];

  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _resetZoneFetchCompletionBlock:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Clearing zone fetch completion block", &v8, 0xCu);
    }

    vtZoneFetchCompletion = self->_vtZoneFetchCompletion;
    self->_vtZoneFetchCompletion = 0;
  }
}

- (void)_executeZoneFetchCompletionBlock:(id)a3 zoneInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 zoneName];
  if ([v10 isEqualToString:@"com.apple.assistant.multiuser.shared"])
  {
    vtZoneFetchCompletion = self->_vtZoneFetchCompletion;

    if (vtZoneFetchCompletion)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[ADCloudKitManager _executeZoneFetchCompletionBlock:zoneInfo:completion:]";
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s error (%@)", &v14, 0x16u);
      }

      (*(self->_vtZoneFetchCompletion + 2))();
      v13 = self->_vtZoneFetchCompletion;
      self->_vtZoneFetchCompletion = 0;
    }
  }

  else
  {
  }

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (void)_fetchChangesWithZoneInfo:(id)a3 retryCount:(unint64_t)a4 useSharedDatabase:(BOOL)a5 activity:(id)a6 container:(id)a7 mirror:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v12 = a5;
  v15 = a3;
  v48 = a6;
  v16 = a7;
  v49 = a9;
  dispatch_assert_queue_V2(self->_serialQueue);
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v42 = @"private";
    if (v12)
    {
      v42 = @"shared";
    }

    *v72 = 136315394;
    *&v72[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
    *&v72[12] = 2112;
    *&v72[14] = v42;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s (%@)", v72, 0x16u);
  }

  *v72 = 0;
  *&v72[8] = v72;
  *&v72[16] = 0x3032000000;
  v73 = sub_1000B36D4;
  v74 = sub_1000B36E4;
  v75 = 0;
  v18 = v16;
  v19 = v18;
  if (v9)
  {
    v19 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];
  }

  if (v12 || self->_multiUserSharedZoneReady || ([v15 zoneName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"com.apple.assistant.multiuser.shared"), v20, !v21))
  {
    if (a4 >= 2)
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v15 zoneName];
        *buf = 136315394;
        *&buf[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Exceeded fetch retry attempts for zone: (%@)", buf, 0x16u);
      }

LABEL_13:

      v26 = [AFError errorWithCode:4011];
      [(ADCloudKitManager *)self _executeZoneFetchCompletionBlock:v26 zoneInfo:v15 completion:v49];

      goto LABEL_32;
    }

    v27 = [v15 zone];
    v28 = v27 == 0;

    if (v28)
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v39 = [v15 zoneName];
        *buf = 136315394;
        *&buf[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v39;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Unable to fetch records for zone because zone is disabled: (%@)", buf, 0x16u);
      }

      goto LABEL_13;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = [v15 zoneName];
    v30 = [(ADCloudKitManager *)self _isCloudSyncEnabledForZone:v29];

    v71 = v30;
    if (v19)
    {
      v31 = [v19 options];
      v32 = [v31 accountOverrideInfo];

      if (v32)
      {
        v33 = [v32 accountID];
        v34 = v33 == 0;

        if (!v34)
        {
          objc_initWeak(location, self);
          containerDict = self->_containerDict;
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_1000C15F0;
          v59[3] = &unk_1005106D0;
          objc_copyWeak(&v64, location);
          v60 = v32;
          v62 = v72;
          v63 = buf;
          v61 = v15;
          [(NSMutableDictionary *)containerDict enumerateKeysAndObjectsUsingBlock:v59];

          objc_destroyWeak(&v64);
          objc_destroyWeak(location);
        }
      }
    }

    if (*(*&buf[8] + 24))
    {
      v36 = [v15 rateLimitTimer];

      if (!v36)
      {
        if ([v15 fetchInProgress])
        {
          v43 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = [v15 zoneName];
            *location = 136315650;
            *&location[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
            v66 = 2112;
            v67 = v19;
            v68 = 2112;
            v69 = v44;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Unable to start a fetch when a fetch is already in progress for container %@, zoneName: %@", location, 0x20u);
          }

          v45 = [AFError errorWithCode:4025];
          [(ADCloudKitManager *)self _executeZoneFetchCompletionBlock:v45 zoneInfo:v15 completion:v49];
        }

        else
        {
          [v15 setFetchInProgress:1];
          v46 = [v15 zone];
          v47 = [v15 serverChangeToken];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_1000C1850;
          v50[3] = &unk_100510768;
          v50[4] = self;
          v51 = v15;
          v55 = buf;
          v58 = v12;
          v54 = v49;
          v57 = a4;
          v52 = v48;
          v53 = v19;
          v56 = v72;
          [(ADCloudKitManager *)self _fetchChangesFromZone:v46 serverChangeToken:v47 useSharedDatabase:v12 activity:v52 container:v53 mirror:v9 completion:v50];
        }

        goto LABEL_31;
      }

      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v15 zoneName];
        *location = 136315394;
        *&location[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
        v66 = 2112;
        v67 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Unable to fetch records for zone because zone is rate limited: (%@)", location, 0x16u);
      }
    }

    else
    {
      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v40 = [v15 zoneName];
        *location = 136315394;
        *&location[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
        v66 = 2112;
        v67 = v40;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Unable to fetch records for zone: (%@)", location, 0x16u);
      }
    }

    v41 = [AFError errorWithCode:4011];
    [(ADCloudKitManager *)self _executeZoneFetchCompletionBlock:v41 zoneInfo:v15 completion:v49];

LABEL_31:
    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Not ready yet on container %@", buf, 0x16u);
  }

  v23 = [AFError errorWithCode:4011];
  [(ADCloudKitManager *)self _executeZoneFetchCompletionBlock:v23 zoneInfo:v15 completion:v49];

LABEL_32:
  _Block_object_dispose(v72, 8);
}

- (void)_fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4 activity:(id)a5 mirror:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  serialQueue = self->_serialQueue;
  v11 = a5;
  v12 = a3;
  dispatch_assert_queue_V2(serialQueue);
  [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:v12 retryCount:0 useSharedDatabase:v7 activity:v11 container:0 mirror:v6];
}

- (void)_fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4 mirror:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  serialQueue = self->_serialQueue;
  v9 = a3;
  dispatch_assert_queue_V2(serialQueue);
  [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:v9 useSharedDatabase:v6 activity:0 mirror:v5];
}

- (void)_fetchChangesWithZoneInfo:(id)a3 useSharedDatabase:(BOOL)a4
{
  v4 = a4;
  serialQueue = self->_serialQueue;
  v7 = a3;
  dispatch_assert_queue_V2(serialQueue);
  [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:v7 useSharedDatabase:v4 activity:0 mirror:0];
}

- (void)_fetchChangesFromZone:(id)a3 serverChangeToken:(id)a4 useSharedDatabase:(BOOL)a5 activity:(id)a6 container:(id)a7 mirror:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v15 = a3;
  v47 = a4;
  v46 = a6;
  v16 = a7;
  v17 = a9;
  dispatch_assert_queue_V2(self->_serialQueue);
  primaryContainer = v16;
  if (!v16)
  {
    primaryContainer = self->_primaryContainer;
  }

  v19 = primaryContainer;
  if (v9)
  {
    v20 = [(ADCloudKitMirroredContainer *)self->_mirroredContainer container];

    v19 = v20;
  }

  if (a5)
  {
    [(CKContainer *)v19 sharedCloudDatabase];
  }

  else
  {
    [(CKContainer *)v19 privateCloudDatabase];
  }
  v21 = ;
  if (!v21)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    v41 = [AFError errorWithCode:4015];
LABEL_22:
    v42 = v41;
    (*(v17 + 2))(v17, v41, 0, 0, 0, 0);

    goto LABEL_23;
  }

  v22 = [v15 zoneID];

  if (!v22)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    v41 = [AFError errorWithCode:4020];
    goto LABEL_22;
  }

  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = [v15 zoneID];
    v26 = [v25 zoneName];
    [v21 databaseScope];
    v27 = CKDatabaseScopeString();
    *buf = 136315906;
    *&buf[4] = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v26;
    *&buf[22] = 2112;
    v66 = v27;
    LOWORD(v67) = 2112;
    *(&v67 + 2) = v19;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Fetching changes in record zone (%@) in database (%@) for container (%@)", buf, 0x2Au);
  }

  v28 = [v15 zoneID];
  v70 = v28;
  v44 = [NSArray arrayWithObjects:&v70 count:1];

  v29 = +[NSMutableArray array];
  v30 = +[NSMutableArray array];
  v45 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v45 setPreviousServerChangeToken:v47];
  v31 = [v15 zoneID];
  v68 = v31;
  v69 = v45;
  v43 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66 = sub_1000B36D4;
  *&v67 = sub_1000B36E4;
  *(&v67 + 1) = 0;
  v32 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:v44 configurationsByRecordZoneID:v43];
  [v32 setFetchAllChanges:1];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1000C2E0C;
  v63[3] = &unk_100510608;
  v33 = v29;
  v64 = v33;
  [v32 setRecordChangedBlock:v63];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000C2E18;
  v61[3] = &unk_100510630;
  v34 = v30;
  v62 = v34;
  [v32 setRecordWithIDWasDeletedBlock:v61];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000C2E24;
  v60[3] = &unk_100510658;
  v60[4] = buf;
  [v32 setRecordZoneChangeTokensUpdatedBlock:v60];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000C2E38;
  v57[3] = &unk_100510680;
  v35 = v19;
  v58 = v35;
  v59 = buf;
  [v32 setRecordZoneFetchCompletionBlock:v57];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000C3108;
  v48[3] = &unk_1005106A8;
  v36 = v21;
  v49 = v36;
  v37 = v33;
  v50 = v37;
  v38 = v34;
  v51 = v38;
  v52 = v15;
  v53 = v35;
  v56 = v47 == 0;
  v54 = v17;
  v55 = buf;
  [v32 setFetchRecordZoneChangesCompletionBlock:v48];
  if (AFSupportsMultiUser())
  {
    v39 = 25;
  }

  else
  {
    v39 = 17;
  }

  [v32 setQualityOfService:v39];
  if (v46)
  {
    v40 = [v32 configuration];
    [v40 setXpcActivity:v46];
  }

  [v36 addOperation:v32];

  _Block_object_dispose(buf, 8);
LABEL_23:
}

- (void)_fetchCurrentUserIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCloudKitManager _fetchCurrentUserIDWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  primaryContainer = self->_primaryContainer;
  if (!primaryContainer)
  {
    v7 = [AFError errorWithCode:4022];
    v4[2](v4, 0, v7);

    primaryContainer = self->_primaryContainer;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C34D4;
  v9[3] = &unk_1005105E0;
  v10 = v4;
  v8 = v4;
  [(CKContainer *)primaryContainer fetchUserRecordIDWithCompletionHandler:v9];
}

- (void)_handleSubscriptionNotification:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [v6 containerIdentifier];
  v35 = self;
  v9 = [(ADCloudKitManager *)self getContainerIDForThisDevice];
  v10 = [v8 isEqualToString:v9];

  v11 = AFSiriLogContextDaemon;
  if (v10)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v48 = "[ADCloudKitManager _handleSubscriptionNotification:container:]";
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Handle notification for container: %@", buf, 0x16u);
    }

    if ([v6 notificationType] == 2)
    {
      v12 = [v6 recordZoneID];
      v13 = [v12 zoneName];
      if (v13)
      {
        v14 = [(NSMutableDictionary *)self->_recordZoneInfoDict objectForKey:v13];
        if ([v14 count])
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = v13;
            v32 = v12;
            v33 = v6;
            v19 = *v43;
            v34 = v37;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v43 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v42 + 1) + 8 * i);
                v22 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v48 = "[ADCloudKitManager _handleSubscriptionNotification:container:]";
                  v49 = 2112;
                  v50 = v18;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Updating recordZoneInfo for zone %@", buf, 0x16u);
                }

                v23 = [v7 options:v32];
                v24 = [v23 accountOverrideInfo];

                if (v24)
                {
                  v25 = [v7 options];
                  v26 = [v25 accountOverrideInfo];
                  v27 = [v26 accountID];

                  if (v27)
                  {
                    containerDict = v35->_containerDict;
                    v36[0] = _NSConcreteStackBlock;
                    v36[1] = 3221225472;
                    v37[0] = sub_1000C3A34;
                    v37[1] = &unk_1005105B8;
                    v38 = v27;
                    v39 = v21;
                    v40 = v35;
                    v41 = v7;
                    [(NSMutableDictionary *)containerDict enumerateKeysAndObjectsUsingBlock:v36];
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
            }

            while (v17);

            v12 = v32;
            v6 = v33;
            v13 = v18;
          }

          else
          {
          }
        }

        else
        {
          v31 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v48 = "[ADCloudKitManager _handleSubscriptionNotification:container:]";
            v49 = 2112;
            v50 = v12;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Unrecognized record zone notification zone name: (%@)", buf, 0x16u);
          }
        }
      }

      else
      {
        v30 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v48 = "[ADCloudKitManager _handleSubscriptionNotification:container:]";
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Record zone notification contains no zone name", buf, 0xCu);
        }
      }

      goto LABEL_30;
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v29 = [v6 containerIdentifier];
    *buf = 136315394;
    v48 = "[ADCloudKitManager _handleSubscriptionNotification:container:]";
    v49 = 2112;
    v50 = v29;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Ignoring notification for container (%@)", buf, 0x16u);

LABEL_30:
  }
}

- (void)_setupZoneSubscriptionsForSecondaryAccount:(id)a3 zoneInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 subscriptionList];
  if ([v8 count])
  {
    v9 = [v7 hasSetUpRecordZoneSubscription];

    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v7 zoneName];
    *buf = 136315650;
    v18 = "[ADCloudKitManager _setupZoneSubscriptionsForSecondaryAccount:zoneInfo:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Set up subscriptions on zone: %@ in container: %@", buf, 0x20u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C3D18;
  v13[3] = &unk_10051DB68;
  v14 = v7;
  v15 = self;
  v16 = v6;
  [(ADCloudKitManager *)self _setupRecordZoneSubscriptionWithZoneInfo:v14 retryInterval:v16 container:v13 withCompletion:120.0];

LABEL_8:
}

- (void)_setupZonesForSecondaryAccount:(id)a3 container:(id)a4 acctInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[ADCloudKitManager _setupZonesForSecondaryAccount:container:acctInfo:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else if (!v9)
  {
    goto LABEL_6;
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[ADCloudKitManager _setupZonesForSecondaryAccount:container:acctInfo:]";
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Setting up zones for container %@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4154;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v15 = v10;
  v16 = v9;
  dispatch_async(serialQueue, block);

LABEL_6:
}

- (void)setupZonesForSecondaryAccount:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C46A4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_setupSecondaryAccounts
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADCloudKitManager _setupSecondaryAccounts]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v3, 0xCu);
  }

  AFIsATV();
}

- (void)setupContainerForiCloudAltDSID:(id)a3
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager setupContainerForiCloudAltDSID:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)_untrackiCloudAltDSID:(id)a3
{
  v4 = a3;
  v5 = [v4 lowercaseString];
  if (v5)
  {
    [(NSMutableDictionary *)self->_containerDict removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_ckAcctInfoDict removeObjectForKey:v5];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      primaryAccountiCloudAltDSID = self->_primaryAccountiCloudAltDSID;
      v12 = 136315394;
      v13 = "[ADCloudKitManager _untrackiCloudAltDSID:]";
      v14 = 2112;
      v15 = primaryAccountiCloudAltDSID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Resetting primary iCloud Info %@", &v12, 0x16u);
    }

    if ([(NSString *)self->_primaryAccountiCloudAltDSID isEqualToString:v4])
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[ADCloudKitManager _untrackiCloudAltDSID:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Resetting primary iCloud Info", &v12, 0xCu);
      }

      v9 = self->_primaryAccountiCloudAltDSID;
      self->_primaryAccountiCloudAltDSID = 0;

      primaryAccountInfo = self->_primaryAccountInfo;
      self->_primaryAccountInfo = 0;

      primaryContainer = self->_primaryContainer;
      self->_primaryContainer = 0;

      [(ADCloudKitManager *)self _cleanUpRecordZonesAndSubscriptions];
    }
  }
}

- (id)_trackedCKAccountInfoForiCloudAltDSID:(id)a3
{
  v4 = [a3 lowercaseString];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_ckAcctInfoDict objectForKey:v4];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _trackedCKAccountInfoForiCloudAltDSID:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s no trackingKey found", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_trackedCKContainerForiCloudAltDSID:(id)a3
{
  v4 = [a3 lowercaseString];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_containerDict objectForKey:v4];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _trackedCKContainerForiCloudAltDSID:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s no trackingKey found", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_trackCKContainer:(id)a3 accountInfo:(id)a4 foriCloudAltDSID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_ckAcctInfoDict)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    ckAcctInfoDict = self->_ckAcctInfoDict;
    self->_ckAcctInfoDict = v11;
  }

  if (!self->_containerDict)
  {
    v13 = +[NSMutableDictionary dictionary];
    containerDict = self->_containerDict;
    self->_containerDict = v13;
  }

  v15 = [v10 lowercaseString];
  if (v10)
  {
    if (v8)
    {
      [(NSMutableDictionary *)self->_containerDict setValue:v8 forKey:v15];
    }

    if (v9)
    {
      [(NSMutableDictionary *)self->_ckAcctInfoDict setValue:v9 forKey:v15];
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[ADCloudKitManager _trackCKContainer:accountInfo:foriCloudAltDSID:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Invalid iCloudAltDSID", &v17, 0xCu);
    }
  }
}

- (void)_deleteUserData
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADCloudKitManager _deleteUserData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(NSMutableDictionary *)self->_recordZoneInfoDict allValues];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              v16 = [v15 dataStore];

              if (v16)
              {
                v17 = [v15 dataStore];
                [v17 deleteUserData:0];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = +[ADPreferences sharedPreferences];
  [v18 setPhsAssetManifest:0 onSharedZone:1];
  [v18 setPhsAssetManifest:0 onSharedZone:0];
  [v18 synchronize];
}

- (void)_setupAccountState
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADCloudKitManager _setupAccountState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(CKAccountInfo *)self->_primaryAccountInfo accountStatus];
  if (v4 == 3)
  {
    userID = self->_userID;
    self->_userID = 0;

    _AFPreferencesSetCloudUserID();
    AFBackedUpPreferencesSynchronize();
    [(ADCloudKitManager *)self _deleteUserData];
LABEL_11:
    [(ADCloudKitManager *)self _cleanUpRecordZonesAndSubscriptions];
    return;
  }

  if (v4 != 1 || ([(CKAccountInfo *)self->_primaryAccountInfo supportsDeviceToDeviceEncryption]& 1) == 0 && !self->_usingNonManateeIdentity)
  {
    goto LABEL_11;
  }

  if (AFIsMultiUserCompanion() && (mirroredContainer = self->_mirroredContainer) != 0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C511C;
    v7[3] = &unk_10051C498;
    v7[4] = self;
    [(ADCloudKitMirroredContainer *)mirroredContainer createMirroredZonesWithCompletion:v7];
  }

  else
  {
    [(ADCloudKitManager *)self _setupPrimaryContainer];
  }
}

- (void)_setupPrimaryContainer
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager _setupPrimaryContainer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADCloudKitManager *)self _cleanUpRecordZoneSubscriptionsTimers];
  [(ADCloudKitManager *)self _setupAccountStatusRecordZone];
  [(ADCloudKitManager *)self _setupKeyValueRecordZone];
  if (AFSupportsMultiUser())
  {
    [(ADCloudKitManager *)self _setupMultiUserSharedRecordZoneIfHomeIsReady];
  }

  else
  {
    self->_multiUserSharedZoneReady = 1;
    [(ADCloudKitManager *)self _setupMultiUserSharedRecordZone];
  }
}

- (void)_handleAccountStatusChange:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (![(CKAccountInfo *)self->_primaryAccountInfo isEqual:v5]|| self->_keyChainSyncIncompleteErrorEncountered)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      [v5 accountStatus];
      v8 = CKStringFromAccountStatus();
      v9 = [v5 supportsDeviceToDeviceEncryption];
      v10 = @"Disabled";
      usingNonManateeIdentity = self->_usingNonManateeIdentity;
      if (v9)
      {
        v10 = @"Enabled";
      }

      *buf = 136315906;
      v16 = "[ADCloudKitManager _handleAccountStatusChange:]";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      if (usingNonManateeIdentity)
      {
        v12 = @"Yes";
      }

      else
      {
        v12 = @"No";
      }

      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s CloudKit account status: (%@) encryption is: %@  nonManatee: (%@)", buf, 0x2Au);
    }

    objc_storeStrong(&self->_primaryAccountInfo, a3);
    if (AFIsATV())
    {
      [(ADCloudKitManager *)self _trackCKContainer:self->_primaryContainer accountInfo:self->_primaryAccountInfo foriCloudAltDSID:self->_primaryAccountiCloudAltDSID];
    }

    if ([v5 accountStatus] == 1)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[ADCloudKitManager _handleAccountStatusChange:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s CloudKit account is available, ensuring default enable state is on.", buf, 0xCu);
      }

      [(ADCloudKitManager *)self _setDefaultiCloudEnabledState];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000C5470;
      v14[3] = &unk_100510548;
      v14[4] = self;
      [(ADCloudKitManager *)self _fetchCurrentUserIDWithCompletion:v14];
    }

    else
    {
      [(ADCloudKitManager *)self _setupAccountState];
    }
  }
}

- (void)_setupAccount
{
  dispatch_assert_queue_V2(self->_serialQueue);
  primaryContainer = self->_primaryContainer;
  if (!primaryContainer)
  {
    v4 = [(ADCloudKitManager *)self getContainerIDForThisDevice];
    v5 = sub_10031AD70(v4);
    v6 = self->_primaryContainer;
    self->_primaryContainer = v5;

    if (self->_primaryAccountiCloudAltDSID)
    {
      [(ADCloudKitManager *)self _trackCKContainer:self->_primaryContainer accountInfo:self->_primaryAccountInfo foriCloudAltDSID:?];
    }

    if (AFIsMultiUserCompanion() && !self->_mirroredContainer && !self->_usingNonManateeIdentity)
    {
      v7 = [[ADCloudKitMirroredContainer alloc] initWithContainer:@"com.apple.siri.data" queue:self->_serialQueue];
      mirroredContainer = self->_mirroredContainer;
      self->_mirroredContainer = v7;
    }

    primaryContainer = self->_primaryContainer;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5800;
  v9[3] = &unk_100510520;
  v9[4] = self;
  [(CKContainer *)primaryContainer accountInfoWithCompletionHandler:v9];
}

- (void)ignoreNextNotification:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C5A40;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_preferencesDidChange
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCloudKitManager _preferencesDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5BA8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_multiUserVoiceIdentificationDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCloudKitManager _multiUserVoiceIdentificationDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5F60;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_sharedUserIdentifierDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCloudKitManager _sharedUserIdentifierDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C60AC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_outputLanguageDidChange
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCloudKitManager _outputLanguageDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C620C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_languageCodeDidChange
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCloudKitManager _languageCodeDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6358;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_buddyStateDidChangeNotification:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCloudKitManager _buddyStateDidChangeNotification:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C64A4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_cloudKitAccountStatusChanged:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCloudKitManager _cloudKitAccountStatusChanged:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6668;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_handleCloudKitNotification:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [v4 containerIdentifier];
  v6 = [(ADCloudKitManager *)self getContainerIDForThisDevice];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v26 = 136315394;
        v27 = "[ADCloudKitManager _handleCloudKitNotification:]";
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Received record zone notification: (%@)", &v26, 0x16u);
      }

      if ([v8 databaseScope] == 2)
      {
        v10 = [v8 recordZoneID];
        v11 = [v10 zoneName];
        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_recordZoneInfoDict objectForKey:v11];
          v13 = [v12 firstObject];

          if (v13)
          {
            [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:v13 useSharedDatabase:0];
          }

          else
          {
            v25 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v26 = 136315394;
              v27 = "[ADCloudKitManager _handleCloudKitNotification:]";
              v28 = 2112;
              v29 = v10;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Unrecognized record zone notification zone name: (%@)", &v26, 0x16u);
            }
          }
        }

        else
        {
          v24 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v26 = 136315138;
            v27 = "[ADCloudKitManager _handleCloudKitNotification:]";
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Record zone notification contains no zone name", &v26, 0xCu);
          }
        }
      }

LABEL_29:

      goto LABEL_30;
    }

    if (AFSupportsMultiUser() && [v4 notificationType] == 4)
    {
      v8 = v4;
      if ([v8 databaseScope] == 3)
      {
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v26 = 136315138;
          v27 = "[ADCloudKitManager _handleCloudKitNotification:]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Received database notification for shared DB", &v26, 0xCu);
        }

        [(ADCloudKitShareeOperations *)self->_shareeOperations fetchSharedZones];
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (+[AFFeatureFlags isLassoEnabled])
    {
      v14 = [v4 recordZoneID];
      v8 = [v14 zoneName];

      v15 = [(ADCloudKitRecordZoneInfo *)self->_multiUserRecordZoneInfo zone];
      v16 = [v15 zoneID];
      v17 = [v16 zoneName];
      v18 = [v8 isEqualToString:v17];

      if (v18)
      {
        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v26 = 136315138;
          v27 = "[ADCloudKitManager _handleCloudKitNotification:]";
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s Fetching changes from container.", &v26, 0xCu);
        }

        [(ADCloudKitManager *)self _fetchChangesWithZoneInfo:self->_multiUserRecordZoneInfo useSharedDatabase:0 mirror:1];
        goto LABEL_29;
      }
    }

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v22 = v21;
      v23 = [v4 containerIdentifier];
      v26 = 136315394;
      v27 = "[ADCloudKitManager _handleCloudKitNotification:]";
      v28 = 2112;
      v29 = v23;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Ignoring notification for container (%@)", &v26, 0x16u);
    }
  }

LABEL_30:
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 userInfo];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v7 topic];
    v16 = 136315650;
    v17 = "[ADCloudKitManager connection:didReceiveIncomingMessage:]";
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s APS message received for topic (%@) on connection (%@)", &v16, 0x20u);
  }

  v12 = [v7 topic];
  v13 = [@"com.apple.icloud-container." stringByAppendingString:self->_applicationIdentifier];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = [CKNotification notificationFromRemoteNotificationDictionary:v8];
    [(ADCloudKitManager *)self _handleCloudKitNotification:v15];
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136316162;
    v15 = "[ADCloudKitManager connection:didReceiveToken:forTopic:identifier:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Received per-topic push token (%@) for topic (%@) identifier (%@) on connection (%@)", &v14, 0x34u);
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[ADCloudKitManager connection:didReceivePublicToken:]";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received public token (%@) on connection %@", &v8, 0x20u);
  }
}

- (APSConnection)pushConnection
{
  pushConnection = self->_pushConnection;
  if (!pushConnection)
  {
    v4 = [APSConnection alloc];
    v5 = [v4 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.assistantd.aps" queue:self->_serialQueue];
    v6 = self->_pushConnection;
    self->_pushConnection = v5;

    [(APSConnection *)self->_pushConnection setDelegate:self];
    pushConnection = self->_pushConnection;
    if (!pushConnection)
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[ADCloudKitManager pushConnection]";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to create push connection", &v9, 0xCu);
        pushConnection = self->_pushConnection;
      }

      else
      {
        pushConnection = 0;
      }
    }
  }

  return pushConnection;
}

- (void)_disablePush
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(ADCloudKitManager *)self pushConnection];
  [v3 _setEnabledTopics:0];
}

- (void)_enablePush
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [@"com.apple.icloud-container." stringByAppendingString:self->_applicationIdentifier];
  v4 = [(ADCloudKitManager *)self pushConnection];
  v6 = v3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 _setEnabledTopics:v5];
}

- (void)disablePushNotifications
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7164;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)enablePushNotifications
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C71E0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (BOOL)_zoneShouldUpdateMirroredZone
{
  if (self->_usingNonManateeIdentity)
  {
    return 0;
  }

  else
  {
    return AFIsHorseman() ^ 1;
  }
}

- (void)_setDefaultiCloudEnabledState
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager _setDefaultiCloudEnabledState]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = _AFBackedUpPreferencesBoolValueForKey();

  if (!v3)
  {
    [objc_opt_class() _setAppleAccountSiriStateEnabled:1 withCompletion:&stru_1005104D0];
  }
}

- (void)dealloc
{
  [(APSConnection *)self->_pushConnection setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CKAccountChangedNotification object:0];
  [v3 removeObserver:self name:CKIdentityUpdateNotification object:0];
  [v3 removeObserver:self name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"ADMultiUserVoiceIdentificationDidChangeNotification" object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAFPreferencesDidChangeDarwinNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, AFLanguageCodeDidChangeDarwinNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, AFOutputLanguageDidChangeDarwinNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.voicetrigger.PHSProfileModified", 0);

  v5.receiver = self;
  v5.super_class = ADCloudKitManager;
  [(ADCloudKitManager *)&v5 dealloc];
}

- (ADCloudKitManager)initWithInstanceContext:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = ADCloudKitManager;
  v5 = [(ADCloudKitManager *)&v53 init];
  if (v5)
  {
    v5->_usingNonManateeIdentity = _AFPreferencesGetNonManateeIdentity();
    v6 = _AFPreferencesCloudUserID();
    userID = v5->_userID;
    v5->_userID = v6;

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v8;

    v10 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.backedup", @"subscription", @"AssistantKeyValueRecord"];
    v11 = qword_10058FFA8;
    qword_10058FFA8 = v10;

    v12 = [ADCloudKitRecordZoneInfo alloc];
    v13 = [(ADCloudKitRecordZoneInfo *)v12 initWithZoneName:@"com.apple.assistant.backedup" subscriptionName:qword_10058FFA8];
    keyValueRecordZoneInfo = v5->_keyValueRecordZoneInfo;
    v5->_keyValueRecordZoneInfo = v13;

    v15 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.account.status", @"subscription", @"AssistantKeyValueRecord"];
    v16 = qword_10058FFB0;
    qword_10058FFB0 = v15;

    v17 = [ADCloudKitRecordZoneInfo alloc];
    v18 = [(ADCloudKitRecordZoneInfo *)v17 initWithZoneName:@"com.apple.assistant.account.status" subscriptionName:qword_10058FFB0];
    accountStatusRecordZoneInfo = v5->_accountStatusRecordZoneInfo;
    v5->_accountStatusRecordZoneInfo = v18;

    v20 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.multiuser.shared", @"subscription", @"AssistantVoiceTriggerFileAssetRecord"];
    v21 = qword_10058FFB8;
    qword_10058FFB8 = v20;

    v22 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.assistant.multiuser.shared", @"subscription", @"AssistantKeyValueRecord"];
    v23 = qword_10058FFC0;
    qword_10058FFC0 = v22;

    v24 = [ADCloudKitRecordZoneInfo alloc];
    v59[0] = qword_10058FFB8;
    v59[1] = qword_10058FFC0;
    v25 = [NSArray arrayWithObjects:v59 count:2];
    v26 = [(ADCloudKitRecordZoneInfo *)v24 initWithZoneName:@"com.apple.assistant.multiuser.shared" subscriptionNames:v25];
    multiUserRecordZoneInfo = v5->_multiUserRecordZoneInfo;
    v5->_multiUserRecordZoneInfo = v26;

    v56 = v5->_keyValueRecordZoneInfo;
    v57[0] = @"com.apple.assistant.backedup";
    v28 = [NSArray arrayWithObjects:&v56 count:1];
    v58[0] = v28;
    v57[1] = @"com.apple.assistant.account.status";
    v55 = v5->_accountStatusRecordZoneInfo;
    v29 = [NSArray arrayWithObjects:&v55 count:1];
    v58[1] = v29;
    v57[2] = @"com.apple.assistant.multiuser.shared";
    v54 = v5->_multiUserRecordZoneInfo;
    v30 = [NSArray arrayWithObjects:&v54 count:1];
    v58[2] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];

    v32 = [v31 mutableCopy];
    recordZoneInfoDict = v5->_recordZoneInfoDict;
    v5->_recordZoneInfoDict = v32;

    v34 = [objc_opt_class() getApplicationIdentifierFromEntitlements];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v34;

    v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v37 = dispatch_queue_attr_make_with_qos_class(v36, QOS_CLASS_USER_INITIATED, 0);

    v38 = dispatch_queue_create("ADCloudKitManager.Serial", v37);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v38;

    v40 = [(ADCloudKitManager *)v5 getContainerIDForThisDevice];
    v41 = sub_10031AD70(v40);
    primaryContainer = v5->_primaryContainer;
    v5->_primaryContainer = v41;

    if (AFIsMultiUserCompanion() && !v5->_usingNonManateeIdentity)
    {
      v43 = [[ADCloudKitMirroredContainer alloc] initWithContainer:@"com.apple.siri.data" queue:v5->_serialQueue];
      mirroredContainer = v5->_mirroredContainer;
      v5->_mirroredContainer = v43;
    }

    v45 = +[NSNotificationCenter defaultCenter];
    [v45 addObserver:v5 selector:"_cloudKitAccountStatusChanged:" name:CKAccountChangedNotification object:0];
    [v45 addObserver:v5 selector:"_cloudKitAccountStatusChanged:" name:CKIdentityUpdateNotification object:0];
    [v45 addObserver:v5 selector:"_buddyStateDidChangeNotification:" name:@"ADBuddyStateDidChangeNotification" object:0];
    v46 = +[ADPreferences sharedPreferences];
    [v45 addObserver:v5 selector:"_sharedUserIdentifierDidChange:" name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:v46];
    [v45 addObserver:v5 selector:"_multiUserVoiceIdentificationDidChange:" name:@"ADMultiUserVoiceIdentificationDidChangeNotification" object:v46];
    [v45 addObserver:v5 selector:"_homeInfoDidChange:" name:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
    v47 = +[NSDistributedNotificationCenter defaultCenter];
    [v47 addObserver:v5 selector:"_voiceProfileFullDownloadTriggered:" name:kSSRTriggerPHSProfileDownload object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000C7FFC, kAFPreferencesDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000C7F48, AFLanguageCodeDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000C7E94, AFOutputLanguageDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000C7E8C, kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000C7E84, @"com.apple.voicetrigger.PHSProfileModified", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v49 = v5->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C7BEC;
    block[3] = &unk_10051DFE8;
    v52 = v5;
    dispatch_async(v49, block);
  }

  return v5;
}

- (ADCloudKitManager)init
{
  v3 = +[AFInstanceContext currentContext];
  v4 = [(ADCloudKitManager *)self initWithInstanceContext:v3];

  return v4;
}

+ (void)_setAppleAccountSiriStateEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = @"disabled";
    if (v4)
    {
      v7 = @"enabled";
    }

    *buf = 136315394;
    v15 = "+[ADCloudKitManager _setAppleAccountSiriStateEnabled:withCompletion:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Setting Siri Account State to %@.", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C8268;
  v10[3] = &unk_1005104F8;
  v13 = v4;
  v11 = objc_alloc_init(ACAccountStore);
  v12 = v5;
  v8 = v5;
  v9 = v11;
  [v9 aa_primaryAppleAccountWithCompletion:v10];
}

+ (id)getApplicationIdentifierFromEntitlements
{
  [@"application-identifier" UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_string)
  {
    v4 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v4 = 0;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[ADCloudKitManager getApplicationIdentifierFromEntitlements]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s application identifier = (%@)", &v7, 0x16u);
  }

  return v4;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8564;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_10058FF98 != -1)
  {
    dispatch_once(&qword_10058FF98, block);
  }

  v2 = qword_10058FFA0;

  return v2;
}

@end
@interface ADMultiUserService
+ (id)sharedService;
- (BOOL)_homeKitSettingsDidChangeForDeviceOwner;
- (BOOL)_isCurrentLanguageMultiUserCompatible;
- (BOOL)_isTrackingUUIDForInFlightVoiceProfile:(id)a3;
- (BOOL)_multiUserListenerShouldAcceptNewConnection:(id)a3;
- (BOOL)_profileLimitReached;
- (BOOL)_removeUser:(id)a3 homeUserID:(id)a4 sharedUserID:(id)a5 iCloudAltDSID:(id)a6 error:(id *)a7;
- (BOOL)_updateDeviceOwner:(id)a3 sharedUserId:(id)a4 enrollmentName:(id)a5 companionInfo:(id)a6 shareOwnerName:(id)a7 homeMemberSettings:(id)a8 loggingAllowed:(BOOL)a9;
- (BOOL)_updateHomeKitSettings:(id)a3;
- (BOOL)_updateNonHomeUserSettings:(id)a3;
- (BOOL)_updateVoiceProfileInfo;
- (BOOL)getAllowExplicitContentSettingForRecognizedUser;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)personalDomainSettingsDidChange:(id)a3 newUserSettings:(id)a4;
- (id)_allUsersBySharedUserID;
- (id)_augmentUserPropertiesWithHomeInfoForUser:(id)a3;
- (id)_confidenceScoreForSharedUserID:(id)a3 expectedSpeakerSharedUserID:(id)a4 expectedSpeakerConfidenceScore:(int64_t)a5 confidenceScores:(id)a6;
- (id)_generateDeviceUserWithHomeUserUUID:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 adaccount:(id)a6;
- (id)_getLoggableMultiUserSharedUserIdForSharedUserID:(id)a3;
- (id)_getUserAgentStringForSharedUserID:(id)a3;
- (id)_homeMembersForPlatform;
- (id)_inFlightVoiceProfilesByUUID;
- (id)_initWithPreferences:(id)a3 ssrManager:(id)a4 homeInfoManager:(id)a5;
- (id)allUsersBySharedUserID;
- (id)confidenceScoresForMultiUserTestingExpectedSpeakerSharedUserID:(id)a3 expectedSpeakerConfidenceScore:(int64_t)a4 nonspeakerConfidenceScores:(id)a5;
- (id)currentOwnerSharedUserID;
- (id)getAssistantIdentifierForIDS:(id)a3;
- (id)getDeviceOwnerSharedUserId;
- (id)getSharedUserIdForHomeUserId:(id)a3;
- (id)getSharedUserIdForShareOwnerName:(id)a3;
- (id)getSyncableSharedUserIdForSharedUserId:(id)a3;
- (id)getSyncableSharedUserIdsForSharedUserIds:(id)a3;
- (id)getUserAgentStringForSharedUserID:(id)a3;
- (id)homeUserIdToNames;
- (id)multiUserSAObject;
- (id)sharedRemoteDevices;
- (id)validateAndReturnScores:(id)a3 classifiedUser:(id)a4 donatedScores:(id)a5 unknownUserSharedId:(id *)a6 totalUsers:(unint64_t *)a7 ghostVoiceProfileDetected:(BOOL *)a8;
- (unint64_t)_countVoiceProfiles;
- (unint64_t)addIfSiriCloudSyncEnabledForUser:(id)a3;
- (unint64_t)countUsersWithLocationServicesEnabled;
- (unint64_t)countUsersWithMatchingSiriLanguage;
- (unint64_t)countUsersWithPersonalRequestsEnabled;
- (unint64_t)countUsersWithSiriCloudSyncEnabled;
- (unint64_t)countVoiceProfiles;
- (void)_addDeviceOwner:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 audioAppSignals:(id)a7 enrollmentName:(id)a8 companionInfo:(id)a9 shareOwnerName:(id)a10 homeMemberSettings:(id)a11 loggingAllowed:(BOOL)a12 completion:(id)a13;
- (void)_addUser:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 enrollmentName:(id)a7 isPrimary:(BOOL)a8 nonCloudSyncedUser:(BOOL)a9 completion:(id)a10;
- (void)_allowVoiceIdentificationForThisUser:(id)a3 iCloudAltDSID:(id)a4 completion:(id)a5;
- (void)_currentHomeIsReady:(id)a3;
- (void)_deleteShareForUser:(id)a3;
- (void)_describeSAMultiUserInfo:(id)a3;
- (void)_forceCloudSyncedUserDownload:(id)a3;
- (void)_languageCodeDidChange;
- (void)_loadCloudSyncedUsersFromCache;
- (void)_logRelevantAnalyticsOnUserAddedWithSharedUserID:(id)a3 isPrimary:(BOOL)a4;
- (void)_postRemovalStateCleanup;
- (void)_primaryUserSharedUserIdentifierDidChangeNotification:(id)a3;
- (void)_refreshUsersAndVoiceProfiles:(BOOL)a3;
- (void)_removeGhostVoiceProfiles;
- (void)_resetAllUsers;
- (void)_resetPrimaryUser;
- (void)_saveDeviceOwnerToKeychainCache;
- (void)_savePrimaryAndDeviceOwner;
- (void)_saveSharedUsers;
- (void)_setPrimaryUserMeDevice:(BOOL)a3;
- (void)_setPrimaryUserSiriLanguage:(id)a3;
- (void)_setSharedUserMeDevice:(BOOL)a3 forSharedUser:(id)a4;
- (void)_setSharedUserSiriLanguage:(id)a3 forSharedUser:(id)a4;
- (void)_setupMultiUserListener;
- (void)_trackGhostVoiceProfile:(id)a3;
- (void)_trackHomeUserUUIDForInFlightVoiceProfile:(id)a3;
- (void)_untrackAllHomeUserUUIDsForInFlightVoiceProfile;
- (void)_untrackHomeUserUUIDForInFlightVoiceProfile:(id)a3;
- (void)_untrackUUIDsForUser:(id)a3;
- (void)_updateCommunalDeviceUser:(id)a3 withSettings:(id)a4;
- (void)_updateHomeKitSettingsForDeviceOwner;
- (void)_updateMappingsForSharedUser:(id)a3;
- (void)_updateSAMultiUserInfo;
- (void)addDeviceOwner:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 audioAppSignals:(id)a7 enrollmentName:(id)a8 companionInfo:(id)a9 shareOwnerName:(id)a10 homeMemberSettings:(id)a11 loggingAllowed:(BOOL)a12 completion:(id)a13;
- (void)addUser:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 enrollmentName:(id)a7 isPrimary:(BOOL)a8 nonCloudSyncedUser:(BOOL)a9 completion:(id)a10;
- (void)dealloc;
- (void)didReceiveIDs:(id)a3 forUser:(id)a4;
- (void)downloadVoiceProfileForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)dumpAssistantStateChunk:(id)a3;
- (void)fetchDeviceOwnerAsSAMultiUserInfo:(id)a3;
- (void)getCompanionAssistantIdForRecognizedUser:(id)a3;
- (void)getConformingSharedUserIdForHomeUserId:(id)a3 completion:(id)a4;
- (void)getConformingSharedUserIds:(id)a3;
- (void)getFirstNameForSharedUserId:(id)a3 completion:(id)a4;
- (void)getHomeUserIdForSharedUserId:(id)a3 completion:(id)a4;
- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)a3;
- (void)getIDSIdentifierForAssistantId:(id)a3 completion:(id)a4;
- (void)getLoggableIdentiferForUserWithSharedUserID:(id)a3 iCloudAltDSID:(id)a4 sessionID:(id)a5 completion:(id)a6;
- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)a3 completion:(id)a4;
- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)a3 completion:(id)a4;
- (void)getMultiUserCompanionInfoWithCompletion:(id)a3;
- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)a3;
- (void)getMultiUserSettingsForSharedUserID:(id)a3 completion:(id)a4;
- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)a3;
- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)a3;
- (void)getRecognizableUsersConfromingSharedUserIds:(id)a3;
- (void)getSharedUserIdForHomeUserId:(id)a3 completion:(id)a4;
- (void)getSharedUserIdForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)getSharedUserInfoForSharedUserID:(id)a3 completion:(id)a4;
- (void)getSharedUserInfoForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)getUserAgentStringForSharedUserID:(id)a3 completion:(id)a4;
- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)a3;
- (void)homeUserIdToNames:(id)a3;
- (void)onUserAnalyticsIdsChanged:(id)a3 iCloudAltDSId:(id)a4 sharedUserId:(id)a5;
- (void)postMessageToMUXWithMultiUserInfo:(id)a3 completion:(id)a4;
- (void)refreshHomeKitOnboardedUsers;
- (void)removeDeviceOwner;
- (void)removeUserWithHomeUUID:(id)a3 completion:(id)a4;
- (void)removeUserWithShareOwnerNames:(id)a3 completion:(id)a4;
- (void)removeUserWithSharedUserID:(id)a3 completion:(id)a4;
- (void)resetAllUsers;
- (void)setEnrollmentName:(id)a3 forHomeUser:(id)a4;
- (void)setPrimaryUser:(id)a3;
- (void)setShareOwnerName:(id)a3 homeMemberSettings:(id)a4 audioAppSignals:(id)a5 loggingAllowed:(BOOL)a6 forSharedUserId:(id)a7;
- (void)showMultiUserSharedUserIDsCompletion:(id)a3;
- (void)showMultiUsersWithCompletion:(id)a3;
- (void)showPrimaryUserSharedUserIDWithCompletion:(id)a3;
- (void)triggerMultiUserMetricsWithCompletion:(id)a3;
- (void)triggerVoiceProfileUploadWithCompletion:(id)a3 completion:(id)a4;
- (void)updateMultiUserWithSharedUserId:(id)a3 companionInfo:(id)a4 completion:(id)a5;
- (void)updateVoiceProfiles;
- (void)voiceProfilesOutOfSync;
@end

@implementation ADMultiUserService

+ (id)sharedService
{
  if (AFSupportsMultiUser())
  {
    if (qword_1005907D8 != -1)
    {
      dispatch_once(&qword_1005907D8, &stru_100519740);
    }

    v2 = qword_1005907D0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_confidenceScoreForSharedUserID:(id)a3 expectedSpeakerSharedUserID:(id)a4 expectedSpeakerConfidenceScore:(int64_t)a5 confidenceScores:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_alloc_init(SAUserConfidenceScore);
  v13 = [v9 uppercaseString];
  [v12 setSharedUserId:v13];

  v14 = [v9 uppercaseString];
  v15 = [v11 objectForKey:v14];

  if (v15)
  {
    v16 = [v15 integerValue];
  }

  else if ([v10 caseInsensitiveCompare:v9])
  {
    v16 = 0;
  }

  else
  {
    v16 = a5;
  }

  [v12 setConfidenceScore:v16];

  return v12;
}

- (id)confidenceScoresForMultiUserTestingExpectedSpeakerSharedUserID:(id)a3 expectedSpeakerConfidenceScore:(int64_t)a4 nonspeakerConfidenceScores:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1002A0704;
  v24 = sub_1002A0714;
  v25 = objc_alloc_init(NSMutableArray);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A071C;
  block[3] = &unk_100519B60;
  block[4] = self;
  v16 = v8;
  v18 = &v20;
  v19 = a4;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(queue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (void)getSharedUserIdForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002A09A4;
    v9[3] = &unk_100519B38;
    v11 = v7;
    v10 = v6;
    [(ADMultiUserService *)self getSharedUserInfoForiCloudAltDSID:v10 completion:v9];
  }
}

- (void)getSharedUserInfoForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A0B9C;
    block[3] = &unk_10051E088;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(queue, block);
  }
}

- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002A1154;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)getSharedUserInfoForSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A12E8;
    block[3] = &unk_10051E088;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(queue, block);
  }
}

- (id)currentOwnerSharedUserID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002A0704;
  v10 = sub_1002A0714;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002A151C;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)getAssistantIdentifierForIDS:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADMultiUserService getAssistantIdentifierForIDS:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &buf, 0xCu);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  if (AFSupportsMultiUser())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_1002A0704;
    v15 = sub_1002A0714;
    v16 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A1720;
    block[3] = &unk_10051C588;
    block[4] = self;
    v10 = v4;
    p_buf = &buf;
    dispatch_sync(queue, block);
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
LABEL_7:

  return v7;
}

- (void)getIDSIdentifierForAssistantId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[ADMultiUserService getIDSIdentifierForAssistantId:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!v6)
    {
      goto LABEL_7;
    }

    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A1BC0;
      block[3] = &unk_10051E088;
      v12 = v6;
      v13 = self;
      v14 = v7;
      dispatch_async(queue, block);

      v10 = v12;
LABEL_8:

      goto LABEL_9;
    }

LABEL_7:
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(v7 + 2))(v7, 0, v10);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((AFSupportsMultiUser() & 1) == 0)
    {
      v7 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      v4[2](v4, 0, v7);
LABEL_12:

      goto LABEL_13;
    }

    v5 = +[ADHomeInfoManager sharedInfoManager];
    v6 = [v5 preferredMediaUserInfo];
    v7 = [v6 preferredMediaUserSharedUserID];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"nil";
      if (v7)
      {
        v10 = v7;
      }

      *buf = 136315395;
      v14 = "[ADMultiUserService getPreferredMediaUserHomeUserIDWithCompletion:]";
      v15 = 2113;
      v16 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s preferredMediaUserSharedUserID (%{private}@)", buf, 0x16u);
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else if (v7)
    {
LABEL_5:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1002A2148;
      v11[3] = &unk_100519B10;
      v12 = v4;
      [(ADMultiUserService *)self getHomeUserIdForSharedUserId:v7 completion:v11];
      v9 = v12;
LABEL_11:

      goto LABEL_12;
    }

    v9 = [AFError errorWithCode:6200 description:@"Unable to determine the preferred media user"];
    v4[2](v4, 0, v9);
    goto LABEL_11;
  }

LABEL_13:
}

- (void)homeUserIdToNames:(id)a3
{
  v6 = a3;
  v4 = [(ADMultiUserService *)self homeUserIdToNames];
  if (v4)
  {
    v6[2](v6, v4, 0);
  }

  else
  {
    v5 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:0];
    (v6)[2](v6, 0, v5);
  }
}

- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A233C;
      block[3] = &unk_10051E088;
      block[4] = self;
      v12 = v7;
      v11 = v6;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (void)getMultiUserSettingsForSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A26F8;
      block[3] = &unk_10051E088;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (void)getCompanionAssistantIdForRecognizedUser:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A2BAC;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = v4;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A2FE8;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = v4;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A32EC;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = v4;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A3728;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = v4;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)getRecognizableUsersConfromingSharedUserIds:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A3CA4;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = v4;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:13 userInfo:&__NSDictionary0__struct];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)getConformingSharedUserIds:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A422C;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = v4;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)getConformingSharedUserIdForHomeUserId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A47BC;
      block[3] = &unk_10051E088;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(v7 + 2))(v7, 0, 0, v9);
    }
  }
}

- (void)getFirstNameForSharedUserId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A4BD4;
      block[3] = &unk_10051E088;
      v11 = v6;
      v12 = self;
      v13 = v7;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (void)getSharedUserIdForHomeUserId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      v15 = "[ADMultiUserService getSharedUserIdForHomeUserId:completion:]";
      v16 = 2113;
      v17 = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Retrieving shared user id for homeUserId = %{private}@", buf, 0x16u);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!v6)
    {
      goto LABEL_7;
    }

    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A4F40;
      block[3] = &unk_10051E088;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(queue, block);

      goto LABEL_8;
    }

LABEL_7:
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(v7 + 2))(v7, 0, v10);
  }

LABEL_8:
}

- (void)getHomeUserIdForSharedUserId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      v15 = "[ADMultiUserService getHomeUserIdForSharedUserId:completion:]";
      v16 = 2113;
      v17 = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %{private}@", buf, 0x16u);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!v6)
    {
      goto LABEL_7;
    }

    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A53FC;
      block[3] = &unk_10051E088;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(queue, block);

      goto LABEL_8;
    }

LABEL_7:
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(v7 + 2))(v7, 0, v10);
  }

LABEL_8:
}

- (BOOL)getAllowExplicitContentSettingForRecognizedUser
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = +[ADPreferences sharedPreferences];
  v4 = [v3 allowExplicitContent];

  v12 = v4;
  if (AFSupportsMultiUser())
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002A57B4;
    v8[3] = &unk_10051D4A0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(queue, v8);
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)getSharedUserIdForHomeUserId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1002A0704;
    v16 = sub_1002A0714;
    v17 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A5B3C;
    block[3] = &unk_10051C588;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(queue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getSyncableSharedUserIdsForSharedUserIds:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1002A0704;
  v17 = sub_1002A0714;
  v18 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A5D60;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)getSyncableSharedUserIdForSharedUserId:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1002A0704;
  v17 = sub_1002A0714;
  v18 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A6044;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)getSharedUserIdForShareOwnerName:(id)a3
{
  v4 = a3;
  v5 = v4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1002A0704;
  v16 = sub_1002A0714;
  v17 = 0;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A6280;
    block[3] = &unk_10051C588;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(queue, block);
    v7 = v13[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_profileLimitReached
{
  v3 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID count];
  if (self->_primaryUser)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  return v4 >= AFMultiUserServiceUserProfileLimit;
}

- (void)setShareOwnerName:(id)a3 homeMemberSettings:(id)a4 audioAppSignals:(id)a5 loggingAllowed:(BOOL)a6 forSharedUserId:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1002A65A0;
  v21[3] = &unk_100519AC0;
  v21[4] = self;
  v22 = v15;
  v26 = a6;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  dispatch_async(queue, v21);
}

- (void)setEnrollmentName:(id)a3 forHomeUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A679C;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_async(queue, block);
  }
}

- (void)updateMultiUserWithSharedUserId:(id)a3 companionInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s ", &buf, 0xCu);
  }

  if (AFSupportsMultiUser())
  {
    v29 = [v9 assistantID];
    v28 = [v9 speechID];
    v27 = [v9 idsIdentifier];
    v26 = [v9 productPrefix];
    v25 = [v9 aceHost];
    v23 = [v9 companionName];
    if ([v9 meDevice])
    {
      v12 = [v9 meDevice];
    }

    else
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s meDevice field not found", &buf, 0xCu);
      }

      v12 = 1;
    }

    v15 = [v9 siriLanguage];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = sub_1002A0704;
    v49 = sub_1002A0714;
    v50 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A6BF8;
    block[3] = &unk_100519A98;
    block[4] = self;
    v31 = v8;
    v32 = v29;
    p_buf = &buf;
    v42 = v44;
    v33 = v28;
    v34 = v27;
    v35 = v26;
    v36 = v25;
    v37 = v9;
    v38 = v23;
    v39 = v15;
    v43 = v12;
    v40 = v10;
    v22 = v15;
    v24 = v23;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    dispatch_async(queue, block);

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
    if (v10)
    {
      (*(v10 + 2))(v10, v13);
    }
  }
}

- (void)triggerMultiUserMetricsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsMultiUser())
    {
      if ([(ADMultiUserService *)self _isCurrentLanguageMultiUserCompatible])
      {
        v5 = +[ADHomeInfoManager sharedInfoManager];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1002A7B98;
        v9[3] = &unk_10051D188;
        v9[4] = self;
        v10 = v4;
        [v5 getVoiceSettingsForHomeMembers:v9];

        goto LABEL_8;
      }

      v6 = kAFAssistantErrorDomain;
      v7 = 6012;
    }

    else
    {
      v6 = kAFAssistantErrorDomain;
      v7 = 6004;
    }

    v8 = [NSError errorWithDomain:v6 code:v7 userInfo:&__NSDictionary0__struct];
    (*(v4 + 2))(v4, v8);
  }

LABEL_8:
}

- (void)updateVoiceProfiles
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADMultiUserService updateVoiceProfiles]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A8164;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_removeGhostVoiceProfiles
{
  ghostVoiceProfileSharedUserIDs = self->_ghostVoiceProfileSharedUserIDs;
  if (ghostVoiceProfileSharedUserIDs)
  {
    if ([(NSMutableSet *)ghostVoiceProfileSharedUserIDs count])
    {
      v4 = self->_ghostVoiceProfileSharedUserIDs;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1002A8250;
      v6[3] = &unk_100519A08;
      v6[4] = self;
      [(NSMutableSet *)v4 enumerateObjectsUsingBlock:v6];
      [(NSMutableSet *)self->_ghostVoiceProfileSharedUserIDs removeAllObjects];
      v5 = self->_ghostVoiceProfileSharedUserIDs;
      self->_ghostVoiceProfileSharedUserIDs = 0;
    }
  }
}

- (void)_trackGhostVoiceProfile:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315395;
    v10 = "[ADMultiUserService _trackGhostVoiceProfile:]";
    v11 = 2113;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s sharedUserID %{private}@", &v9, 0x16u);
  }

  ghostVoiceProfileSharedUserIDs = self->_ghostVoiceProfileSharedUserIDs;
  if (!ghostVoiceProfileSharedUserIDs)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = self->_ghostVoiceProfileSharedUserIDs;
    self->_ghostVoiceProfileSharedUserIDs = v7;

    ghostVoiceProfileSharedUserIDs = self->_ghostVoiceProfileSharedUserIDs;
  }

  [(NSMutableSet *)ghostVoiceProfileSharedUserIDs addObject:v4];
}

- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADMultiUserService *)self _getLoggableMultiUserSharedUserIdForSharedUserID:v6];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[ADMultiUserService getLoggableMultiUserSharedUserIdForSharedUserID:completion:]";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s get loggable multiUserSharedUserId: %@ for sharedUserId: %@", &v10, 0x20u);
  }

  if (v7)
  {
    v7[2](v7, v8);
  }
}

- (void)postMessageToMUXWithMultiUserInfo:(id)a3 completion:(id)a4
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 homeMembers];
    v9 = 136315394;
    v10 = "[ADMultiUserService postMessageToMUXWithMultiUserInfo:completion:]";
    v11 = 2048;
    v12 = [v7 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Posting MUX message with %ld home members", &v9, 0x16u);
  }

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 postMessageToMUXWithMultiUserInfo:v4];
}

- (void)getLoggableIdentiferForUserWithSharedUserID:(id)a3 iCloudAltDSID:(id)a4 sessionID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A8760;
  block[3] = &unk_10051D2A0;
  v20 = v10;
  v21 = self;
  v23 = v12;
  v24 = v13;
  v22 = v11;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

- (id)_getLoggableMultiUserSharedUserIdForSharedUserID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_9;
  }

  primaryUser = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v4];
  v6 = primaryUser;
  if (!primaryUser)
  {
    v8 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    v9 = [v8 isEqualToString:v4];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_8;
    }

    primaryUser = self->_primaryUser;
  }

  v7 = [primaryUser loggableMultiUserSharedUserID];
LABEL_8:

LABEL_9:

  return v7;
}

- (id)_getUserAgentStringForSharedUserID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_9;
  }

  primaryUser = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v4];
  v6 = primaryUser;
  if (!primaryUser)
  {
    v8 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    v9 = [v8 isEqualToString:v4];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_8;
    }

    primaryUser = self->_primaryUser;
  }

  v7 = [primaryUser productPrefix];
LABEL_8:

LABEL_9:

  return v7;
}

- (void)getUserAgentStringForSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A8CB4;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_async(queue, block);
  }
}

- (id)getUserAgentStringForSharedUserID:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1002A0704;
  v17 = sub_1002A0714;
  v18 = 0;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A8E40;
    block[3] = &unk_10051C588;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setPrimaryUser:(id)a3
{
  v5 = a3;
  v6 = dispatch_get_current_queue();
  queue = self->_queue;

  if (v6 == queue)
  {
    objc_storeStrong(&self->_primaryUser, a3);
  }

  else
  {
    v8 = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002A8F6C;
    v9[3] = &unk_10051E010;
    v9[4] = self;
    v10 = v5;
    dispatch_sync(v8, v9);
  }
}

- (void)voiceProfilesOutOfSync
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A8FEC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetAllUsers
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A934C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)validateAndReturnScores:(id)a3 classifiedUser:(id)a4 donatedScores:(id)a5 unknownUserSharedId:(id *)a6 totalUsers:(unint64_t *)a7 ghostVoiceProfileDetected:(BOOL *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Incoming scores %@", buf, 0x16u);
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = +[NSMutableDictionary dictionary];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = sub_1002A0704;
  v53 = sub_1002A0714;
  v54 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A992C;
  block[3] = &unk_1005199E0;
  block[4] = self;
  v38 = &v41;
  v20 = v14;
  v33 = v20;
  v40 = a8;
  v21 = v13;
  v34 = v21;
  v22 = v15;
  v35 = v22;
  v23 = v18;
  v36 = v23;
  v24 = v17;
  v37 = v24;
  v39 = buf;
  dispatch_sync(queue, block);
  v25 = +[AFAnalytics sharedAnalytics];
  v49[0] = @"local_scores";
  v49[1] = @"donated_scores";
  v50[0] = v24;
  v50[1] = v23;
  v26 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  [v25 logEventWithType:6115 context:v26];

  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *v45 = 136315394;
    v46 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]";
    v47 = 2112;
    v48 = v24;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s (%@)", v45, 0x16u);
    v27 = AFSiriLogContextDaemon;
  }

  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *v45 = 136315395;
  v46 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]";
  v47 = 2113;
  v48 = v23;
  _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s (%{private}@)", v45, 0x16u);
  if (a6)
  {
LABEL_7:
    *a6 = *(*&buf[8] + 40);
  }

LABEL_8:
  if (a7)
  {
    *a7 = v42[3];
  }

  v28 = v37;
  v29 = v24;

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(buf, 8);

  return v29;
}

- (id)sharedRemoteDevices
{
  v3 = objc_alloc_init(NSMutableArray);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002AA08C;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)_generateDeviceUserWithHomeUserUUID:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 adaccount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v37 = 136315138;
    v38 = "[ADMultiUserService _generateDeviceUserWithHomeUserUUID:sharedUserId:loggableSharedUserId:adaccount:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", &v37, 0xCu);
  }

  v15 = +[ADAssistantDataManager sharedDataManager];
  v16 = [v15 _cachedAssistantData];
  v17 = [[ADCommunalDeviceUser alloc] init:v10 sharedUserId:v11 loggableSharedUserId:v12 iCloudAltDSID:0 attribute:0];
  v18 = [v15 unredactedAnchor];
  cachedAssistantDataUnredactedAnchor = self->_cachedAssistantDataUnredactedAnchor;
  self->_cachedAssistantDataUnredactedAnchor = v18;

  [v17 setEnrollmentName:@"primary_user"];
  v20 = [v13 aceHost];
  [v17 setAceHost:v20];

  v21 = [v13 speechIdentifier];
  [v17 setSpeechID:v21];

  v22 = [v13 peerAssistantIdentifier];
  [v17 setCompanionAssistantID:v22];

  v23 = [v13 peerSpeechIdentifier];
  [v17 setCompanionSpeechID:v23];

  [v17 setVoiceIDAllowedByUser:0];
  v24 = objc_alloc_init(SAHomeMemberSettings);
  v25 = [v16 region];
  [v24 setRegion:v25];

  v26 = [v16 ttsVoice];
  [v24 setTtsVoice:v26];

  v27 = [v16 twentyFourHourTimeDisplay];
  [v24 setTwentyFourHourTimeDisplay:v27];

  v28 = [v16 temperatureUnit];
  [v24 setTemperatureUnit:v28];

  v29 = [v16 countryCode];
  [v24 setCountryCode:v29];

  v30 = [v16 parentalRestrictions];
  [v24 setParentalRestrictions:v30];

  [v24 setMediaPlayerExplicitContentDisallowed:{objc_msgSend(v16, "mediaPlayerExplicitContentDisallowed")}];
  v31 = [v15 _unredactedMeCards];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [v15 _unredactedMeCards];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v24 setMeCard:v34];
  }

  v35 = [v24 dictionary];
  [v17 setSettings:v35];

  return v17;
}

- (void)fetchDeviceOwnerAsSAMultiUserInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_deviceOwner)
    {
      v5 = [ADCommunalDeviceUser saMultiUserInfo:?];
      v4[2](v4, v5);
    }

    else
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v11 = "[ADMultiUserService fetchDeviceOwnerAsSAMultiUserInfo:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Device Owner does not exist. Falling back to creating an ephemeral device owner", buf, 0xCu);
      }

      v7 = +[ADCommandCenter sharedCommandCenter];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1002AA858;
      v8[3] = &unk_100519990;
      v8[4] = self;
      v9 = v4;
      [v7 fetchActiveAccount:v8];
    }
  }
}

- (id)multiUserSAObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002A0704;
  v10 = sub_1002A0714;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002AAB40;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dumpAssistantStateChunk:(id)a3
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1002AAE64;
  v29[3] = &unk_10051CF08;
  v24 = a3;
  v30 = v24;
  v23 = objc_retainBlock(v29);
  v4 = [(ADMultiUserService *)self allUsersBySharedUserID];
  v5 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        v13 = [NSMutableDictionary alloc];
        v14 = [v12 loggableDictionary];
        v15 = [v13 initWithDictionary:v14 copyItems:1];

        [v5 setObject:v15 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[ADMultiUserService dumpAssistantStateChunk:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Looking into the profile manager", buf, 0xCu);
  }

  v17 = +[SSRVoiceProfileManager sharedInstance];
  v18 = [v17 provisionedVoiceProfilesForLocale:self->_currentLanguage];
  v19 = v18;
  v20 = &__NSArray0__struct;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  v22 = [v21 description];

  [v5 setObject:v22 forKey:@"voiceProfiles"];
  (v23[2])(v23, v5);
}

- (void)showMultiUserSharedUserIDsCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AAF24;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)showPrimaryUserSharedUserIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AB154;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)getMultiUserCompanionInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AB274;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)showMultiUsersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AB570;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (id)_augmentUserPropertiesWithHomeInfoForUser:(id)a3
{
  v3 = a3;
  v4 = [v3 userProperties];
  v5 = [v4 mutableCopy];

  v6 = [v3 homeUserUUID];

  if (v6)
  {
    v7 = +[ADHomeInfoManager sharedInfoManager];
    v8 = [v7 currentHome];

    v9 = [v8 name];

    if (v9)
    {
      v10 = [v8 name];
      [v5 setObject:v10 forKey:@"homeName"];
    }

    v11 = [v8 uniqueIdentifier];

    if (v11)
    {
      v12 = [v8 uniqueIdentifier];
      v13 = [v12 UUIDString];
      [v5 setObject:v13 forKey:@"homeId"];
    }
  }

  return v5;
}

- (id)homeUserIdToNames
{
  v28 = objc_alloc_init(NSMutableDictionary);
  if (!self->_primaryUser)
  {
    goto LABEL_8;
  }

  v3 = [ADCommunalDeviceUser saHomeMemberInfo:?];
  v4 = [v3 homeMemberSettings];
  v5 = [v4 meCard];

  if (!v5)
  {
    v8 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    primaryUser = self->_primaryUser;
    v7 = v8;
    v26 = [(ADCommunalDeviceUser *)primaryUser homeUserUUID];
    *buf = 136315395;
    v35 = "[ADMultiUserService homeUserIdToNames]";
    v36 = 2113;
    v37 = v26;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Empty meCard for homeUserId %{private}@", buf, 0x16u);

    goto LABEL_5;
  }

  v6 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];

  if (v6)
  {
    v7 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    [v28 setObject:v5 forKey:v7];
LABEL_5:
  }

LABEL_7:

LABEL_8:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_sharedUsersByHomeUserUUID;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v10)
  {
    goto LABEL_22;
  }

  v12 = v10;
  v13 = *v30;
  *&v11 = 136315395;
  v27 = v11;
  do
  {
    v14 = 0;
    do
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:*(*(&v29 + 1) + 8 * v14), v27];
      v16 = [ADCommunalDeviceUser saHomeMemberInfo:v15];
      v17 = [v16 homeMemberSettings];
      v18 = [v17 meCard];

      if (v18)
      {
        v19 = [v15 homeUserUUID];

        if (!v19)
        {
          goto LABEL_18;
        }

        v20 = [v15 homeUserUUID];
        [v28 setObject:v18 forKey:v20];
        goto LABEL_16;
      }

      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v20 = v21;
        v22 = [v15 homeUserUUID];
        *buf = v27;
        v35 = "[ADMultiUserService homeUserIdToNames]";
        v36 = 2113;
        v37 = v22;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Empty meCard for homeUserId %{private}@", buf, 0x16u);

LABEL_16:
      }

LABEL_18:

      v14 = v14 + 1;
    }

    while (v12 != v14);
    v23 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v12 = v23;
  }

  while (v23);
LABEL_22:

  return v28;
}

- (void)removeUserWithSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v14 = "[ADMultiUserService removeUserWithSharedUserID:completion:]";
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Remove user with shared user id %{private}@", buf, 0x16u);
  }

  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AC084;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)removeUserWithHomeUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v14 = "[ADMultiUserService removeUserWithHomeUUID:completion:]";
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Remove user with home user id %{private}@", buf, 0x16u);
  }

  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AC290;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_postRemovalStateCleanup
{
  [(ADMultiUserService *)self _saveSharedUsers];
  [(ADMultiUserService *)self _updateVoiceProfileInfo];

  [(ADMultiUserService *)self _updateSAMultiUserInfo];
}

- (BOOL)_removeUser:(id)a3 homeUserID:(id)a4 sharedUserID:(id)a5 iCloudAltDSID:(id)a6 error:(id *)a7
{
  v61 = a7;
  v12 = a3;
  v62 = a4;
  v13 = a5;
  v14 = a6;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v16 = v14;
  v17 = AFIsATVOnly();
  v18 = v16;
  if (!v16)
  {
    v18 = 0;
    if (v17)
    {
      if (v12)
      {
        v18 = [v12 iCloudAltDSID];
      }

      else
      {
        v18 = 0;
      }

      if (v62)
      {
        v19 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
        v7 = [v19 isEqualToString:v62];

        if (v7)
        {
          v20 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];

          v18 = v20;
        }
      }

      if (!v18)
      {
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s #multi-user-atv No iCloudAltDSID found for user.. checking local mapping", buf, 0xCu);
        }

        v18 = [(NSMutableDictionary *)self->_iCloudAltDSIDByHomeUserID objectForKey:v62, v61];
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315395;
          v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
          v65 = 2113;
          v66 = v18;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s #multi-user-atv Found %{private}@", buf, 0x16u);
        }
      }
    }
  }

  v23 = AFIsATVOnly();
  if (v12 || !v23 || (-[ADCommunalDeviceUser iCloudAltDSID](self->_primaryUser, "iCloudAltDSID"), v24 = objc_claimAutoreleasedReturnValue(), v7 = [v18 isEqualToString:v24], v24, (v7 & 1) != 0))
  {
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      primaryUser = self->_primaryUser;
      v24 = v24;
      v7 = [(ADCommunalDeviceUser *)primaryUser iCloudAltDSID];
      *buf = 136315395;
      v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
      v65 = 2113;
      v66 = v7;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s #multi-user-atv Shared user not found or is primary %{private}@ ", buf, 0x16u);
    }

    if (v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID objectForKey:v18];
    if (v12)
    {
LABEL_22:
      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        v28 = [v12 homeUserUUID];
        v29 = [v12 sharedUserID];
        [v12 iCloudAltDSID];
        v31 = v30 = v13;
        *buf = 136315907;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        v65 = 2113;
        v66 = v28;
        v67 = 2113;
        v68 = v29;
        v69 = 2113;
        v70 = v31;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Deleting shared user with home User ID (%{private}@) shared User ID (%{private}@) iCloud AltDSID: (%{private}@)", buf, 0x2Au);

        v13 = v30;
        v26 = AFSiriLogContextDaemon;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s PB User profile does not exist.", buf, 0xCu);
      }

      v32 = [v12 homeUserUUID];

      if (v32)
      {
        sharedUsersByHomeUserUUID = self->_sharedUsersByHomeUserUUID;
        v34 = [v12 homeUserUUID];
        [(NSMutableDictionary *)sharedUsersByHomeUserUUID removeObjectForKey:v34];
      }

      v35 = [v12 sharedUserID];

      if (v35)
      {
        sharedUsersBySharedUserID = self->_sharedUsersBySharedUserID;
        v37 = [v12 sharedUserID];
        [(NSMutableDictionary *)sharedUsersBySharedUserID removeObjectForKey:v37];
      }

      v38 = [v12 iCloudAltDSID];

      if (v38)
      {
        sharedUsersByiCloudAltDSID = self->_sharedUsersByiCloudAltDSID;
        v40 = [v12 iCloudAltDSID];
        [(NSMutableDictionary *)sharedUsersByiCloudAltDSID removeObjectForKey:v40];
      }

      [(ADMultiUserService *)self _untrackUUIDsForUser:v12];
      v41 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v43 = [v12 sharedUserID];
        *buf = 136315395;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        v65 = 2113;
        v66 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Posting notification that shared user with sharedUserId: (%{private}@) has been removed", buf, 0x16u);
      }

      v44 = +[NSNotificationCenter defaultCenter];
      [v44 postNotificationName:@"ADMultiUserSharedUserRemovedNotification" object:v12];

      v45 = [v12 sharedUserID];
      [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:v45 forLanguageCode:0];

LABEL_35:
      if (v18)
      {
        v46 = +[ADAnalyticsIdentifiersProvider sharedInstance];
        [v46 removeObserver:self foriCloudAltDSId:v18];
      }

      notify_post(AFCachedFusePersonalizationTokenChanged);
      v47 = 1;
      goto LABEL_38;
    }
  }

  v49 = v13;
  if (v62)
  {
    v24 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    if (([v24 isEqualToString:v62]& 1) != 0)
    {
      goto LABEL_45;
    }

    if (v13)
    {
      goto LABEL_43;
    }

LABEL_47:
    if (!v18)
    {
      v50 = 0;
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  if (!v13)
  {
    goto LABEL_47;
  }

LABEL_43:
  v7 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
  if ([v7 isEqualToString:v13])
  {

    if (!v62)
    {
LABEL_56:
      [(ADMultiUserService *)self _untrackUUIDsForUser:self->_primaryUser, v61];
      v52 = AFSiriLogContextDaemon;
      v13 = v49;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v53 = self->_primaryUser;
        v54 = v52;
        v55 = [(ADCommunalDeviceUser *)v53 iCloudAltDSID];
        *buf = 136315907;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        v65 = 2113;
        v66 = v62;
        v67 = 2113;
        v68 = v49;
        v69 = 2113;
        v70 = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s Trying to delete the primary user with home User ID (%{private}@) shared User ID (%{private}@) iCloud AltDSID (%{private}@)", buf, 0x2Au);
      }

      [(ADMultiUserService *)self _resetPrimaryUser];
      if (AFIsATVOnly())
      {
        [(ADMultiUserService *)self removeDeviceOwner];
      }

      goto LABEL_35;
    }

LABEL_45:

    goto LABEL_56;
  }

  if (!v18)
  {
    v50 = 0;
    goto LABEL_53;
  }

LABEL_50:
  v51 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];
  v50 = [v51 isEqualToString:v18];

  if (v49)
  {
LABEL_53:
  }

LABEL_54:
  if (v62)
  {

    if (v50)
    {
      goto LABEL_56;
    }
  }

  else if (v50)
  {
    goto LABEL_56;
  }

  v56 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v57 = v56;
    v58 = [0 homeUserUUID];
    v59 = [0 sharedUserID];
    v60 = [0 iCloudAltDSID];
    *buf = 136315907;
    v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
    v65 = 2113;
    v66 = v58;
    v67 = 2113;
    v68 = v59;
    v69 = 2113;
    v70 = v60;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s Multi user not found for home User ID (%{private}@) shared User ID (%{private}@) iCloud AltDSID (%{private}@)", buf, 0x2Au);
  }

  if (v61)
  {
    [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    *v61 = v47 = 0;
  }

  else
  {
    v47 = 0;
  }

  v13 = v49;
LABEL_38:

  return v47;
}

- (void)_logRelevantAnalyticsOnUserAddedWithSharedUserID:(id)a3 isPrimary:(BOOL)a4
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADMultiUserService _logRelevantAnalyticsOnUserAddedWithSharedUserID:isPrimary:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = +[AFAnalytics sharedAnalytics];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002ACCD8;
  v7[3] = &unk_100519940;
  v8 = a4;
  [v6 logEventWithType:6112 contextProvider:v7];
}

- (void)removeUserWithShareOwnerNames:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || ![v6 count])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[ADMultiUserService removeUserWithShareOwnerNames:completion:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s no shareOwnerNames", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      goto LABEL_7;
    }

    v7[2](v7, 0);
    goto LABEL_7;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002ACF50;
  block[3] = &unk_10051E088;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  dispatch_async(queue, block);

LABEL_7:
}

- (void)removeDeviceOwner
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADMultiUserService removeDeviceOwner]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AD3B0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_addUser:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 enrollmentName:(id)a7 isPrimary:(BOOL)a8 nonCloudSyncedUser:(BOOL)a9 completion:(id)a10
{
  v10 = a8;
  v16 = a3;
  v17 = a4;
  v90 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a10;
  v91 = v19;
  if (![(ADMultiUserService *)self _profileLimitReached])
  {
    goto LABEL_5;
  }

  v21 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:v16];
  if (v21)
  {

    goto LABEL_5;
  }

  [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
  v22 = v89 = v17;
  v23 = [v16 isEqualToString:v22];

  v17 = v89;
  if (v23)
  {
LABEL_5:
    if (v10)
    {
      primaryUser = self->_primaryUser;
      v25 = v90;
      if (primaryUser)
      {
        if (v19)
        {
          [(ADCommunalDeviceUser *)primaryUser setEnrollmentName:v19];
          primaryUser = self->_primaryUser;
        }

        v26 = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
        v27 = [v26 isEqualToString:v17];

        if (v27)
        {
          v28 = kAFAssistantErrorDomain;
          v29 = 6000;
          goto LABEL_48;
        }

        v62 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
        v63 = [v62 isEqualToString:v16];

        if (v63)
        {
          v64 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s Resetting sharedUserID on existing primary user since home User ID matches", buf, 0xCu);
          }

          v65 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
          [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:v65 forLanguageCode:0];

          [(ADCommunalDeviceUser *)self->_primaryUser setSharedUserID:v17];
        }

        goto LABEL_79;
      }

      v56 = [[ADCommunalDeviceUser alloc] init:v16 sharedUserId:v17 loggableSharedUserId:v90 iCloudAltDSID:v18 attribute:0];
      v57 = self->_primaryUser;
      self->_primaryUser = v56;

      objc_storeStrong(&self->_deviceOwner, self->_primaryUser);
      [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
      [(ADCommunalDeviceUser *)self->_primaryUser setEnrollmentName:v19];
      v58 = +[ADAnalyticsIdentifiersProvider sharedInstance];
      [v58 addObserver:self foriCloudAltDSId:0];

      v59 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];

      if (v59)
      {
        v60 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
      }

      else
      {
        if (!AFIsATV() || ([(ADCommunalDeviceUser *)self->_primaryUser sharedUserID], v74 = objc_claimAutoreleasedReturnValue(), v74, !v74))
        {
LABEL_57:
          if (a9)
          {
            [(ADCommunalDeviceUser *)self->_primaryUser setNonCloudSyncedUserAttribute:1];
            goto LABEL_79;
          }

          self->_primaryUserIsFromLiveOnApp = 0;
          [(ADMultiUserService *)self _savePrimaryAndDeviceOwner];
          v75 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            v94 = 2112;
            v95 = v17;
            v96 = 2112;
            v97 = v18;
            _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "%s #multi-user Logging userAddedWithSharedUserID:(%@) iCloudAltDSID (%@) for primary User ", buf, 0x20u);
          }

          if (AFIsATV())
          {
            if (v18)
            {
              [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID removeObjectForKey:v18];
            }

            if (v17)
            {
              [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeObjectForKey:v17];
            }

            if (v16)
            {
              [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID removeObjectForKey:v16];
            }
          }

          sharedUsersByiCloudAltDSID = self->_sharedUsersByiCloudAltDSID;
          if (!sharedUsersByiCloudAltDSID)
          {
LABEL_78:
            [(ADMultiUserService *)self _logRelevantAnalyticsOnUserAddedWithSharedUserID:v17 isPrimary:1];
            goto LABEL_79;
          }

          v77 = [(NSMutableDictionary *)sharedUsersByiCloudAltDSID objectForKey:v18];
          if (!v77)
          {
LABEL_77:

            goto LABEL_78;
          }

          v78 = v17;
          v79 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "%s #multi-user-atv primary user existed as shared user. Untracking as shared user.", buf, 0xCu);
            if (!v16)
            {
              goto LABEL_73;
            }
          }

          else if (!v16)
          {
LABEL_73:
            v17 = v78;
            if (v78)
            {
              [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeObjectForKey:v78];
            }

            if (v18)
            {
              [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID removeObjectForKey:v18];
            }

            goto LABEL_77;
          }

          [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID removeObjectForKey:v16];
          goto LABEL_73;
        }

        v60 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      }

      v61 = v60;
      [(ADMultiUserService *)self _trackHomeUserUUIDForInFlightVoiceProfile:v60];

      goto LABEL_57;
    }

    if (!self->_sharedUsersBySharedUserID)
    {
      v30 = objc_alloc_init(NSMutableDictionary);
      sharedUsersBySharedUserID = self->_sharedUsersBySharedUserID;
      self->_sharedUsersBySharedUserID = v30;
    }

    if (!self->_sharedUsersByHomeUserUUID)
    {
      v32 = objc_alloc_init(NSMutableDictionary);
      sharedUsersByHomeUserUUID = self->_sharedUsersByHomeUserUUID;
      self->_sharedUsersByHomeUserUUID = v32;
    }

    if (!self->_sharedUsersByiCloudAltDSID)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v35 = self->_sharedUsersByiCloudAltDSID;
      self->_sharedUsersByiCloudAltDSID = v34;
    }

    v36 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:v16];
    v37 = [v36 homeUserUUID];
    v38 = [v37 isEqualToString:v16];

    if (v38)
    {
      v39 = v17;
      v40 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:v16];
      v41 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v43 = [v40 sharedUserID];
        *buf = 136315906;
        v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
        v94 = 2112;
        v95 = v39;
        v96 = 2112;
        v97 = v18;
        v98 = 2112;
        v99 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Secondary user exists for (%@) iCloudAltDSID (%@), rewriting (%@)", buf, 0x2Au);
      }

      v44 = [v40 sharedUserID];
      if (([v44 isEqualToString:v39] & 1) == 0)
      {
        v45 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315395;
          v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
          v94 = 2113;
          v95 = v44;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s Deleting %{private}@", buf, 0x16u);
        }

        [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:v44 forLanguageCode:0];
        [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeObjectForKey:v44];
        [v40 setSharedUserID:v39];
        [(NSMutableDictionary *)self->_sharedUsersBySharedUserID setObject:v40 forKey:v39];
      }

LABEL_25:
      v17 = v39;
      v25 = v90;
      goto LABEL_79;
    }

    v46 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    if (([v46 isEqualToString:v16] & 1) == 0)
    {
      v47 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      v48 = v17;
      v49 = v47;
      v39 = v48;
      if (![v47 isEqualToString:?])
      {
        v81 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];
        v82 = [v81 isEqualToString:v18];

        v17 = v39;
        if ((v82 & 1) == 0)
        {
          v83 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            v94 = 2112;
            v95 = v91;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s Secondary user added for (%@)", buf, 0x16u);
          }

          v40 = [[ADCommunalDeviceUser alloc] init:v16 sharedUserId:v39 loggableSharedUserId:v90 iCloudAltDSID:v18 attribute:1];
          [v40 setEnrollmentName:v91];
          if (a9)
          {
            [v40 setNonCloudSyncedUserAttribute:1];
          }

          [(ADMultiUserService *)self _updateMappingsForSharedUser:v40];
          [(ADMultiUserService *)self _saveSharedUsers];
          v84 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            v94 = 2112;
            v95 = v39;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s #multi-user Logging userAddedWithSharedUserID:(%@) for secondary User ", buf, 0x16u);
          }

          [(ADMultiUserService *)self _logRelevantAnalyticsOnUserAddedWithSharedUserID:v39 isPrimary:0];
          v85 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v86 = v85;
            v87 = [v40 sharedUserID];
            *buf = 136315395;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            v94 = 2113;
            v95 = v87;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%s Posting notification that shared user with sharedUserId: (%{private}@) has been added", buf, 0x16u);
          }

          v88 = +[NSNotificationCenter defaultCenter];
          [v88 postNotificationName:@"ADMultiUserSharedUserAddedNotification" object:v40];

          goto LABEL_25;
        }

LABEL_30:
        v50 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
          v94 = 2112;
          v95 = v17;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Secondary user not added for (%@) due to conflicts", buf, 0x16u);
        }

        v25 = v90;
        if (!AFIsATV())
        {
          v28 = kAFAssistantErrorDomain;
          v29 = 6005;
LABEL_48:
          v66 = [NSError errorWithDomain:v28 code:v29 userInfo:&__NSDictionary0__struct];
          if (v66)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        v51 = self->_primaryUser;
        self->_primaryUser = 0;

        v52 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
          v94 = 2112;
          v95 = v91;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%s Replacing primary user for (%@)", buf, 0x16u);
        }

        v53 = v17;
        v54 = [[ADCommunalDeviceUser alloc] init:v16 sharedUserId:v17 loggableSharedUserId:v90 iCloudAltDSID:v18 attribute:1];
        [v54 setEnrollmentName:v91];
        if (a9)
        {
          [v54 setNonCloudSyncedUserAttribute:1];
        }

        [(ADMultiUserService *)self _updateMappingsForSharedUser:v54];
        [(ADMultiUserService *)self _saveSharedUsers];
        v55 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
          v94 = 2112;
          v95 = v53;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s #multi-user Logging userAddedWithSharedUserID:(%@) for secondary User ", buf, 0x16u);
        }

        v17 = v53;
        [(ADMultiUserService *)self _logRelevantAnalyticsOnUserAddedWithSharedUserID:v53 isPrimary:0];

LABEL_79:
        notify_post(AFCachedFusePersonalizationTokenChanged);
        v66 = 0;
        goto LABEL_80;
      }

      v17 = v39;
    }

    goto LABEL_30;
  }

  v67 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Active voice profile limit reached", buf, 0xCu);
  }

  v68 = +[AFAnalytics sharedAnalytics];
  [v68 logEventWithType:6102 contextProvider:0];

  v66 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6011 userInfo:&__NSDictionary0__struct];
  v69 = +[SiriCoreSymptomsReporter sharedInstance];
  v70 = +[NSProcessInfo processInfo];
  v71 = [v70 processIdentifier];
  v72 = byte_100590548;
  v73 = sub_100097574();
  [v69 reportIssueForError:v66 type:6102 context:&__NSDictionary0__struct processIdentifier:v71 walkboutStatus:v72 triggerForIDSIdentifiers:v73];

  v17 = v89;
  v25 = v90;
  if (!v66)
  {
    goto LABEL_79;
  }

LABEL_80:
  if (v18)
  {
    v80 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v80 addObserver:self foriCloudAltDSId:v18];
  }

  [(ADMultiUserService *)self _updateSAMultiUserInfo];
  if (v20)
  {
    v20[2](v20, v66);
  }
}

- (void)addUser:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 enrollmentName:(id)a7 isPrimary:(BOOL)a8 nonCloudSyncedUser:(BOOL)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADMultiUserService addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(ADMultiUserService *)self _isHostingMultiUserLanguage])
  {
    if (v16)
    {
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = AFIsATV();
      if (!v17 || (v25 & 1) == 0)
      {
LABEL_14:
        if (v21)
        {
          v23 = kAFAssistantErrorDomain;
          v24 = 6002;
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    if (v18 && v20)
    {
      queue = self->_queue;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1002AE33C;
      v28[3] = &unk_100519920;
      v35 = a9;
      v28[4] = self;
      v29 = v16;
      v30 = v17;
      v31 = v18;
      v32 = v19;
      v33 = v20;
      v36 = a8;
      v34 = v21;
      dispatch_async(queue, v28);

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v21)
  {
    v23 = kAFAssistantErrorDomain;
    v24 = 6012;
LABEL_16:
    v27 = [NSError errorWithDomain:v23 code:v24 userInfo:&__NSDictionary0__struct];
    (*(v21 + 2))(v21, v27);
  }

LABEL_17:
}

- (void)_addDeviceOwner:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 audioAppSignals:(id)a7 enrollmentName:(id)a8 companionInfo:(id)a9 shareOwnerName:(id)a10 homeMemberSettings:(id)a11 loggingAllowed:(BOOL)a12 completion:(id)a13
{
  v61 = a3;
  v63 = a4;
  v19 = a5;
  v20 = a6;
  v62 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a13;
  if (!self->_primaryUser)
  {
    v60 = v21;
    v29 = self;
    v30 = AFSiriLogContextDaemon;
    if (self->_deviceOwner)
    {
      v27 = v61;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v65 = "[ADMultiUserService _addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Device owner already exists.", buf, 0xCu);
      }

      LOBYTE(v55) = a12;
      v31 = [(ADMultiUserService *)self _updateDeviceOwner:v61 sharedUserId:v63 enrollmentName:v60 companionInfo:v22 shareOwnerName:v23 homeMemberSettings:v24 loggingAllowed:v55];
      self->_isMultiUserInfoDirty = v31;
      v28 = v19;
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v27 = v61;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315395;
        v65 = "[ADMultiUserService _addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
        v66 = 2113;
        v67 = v63;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s A new device owner will be added:(%{private}@)", buf, 0x16u);
      }

      v36 = [(NSMutableDictionary *)self->_homeUserSettings objectForKey:v61];
      v37 = [v36 objectForKey:@"personalDomainsIsEnabled"];
      v58 = [v37 integerValue] == 1;

      v59 = v36;
      v38 = [v36 objectForKey:@"allowUnauthenticatedRequests"];
      v57 = [v38 integerValue] == 1;

      v39 = [v36 objectForKey:@"allowExplicitContent"];
      v56 = [v39 integerValue] == 1;

      v28 = v19;
      v40 = [[ADCommunalDeviceUser alloc] init:v61 sharedUserId:v63 loggableSharedUserId:v19 iCloudAltDSID:v20 attribute:0];
      deviceOwner = v29->_deviceOwner;
      v29->_deviceOwner = v40;

      [(ADCommunalDeviceUser *)v29->_deviceOwner setEnrollmentName:v60];
      v42 = v29->_deviceOwner;
      [v22 assistantID];
      v44 = v43 = v20;
      [(ADCommunalDeviceUser *)v42 setCompanionAssistantID:v44];

      v45 = v29->_deviceOwner;
      v46 = [v22 speechID];
      [(ADCommunalDeviceUser *)v45 setCompanionSpeechID:v46];

      v47 = v29->_deviceOwner;
      v48 = [v22 idsIdentifier];
      [(ADCommunalDeviceUser *)v47 setCompanionIDSIdentifier:v48];

      v49 = v29->_deviceOwner;
      v50 = [v22 productPrefix];
      [(ADCommunalDeviceUser *)v49 setProductPrefix:v50];

      v51 = v29->_deviceOwner;
      v52 = [v22 aceHost];
      [(ADCommunalDeviceUser *)v51 setAceHost:v52];

      [(ADCommunalDeviceUser *)v29->_deviceOwner setShareOwnerName:v23];
      [(ADCommunalDeviceUser *)v29->_deviceOwner setAllowExplicitContent:v56];
      v53 = v29->_deviceOwner;
      v54 = [v24 dictionary];
      [(ADCommunalDeviceUser *)v53 setSettings:v54];

      v20 = v43;
      [(ADCommunalDeviceUser *)v29->_deviceOwner testAndSetLoggingIsAllowed:a12];
      [(ADCommunalDeviceUser *)v29->_deviceOwner setVoiceIDAllowedByUser:0];
      [(ADCommunalDeviceUser *)v29->_deviceOwner setPersonalDomainsIsEnabled:v58];
      [(ADCommunalDeviceUser *)v29->_deviceOwner setUnauthenticatedRequestsAllowed:v57];
      -[ADCommunalDeviceUser setCompanionPeerToPeerHandoffCapable:](v29->_deviceOwner, "setCompanionPeerToPeerHandoffCapable:", [v22 peerToPeerHandoffCapability]);
      [(ADCommunalDeviceUser *)v29->_deviceOwner setAudioAppSignals:v62];
      v29->_isMultiUserInfoDirty = 1;

      if (!v29->_isMultiUserInfoDirty)
      {
        goto LABEL_9;
      }
    }

    v32 = +[ADPreferences sharedPreferences];
    [(ADCommunalDeviceUser *)v29->_deviceOwner dictionaryRepresentation];
    v34 = v33 = v20;
    [v32 setDeviceOwner:v34];

    v20 = v33;
LABEL_9:
    [(ADMultiUserService *)v29 _saveDeviceOwnerToKeychainCache];
    v35 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v35 addObserver:v29 foriCloudAltDSId:0];

    v21 = v60;
    goto LABEL_10;
  }

  v26 = AFSiriLogContextDaemon;
  v27 = v61;
  v28 = v19;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v65 = "[ADMultiUserService _addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Primary user already exists.", buf, 0xCu);
  }

LABEL_10:
  v25[2](v25, 0);
}

- (BOOL)_updateDeviceOwner:(id)a3 sharedUserId:(id)a4 enrollmentName:(id)a5 companionInfo:(id)a6 shareOwnerName:(id)a7 homeMemberSettings:(id)a8 loggingAllowed:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!self->_primaryUser)
  {
    deviceOwner = self->_deviceOwner;
    if (deviceOwner)
    {
      v24 = [(ADCommunalDeviceUser *)deviceOwner homeUserUUID];
      v25 = v15;
      v26 = v25;
      if (v24 == v25)
      {
      }

      else
      {
        if (!v25 || !v24)
        {

          goto LABEL_17;
        }

        v27 = [v24 isEqual:v25];

        if ((v27 & 1) == 0)
        {
LABEL_17:
          v32 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v33 = self->_deviceOwner;
            v34 = v32;
            v35 = [(ADCommunalDeviceUser *)v33 homeUserUUID];
            *buf = 136315650;
            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
            v113 = 2112;
            v114 = v35;
            v115 = 2112;
            v116 = v26;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Not updating deviceOwner since homeUserUUIDs are different %@, %@", buf, 0x20u);
          }

          goto LABEL_2;
        }
      }

      v28 = [(ADCommunalDeviceUser *)self->_deviceOwner enrollmentName];
      v29 = v17;
      v30 = v29;
      v110 = v16;
      if (v28 == v29)
      {
      }

      else
      {
        if (!v29 || !v28)
        {

LABEL_22:
          v36 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Updating enrollment name", buf, 0xCu);
          }

          [(ADCommunalDeviceUser *)self->_deviceOwner setEnrollmentName:v30];
          v21 = 1;
LABEL_25:
          v37 = [(ADCommunalDeviceUser *)self->_deviceOwner sharedUserID];
          v38 = v110;
          v39 = v38;
          if (v37 == v38)
          {

            goto LABEL_35;
          }

          if (v38 && v37)
          {
            v40 = [v37 isEqual:v38];

            if (v40)
            {
              goto LABEL_35;
            }
          }

          else
          {
          }

          v41 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Updating sharedUserId", buf, 0xCu);
          }

          [(ADCommunalDeviceUser *)self->_deviceOwner setSharedUserID:v39];
          v21 = 1;
LABEL_35:
          v42 = [(ADCommunalDeviceUser *)self->_deviceOwner settings];
          v43 = [v20 dictionary];
          v44 = v42;
          v45 = v43;
          v46 = v45;
          if (v44 == v45)
          {
          }

          else
          {
            if (v44 && v45)
            {
              v47 = [v44 isEqual:v45];

              if (v47)
              {
LABEL_46:
                v50 = [(ADCommunalDeviceUser *)self->_deviceOwner shareOwnerName];
                v51 = v19;
                v52 = v51;
                v108 = v17;
                if (v50 == v51)
                {

                  goto LABEL_56;
                }

                if (v51 && v50)
                {
                  v53 = [v50 isEqual:v51];

                  if (v53)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                }

                v54 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s Updating shareOwner name", buf, 0xCu);
                }

                [(ADCommunalDeviceUser *)self->_deviceOwner setShareOwnerName:v52, v108];
                v21 = 1;
LABEL_56:
                if ([(ADCommunalDeviceUser *)self->_deviceOwner loggingIsAllowed]!= a9)
                {
                  v55 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s Updating loggingIsAllowed", buf, 0xCu);
                  }

                  [(ADCommunalDeviceUser *)self->_deviceOwner testAndSetLoggingIsAllowed:a9];
                  v21 = 1;
                }

                v56 = [(ADCommunalDeviceUser *)self->_deviceOwner companionSpeechID];
                v57 = [v18 speechID];
                v58 = v56;
                v59 = v57;
                v60 = v59;
                if (v58 == v59)
                {
                }

                else
                {
                  if (v58 && v59)
                  {
                    v61 = [v58 isEqual:v59];

                    if (v61)
                    {
LABEL_71:
                      v64 = [(ADCommunalDeviceUser *)self->_deviceOwner companionAssistantID];
                      v65 = [v18 assistantID];
                      v66 = v64;
                      v67 = v65;
                      v68 = v67;
                      v69 = v66 != v67;
                      if (v66 == v67)
                      {
                      }

                      else
                      {
                        if (v66 && v67)
                        {
                          v70 = [v66 isEqual:v67];

                          if (v70)
                          {
                            v69 = 0;
                            goto LABEL_82;
                          }
                        }

                        else
                        {
                        }

                        v71 = AFSiriLogContextDaemon;
                        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                        {
                          *buf = 136315138;
                          v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s Updating companion assistantID", buf, 0xCu);
                        }

                        v72 = self->_deviceOwner;
                        v66 = [v18 assistantID];
                        [(ADCommunalDeviceUser *)v72 setCompanionAssistantID:v66];
                      }

LABEL_82:
                      v73 = [(ADCommunalDeviceUser *)self->_deviceOwner companionIDSIdentifier];
                      v74 = [v18 idsIdentifier];
                      v75 = v73;
                      v76 = v74;
                      v77 = v76;
                      if (v75 == v76)
                      {
                      }

                      else
                      {
                        if (v75 && v76)
                        {
                          v78 = [v75 isEqual:v76];

                          if (v78)
                          {
LABEL_93:
                            v81 = [(ADCommunalDeviceUser *)self->_deviceOwner productPrefix];
                            v82 = [v18 productPrefix];
                            v83 = v81;
                            v84 = v82;
                            v85 = v84;
                            if (v83 == v84)
                            {
                            }

                            else
                            {
                              if (v83 && v84)
                              {
                                v86 = [v83 isEqual:v84];

                                if (v86)
                                {
LABEL_104:
                                  v89 = [(ADCommunalDeviceUser *)self->_deviceOwner aceHost];
                                  v90 = [v18 aceHost];
                                  v91 = v89;
                                  v92 = v90;
                                  v93 = v92;
                                  if (v91 == v92)
                                  {
                                  }

                                  else
                                  {
                                    if (v91 && v92)
                                    {
                                      v94 = [v91 isEqual:v92];

                                      if (v94)
                                      {
LABEL_115:
                                        v97 = [(ADCommunalDeviceUser *)self->_deviceOwner companionPeerToPeerHandoffCapable];
                                        if (v97 != [v18 peerToPeerHandoffCapability])
                                        {
                                          v98 = AFSiriLogContextDaemon;
                                          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                          {
                                            *buf = 136315138;
                                            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%s Updating companion sync metadata capability", buf, 0xCu);
                                          }

                                          -[ADCommunalDeviceUser setCompanionPeerToPeerHandoffCapable:](self->_deviceOwner, "setCompanionPeerToPeerHandoffCapable:", [v18 peerToPeerHandoffCapability]);
                                          v69 = 1;
                                        }

                                        v99 = [v18 companionName];
                                        if (v99 && (-[ADCommunalDeviceUser companionName](self->_deviceOwner, "companionName"), v100 = objc_claimAutoreleasedReturnValue(), v101 = [v100 isEqualToString:v99], v100, (v101 & 1) == 0))
                                        {
                                          v102 = AFSiriLogContextDaemon;
                                          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                          {
                                            *buf = 136315394;
                                            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                            v113 = 2112;
                                            v114 = v99;
                                            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "%s Updating companionName: %@", buf, 0x16u);
                                          }

                                          [(ADCommunalDeviceUser *)self->_deviceOwner setCompanionName:v99];
                                          v17 = v109;
                                        }

                                        else
                                        {
                                          v17 = v109;
                                          if (!v69)
                                          {
LABEL_129:

                                            v16 = v110;
                                            goto LABEL_3;
                                          }
                                        }

                                        v103 = AFSiriLogContextDaemon;
                                        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                        {
                                          v104 = self->_deviceOwner;
                                          v105 = v103;
                                          v106 = [(ADCommunalDeviceUser *)v104 sharedUserID];
                                          *buf = 136315395;
                                          v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                          v113 = 2113;
                                          v114 = v106;
                                          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "%s Posting notification that companion device information/capabilities changed for deviceOwner: (%{private}@)", buf, 0x16u);

                                          v17 = v109;
                                        }

                                        v107 = +[NSNotificationCenter defaultCenter];
                                        [v107 postNotificationName:@"ADMultiUserSharedUserCompanionInfoChangedNotification" object:self->_deviceOwner];

                                        v21 = 1;
                                        goto LABEL_129;
                                      }
                                    }

                                    else
                                    {
                                    }

                                    v95 = AFSiriLogContextDaemon;
                                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                    {
                                      *buf = 136315138;
                                      v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "%s Updating companion aceHost", buf, 0xCu);
                                    }

                                    v96 = self->_deviceOwner;
                                    v91 = [v18 aceHost];
                                    [(ADCommunalDeviceUser *)v96 setAceHost:v91];
                                    v69 = 1;
                                  }

                                  goto LABEL_115;
                                }
                              }

                              else
                              {
                              }

                              v87 = AFSiriLogContextDaemon;
                              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                              {
                                *buf = 136315138;
                                v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%s Updating companion product prefix", buf, 0xCu);
                              }

                              v88 = self->_deviceOwner;
                              v83 = [v18 productPrefix];
                              [(ADCommunalDeviceUser *)v88 setProductPrefix:v83];
                              v21 = 1;
                            }

                            goto LABEL_104;
                          }
                        }

                        else
                        {
                        }

                        v79 = AFSiriLogContextDaemon;
                        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                        {
                          *buf = 136315138;
                          v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s Updating companion IDSIdentifier", buf, 0xCu);
                        }

                        v80 = self->_deviceOwner;
                        v75 = [v18 idsIdentifier];
                        [(ADCommunalDeviceUser *)v80 setCompanionIDSIdentifier:v75];
                        v21 = 1;
                      }

                      goto LABEL_93;
                    }
                  }

                  else
                  {
                  }

                  v62 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%s Updating companion speechID", buf, 0xCu);
                  }

                  v63 = self->_deviceOwner;
                  v58 = [v18 speechID];
                  [(ADCommunalDeviceUser *)v63 setCompanionSpeechID:v58];
                  v21 = 1;
                }

                goto LABEL_71;
              }
            }

            else
            {
            }

            v48 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s Updating HomeKit Settings", buf, 0xCu);
            }

            v49 = self->_deviceOwner;
            v44 = [v20 dictionary];
            [(ADCommunalDeviceUser *)v49 setSettings:v44];
            v21 = 1;
          }

          goto LABEL_46;
        }

        v31 = [v28 isEqual:v29];

        if ((v31 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v21 = 0;
      goto LABEL_25;
    }
  }

LABEL_2:
  v21 = 0;
LABEL_3:

  return v21;
}

- (void)addDeviceOwner:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 audioAppSignals:(id)a7 enrollmentName:(id)a8 companionInfo:(id)a9 shareOwnerName:(id)a10 homeMemberSettings:(id)a11 loggingAllowed:(BOOL)a12 completion:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v32 = a7;
  v22 = a8;
  v31 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a13;
  v26 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[ADMultiUserService addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v27 = v18;
  if (v18 && v19 && v20 && v22)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AFAB4;
    block[3] = &unk_1005198D0;
    block[4] = self;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v32;
    v39 = v22;
    v40 = v31;
    v41 = v23;
    v42 = v24;
    v44 = a12;
    v43 = v25;
    dispatch_async(queue, block);
  }

  else if (v25)
  {
    v29 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(v25 + 2))(v25, v29);
  }
}

- (void)_deleteShareForUser:(id)a3
{
  v4 = a3;
  v5 = [(ADMultiUserService *)self getCloudKitManager];
  [v5 deleteShareForUser:v4 completion:&stru_1005198A8];
}

- (void)_allowVoiceIdentificationForThisUser:(id)a3 iCloudAltDSID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  homeUserSettings = self->_homeUserSettings;
  if (homeUserSettings)
  {
    v12 = [(NSMutableDictionary *)self->_homeUserSettings objectForKey:v8];
    if (v12)
    {
      v13 = v12;
      if (AFIsATVOnly() && [(NSString *)self->_userWithRMVEnabledDuringBuddy isEqualToString:v9])
      {
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v28 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]";
          v29 = 2112;
          v30 = v9;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Now past buddy and sync is done; set RMV enabled for the user requested during buddy flow with iCloudAltDSID %@", buf, 0x16u);
        }

        v15 = [v13 mutableCopy];
        [v15 setObject:&off_100533F20 forKey:@"allowVoiceID"];
        [(NSMutableDictionary *)self->_homeUserSettings setObject:v15 forKey:v8];

        v13 = v15;
      }

      v16 = [v13 objectForKey:@"allowVoiceID"];
      v17 = v16;
      if (v16 && [v16 integerValue] == 1)
      {
        if (v10)
        {
          v10[2](v10, 0);
        }

        goto LABEL_27;
      }

      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]";
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s VoiceID disallowed for (%@) checking with HomeKit as they sometimes miss notifying us.", buf, 0x16u);
      }
    }

    else
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]";
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Missing setting for (%@) checking with HomeKit as they sometimes miss notifying us.", buf, 0x16u);
      }
    }
  }

  if (AFIsATVOnly())
  {
    if (_AFPreferencesSiriRMVSetting() == 2)
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]";
        v29 = 2048;
        v30 = 2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s #multi-user-atv Voice ID allowed for user on ATV with profile in state %ld", buf, 0x16u);
      }

      if (v10)
      {
        v10[2](v10, 0);
      }
    }

    else if (v10)
    {
      v22 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6010 userInfo:&__NSDictionary0__struct];
      (v10)[2](v10, v22);
    }
  }

  else
  {
    v21 = +[ADHomeInfoManager sharedInfoManager];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1002B0034;
    v23[3] = &unk_100519888;
    v23[4] = self;
    v24 = v8;
    v26 = v10;
    v25 = v9;
    [v21 settingsForMultiUserWithRefresh:homeUserSettings != 0 completion:v23];
  }

LABEL_27:
}

- (BOOL)_updateNonHomeUserSettings:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADMultiUserService _updateNonHomeUserSettings:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v4];
  if (!v6)
  {
    v7 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    v8 = [v7 isEqualToString:v4];

    if (v8)
    {
      v6 = self->_primaryUser;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(ADCommunalDeviceUser *)v6 iCloudAltDSID];
    v18 = 136315394;
    v19 = "[ADMultiUserService _updateNonHomeUserSettings:]";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %@", &v18, 0x16u);
  }

  v12 = [(ADCommunalDeviceUser *)v6 iCloudAltDSID];
  v13 = v12;
  if (v6)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (!v14)
  {
    v16 = _AFPreferencesSiriRMVSetting() == 1 || _AFPreferencesSiriRMVSetting() == 2;
    [(ADCommunalDeviceUser *)v6 setVoiceIDAllowedByUser:v16];
  }

  return v15;
}

- (BOOL)_updateHomeKitSettings:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_homeUserSettings objectForKey:v4];
  v6 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:v4];
  if (!v6)
  {
    v7 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    v8 = [v7 isEqualToString:v4];

    if (!v8)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    v6 = self->_primaryUser;
  }

  if (v6)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    [(ADMultiUserService *)self _updateCommunalDeviceUser:v6 withSettings:v5];
    v10 = 1;
  }

LABEL_11:

  return v10;
}

- (void)_updateHomeKitSettingsForDeviceOwner
{
  if (!self->_primaryUser && [(ADMultiUserService *)self _homeKitSettingsDidChangeForDeviceOwner])
  {
    homeUserSettings = self->_homeUserSettings;
    v4 = [(ADCommunalDeviceUser *)self->_deviceOwner homeUserUUID];
    v5 = [(NSMutableDictionary *)homeUserSettings objectForKey:v4];

    [(ADMultiUserService *)self _updateCommunalDeviceUser:self->_deviceOwner withSettings:v5];
    v6 = +[ADPreferences sharedPreferences];
    v7 = [(ADCommunalDeviceUser *)self->_deviceOwner dictionaryRepresentation];
    [v6 setDeviceOwner:v7];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADMultiUserService _updateHomeKitSettingsForDeviceOwner]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Marking MultiUserInfo as dirty", &v9, 0xCu);
    }

    self->_isMultiUserInfoDirty = 1;
  }
}

- (BOOL)_homeKitSettingsDidChangeForDeviceOwner
{
  homeUserSettings = self->_homeUserSettings;
  v4 = [(ADCommunalDeviceUser *)self->_deviceOwner homeUserUUID];
  v5 = [(NSMutableDictionary *)homeUserSettings objectForKey:v4];

  v6 = [v5 objectForKey:@"allowVoiceID"];
  v7 = [v6 integerValue];

  if ((v7 != 1) == [(ADCommunalDeviceUser *)self->_deviceOwner voiceIDAllowedByUser])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(ADMultiUserService *)self personalDomainSettingsDidChange:self->_deviceOwner newUserSettings:v5];
  }

  return v8;
}

- (void)_updateCommunalDeviceUser:(id)a3 withSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"allowVoiceID"];
  v8 = [v6 objectForKey:@"personalDomainsIsEnabled"];
  v9 = [v6 objectForKey:@"allowUnauthenticatedRequests"];
  v10 = [v6 objectForKey:@"allowExplicitContent"];

  v11 = [v7 integerValue];
  v12 = [v5 personalDomainsIsEnabled];
  if (v12 != [v8 BOOLValue])
  {
    [v5 setPersonalDomainsIsEnabled:{objc_msgSend(v8, "BOOLValue")}];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [v5 sharedUserID];
      v20 = 136315395;
      v21 = "[ADMultiUserService _updateCommunalDeviceUser:withSettings:]";
      v22 = 2113;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Posting notification that Personal Domains setting changed for sharedUserId: (%{private}@)", &v20, 0x16u);
    }

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:@"ADMultiUserSharedUserPersonalDomainsChangedNotification" object:v5];
  }

  [v5 setUnauthenticatedRequestsAllowed:{objc_msgSend(v9, "BOOLValue")}];
  [v5 setAllowExplicitContent:{objc_msgSend(v10, "BOOLValue")}];
  [v5 setVoiceIDAllowedByUser:v11 == 1];
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    v19 = [v5 homeUserUUID];
    v20 = 136316419;
    v21 = "[ADMultiUserService _updateCommunalDeviceUser:withSettings:]";
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2113;
    v31 = v19;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s allowExplicitContent: (%@) setVoiceIDAllowedByUser: (%@) personalDomainsIsEnabled: (%@) unauthenticatedRequestsAllowed: (%@) for (%{private}@)", &v20, 0x3Eu);
  }
}

- (BOOL)personalDomainSettingsDidChange:(id)a3 newUserSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"personalDomainsIsEnabled"];
  v8 = [v7 BOOLValue];

  v9 = [v6 objectForKey:@"allowUnauthenticatedRequests"];
  v10 = [v9 BOOLValue];

  v11 = [v6 objectForKey:@"allowExplicitContent"];

  v12 = [v11 BOOLValue];
  if (v8 == [v5 personalDomainsIsEnabled] && v10 == objc_msgSend(v5, "unauthenticatedRequestsAllowed"))
  {
    v13 = v12 ^ [v5 allowExplicitContent];
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (void)_saveDeviceOwnerToKeychainCache
{
  deviceOwner = self->_deviceOwner;
  if (deviceOwner)
  {
    v4 = [(ADCommunalDeviceUser *)deviceOwner sharedUserID];
    if (v4)
    {
      v5 = v4;
      v6 = +[ADPreferences sharedPreferences];
      v7 = [v6 sharedUserIdentifier];
      v8 = [v7 isEqualToString:v5];

      if ((v8 & 1) == 0)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = "[ADMultiUserService _saveDeviceOwnerToKeychainCache]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Saving Device Owner's sharedUserIdentifier to keychain cache", &v15, 0xCu);
        }

        v10 = +[ADPreferences sharedPreferences];
        v11 = [(ADCommunalDeviceUser *)self->_deviceOwner sharedUserID];
        v12 = [(ADCommunalDeviceUser *)self->_deviceOwner loggableSharedUserID];
        [v10 setSharedUserIdentifier:v11 loggingSharedUserIdentifier:v12];
      }
    }

    else
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315138;
        v16 = "[ADMultiUserService _saveDeviceOwnerToKeychainCache]";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Device Owner exists but with a nil sharedUserId", &v15, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[ADMultiUserService _saveDeviceOwnerToKeychainCache]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Device Owner is nil, clearing sharedUserId from keychain cache", &v15, 0xCu);
    }

    v5 = +[ADPreferences sharedPreferences];
    [v5 setSharedUserIdentifier:0 loggingSharedUserIdentifier:0];
  }
}

- (void)_setSharedUserSiriLanguage:(id)a3 forSharedUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[ADMultiUserService _setSharedUserSiriLanguage:forSharedUser:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s siriLanguage:%@ sharedUserID:%@", &v14, 0x20u);
  }

  if (!self->_sharedUsersSiriLanguageBySharedUserID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    sharedUsersSiriLanguageBySharedUserID = self->_sharedUsersSiriLanguageBySharedUserID;
    self->_sharedUsersSiriLanguageBySharedUserID = v9;
  }

  if (v7)
  {
    [(NSMutableDictionary *)self->_sharedUsersSiriLanguageBySharedUserID setValue:v6 forKey:v7];
    v11 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v7];
    v12 = v11;
    if (v11)
    {
      [v11 setCompanionSiriLanguage:v6];
    }

    else
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315138;
        v15 = "[ADMultiUserService _setSharedUserSiriLanguage:forSharedUser:]";
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s No shared user found when updating companion Siri language.", &v14, 0xCu);
      }
    }
  }
}

- (void)_setPrimaryUserSiriLanguage:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADMultiUserService _setPrimaryUserSiriLanguage:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s siriLanguage:%@", &v8, 0x16u);
  }

  primaryUserSiriLanguage = self->_primaryUserSiriLanguage;
  self->_primaryUserSiriLanguage = v4;
  v7 = v4;

  [(ADCommunalDeviceUser *)self->_primaryUser setCompanionSiriLanguage:v7];
}

- (void)_setSharedUserMeDevice:(BOOL)a3 forSharedUser:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[ADMultiUserService _setSharedUserMeDevice:forSharedUser:]";
    v14 = 1024;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s meDevice:%d, sharedUserID:%@", &v12, 0x1Cu);
  }

  sharedUsersMeDeviceBySharedUserID = self->_sharedUsersMeDeviceBySharedUserID;
  if (!sharedUsersMeDeviceBySharedUserID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = self->_sharedUsersMeDeviceBySharedUserID;
    self->_sharedUsersMeDeviceBySharedUserID = v9;

    sharedUsersMeDeviceBySharedUserID = self->_sharedUsersMeDeviceBySharedUserID;
  }

  v11 = [NSNumber numberWithBool:v4];
  [(NSMutableDictionary *)sharedUsersMeDeviceBySharedUserID setValue:v11 forKey:v6];
}

- (void)_setPrimaryUserMeDevice:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADMultiUserService _setPrimaryUserMeDevice:]";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s meDevice:%d", &v6, 0x12u);
  }

  self->_primaryUserMeDevice = v3;
}

- (void)_saveSharedUsers
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADMultiUserService _saveSharedUsers]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_sharedUsersBySharedUserID;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:*(*(&v33 + 1) + 8 * v9)];
        if (([v10 nonCloudSyncedUser] & 1) == 0)
        {
          if (AFIsATVOnly())
          {
            v11 = [v10 iCloudAltDSID];

            if (v11)
            {
              v12 = [v10 iCloudAltDSID];
              if (_AFPreferencesSiriRMVSetting() == 1)
              {
                [v10 setVoiceIDAllowedByUser:1];
              }

              else
              {
                v13 = [v10 iCloudAltDSID];
                [v10 setVoiceIDAllowedByUser:_AFPreferencesSiriRMVSetting() == 2];
              }
            }
          }

          v14 = [v10 dictionaryRepresentation];
          [v4 addObject:v14];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  if (+[AFFeatureFlags isLassoEnabled])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = self->_sharedUsersByiCloudAltDSID;
    v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        v19 = 0;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID objectForKey:*(*(&v29 + 1) + 8 * v19), v29];
          v21 = [v20 sharedUserID];

          if (!v21)
          {
            v22 = [v20 dictionaryRepresentation];
            [v4 addObject:v22];
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v17);
    }
  }

  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[ADMultiUserService _saveSharedUsers]";
    v39 = 2112;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v24 = v4;
  if (![v4 count])
  {
    v25 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[ADMultiUserService _saveSharedUsers]";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Did not find any shared users to save", buf, 0xCu);
    }

    v24 = 0;
  }

  v26 = +[ADPreferences sharedPreferences];
  [v26 setMultiUserSharedUsers:v24];

  primaryUser = self->_primaryUser;
  if (primaryUser && ![(ADCommunalDeviceUser *)primaryUser nonCloudSyncedUser])
  {
    [(ADMultiUserService *)self _savePrimaryAndDeviceOwner];
  }

  else
  {
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[ADMultiUserService _saveSharedUsers]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Did not find any primary user to save", buf, 0xCu);
    }

    [(ADPreferences *)self->_adPreferences setMultiUserPrimaryUser:0];
  }
}

- (void)_savePrimaryAndDeviceOwner
{
  if (AFIsATVOnly())
  {
    v3 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];

    if (v3)
    {
      primaryUser = self->_primaryUser;
      v5 = [(ADCommunalDeviceUser *)primaryUser iCloudAltDSID];
      if (_AFPreferencesSiriRMVSetting() == 1)
      {
        [(ADCommunalDeviceUser *)primaryUser setVoiceIDAllowedByUser:1];
      }

      else
      {
        v6 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];
        [(ADCommunalDeviceUser *)primaryUser setVoiceIDAllowedByUser:_AFPreferencesSiriRMVSetting() == 2];
      }
    }
  }

  v7 = +[ADPreferences sharedPreferences];
  v8 = [(ADCommunalDeviceUser *)self->_primaryUser dictionaryRepresentation];
  [v7 setMultiUserPrimaryUser:v8];

  v9 = +[ADPreferences sharedPreferences];
  v10 = [(ADCommunalDeviceUser *)self->_deviceOwner dictionaryRepresentation];
  [v9 setDeviceOwner:v10];

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[ADMultiUserService _savePrimaryAndDeviceOwner]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Posting notification as primary user info updated", &v13, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFSharedUserUpdateDarwinNotification, 0, 0, 1u);
}

- (void)_updateSAMultiUserInfo
{
  v3 = objc_alloc_init(SAMultiUserInfo);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(SAMultiUserInfo *)self->_multiUserInfo homeMembers];
  v6 = [v5 count] != 0;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    usersWithAvailableVoiceProfiles = self->_usersWithAvailableVoiceProfiles;
    v9 = v7;
    v10 = [(NSMutableArray *)usersWithAvailableVoiceProfiles count];
    v11 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID count];
    v12 = [(SAMultiUserInfo *)self->_multiUserInfo homeMembers];
    *buf = 136315906;
    *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v41 = v11;
    v42 = 2048;
    v43 = [v12 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s _usersWithAvailableVoiceProfiles: %lu, _sharedUsersBySharedUserID: %lu, multiUsersPreviousCount: %lu", buf, 0x2Au);
  }

  if ([(ADMultiUserService *)self _isHostingMultiUserLanguage])
  {
    v13 = [(ADMultiUserService *)self _homeMembersForPlatform];

    v4 = v13;
  }

  else
  {
    v6 = 0;
  }

  if (self->_pitchesForHomeMembers)
  {
    [v3 setMultiUserPitchComposition:?];
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s No pitches available for HomeMembers", buf, 0xCu);
    }
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v30 = v15;
    v31 = [v4 count];
    *buf = 136315394;
    *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
    *&buf[12] = 2048;
    *&buf[14] = v31;
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s homeMembers: %lu", buf, 0x16u);
  }

  if ([v4 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002B2044;
    v33[3] = &unk_100519860;
    v33[4] = buf;
    [v4 enumerateObjectsUsingBlock:v33];
    if (*(*&buf[8] + 24))
    {
      v16 = [NSString stringWithFormat:@"%lu", *(*&buf[8] + 24)];
      v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v4 count]);
      v18 = +[AFAnalytics sharedAnalytics];
      v38[0] = @"missing_count";
      v38[1] = @"total";
      v39[0] = v16;
      v39[1] = v17;
      v19 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      [v18 logEventWithType:6117 context:v19];
    }

    if (self->_saUnknownUser)
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v32 = [(SAHomeMemberInfo *)self->_saUnknownUser sharedUserId];
        *v34 = 136315395;
        v35 = "[ADMultiUserService _updateSAMultiUserInfo]";
        v36 = 2113;
        v37 = v32;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s adding _saUnknownUser: %{private}@", v34, 0x16u);
      }

      [v4 addObject:self->_saUnknownUser];
    }

    [v3 setHomeMembers:v4];
    _Block_object_dispose(buf, 8);
  }

  else if (v6)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Send empty MultiUserInfo", buf, 0xCu);
    }

    [v3 setHomeMembers:0];
  }

  v22 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
  v23 = [v22 count];

  [v3 setVoiceProfilesAreInFlight:v23 != 0];
  v24 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
    *&buf[12] = 1024;
    *&buf[14] = v23 != 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s MultiUserInfo profiles are in-flight: %{BOOL}d", buf, 0x12u);
  }

  v25 = [(SAMultiUserInfo *)self->_multiUserInfo dictionary];
  v26 = [v3 dictionary];
  v27 = [v25 isEqualToDictionary:v26];

  if ((v27 & 1) == 0)
  {
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Marking MultiUserInfo as dirty", buf, 0xCu);
    }

    objc_storeStrong(&self->_multiUserInfo, v3);
    self->_isMultiUserInfoDirty = 1;
    [(ADMultiUserService *)self _describeSAMultiUserInfo:v4];
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 postNotificationName:@"ADMultiUsersDidChangeNotification" object:0];
  }
}

- (id)_homeMembersForPlatform
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v97 = "[ADMultiUserService _homeMembersForPlatform]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v89 = objc_alloc_init(NSMutableArray);
  v86 = self;
  primaryUser = self->_primaryUser;
  v6 = AFSiriLogContextDaemon;
  v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  p_vtable = ADAnalyticsIdentifiersProvider.vtable;
  if (primaryUser)
  {
    if (v7)
    {
      v69 = v6;
      v70 = [(ADCommunalDeviceUser *)primaryUser companionAssistantID];
      v71 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      v72 = [(ADCommunalDeviceUser *)self->_primaryUser voiceIDAllowedByUser];
      v73 = [(ADCommunalDeviceUser *)v86->_primaryUser nonCloudSyncedUser];
      *buf = 136316163;
      v97 = "[ADMultiUserService _homeMembersForPlatform]";
      v98 = 2113;
      v99 = v70;
      v100 = 2113;
      v101 = v71;
      v102 = 2048;
      v103 = v72;
      v104 = 2048;
      v105 = v73;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "%s _primaryUser companionAssistantID: %{private}@, sharedUserID: %{private}@, voiceIDAllowedByUser=%lu, nonCloudSyncedUser=%lu", buf, 0x34u);

      primaryUser = v86->_primaryUser;
      p_vtable = (ADAnalyticsIdentifiersProvider + 24);
    }

    v9 = [(ADCommunalDeviceUser *)primaryUser companionAssistantID];

    if (v9)
    {
      v10 = [p_vtable + 17 saHomeMemberInfo:v86->_primaryUser];
      if (v10 && ([(ADCommunalDeviceUser *)v86->_primaryUser voiceIDAllowedByUser]|| [(ADCommunalDeviceUser *)v86->_primaryUser nonCloudSyncedUser]))
      {
        usersWithAvailableVoiceProfiles = v86->_usersWithAvailableVoiceProfiles;
        v12 = [(ADCommunalDeviceUser *)v86->_primaryUser sharedUserID];
        LODWORD(usersWithAvailableVoiceProfiles) = [(NSMutableArray *)usersWithAvailableVoiceProfiles containsObject:v12];

        if (usersWithAvailableVoiceProfiles)
        {
          [v89 addObject:v10];
          v13 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v74 = v86->_primaryUser;
            v75 = v13;
            v76 = [(ADCommunalDeviceUser *)v74 sharedUserID];
            v77 = [(ADCommunalDeviceUser *)v86->_primaryUser homeUserUUID];
            v78 = [(ADCommunalDeviceUser *)v86->_primaryUser iCloudAltDSID];
            v79 = [(ADCommunalDeviceUser *)v86->_primaryUser ephemeralID];
            *buf = 136316163;
            v97 = "[ADMultiUserService _homeMembersForPlatform]";
            v98 = 2113;
            v99 = v76;
            v100 = 2113;
            v101 = v77;
            v102 = 2113;
            v103 = v78;
            v104 = 2113;
            v105 = v79;
            _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "%s Adding primaryUser with sharedUserId %{private}@ and homeUserUUID %{private}@ and iCloudAltDSID %{private}@ and ephemeralID %{private}@", buf, 0x34u);
          }

          v14 = [v10 lastVisitedAceHost];

          if (!v14)
          {
            v15 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v16 = v86->_primaryUser;
              v17 = v15;
              v18 = [(ADCommunalDeviceUser *)v16 sharedUserID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s PrimaryUser %{private}@ has nil aceHost", buf, 0x16u);
            }
          }

          if ([(ADMultiUserService *)v86 _isTrackingUUIDForInFlightVoiceProfile:v86->_primaryUser])
          {
            v19 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v20 = v86->_primaryUser;
              v21 = v19;
              v22 = [(ADCommunalDeviceUser *)v20 homeUserUUID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s HomeUserID (%{private}@) voice profile is available but it's still being tracked as in-flight. Stop tracking it", buf, 0x16u);
            }

            [(ADMultiUserService *)v86 _untrackUUIDsForUser:v86->_primaryUser];
          }
        }
      }
    }
  }

  else if (v7)
  {
    *buf = 136315138;
    v97 = "[ADMultiUserService _homeMembersForPlatform]";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s _primaryUser is nil", buf, 0xCu);
  }

  v23 = v86;
  if (AFIsATV())
  {
    if (!v86->_primaryUser)
    {
      deviceOwner = v86->_deviceOwner;
      if (deviceOwner)
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v97 = "[ADMultiUserService _homeMembersForPlatform]";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s primary User is nil but we have a device owner.", buf, 0xCu);
          deviceOwner = v86->_deviceOwner;
        }

        v26 = [p_vtable + 17 saHomeMemberInfo:deviceOwner];
        if (v26 && ([(ADCommunalDeviceUser *)v86->_deviceOwner voiceIDAllowedByUser]|| [(ADCommunalDeviceUser *)v86->_deviceOwner nonCloudSyncedUser]))
        {
          v27 = v86->_usersWithAvailableVoiceProfiles;
          v28 = [(ADCommunalDeviceUser *)v86->_deviceOwner sharedUserID];
          LODWORD(v27) = [(NSMutableArray *)v27 containsObject:v28];

          if (v27)
          {
            [v89 addObject:v26];
            v29 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              v80 = v86->_deviceOwner;
              v81 = v29;
              v82 = [(ADCommunalDeviceUser *)v80 sharedUserID];
              v83 = [(ADCommunalDeviceUser *)v86->_deviceOwner homeUserUUID];
              v84 = [(ADCommunalDeviceUser *)v86->_deviceOwner iCloudAltDSID];
              *buf = 136315907;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = v82;
              v100 = 2113;
              v101 = v83;
              v102 = 2113;
              v103 = v84;
              _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "%s Adding device owner with sharedUserId %{private}@ and homeUserUUID %{private}@ and iCloudAltDSID %{private}@", buf, 0x2Au);
            }

            v30 = [v26 lastVisitedAceHost];

            if (!v30)
            {
              v31 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v32 = v86->_deviceOwner;
                v33 = v31;
                v34 = [(ADCommunalDeviceUser *)v32 sharedUserID];
                *buf = 136315395;
                v97 = "[ADMultiUserService _homeMembersForPlatform]";
                v98 = 2113;
                v99 = v34;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s device owner %{private}@ has nil aceHost", buf, 0x16u);
              }
            }

            if ([(ADMultiUserService *)v86 _isTrackingUUIDForInFlightVoiceProfile:v86->_deviceOwner])
            {
              v35 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v36 = v86->_deviceOwner;
                v37 = v35;
                v38 = [(ADCommunalDeviceUser *)v36 homeUserUUID];
                *buf = 136315395;
                v97 = "[ADMultiUserService _homeMembersForPlatform]";
                v98 = 2113;
                v99 = v38;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s HomeUserID (%{private}@) voice profile is available but it's still being tracked as in-flight. Stop tracking it", buf, 0x16u);
              }

              [(ADMultiUserService *)v86 _untrackUUIDsForUser:v86->_deviceOwner];
            }
          }
        }

        v23 = v86;
      }
    }
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v23->_sharedUsersBySharedUserID;
  v39 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (v39)
  {
    v41 = v39;
    v91 = *v93;
    *&v40 = 136316163;
    v85 = v40;
    do
    {
      v42 = 0;
      do
      {
        if (*v93 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v92 + 1) + 8 * v42);
        v44 = [(NSMutableDictionary *)v23->_sharedUsersBySharedUserID objectForKey:v43, v85];
        v45 = [p_vtable + 17 saHomeMemberInfo:v44];
        v46 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          loga = v46;
          v59 = [v44 voiceIDAllowedByUser];
          v60 = [v44 companionAssistantID];
          v61 = [v44 nonCloudSyncedUser];
          v62 = [v44 ephemeralID];
          *buf = 136316419;
          v97 = "[ADMultiUserService _homeMembersForPlatform]";
          v98 = 2113;
          v99 = v43;
          v100 = 2048;
          v101 = v59;
          v23 = v86;
          v102 = 2113;
          v103 = v60;
          v104 = 2048;
          v105 = v61;
          v106 = 2113;
          v107 = v62;
          _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "%s sharedUserId: %{private}@, voiceIDAllowedByUser: %lu, companionAssistantID: %{private}@, nonCloudSyncedUser: %lu, ephemeralID: %{private}@", buf, 0x3Eu);

          p_vtable = (ADAnalyticsIdentifiersProvider + 24);
          if (!v45)
          {
            goto LABEL_68;
          }
        }

        else if (!v45)
        {
          goto LABEL_68;
        }

        v47 = [v44 voiceIDAllowedByUser];
        if (!v47)
        {
          if (![v44 nonCloudSyncedUser])
          {
            goto LABEL_68;
          }

LABEL_54:
          v48 = v23->_usersWithAvailableVoiceProfiles;
          v49 = [v44 sharedUserID];
          v50 = [(NSMutableArray *)v48 containsObject:v49];

          if (v47)
          {

            if ((v50 & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          else if (!v50)
          {
LABEL_67:
            p_vtable = (ADAnalyticsIdentifiersProvider + 24);
            goto LABEL_68;
          }

          [v89 addObject:v45];
          v51 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            log = v51;
            v63 = [v44 sharedUserID];
            v64 = [v44 homeUserUUID];
            v65 = [v44 iCloudAltDSID];
            v66 = [v44 ephemeralID];
            *buf = v85;
            v97 = "[ADMultiUserService _homeMembersForPlatform]";
            v98 = 2113;
            v99 = v63;
            v100 = 2113;
            v101 = v64;
            v102 = 2113;
            v103 = v65;
            v104 = 2113;
            v105 = v66;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s Adding user with sharedUserId %{private}@ and homeUserUUID %{private}@ and iCloudAltDSID %{private}@ and ephemeralID %{private}@", buf, 0x34u);
          }

          v52 = [v45 lastVisitedAceHost];

          if (!v52)
          {
            v53 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v54 = v53;
              v55 = [v44 sharedUserID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = v55;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s SharedUser %{private}@ has nil aceHost", buf, 0x16u);
            }
          }

          if ([(ADMultiUserService *)v23 _isTrackingUUIDForInFlightVoiceProfile:v44])
          {
            v56 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v57 = v56;
              v58 = [v44 homeUserUUID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = v58;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s removed HomeUserID (%{private}@) voice profile is available but it's still being tracked as in-flight. Stop tracking it", buf, 0x16u);
            }

            [(ADMultiUserService *)v23 _untrackUUIDsForUser:v44];
          }

          goto LABEL_67;
        }

        v2 = [v44 companionAssistantID];
        if (v2 || ([v44 nonCloudSyncedUser] & 1) != 0)
        {
          goto LABEL_54;
        }

LABEL_68:

        v42 = v42 + 1;
      }

      while (v41 != v42);
      v67 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v92 objects:v108 count:16];
      v41 = v67;
    }

    while (v67);
  }

  return v89;
}

- (void)_describeSAMultiUserInfo:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[ADMultiUserService _describeSAMultiUserInfo:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Home members array is empty", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = v11;
          v14 = [v12 enrollmentName];
          v15 = [v12 sharedUserId];
          v16 = [v12 ephemeralUserId];
          *buf = 136315907;
          v22 = "[ADMultiUserService _describeSAMultiUserInfo:]";
          v23 = 2113;
          v24 = v14;
          v25 = 2113;
          v26 = v15;
          v27 = 2113;
          v28 = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s homeMember enrollmentName: %{private}@ sharedUserId: %{private}@, ephemeralId: %{private}@", buf, 0x2Au);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v8);
  }
}

- (unint64_t)countUsersWithMatchingSiriLanguage
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 languageCode];

  if (self->_primaryUser)
  {
    v5 = [v4 isEqualToString:self->_primaryUserSiriLanguage];
    v6 = AFSiriLogContextDaemon;
    v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        primaryUser = self->_primaryUser;
        v28 = v6;
        v29 = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
        v30 = [(ADCommunalDeviceUser *)self->_primaryUser settings];
        v31 = [v30 objectForKey:SAHomeMemberSettingsPreferredLanguagePListKey];
        *buf = 136315906;
        v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
        v53 = 2112;
        v54 = v29;
        v55 = 2112;
        v56 = v31;
        v57 = 2048;
        v8 = 1;
        v58 = 1;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s Primary user's Siri language matches HomePod's. sharedUserId: %@, device language: %@, current count: %lu", buf, 0x2Au);
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_9;
    }

    if (v7)
    {
      primaryUserSiriLanguage = self->_primaryUserSiriLanguage;
      v33 = self->_primaryUser;
      v34 = v6;
      v35 = [(ADCommunalDeviceUser *)v33 settings];
      v36 = [v35 objectForKey:SAHomeMemberSettingsPreferredLanguagePListKey];
      v37 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      *buf = 136316162;
      v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
      v53 = 2112;
      v54 = primaryUserSiriLanguage;
      v55 = 2112;
      v56 = v36;
      v57 = 2112;
      v58 = v37;
      v59 = 2048;
      v60 = 0;
      _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%s Primary user's Siri language (%@) doesn't match HomePod's. sharedUserId: %@, device language: %@, current count: %lu", buf, 0x34u);
    }
  }

  v8 = 0;
LABEL_9:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_sharedUsersBySharedUserID;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v9)
  {
    goto LABEL_23;
  }

  v11 = v9;
  v12 = *v47;
  v44 = SAHomeMemberSettingsPreferredLanguagePListKey;
  *&v10 = 136316162;
  v38 = v10;
  do
  {
    v13 = 0;
    do
    {
      if (*v47 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKeyedSubscript:*(*(&v46 + 1) + 8 * v13), v38];
      sharedUsersSiriLanguageBySharedUserID = self->_sharedUsersSiriLanguageBySharedUserID;
      v16 = [v14 sharedUserID];
      v17 = [(NSMutableDictionary *)sharedUsersSiriLanguageBySharedUserID objectForKeyedSubscript:v16];

      if ([v4 isEqualToString:v17])
      {
        ++v8;
        v18 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        log = v18;
        v40 = [v14 sharedUserID];
        v41 = [v14 settings];
        v39 = [v41 objectForKey:v44];
        *buf = 136315906;
        v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
        v53 = 2112;
        v54 = v40;
        v55 = 2112;
        v56 = v39;
        v57 = 2048;
        v58 = v8;
        v19 = log;
        v20 = log;
        v21 = "%s Secondary user's Siri language code matches HomePod's. sharedUserId: %@, device language: %@, current count: %lu";
        v22 = 42;
      }

      else
      {
        v23 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        loga = v23;
        v40 = [v14 sharedUserID];
        v41 = [v14 settings];
        v39 = [v41 objectForKey:v44];
        *buf = v38;
        v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
        v53 = 2112;
        v54 = v17;
        v55 = 2112;
        v56 = v40;
        v57 = 2112;
        v58 = v39;
        v59 = 2048;
        v60 = v8;
        v19 = loga;
        v20 = loga;
        v21 = "%s Secondary user's Siri language code (%@) doesn't match HomePod's. sharedUserId: %@, device language: %@, current count: %lu";
        v22 = 52;
      }

      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v21, buf, v22);

LABEL_18:
      v13 = v13 + 1;
    }

    while (v11 != v13);
    v24 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    v11 = v24;
  }

  while (v24);
LABEL_23:

  v25 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
    v53 = 2112;
    v54 = v4;
    v55 = 2048;
    v56 = v8;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Total users with matching Siri languages to HomePod's (%@): %lu", buf, 0x20u);
  }

  return v8;
}

- (unint64_t)countUsersWithLocationServicesEnabled
{
  primaryUser = self->_primaryUser;
  if (primaryUser)
  {
    primaryUserMeDevice = self->_primaryUserMeDevice;
    v5 = AFSiriLogContextDaemon;
    v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (primaryUserMeDevice)
    {
      if (v6)
      {
        v28 = v5;
        v29 = [primaryUser sharedUserID];
        *buf = 136315650;
        v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
        v39 = 2112;
        v40 = v29;
        v41 = 2048;
        primaryUser = 1;
        v42 = 1;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s Primary user's location sharing enabled (meDevice). sharedUserId: %@, current count: %lu", buf, 0x20u);
      }

      else
      {
        primaryUser = 1;
      }
    }

    else
    {
      if (v6)
      {
        v30 = v5;
        v31 = [primaryUser sharedUserID];
        *buf = 136315650;
        v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
        v39 = 2112;
        v40 = v31;
        v41 = 2048;
        v42 = 0;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s Primary user's location sharing disabled (not meDevice). sharedUserId: %@, current count: %lu", buf, 0x20u);
      }

      primaryUser = 0;
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_sharedUsersBySharedUserID;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v34;
    *&v9 = 136315906;
    v32 = v9;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        v14 = v11;
        if (*v34 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:*(*(&v33 + 1) + 8 * i), v32];

        sharedUsersMeDeviceBySharedUserID = self->_sharedUsersMeDeviceBySharedUserID;
        v16 = [v11 sharedUserID];
        v17 = [(NSMutableDictionary *)sharedUsersMeDeviceBySharedUserID objectForKey:v16];

        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            ++primaryUser;
            v24 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            v19 = v24;
            v20 = [v11 sharedUserID];
            *buf = v32;
            v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
            v39 = 2112;
            v40 = v17;
            v41 = 2112;
            v42 = v20;
            v43 = 2048;
            v44 = primaryUser;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Secondary user's meDevice enablement field is corrupted. Counting as having a meDevice. value: %@, sharedUserId: %@, current count: %lu", buf, 0x2Au);
            goto LABEL_25;
          }

          if ([v17 BOOLValue])
          {
            ++primaryUser;
            v18 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_26;
            }

            v19 = v18;
            v20 = [v11 sharedUserID];
            *buf = 136315650;
            v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
            v39 = 2112;
            v40 = v20;
            v41 = 2048;
            v42 = primaryUser;
            v21 = v19;
            v22 = "%s Secondary user's device is meDevce. sharedUserId: %@, current count: %lu";
          }

          else
          {
            v25 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_26;
            }

            v19 = v25;
            v20 = [v11 sharedUserID];
            *buf = 136315650;
            v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
            v39 = 2112;
            v40 = v20;
            v41 = 2048;
            v42 = primaryUser;
            v21 = v19;
            v22 = "%s Secondary user's device is not meDevice. sharedUserId: %@, current count: %lu";
          }
        }

        else
        {
          ++primaryUser;
          v23 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_26;
          }

          v19 = v23;
          v20 = [v11 sharedUserID];
          *buf = 136315650;
          v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
          v39 = 2112;
          v40 = v20;
          v41 = 2048;
          v42 = primaryUser;
          v21 = v19;
          v22 = "%s Secondary user's meDevice enablement field doesn't exist. It may not have been uploaded yet. Counting as having a meDevice. sharedUserId: %@, current count: %lu";
        }

        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0x20u);
LABEL_25:

LABEL_26:
      }

      v10 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (!v10)
      {

        break;
      }
    }
  }

  v26 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
    v39 = 2048;
    v40 = primaryUser;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Total location sharing enabled users : %lu", buf, 0x16u);
  }

  return primaryUser;
}

- (unint64_t)countUsersWithPersonalRequestsEnabled
{
  primaryUser = self->_primaryUser;
  if (primaryUser)
  {
    v4 = [(ADCommunalDeviceUser *)primaryUser personalDomainsIsEnabled];
    v5 = AFSiriLogContextDaemon;
    v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        v25 = self->_primaryUser;
        v26 = v5;
        v27 = [(ADCommunalDeviceUser *)v25 sharedUserID];
        *buf = 136315650;
        v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
        v39 = 2112;
        v40 = v27;
        v41 = 2048;
        v7 = 1;
        v42 = 1;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Primary user's Siri personal requests enabled. sharedUserId: %@, current count: %lu", buf, 0x20u);
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_8;
    }

    if (v6)
    {
      v28 = self->_primaryUser;
      v29 = v5;
      v30 = [(ADCommunalDeviceUser *)v28 sharedUserID];
      *buf = 136315650;
      v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
      v39 = 2112;
      v40 = v30;
      v41 = 2048;
      v42 = 0;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Primary user's Siri personal requests disabled. sharedUserId: %@, current count: %lu", buf, 0x20u);
    }
  }

  v7 = 0;
LABEL_8:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_sharedUsersBySharedUserID;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v9)
  {
    goto LABEL_23;
  }

  v11 = v9;
  v12 = 0;
  v13 = *v33;
  *&v10 = 136315650;
  v31 = v10;
  do
  {
    v14 = 0;
    do
    {
      v15 = v12;
      if (*v33 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v12 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:*(*(&v32 + 1) + 8 * v14), v31, v32];

      if ([v12 personalDomainsIsEnabled])
      {
        ++v7;
        v16 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        v17 = v16;
        v18 = [v12 sharedUserID];
        *buf = v31;
        v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
        v39 = 2112;
        v40 = v18;
        v41 = 2048;
        v42 = v7;
        v19 = v17;
        v20 = "%s Secondary user's personal requests enabled. sharedUserId: %@, current count: %lu";
      }

      else
      {
        v21 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        v17 = v21;
        v18 = [v12 sharedUserID];
        *buf = v31;
        v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
        v39 = 2112;
        v40 = v18;
        v41 = 2048;
        v42 = v7;
        v19 = v17;
        v20 = "%s Secondary user's personal requests disabled. sharedUserId: %@, current count: %lu";
      }

      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0x20u);

LABEL_17:
      v14 = v14 + 1;
    }

    while (v11 != v14);
    v22 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    v11 = v22;
  }

  while (v22);

LABEL_23:
  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
    v39 = 2048;
    v40 = v7;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Total personal requests enabled users : %lu", buf, 0x16u);
  }

  return v7;
}

- (unint64_t)countUsersWithSiriCloudSyncEnabled
{
  sharedUsersSiriCloudSyncBySharedUserID = self->_sharedUsersSiriCloudSyncBySharedUserID;
  if (sharedUsersSiriCloudSyncBySharedUserID)
  {
    if ([(NSMutableDictionary *)sharedUsersSiriCloudSyncBySharedUserID count]>= 0x65)
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v28 = self->_sharedUsersSiriCloudSyncBySharedUserID;
        v29 = v4;
        *buf = 136315650;
        v37 = "[ADMultiUserService countUsersWithSiriCloudSyncEnabled]";
        v38 = 2048;
        v39 = 100;
        v40 = 2048;
        v41 = [(NSMutableDictionary *)v28 count];
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Clean up as the count is greater than %lu. _sharedUsersSiriCloudSyncBySharedUserID: %lu", buf, 0x20u);
      }

      [(NSMutableDictionary *)self->_sharedUsersSiriCloudSyncBySharedUserID removeAllObjects];
    }
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = self->_sharedUsersSiriCloudSyncBySharedUserID;
    self->_sharedUsersSiriCloudSyncBySharedUserID = v5;
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    sharedUsersByHomeUserUUID = self->_sharedUsersByHomeUserUUID;
    v25 = v7;
    v26 = [(NSMutableDictionary *)sharedUsersByHomeUserUUID count];
    v27 = [(NSMutableDictionary *)self->_sharedUsersSiriCloudSyncBySharedUserID count];
    *buf = 136315650;
    v37 = "[ADMultiUserService countUsersWithSiriCloudSyncEnabled]";
    v38 = 2048;
    v39 = v26;
    v40 = 2048;
    v41 = v27;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s _sharedUsersByHomeUserUUID: %lu _sharedUsersSiriCloudSyncBySharedUserID: %lu", buf, 0x20u);

    v7 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v37 = "[ADMultiUserService countUsersWithSiriCloudSyncEnabled]";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Checking if primary user has enabled cloudsync.", buf, 0xCu);
  }

  v8 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
  v9 = [(ADMultiUserService *)self addIfSiriCloudSyncEnabledForUser:v8];

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v37 = "[ADMultiUserService countUsersWithSiriCloudSyncEnabled]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Checking if shared users have enabled cloudsync.", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = self->_sharedUsersBySharedUserID;
  v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = 0;
    v16 = *v32;
    *&v13 = 136315394;
    v30 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        v18 = v15;
        if (*v32 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v19, v30, v31];

        if (v15)
        {
          v20 = [v15 sharedUserID];
          v9 += [(ADMultiUserService *)self addIfSiriCloudSyncEnabledForUser:v20];
        }

        else
        {
          v21 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = v30;
            v37 = "[ADMultiUserService countUsersWithSiriCloudSyncEnabled]";
            v38 = 2112;
            v39 = v19;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s sharedUser was not found. sharedUserID: %@", buf, 0x16u);
          }
        }
      }

      v14 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v37 = "[ADMultiUserService countUsersWithSiriCloudSyncEnabled]";
    v38 = 2048;
    v39 = v9;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Total Siri Cloud Sync requests enabled users : %lu", buf, 0x16u);
  }

  return v9;
}

- (unint64_t)addIfSiriCloudSyncEnabledForUser:(id)a3
{
  v4 = a3;
  v5 = sub_10001A3B0(v4);
  v6 = [(NSMutableDictionary *)self->_sharedUsersSiriCloudSyncBySharedUserID objectForKey:v4];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_sharedUsersSiriCloudSyncBySharedUserID objectForKey:v4];
    v8 = [v7 BOOLValue];

    if (v5)
    {
LABEL_3:
      v9 = [v5 isSiriCloudSyncEnabled];
      v10 = AFSiriLogContextDaemon;
      v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v11)
        {
          v17 = 136315906;
          v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
          v19 = 1024;
          v20 = v8;
          v21 = 2112;
          v22 = v4;
          v23 = 2048;
          v8 = 1;
          v24 = 1;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s PeerInfo found - user's Siri cloud sync is enabled. oldCloudSyncEnabled: %d, sharedUserId: %@, current count: %lu", &v17, 0x26u);
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        if (v11)
        {
          v17 = 136315906;
          v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
          v19 = 1024;
          v20 = v8;
          v21 = 2112;
          v22 = v4;
          v23 = 2048;
          v24 = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s PeerInfo found - user's Siri cloud sync is disabled. oldCloudSyncEnabled: %d, sharedUserId: %@, current count: %lu", &v17, 0x26u);
        }

        v8 = 0;
      }

      sharedUsersSiriCloudSyncBySharedUserID = self->_sharedUsersSiriCloudSyncBySharedUserID;
      v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isSiriCloudSyncEnabled]);
      [(NSMutableDictionary *)sharedUsersSiriCloudSyncBySharedUserID setObject:v15 forKey:v4];

      goto LABEL_17;
    }
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s User's oldCloudSyncEnabled was not found. Defaulting to YES.", &v17, 0xCu);
    }

    v8 = 1;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s PeerInfo NOT found", &v17, 0xCu);
    v13 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315906;
    v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
    v19 = 1024;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = v8;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s oldCloudSyncEnabled:%d sharedUserId: %@, current count: %lu", &v17, 0x26u);
  }

LABEL_17:

  return v8;
}

- (unint64_t)countVoiceProfiles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002B4600;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)_countVoiceProfiles
{
  voiceProfileManager = self->_voiceProfileManager;
  if (voiceProfileManager)
  {
    v3 = [(SSRVoiceProfileManager *)voiceProfileManager provisionedVoiceProfilesForAppDomain:@"com.apple.siri" withLocale:0];
    v4 = [v3 count];

    return v4;
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADMultiUserService _countVoiceProfiles]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s SSRVoiceProfileManager not available", &v7, 0xCu);
    }

    return -1;
  }
}

- (BOOL)_updateVoiceProfileInfo
{
  usersWithAvailableVoiceProfiles = self->_usersWithAvailableVoiceProfiles;
  if (!usersWithAvailableVoiceProfiles || ([(NSMutableArray *)usersWithAvailableVoiceProfiles removeAllObjects], !self->_usersWithAvailableVoiceProfiles))
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_usersWithAvailableVoiceProfiles;
    self->_usersWithAvailableVoiceProfiles = v4;
  }

  v6 = +[NSMutableArray array];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    currentLanguage = self->_currentLanguage;
    *buf = 136315394;
    v38 = "[ADMultiUserService _updateVoiceProfileInfo]";
    v39 = 2112;
    v40 = currentLanguage;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s _currentLanguage = %@", buf, 0x16u);
  }

  v9 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForLocale:self->_currentLanguage];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v9 count];
    *buf = 136315394;
    v38 = "[ADMultiUserService _updateVoiceProfileInfo]";
    v39 = 2048;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s allUsers = %lu", buf, 0x16u);
  }

  v29 = v6;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v13)
  {
    v30 = 0;
    goto LABEL_24;
  }

  v14 = v13;
  v30 = 0;
  v15 = *v33;
  v16 = SSRSpeakerRecognitionSiriAppDomain;
  v17 = SSRSpeakerRecognitionSiriDebugAppDomain;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v32 + 1) + 8 * i);
      v20 = [v19 appDomain];
      if ([v20 isEqualToString:v16])
      {
      }

      else
      {
        v21 = [v19 appDomain];
        v22 = [v21 isEqualToString:v17];

        if (!v22)
        {
          continue;
        }
      }

      v23 = [v19 sharedSiriId];
      if (v23 && ([(NSMutableArray *)self->_usersWithAvailableVoiceProfiles containsObject:v23]& 1) == 0)
      {
        [(NSMutableArray *)self->_usersWithAvailableVoiceProfiles addObject:v23];
        v24 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v23];
        [(ADMultiUserService *)self _untrackUUIDsForUser:v24];

        v30 = 1;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v14);
LABEL_24:

  v25 = [NSArray arrayWithArray:v29];
  pitchesForHomeMembers = self->_pitchesForHomeMembers;
  self->_pitchesForHomeMembers = v25;

  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[ADMultiUserService _updateVoiceProfileInfo]";
    v39 = 1024;
    LODWORD(v40) = v30 & 1;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Voice Profiles Did Update: %d", buf, 0x12u);
  }

  return v30 & 1;
}

- (void)_untrackAllHomeUserUUIDsForInFlightVoiceProfile
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
    v5 = v3;
    v7 = 136315394;
    v8 = "[ADMultiUserService _untrackAllHomeUserUUIDsForInFlightVoiceProfile]";
    v9 = 2048;
    v10 = [(NSMutableSet *)inFlightVoiceProfilesByUUID count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Untracking all UUIDs for in-flight voice profiles. Total profiles in-flight was: %lu", &v7, 0x16u);
  }

  v6 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
  [v6 removeAllObjects];
}

- (BOOL)_isTrackingUUIDForInFlightVoiceProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
    v6 = [v4 homeUserUUID];
    v7 = [v5 containsObject:v6];

    if (v7 & 1) != 0 || (-[ADMultiUserService _inFlightVoiceProfilesByUUID](self, "_inFlightVoiceProfilesByUUID"), v8 = objc_claimAutoreleasedReturnValue(), [v4 sharedUserID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, (v10))
    {
      v11 = 1;
    }

    else
    {
      v12 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
      v13 = [v4 iCloudAltDSID];
      v11 = [v12 containsObject:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_untrackUUIDsForUser:(id)a3
{
  v4 = a3;
  v5 = [v4 homeUserUUID];
  [(ADMultiUserService *)self _untrackHomeUserUUIDForInFlightVoiceProfile:v5];

  v6 = [v4 sharedUserID];
  [(ADMultiUserService *)self _untrackHomeUserUUIDForInFlightVoiceProfile:v6];

  v7 = [v4 iCloudAltDSID];

  [(ADMultiUserService *)self _untrackHomeUserUUIDForInFlightVoiceProfile:v7];
}

- (void)_untrackHomeUserUUIDForInFlightVoiceProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
      [v7 removeObject:v4];

      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
        v10 = v8;
        v11 = 136315651;
        v12 = "[ADMultiUserService _untrackHomeUserUUIDForInFlightVoiceProfile:]";
        v13 = 2113;
        v14 = v4;
        v15 = 2048;
        v16 = [(NSMutableSet *)inFlightVoiceProfilesByUUID count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Untracking voice profile in-flight for %{private}@. Total profiles in-flight: %lu", &v11, 0x20u);
      }
    }
  }
}

- (void)_trackHomeUserUUIDForInFlightVoiceProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
    v6 = [v5 containsObject:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
      [v7 addObject:v4];

      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
        v10 = v8;
        v11 = 136315651;
        v12 = "[ADMultiUserService _trackHomeUserUUIDForInFlightVoiceProfile:]";
        v13 = 2113;
        v14 = v4;
        v15 = 2048;
        v16 = [(NSMutableSet *)inFlightVoiceProfilesByUUID count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Tracking voice profile in-flight for %{private}@. Total profiles in-flight: %lu", &v11, 0x20u);
      }
    }
  }
}

- (id)_inFlightVoiceProfilesByUUID
{
  inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
  if (!inFlightVoiceProfilesByUUID)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_inFlightVoiceProfilesByUUID;
    self->_inFlightVoiceProfilesByUUID = v4;

    inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
  }

  return inFlightVoiceProfilesByUUID;
}

- (id)getDeviceOwnerSharedUserId
{
  v2 = [(ADMultiUserService *)self deviceOwner];
  v3 = [v2 sharedUserID];

  return v3;
}

- (BOOL)_isCurrentLanguageMultiUserCompatible
{
  v2 = self->_currentLanguage;
  v3 = AFPreferencesSupportedMultiUserLanguages();
  v4 = v3;
  if (v2 && ([v3 containsObject:v2] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADMultiUserService _isCurrentLanguageMultiUserCompatible]";
      v10 = 2112;
      v11 = v2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Current language %@ not supported for multi-user", &v8, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)triggerVoiceProfileUploadWithCompletion:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADMultiUserService triggerVoiceProfileUploadWithCompletion:completion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s sharedUserid = %@", &v9, 0x16u);
  }

  v8 = [AFError errorWithCode:13];
  if (v6)
  {
    v6[2](v6, v8);
  }
}

- (void)downloadVoiceProfileForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADMultiUserService downloadVoiceProfileForiCloudAltDSID:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v8 = [AFError errorWithCode:13];
  if (v6)
  {
    v6[2](v6, v8);
  }
}

- (void)_forceCloudSyncedUserDownload:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADMultiUserService _forceCloudSyncedUserDownload:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(ADMultiUserService *)self _isHostingMultiUserLanguage])
  {
    v6 = [(ADMultiUserService *)self getCloudKitManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002B5548;
    v8[3] = &unk_10051D2F0;
    v9 = v4;
    [v6 forceMultiUserSync:0 download:1 activity:0 completion:v8];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[ADMultiUserService _forceCloudSyncedUserDownload:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Current Language is not supported for Multiuser. Skipping _forceCloudSyncedUserDownload!", buf, 0xCu);
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

- (void)_resetAllUsers
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADMultiUserService _resetAllUsers]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sharedUsersBySharedUserID;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:*(*(&v15 + 1) + 8 * v8) forLanguageCode:0, v15];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v9 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  [v9 removeObserver:self];

  [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeAllObjects];
  [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID removeAllObjects];
  [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID removeAllObjects];
  primaryUser = self->_primaryUser;
  if (primaryUser)
  {
    v11 = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
    [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:v11 forLanguageCode:0];

    v12 = self->_primaryUser;
  }

  else
  {
    v12 = 0;
  }

  self->_primaryUser = 0;

  deviceOwner = self->_deviceOwner;
  self->_deviceOwner = 0;

  [(ADMultiUserService *)self _savePrimaryAndDeviceOwner];
  [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
  v14 = +[ADPreferences sharedPreferences];
  [v14 setMultiUserSharedUsers:0];
}

- (void)_resetPrimaryUser
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADMultiUserService _resetPrimaryUser]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  primaryUser = self->_primaryUser;
  if (primaryUser)
  {
    v5 = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
    [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:v5 forLanguageCode:0];
  }

  v6 = +[ADPreferences sharedPreferences];
  [v6 setMultiUserPrimaryUser:0];

  v7 = self->_primaryUser;
  self->_primaryUser = 0;
}

- (void)_loadCloudSyncedUsersFromCache
{
  [(ADPreferences *)self->_adPreferences multiUserPrimaryUser];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v2 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v60;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v60 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v7 = *(*(&v59 + 1) + 8 * i);
          v8 = v6;
          v9 = [obj valueForKey:v7];
          *buf = 136315651;
          v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
          v65 = 2112;
          v66 = v7;
          v67 = 2113;
          v68 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s primaryUser key (%@), value (%{private}@)", buf, 0x20u);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v3);
  }

  v10 = self;
  if (obj)
  {
    v11 = [[ADCommunalDeviceUser alloc] initWithDictionary:obj attribute:0];
    primaryUser = self->_primaryUser;
    self->_primaryUser = v11;

    objc_storeStrong(&self->_deviceOwner, self->_primaryUser);
    [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
    v13 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v13 addObserver:self foriCloudAltDSId:0];

    v14 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];

    if (v14)
    {
      v15 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
LABEL_13:
      v16 = v15;
      [(ADMultiUserService *)self _trackHomeUserUUIDForInFlightVoiceProfile:v15];

      goto LABEL_17;
    }

    if (AFIsATV())
    {
      v17 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];

      if (v17)
      {
        v15 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
        goto LABEL_13;
      }
    }
  }

LABEL_17:
  if (!self->_deviceOwner)
  {
    v18 = [(ADPreferences *)self->_adPreferences deviceOwner];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v56;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v24 = *(*(&v55 + 1) + 8 * j);
            v25 = v23;
            v26 = [v18 valueForKey:v24];
            *buf = 136315651;
            v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
            v65 = 2112;
            v66 = v24;
            v67 = 2113;
            v68 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s deviceOwner key (%@), value (%{private}@)", buf, 0x20u);
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v20);
    }

    v10 = self;
    if (v18)
    {
      v27 = [[ADCommunalDeviceUser alloc] initWithDictionary:v18 attribute:0];
      deviceOwner = self->_deviceOwner;
      self->_deviceOwner = v27;

      [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
    }
  }

  v29 = [(ADPreferences *)v10->_adPreferences multiUserSharedUsers];
  if (v29)
  {
    if (!v10->_sharedUsersBySharedUserID)
    {
      v30 = objc_alloc_init(NSMutableDictionary);
      sharedUsersBySharedUserID = v10->_sharedUsersBySharedUserID;
      v10->_sharedUsersBySharedUserID = v30;
    }

    if (!v10->_sharedUsersByHomeUserUUID)
    {
      v32 = objc_alloc_init(NSMutableDictionary);
      sharedUsersByHomeUserUUID = v10->_sharedUsersByHomeUserUUID;
      v10->_sharedUsersByHomeUserUUID = v32;
    }

    if (!v10->_sharedUsersByiCloudAltDSID)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      sharedUsersByiCloudAltDSID = v10->_sharedUsersByiCloudAltDSID;
      v10->_sharedUsersByiCloudAltDSID = v34;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v48 = v29;
    v36 = v29;
    v37 = [v36 countByEnumeratingWithState:&v51 objects:v71 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v52;
      do
      {
        for (k = 0; k != v38; k = k + 1)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [[ADCommunalDeviceUser alloc] initWithDictionary:*(*(&v51 + 1) + 8 * k) attribute:1];
          v42 = [(ADCommunalDeviceUser *)v41 sharedUserID];
          v43 = [(ADCommunalDeviceUser *)v41 homeUserUUID];
          v44 = [(ADCommunalDeviceUser *)v41 iCloudAltDSID];
          v45 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315907;
            v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
            v65 = 2113;
            v66 = v42;
            v67 = 2113;
            v68 = v43;
            v69 = 2113;
            v70 = v44;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s sharedUser = %{private}@, homeUserUUID = %{private}@, iCloudAltDSID = %{private}@", buf, 0x2Au);
          }

          [(ADMultiUserService *)self _updateMappingsForSharedUser:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v51 objects:v71 count:16];
      }

      while (v38);
    }

    v10 = self;
    v29 = v48;
  }

  else
  {
    v46 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s NO shared users", buf, 0xCu);
    }
  }

  v47 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Configured Cloud Synced Users.", buf, 0xCu);
  }

  [(ADMultiUserService *)v10 _updateSAMultiUserInfo];
}

- (void)_updateMappingsForSharedUser:(id)a3
{
  v4 = a3;
  if (!self->_sharedUsersBySharedUserID)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    sharedUsersBySharedUserID = self->_sharedUsersBySharedUserID;
    self->_sharedUsersBySharedUserID = v5;
  }

  if (!self->_sharedUsersByHomeUserUUID)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    sharedUsersByHomeUserUUID = self->_sharedUsersByHomeUserUUID;
    self->_sharedUsersByHomeUserUUID = v7;
  }

  if (!self->_sharedUsersByiCloudAltDSID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    sharedUsersByiCloudAltDSID = self->_sharedUsersByiCloudAltDSID;
    self->_sharedUsersByiCloudAltDSID = v9;
  }

  v11 = [v4 sharedUserID];
  v12 = [v4 homeUserUUID];
  v13 = [v4 iCloudAltDSID];
  if (v11)
  {
    [(NSMutableDictionary *)self->_sharedUsersBySharedUserID setObject:v4 forKey:v11];
  }

  if (v12)
  {
    [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID setObject:v4 forKey:v12];
    v14 = v12;
LABEL_13:
    [(ADMultiUserService *)self _trackHomeUserUUIDForInFlightVoiceProfile:v14];
    goto LABEL_14;
  }

  v15 = AFIsATV();
  if (v11)
  {
    v14 = v11;
    if (v15)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v13)
  {
    [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID setObject:v4 forKey:v13];
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADMultiUserService _updateMappingsForSharedUser:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Posting notification as shared user info updated", &v18, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFSharedUserUpdateDarwinNotification, 0, 0, 1u);
}

- (void)didReceiveIDs:(id)a3 forUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B6294;
  block[3] = &unk_10051DB68;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)onUserAnalyticsIdsChanged:(id)a3 iCloudAltDSId:(id)a4 sharedUserId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  v12 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v12)
    {
      v13 = v11;
      v14 = [v8 userEphemeralId];
      v15 = [v14 UUIDString];
      v16 = [v8 userAggregationId];
      v17 = [v16 UUIDString];
      *v21 = 136316163;
      *&v21[4] = "[ADMultiUserService onUserAnalyticsIdsChanged:iCloudAltDSId:sharedUserId:]";
      *&v21[12] = 2113;
      *&v21[14] = v9;
      *&v21[22] = 2113;
      v22 = v10;
      *v23 = 2113;
      *&v23[2] = v15;
      *&v23[10] = 2113;
      *&v23[12] = v17;
      v18 = "%s Received an Ephemeral & Aggregation ID Update for user with iCloudAltDSId %{private}@ and sharedUserId %{private}@: Ephemeral ID: %{private}@, Aggregation ID: %{private}@";
      v19 = v13;
      v20 = 52;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, v21, v20);
    }
  }

  else if (v12)
  {
    v13 = v11;
    v14 = [v8 userEphemeralId];
    v15 = [v14 UUIDString];
    v16 = [v8 userAggregationId];
    v17 = [v16 UUIDString];
    *v21 = 136315651;
    *&v21[4] = "[ADMultiUserService onUserAnalyticsIdsChanged:iCloudAltDSId:sharedUserId:]";
    *&v21[12] = 2113;
    *&v21[14] = v15;
    *&v21[22] = 2113;
    v22 = v17;
    v18 = "%s Received an Ephemeral & Aggregation ID Update for the device owner: Ephemeral ID: %{private}@, Aggregation ID: %{private}@";
    v19 = v13;
    v20 = 32;
    goto LABEL_6;
  }

  [(ADMultiUserService *)self _updateSAMultiUserInfo:*v21];
}

- (void)_refreshUsersAndVoiceProfiles:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v106 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]";
    v107 = 1024;
    LODWORD(v108) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s liveOnOnboardedProfilesDidChange = %{BOOL}d", buf, 0x12u);
  }

  v71 = v3;
  v6 = objc_alloc_init(NSMutableArray);
  v69 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableSet);
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    currentLanguage = self->_currentLanguage;
    *buf = 136315394;
    v106 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]";
    v107 = 2112;
    v108 = currentLanguage;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s _currentLanguage = %@", buf, 0x16u);
  }

  v66 = v7;
  v10 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForLocale:self->_currentLanguage];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v10 count];
    *buf = 136315394;
    v106 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]";
    v107 = 2048;
    v108 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s allUsers count = %lu", buf, 0x16u);
  }

  v70 = v6;
  v67 = +[NSMutableArray array];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (!v14)
  {
    v68 = 0;
    goto LABEL_30;
  }

  v15 = v14;
  v68 = 0;
  v16 = *v98;
  v17 = SSRSpeakerRecognitionSiriDebugAppDomain;
  v18 = SSRSpeakerRecognitionSiriAppDomain;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v98 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v97 + 1) + 8 * i);
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v106 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]";
        v107 = 2112;
        v108 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s user = %@", buf, 0x16u);
      }

      if (AFIsInternalInstall())
      {
        v22 = [(NSString *)v20 appDomain];
        v23 = [v22 isEqualToString:v17];

        if (v23)
        {
          [v70 addObject:v20];
          v24 = [(NSString *)v20 sharedSiriId];
          [v69 addObject:v24];
        }
      }

      v25 = [(NSString *)v20 appDomain];
      if ([v25 isEqualToString:v18])
      {
      }

      else
      {
        v26 = [(NSString *)v20 appDomain];
        v27 = [v26 isEqualToString:v17];

        if (!v27)
        {
          continue;
        }
      }

      if (!self->_usersWithAvailableVoiceProfiles)
      {
        v28 = objc_alloc_init(NSMutableArray);
        usersWithAvailableVoiceProfiles = self->_usersWithAvailableVoiceProfiles;
        self->_usersWithAvailableVoiceProfiles = v28;
      }

      v30 = [(NSString *)v20 sharedSiriId];
      if (v30 && ([(NSMutableArray *)self->_usersWithAvailableVoiceProfiles containsObject:v30]& 1) == 0)
      {
        [(NSMutableArray *)self->_usersWithAvailableVoiceProfiles addObject:v30];
        v31 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v30];
        [(ADMultiUserService *)self _untrackUUIDsForUser:v31];

        v68 = 1;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
  }

  while (v15);
LABEL_30:

  v32 = [NSArray arrayWithArray:v67];
  pitchesForHomeMembers = self->_pitchesForHomeMembers;
  self->_pitchesForHomeMembers = v32;

  v34 = v66;
  if (v71)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v35 = self->_sharedUsersBySharedUserID;
    v36 = [(NSMutableDictionary *)v35 countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v94;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v94 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v93 + 1) + 8 * j);
          v41 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:v40];
          if ([v41 nonCloudSyncedUser])
          {
            [v66 addObject:v40];
          }
        }

        v37 = [(NSMutableDictionary *)v35 countByEnumeratingWithState:&v93 objects:v103 count:16];
      }

      while (v37);
    }

    v42 = [v66 count];
    if (v42 <= [v69 count])
    {
      v49 = [v69 count];
      if (v49 <= [v66 count] && (objc_msgSend(v66, "isEqual:", v69) & 1) == 0)
      {
        v50 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v106 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]";
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s Counts are same, but users are different. Falling down to best effort", buf, 0xCu);
        }
      }
    }

    else
    {
      [v66 minusSet:v69];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v43 = v66;
      v44 = [v43 countByEnumeratingWithState:&v89 objects:v102 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v90;
        do
        {
          for (k = 0; k != v45; k = k + 1)
          {
            if (*v90 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v89 + 1) + 8 * k);
            v84 = _NSConcreteStackBlock;
            v85 = 3221225472;
            v86 = sub_1002B726C;
            v87 = &unk_10051C498;
            v88 = v48;
            [ADMultiUserService removeUserWithSharedUserID:"removeUserWithSharedUserID:completion:" completion:?];
          }

          v45 = [v43 countByEnumeratingWithState:&v89 objects:v102 count:16];
        }

        while (v45);
      }
    }
  }

  if (self->_primaryUser)
  {
    v83 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v72 = v70;
    v51 = [v72 countByEnumeratingWithState:&v80 objects:v101 count:16];
    if (!v51)
    {
      goto LABEL_68;
    }

    v52 = v51;
    v74 = *v81;
    while (1)
    {
      v53 = 0;
      do
      {
        if (*v81 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v54 = *(*(&v80 + 1) + 8 * v53);
        v55 = [v54 sharedSiriId];
        v56 = [v54 homeId];
        v57 = [v54 userName];
        v58 = SiriCoreUUIDStringCreate();
        v59 = SiriCoreUUIDStringCreate();
        if (v56)
        {
          if (v55)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v56 = SiriCoreUUIDStringCreate();
          if (v55)
          {
            goto LABEL_61;
          }
        }

        v55 = SiriCoreUUIDStringCreate();
LABEL_61:
        v60 = @"whatsinaname";
        if (v57)
        {
          v60 = v57;
        }

        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1002B7344;
        v78[3] = &unk_10051C498;
        v79 = v60;
        v61 = v60;
        LOBYTE(v65) = 1;
        [(ADMultiUserService *)self addUser:v56 sharedUserId:v55 loggableSharedUserId:v58 iCloudAltDSID:v59 enrollmentName:v61 isPrimary:0 nonCloudSyncedUser:v65 completion:v78];

        v53 = v53 + 1;
      }

      while (v52 != v53);
      v62 = [v72 countByEnumeratingWithState:&v80 objects:v101 count:16];
      v52 = v62;
      if (!v62)
      {
LABEL_68:

        v63 = v70;
        v34 = v66;
        goto LABEL_71;
      }
    }
  }

  v63 = v70;
  if ([v70 count])
  {
    [v70 removeAllObjects];
  }

LABEL_71:
  if (([v63 count] != 0) | v68 & 1)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B7480;
    block[3] = &unk_10051E010;
    v76 = v63;
    v77 = self;
    dispatch_async(queue, block);
  }
}

- (void)refreshHomeKitOnboardedUsers
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B75B4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_currentHomeIsReady:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ADMultiUserService _currentHomeIsReady:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B81BC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_primaryUserSharedUserIdentifierDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B82FC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  if (self->_multiUserListener == a3)
  {
    return [(ADMultiUserService *)self _multiUserListenerShouldAcceptNewConnection:a4];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_multiUserListenerShouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    v6 = [v4 processIdentifier];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "[ADMultiUserService _multiUserListenerShouldAcceptNewConnection:]";
      v17 = 2112;
      v18 = v4;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ MultiUser Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFMultiUserService];
    [v4 setExportedInterface:v8];

    [v4 setExportedObject:self];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002B8858;
    v13[3] = &unk_10051A380;
    v14 = v6;
    [v4 setInvalidationHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002B8914;
    v11[3] = &unk_10051A380;
    v12 = v6;
    [v4 setInterruptionHandler:v11];
    [v4 resume];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADMultiUserService _multiUserListenerShouldAcceptNewConnection:]";
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s %@ MultiUser Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)_setupMultiUserListener
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADMultiUserService _setupMultiUserListener]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Setting up MultiUser listener with signpost", &v9, 0xCu);
  }

  v4 = os_signpost_id_generate(AFSiriLogContextMultiUser);
  v5 = AFSiriLogContextMultiUser;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MultiUserService", "Setting up MultiUser listener", &v9, 2u);
  }

  self->multiUserSignpost = v4;
  v7 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantMultiUserServiceName];
  multiUserListener = self->_multiUserListener;
  self->_multiUserListener = v7;

  [(NSXPCListener *)self->_multiUserListener setDelegate:self];
  [(NSXPCListener *)self->_multiUserListener resume];
}

- (id)_allUsersBySharedUserID
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_sharedUsersBySharedUserID)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    sharedUsersBySharedUserID = self->_sharedUsersBySharedUserID;
    self->_sharedUsersBySharedUserID = v3;
  }

  v5 = +[NSMutableDictionary dictionary];
  primaryUser = self->_primaryUser;
  if (primaryUser)
  {
    v7 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    [v5 setObject:primaryUser forKey:v7];
  }

  deviceOwner = self->_deviceOwner;
  if (deviceOwner && !self->_primaryUser)
  {
    v9 = [(ADCommunalDeviceUser *)self->_deviceOwner sharedUserID];
    [v5 setObject:deviceOwner forKey:v9];
  }

  [v5 addEntriesFromDictionary:self->_sharedUsersBySharedUserID];
  v10 = [v5 copy];

  return v10;
}

- (id)allUsersBySharedUserID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1002A0704;
  v11 = sub_1002A0714;
  v12 = +[NSMutableDictionary dictionary];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002B8D30;
  v6[3] = &unk_10051D4A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_languageCodeDidChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B8DF0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
  liveOnToken = self->_liveOnToken;
  if (liveOnToken != -1)
  {
    notify_cancel(liveOnToken);
  }

  v5.receiver = self;
  v5.super_class = ADMultiUserService;
  [(ADMultiUserService *)&v5 dealloc];
}

- (id)_initWithPreferences:(id)a3 ssrManager:(id)a4 homeInfoManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v39.receiver = self;
  v39.super_class = ADMultiUserService;
  v12 = [(ADMultiUserService *)&v39 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MultiUserServiceQueue", v13);

    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_adPreferences, a3);
    v16 = [ADCommunalDeviceUser saHomeMemberInfo:0];
    saUnknownUser = v12->_saUnknownUser;
    v12->_saUnknownUser = v16;

    objc_storeStrong(&v12->_voiceProfileManager, a4);
    objc_storeStrong(&v12->_homeInfoManager, a5);
    v18 = [v9 languageCode];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = AFDefaultLanguageCode;
    }

    objc_storeStrong(&v12->_currentLanguage, v20);

    v21 = objc_alloc_init(NSMutableArray);
    usersWithAvailableVoiceProfiles = v12->_usersWithAvailableVoiceProfiles;
    v12->_usersWithAvailableVoiceProfiles = v21;

    [(ADMultiUserService *)v12 _loadCloudSyncedUsersFromCache];
    if ([(ADMultiUserService *)v12 _isHostingMultiUserLanguage])
    {
      [(ADMultiUserService *)v12 _refreshUsersAndVoiceProfiles:0];
    }

    else
    {
      [(ADMultiUserService *)v12 resetAllUsers];
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v12 selector:"_primaryUserSharedUserIdentifierDidChangeNotification:" name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:v9];
    [v23 addObserver:v12 selector:"_currentHomeIsReady:" name:@"ADHomeInfoCurrentHomeIsReady" object:0];
    [v23 addObserver:v12 selector:"_homeInfoDidChange:" name:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
    [v23 addObserver:v12 selector:"_languageCodeDidChange" name:AFLanguageCodeDidChangeNotification object:0];
    v12->_liveOnToken = -1;
    objc_initWeak(&location, v12);
    v24 = v12->_queue;
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_1002B9394;
    v36 = &unk_100519768;
    objc_copyWeak(&v37, &location);
    if (notify_register_dispatch("com.apple.siri.corespeech.voiceprofilelist.change", &v12->_liveOnToken, v24, &v33))
    {
      v25 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[ADMultiUserService _initWithPreferences:ssrManager:homeInfoManager:]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to listen to ProfileListModification change", buf, 0xCu);
      }
    }

    v26 = [AFInstanceContext currentContext:v33];
    instanceContext = v12->_instanceContext;
    v12->_instanceContext = v26;

    v28 = +[NSMutableSet set];
    useriCloudAltDSIDsSettingRmVFromTV = v12->_useriCloudAltDSIDsSettingRmVFromTV;
    v12->_useriCloudAltDSIDsSettingRmVFromTV = v28;

    v30 = +[NSMutableSet set];
    homeUserIDsToBeOnboarded = v12->_homeUserIDsToBeOnboarded;
    v12->_homeUserIDsToBeOnboarded = v30;

    [(ADMultiUserService *)v12 _setupMultiUserListener];
    v12->isATVOnly = AFIsATV();
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v12;
}

@end
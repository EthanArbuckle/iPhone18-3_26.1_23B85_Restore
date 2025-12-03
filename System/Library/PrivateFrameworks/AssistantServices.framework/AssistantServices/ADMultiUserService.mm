@interface ADMultiUserService
+ (id)sharedService;
- (BOOL)_homeKitSettingsDidChangeForDeviceOwner;
- (BOOL)_isCurrentLanguageMultiUserCompatible;
- (BOOL)_isTrackingUUIDForInFlightVoiceProfile:(id)profile;
- (BOOL)_multiUserListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_profileLimitReached;
- (BOOL)_removeUser:(id)user homeUserID:(id)d sharedUserID:(id)iD iCloudAltDSID:(id)sID error:(id *)error;
- (BOOL)_updateDeviceOwner:(id)owner sharedUserId:(id)id enrollmentName:(id)name companionInfo:(id)info shareOwnerName:(id)ownerName homeMemberSettings:(id)settings loggingAllowed:(BOOL)allowed;
- (BOOL)_updateHomeKitSettings:(id)settings;
- (BOOL)_updateNonHomeUserSettings:(id)settings;
- (BOOL)_updateVoiceProfileInfo;
- (BOOL)getAllowExplicitContentSettingForRecognizedUser;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)personalDomainSettingsDidChange:(id)change newUserSettings:(id)settings;
- (id)_allUsersBySharedUserID;
- (id)_augmentUserPropertiesWithHomeInfoForUser:(id)user;
- (id)_confidenceScoreForSharedUserID:(id)d expectedSpeakerSharedUserID:(id)iD expectedSpeakerConfidenceScore:(int64_t)score confidenceScores:(id)scores;
- (id)_generateDeviceUserWithHomeUserUUID:(id)d sharedUserId:(id)id loggableSharedUserId:(id)userId adaccount:(id)adaccount;
- (id)_getLoggableMultiUserSharedUserIdForSharedUserID:(id)d;
- (id)_getUserAgentStringForSharedUserID:(id)d;
- (id)_homeMembersForPlatform;
- (id)_inFlightVoiceProfilesByUUID;
- (id)_initWithPreferences:(id)preferences ssrManager:(id)manager homeInfoManager:(id)infoManager;
- (id)allUsersBySharedUserID;
- (id)confidenceScoresForMultiUserTestingExpectedSpeakerSharedUserID:(id)d expectedSpeakerConfidenceScore:(int64_t)score nonspeakerConfidenceScores:(id)scores;
- (id)currentOwnerSharedUserID;
- (id)getAssistantIdentifierForIDS:(id)s;
- (id)getDeviceOwnerSharedUserId;
- (id)getSharedUserIdForHomeUserId:(id)id;
- (id)getSharedUserIdForShareOwnerName:(id)name;
- (id)getSyncableSharedUserIdForSharedUserId:(id)id;
- (id)getSyncableSharedUserIdsForSharedUserIds:(id)ids;
- (id)getUserAgentStringForSharedUserID:(id)d;
- (id)homeUserIdToNames;
- (id)multiUserSAObject;
- (id)sharedRemoteDevices;
- (id)validateAndReturnScores:(id)scores classifiedUser:(id)user donatedScores:(id)donatedScores unknownUserSharedId:(id *)id totalUsers:(unint64_t *)users ghostVoiceProfileDetected:(BOOL *)detected;
- (unint64_t)_countVoiceProfiles;
- (unint64_t)addIfSiriCloudSyncEnabledForUser:(id)user;
- (unint64_t)countUsersWithLocationServicesEnabled;
- (unint64_t)countUsersWithMatchingSiriLanguage;
- (unint64_t)countUsersWithPersonalRequestsEnabled;
- (unint64_t)countUsersWithSiriCloudSyncEnabled;
- (unint64_t)countVoiceProfiles;
- (void)_addDeviceOwner:(id)owner sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d audioAppSignals:(id)signals enrollmentName:(id)name companionInfo:(id)info shareOwnerName:(id)self0 homeMemberSettings:(id)self1 loggingAllowed:(BOOL)self2 completion:(id)self3;
- (void)_addUser:(id)user sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d enrollmentName:(id)name isPrimary:(BOOL)primary nonCloudSyncedUser:(BOOL)syncedUser completion:(id)self0;
- (void)_allowVoiceIdentificationForThisUser:(id)user iCloudAltDSID:(id)d completion:(id)completion;
- (void)_currentHomeIsReady:(id)ready;
- (void)_deleteShareForUser:(id)user;
- (void)_describeSAMultiUserInfo:(id)info;
- (void)_forceCloudSyncedUserDownload:(id)download;
- (void)_languageCodeDidChange;
- (void)_loadCloudSyncedUsersFromCache;
- (void)_logRelevantAnalyticsOnUserAddedWithSharedUserID:(id)d isPrimary:(BOOL)primary;
- (void)_postRemovalStateCleanup;
- (void)_primaryUserSharedUserIdentifierDidChangeNotification:(id)notification;
- (void)_refreshUsersAndVoiceProfiles:(BOOL)profiles;
- (void)_removeGhostVoiceProfiles;
- (void)_resetAllUsers;
- (void)_resetPrimaryUser;
- (void)_saveDeviceOwnerToKeychainCache;
- (void)_savePrimaryAndDeviceOwner;
- (void)_saveSharedUsers;
- (void)_setPrimaryUserMeDevice:(BOOL)device;
- (void)_setPrimaryUserSiriLanguage:(id)language;
- (void)_setSharedUserMeDevice:(BOOL)device forSharedUser:(id)user;
- (void)_setSharedUserSiriLanguage:(id)language forSharedUser:(id)user;
- (void)_setupMultiUserListener;
- (void)_trackGhostVoiceProfile:(id)profile;
- (void)_trackHomeUserUUIDForInFlightVoiceProfile:(id)profile;
- (void)_untrackAllHomeUserUUIDsForInFlightVoiceProfile;
- (void)_untrackHomeUserUUIDForInFlightVoiceProfile:(id)profile;
- (void)_untrackUUIDsForUser:(id)user;
- (void)_updateCommunalDeviceUser:(id)user withSettings:(id)settings;
- (void)_updateHomeKitSettingsForDeviceOwner;
- (void)_updateMappingsForSharedUser:(id)user;
- (void)_updateSAMultiUserInfo;
- (void)addDeviceOwner:(id)owner sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d audioAppSignals:(id)signals enrollmentName:(id)name companionInfo:(id)info shareOwnerName:(id)self0 homeMemberSettings:(id)self1 loggingAllowed:(BOOL)self2 completion:(id)self3;
- (void)addUser:(id)user sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d enrollmentName:(id)name isPrimary:(BOOL)primary nonCloudSyncedUser:(BOOL)syncedUser completion:(id)self0;
- (void)dealloc;
- (void)didReceiveIDs:(id)ds forUser:(id)user;
- (void)downloadVoiceProfileForiCloudAltDSID:(id)d completion:(id)completion;
- (void)dumpAssistantStateChunk:(id)chunk;
- (void)fetchDeviceOwnerAsSAMultiUserInfo:(id)info;
- (void)getCompanionAssistantIdForRecognizedUser:(id)user;
- (void)getConformingSharedUserIdForHomeUserId:(id)id completion:(id)completion;
- (void)getConformingSharedUserIds:(id)ids;
- (void)getFirstNameForSharedUserId:(id)id completion:(id)completion;
- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion;
- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)completion;
- (void)getIDSIdentifierForAssistantId:(id)id completion:(id)completion;
- (void)getLoggableIdentiferForUserWithSharedUserID:(id)d iCloudAltDSID:(id)iD sessionID:(id)sessionID completion:(id)completion;
- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)d completion:(id)completion;
- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)d completion:(id)completion;
- (void)getMultiUserCompanionInfoWithCompletion:(id)completion;
- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)completion;
- (void)getMultiUserSettingsForSharedUserID:(id)d completion:(id)completion;
- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)completion;
- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)completion;
- (void)getRecognizableUsersConfromingSharedUserIds:(id)ids;
- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion;
- (void)getSharedUserIdForiCloudAltDSID:(id)d completion:(id)completion;
- (void)getSharedUserInfoForSharedUserID:(id)d completion:(id)completion;
- (void)getSharedUserInfoForiCloudAltDSID:(id)d completion:(id)completion;
- (void)getUserAgentStringForSharedUserID:(id)d completion:(id)completion;
- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)completion;
- (void)homeUserIdToNames:(id)names;
- (void)onUserAnalyticsIdsChanged:(id)changed iCloudAltDSId:(id)id sharedUserId:(id)userId;
- (void)postMessageToMUXWithMultiUserInfo:(id)info completion:(id)completion;
- (void)refreshHomeKitOnboardedUsers;
- (void)removeDeviceOwner;
- (void)removeUserWithHomeUUID:(id)d completion:(id)completion;
- (void)removeUserWithShareOwnerNames:(id)names completion:(id)completion;
- (void)removeUserWithSharedUserID:(id)d completion:(id)completion;
- (void)resetAllUsers;
- (void)setEnrollmentName:(id)name forHomeUser:(id)user;
- (void)setPrimaryUser:(id)user;
- (void)setShareOwnerName:(id)name homeMemberSettings:(id)settings audioAppSignals:(id)signals loggingAllowed:(BOOL)allowed forSharedUserId:(id)id;
- (void)showMultiUserSharedUserIDsCompletion:(id)completion;
- (void)showMultiUsersWithCompletion:(id)completion;
- (void)showPrimaryUserSharedUserIDWithCompletion:(id)completion;
- (void)triggerMultiUserMetricsWithCompletion:(id)completion;
- (void)triggerVoiceProfileUploadWithCompletion:(id)completion completion:(id)a4;
- (void)updateMultiUserWithSharedUserId:(id)id companionInfo:(id)info completion:(id)completion;
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

- (id)_confidenceScoreForSharedUserID:(id)d expectedSpeakerSharedUserID:(id)iD expectedSpeakerConfidenceScore:(int64_t)score confidenceScores:(id)scores
{
  dCopy = d;
  iDCopy = iD;
  scoresCopy = scores;
  v12 = objc_alloc_init(SAUserConfidenceScore);
  uppercaseString = [dCopy uppercaseString];
  [v12 setSharedUserId:uppercaseString];

  uppercaseString2 = [dCopy uppercaseString];
  v15 = [scoresCopy objectForKey:uppercaseString2];

  if (v15)
  {
    scoreCopy = [v15 integerValue];
  }

  else if ([iDCopy caseInsensitiveCompare:dCopy])
  {
    scoreCopy = 0;
  }

  else
  {
    scoreCopy = score;
  }

  [v12 setConfidenceScore:scoreCopy];

  return v12;
}

- (id)confidenceScoresForMultiUserTestingExpectedSpeakerSharedUserID:(id)d expectedSpeakerConfidenceScore:(int64_t)score nonspeakerConfidenceScores:(id)scores
{
  dCopy = d;
  scoresCopy = scores;
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
  v16 = dCopy;
  v18 = &v20;
  scoreCopy = score;
  v17 = scoresCopy;
  v11 = scoresCopy;
  v12 = dCopy;
  dispatch_sync(queue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (void)getSharedUserIdForiCloudAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002A09A4;
    v9[3] = &unk_100519B38;
    v11 = completionCopy;
    v10 = dCopy;
    [(ADMultiUserService *)self getSharedUserInfoForiCloudAltDSID:v10 completion:v9];
  }
}

- (void)getSharedUserInfoForiCloudAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A0B9C;
    block[3] = &unk_10051E088;
    v10 = dCopy;
    selfCopy = self;
    v12 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002A1154;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getSharedUserInfoForSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A12E8;
    block[3] = &unk_10051E088;
    v10 = dCopy;
    selfCopy = self;
    v12 = completionCopy;
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

- (id)getAssistantIdentifierForIDS:(id)s
{
  sCopy = s;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADMultiUserService getAssistantIdentifierForIDS:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &buf, 0xCu);
    if (!sCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!sCopy)
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
    v10 = sCopy;
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

- (void)getIDSIdentifierForAssistantId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[ADMultiUserService getIDSIdentifierForAssistantId:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
      if (!idCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!idCopy)
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
      v12 = idCopy;
      selfCopy = self;
      v14 = completionCopy;
      dispatch_async(queue, block);

      v10 = v12;
LABEL_8:

      goto LABEL_9;
    }

LABEL_7:
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(completionCopy + 2))(completionCopy, 0, v10);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ((AFSupportsMultiUser() & 1) == 0)
    {
      preferredMediaUserSharedUserID = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      completionCopy[2](completionCopy, 0, preferredMediaUserSharedUserID);
LABEL_12:

      goto LABEL_13;
    }

    v5 = +[ADHomeInfoManager sharedInfoManager];
    preferredMediaUserInfo = [v5 preferredMediaUserInfo];
    preferredMediaUserSharedUserID = [preferredMediaUserInfo preferredMediaUserSharedUserID];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"nil";
      if (preferredMediaUserSharedUserID)
      {
        v10 = preferredMediaUserSharedUserID;
      }

      *buf = 136315395;
      v14 = "[ADMultiUserService getPreferredMediaUserHomeUserIDWithCompletion:]";
      v15 = 2113;
      v16 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s preferredMediaUserSharedUserID (%{private}@)", buf, 0x16u);
      if (preferredMediaUserSharedUserID)
      {
        goto LABEL_5;
      }
    }

    else if (preferredMediaUserSharedUserID)
    {
LABEL_5:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1002A2148;
      v11[3] = &unk_100519B10;
      v12 = completionCopy;
      [(ADMultiUserService *)self getHomeUserIdForSharedUserId:preferredMediaUserSharedUserID completion:v11];
      v9 = v12;
LABEL_11:

      goto LABEL_12;
    }

    v9 = [AFError errorWithCode:6200 description:@"Unable to determine the preferred media user"];
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_11;
  }

LABEL_13:
}

- (void)homeUserIdToNames:(id)names
{
  namesCopy = names;
  homeUserIdToNames = [(ADMultiUserService *)self homeUserIdToNames];
  if (homeUserIdToNames)
  {
    namesCopy[2](namesCopy, homeUserIdToNames, 0);
  }

  else
  {
    v5 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:0];
    (namesCopy)[2](namesCopy, 0, v5);
  }
}

- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A233C;
      block[3] = &unk_10051E088;
      block[4] = self;
      v12 = completionCopy;
      v11 = dCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }
}

- (void)getMultiUserSettingsForSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A26F8;
      block[3] = &unk_10051E088;
      block[4] = self;
      v11 = dCopy;
      v12 = completionCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }
}

- (void)getCompanionAssistantIdForRecognizedUser:(id)user
{
  userCopy = user;
  if (userCopy)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A2BAC;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = userCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(userCopy + 2))(userCopy, 0, v6);
    }
  }
}

- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A2FE8;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = completionCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }
}

- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A32EC;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = completionCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }
}

- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A3728;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = completionCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }
}

- (void)getRecognizableUsersConfromingSharedUserIds:(id)ids
{
  idsCopy = ids;
  if (idsCopy)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A3CA4;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = idsCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:13 userInfo:&__NSDictionary0__struct];
      (*(idsCopy + 2))(idsCopy, 0, v6);
    }
  }
}

- (void)getConformingSharedUserIds:(id)ids
{
  idsCopy = ids;
  if (idsCopy)
  {
    if (AFSupportsMultiUser())
    {
      queue = self->_queue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002A422C;
      v7[3] = &unk_10051E038;
      v7[4] = self;
      v8 = idsCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(idsCopy + 2))(idsCopy, 0, v6);
    }
  }
}

- (void)getConformingSharedUserIdForHomeUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    if (idCopy && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A47BC;
      block[3] = &unk_10051E088;
      block[4] = self;
      v11 = idCopy;
      v12 = completionCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, 0, v9);
    }
  }
}

- (void)getFirstNameForSharedUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    if (idCopy && (AFSupportsMultiUser() & 1) != 0)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002A4BD4;
      block[3] = &unk_10051E088;
      v11 = idCopy;
      selfCopy = self;
      v13 = completionCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }
}

- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      v15 = "[ADMultiUserService getSharedUserIdForHomeUserId:completion:]";
      v16 = 2113;
      v17 = idCopy;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Retrieving shared user id for homeUserId = %{private}@", buf, 0x16u);
      if (!idCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!idCopy)
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
      v12 = idCopy;
      v13 = completionCopy;
      dispatch_async(queue, block);

      goto LABEL_8;
    }

LABEL_7:
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }

LABEL_8:
}

- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      v15 = "[ADMultiUserService getHomeUserIdForSharedUserId:completion:]";
      v16 = 2113;
      v17 = idCopy;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %{private}@", buf, 0x16u);
      if (!idCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!idCopy)
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
      v12 = idCopy;
      v13 = completionCopy;
      dispatch_async(queue, block);

      goto LABEL_8;
    }

LABEL_7:
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }

LABEL_8:
}

- (BOOL)getAllowExplicitContentSettingForRecognizedUser
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = +[ADPreferences sharedPreferences];
  allowExplicitContent = [v3 allowExplicitContent];

  v12 = allowExplicitContent;
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

- (id)getSharedUserIdForHomeUserId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (idCopy)
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
    v10 = idCopy;
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

- (id)getSyncableSharedUserIdsForSharedUserIds:(id)ids
{
  idsCopy = ids;
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
  v10 = idsCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = idsCopy;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)getSyncableSharedUserIdForSharedUserId:(id)id
{
  idCopy = id;
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
  v10 = idCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = idCopy;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)getSharedUserIdForShareOwnerName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1002A0704;
  v16 = sub_1002A0714;
  v17 = 0;
  if (nameCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A6280;
    block[3] = &unk_10051C588;
    block[4] = self;
    v10 = nameCopy;
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

- (void)setShareOwnerName:(id)name homeMemberSettings:(id)settings audioAppSignals:(id)signals loggingAllowed:(BOOL)allowed forSharedUserId:(id)id
{
  nameCopy = name;
  settingsCopy = settings;
  signalsCopy = signals;
  idCopy = id;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1002A65A0;
  v21[3] = &unk_100519AC0;
  v21[4] = self;
  v22 = idCopy;
  allowedCopy = allowed;
  v23 = nameCopy;
  v24 = settingsCopy;
  v25 = signalsCopy;
  v17 = signalsCopy;
  v18 = settingsCopy;
  v19 = nameCopy;
  v20 = idCopy;
  dispatch_async(queue, v21);
}

- (void)setEnrollmentName:(id)name forHomeUser:(id)user
{
  nameCopy = name;
  userCopy = user;
  v8 = userCopy;
  if (nameCopy && userCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A679C;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v11 = userCopy;
    v12 = nameCopy;
    dispatch_async(queue, block);
  }
}

- (void)updateMultiUserWithSharedUserId:(id)id companionInfo:(id)info completion:(id)completion
{
  idCopy = id;
  infoCopy = info;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s ", &buf, 0xCu);
  }

  if (AFSupportsMultiUser())
  {
    assistantID = [infoCopy assistantID];
    speechID = [infoCopy speechID];
    idsIdentifier = [infoCopy idsIdentifier];
    productPrefix = [infoCopy productPrefix];
    aceHost = [infoCopy aceHost];
    companionName = [infoCopy companionName];
    if ([infoCopy meDevice])
    {
      meDevice = [infoCopy meDevice];
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

      meDevice = 1;
    }

    siriLanguage = [infoCopy siriLanguage];
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
    v31 = idCopy;
    v32 = assistantID;
    p_buf = &buf;
    v42 = v44;
    v33 = speechID;
    v34 = idsIdentifier;
    v35 = productPrefix;
    v36 = aceHost;
    v37 = infoCopy;
    v38 = companionName;
    v39 = siriLanguage;
    v43 = meDevice;
    v40 = completionCopy;
    v22 = siriLanguage;
    v24 = companionName;
    v17 = aceHost;
    v18 = productPrefix;
    v19 = idsIdentifier;
    v20 = speechID;
    v21 = assistantID;
    dispatch_async(queue, block);

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:&__NSDictionary0__struct];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13);
    }
  }
}

- (void)triggerMultiUserMetricsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
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
        v10 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, v8);
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

- (void)_trackGhostVoiceProfile:(id)profile
{
  profileCopy = profile;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315395;
    v10 = "[ADMultiUserService _trackGhostVoiceProfile:]";
    v11 = 2113;
    v12 = profileCopy;
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

  [(NSMutableSet *)ghostVoiceProfileSharedUserIDs addObject:profileCopy];
}

- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(ADMultiUserService *)self _getLoggableMultiUserSharedUserIdForSharedUserID:dCopy];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[ADMultiUserService getLoggableMultiUserSharedUserIdForSharedUserID:completion:]";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s get loggable multiUserSharedUserId: %@ for sharedUserId: %@", &v10, 0x20u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

- (void)postMessageToMUXWithMultiUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    homeMembers = [infoCopy homeMembers];
    v9 = 136315394;
    v10 = "[ADMultiUserService postMessageToMUXWithMultiUserInfo:completion:]";
    v11 = 2048;
    v12 = [homeMembers count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Posting MUX message with %ld home members", &v9, 0x16u);
  }

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 postMessageToMUXWithMultiUserInfo:infoCopy];
}

- (void)getLoggableIdentiferForUserWithSharedUserID:(id)d iCloudAltDSID:(id)iD sessionID:(id)sessionID completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A8760;
  block[3] = &unk_10051D2A0;
  v20 = dCopy;
  selfCopy = self;
  v23 = sessionIDCopy;
  v24 = completionCopy;
  v22 = iDCopy;
  v15 = sessionIDCopy;
  v16 = completionCopy;
  v17 = iDCopy;
  v18 = dCopy;
  dispatch_async(queue, block);
}

- (id)_getLoggableMultiUserSharedUserIdForSharedUserID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    loggableMultiUserSharedUserID = 0;
    goto LABEL_9;
  }

  primaryUser = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:dCopy];
  v6 = primaryUser;
  if (!primaryUser)
  {
    sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    v9 = [sharedUserID isEqualToString:dCopy];

    if (!v9)
    {
      loggableMultiUserSharedUserID = 0;
      goto LABEL_8;
    }

    primaryUser = self->_primaryUser;
  }

  loggableMultiUserSharedUserID = [primaryUser loggableMultiUserSharedUserID];
LABEL_8:

LABEL_9:

  return loggableMultiUserSharedUserID;
}

- (id)_getUserAgentStringForSharedUserID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    productPrefix = 0;
    goto LABEL_9;
  }

  primaryUser = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:dCopy];
  v6 = primaryUser;
  if (!primaryUser)
  {
    sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    v9 = [sharedUserID isEqualToString:dCopy];

    if (!v9)
    {
      productPrefix = 0;
      goto LABEL_8;
    }

    primaryUser = self->_primaryUser;
  }

  productPrefix = [primaryUser productPrefix];
LABEL_8:

LABEL_9:

  return productPrefix;
}

- (void)getUserAgentStringForSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (dCopy && completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A8CB4;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = dCopy;
    v12 = v8;
    dispatch_async(queue, block);
  }
}

- (id)getUserAgentStringForSharedUserID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1002A0704;
  v17 = sub_1002A0714;
  v18 = 0;
  if (dCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A8E40;
    block[3] = &unk_10051C588;
    v12 = &v13;
    block[4] = self;
    v11 = dCopy;
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

- (void)setPrimaryUser:(id)user
{
  userCopy = user;
  v6 = dispatch_get_current_queue();
  queue = self->_queue;

  if (v6 == queue)
  {
    objc_storeStrong(&self->_primaryUser, user);
  }

  else
  {
    v8 = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002A8F6C;
    v9[3] = &unk_10051E010;
    v9[4] = self;
    v10 = userCopy;
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

- (id)validateAndReturnScores:(id)scores classifiedUser:(id)user donatedScores:(id)donatedScores unknownUserSharedId:(id *)id totalUsers:(unint64_t *)users ghostVoiceProfileDetected:(BOOL *)detected
{
  scoresCopy = scores;
  userCopy = user;
  donatedScoresCopy = donatedScores;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]";
    *&buf[12] = 2112;
    *&buf[14] = scoresCopy;
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
  v20 = userCopy;
  v33 = v20;
  detectedCopy = detected;
  v21 = scoresCopy;
  v34 = v21;
  v22 = donatedScoresCopy;
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
    if (!id)
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
  if (id)
  {
LABEL_7:
    *id = *(*&buf[8] + 40);
  }

LABEL_8:
  if (users)
  {
    *users = v42[3];
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

- (id)_generateDeviceUserWithHomeUserUUID:(id)d sharedUserId:(id)id loggableSharedUserId:(id)userId adaccount:(id)adaccount
{
  dCopy = d;
  idCopy = id;
  userIdCopy = userId;
  adaccountCopy = adaccount;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v37 = 136315138;
    v38 = "[ADMultiUserService _generateDeviceUserWithHomeUserUUID:sharedUserId:loggableSharedUserId:adaccount:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", &v37, 0xCu);
  }

  v15 = +[ADAssistantDataManager sharedDataManager];
  _cachedAssistantData = [v15 _cachedAssistantData];
  v17 = [[ADCommunalDeviceUser alloc] init:dCopy sharedUserId:idCopy loggableSharedUserId:userIdCopy iCloudAltDSID:0 attribute:0];
  unredactedAnchor = [v15 unredactedAnchor];
  cachedAssistantDataUnredactedAnchor = self->_cachedAssistantDataUnredactedAnchor;
  self->_cachedAssistantDataUnredactedAnchor = unredactedAnchor;

  [v17 setEnrollmentName:@"primary_user"];
  aceHost = [adaccountCopy aceHost];
  [v17 setAceHost:aceHost];

  speechIdentifier = [adaccountCopy speechIdentifier];
  [v17 setSpeechID:speechIdentifier];

  peerAssistantIdentifier = [adaccountCopy peerAssistantIdentifier];
  [v17 setCompanionAssistantID:peerAssistantIdentifier];

  peerSpeechIdentifier = [adaccountCopy peerSpeechIdentifier];
  [v17 setCompanionSpeechID:peerSpeechIdentifier];

  [v17 setVoiceIDAllowedByUser:0];
  v24 = objc_alloc_init(SAHomeMemberSettings);
  region = [_cachedAssistantData region];
  [v24 setRegion:region];

  ttsVoice = [_cachedAssistantData ttsVoice];
  [v24 setTtsVoice:ttsVoice];

  twentyFourHourTimeDisplay = [_cachedAssistantData twentyFourHourTimeDisplay];
  [v24 setTwentyFourHourTimeDisplay:twentyFourHourTimeDisplay];

  temperatureUnit = [_cachedAssistantData temperatureUnit];
  [v24 setTemperatureUnit:temperatureUnit];

  countryCode = [_cachedAssistantData countryCode];
  [v24 setCountryCode:countryCode];

  parentalRestrictions = [_cachedAssistantData parentalRestrictions];
  [v24 setParentalRestrictions:parentalRestrictions];

  [v24 setMediaPlayerExplicitContentDisallowed:{objc_msgSend(_cachedAssistantData, "mediaPlayerExplicitContentDisallowed")}];
  _unredactedMeCards = [v15 _unredactedMeCards];
  v32 = [_unredactedMeCards count];

  if (v32)
  {
    _unredactedMeCards2 = [v15 _unredactedMeCards];
    v34 = [_unredactedMeCards2 objectAtIndexedSubscript:0];
    [v24 setMeCard:v34];
  }

  dictionary = [v24 dictionary];
  [v17 setSettings:dictionary];

  return v17;
}

- (void)fetchDeviceOwnerAsSAMultiUserInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    if (self->_deviceOwner)
    {
      v5 = [ADCommunalDeviceUser saMultiUserInfo:?];
      infoCopy[2](infoCopy, v5);
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
      v9 = infoCopy;
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

- (void)dumpAssistantStateChunk:(id)chunk
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1002AAE64;
  v29[3] = &unk_10051CF08;
  chunkCopy = chunk;
  v30 = chunkCopy;
  v23 = objc_retainBlock(v29);
  allUsersBySharedUserID = [(ADMultiUserService *)self allUsersBySharedUserID];
  v5 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = allUsersBySharedUserID;
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
        loggableDictionary = [v12 loggableDictionary];
        v15 = [v13 initWithDictionary:loggableDictionary copyItems:1];

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

- (void)showMultiUserSharedUserIDsCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AAF24;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)showPrimaryUserSharedUserIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AB154;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getMultiUserCompanionInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AB274;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)showMultiUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002AB570;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (id)_augmentUserPropertiesWithHomeInfoForUser:(id)user
{
  userCopy = user;
  userProperties = [userCopy userProperties];
  v5 = [userProperties mutableCopy];

  homeUserUUID = [userCopy homeUserUUID];

  if (homeUserUUID)
  {
    v7 = +[ADHomeInfoManager sharedInfoManager];
    currentHome = [v7 currentHome];

    name = [currentHome name];

    if (name)
    {
      name2 = [currentHome name];
      [v5 setObject:name2 forKey:@"homeName"];
    }

    uniqueIdentifier = [currentHome uniqueIdentifier];

    if (uniqueIdentifier)
    {
      uniqueIdentifier2 = [currentHome uniqueIdentifier];
      uUIDString = [uniqueIdentifier2 UUIDString];
      [v5 setObject:uUIDString forKey:@"homeId"];
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
  homeMemberSettings = [v3 homeMemberSettings];
  meCard = [homeMemberSettings meCard];

  if (!meCard)
  {
    v8 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    primaryUser = self->_primaryUser;
    homeUserUUID3 = v8;
    homeUserUUID = [(ADCommunalDeviceUser *)primaryUser homeUserUUID];
    *buf = 136315395;
    v35 = "[ADMultiUserService homeUserIdToNames]";
    v36 = 2113;
    v37 = homeUserUUID;
    _os_log_debug_impl(&_mh_execute_header, homeUserUUID3, OS_LOG_TYPE_DEBUG, "%s Empty meCard for homeUserId %{private}@", buf, 0x16u);

    goto LABEL_5;
  }

  homeUserUUID2 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];

  if (homeUserUUID2)
  {
    homeUserUUID3 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    [v28 setObject:meCard forKey:homeUserUUID3];
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
      homeMemberSettings2 = [v16 homeMemberSettings];
      meCard2 = [homeMemberSettings2 meCard];

      if (meCard2)
      {
        homeUserUUID4 = [v15 homeUserUUID];

        if (!homeUserUUID4)
        {
          goto LABEL_18;
        }

        homeUserUUID5 = [v15 homeUserUUID];
        [v28 setObject:meCard2 forKey:homeUserUUID5];
        goto LABEL_16;
      }

      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        homeUserUUID5 = v21;
        homeUserUUID6 = [v15 homeUserUUID];
        *buf = v27;
        v35 = "[ADMultiUserService homeUserIdToNames]";
        v36 = 2113;
        v37 = homeUserUUID6;
        _os_log_debug_impl(&_mh_execute_header, homeUserUUID5, OS_LOG_TYPE_DEBUG, "%s Empty meCard for homeUserId %{private}@", buf, 0x16u);

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

- (void)removeUserWithSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v14 = "[ADMultiUserService removeUserWithSharedUserID:completion:]";
    v15 = 2113;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Remove user with shared user id %{private}@", buf, 0x16u);
  }

  if (dCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AC084;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = dCopy;
    v12 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)removeUserWithHomeUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v14 = "[ADMultiUserService removeUserWithHomeUUID:completion:]";
    v15 = 2113;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Remove user with home user id %{private}@", buf, 0x16u);
  }

  if (dCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AC290;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = dCopy;
    v12 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_postRemovalStateCleanup
{
  [(ADMultiUserService *)self _saveSharedUsers];
  [(ADMultiUserService *)self _updateVoiceProfileInfo];

  [(ADMultiUserService *)self _updateSAMultiUserInfo];
}

- (BOOL)_removeUser:(id)user homeUserID:(id)d sharedUserID:(id)iD iCloudAltDSID:(id)sID error:(id *)error
{
  errorCopy = error;
  userCopy = user;
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v16 = sIDCopy;
  v17 = AFIsATVOnly();
  iCloudAltDSID = v16;
  if (!v16)
  {
    iCloudAltDSID = 0;
    if (v17)
    {
      if (userCopy)
      {
        iCloudAltDSID = [userCopy iCloudAltDSID];
      }

      else
      {
        iCloudAltDSID = 0;
      }

      if (dCopy)
      {
        homeUserUUID = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
        iCloudAltDSID3 = [homeUserUUID isEqualToString:dCopy];

        if (iCloudAltDSID3)
        {
          iCloudAltDSID2 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];

          iCloudAltDSID = iCloudAltDSID2;
        }
      }

      if (!iCloudAltDSID)
      {
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s #multi-user-atv No iCloudAltDSID found for user.. checking local mapping", buf, 0xCu);
        }

        iCloudAltDSID = [(NSMutableDictionary *)self->_iCloudAltDSIDByHomeUserID objectForKey:dCopy, errorCopy];
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315395;
          v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
          v65 = 2113;
          v66 = iCloudAltDSID;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s #multi-user-atv Found %{private}@", buf, 0x16u);
        }
      }
    }
  }

  v23 = AFIsATVOnly();
  if (userCopy || !v23 || (-[ADCommunalDeviceUser iCloudAltDSID](self->_primaryUser, "iCloudAltDSID"), homeUserUUID5 = objc_claimAutoreleasedReturnValue(), iCloudAltDSID3 = [iCloudAltDSID isEqualToString:homeUserUUID5], homeUserUUID5, (iCloudAltDSID3 & 1) != 0))
  {
    homeUserUUID5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      primaryUser = self->_primaryUser;
      homeUserUUID5 = homeUserUUID5;
      iCloudAltDSID3 = [(ADCommunalDeviceUser *)primaryUser iCloudAltDSID];
      *buf = 136315395;
      v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
      v65 = 2113;
      v66 = iCloudAltDSID3;
      _os_log_impl(&_mh_execute_header, homeUserUUID5, OS_LOG_TYPE_INFO, "%s #multi-user-atv Shared user not found or is primary %{private}@ ", buf, 0x16u);
    }

    if (userCopy)
    {
      goto LABEL_22;
    }
  }

  else
  {
    userCopy = [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID objectForKey:iCloudAltDSID];
    if (userCopy)
    {
LABEL_22:
      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        homeUserUUID2 = [userCopy homeUserUUID];
        sharedUserID = [userCopy sharedUserID];
        [userCopy iCloudAltDSID];
        v31 = v30 = iDCopy;
        *buf = 136315907;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        v65 = 2113;
        v66 = homeUserUUID2;
        v67 = 2113;
        v68 = sharedUserID;
        v69 = 2113;
        v70 = v31;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Deleting shared user with home User ID (%{private}@) shared User ID (%{private}@) iCloud AltDSID: (%{private}@)", buf, 0x2Au);

        iDCopy = v30;
        v26 = AFSiriLogContextDaemon;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s PB User profile does not exist.", buf, 0xCu);
      }

      homeUserUUID3 = [userCopy homeUserUUID];

      if (homeUserUUID3)
      {
        sharedUsersByHomeUserUUID = self->_sharedUsersByHomeUserUUID;
        homeUserUUID4 = [userCopy homeUserUUID];
        [(NSMutableDictionary *)sharedUsersByHomeUserUUID removeObjectForKey:homeUserUUID4];
      }

      sharedUserID2 = [userCopy sharedUserID];

      if (sharedUserID2)
      {
        sharedUsersBySharedUserID = self->_sharedUsersBySharedUserID;
        sharedUserID3 = [userCopy sharedUserID];
        [(NSMutableDictionary *)sharedUsersBySharedUserID removeObjectForKey:sharedUserID3];
      }

      iCloudAltDSID4 = [userCopy iCloudAltDSID];

      if (iCloudAltDSID4)
      {
        sharedUsersByiCloudAltDSID = self->_sharedUsersByiCloudAltDSID;
        iCloudAltDSID5 = [userCopy iCloudAltDSID];
        [(NSMutableDictionary *)sharedUsersByiCloudAltDSID removeObjectForKey:iCloudAltDSID5];
      }

      [(ADMultiUserService *)self _untrackUUIDsForUser:userCopy];
      v41 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        sharedUserID4 = [userCopy sharedUserID];
        *buf = 136315395;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        v65 = 2113;
        v66 = sharedUserID4;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Posting notification that shared user with sharedUserId: (%{private}@) has been removed", buf, 0x16u);
      }

      v44 = +[NSNotificationCenter defaultCenter];
      [v44 postNotificationName:@"ADMultiUserSharedUserRemovedNotification" object:userCopy];

      sharedUserID5 = [userCopy sharedUserID];
      [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:sharedUserID5 forLanguageCode:0];

LABEL_35:
      if (iCloudAltDSID)
      {
        v46 = +[ADAnalyticsIdentifiersProvider sharedInstance];
        [v46 removeObserver:self foriCloudAltDSId:iCloudAltDSID];
      }

      notify_post(AFCachedFusePersonalizationTokenChanged);
      v47 = 1;
      goto LABEL_38;
    }
  }

  v49 = iDCopy;
  if (dCopy)
  {
    homeUserUUID5 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    if (([homeUserUUID5 isEqualToString:dCopy]& 1) != 0)
    {
      goto LABEL_45;
    }

    if (iDCopy)
    {
      goto LABEL_43;
    }

LABEL_47:
    if (!iCloudAltDSID)
    {
      v50 = 0;
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  if (!iDCopy)
  {
    goto LABEL_47;
  }

LABEL_43:
  iCloudAltDSID3 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
  if ([iCloudAltDSID3 isEqualToString:iDCopy])
  {

    if (!dCopy)
    {
LABEL_56:
      [(ADMultiUserService *)self _untrackUUIDsForUser:self->_primaryUser, errorCopy];
      v52 = AFSiriLogContextDaemon;
      iDCopy = v49;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v53 = self->_primaryUser;
        v54 = v52;
        iCloudAltDSID6 = [(ADCommunalDeviceUser *)v53 iCloudAltDSID];
        *buf = 136315907;
        v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
        v65 = 2113;
        v66 = dCopy;
        v67 = 2113;
        v68 = v49;
        v69 = 2113;
        v70 = iCloudAltDSID6;
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

  if (!iCloudAltDSID)
  {
    v50 = 0;
    goto LABEL_53;
  }

LABEL_50:
  iCloudAltDSID7 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];
  v50 = [iCloudAltDSID7 isEqualToString:iCloudAltDSID];

  if (v49)
  {
LABEL_53:
  }

LABEL_54:
  if (dCopy)
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
    homeUserUUID6 = [0 homeUserUUID];
    sharedUserID6 = [0 sharedUserID];
    iCloudAltDSID8 = [0 iCloudAltDSID];
    *buf = 136315907;
    v64 = "[ADMultiUserService _removeUser:homeUserID:sharedUserID:iCloudAltDSID:error:]";
    v65 = 2113;
    v66 = homeUserUUID6;
    v67 = 2113;
    v68 = sharedUserID6;
    v69 = 2113;
    v70 = iCloudAltDSID8;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s Multi user not found for home User ID (%{private}@) shared User ID (%{private}@) iCloud AltDSID (%{private}@)", buf, 0x2Au);
  }

  if (errorCopy)
  {
    [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    *errorCopy = v47 = 0;
  }

  else
  {
    v47 = 0;
  }

  iDCopy = v49;
LABEL_38:

  return v47;
}

- (void)_logRelevantAnalyticsOnUserAddedWithSharedUserID:(id)d isPrimary:(BOOL)primary
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
  primaryCopy = primary;
  [v6 logEventWithType:6112 contextProvider:v7];
}

- (void)removeUserWithShareOwnerNames:(id)names completion:(id)completion
{
  namesCopy = names;
  completionCopy = completion;
  if (!namesCopy || ![namesCopy count])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[ADMultiUserService removeUserWithShareOwnerNames:completion:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s no shareOwnerNames", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_7;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_7;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002ACF50;
  block[3] = &unk_10051E088;
  block[4] = self;
  v11 = namesCopy;
  v12 = completionCopy;
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

- (void)_addUser:(id)user sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d enrollmentName:(id)name isPrimary:(BOOL)primary nonCloudSyncedUser:(BOOL)syncedUser completion:(id)self0
{
  primaryCopy = primary;
  userCopy = user;
  idCopy = id;
  userIdCopy = userId;
  dCopy = d;
  nameCopy = name;
  completionCopy = completion;
  v91 = nameCopy;
  if (![(ADMultiUserService *)self _profileLimitReached])
  {
    goto LABEL_5;
  }

  v21 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:userCopy];
  if (v21)
  {

    goto LABEL_5;
  }

  [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
  v22 = v89 = idCopy;
  v23 = [userCopy isEqualToString:v22];

  idCopy = v89;
  if (v23)
  {
LABEL_5:
    if (primaryCopy)
    {
      primaryUser = self->_primaryUser;
      v25 = userIdCopy;
      if (primaryUser)
      {
        if (nameCopy)
        {
          [(ADCommunalDeviceUser *)primaryUser setEnrollmentName:nameCopy];
          primaryUser = self->_primaryUser;
        }

        sharedUserID = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
        v27 = [sharedUserID isEqualToString:idCopy];

        if (v27)
        {
          v28 = kAFAssistantErrorDomain;
          v29 = 6000;
          goto LABEL_48;
        }

        homeUserUUID = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
        v63 = [homeUserUUID isEqualToString:userCopy];

        if (v63)
        {
          v64 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s Resetting sharedUserID on existing primary user since home User ID matches", buf, 0xCu);
          }

          sharedUserID2 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
          [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:sharedUserID2 forLanguageCode:0];

          [(ADCommunalDeviceUser *)self->_primaryUser setSharedUserID:idCopy];
        }

        goto LABEL_79;
      }

      v56 = [[ADCommunalDeviceUser alloc] init:userCopy sharedUserId:idCopy loggableSharedUserId:userIdCopy iCloudAltDSID:dCopy attribute:0];
      v57 = self->_primaryUser;
      self->_primaryUser = v56;

      objc_storeStrong(&self->_deviceOwner, self->_primaryUser);
      [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
      [(ADCommunalDeviceUser *)self->_primaryUser setEnrollmentName:nameCopy];
      v58 = +[ADAnalyticsIdentifiersProvider sharedInstance];
      [v58 addObserver:self foriCloudAltDSId:0];

      homeUserUUID2 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];

      if (homeUserUUID2)
      {
        homeUserUUID3 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
      }

      else
      {
        if (!AFIsATV() || ([(ADCommunalDeviceUser *)self->_primaryUser sharedUserID], v74 = objc_claimAutoreleasedReturnValue(), v74, !v74))
        {
LABEL_57:
          if (syncedUser)
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
            v95 = idCopy;
            v96 = 2112;
            v97 = dCopy;
            _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "%s #multi-user Logging userAddedWithSharedUserID:(%@) iCloudAltDSID (%@) for primary User ", buf, 0x20u);
          }

          if (AFIsATV())
          {
            if (dCopy)
            {
              [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID removeObjectForKey:dCopy];
            }

            if (idCopy)
            {
              [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeObjectForKey:idCopy];
            }

            if (userCopy)
            {
              [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID removeObjectForKey:userCopy];
            }
          }

          sharedUsersByiCloudAltDSID = self->_sharedUsersByiCloudAltDSID;
          if (!sharedUsersByiCloudAltDSID)
          {
LABEL_78:
            [(ADMultiUserService *)self _logRelevantAnalyticsOnUserAddedWithSharedUserID:idCopy isPrimary:1];
            goto LABEL_79;
          }

          v77 = [(NSMutableDictionary *)sharedUsersByiCloudAltDSID objectForKey:dCopy];
          if (!v77)
          {
LABEL_77:

            goto LABEL_78;
          }

          v78 = idCopy;
          v79 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "%s #multi-user-atv primary user existed as shared user. Untracking as shared user.", buf, 0xCu);
            if (!userCopy)
            {
              goto LABEL_73;
            }
          }

          else if (!userCopy)
          {
LABEL_73:
            idCopy = v78;
            if (v78)
            {
              [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeObjectForKey:v78];
            }

            if (dCopy)
            {
              [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID removeObjectForKey:dCopy];
            }

            goto LABEL_77;
          }

          [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID removeObjectForKey:userCopy];
          goto LABEL_73;
        }

        homeUserUUID3 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      }

      v61 = homeUserUUID3;
      [(ADMultiUserService *)self _trackHomeUserUUIDForInFlightVoiceProfile:homeUserUUID3];

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

    v36 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:userCopy];
    homeUserUUID4 = [v36 homeUserUUID];
    v38 = [homeUserUUID4 isEqualToString:userCopy];

    if (v38)
    {
      v39 = idCopy;
      v40 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:userCopy];
      v41 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        sharedUserID3 = [v40 sharedUserID];
        *buf = 136315906;
        v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
        v94 = 2112;
        v95 = v39;
        v96 = 2112;
        v97 = dCopy;
        v98 = 2112;
        v99 = sharedUserID3;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Secondary user exists for (%@) iCloudAltDSID (%@), rewriting (%@)", buf, 0x2Au);
      }

      sharedUserID4 = [v40 sharedUserID];
      if (([sharedUserID4 isEqualToString:v39] & 1) == 0)
      {
        v45 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315395;
          v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
          v94 = 2113;
          v95 = sharedUserID4;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s Deleting %{private}@", buf, 0x16u);
        }

        [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:sharedUserID4 forLanguageCode:0];
        [(NSMutableDictionary *)self->_sharedUsersBySharedUserID removeObjectForKey:sharedUserID4];
        [v40 setSharedUserID:v39];
        [(NSMutableDictionary *)self->_sharedUsersBySharedUserID setObject:v40 forKey:v39];
      }

LABEL_25:
      idCopy = v39;
      v25 = userIdCopy;
      goto LABEL_79;
    }

    homeUserUUID5 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    if (([homeUserUUID5 isEqualToString:userCopy] & 1) == 0)
    {
      sharedUserID5 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      v48 = idCopy;
      v49 = sharedUserID5;
      v39 = v48;
      if (![sharedUserID5 isEqualToString:?])
      {
        iCloudAltDSID = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];
        v82 = [iCloudAltDSID isEqualToString:dCopy];

        idCopy = v39;
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

          v40 = [[ADCommunalDeviceUser alloc] init:userCopy sharedUserId:v39 loggableSharedUserId:userIdCopy iCloudAltDSID:dCopy attribute:1];
          [v40 setEnrollmentName:v91];
          if (syncedUser)
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
            sharedUserID6 = [v40 sharedUserID];
            *buf = 136315395;
            v93 = "[ADMultiUserService _addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
            v94 = 2113;
            v95 = sharedUserID6;
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
          v95 = idCopy;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Secondary user not added for (%@) due to conflicts", buf, 0x16u);
        }

        v25 = userIdCopy;
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

        v53 = idCopy;
        v54 = [[ADCommunalDeviceUser alloc] init:userCopy sharedUserId:idCopy loggableSharedUserId:userIdCopy iCloudAltDSID:dCopy attribute:1];
        [v54 setEnrollmentName:v91];
        if (syncedUser)
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

        idCopy = v53;
        [(ADMultiUserService *)self _logRelevantAnalyticsOnUserAddedWithSharedUserID:v53 isPrimary:0];

LABEL_79:
        notify_post(AFCachedFusePersonalizationTokenChanged);
        v66 = 0;
        goto LABEL_80;
      }

      idCopy = v39;
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
  processIdentifier = [v70 processIdentifier];
  v72 = byte_100590548;
  v73 = sub_100097574();
  [v69 reportIssueForError:v66 type:6102 context:&__NSDictionary0__struct processIdentifier:processIdentifier walkboutStatus:v72 triggerForIDSIdentifiers:v73];

  idCopy = v89;
  v25 = userIdCopy;
  if (!v66)
  {
    goto LABEL_79;
  }

LABEL_80:
  if (dCopy)
  {
    v80 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v80 addObserver:self foriCloudAltDSId:dCopy];
  }

  [(ADMultiUserService *)self _updateSAMultiUserInfo];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v66);
  }
}

- (void)addUser:(id)user sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d enrollmentName:(id)name isPrimary:(BOOL)primary nonCloudSyncedUser:(BOOL)syncedUser completion:(id)self0
{
  userCopy = user;
  idCopy = id;
  userIdCopy = userId;
  dCopy = d;
  nameCopy = name;
  completionCopy = completion;
  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADMultiUserService addUser:sharedUserId:loggableSharedUserId:iCloudAltDSID:enrollmentName:isPrimary:nonCloudSyncedUser:completion:]";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(ADMultiUserService *)self _isHostingMultiUserLanguage])
  {
    if (userCopy)
    {
      if (!idCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = AFIsATV();
      if (!idCopy || (v25 & 1) == 0)
      {
LABEL_14:
        if (completionCopy)
        {
          v23 = kAFAssistantErrorDomain;
          v24 = 6002;
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    if (userIdCopy && nameCopy)
    {
      queue = self->_queue;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1002AE33C;
      v28[3] = &unk_100519920;
      syncedUserCopy = syncedUser;
      v28[4] = self;
      v29 = userCopy;
      v30 = idCopy;
      v31 = userIdCopy;
      v32 = dCopy;
      v33 = nameCopy;
      primaryCopy = primary;
      v34 = completionCopy;
      dispatch_async(queue, v28);

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (completionCopy)
  {
    v23 = kAFAssistantErrorDomain;
    v24 = 6012;
LABEL_16:
    v27 = [NSError errorWithDomain:v23 code:v24 userInfo:&__NSDictionary0__struct];
    (*(completionCopy + 2))(completionCopy, v27);
  }

LABEL_17:
}

- (void)_addDeviceOwner:(id)owner sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d audioAppSignals:(id)signals enrollmentName:(id)name companionInfo:(id)info shareOwnerName:(id)self0 homeMemberSettings:(id)self1 loggingAllowed:(BOOL)self2 completion:(id)self3
{
  ownerCopy = owner;
  idCopy = id;
  userIdCopy = userId;
  dCopy = d;
  signalsCopy = signals;
  nameCopy = name;
  infoCopy = info;
  ownerNameCopy = ownerName;
  settingsCopy = settings;
  completionCopy = completion;
  if (!self->_primaryUser)
  {
    v60 = nameCopy;
    selfCopy = self;
    v30 = AFSiriLogContextDaemon;
    if (self->_deviceOwner)
    {
      v27 = ownerCopy;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v65 = "[ADMultiUserService _addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Device owner already exists.", buf, 0xCu);
      }

      LOBYTE(v55) = allowed;
      v31 = [(ADMultiUserService *)self _updateDeviceOwner:ownerCopy sharedUserId:idCopy enrollmentName:v60 companionInfo:infoCopy shareOwnerName:ownerNameCopy homeMemberSettings:settingsCopy loggingAllowed:v55];
      self->_isMultiUserInfoDirty = v31;
      v28 = userIdCopy;
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v27 = ownerCopy;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315395;
        v65 = "[ADMultiUserService _addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
        v66 = 2113;
        v67 = idCopy;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s A new device owner will be added:(%{private}@)", buf, 0x16u);
      }

      v36 = [(NSMutableDictionary *)self->_homeUserSettings objectForKey:ownerCopy];
      v37 = [v36 objectForKey:@"personalDomainsIsEnabled"];
      v58 = [v37 integerValue] == 1;

      v59 = v36;
      v38 = [v36 objectForKey:@"allowUnauthenticatedRequests"];
      v57 = [v38 integerValue] == 1;

      v39 = [v36 objectForKey:@"allowExplicitContent"];
      v56 = [v39 integerValue] == 1;

      v28 = userIdCopy;
      v40 = [[ADCommunalDeviceUser alloc] init:ownerCopy sharedUserId:idCopy loggableSharedUserId:userIdCopy iCloudAltDSID:dCopy attribute:0];
      deviceOwner = selfCopy->_deviceOwner;
      selfCopy->_deviceOwner = v40;

      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setEnrollmentName:v60];
      v42 = selfCopy->_deviceOwner;
      [infoCopy assistantID];
      v44 = v43 = dCopy;
      [(ADCommunalDeviceUser *)v42 setCompanionAssistantID:v44];

      v45 = selfCopy->_deviceOwner;
      speechID = [infoCopy speechID];
      [(ADCommunalDeviceUser *)v45 setCompanionSpeechID:speechID];

      v47 = selfCopy->_deviceOwner;
      idsIdentifier = [infoCopy idsIdentifier];
      [(ADCommunalDeviceUser *)v47 setCompanionIDSIdentifier:idsIdentifier];

      v49 = selfCopy->_deviceOwner;
      productPrefix = [infoCopy productPrefix];
      [(ADCommunalDeviceUser *)v49 setProductPrefix:productPrefix];

      v51 = selfCopy->_deviceOwner;
      aceHost = [infoCopy aceHost];
      [(ADCommunalDeviceUser *)v51 setAceHost:aceHost];

      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setShareOwnerName:ownerNameCopy];
      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setAllowExplicitContent:v56];
      v53 = selfCopy->_deviceOwner;
      dictionary = [settingsCopy dictionary];
      [(ADCommunalDeviceUser *)v53 setSettings:dictionary];

      dCopy = v43;
      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner testAndSetLoggingIsAllowed:allowed];
      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setVoiceIDAllowedByUser:0];
      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setPersonalDomainsIsEnabled:v58];
      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setUnauthenticatedRequestsAllowed:v57];
      -[ADCommunalDeviceUser setCompanionPeerToPeerHandoffCapable:](selfCopy->_deviceOwner, "setCompanionPeerToPeerHandoffCapable:", [infoCopy peerToPeerHandoffCapability]);
      [(ADCommunalDeviceUser *)selfCopy->_deviceOwner setAudioAppSignals:signalsCopy];
      selfCopy->_isMultiUserInfoDirty = 1;

      if (!selfCopy->_isMultiUserInfoDirty)
      {
        goto LABEL_9;
      }
    }

    v32 = +[ADPreferences sharedPreferences];
    [(ADCommunalDeviceUser *)selfCopy->_deviceOwner dictionaryRepresentation];
    v34 = v33 = dCopy;
    [v32 setDeviceOwner:v34];

    dCopy = v33;
LABEL_9:
    [(ADMultiUserService *)selfCopy _saveDeviceOwnerToKeychainCache];
    v35 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v35 addObserver:selfCopy foriCloudAltDSId:0];

    nameCopy = v60;
    goto LABEL_10;
  }

  v26 = AFSiriLogContextDaemon;
  v27 = ownerCopy;
  v28 = userIdCopy;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v65 = "[ADMultiUserService _addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Primary user already exists.", buf, 0xCu);
  }

LABEL_10:
  completionCopy[2](completionCopy, 0);
}

- (BOOL)_updateDeviceOwner:(id)owner sharedUserId:(id)id enrollmentName:(id)name companionInfo:(id)info shareOwnerName:(id)ownerName homeMemberSettings:(id)settings loggingAllowed:(BOOL)allowed
{
  ownerCopy = owner;
  idCopy = id;
  nameCopy = name;
  infoCopy = info;
  ownerNameCopy = ownerName;
  settingsCopy = settings;
  if (!self->_primaryUser)
  {
    deviceOwner = self->_deviceOwner;
    if (deviceOwner)
    {
      homeUserUUID = [(ADCommunalDeviceUser *)deviceOwner homeUserUUID];
      v25 = ownerCopy;
      v26 = v25;
      if (homeUserUUID == v25)
      {
      }

      else
      {
        if (!v25 || !homeUserUUID)
        {

          goto LABEL_17;
        }

        v27 = [homeUserUUID isEqual:v25];

        if ((v27 & 1) == 0)
        {
LABEL_17:
          v32 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v33 = self->_deviceOwner;
            v34 = v32;
            homeUserUUID2 = [(ADCommunalDeviceUser *)v33 homeUserUUID];
            *buf = 136315650;
            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
            v113 = 2112;
            v114 = homeUserUUID2;
            v115 = 2112;
            v116 = v26;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Not updating deviceOwner since homeUserUUIDs are different %@, %@", buf, 0x20u);
          }

          goto LABEL_2;
        }
      }

      enrollmentName = [(ADCommunalDeviceUser *)self->_deviceOwner enrollmentName];
      v29 = nameCopy;
      v30 = v29;
      v110 = idCopy;
      if (enrollmentName == v29)
      {
      }

      else
      {
        if (!v29 || !enrollmentName)
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
          sharedUserID = [(ADCommunalDeviceUser *)self->_deviceOwner sharedUserID];
          v38 = v110;
          v39 = v38;
          if (sharedUserID == v38)
          {

            goto LABEL_35;
          }

          if (v38 && sharedUserID)
          {
            v40 = [sharedUserID isEqual:v38];

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
          settings = [(ADCommunalDeviceUser *)self->_deviceOwner settings];
          dictionary = [settingsCopy dictionary];
          dictionary2 = settings;
          v45 = dictionary;
          v46 = v45;
          if (dictionary2 == v45)
          {
          }

          else
          {
            if (dictionary2 && v45)
            {
              v47 = [dictionary2 isEqual:v45];

              if (v47)
              {
LABEL_46:
                shareOwnerName = [(ADCommunalDeviceUser *)self->_deviceOwner shareOwnerName];
                v51 = ownerNameCopy;
                v52 = v51;
                v108 = nameCopy;
                if (shareOwnerName == v51)
                {

                  goto LABEL_56;
                }

                if (v51 && shareOwnerName)
                {
                  v53 = [shareOwnerName isEqual:v51];

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
                if ([(ADCommunalDeviceUser *)self->_deviceOwner loggingIsAllowed]!= allowed)
                {
                  v55 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s Updating loggingIsAllowed", buf, 0xCu);
                  }

                  [(ADCommunalDeviceUser *)self->_deviceOwner testAndSetLoggingIsAllowed:allowed];
                  v21 = 1;
                }

                companionSpeechID = [(ADCommunalDeviceUser *)self->_deviceOwner companionSpeechID];
                speechID = [infoCopy speechID];
                speechID2 = companionSpeechID;
                v59 = speechID;
                v60 = v59;
                if (speechID2 == v59)
                {
                }

                else
                {
                  if (speechID2 && v59)
                  {
                    v61 = [speechID2 isEqual:v59];

                    if (v61)
                    {
LABEL_71:
                      companionAssistantID = [(ADCommunalDeviceUser *)self->_deviceOwner companionAssistantID];
                      assistantID = [infoCopy assistantID];
                      assistantID2 = companionAssistantID;
                      v67 = assistantID;
                      v68 = v67;
                      v69 = assistantID2 != v67;
                      if (assistantID2 == v67)
                      {
                      }

                      else
                      {
                        if (assistantID2 && v67)
                        {
                          v70 = [assistantID2 isEqual:v67];

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
                        assistantID2 = [infoCopy assistantID];
                        [(ADCommunalDeviceUser *)v72 setCompanionAssistantID:assistantID2];
                      }

LABEL_82:
                      companionIDSIdentifier = [(ADCommunalDeviceUser *)self->_deviceOwner companionIDSIdentifier];
                      idsIdentifier = [infoCopy idsIdentifier];
                      idsIdentifier2 = companionIDSIdentifier;
                      v76 = idsIdentifier;
                      v77 = v76;
                      if (idsIdentifier2 == v76)
                      {
                      }

                      else
                      {
                        if (idsIdentifier2 && v76)
                        {
                          v78 = [idsIdentifier2 isEqual:v76];

                          if (v78)
                          {
LABEL_93:
                            productPrefix = [(ADCommunalDeviceUser *)self->_deviceOwner productPrefix];
                            productPrefix2 = [infoCopy productPrefix];
                            productPrefix3 = productPrefix;
                            v84 = productPrefix2;
                            v85 = v84;
                            if (productPrefix3 == v84)
                            {
                            }

                            else
                            {
                              if (productPrefix3 && v84)
                              {
                                v86 = [productPrefix3 isEqual:v84];

                                if (v86)
                                {
LABEL_104:
                                  aceHost = [(ADCommunalDeviceUser *)self->_deviceOwner aceHost];
                                  aceHost2 = [infoCopy aceHost];
                                  aceHost3 = aceHost;
                                  v92 = aceHost2;
                                  v93 = v92;
                                  if (aceHost3 == v92)
                                  {
                                  }

                                  else
                                  {
                                    if (aceHost3 && v92)
                                    {
                                      v94 = [aceHost3 isEqual:v92];

                                      if (v94)
                                      {
LABEL_115:
                                        companionPeerToPeerHandoffCapable = [(ADCommunalDeviceUser *)self->_deviceOwner companionPeerToPeerHandoffCapable];
                                        if (companionPeerToPeerHandoffCapable != [infoCopy peerToPeerHandoffCapability])
                                        {
                                          v98 = AFSiriLogContextDaemon;
                                          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                          {
                                            *buf = 136315138;
                                            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%s Updating companion sync metadata capability", buf, 0xCu);
                                          }

                                          -[ADCommunalDeviceUser setCompanionPeerToPeerHandoffCapable:](self->_deviceOwner, "setCompanionPeerToPeerHandoffCapable:", [infoCopy peerToPeerHandoffCapability]);
                                          v69 = 1;
                                        }

                                        companionName = [infoCopy companionName];
                                        if (companionName && (-[ADCommunalDeviceUser companionName](self->_deviceOwner, "companionName"), v100 = objc_claimAutoreleasedReturnValue(), v101 = [v100 isEqualToString:companionName], v100, (v101 & 1) == 0))
                                        {
                                          v102 = AFSiriLogContextDaemon;
                                          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                          {
                                            *buf = 136315394;
                                            v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                            v113 = 2112;
                                            v114 = companionName;
                                            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "%s Updating companionName: %@", buf, 0x16u);
                                          }

                                          [(ADCommunalDeviceUser *)self->_deviceOwner setCompanionName:companionName];
                                          nameCopy = v109;
                                        }

                                        else
                                        {
                                          nameCopy = v109;
                                          if (!v69)
                                          {
LABEL_129:

                                            idCopy = v110;
                                            goto LABEL_3;
                                          }
                                        }

                                        v103 = AFSiriLogContextDaemon;
                                        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                                        {
                                          v104 = self->_deviceOwner;
                                          v105 = v103;
                                          sharedUserID2 = [(ADCommunalDeviceUser *)v104 sharedUserID];
                                          *buf = 136315395;
                                          v112 = "[ADMultiUserService _updateDeviceOwner:sharedUserId:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:]";
                                          v113 = 2113;
                                          v114 = sharedUserID2;
                                          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "%s Posting notification that companion device information/capabilities changed for deviceOwner: (%{private}@)", buf, 0x16u);

                                          nameCopy = v109;
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
                                    aceHost3 = [infoCopy aceHost];
                                    [(ADCommunalDeviceUser *)v96 setAceHost:aceHost3];
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
                              productPrefix3 = [infoCopy productPrefix];
                              [(ADCommunalDeviceUser *)v88 setProductPrefix:productPrefix3];
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
                        idsIdentifier2 = [infoCopy idsIdentifier];
                        [(ADCommunalDeviceUser *)v80 setCompanionIDSIdentifier:idsIdentifier2];
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
                  speechID2 = [infoCopy speechID];
                  [(ADCommunalDeviceUser *)v63 setCompanionSpeechID:speechID2];
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
            dictionary2 = [settingsCopy dictionary];
            [(ADCommunalDeviceUser *)v49 setSettings:dictionary2];
            v21 = 1;
          }

          goto LABEL_46;
        }

        v31 = [enrollmentName isEqual:v29];

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

- (void)addDeviceOwner:(id)owner sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d audioAppSignals:(id)signals enrollmentName:(id)name companionInfo:(id)info shareOwnerName:(id)self0 homeMemberSettings:(id)self1 loggingAllowed:(BOOL)self2 completion:(id)self3
{
  ownerCopy = owner;
  idCopy = id;
  userIdCopy = userId;
  dCopy = d;
  signalsCopy = signals;
  nameCopy = name;
  infoCopy = info;
  ownerNameCopy = ownerName;
  settingsCopy = settings;
  completionCopy = completion;
  v26 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[ADMultiUserService addDeviceOwner:sharedUserId:loggableSharedUserId:iCloudAltDSID:audioAppSignals:enrollmentName:companionInfo:shareOwnerName:homeMemberSettings:loggingAllowed:completion:]";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v27 = ownerCopy;
  if (ownerCopy && idCopy && userIdCopy && nameCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AFAB4;
    block[3] = &unk_1005198D0;
    block[4] = self;
    v34 = ownerCopy;
    v35 = idCopy;
    v36 = userIdCopy;
    v37 = dCopy;
    v38 = signalsCopy;
    v39 = nameCopy;
    v40 = infoCopy;
    v41 = ownerNameCopy;
    v42 = settingsCopy;
    allowedCopy = allowed;
    v43 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    v29 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    (*(completionCopy + 2))(completionCopy, v29);
  }
}

- (void)_deleteShareForUser:(id)user
{
  userCopy = user;
  getCloudKitManager = [(ADMultiUserService *)self getCloudKitManager];
  [getCloudKitManager deleteShareForUser:userCopy completion:&stru_1005198A8];
}

- (void)_allowVoiceIdentificationForThisUser:(id)user iCloudAltDSID:(id)d completion:(id)completion
{
  userCopy = user;
  dCopy = d;
  completionCopy = completion;
  homeUserSettings = self->_homeUserSettings;
  if (homeUserSettings)
  {
    v12 = [(NSMutableDictionary *)self->_homeUserSettings objectForKey:userCopy];
    if (v12)
    {
      v13 = v12;
      if (AFIsATVOnly() && [(NSString *)self->_userWithRMVEnabledDuringBuddy isEqualToString:dCopy])
      {
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v28 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]";
          v29 = 2112;
          v30 = dCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Now past buddy and sync is done; set RMV enabled for the user requested during buddy flow with iCloudAltDSID %@", buf, 0x16u);
        }

        v15 = [v13 mutableCopy];
        [v15 setObject:&off_100533F20 forKey:@"allowVoiceID"];
        [(NSMutableDictionary *)self->_homeUserSettings setObject:v15 forKey:userCopy];

        v13 = v15;
      }

      v16 = [v13 objectForKey:@"allowVoiceID"];
      v17 = v16;
      if (v16 && [v16 integerValue] == 1)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_27;
      }

      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]";
        v29 = 2112;
        v30 = userCopy;
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
        v30 = userCopy;
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

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else if (completionCopy)
    {
      v22 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6010 userInfo:&__NSDictionary0__struct];
      (completionCopy)[2](completionCopy, v22);
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
    v24 = userCopy;
    v26 = completionCopy;
    v25 = dCopy;
    [v21 settingsForMultiUserWithRefresh:homeUserSettings != 0 completion:v23];
  }

LABEL_27:
}

- (BOOL)_updateNonHomeUserSettings:(id)settings
{
  settingsCopy = settings;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADMultiUserService _updateNonHomeUserSettings:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:settingsCopy];
  if (!v6)
  {
    sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    v8 = [sharedUserID isEqualToString:settingsCopy];

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
    iCloudAltDSID = [(ADCommunalDeviceUser *)v6 iCloudAltDSID];
    v18 = 136315394;
    v19 = "[ADMultiUserService _updateNonHomeUserSettings:]";
    v20 = 2112;
    v21 = iCloudAltDSID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %@", &v18, 0x16u);
  }

  iCloudAltDSID2 = [(ADCommunalDeviceUser *)v6 iCloudAltDSID];
  v13 = iCloudAltDSID2;
  if (v6)
  {
    v14 = iCloudAltDSID2 == 0;
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

- (BOOL)_updateHomeKitSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [(NSMutableDictionary *)self->_homeUserSettings objectForKey:settingsCopy];
  v6 = [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID objectForKey:settingsCopy];
  if (!v6)
  {
    homeUserUUID = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
    v8 = [homeUserUUID isEqualToString:settingsCopy];

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
    homeUserUUID = [(ADCommunalDeviceUser *)self->_deviceOwner homeUserUUID];
    v5 = [(NSMutableDictionary *)homeUserSettings objectForKey:homeUserUUID];

    [(ADMultiUserService *)self _updateCommunalDeviceUser:self->_deviceOwner withSettings:v5];
    v6 = +[ADPreferences sharedPreferences];
    dictionaryRepresentation = [(ADCommunalDeviceUser *)self->_deviceOwner dictionaryRepresentation];
    [v6 setDeviceOwner:dictionaryRepresentation];

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
  homeUserUUID = [(ADCommunalDeviceUser *)self->_deviceOwner homeUserUUID];
  v5 = [(NSMutableDictionary *)homeUserSettings objectForKey:homeUserUUID];

  v6 = [v5 objectForKey:@"allowVoiceID"];
  integerValue = [v6 integerValue];

  if ((integerValue != 1) == [(ADCommunalDeviceUser *)self->_deviceOwner voiceIDAllowedByUser])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(ADMultiUserService *)self personalDomainSettingsDidChange:self->_deviceOwner newUserSettings:v5];
  }

  return v8;
}

- (void)_updateCommunalDeviceUser:(id)user withSettings:(id)settings
{
  userCopy = user;
  settingsCopy = settings;
  v7 = [settingsCopy objectForKey:@"allowVoiceID"];
  v8 = [settingsCopy objectForKey:@"personalDomainsIsEnabled"];
  v9 = [settingsCopy objectForKey:@"allowUnauthenticatedRequests"];
  v10 = [settingsCopy objectForKey:@"allowExplicitContent"];

  integerValue = [v7 integerValue];
  personalDomainsIsEnabled = [userCopy personalDomainsIsEnabled];
  if (personalDomainsIsEnabled != [v8 BOOLValue])
  {
    [userCopy setPersonalDomainsIsEnabled:{objc_msgSend(v8, "BOOLValue")}];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      sharedUserID = [userCopy sharedUserID];
      v20 = 136315395;
      v21 = "[ADMultiUserService _updateCommunalDeviceUser:withSettings:]";
      v22 = 2113;
      v23 = sharedUserID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Posting notification that Personal Domains setting changed for sharedUserId: (%{private}@)", &v20, 0x16u);
    }

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:@"ADMultiUserSharedUserPersonalDomainsChangedNotification" object:userCopy];
  }

  [userCopy setUnauthenticatedRequestsAllowed:{objc_msgSend(v9, "BOOLValue")}];
  [userCopy setAllowExplicitContent:{objc_msgSend(v10, "BOOLValue")}];
  [userCopy setVoiceIDAllowedByUser:integerValue == 1];
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    homeUserUUID = [userCopy homeUserUUID];
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
    v31 = homeUserUUID;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s allowExplicitContent: (%@) setVoiceIDAllowedByUser: (%@) personalDomainsIsEnabled: (%@) unauthenticatedRequestsAllowed: (%@) for (%{private}@)", &v20, 0x3Eu);
  }
}

- (BOOL)personalDomainSettingsDidChange:(id)change newUserSettings:(id)settings
{
  changeCopy = change;
  settingsCopy = settings;
  v7 = [settingsCopy objectForKey:@"personalDomainsIsEnabled"];
  bOOLValue = [v7 BOOLValue];

  v9 = [settingsCopy objectForKey:@"allowUnauthenticatedRequests"];
  bOOLValue2 = [v9 BOOLValue];

  v11 = [settingsCopy objectForKey:@"allowExplicitContent"];

  bOOLValue3 = [v11 BOOLValue];
  if (bOOLValue == [changeCopy personalDomainsIsEnabled] && bOOLValue2 == objc_msgSend(changeCopy, "unauthenticatedRequestsAllowed"))
  {
    v13 = bOOLValue3 ^ [changeCopy allowExplicitContent];
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
    sharedUserID = [(ADCommunalDeviceUser *)deviceOwner sharedUserID];
    if (sharedUserID)
    {
      v5 = sharedUserID;
      v6 = +[ADPreferences sharedPreferences];
      sharedUserIdentifier = [v6 sharedUserIdentifier];
      v8 = [sharedUserIdentifier isEqualToString:v5];

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
        sharedUserID2 = [(ADCommunalDeviceUser *)self->_deviceOwner sharedUserID];
        loggableSharedUserID = [(ADCommunalDeviceUser *)self->_deviceOwner loggableSharedUserID];
        [v10 setSharedUserIdentifier:sharedUserID2 loggingSharedUserIdentifier:loggableSharedUserID];
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

- (void)_setSharedUserSiriLanguage:(id)language forSharedUser:(id)user
{
  languageCopy = language;
  userCopy = user;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[ADMultiUserService _setSharedUserSiriLanguage:forSharedUser:]";
    v16 = 2112;
    v17 = languageCopy;
    v18 = 2112;
    v19 = userCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s siriLanguage:%@ sharedUserID:%@", &v14, 0x20u);
  }

  if (!self->_sharedUsersSiriLanguageBySharedUserID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    sharedUsersSiriLanguageBySharedUserID = self->_sharedUsersSiriLanguageBySharedUserID;
    self->_sharedUsersSiriLanguageBySharedUserID = v9;
  }

  if (userCopy)
  {
    [(NSMutableDictionary *)self->_sharedUsersSiriLanguageBySharedUserID setValue:languageCopy forKey:userCopy];
    v11 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:userCopy];
    v12 = v11;
    if (v11)
    {
      [v11 setCompanionSiriLanguage:languageCopy];
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

- (void)_setPrimaryUserSiriLanguage:(id)language
{
  languageCopy = language;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADMultiUserService _setPrimaryUserSiriLanguage:]";
    v10 = 2112;
    v11 = languageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s siriLanguage:%@", &v8, 0x16u);
  }

  primaryUserSiriLanguage = self->_primaryUserSiriLanguage;
  self->_primaryUserSiriLanguage = languageCopy;
  v7 = languageCopy;

  [(ADCommunalDeviceUser *)self->_primaryUser setCompanionSiriLanguage:v7];
}

- (void)_setSharedUserMeDevice:(BOOL)device forSharedUser:(id)user
{
  deviceCopy = device;
  userCopy = user;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[ADMultiUserService _setSharedUserMeDevice:forSharedUser:]";
    v14 = 1024;
    v15 = deviceCopy;
    v16 = 2112;
    v17 = userCopy;
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

  v11 = [NSNumber numberWithBool:deviceCopy];
  [(NSMutableDictionary *)sharedUsersMeDeviceBySharedUserID setValue:v11 forKey:userCopy];
}

- (void)_setPrimaryUserMeDevice:(BOOL)device
{
  deviceCopy = device;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADMultiUserService _setPrimaryUserMeDevice:]";
    v8 = 1024;
    v9 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s meDevice:%d", &v6, 0x12u);
  }

  self->_primaryUserMeDevice = deviceCopy;
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
            iCloudAltDSID = [v10 iCloudAltDSID];

            if (iCloudAltDSID)
            {
              iCloudAltDSID2 = [v10 iCloudAltDSID];
              if (_AFPreferencesSiriRMVSetting() == 1)
              {
                [v10 setVoiceIDAllowedByUser:1];
              }

              else
              {
                iCloudAltDSID3 = [v10 iCloudAltDSID];
                [v10 setVoiceIDAllowedByUser:_AFPreferencesSiriRMVSetting() == 2];
              }
            }
          }

          dictionaryRepresentation = [v10 dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
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
          sharedUserID = [v20 sharedUserID];

          if (!sharedUserID)
          {
            dictionaryRepresentation2 = [v20 dictionaryRepresentation];
            [v4 addObject:dictionaryRepresentation2];
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
    iCloudAltDSID = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];

    if (iCloudAltDSID)
    {
      primaryUser = self->_primaryUser;
      iCloudAltDSID2 = [(ADCommunalDeviceUser *)primaryUser iCloudAltDSID];
      if (_AFPreferencesSiriRMVSetting() == 1)
      {
        [(ADCommunalDeviceUser *)primaryUser setVoiceIDAllowedByUser:1];
      }

      else
      {
        iCloudAltDSID3 = [(ADCommunalDeviceUser *)self->_primaryUser iCloudAltDSID];
        [(ADCommunalDeviceUser *)primaryUser setVoiceIDAllowedByUser:_AFPreferencesSiriRMVSetting() == 2];
      }
    }
  }

  v7 = +[ADPreferences sharedPreferences];
  dictionaryRepresentation = [(ADCommunalDeviceUser *)self->_primaryUser dictionaryRepresentation];
  [v7 setMultiUserPrimaryUser:dictionaryRepresentation];

  v9 = +[ADPreferences sharedPreferences];
  dictionaryRepresentation2 = [(ADCommunalDeviceUser *)self->_deviceOwner dictionaryRepresentation];
  [v9 setDeviceOwner:dictionaryRepresentation2];

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
  homeMembers = [(SAMultiUserInfo *)self->_multiUserInfo homeMembers];
  v6 = [homeMembers count] != 0;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    usersWithAvailableVoiceProfiles = self->_usersWithAvailableVoiceProfiles;
    v9 = v7;
    v10 = [(NSMutableArray *)usersWithAvailableVoiceProfiles count];
    v11 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID count];
    homeMembers2 = [(SAMultiUserInfo *)self->_multiUserInfo homeMembers];
    *buf = 136315906;
    *&buf[4] = "[ADMultiUserService _updateSAMultiUserInfo]";
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v41 = v11;
    v42 = 2048;
    v43 = [homeMembers2 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s _usersWithAvailableVoiceProfiles: %lu, _sharedUsersBySharedUserID: %lu, multiUsersPreviousCount: %lu", buf, 0x2Au);
  }

  if ([(ADMultiUserService *)self _isHostingMultiUserLanguage])
  {
    _homeMembersForPlatform = [(ADMultiUserService *)self _homeMembersForPlatform];

    v4 = _homeMembersForPlatform;
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
        sharedUserId = [(SAHomeMemberInfo *)self->_saUnknownUser sharedUserId];
        *v34 = 136315395;
        v35 = "[ADMultiUserService _updateSAMultiUserInfo]";
        v36 = 2113;
        v37 = sharedUserId;
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

  _inFlightVoiceProfilesByUUID = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
  v23 = [_inFlightVoiceProfilesByUUID count];

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

  dictionary = [(SAMultiUserInfo *)self->_multiUserInfo dictionary];
  dictionary2 = [v3 dictionary];
  v27 = [dictionary isEqualToDictionary:dictionary2];

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
  selfCopy = self;
  primaryUser = self->_primaryUser;
  v6 = AFSiriLogContextDaemon;
  v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  p_vtable = ADAnalyticsIdentifiersProvider.vtable;
  if (primaryUser)
  {
    if (v7)
    {
      v69 = v6;
      companionAssistantID = [(ADCommunalDeviceUser *)primaryUser companionAssistantID];
      sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      voiceIDAllowedByUser = [(ADCommunalDeviceUser *)self->_primaryUser voiceIDAllowedByUser];
      nonCloudSyncedUser = [(ADCommunalDeviceUser *)selfCopy->_primaryUser nonCloudSyncedUser];
      *buf = 136316163;
      v97 = "[ADMultiUserService _homeMembersForPlatform]";
      v98 = 2113;
      v99 = companionAssistantID;
      v100 = 2113;
      v101 = sharedUserID;
      v102 = 2048;
      v103 = voiceIDAllowedByUser;
      v104 = 2048;
      v105 = nonCloudSyncedUser;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "%s _primaryUser companionAssistantID: %{private}@, sharedUserID: %{private}@, voiceIDAllowedByUser=%lu, nonCloudSyncedUser=%lu", buf, 0x34u);

      primaryUser = selfCopy->_primaryUser;
      p_vtable = (ADAnalyticsIdentifiersProvider + 24);
    }

    companionAssistantID2 = [(ADCommunalDeviceUser *)primaryUser companionAssistantID];

    if (companionAssistantID2)
    {
      v10 = [p_vtable + 17 saHomeMemberInfo:selfCopy->_primaryUser];
      if (v10 && ([(ADCommunalDeviceUser *)selfCopy->_primaryUser voiceIDAllowedByUser]|| [(ADCommunalDeviceUser *)selfCopy->_primaryUser nonCloudSyncedUser]))
      {
        usersWithAvailableVoiceProfiles = selfCopy->_usersWithAvailableVoiceProfiles;
        sharedUserID2 = [(ADCommunalDeviceUser *)selfCopy->_primaryUser sharedUserID];
        LODWORD(usersWithAvailableVoiceProfiles) = [(NSMutableArray *)usersWithAvailableVoiceProfiles containsObject:sharedUserID2];

        if (usersWithAvailableVoiceProfiles)
        {
          [v89 addObject:v10];
          v13 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v74 = selfCopy->_primaryUser;
            v75 = v13;
            sharedUserID3 = [(ADCommunalDeviceUser *)v74 sharedUserID];
            homeUserUUID = [(ADCommunalDeviceUser *)selfCopy->_primaryUser homeUserUUID];
            iCloudAltDSID = [(ADCommunalDeviceUser *)selfCopy->_primaryUser iCloudAltDSID];
            ephemeralID = [(ADCommunalDeviceUser *)selfCopy->_primaryUser ephemeralID];
            *buf = 136316163;
            v97 = "[ADMultiUserService _homeMembersForPlatform]";
            v98 = 2113;
            v99 = sharedUserID3;
            v100 = 2113;
            v101 = homeUserUUID;
            v102 = 2113;
            v103 = iCloudAltDSID;
            v104 = 2113;
            v105 = ephemeralID;
            _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "%s Adding primaryUser with sharedUserId %{private}@ and homeUserUUID %{private}@ and iCloudAltDSID %{private}@ and ephemeralID %{private}@", buf, 0x34u);
          }

          lastVisitedAceHost = [v10 lastVisitedAceHost];

          if (!lastVisitedAceHost)
          {
            v15 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v16 = selfCopy->_primaryUser;
              v17 = v15;
              sharedUserID4 = [(ADCommunalDeviceUser *)v16 sharedUserID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = sharedUserID4;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s PrimaryUser %{private}@ has nil aceHost", buf, 0x16u);
            }
          }

          if ([(ADMultiUserService *)selfCopy _isTrackingUUIDForInFlightVoiceProfile:selfCopy->_primaryUser])
          {
            v19 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v20 = selfCopy->_primaryUser;
              v21 = v19;
              homeUserUUID2 = [(ADCommunalDeviceUser *)v20 homeUserUUID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = homeUserUUID2;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s HomeUserID (%{private}@) voice profile is available but it's still being tracked as in-flight. Stop tracking it", buf, 0x16u);
            }

            [(ADMultiUserService *)selfCopy _untrackUUIDsForUser:selfCopy->_primaryUser];
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

  v23 = selfCopy;
  if (AFIsATV())
  {
    if (!selfCopy->_primaryUser)
    {
      deviceOwner = selfCopy->_deviceOwner;
      if (deviceOwner)
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v97 = "[ADMultiUserService _homeMembersForPlatform]";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s primary User is nil but we have a device owner.", buf, 0xCu);
          deviceOwner = selfCopy->_deviceOwner;
        }

        v26 = [p_vtable + 17 saHomeMemberInfo:deviceOwner];
        if (v26 && ([(ADCommunalDeviceUser *)selfCopy->_deviceOwner voiceIDAllowedByUser]|| [(ADCommunalDeviceUser *)selfCopy->_deviceOwner nonCloudSyncedUser]))
        {
          v27 = selfCopy->_usersWithAvailableVoiceProfiles;
          sharedUserID5 = [(ADCommunalDeviceUser *)selfCopy->_deviceOwner sharedUserID];
          LODWORD(v27) = [(NSMutableArray *)v27 containsObject:sharedUserID5];

          if (v27)
          {
            [v89 addObject:v26];
            v29 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              v80 = selfCopy->_deviceOwner;
              v81 = v29;
              sharedUserID6 = [(ADCommunalDeviceUser *)v80 sharedUserID];
              homeUserUUID3 = [(ADCommunalDeviceUser *)selfCopy->_deviceOwner homeUserUUID];
              iCloudAltDSID2 = [(ADCommunalDeviceUser *)selfCopy->_deviceOwner iCloudAltDSID];
              *buf = 136315907;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = sharedUserID6;
              v100 = 2113;
              v101 = homeUserUUID3;
              v102 = 2113;
              v103 = iCloudAltDSID2;
              _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "%s Adding device owner with sharedUserId %{private}@ and homeUserUUID %{private}@ and iCloudAltDSID %{private}@", buf, 0x2Au);
            }

            lastVisitedAceHost2 = [v26 lastVisitedAceHost];

            if (!lastVisitedAceHost2)
            {
              v31 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v32 = selfCopy->_deviceOwner;
                v33 = v31;
                sharedUserID7 = [(ADCommunalDeviceUser *)v32 sharedUserID];
                *buf = 136315395;
                v97 = "[ADMultiUserService _homeMembersForPlatform]";
                v98 = 2113;
                v99 = sharedUserID7;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s device owner %{private}@ has nil aceHost", buf, 0x16u);
              }
            }

            if ([(ADMultiUserService *)selfCopy _isTrackingUUIDForInFlightVoiceProfile:selfCopy->_deviceOwner])
            {
              v35 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v36 = selfCopy->_deviceOwner;
                v37 = v35;
                homeUserUUID4 = [(ADCommunalDeviceUser *)v36 homeUserUUID];
                *buf = 136315395;
                v97 = "[ADMultiUserService _homeMembersForPlatform]";
                v98 = 2113;
                v99 = homeUserUUID4;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s HomeUserID (%{private}@) voice profile is available but it's still being tracked as in-flight. Stop tracking it", buf, 0x16u);
              }

              [(ADMultiUserService *)selfCopy _untrackUUIDsForUser:selfCopy->_deviceOwner];
            }
          }
        }

        v23 = selfCopy;
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
          voiceIDAllowedByUser2 = [v44 voiceIDAllowedByUser];
          companionAssistantID3 = [v44 companionAssistantID];
          nonCloudSyncedUser2 = [v44 nonCloudSyncedUser];
          ephemeralID2 = [v44 ephemeralID];
          *buf = 136316419;
          v97 = "[ADMultiUserService _homeMembersForPlatform]";
          v98 = 2113;
          v99 = v43;
          v100 = 2048;
          v101 = voiceIDAllowedByUser2;
          v23 = selfCopy;
          v102 = 2113;
          v103 = companionAssistantID3;
          v104 = 2048;
          v105 = nonCloudSyncedUser2;
          v106 = 2113;
          v107 = ephemeralID2;
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

        voiceIDAllowedByUser3 = [v44 voiceIDAllowedByUser];
        if (!voiceIDAllowedByUser3)
        {
          if (![v44 nonCloudSyncedUser])
          {
            goto LABEL_68;
          }

LABEL_54:
          v48 = v23->_usersWithAvailableVoiceProfiles;
          sharedUserID8 = [v44 sharedUserID];
          v50 = [(NSMutableArray *)v48 containsObject:sharedUserID8];

          if (voiceIDAllowedByUser3)
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
            sharedUserID9 = [v44 sharedUserID];
            homeUserUUID5 = [v44 homeUserUUID];
            iCloudAltDSID3 = [v44 iCloudAltDSID];
            ephemeralID3 = [v44 ephemeralID];
            *buf = v85;
            v97 = "[ADMultiUserService _homeMembersForPlatform]";
            v98 = 2113;
            v99 = sharedUserID9;
            v100 = 2113;
            v101 = homeUserUUID5;
            v102 = 2113;
            v103 = iCloudAltDSID3;
            v104 = 2113;
            v105 = ephemeralID3;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s Adding user with sharedUserId %{private}@ and homeUserUUID %{private}@ and iCloudAltDSID %{private}@ and ephemeralID %{private}@", buf, 0x34u);
          }

          lastVisitedAceHost3 = [v45 lastVisitedAceHost];

          if (!lastVisitedAceHost3)
          {
            v53 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v54 = v53;
              sharedUserID10 = [v44 sharedUserID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = sharedUserID10;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s SharedUser %{private}@ has nil aceHost", buf, 0x16u);
            }
          }

          if ([(ADMultiUserService *)v23 _isTrackingUUIDForInFlightVoiceProfile:v44])
          {
            v56 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v57 = v56;
              homeUserUUID6 = [v44 homeUserUUID];
              *buf = 136315395;
              v97 = "[ADMultiUserService _homeMembersForPlatform]";
              v98 = 2113;
              v99 = homeUserUUID6;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s removed HomeUserID (%{private}@) voice profile is available but it's still being tracked as in-flight. Stop tracking it", buf, 0x16u);
            }

            [(ADMultiUserService *)v23 _untrackUUIDsForUser:v44];
          }

          goto LABEL_67;
        }

        companionAssistantID4 = [v44 companionAssistantID];
        if (companionAssistantID4 || ([v44 nonCloudSyncedUser] & 1) != 0)
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

- (void)_describeSAMultiUserInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (!infoCopy || ![infoCopy count])
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
          enrollmentName = [v12 enrollmentName];
          sharedUserId = [v12 sharedUserId];
          ephemeralUserId = [v12 ephemeralUserId];
          *buf = 136315907;
          v22 = "[ADMultiUserService _describeSAMultiUserInfo:]";
          v23 = 2113;
          v24 = enrollmentName;
          v25 = 2113;
          v26 = sharedUserId;
          v27 = 2113;
          v28 = ephemeralUserId;
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
  languageCode = [v3 languageCode];

  if (self->_primaryUser)
  {
    v5 = [languageCode isEqualToString:self->_primaryUserSiriLanguage];
    v6 = AFSiriLogContextDaemon;
    v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        primaryUser = self->_primaryUser;
        v28 = v6;
        sharedUserID = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
        settings = [(ADCommunalDeviceUser *)self->_primaryUser settings];
        v31 = [settings objectForKey:SAHomeMemberSettingsPreferredLanguagePListKey];
        *buf = 136315906;
        v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
        v53 = 2112;
        v54 = sharedUserID;
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
      settings2 = [(ADCommunalDeviceUser *)v33 settings];
      v36 = [settings2 objectForKey:SAHomeMemberSettingsPreferredLanguagePListKey];
      sharedUserID2 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
      *buf = 136316162;
      v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
      v53 = 2112;
      v54 = primaryUserSiriLanguage;
      v55 = 2112;
      v56 = v36;
      v57 = 2112;
      v58 = sharedUserID2;
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
      sharedUserID3 = [v14 sharedUserID];
      v17 = [(NSMutableDictionary *)sharedUsersSiriLanguageBySharedUserID objectForKeyedSubscript:sharedUserID3];

      if ([languageCode isEqualToString:v17])
      {
        ++v8;
        v18 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        log = v18;
        sharedUserID4 = [v14 sharedUserID];
        settings3 = [v14 settings];
        v39 = [settings3 objectForKey:v44];
        *buf = 136315906;
        v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
        v53 = 2112;
        v54 = sharedUserID4;
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
        sharedUserID4 = [v14 sharedUserID];
        settings3 = [v14 settings];
        v39 = [settings3 objectForKey:v44];
        *buf = v38;
        v52 = "[ADMultiUserService countUsersWithMatchingSiriLanguage]";
        v53 = 2112;
        v54 = v17;
        v55 = 2112;
        v56 = sharedUserID4;
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
    v54 = languageCode;
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
        sharedUserID = [primaryUser sharedUserID];
        *buf = 136315650;
        v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
        v39 = 2112;
        v40 = sharedUserID;
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
        sharedUserID2 = [primaryUser sharedUserID];
        *buf = 136315650;
        v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
        v39 = 2112;
        v40 = sharedUserID2;
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
        sharedUserID3 = [v11 sharedUserID];
        v17 = [(NSMutableDictionary *)sharedUsersMeDeviceBySharedUserID objectForKey:sharedUserID3];

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
            sharedUserID4 = [v11 sharedUserID];
            *buf = v32;
            v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
            v39 = 2112;
            v40 = v17;
            v41 = 2112;
            v42 = sharedUserID4;
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
            sharedUserID4 = [v11 sharedUserID];
            *buf = 136315650;
            v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
            v39 = 2112;
            v40 = sharedUserID4;
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
            sharedUserID4 = [v11 sharedUserID];
            *buf = 136315650;
            v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
            v39 = 2112;
            v40 = sharedUserID4;
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
          sharedUserID4 = [v11 sharedUserID];
          *buf = 136315650;
          v38 = "[ADMultiUserService countUsersWithLocationServicesEnabled]";
          v39 = 2112;
          v40 = sharedUserID4;
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
    personalDomainsIsEnabled = [(ADCommunalDeviceUser *)primaryUser personalDomainsIsEnabled];
    v5 = AFSiriLogContextDaemon;
    v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (personalDomainsIsEnabled)
    {
      if (v6)
      {
        v25 = self->_primaryUser;
        v26 = v5;
        sharedUserID = [(ADCommunalDeviceUser *)v25 sharedUserID];
        *buf = 136315650;
        v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
        v39 = 2112;
        v40 = sharedUserID;
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
      sharedUserID2 = [(ADCommunalDeviceUser *)v28 sharedUserID];
      *buf = 136315650;
      v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
      v39 = 2112;
      v40 = sharedUserID2;
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
        sharedUserID3 = [v12 sharedUserID];
        *buf = v31;
        v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
        v39 = 2112;
        v40 = sharedUserID3;
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
        sharedUserID3 = [v12 sharedUserID];
        *buf = v31;
        v38 = "[ADMultiUserService countUsersWithPersonalRequestsEnabled]";
        v39 = 2112;
        v40 = sharedUserID3;
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

  sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
  v9 = [(ADMultiUserService *)self addIfSiriCloudSyncEnabledForUser:sharedUserID];

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
          sharedUserID2 = [v15 sharedUserID];
          v9 += [(ADMultiUserService *)self addIfSiriCloudSyncEnabledForUser:sharedUserID2];
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

- (unint64_t)addIfSiriCloudSyncEnabledForUser:(id)user
{
  userCopy = user;
  v5 = sub_10001A3B0(userCopy);
  v6 = [(NSMutableDictionary *)self->_sharedUsersSiriCloudSyncBySharedUserID objectForKey:userCopy];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_sharedUsersSiriCloudSyncBySharedUserID objectForKey:userCopy];
    bOOLValue = [v7 BOOLValue];

    if (v5)
    {
LABEL_3:
      isSiriCloudSyncEnabled = [v5 isSiriCloudSyncEnabled];
      v10 = AFSiriLogContextDaemon;
      v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
      if (isSiriCloudSyncEnabled)
      {
        if (v11)
        {
          v17 = 136315906;
          v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
          v19 = 1024;
          v20 = bOOLValue;
          v21 = 2112;
          v22 = userCopy;
          v23 = 2048;
          bOOLValue = 1;
          v24 = 1;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s PeerInfo found - user's Siri cloud sync is enabled. oldCloudSyncEnabled: %d, sharedUserId: %@, current count: %lu", &v17, 0x26u);
        }

        else
        {
          bOOLValue = 1;
        }
      }

      else
      {
        if (v11)
        {
          v17 = 136315906;
          v18 = "[ADMultiUserService addIfSiriCloudSyncEnabledForUser:]";
          v19 = 1024;
          v20 = bOOLValue;
          v21 = 2112;
          v22 = userCopy;
          v23 = 2048;
          v24 = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s PeerInfo found - user's Siri cloud sync is disabled. oldCloudSyncEnabled: %d, sharedUserId: %@, current count: %lu", &v17, 0x26u);
        }

        bOOLValue = 0;
      }

      sharedUsersSiriCloudSyncBySharedUserID = self->_sharedUsersSiriCloudSyncBySharedUserID;
      v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isSiriCloudSyncEnabled]);
      [(NSMutableDictionary *)sharedUsersSiriCloudSyncBySharedUserID setObject:v15 forKey:userCopy];

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

    bOOLValue = 1;
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
    v20 = bOOLValue;
    v21 = 2112;
    v22 = userCopy;
    v23 = 2048;
    v24 = bOOLValue;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s oldCloudSyncEnabled:%d sharedUserId: %@, current count: %lu", &v17, 0x26u);
  }

LABEL_17:

  return bOOLValue;
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
      appDomain = [v19 appDomain];
      if ([appDomain isEqualToString:v16])
      {
      }

      else
      {
        appDomain2 = [v19 appDomain];
        v22 = [appDomain2 isEqualToString:v17];

        if (!v22)
        {
          continue;
        }
      }

      sharedSiriId = [v19 sharedSiriId];
      if (sharedSiriId && ([(NSMutableArray *)self->_usersWithAvailableVoiceProfiles containsObject:sharedSiriId]& 1) == 0)
      {
        [(NSMutableArray *)self->_usersWithAvailableVoiceProfiles addObject:sharedSiriId];
        v24 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:sharedSiriId];
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

  _inFlightVoiceProfilesByUUID = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
  [_inFlightVoiceProfilesByUUID removeAllObjects];
}

- (BOOL)_isTrackingUUIDForInFlightVoiceProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    _inFlightVoiceProfilesByUUID = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
    homeUserUUID = [profileCopy homeUserUUID];
    v7 = [_inFlightVoiceProfilesByUUID containsObject:homeUserUUID];

    if (v7 & 1) != 0 || (-[ADMultiUserService _inFlightVoiceProfilesByUUID](self, "_inFlightVoiceProfilesByUUID"), v8 = objc_claimAutoreleasedReturnValue(), [profileCopy sharedUserID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, (v10))
    {
      v11 = 1;
    }

    else
    {
      _inFlightVoiceProfilesByUUID2 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
      iCloudAltDSID = [profileCopy iCloudAltDSID];
      v11 = [_inFlightVoiceProfilesByUUID2 containsObject:iCloudAltDSID];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_untrackUUIDsForUser:(id)user
{
  userCopy = user;
  homeUserUUID = [userCopy homeUserUUID];
  [(ADMultiUserService *)self _untrackHomeUserUUIDForInFlightVoiceProfile:homeUserUUID];

  sharedUserID = [userCopy sharedUserID];
  [(ADMultiUserService *)self _untrackHomeUserUUIDForInFlightVoiceProfile:sharedUserID];

  iCloudAltDSID = [userCopy iCloudAltDSID];

  [(ADMultiUserService *)self _untrackHomeUserUUIDForInFlightVoiceProfile:iCloudAltDSID];
}

- (void)_untrackHomeUserUUIDForInFlightVoiceProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    _inFlightVoiceProfilesByUUID = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
    v6 = [_inFlightVoiceProfilesByUUID containsObject:profileCopy];

    if (v6)
    {
      _inFlightVoiceProfilesByUUID2 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
      [_inFlightVoiceProfilesByUUID2 removeObject:profileCopy];

      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
        v10 = v8;
        v11 = 136315651;
        v12 = "[ADMultiUserService _untrackHomeUserUUIDForInFlightVoiceProfile:]";
        v13 = 2113;
        v14 = profileCopy;
        v15 = 2048;
        v16 = [(NSMutableSet *)inFlightVoiceProfilesByUUID count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Untracking voice profile in-flight for %{private}@. Total profiles in-flight: %lu", &v11, 0x20u);
      }
    }
  }
}

- (void)_trackHomeUserUUIDForInFlightVoiceProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    _inFlightVoiceProfilesByUUID = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
    v6 = [_inFlightVoiceProfilesByUUID containsObject:profileCopy];

    if ((v6 & 1) == 0)
    {
      _inFlightVoiceProfilesByUUID2 = [(ADMultiUserService *)self _inFlightVoiceProfilesByUUID];
      [_inFlightVoiceProfilesByUUID2 addObject:profileCopy];

      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        inFlightVoiceProfilesByUUID = self->_inFlightVoiceProfilesByUUID;
        v10 = v8;
        v11 = 136315651;
        v12 = "[ADMultiUserService _trackHomeUserUUIDForInFlightVoiceProfile:]";
        v13 = 2113;
        v14 = profileCopy;
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
  deviceOwner = [(ADMultiUserService *)self deviceOwner];
  sharedUserID = [deviceOwner sharedUserID];

  return sharedUserID;
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

- (void)triggerVoiceProfileUploadWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADMultiUserService triggerVoiceProfileUploadWithCompletion:completion:]";
    v11 = 2112;
    v12 = completionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s sharedUserid = %@", &v9, 0x16u);
  }

  v8 = [AFError errorWithCode:13];
  if (v6)
  {
    v6[2](v6, v8);
  }
}

- (void)downloadVoiceProfileForiCloudAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADMultiUserService downloadVoiceProfileForiCloudAltDSID:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v8 = [AFError errorWithCode:13];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

- (void)_forceCloudSyncedUserDownload:(id)download
{
  downloadCopy = download;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADMultiUserService _forceCloudSyncedUserDownload:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(ADMultiUserService *)self _isHostingMultiUserLanguage])
  {
    getCloudKitManager = [(ADMultiUserService *)self getCloudKitManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002B5548;
    v8[3] = &unk_10051D2F0;
    v9 = downloadCopy;
    [getCloudKitManager forceMultiUserSync:0 download:1 activity:0 completion:v8];
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

    if (downloadCopy)
    {
      (*(downloadCopy + 2))(downloadCopy, 0);
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
    sharedUserID = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
    [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:sharedUserID forLanguageCode:0];

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
    sharedUserID = [(ADCommunalDeviceUser *)primaryUser sharedUserID];
    [(ADMultiUserService *)self _removeVoiceProfileIfNeeded:sharedUserID forLanguageCode:0];
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

  selfCopy3 = self;
  if (obj)
  {
    v11 = [[ADCommunalDeviceUser alloc] initWithDictionary:obj attribute:0];
    primaryUser = self->_primaryUser;
    self->_primaryUser = v11;

    objc_storeStrong(&self->_deviceOwner, self->_primaryUser);
    [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
    v13 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v13 addObserver:self foriCloudAltDSId:0];

    homeUserUUID = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];

    if (homeUserUUID)
    {
      homeUserUUID2 = [(ADCommunalDeviceUser *)self->_primaryUser homeUserUUID];
LABEL_13:
      v16 = homeUserUUID2;
      [(ADMultiUserService *)self _trackHomeUserUUIDForInFlightVoiceProfile:homeUserUUID2];

      goto LABEL_17;
    }

    if (AFIsATV())
    {
      sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];

      if (sharedUserID)
      {
        homeUserUUID2 = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
        goto LABEL_13;
      }
    }
  }

LABEL_17:
  if (!self->_deviceOwner)
  {
    deviceOwner = [(ADPreferences *)self->_adPreferences deviceOwner];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v19 = [deviceOwner countByEnumeratingWithState:&v55 objects:v72 count:16];
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
            objc_enumerationMutation(deviceOwner);
          }

          v23 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v24 = *(*(&v55 + 1) + 8 * j);
            v25 = v23;
            v26 = [deviceOwner valueForKey:v24];
            *buf = 136315651;
            v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
            v65 = 2112;
            v66 = v24;
            v67 = 2113;
            v68 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s deviceOwner key (%@), value (%{private}@)", buf, 0x20u);
          }
        }

        v20 = [deviceOwner countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v20);
    }

    selfCopy3 = self;
    if (deviceOwner)
    {
      v27 = [[ADCommunalDeviceUser alloc] initWithDictionary:deviceOwner attribute:0];
      deviceOwner = self->_deviceOwner;
      self->_deviceOwner = v27;

      [(ADMultiUserService *)self _saveDeviceOwnerToKeychainCache];
    }
  }

  multiUserSharedUsers = [(ADPreferences *)selfCopy3->_adPreferences multiUserSharedUsers];
  if (multiUserSharedUsers)
  {
    if (!selfCopy3->_sharedUsersBySharedUserID)
    {
      v30 = objc_alloc_init(NSMutableDictionary);
      sharedUsersBySharedUserID = selfCopy3->_sharedUsersBySharedUserID;
      selfCopy3->_sharedUsersBySharedUserID = v30;
    }

    if (!selfCopy3->_sharedUsersByHomeUserUUID)
    {
      v32 = objc_alloc_init(NSMutableDictionary);
      sharedUsersByHomeUserUUID = selfCopy3->_sharedUsersByHomeUserUUID;
      selfCopy3->_sharedUsersByHomeUserUUID = v32;
    }

    if (!selfCopy3->_sharedUsersByiCloudAltDSID)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      sharedUsersByiCloudAltDSID = selfCopy3->_sharedUsersByiCloudAltDSID;
      selfCopy3->_sharedUsersByiCloudAltDSID = v34;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v48 = multiUserSharedUsers;
    v36 = multiUserSharedUsers;
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
          sharedUserID2 = [(ADCommunalDeviceUser *)v41 sharedUserID];
          homeUserUUID3 = [(ADCommunalDeviceUser *)v41 homeUserUUID];
          iCloudAltDSID = [(ADCommunalDeviceUser *)v41 iCloudAltDSID];
          v45 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315907;
            v64 = "[ADMultiUserService _loadCloudSyncedUsersFromCache]";
            v65 = 2113;
            v66 = sharedUserID2;
            v67 = 2113;
            v68 = homeUserUUID3;
            v69 = 2113;
            v70 = iCloudAltDSID;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s sharedUser = %{private}@, homeUserUUID = %{private}@, iCloudAltDSID = %{private}@", buf, 0x2Au);
          }

          [(ADMultiUserService *)self _updateMappingsForSharedUser:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v51 objects:v71 count:16];
      }

      while (v38);
    }

    selfCopy3 = self;
    multiUserSharedUsers = v48;
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

  [(ADMultiUserService *)selfCopy3 _updateSAMultiUserInfo];
}

- (void)_updateMappingsForSharedUser:(id)user
{
  userCopy = user;
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

  sharedUserID = [userCopy sharedUserID];
  homeUserUUID = [userCopy homeUserUUID];
  iCloudAltDSID = [userCopy iCloudAltDSID];
  if (sharedUserID)
  {
    [(NSMutableDictionary *)self->_sharedUsersBySharedUserID setObject:userCopy forKey:sharedUserID];
  }

  if (homeUserUUID)
  {
    [(NSMutableDictionary *)self->_sharedUsersByHomeUserUUID setObject:userCopy forKey:homeUserUUID];
    v14 = homeUserUUID;
LABEL_13:
    [(ADMultiUserService *)self _trackHomeUserUUIDForInFlightVoiceProfile:v14];
    goto LABEL_14;
  }

  v15 = AFIsATV();
  if (sharedUserID)
  {
    v14 = sharedUserID;
    if (v15)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (iCloudAltDSID)
  {
    [(NSMutableDictionary *)self->_sharedUsersByiCloudAltDSID setObject:userCopy forKey:iCloudAltDSID];
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

- (void)didReceiveIDs:(id)ds forUser:(id)user
{
  dsCopy = ds;
  userCopy = user;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B6294;
  block[3] = &unk_10051DB68;
  v12 = userCopy;
  selfCopy = self;
  v14 = dsCopy;
  v9 = dsCopy;
  v10 = userCopy;
  dispatch_async(queue, block);
}

- (void)onUserAnalyticsIdsChanged:(id)changed iCloudAltDSId:(id)id sharedUserId:(id)userId
{
  changedCopy = changed;
  idCopy = id;
  userIdCopy = userId;
  v11 = AFSiriLogContextDaemon;
  v12 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (idCopy)
  {
    if (v12)
    {
      v13 = v11;
      userEphemeralId = [changedCopy userEphemeralId];
      uUIDString = [userEphemeralId UUIDString];
      userAggregationId = [changedCopy userAggregationId];
      uUIDString2 = [userAggregationId UUIDString];
      *v21 = 136316163;
      *&v21[4] = "[ADMultiUserService onUserAnalyticsIdsChanged:iCloudAltDSId:sharedUserId:]";
      *&v21[12] = 2113;
      *&v21[14] = idCopy;
      *&v21[22] = 2113;
      v22 = userIdCopy;
      *v23 = 2113;
      *&v23[2] = uUIDString;
      *&v23[10] = 2113;
      *&v23[12] = uUIDString2;
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
    userEphemeralId = [changedCopy userEphemeralId];
    uUIDString = [userEphemeralId UUIDString];
    userAggregationId = [changedCopy userAggregationId];
    uUIDString2 = [userAggregationId UUIDString];
    *v21 = 136315651;
    *&v21[4] = "[ADMultiUserService onUserAnalyticsIdsChanged:iCloudAltDSId:sharedUserId:]";
    *&v21[12] = 2113;
    *&v21[14] = uUIDString;
    *&v21[22] = 2113;
    v22 = uUIDString2;
    v18 = "%s Received an Ephemeral & Aggregation ID Update for the device owner: Ephemeral ID: %{private}@, Aggregation ID: %{private}@";
    v19 = v13;
    v20 = 32;
    goto LABEL_6;
  }

  [(ADMultiUserService *)self _updateSAMultiUserInfo:*v21];
}

- (void)_refreshUsersAndVoiceProfiles:(BOOL)profiles
{
  profilesCopy = profiles;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v106 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]";
    v107 = 1024;
    LODWORD(v108) = profilesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s liveOnOnboardedProfilesDidChange = %{BOOL}d", buf, 0x12u);
  }

  v71 = profilesCopy;
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
        appDomain = [(NSString *)v20 appDomain];
        v23 = [appDomain isEqualToString:v17];

        if (v23)
        {
          [v70 addObject:v20];
          sharedSiriId = [(NSString *)v20 sharedSiriId];
          [v69 addObject:sharedSiriId];
        }
      }

      appDomain2 = [(NSString *)v20 appDomain];
      if ([appDomain2 isEqualToString:v18])
      {
      }

      else
      {
        appDomain3 = [(NSString *)v20 appDomain];
        v27 = [appDomain3 isEqualToString:v17];

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

      sharedSiriId2 = [(NSString *)v20 sharedSiriId];
      if (sharedSiriId2 && ([(NSMutableArray *)self->_usersWithAvailableVoiceProfiles containsObject:sharedSiriId2]& 1) == 0)
      {
        [(NSMutableArray *)self->_usersWithAvailableVoiceProfiles addObject:sharedSiriId2];
        v31 = [(NSMutableDictionary *)self->_sharedUsersBySharedUserID objectForKey:sharedSiriId2];
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
        sharedSiriId3 = [v54 sharedSiriId];
        homeId = [v54 homeId];
        userName = [v54 userName];
        v58 = SiriCoreUUIDStringCreate();
        v59 = SiriCoreUUIDStringCreate();
        if (homeId)
        {
          if (sharedSiriId3)
          {
            goto LABEL_61;
          }
        }

        else
        {
          homeId = SiriCoreUUIDStringCreate();
          if (sharedSiriId3)
          {
            goto LABEL_61;
          }
        }

        sharedSiriId3 = SiriCoreUUIDStringCreate();
LABEL_61:
        v60 = @"whatsinaname";
        if (userName)
        {
          v60 = userName;
        }

        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1002B7344;
        v78[3] = &unk_10051C498;
        v79 = v60;
        v61 = v60;
        LOBYTE(v65) = 1;
        [(ADMultiUserService *)self addUser:homeId sharedUserId:sharedSiriId3 loggableSharedUserId:v58 iCloudAltDSID:v59 enrollmentName:v61 isPrimary:0 nonCloudSyncedUser:v65 completion:v78];

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
    selfCopy = self;
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

- (void)_currentHomeIsReady:(id)ready
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

- (void)_primaryUserSharedUserIdentifierDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B82FC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (self->_multiUserListener == listener)
  {
    return [(ADMultiUserService *)self _multiUserListenerShouldAcceptNewConnection:connection];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_multiUserListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "[ADMultiUserService _multiUserListenerShouldAcceptNewConnection:]";
      v17 = 2112;
      v18 = connectionCopy;
      v19 = 1024;
      v20 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ MultiUser Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFMultiUserService];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002B8858;
    v13[3] = &unk_10051A380;
    v14 = processIdentifier;
    [connectionCopy setInvalidationHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002B8914;
    v11[3] = &unk_10051A380;
    v12 = processIdentifier;
    [connectionCopy setInterruptionHandler:v11];
    [connectionCopy resume];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADMultiUserService _multiUserListenerShouldAcceptNewConnection:]";
      v17 = 2112;
      v18 = connectionCopy;
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
    sharedUserID = [(ADCommunalDeviceUser *)self->_primaryUser sharedUserID];
    [v5 setObject:primaryUser forKey:sharedUserID];
  }

  deviceOwner = self->_deviceOwner;
  if (deviceOwner && !self->_primaryUser)
  {
    sharedUserID2 = [(ADCommunalDeviceUser *)self->_deviceOwner sharedUserID];
    [v5 setObject:deviceOwner forKey:sharedUserID2];
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

- (id)_initWithPreferences:(id)preferences ssrManager:(id)manager homeInfoManager:(id)infoManager
{
  preferencesCopy = preferences;
  managerCopy = manager;
  infoManagerCopy = infoManager;
  v39.receiver = self;
  v39.super_class = ADMultiUserService;
  v12 = [(ADMultiUserService *)&v39 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MultiUserServiceQueue", v13);

    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_adPreferences, preferences);
    v16 = [ADCommunalDeviceUser saHomeMemberInfo:0];
    saUnknownUser = v12->_saUnknownUser;
    v12->_saUnknownUser = v16;

    objc_storeStrong(&v12->_voiceProfileManager, manager);
    objc_storeStrong(&v12->_homeInfoManager, infoManager);
    languageCode = [preferencesCopy languageCode];
    v19 = languageCode;
    if (languageCode)
    {
      v20 = languageCode;
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
    [v23 addObserver:v12 selector:"_primaryUserSharedUserIdentifierDidChangeNotification:" name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:preferencesCopy];
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
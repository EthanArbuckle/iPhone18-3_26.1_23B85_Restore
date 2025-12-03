@interface ADDailyDeviceStatusActivity
+ (id)taskFromActivity:(id)activity;
+ (id)xpcCriteria;
- (ADDailyDeviceStatusActivity)init;
- (BOOL)_isSiriCapableDigitalCarKeyAvailable;
- (BOOL)_preciseLocationEnabled;
- (id)_buildDailySelfTriggerSuppressionMetrics;
- (id)_buildDailyVoiceTriggerMetrics:(id)metrics;
- (id)_truncatedGradingOptInStateChanges:(id)changes;
- (id)fetchVoiceTriggerSettings;
- (id)getVolumeCapacity;
- (int)_locationAccessPermission;
- (int)getAdaptiveVolumeUserIntent:(int)intent;
- (int)getSiriDataSharingOptInStatus;
- (void)_triggerABCForNullAssistantIdentifier;
- (void)buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:(BOOL)enabled onLockscreen:(BOOL)lockscreen dictationEnabled:(BOOL)dictationEnabled voiceTriggerEnabled:(BOOL)triggerEnabled starkHasBeenActiveWithin24Hours:(BOOL)hours raiseToSpeakEnabled:(BOOL)speakEnabled activeAppleAudioDevices:(id)devices spokenNotificationsEnabled:(BOOL)self0 announceNotificationsEnabledOnHeadphones:(BOOL)self1 carplayAnnounceEnablementType:(int64_t)self2 isAnnounceNotificationsMutedForCarPlay:(BOOL)self3 shouldSkipTriggerlessReplyConfirmation:(BOOL)self4 spokenNotificationsProxCardSeen:(BOOL)self5 spokenNotificationsControlCenterModuleEnabled:(BOOL)self6 spokenNotificationsAllowSettings:(unint64_t)self7 announceCallsEnabled:(BOOL)self8 preciseLocationEnabled:(BOOL)self9 locationAccessPermission:(int)permission adaptiveSiriVolumeEnabled:(BOOL)volumeEnabled adaptiveSiriVolumePermanentOffsetEnabled:(BOOL)offsetEnabled adaptiveSiriVolumePermanentOffsetFactor:(id)factor adaptiveSiriVolumeMostRecentIntent:(id)intent isRemoteDarwinVoiceTriggerEnabled:(BOOL)voiceTriggerEnabled autoSendSettings:(id)sendSettings siriInCallEnablementState:(int)state hangUpEnablementState:(int)enablementState heartbeatQueuedTime:(unint64_t)time siriVoiceTriggerSettings:(id)enabled0 isShowAppsBehindSiriEnabledOnCarPlay:(BOOL)enabled1 isSiriCapableDigitalCarKeyAvailable:(BOOL)enabled2 connectedBTCarHeadunits:(id)enabled3 withCompletion:(id)enabled4;
- (void)fetchAppleMusicSubscriptionForSharedUser:(id)user completion:(id)completion;
- (void)fetchEnrolledUsersWithCompletion:(id)completion;
- (void)fetchICUserIdentityForSharedUser:(id)user completion:(id)completion;
- (void)runWithCompletion:(id)completion;
@end

@implementation ADDailyDeviceStatusActivity

- (id)fetchVoiceTriggerSettings
{
  v2 = objc_alloc_init(SISchemaSiriVoiceTriggerSettings);
  [v2 setIsHeySiriTriggerPhraseEnabled:0];
  [v2 setIsJustSiriTriggerPhraseEnabled:0];
  [v2 setIsEnrollmentReprompted:0];
  v3 = +[VTPreferences sharedPreferences];
  voiceTriggerEnabled = [v3 voiceTriggerEnabled];

  if (voiceTriggerEnabled)
  {
    v5 = +[VTPreferences sharedPreferences];
    v10 = 0;
    v6 = [v5 getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v10];

    if (v6 <= 1)
    {
      [v2 setIsHeySiriTriggerPhraseEnabled:1];
      [v2 setIsJustSiriTriggerPhraseEnabled:v6];
    }
  }

  v7 = +[CSPreferences sharedPreferences];
  dateWhenVoiceTriggerRePrompted = [v7 dateWhenVoiceTriggerRePrompted];

  if (dateWhenVoiceTriggerRePrompted)
  {
    [v2 setIsEnrollmentReprompted:1];
  }

  return v2;
}

- (void)fetchICUserIdentityForSharedUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADDailyDeviceStatusActivity fetchICUserIdentityForSharedUser:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (userCopy && ([userCopy homeUserUUID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [NSUUID alloc];
    homeUserUUID = [userCopy homeUserUUID];
    v11 = [v9 initWithUUIDString:homeUserUUID];

    if (qword_10058FE18 != -1)
    {
      dispatch_once(&qword_10058FE18, &stru_10050FB28);
    }

    v12 = +[ACAccountStore ic_sharedAccountStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000862E4;
    v15[3] = &unk_10050FB50;
    v16 = v11;
    v17 = completionCopy;
    v13 = v11;
    [v12 ic_storeAccountForHomeUserIdentifier:v13 completion:v15];
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[ADDailyDeviceStatusActivity fetchICUserIdentityForSharedUser:completion:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Non home shared user, Bailing.", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)fetchAppleMusicSubscriptionForSharedUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v15 = "[ADDailyDeviceStatusActivity fetchAppleMusicSubscriptionForSharedUser:completion:]";
    v16 = 2113;
    v17 = userCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Fetching ICUserIdentity for sharedUser: %{private}@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100086958;
  v11[3] = &unk_10050FB08;
  v12 = userCopy;
  v13 = completionCopy;
  v9 = userCopy;
  v10 = completionCopy;
  [(ADDailyDeviceStatusActivity *)self fetchICUserIdentityForSharedUser:v9 completion:v11];
}

- (id)getVolumeCapacity
{
  v2 = [NSURL alloc];
  v3 = NSHomeDirectory();
  v4 = [v2 initFileURLWithPath:v3 isDirectory:1];

  v14[0] = NSURLVolumeTotalCapacityKey;
  v14[1] = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v14[2] = NSURLVolumeAvailableCapacityKey;
  v14[3] = NSURLVolumeAvailableCapacityForOpportunisticUsageKey;
  v5 = [NSArray arrayWithObjects:v14 count:4];
  v11 = 0;
  v6 = [v4 resourceValuesForKeys:v5 error:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[ADDailyDeviceStatusActivity getVolumeCapacity]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #Unable to get volumeTotalCapacityDict", buf, 0xCu);
    }
  }

  return v6;
}

- (void)_triggerABCForNullAssistantIdentifier
{
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[ADDailyDeviceStatusActivity _triggerABCForNullAssistantIdentifier]";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Reporting missing DailyDeviceStatus > siriDeviceID to ABC", &v6, 0xCu);
  }

  v3 = +[SiriCoreSymptomsReporter sharedInstance];
  v4 = +[NSProcessInfo processInfo];
  processIdentifier = [v4 processIdentifier];
  [v3 reportIssueForType:@"SISchemaDailyDeviceStatus" subType:@"null_siriDeviceID" context:&__NSDictionary0__struct processIdentifier:processIdentifier walkboutStatus:byte_100590548];
}

- (id)_truncatedGradingOptInStateChanges:(id)changes
{
  changesCopy = changes;
  siriDataSharingOptInStatusHistory = [changesCopy siriDataSharingOptInStatusHistory];
  v5 = [siriDataSharingOptInStatusHistory count];
  if (v5 >= 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[ADDailyDeviceStatusActivity _truncatedGradingOptInStateChanges:]";
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v13 = changesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Fetching %lu most recent siri data sharing opt-in status change entries from preferences %@", buf, 0x20u);
  }

  v8 = [siriDataSharingOptInStatusHistory subarrayWithRange:{0, v6}];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = sub_10008725C;
  v14 = sub_10008726C;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087274;
  v11[3] = &unk_100512988;
  v11[4] = buf;
  v11[5] = v6;
  [v8 enumerateObjectsUsingBlock:v11];
  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

- (int)getAdaptiveVolumeUserIntent:(int)intent
{
  if ((intent - 1) < 3)
  {
    return intent + 1;
  }

  else
  {
    return 1;
  }
}

- (int)getSiriDataSharingOptInStatus
{
  v2 = _AFPreferencesSiriDataSharingOptInStatus();
  if ((v2 - 1) >= 3)
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

- (void)fetchEnrolledUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  v31 = +[ADMultiUserService sharedService];
  sharedUsersBySharedUserID = [v31 sharedUsersBySharedUserID];
  v6 = [sharedUsersBySharedUserID count];

  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v6)
  {
    v29 = completionCopy;
    if (v8)
    {
      v9 = v7;
      sharedUsersBySharedUserID2 = [v31 sharedUsersBySharedUserID];
      *buf = 136315395;
      v47 = "[ADDailyDeviceStatusActivity fetchEnrolledUsersWithCompletion:]";
      v48 = 2113;
      v49 = sharedUsersBySharedUserID2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Fetching enrolledUsers info: %{private}@", buf, 0x16u);
    }

    v11 = dispatch_group_create();
    v12 = [NSMutableArray alloc];
    sharedUsersBySharedUserID3 = [v31 sharedUsersBySharedUserID];
    v30 = [v12 initWithCapacity:{objc_msgSend(sharedUsersBySharedUserID3, "count")}];

    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v41 = 0u;
    sharedUsersBySharedUserID4 = [v31 sharedUsersBySharedUserID];
    v15 = [sharedUsersBySharedUserID4 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        v18 = 0;
        do
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(sharedUsersBySharedUserID4);
          }

          v19 = *(*(&v41 + 1) + 8 * v18);
          sharedUsersBySharedUserID5 = [v31 sharedUsersBySharedUserID];
          v21 = [sharedUsersBySharedUserID5 objectForKey:v19];

          if (v21)
          {
            v22 = objc_alloc_init(SISchemaEnrolledUserState);
            speechID = [v21 speechID];
            [v22 setSiriLinkedSpeechID:speechID];

            v24 = objc_alloc_init(SISchemaPersonalization);
            [v24 setPersonalDomainsSetup:{objc_msgSend(v21, "personalDomainsIsEnabled")}];
            dispatch_group_enter(v11);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100087784;
            v35[3] = &unk_10050FAB8;
            v36 = v24;
            v37 = v22;
            selfCopy = self;
            v39 = v30;
            v40 = v11;
            v25 = v22;
            v26 = v24;
            [(ADDailyDeviceStatusActivity *)self fetchAppleMusicSubscriptionForSharedUser:v21 completion:v35];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [sharedUsersBySharedUserID4 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v16);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100087854;
    block[3] = &unk_10051E038;
    completionCopy = v29;
    v33 = v30;
    v34 = v29;
    v28 = v30;
    dispatch_group_notify(v11, queue, block);
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v47 = "[ADDailyDeviceStatusActivity fetchEnrolledUsersWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s No enrolledUsers in sharedService", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (int)_locationAccessPermission
{
  if (!+[CLLocationManager locationServicesEnabled])
  {
    return 1;
  }

  v2 = AFEffectiveSiriBundlePathForLocation();
  v3 = [CLLocationManager authorizationStatusForBundlePath:v2];

  if (v3 - 1 > 3)
  {
    return 4;
  }

  else
  {
    return dword_1003F0320[v3 - 1];
  }
}

- (BOOL)_preciseLocationEnabled
{
  v2 = objc_alloc_init(PreciseLocationManager);
  isPreciseLocationEnabled = [(PreciseLocationManager *)v2 isPreciseLocationEnabled];

  return isPreciseLocationEnabled;
}

- (BOOL)_isSiriCapableDigitalCarKeyAvailable
{
  v2 = objc_alloc_init(PKPassLibrary);
  v3 = [v2 passesOfType:1];
  [v3 pk_objectsPassingTest:&stru_10050FA90];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v9 + 1) + 8 * i) passActivationState])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_buildDailySelfTriggerSuppressionMetrics
{
  v32 = objc_alloc_init(SISchemaSelfTriggerSuppressionMetrics);
  v2 = sub_100087E5C(@"Siri.SelfTriggerSuppression");
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v34 = 0;
    v36 = 0;
    v8 = *v38;
    v9 = 0.0;
    v10 = @"eventTimestamp";
    do
    {
      v11 = 0;
      v33 = v7;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [v12 objectForKey:v10];
        v14 = v13;
        if (v13)
        {
          [v13 doubleValue];
          if (v5 - v15 < 86400.0)
          {
            v16 = objc_alloc_init(MHSchemaMHSelfTriggerSuppressionSession);
            v17 = [v12 objectForKey:@"numSelfTriggersDetectedDuringEvent"];
            v18 = v17;
            if (v17)
            {
              v34 += [v17 unsignedIntValue];
              [v16 setNumSelfTriggersDetectedInSession:{objc_msgSend(v18, "unsignedIntValue")}];
            }

            v19 = [v12 objectForKey:@"durationOfSelfTriggerEventInSec"];
            v20 = v19;
            if (v19)
            {
              [v19 doubleValue];
              v9 = v9 + v21;
              [v20 doubleValue];
              [v16 setSessionDurationInSeconds:?];
            }

            v22 = [v12 objectForKey:@"audioSource"];
            v23 = v22;
            if (v18)
            {
              if ([v22 unsignedIntValue] == 1)
              {
                v24 = 1;
              }

              else
              {
                v24 = 2 * ([v23 unsignedIntValue] == 2);
              }

              [v16 setAudioSource:v24];
            }

            v25 = v8;
            v26 = v10;
            v27 = [v12 objectForKey:@"isBluetoothSpeakerActive"];
            v28 = v27;
            if (v27)
            {
              [v16 setIsBluetoothSpeakerActive:{objc_msgSend(v27, "BOOLValue")}];
            }

            v29 = [v12 objectForKey:@"isBuiltInSpeakerActive"];
            v30 = v29;
            if (v29)
            {
              [v16 setIsBuiltInSpeakerActive:{objc_msgSend(v29, "BOOLValue")}];
            }

            if (v36 <= 0xC7)
            {
              [v32 addSelfTriggerSuppressionSessions:v16];
            }

            ++v36;

            v10 = v26;
            v8 = v25;
            v7 = v33;
          }
        }

        v11 = v11 + 1;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }

  else
  {
    v34 = 0;
    v9 = 0.0;
  }

  [v32 setNumSelfTriggersDetected:v34];
  [v32 setDurationSelfTriggerSuppressionWasActiveInSeconds:v9];

  return v32;
}

- (id)_buildDailyVoiceTriggerMetrics:(id)metrics
{
  metricsCopy = metrics;
  v4 = objc_alloc_init(SISchemaVoiceTriggerMetrics);
  v5 = [metricsCopy objectForKey:kCSVoiceTriggerNumImplicitUtt];
  v6 = v5;
  if (v5)
  {
    [v4 setImplicitUtterances:{objc_msgSend(v5, "intValue")}];
  }

  v7 = [metricsCopy objectForKey:kCSVoiceTriggerNumExplicitUtt];
  v8 = v7;
  if (v7)
  {
    [v4 setExplicitUtterances:{objc_msgSend(v7, "intValue")}];
  }

  v71 = v8;
  v72 = v6;
  v9 = [metricsCopy objectForKey:kCSVoiceTriggerFirstPassTriggersPerDay];
  v10 = v9;
  if (v9)
  {
    [v4 setFirstPassTriggers:{objc_msgSend(v9, "intValue")}];
  }

  v70 = v10;
  v73 = metricsCopy;
  v11 = [metricsCopy objectForKey:kCSVoiceTriggerIsJSEnabled];
  bOOLValue = [v11 BOOLValue];

  [v4 setIsJSEnabled:bOOLValue];
  v13 = sub_100087E5C(@"Siri.VoiceTriggerStatistics");
  v14 = +[NSDate date];
  [v14 timeIntervalSince1970];
  v16 = v15;

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = v16;
    v21 = *v94;
    v75 = v4;
    v74 = *v94;
    do
    {
      v22 = 0;
      v76 = v18;
      do
      {
        if (*v94 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v93 + 1) + 8 * v22);
        v24 = [v23 objectForKey:@"absoluteTimestamp"];
        v25 = v24;
        if (v24 && (v20 - [v24 unsignedLongLongValue]) >> 7 <= 0x2A2 && v19 <= 0xC7)
        {
          v26 = v19;
          v27 = v4;
          v92 = v25;
          v28 = objc_alloc_init(MHSchemaMHVoiceTriggerFirstPassStatistic);
          v29 = [v23 objectForKey:@"firstPassPeakScoreHS"];
          v30 = v29;
          if (v29)
          {
            [v29 floatValue];
            [v28 setFirstPassPeakScoreHS:?];
          }

          v31 = [v23 objectForKey:@"firstPassPeakScoreJS"];
          v32 = v31;
          if (v31)
          {
            [v31 floatValue];
            [v28 setFirstPassPeakScoreJS:?];
          }

          v90 = v32;
          v33 = [v23 objectForKey:@"triggerScoreHS"];
          v34 = v33;
          if (v33)
          {
            [v33 floatValue];
            [v28 setTriggerScoreHS:?];
          }

          v89 = v34;
          v35 = [v23 objectForKey:@"triggerScoreJS"];
          v36 = v27;
          v37 = v35;
          if (v35)
          {
            [v35 floatValue];
            [v28 setTriggerScoreJS:?];
          }

          v88 = v37;
          v38 = [v23 objectForKey:@"keywordThresholdHS"];
          v39 = v38;
          if (v38)
          {
            [v38 floatValue];
            [v28 setKeywordThresholdHS:?];
          }

          v87 = v39;
          v40 = [v23 objectForKey:@"keywordThresholdJS"];
          v82 = v26;
          v41 = v40;
          if (v40)
          {
            [v40 floatValue];
            [v28 setKeywordThresholdJS:?];
          }

          v86 = v41;
          v42 = [v23 objectForKey:@"recognizerScoreHS"];
          v43 = v42;
          if (v42)
          {
            [v42 floatValue];
            [v28 setRecognizerScoreHS:?];
          }

          v44 = [v23 objectForKey:@"recognizerScoreJS"];
          v45 = v44;
          if (v44)
          {
            [v44 floatValue];
            [v28 setRecognizerScoreJS:?];
          }

          v85 = v45;
          v46 = [v23 objectForKey:@"firstPassTriggerSource"];
          v47 = v46;
          if (v46)
          {
            [v28 setFirstPassTriggerSource:{objc_msgSend(v46, "intValue")}];
          }

          v48 = [v23 objectForKey:@"absoluteTimestamp"];
          v49 = v48;
          if (v48)
          {
            [v28 setSecondsSinceEpoch:{objc_msgSend(v48, "unsignedLongLongValue")}];
          }

          v50 = [v23 objectForKey:@"repetitionSimilarityScore"];
          v51 = v50;
          if (v50)
          {
            [v50 floatValue];
            [v28 setRepetitionSimilarityScore:?];
          }

          v81 = v51;
          v52 = [v23 objectForKey:@"mitigationScore"];
          v53 = v52;
          if (v52)
          {
            [v52 floatValue];
            [v28 setMitigationScore:?];
          }

          v54 = [v23 objectForKey:@"invocationTypeID"];
          v55 = v54;
          if (v54)
          {
            [v28 setInvocationTypeId:{objc_msgSend(v54, "intValue")}];
          }

          v79 = v55;
          v91 = v30;
          v56 = [v23 objectForKey:@"tdSpeakerRecognizerCombinedScore"];
          v57 = v56;
          if (v56)
          {
            [v56 floatValue];
            [v28 setTdSpeakerRecognizerCombinedScore:?];
          }

          v83 = v49;
          v58 = [v23 objectForKey:@"tdSpeakerRecognizerCombinedThresholdHS"];
          v59 = v58;
          if (v58)
          {
            [v58 floatValue];
            [v28 setTdSpeakerRecognizerCombinedThresholdHS:?];
          }

          v78 = v57;
          v80 = v53;
          v60 = [v23 objectForKey:@"tdSpeakerRecognizerCombinedThresholdJS"];
          v61 = v60;
          if (v60)
          {
            [v60 floatValue];
            [v28 setTdSpeakerRecognizerCombinedThresholdJS:?];
          }

          [v36 addFirstPassStatistics:v28];
          v62 = objc_alloc_init(MHSchemaMHVoiceTriggerFirstPassDailyMetadata);
          v63 = [v23 objectForKey:@"hwSampleRate"];
          v64 = v63;
          if (v63)
          {
            [v62 setHardwareSampleRate:{objc_msgSend(v63, "intValue")}];
          }

          v84 = v47;
          v65 = [v23 objectForKey:@"configVersion"];
          v66 = +[NSNull null];
          v67 = v66;
          if (v65 == v66)
          {
          }

          else
          {
            v68 = [v65 length];

            if (v68)
            {
              [v62 setConfigVersion:v65];
            }
          }

          v19 = v82 + 1;
          v4 = v75;
          [v75 setFirstPassMetadata:v62];

          v18 = v76;
          v21 = v74;
          v20 = v16;
          v25 = v92;
        }

        v22 = v22 + 1;
      }

      while (v18 != v22);
      v18 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
    }

    while (v18);
  }

  return v4;
}

- (void)buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:(BOOL)enabled onLockscreen:(BOOL)lockscreen dictationEnabled:(BOOL)dictationEnabled voiceTriggerEnabled:(BOOL)triggerEnabled starkHasBeenActiveWithin24Hours:(BOOL)hours raiseToSpeakEnabled:(BOOL)speakEnabled activeAppleAudioDevices:(id)devices spokenNotificationsEnabled:(BOOL)self0 announceNotificationsEnabledOnHeadphones:(BOOL)self1 carplayAnnounceEnablementType:(int64_t)self2 isAnnounceNotificationsMutedForCarPlay:(BOOL)self3 shouldSkipTriggerlessReplyConfirmation:(BOOL)self4 spokenNotificationsProxCardSeen:(BOOL)self5 spokenNotificationsControlCenterModuleEnabled:(BOOL)self6 spokenNotificationsAllowSettings:(unint64_t)self7 announceCallsEnabled:(BOOL)self8 preciseLocationEnabled:(BOOL)self9 locationAccessPermission:(int)permission adaptiveSiriVolumeEnabled:(BOOL)volumeEnabled adaptiveSiriVolumePermanentOffsetEnabled:(BOOL)offsetEnabled adaptiveSiriVolumePermanentOffsetFactor:(id)factor adaptiveSiriVolumeMostRecentIntent:(id)intent isRemoteDarwinVoiceTriggerEnabled:(BOOL)voiceTriggerEnabled autoSendSettings:(id)sendSettings siriInCallEnablementState:(int)state hangUpEnablementState:(int)enablementState heartbeatQueuedTime:(unint64_t)time siriVoiceTriggerSettings:(id)enabled0 isShowAppsBehindSiriEnabledOnCarPlay:(BOOL)enabled1 isSiriCapableDigitalCarKeyAvailable:(BOOL)enabled2 connectedBTCarHeadunits:(id)enabled3 withCompletion:(id)enabled4
{
  speakEnabledCopy = speakEnabled;
  hoursCopy = hours;
  triggerEnabledCopy = triggerEnabled;
  dictationEnabledCopy = dictationEnabled;
  lockscreenCopy = lockscreen;
  enabledCopy = enabled;
  devicesCopy = devices;
  factorCopy = factor;
  intentCopy = intent;
  sendSettingsCopy = sendSettings;
  triggerSettingsCopy = triggerSettings;
  headunitsCopy = headunits;
  completionCopy = completion;
  v38 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v39 = dispatch_group_create();
  v40 = objc_alloc_init(SISchemaDailyDeviceStatus);
  dispatch_group_enter(v39);
  v193[0] = _NSConcreteStackBlock;
  v193[1] = 3221225472;
  v193[2] = sub_1000899C8;
  v193[3] = &unk_100516750;
  v41 = v40;
  v194 = v41;
  v42 = v39;
  v195 = v42;
  [(ADDailyDeviceStatusActivity *)self fetchEnrolledUsersWithCompletion:v193];
  dispatch_group_enter(v42);
  v43 = +[SiriTTSDaemonSession afSharedSession];
  v190[0] = _NSConcreteStackBlock;
  v190[1] = 3221225472;
  v190[2] = sub_100089ABC;
  v190[3] = &unk_100516750;
  v44 = v41;
  v191 = v44;
  v45 = v42;
  v192 = v45;
  [v43 downloadedVoicesMatching:0 reply:v190];

  v46 = objc_alloc_init(SISchemaPersonalization);
  v47 = +[ADMultiUserService sharedService];
  primaryUser = [v47 primaryUser];
  [v46 setPersonalDomainsSetup:{objc_msgSend(primaryUser, "personalDomainsIsEnabled")}];

  v49 = +[ADPreferences sharedPreferences];
  outputVoice = [v49 outputVoice];

  v157 = objc_alloc_init(SISchemaVoiceSettings);
  [v157 setVoiceGender:0];
  if ([outputVoice gender] == 2)
  {
    v50 = 1;
  }

  else if ([outputVoice gender] == 1)
  {
    v50 = 2;
  }

  else
  {
    if ([outputVoice gender] != 3)
    {
      goto LABEL_10;
    }

    v50 = 3;
  }

  [v157 setVoiceGender:v50];
LABEL_10:
  languageCode = [outputVoice languageCode];
  [v157 setVoiceAccent:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", languageCode)}];

  name = [outputVoice name];
  [v157 setVoiceName:name];

  [v46 setVoiceSettings:v157];
  v53 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s Fetching Apple Music subscription status for the active account", buf, 0xCu);
  }

  dispatch_group_enter(v45);
  sharedStatusController = [sub_100086B0C() sharedStatusController];
  v186[0] = _NSConcreteStackBlock;
  v186[1] = 3221225472;
  v186[2] = sub_100089C50;
  v186[3] = &unk_10050FA70;
  v136 = v46;
  v187 = v136;
  v160 = v44;
  v188 = v160;
  group = v45;
  v189 = group;
  [sharedStatusController getSubscriptionStatusWithCompletionHandler:v186];
  v165 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(devicesCopy, "count")}];
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = devicesCopy;
  v54 = [obj countByEnumeratingWithState:&v182 objects:v201 count:16];
  if (v54)
  {
    v55 = *v183;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v183 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v182 + 1) + 8 * i);
        v58 = objc_alloc_init(SISchemaActiveAudioDevice);
        [v58 setProductIdentifier:v57];
        stringValue = [&off_1005337A0 stringValue];
        [v58 setVendorIdentifier:stringValue];

        [v165 addObject:v58];
      }

      v54 = [obj countByEnumeratingWithState:&v182 objects:v201 count:16];
    }

    while (v54);
  }

  v153 = objc_alloc_init(SISchemaActiveStatus);
  [v153 setCarPlayActiveWithin24Hours:hoursCopy];
  [v153 setAudioDevicesActiveWithin24Hours:v165];
  [v153 setCarBluetoothHeadUnitsActiveWithinLast24Hours:headunitsCopy];
  v156 = objc_alloc_init(SISchemaAnnounceEnabledStatus);
  [v156 setAnnounceMessagesEnabled:notificationsEnabled];
  [v156 setAnnounceCallsEnabled:callsEnabled];
  v158 = objc_alloc_init(SISchemaAnnounceNotifications);
  [v158 setIsEnabled:notificationsEnabled];
  [v158 setProxCardSeen:?];
  [v158 setReplyWithoutConfirmation:confirmation];
  [v158 setIsEnabledForHeadphones:headphones];
  [v158 setIsCarPlayMuted:play];
  if ((type - 1) > 3)
  {
    v60 = 0;
  }

  else
  {
    v60 = dword_1003F0340[type - 1];
  }

  [v158 setCarPlayStatus:v60];
  [v156 setAnnounceNotifications:v158];
  v161 = objc_alloc_init(SISchemaEnabledStatus);
  [v161 setAssistantEnabled:enabledCopy];
  [v161 setDictationEnabled:dictationEnabledCopy];
  [v161 setHardwareButtonEnabled:enabledCopy];
  [v161 setHeySiriEnabled:triggerEnabledCopy];
  [v161 setAssistantOnLockscreen:lockscreenCopy];
  [v161 setRaiseToSpeakEnabled:speakEnabledCopy];
  v61 = +[AFPreferences sharedPreferences];
  [v161 setIsAlwaysShowSiriCaptionsEnabled:{objc_msgSend(v61, "siriResponseShouldAlwaysPrintWithoutOverride")}];

  v62 = +[AFPreferences sharedPreferences];
  [v161 setIsAlwaysShowSpeechEnabled:{objc_msgSend(v62, "alwaysShowRecognizedSpeech")}];

  v63 = +[AFPreferences sharedPreferences];
  [v161 setIsShowAppsBehindSiriEnabled:{objc_msgSend(v63, "alwaysObscureBackgroundContentWhenActive") ^ 1}];

  [v161 setSpokenNotificationsEnabled:notificationsEnabled];
  [v161 setHasHomekitHome:{objc_msgSend(obj, "count") != 0}];
  [v161 setDataSharingOptInStatus:{-[ADDailyDeviceStatusActivity getSiriDataSharingOptInStatus](self, "getSiriDataSharingOptInStatus")}];
  [v161 setTypeToSiriEnabled:AFPreferencesTypeToSiriEnabled()];
  [v161 setIsPreciseLocationEnabled:locationEnabled];
  [v161 setLocationAccessPermission:permission];
  [v161 setIsAdaptiveVolumeEnabled:volumeEnabled];
  [v161 setAnnounceEnabledStatus:v156];
  [v161 setSiriVoiceTriggerSettings:triggerSettingsCopy];
  v64 = +[AFSiriDataSharingSensitivityManager shared];
  [v161 setIsMteUploadEnabled:{objc_msgSend(v64, "isOptedOutOfMTE") ^ 1}];

  [v161 setIsServerUserDataSyncEnabled:-[ADAssistantProperties _getIsServerUserDataSyncEnabled]_0()];
  if (+[AFFeatureFlags isBlushingPhantomEnabled])
  {
    [v161 setSiriInCallEnablementState:state];
  }

  else
  {
    [v161 setHsHangupEnablementState:enablementState];
  }

  [v161 setSendWithoutConfirmation:sendSettingsCopy];
  [v161 setIsRemoteDarwinHeySiriEnabled:voiceTriggerEnabled];
  v65 = +[AFPreferences sharedPreferences];
  [v161 setIsAutoPunctuationEnabled:{objc_msgSend(v65, "dictationAutoPunctuationEnabled")}];

  v66 = +[AFPreferences sharedPreferences];
  siriSpeechRate = [v66 siriSpeechRate];
  [siriSpeechRate doubleValue];
  v69 = v68;

  v70 = _AXSVoiceOverTouchEnabled() != 0;
  [v161 setSiriSpeechRate:v69];
  [v161 setIsVoiceOverEnabled:v70];
  v155 = objc_alloc_init(SISchemaAdaptiveVolumeUserPreferences);
  [v155 setIsPermanentOffsetEnabled:offsetEnabled];
  [factorCopy floatValue];
  [v155 setPermanentOffsetFactor:?];
  [v155 setMostRecentIntent:{-[ADDailyDeviceStatusActivity getAdaptiveVolumeUserIntent:](self, "getAdaptiveVolumeUserIntent:", objc_msgSend(intentCopy, "intValue"))}];
  [v161 setAdaptiveVolumeUserPreferences:v155];
  v71 = +[AFPreferences sharedPreferences];
  v139 = [(ADDailyDeviceStatusActivity *)self _truncatedGradingOptInStateChanges:v71];

  [v161 setGradingOptInStateChanges:v139];
  v72 = +[AFPreferences sharedPreferences];
  useDeviceSpeakerForTTS = [v72 useDeviceSpeakerForTTS];

  if (useDeviceSpeakerForTTS > 3)
  {
    v74 = 0;
  }

  else
  {
    v74 = dword_1003F0330[useDeviceSpeakerForTTS];
  }

  [v161 setVoiceFeedback:v74];
  [v161 setIsShowAppsBehindSiriEnabledOnCarPlay:carPlay];
  [v161 setIsSiriCapableDigitalCarKeyAvailable:available];
  v151 = objc_alloc_init(SISchemaAggregatedMetrics);
  v149 = +[CSVoiceTriggerHeartBeatMetricsProvider fetchVoiceTriggerHeartBeatMetrics];
  if (v149)
  {
    v75 = [(ADDailyDeviceStatusActivity *)self _buildDailyVoiceTriggerMetrics:v149];
    [v151 setVoiceTrigger:v75];
  }

  _buildDailySelfTriggerSuppressionMetrics = [(ADDailyDeviceStatusActivity *)self _buildDailySelfTriggerSuppressionMetrics];
  if (_buildDailySelfTriggerSuppressionMetrics)
  {
    [v151 setSelfTriggerSuppression:_buildDailySelfTriggerSuppressionMetrics];
  }

  v76 = +[ADCommandCenter sharedCommandCenter];
  _account = [v76 _account];
  assistantIdentifier = [_account assistantIdentifier];

  v78 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]";
    *&buf[12] = 2113;
    *&buf[14] = assistantIdentifier;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s assistantIdentifier: %{private}@", buf, 0x16u);
  }

  if ((enabledCopy || dictationEnabledCopy) && !assistantIdentifier)
  {
    [(ADDailyDeviceStatusActivity *)self _triggerABCForNullAssistantIdentifier];
  }

  v79 = +[ADPreferences sharedPreferences];
  languageCode2 = [v79 languageCode];

  if (languageCode2)
  {
    [v160 setSiriInputLocale:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", languageCode2)}];
  }

  v80 = +[AFPreferences sharedPreferences];
  enabledDictationLocales = [v80 enabledDictationLocales];

  v163 = objc_alloc_init(NSMutableArray);
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  allKeys = [enabledDictationLocales allKeys];
  v83 = [allKeys countByEnumeratingWithState:&v178 objects:v200 count:16];
  if (v83)
  {
    v84 = *v179;
    do
    {
      for (j = 0; j != v83; j = j + 1)
      {
        if (*v179 != v84)
        {
          objc_enumerationMutation(allKeys);
        }

        v86 = *(*(&v178 + 1) + 8 * j);
        v87 = [enabledDictationLocales objectForKey:v86];
        bOOLValue = [v87 BOOLValue];

        if (bOOLValue)
        {
          v89 = objc_alloc_init(SISchemaLocaleIdentifier);
          v90 = [v86 componentsSeparatedByString:@"_"];
          if ([v90 count] == 2)
          {
            firstObject = [v90 firstObject];
            [v89 setLanguageCode:firstObject];

            lastObject = [v90 lastObject];
            [v89 setCountryCode:lastObject];
          }

          [v163 addObject:v89];
        }
      }

      v83 = [allKeys countByEnumeratingWithState:&v178 objects:v200 count:16];
    }

    while (v83);
  }

  [v160 setEnabledDictationLocales:v163];
  v93 = +[AFPreferences sharedPreferences];
  longLivedIdentifierUploadingEnabled = [v93 longLivedIdentifierUploadingEnabled];

  if (longLivedIdentifierUploadingEnabled)
  {
    [v160 setSiriDeviceID:assistantIdentifier];
    v95 = +[ADCommandCenter sharedCommandCenter];
    _account2 = [v95 _account];
    speechIdentifier = [_account2 speechIdentifier];
    [v160 setSiriSpeechID:speechIdentifier];

    v98 = +[ADMultiUserService sharedService];
    primaryUser2 = [v98 primaryUser];
    sharedUserID = [primaryUser2 sharedUserID];
    [v160 setSharedUserId:sharedUserID];
  }

  else
  {
    v101 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "%s #RPI: not logging siri account info for SISchemaDailyDeviceStatus", buf, 0xCu);
    }
  }

  [v160 setClientDeviceSamplingTimestampMs:AFGetTimeSinceEpochInMilliseconds()];
  v102 = +[NSLocale currentLocale];
  v103 = [v102 objectForKey:NSLocaleIdentifier];
  [v160 setLocale:v103];

  v104 = AFProductTypeForInstrumentation();
  [v160 setDeviceType:v104];

  v105 = AFProductAndBuildVersion();
  [v160 setDeviceOs:v105];

  v106 = AFBuildVersion();
  [v160 setDeviceBuild:v106];

  v107 = AFModelForDailyStatus();
  [v160 setModelNumber:v107];

  v108 = AFRegionInfo();
  [v160 setRegionInfo:v108];

  [v160 setEnabledStatus:v161];
  [v160 setActiveStatus:v153];
  [v160 setSpokenNotificationsproxCardSeen:seen];
  [v160 setSpokenNotificationsControlCenterModuleEnabled:moduleEnabled];
  [v160 setSpokenNotificationsWhitelistSettings:settings];
  [v160 setAggregatedMetrics:v151];
  [v160 setQueuedAtTimestampHourInMs:time];
  dispatch_group_enter(group);
  v109 = +[ADAssistantDataManager sharedDataManager];
  v175[0] = _NSConcreteStackBlock;
  v175[1] = 3221225472;
  v175[2] = sub_100089E14;
  v175[3] = &unk_100510F10;
  v110 = v160;
  v176 = v110;
  v111 = group;
  v177 = v111;
  [v109 getiTunesStoreFrontIdentifierWithCompletion:v175];

  getVolumeCapacity = [(ADDailyDeviceStatusActivity *)self getVolumeCapacity];
  v113 = getVolumeCapacity;
  if (getVolumeCapacity)
  {
    v114 = [getVolumeCapacity objectForKeyedSubscript:NSURLVolumeTotalCapacityKey];
    [v114 doubleValue];
    v116 = v115;

    v117 = [v113 objectForKeyedSubscript:NSURLVolumeAvailableCapacityForImportantUsageKey];
    [v117 doubleValue];
    v119 = v118;

    v120 = [NSString stringWithFormat:@"%.02f", v119 / 1000000000.0];
    [v120 doubleValue];
    v122 = v121;

    LODWORD(v123) = vcvtpd_u64_f64(v116 / 1000000000.0);
    [v110 setDeviceCapacityInGB:v123];
    [v110 setAvailableDeviceStorageInMB:v122 * 1000.0];
  }

  v124 = [AFSafetyBlock alloc];
  v172[0] = _NSConcreteStackBlock;
  v172[1] = 3221225472;
  v172[2] = sub_100089EF4;
  v172[3] = &unk_100519BD8;
  v125 = completionCopy;
  v174 = v125;
  v126 = v110;
  v173 = v126;
  v127 = [v124 initWithBlock:v172];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v197 = sub_10008725C;
  v198 = sub_10008726C;
  v199 = 0;
  v128 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v170[0] = _NSConcreteStackBlock;
  v170[1] = 3221225472;
  v170[2] = sub_100089F08;
  v170[3] = &unk_10051DFE8;
  v130 = v127;
  v171 = v130;
  v131 = [v128 initWithTimeoutInterval:queue onQueue:v170 timeoutHandler:5.0];
  v132 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v131;

  [*(*&buf[8] + 40) start];
  v133 = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089FD0;
  block[3] = &unk_10051C588;
  v168 = v130;
  v169 = buf;
  v167 = v126;
  v134 = v130;
  v135 = v126;
  dispatch_group_notify(v111, v133, block);

  _Block_object_dispose(buf, 8);
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[AFPreferences sharedPreferences];
  longLivedIdentifierUploadingEnabled = [v4 longLivedIdentifierUploadingEnabled];

  v6 = AFSiriLogContextDaemon;
  v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (longLivedIdentifierUploadingEnabled)
  {
    if (v7)
    {
      *buf = 136315138;
      *&buf[4] = "[ADDailyDeviceStatusActivity runWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Running ADDailyDeviceStatusActivity to emit heartbeat since longLivedIdentifierUploadingEnabled is true and RPI is disabled.", buf, 0xCu);
    }

    v8 = +[AFPreferences sharedPreferences];
    assistantIsEnabled = [v8 assistantIsEnabled];

    v10 = +[AFPreferences sharedPreferences];
    dictationIsEnabled = [v10 dictationIsEnabled];

    v11 = 2;
    if (!assistantIsEnabled)
    {
      v11 = 0;
    }

    if (dictationIsEnabled)
    {
      v12 = v11 | 4;
    }

    else
    {
      v12 = v11;
    }

    [AFAggregator logEnabledState:v12];
    if ((assistantIsEnabled | dictationIsEnabled) & 1) != 0 && (AFHasUnlockedSinceBoot())
    {
      if (AFDeviceSupportsCarPlay())
      {
        v13 = +[NSCalendar currentCalendar];
        v14 = +[NSDate date];
        v15 = [v13 dateByAddingUnit:32 value:-24 toDate:v14 options:0];

        timeIntervalSinceReferenceDate = [v15 timeIntervalSinceReferenceDate];
        v18 = v17;
        carPlayStream = [off_10058CB28(timeIntervalSinceReferenceDate) carPlayStream];
        v20 = [carPlayStream publisherFromStartTime:v18];
        v90 = 0;
        v91 = &v90;
        v92 = 0x2020000000;
        LOBYTE(v93) = 0;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1002156C4;
        v97 = &unk_100516CD8;
        v98 = &v90;
        v21 = [v20 sinkWithCompletion:&stru_100516CB0 receiveInput:buf];
        v22 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          v23 = *(v91 + 24);
          *v94 = 136315394;
          *&v94[4] = "ADCarPlayHasBeenActiveInLast24Hours";
          *&v94[12] = 1024;
          *&v94[14] = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s carPlayHasBeenActiveInLast24Hours: %d", v94, 0x12u);
        }

        v78 = *(v91 + 24);
        _Block_object_dispose(&v90, 8);

        if (assistantIsEnabled)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v78 = 0;
        if (assistantIsEnabled)
        {
LABEL_15:
          v24 = +[AFPreferences sharedPreferences];
          disableAssistantWhilePasscodeLocked = [v24 disableAssistantWhilePasscodeLocked];

          v77 = disableAssistantWhilePasscodeLocked ^ 1;
LABEL_25:
          v27 = +[VTPreferences sharedPreferences];
          voiceTriggerEnabled = [v27 voiceTriggerEnabled];

          v83 = AFAppleAudioDeviceConnectedInLast24Hours();
          v82 = AFBTCarHeadunitsConnectedInLast24Hours();
          if (AFIsHorseman())
          {
            v74 = 0;
            v75 = 0;
          }

          else
          {
            v90 = 0;
            v91 = &v90;
            v92 = 0x2050000000;
            v28 = qword_10058FE20;
            v93 = qword_10058FE20;
            if (!qword_10058FE20)
            {
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_10008ABD8;
              v97 = &unk_10051E1C8;
              v98 = &v90;
              sub_10008ABD8(buf);
              v28 = v91[3];
            }

            v29 = v28;
            _Block_object_dispose(&v90, 8);
            currentNotificationSettingsCenter = [v28 currentNotificationSettingsCenter];
            notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
            v32 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "[ADDailyDeviceStatusActivity runWithCompletion:]";
              *&buf[12] = 2112;
              *&buf[14] = notificationSystemSettings;
              _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
            }

            v75 = [notificationSystemSettings announcementSetting] == 2;
            v74 = [notificationSystemSettings announcementHeadphonesSetting] == 2;
          }

          v73 = _AFPreferencesAnnounceNotificationsInCarPlayType();
          v72 = _AFPreferencesAnnounceNotificationsInCarPlayTemporarilyDisabled();
          v71 = _AFPreferencesSpokenNotificationSkipTriggerlessReplyConfirmation();
          v70 = _AFPreferencesSpokenNotificationsProxCardSeen();
          *v94 = 0;
          *&v94[8] = v94;
          *&v94[16] = 0x2020000000;
          v95 = 0;
          v33 = dispatch_group_create();
          dispatch_group_enter(v33);
          v90 = 0;
          v91 = &v90;
          v92 = 0x2050000000;
          v34 = qword_10058FE30;
          v93 = qword_10058FE30;
          if (!qword_10058FE30)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10008ACD8;
            v97 = &unk_10051E1C8;
            v98 = &v90;
            sub_10008ACD8(buf);
            v34 = v91[3];
          }

          v35 = v34;
          _Block_object_dispose(&v90, 8);
          sharedInstance = [v34 sharedInstance];
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_10008ADD8;
          v87[3] = &unk_10050F9E8;
          v89 = v94;
          group = v33;
          v88 = group;
          [sharedInstance getEnabledStateOfModuleWithIdentifier:@"com.apple.siri.SpokenNotificationsModule" completionHandler:v87];

          v37 = dispatch_time(0, 1000000000);
          dispatch_group_wait(group, v37);
          CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
          AppIntegerValue = CFPreferencesGetAppIntegerValue(@"kSpokenMessageAllowLevel", @"com.apple.MobileSMS", 0);
          v38 = objc_alloc_init(TUUserConfiguration);
          announceCalls = [v38 announceCalls];
          v65 = v38;
          v39 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "[ADDailyDeviceStatusActivity runWithCompletion:]";
            *&buf[12] = 1024;
            *&buf[14] = announceCalls != 0;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s Announce calls enabled: %d", buf, 0x12u);
          }

          _preciseLocationEnabled = [(ADDailyDeviceStatusActivity *)self _preciseLocationEnabled];
          _locationAccessPermission = [(ADDailyDeviceStatusActivity *)self _locationAccessPermission];
          v40 = +[CSPreferences sharedPreferences];
          smartSiriVolumeContextAwareEnabled = [v40 smartSiriVolumeContextAwareEnabled];

          v41 = +[CSPreferences sharedPreferences];
          isAdaptiveSiriVolumePermanentOffsetEnabled = [v41 isAdaptiveSiriVolumePermanentOffsetEnabled];

          v42 = +[CSPreferences sharedPreferences];
          [v42 adaptiveSiriVolumePermanentOffset];
          v81 = [NSNumber numberWithFloat:?];

          v43 = +[CSPreferences sharedPreferences];
          v80 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v43 adaptiveSiriVolumeRecentIntent]);

          v44 = objc_alloc_init(SISchemaSendWithoutConfirmation);
          [v44 setIsEnabled:_AFPreferencesGetMessageWithoutConfirmationEnabled()];
          [v44 setIsEnabledForHeadphones:_AFPreferencesGetMessageWithoutConfirmationHeadphonesEnabled()];
          [v44 setIsEnabledForCarPlay:_AFPreferencesGetMessageWithoutConfirmationInCarPlayEnabled()];
          v45 = +[VTPreferences sharedPreferences];
          v63 = [v45 voiceTriggerEnabledWithDeviceType:3 endpointId:0];

          v62 = AFGetTimeSinceEpochRoundedToHourInMilliseconds();
          fetchVoiceTriggerSettings = [(ADDailyDeviceStatusActivity *)self fetchVoiceTriggerSettings];
          ShowAppsBehindSiriInCarPlayEnabled = _AFPreferencesGetShowAppsBehindSiriInCarPlayEnabled();
          _isSiriCapableDigitalCarKeyAvailable = [(ADDailyDeviceStatusActivity *)self _isSiriCapableDigitalCarKeyAvailable];
          v49 = *(*&v94[8] + 24);
          if (AFDeviceSupportsFullSiriUOD() && (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 siriInCallEnablementState], v50, v51 <= 2))
          {
            v52 = dword_1003F03BC[v51];
          }

          else
          {
            v52 = 0;
          }

          if (AFSupportsCallHangUp() && (+[VTPreferences sharedPreferences](VTPreferences, "sharedPreferences"), v53 = objc_claimAutoreleasedReturnValue(), v54 = [v53 canUseVoiceTriggerDuringPhoneCallWithState], v53, v54 <= 2))
          {
            v55 = dword_1003F03BC[v54];
          }

          else
          {
            v55 = 0;
          }

          BYTE1(v61) = _isSiriCapableDigitalCarKeyAvailable;
          LOBYTE(v61) = ShowAppsBehindSiriInCarPlayEnabled;
          LOBYTE(v60) = v63;
          BYTE1(v59) = isAdaptiveSiriVolumePermanentOffsetEnabled;
          LOBYTE(v59) = smartSiriVolumeContextAwareEnabled;
          HIDWORD(v58) = _locationAccessPermission;
          BYTE1(v58) = _preciseLocationEnabled;
          LOBYTE(v58) = announceCalls != 0;
          BYTE3(v57) = v49;
          BYTE2(v57) = v70;
          BYTE1(v57) = v71;
          LOBYTE(v57) = v72;
          BYTE1(v56) = v74;
          LOBYTE(v56) = v75;
          [ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:"buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:" onLockscreen:assistantIsEnabled dictationEnabled:v77 voiceTriggerEnabled:dictationIsEnabled starkHasBeenActiveWithin24Hours:voiceTriggerEnabled raiseToSpeakEnabled:v78 & 1 activeAppleAudioDevices:0 spokenNotificationsEnabled:v83 announceNotificationsEnabledOnHeadphones:v56 carplayAnnounceEnablementType:v73 isAnnounceNotificationsMutedForCarPlay:v57 shouldSkipTriggerlessReplyConfirmation:AppIntegerValue spokenNotificationsProxCardSeen:v58 spokenNotificationsControlCenterModuleEnabled:v59 spokenNotificationsAllowSettings:v81 announceCallsEnabled:v80 preciseLocationEnabled:v60 locationAccessPermission:v44 adaptiveSiriVolumeEnabled:__PAIR64__(v55 adaptiveSiriVolumePermanentOffsetEnabled:v52) adaptiveSiriVolumePermanentOffsetFactor:v62 adaptiveSiriVolumeMostRecentIntent:fetchVoiceTriggerSettings isRemoteDarwinVoiceTriggerEnabled:v61 autoSendSettings:v82 siriInCallEnablementState:&stru_10050FA28 hangUpEnablementState:? heartbeatQueuedTime:? siriVoiceTriggerSettings:? isShowAppsBehindSiriEnabledOnCarPlay:? isSiriCapableDigitalCarKeyAvailable:? connectedBTCarHeadunits:? withCompletion:?];
          if (completionCopy)
          {
            completionCopy[2](completionCopy);
          }

          _Block_object_dispose(v94, 8);
          goto LABEL_47;
        }
      }

      v77 = 0;
      goto LABEL_25;
    }

    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[ADDailyDeviceStatusActivity runWithCompletion:]";
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Skipping Heartbeat due to (both Siri & Dictation disabled) OR (device was locked)", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_47;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_47;
    }

LABEL_19:
    completionCopy[2](completionCopy);
    goto LABEL_47;
  }

  if (v7)
  {
    *buf = 136315138;
    *&buf[4] = "[ADDailyDeviceStatusActivity runWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s no-op ADDailyDeviceStatusActivity since longLivedIdentifierUploadingEnabled is False and RPI is Enabled.", buf, 0xCu);
  }

  if (completionCopy)
  {
    goto LABEL_19;
  }

LABEL_47:
}

- (ADDailyDeviceStatusActivity)init
{
  v8.receiver = self;
  v8.super_class = ADDailyDeviceStatusActivity;
  v2 = [(ADDailyDeviceStatusActivity *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("ADDailyDeviceStatusActivity", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)taskFromActivity:(id)activity
{
  v3 = objc_alloc_init(ADDailyDeviceStatusActivity);

  return v3;
}

+ (id)xpcCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);

  return v2;
}

@end
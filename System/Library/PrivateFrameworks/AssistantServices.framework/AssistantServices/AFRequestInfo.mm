@interface AFRequestInfo
+ (id)_announceIncomingCallRequestInfoFromRequest:(id)a3;
+ (id)_announceNotificationRequestInfoFromNotificationRequest:(id)a3 previousRequest:(id)a4 synchronousBurstIndex:(unint64_t)a5 isMediaPlaying:(BOOL)a6;
+ (id)_createAnnounceInHomeRequestFromSKIAnnouncePayload:(id)a3;
+ (id)_createAnnounceIncomingCallRequest:(id)a3;
+ (id)_createAnnounceWorkoutReminderRequestFromSKIAnnouncePayload:(id)a3 announceNotificationRequest:(id)a4;
+ (id)_createAnnounceWorkoutVoiceFeedbackRequestFromSKIAnnouncePayload:(id)a3 announceNotificationRequest:(id)a4;
+ (id)_updateStartLocalRequest:(id)a3 withNewAnnouncePayload:(id)a4 forAnnouncementType:(int64_t)a5;
+ (id)requestInfoFromAnnouncementRequest:(id)a3 previousRequest:(id)a4 synchronousBurstIndex:(unint64_t)a5 isMediaPlaying:(BOOL)a6;
- (id)_ad_localRequestCommandWithRequestHelper:(id)a3;
- (id)_ad_requestCommandWithRequestHelper:(id)a3;
- (id)_ad_speechRequestOptionsWithClientConfiguration:(id)a3;
@end

@implementation AFRequestInfo

- (id)_ad_speechRequestOptionsWithClientConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AFRequestInfo *)self speechRequestOptions];
  if (v5)
  {
    goto LABEL_6;
  }

  v6 = [(AFRequestInfo *)self handoffRequestData];
  if (v6)
  {
  }

  else
  {
    v7 = [(AFRequestInfo *)self notifyState];

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v5 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:1];
  if (v5)
  {
LABEL_6:
    v8 = v5;
    goto LABEL_7;
  }

LABEL_10:
  if (!AFIsHorseman() || [(AFRequestInfo *)self activationEvent]!= 6)
  {
    goto LABEL_16;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[AFRequestInfo(SiriAce) _ad_speechRequestOptionsWithClientConfiguration:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Drop in Announcement. Setting SmartSiriVolumeTTSType with AFSpeechEventHomeButton.", &v15, 0xCu);
  }

  v8 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:1];
  [v8 setSmartSiriVolumeTTSType:5];
  if (!v8)
  {
LABEL_16:
    if ([(AFRequestInfo *)self activationEvent]== 6 || [(AFRequestInfo *)self activationEvent]== 9)
    {
      v11 = [v4 isDeviceInStarkMode];
      v12 = [AFSpeechRequestOptions alloc];
      if (v11)
      {
        v8 = [v12 initWithActivationEvent:32];
        [v8 setAnnouncementPlatform:2];
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = [v12 initWithActivationEvent:21];
        v13 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
        v14 = [v13 announcePlatformForCurrentRequest];

        [v8 setAnnouncementPlatform:v14];
        [v8 setEndpointerOperationMode:3];
        if (v8)
        {
          goto LABEL_7;
        }
      }
    }

    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (id)_ad_localRequestCommandWithRequestHelper:(id)a3
{
  v4 = a3;
  v5 = [(AFRequestInfo *)self startLocalRequest];
  if (!v5)
  {
    v5 = [(AFRequestInfo *)self notifyState];

    if (v5)
    {
      v6 = [v4 remoteRequestInfo];
      v5 = [v6 startLocalRequest];
    }
  }

  return v5;
}

- (id)_ad_requestCommandWithRequestHelper:(id)a3
{
  v4 = a3;
  v5 = [(AFRequestInfo *)self notifyState];

  if (v5)
  {
    v6 = [v4 remoteRequestInfo];
    v7 = sub_10000B3A0(v6);
    if (!v7)
    {
      v8 = [v6 handoffURLString];
      [(AFRequestInfo *)self setHandoffURLString:v8];
    }
  }

  else
  {
    v7 = sub_10000B3A0(self);
  }

  return v7;
}

+ (id)_createAnnounceWorkoutVoiceFeedbackRequestFromSKIAnnouncePayload:(id)a3 announceNotificationRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 workoutVoiceFeedback];
    v8 = [SKIFitnessInvocation announceWorkoutVoiceFeedback:v7 announcePayload:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_createAnnounceIncomingCallRequest:(id)a3
{
  v3 = [a3 call];
  v4 = [v3 callUUID];
  v5 = [v3 callProviderIdentifier];
  v6 = [v3 callProviderBundleID];
  v7 = [v3 callerContactIdentifiers];
  v8 = [v3 handle];
  v9 = [v3 isVideo];
  LOBYTE(v12) = [v3 isCallerIDBlocked];
  v10 = [SKIPhoneInvocation announceIncomingCallerRequestForCallUUID:v4 callProviderIdentifier:v5 callProviderBundleId:v6 callerContactIdentifiers:v7 handle:v8 isVideo:v9 isCallerIDBlocked:v12];

  return v10;
}

+ (id)_announceIncomingCallRequestInfoFromRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AFRequestInfo);
  v5 = [objc_opt_class() _createAnnounceIncomingCallRequest:v3];

  v6 = [AFRequestCompletionOptions alloc];
  v7 = _AFPreferencesSpokenNotificationShowUIDuringTriggerlessListening();
  v8 = [v6 _initWithShowUIDuringListening:v7 playAlertBeforeListening:_AFPreferencesSpokenNotificationPlayAlertBeforeTriggerlessListening()];
  [v4 setStartLocalRequest:v5];
  [v4 setActivationEvent:9];
  [v4 setRequestCompletionOptions:v8];

  return v4;
}

+ (id)_createAnnounceInHomeRequestFromSKIAnnouncePayload:(id)a3
{
  v3 = a3;
  v4 = [v3 notification];
  v5 = [v4 request];

  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = off_10058E8C8();
  v9 = [v7 objectForKey:v8];

  v10 = +[NSNull null];

  if (v9 == v10)
  {
    v11 = 1;
  }

  else if ([v9 integerValue] == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = off_10058E8D0();
  v13 = [v7 objectForKey:v12];

  v14 = [v3 appBundleId];
  v15 = [v3 synchronousBurstIndex];

  v16 = [NSNumber numberWithUnsignedInteger:v15];
  v17 = [SKIPhoneInvocation announceHomeAnnouncementRequestFromApp:v14 withAnnouncementIdentifier:v13 withUserNotificationType:v11 synchronousBurstIndex:v16];

  return v17;
}

+ (id)_createAnnounceWorkoutReminderRequestFromSKIAnnouncePayload:(id)a3 announceNotificationRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 workoutReminder];
    v8 = [SKIFitnessInvocation announceWorkoutReminder:v7 announcePayload:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_updateStartLocalRequest:(id)a3 withNewAnnouncePayload:(id)a4 forAnnouncementType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v9 = [SKIFitnessInvocation updateStartLocalRequest:v7 withNewAnnouncePayload:v8];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = AFSiriUserNotificationAnnouncementTypeGetName();
      v14 = 136315394;
      v15 = "+[AFRequestInfo(ADAnnouncementRequestBuilder) _updateStartLocalRequest:withNewAnnouncePayload:forAnnouncementType:]";
      v16 = 2112;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Remote announcements not supported for announcement type: %@", &v14, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)_announceNotificationRequestInfoFromNotificationRequest:(id)a3 previousRequest:(id)a4 synchronousBurstIndex:(unint64_t)a5 isMediaPlaying:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(AFRequestInfo);
  [v10 setActivationEvent:6];
  v11 = [v8 notification];
  v12 = [v8 platform];
  v13 = &stru_10051F508;
  if ([v9 requestType] == 1)
  {
    v14 = v9;
    v15 = [v14 announcementType];
    v16 = [v14 appID];

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &stru_10051F508;
    }

    v13 = v17;
  }

  else
  {
    v15 = 0;
  }

  v18 = [v8 announcementType];
  v37 = [v8 appID];
  v19 = [v9 timeOfRequestArrival];
  [v19 timeIntervalSinceNow];
  v21 = v20;

  v22 = [v8 summary];

  if (v22)
  {
    v23 = [v8 summary];
    v40 = v23;
    v36 = [NSArray arrayWithObjects:&v40 count:1];
  }

  else
  {
    v36 = 0;
  }

  v24 = -v21;
  if (v18 == 9)
  {
    [v10 setIsAlwaysAllowedWhileDeviceLocked:1];
  }

  v25 = [SKIAnnounceNotificationDirectInvocationPayload alloc];
  BYTE1(v34) = [ADRequestDispatcherServiceHelper isBobbleAvailable]_0();
  LOBYTE(v34) = a6;
  v26 = [v25 initWithNotification:v11 appBundleId:v37 appBundleIdOfLastAnnouncement:v13 synchronousBurstIndex:a5 isSameTypeAsLastAnnouncement:v18 == v15 timeSinceLastAnnouncement:v12 announcementPlatform:v24 isMediaPlaying:v34 isBobbleCapableAnnouncement:v36 summaries:?];
  v27 = [v8 startLocalRequest];

  if (v27)
  {
    v28 = [v8 startLocalRequest];
    v29 = [objc_opt_class() _updateStartLocalRequest:v28 withNewAnnouncePayload:v26 forAnnouncementType:v18];

    [v10 setStartLocalRequest:v29];
    v30 = v10;

    goto LABEL_40;
  }

  if (v18 > 4)
  {
    if (v18 <= 6)
    {
      if (v18 == 5)
      {
        [SKIPhoneInvocation announceVoicemailRequestForAnnounceDirectInvocationPayload:v26];
      }

      else
      {
        [SKIPhoneInvocation announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:v26];
      }

      v31 = LABEL_19:;
LABEL_38:
      v27 = v31;
      goto LABEL_39;
    }

    switch(v18)
    {
      case 7:
        v31 = [SKIPhoneInvocation announceIncomingCallNotificationRequest:v26];
        goto LABEL_38;
      case 8:
        v31 = [objc_opt_class() _createAnnounceWorkoutReminderRequestFromSKIAnnouncePayload:v26 announceNotificationRequest:v8];
        if (v31)
        {
          goto LABEL_38;
        }

        break;
      case 9:
        v31 = [objc_opt_class() _createAnnounceWorkoutVoiceFeedbackRequestFromSKIAnnouncePayload:v26 announceNotificationRequest:v8];
        if (v31)
        {
          goto LABEL_38;
        }

        break;
      default:
        goto LABEL_39;
    }
  }

  else
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v31 = [objc_opt_class() _createAnnounceInHomeRequestFromSKIAnnouncePayload:v26];
        goto LABEL_38;
      }

      if (v18 == 3)
      {
        [SKINotificationsInvocation announceNotificationsRequestFromAnnounceDirectInvocationPayload:v26];
      }

      else
      {
        [SKINotebookInvocation announceRemindersRequestFromAnnounceDirectInvocationPayload:v26];
      }

      goto LABEL_19;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        v31 = [SKIMessagesInvocation announceMessagesRequestFromAnnounceDirectInvocationPayload:v26];
        goto LABEL_38;
      }

LABEL_39:
      [v10 setStartLocalRequest:v27];
      v30 = v10;

      goto LABEL_40;
    }

    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "+[AFRequestInfo(ADAnnouncementRequestBuilder) _announceNotificationRequestInfoFromNotificationRequest:previousRequest:synchronousBurstIndex:isMediaPlaying:]";
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Unspecified announcement type unable to create a request.", buf, 0xCu);
    }
  }

  v30 = 0;
LABEL_40:

  return v30;
}

+ (id)requestInfoFromAnnouncementRequest:(id)a3 previousRequest:(id)a4 synchronousBurstIndex:(unint64_t)a5 isMediaPlaying:(BOOL)a6
{
  v7 = a6;
  v11 = a3;
  v12 = a4;
  v13 = [v11 requestType];
  if (v13)
  {
    if (v13 == 2)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315138;
        v19 = "+[AFRequestInfo(ADAnnouncementRequestBuilder) requestInfoFromAnnouncementRequest:previousRequest:synchronousBurstIndex:isMediaPlaying:]";
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Creating announce incoming call request", &v18, 0xCu);
      }

      v14 = [a1 _announceIncomingCallRequestInfoFromRequest:v11];
    }

    else
    {
      if (v13 != 1)
      {
        goto LABEL_12;
      }

      v14 = [a1 _announceNotificationRequestInfoFromNotificationRequest:v11 previousRequest:v12 synchronousBurstIndex:a5 isMediaPlaying:v7];
    }

    v6 = v14;
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "+[AFRequestInfo(ADAnnouncementRequestBuilder) requestInfoFromAnnouncementRequest:previousRequest:synchronousBurstIndex:isMediaPlaying:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unspecified announcement request type unable to create a request.", &v18, 0xCu);
    }

    v6 = 0;
  }

LABEL_12:

  return v6;
}

@end
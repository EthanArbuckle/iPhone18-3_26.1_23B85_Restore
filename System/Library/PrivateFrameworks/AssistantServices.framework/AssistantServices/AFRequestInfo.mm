@interface AFRequestInfo
+ (id)_announceIncomingCallRequestInfoFromRequest:(id)request;
+ (id)_announceNotificationRequestInfoFromNotificationRequest:(id)request previousRequest:(id)previousRequest synchronousBurstIndex:(unint64_t)index isMediaPlaying:(BOOL)playing;
+ (id)_createAnnounceInHomeRequestFromSKIAnnouncePayload:(id)payload;
+ (id)_createAnnounceIncomingCallRequest:(id)request;
+ (id)_createAnnounceWorkoutReminderRequestFromSKIAnnouncePayload:(id)payload announceNotificationRequest:(id)request;
+ (id)_createAnnounceWorkoutVoiceFeedbackRequestFromSKIAnnouncePayload:(id)payload announceNotificationRequest:(id)request;
+ (id)_updateStartLocalRequest:(id)request withNewAnnouncePayload:(id)payload forAnnouncementType:(int64_t)type;
+ (id)requestInfoFromAnnouncementRequest:(id)request previousRequest:(id)previousRequest synchronousBurstIndex:(unint64_t)index isMediaPlaying:(BOOL)playing;
- (id)_ad_localRequestCommandWithRequestHelper:(id)helper;
- (id)_ad_requestCommandWithRequestHelper:(id)helper;
- (id)_ad_speechRequestOptionsWithClientConfiguration:(id)configuration;
@end

@implementation AFRequestInfo

- (id)_ad_speechRequestOptionsWithClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  speechRequestOptions = [(AFRequestInfo *)self speechRequestOptions];
  if (speechRequestOptions)
  {
    goto LABEL_6;
  }

  handoffRequestData = [(AFRequestInfo *)self handoffRequestData];
  if (handoffRequestData)
  {
  }

  else
  {
    notifyState = [(AFRequestInfo *)self notifyState];

    if (!notifyState)
    {
      goto LABEL_10;
    }
  }

  speechRequestOptions = [[AFSpeechRequestOptions alloc] initWithActivationEvent:1];
  if (speechRequestOptions)
  {
LABEL_6:
    v8 = speechRequestOptions;
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
      isDeviceInStarkMode = [configurationCopy isDeviceInStarkMode];
      v12 = [AFSpeechRequestOptions alloc];
      if (isDeviceInStarkMode)
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
        announcePlatformForCurrentRequest = [v13 announcePlatformForCurrentRequest];

        [v8 setAnnouncementPlatform:announcePlatformForCurrentRequest];
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

- (id)_ad_localRequestCommandWithRequestHelper:(id)helper
{
  helperCopy = helper;
  startLocalRequest = [(AFRequestInfo *)self startLocalRequest];
  if (!startLocalRequest)
  {
    startLocalRequest = [(AFRequestInfo *)self notifyState];

    if (startLocalRequest)
    {
      remoteRequestInfo = [helperCopy remoteRequestInfo];
      startLocalRequest = [remoteRequestInfo startLocalRequest];
    }
  }

  return startLocalRequest;
}

- (id)_ad_requestCommandWithRequestHelper:(id)helper
{
  helperCopy = helper;
  notifyState = [(AFRequestInfo *)self notifyState];

  if (notifyState)
  {
    remoteRequestInfo = [helperCopy remoteRequestInfo];
    v7 = sub_10000B3A0(remoteRequestInfo);
    if (!v7)
    {
      handoffURLString = [remoteRequestInfo handoffURLString];
      [(AFRequestInfo *)self setHandoffURLString:handoffURLString];
    }
  }

  else
  {
    v7 = sub_10000B3A0(self);
  }

  return v7;
}

+ (id)_createAnnounceWorkoutVoiceFeedbackRequestFromSKIAnnouncePayload:(id)payload announceNotificationRequest:(id)request
{
  payloadCopy = payload;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    workoutVoiceFeedback = [requestCopy workoutVoiceFeedback];
    v8 = [SKIFitnessInvocation announceWorkoutVoiceFeedback:workoutVoiceFeedback announcePayload:payloadCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_createAnnounceIncomingCallRequest:(id)request
{
  call = [request call];
  callUUID = [call callUUID];
  callProviderIdentifier = [call callProviderIdentifier];
  callProviderBundleID = [call callProviderBundleID];
  callerContactIdentifiers = [call callerContactIdentifiers];
  handle = [call handle];
  isVideo = [call isVideo];
  LOBYTE(v12) = [call isCallerIDBlocked];
  v10 = [SKIPhoneInvocation announceIncomingCallerRequestForCallUUID:callUUID callProviderIdentifier:callProviderIdentifier callProviderBundleId:callProviderBundleID callerContactIdentifiers:callerContactIdentifiers handle:handle isVideo:isVideo isCallerIDBlocked:v12];

  return v10;
}

+ (id)_announceIncomingCallRequestInfoFromRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(AFRequestInfo);
  v5 = [objc_opt_class() _createAnnounceIncomingCallRequest:requestCopy];

  v6 = [AFRequestCompletionOptions alloc];
  v7 = _AFPreferencesSpokenNotificationShowUIDuringTriggerlessListening();
  v8 = [v6 _initWithShowUIDuringListening:v7 playAlertBeforeListening:_AFPreferencesSpokenNotificationPlayAlertBeforeTriggerlessListening()];
  [v4 setStartLocalRequest:v5];
  [v4 setActivationEvent:9];
  [v4 setRequestCompletionOptions:v8];

  return v4;
}

+ (id)_createAnnounceInHomeRequestFromSKIAnnouncePayload:(id)payload
{
  payloadCopy = payload;
  notification = [payloadCopy notification];
  request = [notification request];

  content = [request content];
  userInfo = [content userInfo];

  v8 = off_10058E8C8();
  v9 = [userInfo objectForKey:v8];

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
  v13 = [userInfo objectForKey:v12];

  appBundleId = [payloadCopy appBundleId];
  synchronousBurstIndex = [payloadCopy synchronousBurstIndex];

  v16 = [NSNumber numberWithUnsignedInteger:synchronousBurstIndex];
  v17 = [SKIPhoneInvocation announceHomeAnnouncementRequestFromApp:appBundleId withAnnouncementIdentifier:v13 withUserNotificationType:v11 synchronousBurstIndex:v16];

  return v17;
}

+ (id)_createAnnounceWorkoutReminderRequestFromSKIAnnouncePayload:(id)payload announceNotificationRequest:(id)request
{
  payloadCopy = payload;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    workoutReminder = [requestCopy workoutReminder];
    v8 = [SKIFitnessInvocation announceWorkoutReminder:workoutReminder announcePayload:payloadCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_updateStartLocalRequest:(id)request withNewAnnouncePayload:(id)payload forAnnouncementType:(int64_t)type
{
  requestCopy = request;
  payloadCopy = payload;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v9 = [SKIFitnessInvocation updateStartLocalRequest:requestCopy withNewAnnouncePayload:payloadCopy];
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

+ (id)_announceNotificationRequestInfoFromNotificationRequest:(id)request previousRequest:(id)previousRequest synchronousBurstIndex:(unint64_t)index isMediaPlaying:(BOOL)playing
{
  requestCopy = request;
  previousRequestCopy = previousRequest;
  v10 = objc_alloc_init(AFRequestInfo);
  [v10 setActivationEvent:6];
  notification = [requestCopy notification];
  platform = [requestCopy platform];
  v13 = &stru_10051F508;
  if ([previousRequestCopy requestType] == 1)
  {
    v14 = previousRequestCopy;
    announcementType = [v14 announcementType];
    appID = [v14 appID];

    if (appID)
    {
      v17 = appID;
    }

    else
    {
      v17 = &stru_10051F508;
    }

    v13 = v17;
  }

  else
  {
    announcementType = 0;
  }

  announcementType2 = [requestCopy announcementType];
  appID2 = [requestCopy appID];
  timeOfRequestArrival = [previousRequestCopy timeOfRequestArrival];
  [timeOfRequestArrival timeIntervalSinceNow];
  v21 = v20;

  summary = [requestCopy summary];

  if (summary)
  {
    summary2 = [requestCopy summary];
    v40 = summary2;
    v36 = [NSArray arrayWithObjects:&v40 count:1];
  }

  else
  {
    v36 = 0;
  }

  v24 = -v21;
  if (announcementType2 == 9)
  {
    [v10 setIsAlwaysAllowedWhileDeviceLocked:1];
  }

  v25 = [SKIAnnounceNotificationDirectInvocationPayload alloc];
  BYTE1(v34) = [ADRequestDispatcherServiceHelper isBobbleAvailable]_0();
  LOBYTE(v34) = playing;
  v26 = [v25 initWithNotification:notification appBundleId:appID2 appBundleIdOfLastAnnouncement:v13 synchronousBurstIndex:index isSameTypeAsLastAnnouncement:announcementType2 == announcementType timeSinceLastAnnouncement:platform announcementPlatform:v24 isMediaPlaying:v34 isBobbleCapableAnnouncement:v36 summaries:?];
  startLocalRequest = [requestCopy startLocalRequest];

  if (startLocalRequest)
  {
    startLocalRequest2 = [requestCopy startLocalRequest];
    v29 = [objc_opt_class() _updateStartLocalRequest:startLocalRequest2 withNewAnnouncePayload:v26 forAnnouncementType:announcementType2];

    [v10 setStartLocalRequest:v29];
    v30 = v10;

    goto LABEL_40;
  }

  if (announcementType2 > 4)
  {
    if (announcementType2 <= 6)
    {
      if (announcementType2 == 5)
      {
        [SKIPhoneInvocation announceVoicemailRequestForAnnounceDirectInvocationPayload:v26];
      }

      else
      {
        [SKIPhoneInvocation announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:v26];
      }

      v31 = LABEL_19:;
LABEL_38:
      startLocalRequest = v31;
      goto LABEL_39;
    }

    switch(announcementType2)
    {
      case 7:
        v31 = [SKIPhoneInvocation announceIncomingCallNotificationRequest:v26];
        goto LABEL_38;
      case 8:
        v31 = [objc_opt_class() _createAnnounceWorkoutReminderRequestFromSKIAnnouncePayload:v26 announceNotificationRequest:requestCopy];
        if (v31)
        {
          goto LABEL_38;
        }

        break;
      case 9:
        v31 = [objc_opt_class() _createAnnounceWorkoutVoiceFeedbackRequestFromSKIAnnouncePayload:v26 announceNotificationRequest:requestCopy];
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
    if (announcementType2 > 1)
    {
      if (announcementType2 == 2)
      {
        v31 = [objc_opt_class() _createAnnounceInHomeRequestFromSKIAnnouncePayload:v26];
        goto LABEL_38;
      }

      if (announcementType2 == 3)
      {
        [SKINotificationsInvocation announceNotificationsRequestFromAnnounceDirectInvocationPayload:v26];
      }

      else
      {
        [SKINotebookInvocation announceRemindersRequestFromAnnounceDirectInvocationPayload:v26];
      }

      goto LABEL_19;
    }

    if (announcementType2)
    {
      if (announcementType2 == 1)
      {
        v31 = [SKIMessagesInvocation announceMessagesRequestFromAnnounceDirectInvocationPayload:v26];
        goto LABEL_38;
      }

LABEL_39:
      [v10 setStartLocalRequest:startLocalRequest];
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

+ (id)requestInfoFromAnnouncementRequest:(id)request previousRequest:(id)previousRequest synchronousBurstIndex:(unint64_t)index isMediaPlaying:(BOOL)playing
{
  playingCopy = playing;
  requestCopy = request;
  previousRequestCopy = previousRequest;
  requestType = [requestCopy requestType];
  if (requestType)
  {
    if (requestType == 2)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315138;
        v19 = "+[AFRequestInfo(ADAnnouncementRequestBuilder) requestInfoFromAnnouncementRequest:previousRequest:synchronousBurstIndex:isMediaPlaying:]";
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Creating announce incoming call request", &v18, 0xCu);
      }

      v14 = [self _announceIncomingCallRequestInfoFromRequest:requestCopy];
    }

    else
    {
      if (requestType != 1)
      {
        goto LABEL_12;
      }

      v14 = [self _announceNotificationRequestInfoFromNotificationRequest:requestCopy previousRequest:previousRequestCopy synchronousBurstIndex:index isMediaPlaying:playingCopy];
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
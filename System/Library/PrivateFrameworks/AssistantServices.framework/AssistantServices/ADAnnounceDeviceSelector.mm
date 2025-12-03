@interface ADAnnounceDeviceSelector
+ (id)_requestToExecuteCommand:(id)command onRemoteWithAssistantId:(id)id;
+ (id)sharedDeviceSelector;
+ (int64_t)appropriateWorkoutVoiceFeedbackAnnouncementPlatform;
- (BOOL)_shouldHandleAnnouncementLocallyForRoute:(id)route notificationRequest:(id)request;
- (id)_announcementRequestFromRemoteAnnouncementRequest:(id)request withCompletion:(id)completion;
- (id)_createPerformRemoteAnnoucementRequestFromNotificationRequest:(id)request;
- (id)_init;
- (id)pairedDevice;
- (void)_populateCachesForRequest:(id)request toRemoteAssistantId:(id)id;
- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)identifier completion:(id)completion;
- (void)handleAnnouncementRequest:(id)request;
- (void)handleRemoteAnnounceRequest:(id)request completion:(id)completion;
- (void)handleRemoteDismissRequest:(id)request completion:(id)completion;
- (void)sendRemoteAnnouncementRequest:(id)request toAssistantId:(id)id withCompletion:(id)completion;
@end

@implementation ADAnnounceDeviceSelector

- (void)_populateCachesForRequest:(id)request toRemoteAssistantId:(id)id
{
  requestCopy = request;
  idCopy = id;
  announcementIdentifier = [requestCopy announcementIdentifier];
  if (!announcementIdentifier)
  {
    v18 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v24 = "[ADAnnounceDeviceSelector _populateCachesForRequest:toRemoteAssistantId:]";
    v19 = "%s cannot populate caches for nil announcement identifier";
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    workoutReminder = [requestCopy workoutReminder];
    predictionIdentifier = [workoutReminder predictionIdentifier];

    if (!predictionIdentifier)
    {
      v18 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v24 = "[ADAnnounceDeviceSelector _populateCachesForRequest:toRemoteAssistantId:]";
      v19 = "%s cannot populate cache for nil prediction identifier";
      goto LABEL_17;
    }

    clientIdToAnnounceIdMap = [(ADAnnounceDeviceSelector *)self clientIdToAnnounceIdMap];
    [clientIdToAnnounceIdMap setObject:announcementIdentifier forKey:predictionIdentifier];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    workoutVoiceFeedback = [requestCopy workoutVoiceFeedback];
    feedbackIdentifier = [workoutVoiceFeedback feedbackIdentifier];

    if (feedbackIdentifier)
    {
      clientIdToAnnounceIdMap2 = [(ADAnnounceDeviceSelector *)self clientIdToAnnounceIdMap];
      [clientIdToAnnounceIdMap2 setObject:announcementIdentifier forKey:feedbackIdentifier];

      goto LABEL_8;
    }

    v18 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v24 = "[ADAnnounceDeviceSelector _populateCachesForRequest:toRemoteAssistantId:]";
    v19 = "%s cannot populate cache for nil feedback identifier";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
    goto LABEL_18;
  }

LABEL_8:
  if (idCopy)
  {
    announceIdToRemoteAssistantIdMap = [(ADAnnounceDeviceSelector *)self announceIdToRemoteAssistantIdMap];
    [announceIdToRemoteAssistantIdMap setObject:idCopy forKey:announcementIdentifier];
  }

  v16 = dispatch_time(0, 60000000000);
  cachePurgeQueue = self->_cachePurgeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121AAC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v21 = announcementIdentifier;
  v22 = requestCopy;
  dispatch_after(v16, cachePurgeQueue, block);

LABEL_18:
}

- (void)handleRemoteDismissRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [NSUUID alloc];
  announcementIdentifier = [requestCopy announcementIdentifier];

  v10 = [v8 initWithUUIDString:announcementIdentifier];
  externalNotificationRequestHandler = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100121CF4;
  v13[3] = &unk_10051E100;
  v14 = completionCopy;
  v12 = completionCopy;
  [externalNotificationRequestHandler deactivateWorkoutAnnouncementWithIdentifier:v10 completion:v13];
}

- (id)_announcementRequestFromRemoteAnnouncementRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  announcementType = [requestCopy announcementType];
  unsignedIntValue = [announcementType unsignedIntValue];

  announcementNotificationType = [requestCopy announcementNotificationType];
  unsignedIntValue2 = [announcementNotificationType unsignedIntValue];

  if (unsignedIntValue == 1)
  {
    v11 = unsignedIntValue2;
    if (unsignedIntValue2 == 9)
    {
      v12 = [[ADAnnounceWorkoutVoiceFeedbackRequest alloc] initWithRemoteAnnouncement:requestCopy completion:completionCopy];
      -[ADAnnouncementRequest setPlatform:](v12, "setPlatform:", [objc_opt_class() appropriateWorkoutVoiceFeedbackAnnouncementPlatform]);
    }

    else
    {
      v12 = [(ADAnnouncementRequest *)[ADAnnounceNotificationRequest alloc] initWithRemoteAnnouncement:requestCopy completion:completionCopy];
    }

    [(ADAnnounceNotificationRequest *)v12 setAnnouncementType:v11];
    [(ADAnnouncementRequest *)v12 setRequiresOpportuneTime:[(ADAnnouncementRequest *)v12 platform]== 1];
    [(ADAnnouncementRequest *)v12 setRequiresOpportuneTime:0];
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[ADAnnounceDeviceSelector _announcementRequestFromRemoteAnnouncementRequest:withCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s failed to announce remote announcement", &v15, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
    v12 = 0;
  }

  return v12;
}

- (void)handleRemoteAnnounceRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v34 = "[ADAnnounceDeviceSelector handleRemoteAnnounceRequest:completion:]";
    v35 = 2112;
    v36 = *&requestCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  if (!completionCopy)
  {
    completionCopy = &stru_100512690;
  }

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100122348;
  v30 = &unk_10051C718;
  v9 = requestCopy;
  v31 = v9;
  v10 = completionCopy;
  v32 = v10;
  v11 = [(ADAnnounceDeviceSelector *)self _announcementRequestFromRemoteAnnouncementRequest:v9 withCompletion:&v27];
  headphonesManager = [(ADAnnounceDeviceSelector *)self headphonesManager];
  currentAudioRoute = [headphonesManager currentAudioRoute];
  v14 = [(ADAnnounceDeviceSelector *)self _shouldHandleAnnouncementLocallyForRoute:currentAudioRoute notificationRequest:v11];

  if (v14)
  {
    announcementTimestamp = [v9 announcementTimestamp];
    [announcementTimestamp timeIntervalSinceNow];
    v17 = -v16;

    announcementNotificationType = [v9 announcementNotificationType];
    unsignedIntValue = [announcementNotificationType unsignedIntValue];

    if (unsignedIntValue == 9)
    {
      v20 = 20.0;
    }

    else
    {
      v20 = 10.0;
    }

    if (v20 >= v17)
    {
      externalNotificationRequestHandler = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
      [externalNotificationRequestHandler handleAnnouncementRequest:v11];
      goto LABEL_16;
    }

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[ADAnnounceDeviceSelector handleRemoteAnnounceRequest:completion:]";
      v35 = 2048;
      v36 = v17;
      v37 = 2048;
      v38 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s remote announcement request received after %.1f seconds, limit is %.1f", buf, 0x20u);
    }

    v22 = [SACommandFailed alloc];
    v23 = [NSString stringWithFormat:@"remote announcement request received after %.1f seconds, limit is %.1f", *&v17, *&v20, v27, v28, v29, v30, v31];
    externalNotificationRequestHandler = [v22 initWithReason:v23];

    aceId = [v9 aceId];
    [externalNotificationRequestHandler setRefId:aceId];
  }

  else
  {
    externalNotificationRequestHandler = objc_alloc_init(SACommandFailed);
    aceId2 = [v9 aceId];
    [externalNotificationRequestHandler setRefId:aceId2];

    [externalNotificationRequestHandler setReason:@"No Announcement Route"];
  }

  v10->invoke(v10, externalNotificationRequestHandler, 0);
LABEL_16:
}

- (id)_createPerformRemoteAnnoucementRequestFromNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = [AFRequestInfo requestInfoFromAnnouncementRequest:requestCopy previousRequest:0 synchronousBurstIndex:0 isMediaPlaying:0];
  startLocalRequest = [v4 startLocalRequest];

  v6 = objc_alloc_init(SAPerformRemoteAnnouncement);
  announcementIdentifier = [requestCopy announcementIdentifier];
  uUIDString = [announcementIdentifier UUIDString];
  [v6 setAnnouncementIdentifier:uUIDString];

  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy requestType]);
  [v6 setAnnouncementType:v9];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [requestCopy announcementType]);
  [v6 setAnnouncementNotificationType:v10];

  platform = [requestCopy platform];
  v12 = [NSNumber numberWithInteger:platform];
  [v6 setAnnouncementPlatform:v12];

  [v6 setStartLocalRequest:startLocalRequest];
  v13 = +[NSDate now];
  [v6 setAnnouncementTimestamp:v13];

  return v6;
}

- (void)sendRemoteAnnouncementRequest:(id)request toAssistantId:(id)id withCompletion:(id)completion
{
  requestCopy = request;
  idCopy = id;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "[ADAnnounceDeviceSelector sendRemoteAnnouncementRequest:toAssistantId:withCompletion:]";
    v18 = 2112;
    v19 = requestCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s %@", &v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(ADAnnounceDeviceSelector *)self _createPerformRemoteAnnoucementRequestFromNotificationRequest:requestCopy];
    v13 = [objc_opt_class() _requestToExecuteCommand:v12 onRemoteWithAssistantId:idCopy];
    if (v13)
    {
      [(ADAnnounceDeviceSelector *)self _populateCachesForRequest:requestCopy toRemoteAssistantId:idCopy];
      v14 = +[ADCommandCenter sharedCommandCenter];
      [v14 handleCommand:v13 completion:completionCopy];
    }

    else
    {
      v14 = [[SACommandFailed alloc] initWithReason:@"Failed to create SAExecuteOnRemoteRequest"];
      completionCopy[2](completionCopy, v14, 0);
    }
  }

  else
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[ADAnnounceDeviceSelector sendRemoteAnnouncementRequest:toAssistantId:withCompletion:]";
      v18 = 2112;
      v19 = requestCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unsupported request type for remote annoucement: %@", &v16, 0x16u);
    }

    v12 = objc_alloc_init(SACommandFailed);
    [v12 setReason:@"No Announcement Route"];
    completionCopy[2](completionCopy, v12, 0);
  }
}

- (void)handleAnnouncementRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
    announcementType = [v5 announcementType];
    v7 = announcementType == 9;
    if (announcementType == 9)
    {
      [v5 setPlatform:{objc_msgSend(objc_opt_class(), "appropriateWorkoutVoiceFeedbackAnnouncementPlatform")}];
    }

    headphonesManager = [(ADAnnounceDeviceSelector *)self headphonesManager];
    currentAudioRoute = [headphonesManager currentAudioRoute];

    v10 = [(ADAnnounceDeviceSelector *)self _shouldHandleAnnouncementLocallyForRoute:currentAudioRoute notificationRequest:v5];
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
      v31 = 2112;
      v32 = v5;
      v33 = 1024;
      v34 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s request: %@, shouldHandleLocally: %d", buf, 0x1Cu);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    else if (v10)
    {
LABEL_6:
      [(ADAnnounceDeviceSelector *)self _populateCachesForRequest:v5 toRemoteAssistantId:0];
      externalNotificationRequestHandler = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
      [externalNotificationRequestHandler handleAnnouncementRequest:v5];
LABEL_25:

      goto LABEL_26;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100122C94;
    v25[3] = &unk_100512670;
    v28 = v7;
    v14 = v5;
    v26 = v14;
    selfCopy = self;
    v15 = objc_retainBlock(v25);
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Searching for paired device", buf, 0xCu);
    }

    pairedDevice = [(ADAnnounceDeviceSelector *)self pairedDevice];
    v18 = AFSiriLogContextConnection;
    v19 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
    if (pairedDevice)
    {
      if (v19)
      {
        *buf = 136315394;
        v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
        v31 = 2112;
        v32 = pairedDevice;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Paired device found: %@", buf, 0x16u);
      }

      assistantIdentifier = [pairedDevice assistantIdentifier];
      if (assistantIdentifier)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100122E5C;
        v22[3] = &unk_100519680;
        v24 = v15;
        v23 = v14;
        [(ADAnnounceDeviceSelector *)self sendRemoteAnnouncementRequest:v23 toAssistantId:assistantIdentifier withCompletion:v22];
      }

      else
      {
        v21 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Paired device has nil assistant ID", buf, 0xCu);
        }

        (v15[2])(v15, v14);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 136315138;
        v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Paired device not reachable", buf, 0xCu);
      }

      (v15[2])(v15, v14);
    }

    externalNotificationRequestHandler = v26;
    goto LABEL_25;
  }

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot announce request remotely since it is not an ADAnnounceNotificationRequest", buf, 0xCu);
  }

LABEL_26:
}

- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    if (!completionCopy)
    {
      completionCopy = &stru_100512648;
    }

    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Attempting to deactivate workout reminder announcement with client ID: %@", buf, 0x16u);
    }

    clientIdToAnnounceIdMap = [(ADAnnounceDeviceSelector *)self clientIdToAnnounceIdMap];
    v10 = [clientIdToAnnounceIdMap objectForKey:identifierCopy];

    v11 = AFSiriLogContextConnection;
    v12 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        *buf = 136315650;
        v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
        v21 = 2112;
        v22 = identifierCopy;
        v23 = 2112;
        v24 = v10;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Client ID (%@) maps to announcement ID: %@", buf, 0x20u);
      }

      externalNotificationRequestHandler = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100123444;
      v15[3] = &unk_100519060;
      v18 = completionCopy;
      v15[4] = self;
      v16 = v10;
      v17 = identifierCopy;
      [externalNotificationRequestHandler deactivateWorkoutAnnouncementWithIdentifier:v16 completion:v15];
    }

    else
    {
      if (v12)
      {
        *buf = 136315394;
        v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
        v21 = 2112;
        v22 = identifierCopy;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s No announcement found for client ID: %@ - ignoring", buf, 0x16u);
      }

      completionCopy->invoke(completionCopy, 0);
    }
  }

  else
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s predictionId must be a non-nil non-empty string", buf, 0xCu);
    }
  }
}

- (BOOL)_shouldHandleAnnouncementLocallyForRoute:(id)route notificationRequest:(id)request
{
  routeCopy = route;
  requestCopy = request;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v12 = v7;
    [requestCopy announcementType];
    v13 = AFSiriUserNotificationAnnouncementTypeGetName();
    v14 = 136315650;
    v15 = "[ADAnnounceDeviceSelector _shouldHandleAnnouncementLocallyForRoute:notificationRequest:]";
    v16 = 2112;
    v17 = routeCopy;
    v18 = 2112;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s currentRoute: %@ announcementType: %@", &v14, 0x20u);
  }

  if ([routeCopy isRouteCurrentlyPicked])
  {
    v8 = [routeCopy availableAnnouncementRequestTypes] & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  announcementType = [requestCopy announcementType];
  isNonAnnounceSupportedWirelessHeadset = (announcementType == 9) | v8;
  if (announcementType == 9 && (v8 & 1) == 0)
  {
    isNonAnnounceSupportedWirelessHeadset = [routeCopy isNonAnnounceSupportedWirelessHeadset];
  }

  return isNonAnnounceSupportedWirelessHeadset & 1;
}

- (id)pairedDevice
{
  if (AFIsNano() & 1) != 0 || (AFIsIOS())
  {
    v3 = @"BTPipe-Watch";
    deviceCircleManager = self->_deviceCircleManager;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100123C74;
    v9[3] = &unk_10051D9B8;
    v10 = @"BTPipe-Watch";
    v5 = [AFPeerInfo newWithBuilder:v9];
    v6 = [(ADDeviceCircleManager *)deviceCircleManager managedPeerInfoMatchingPeerInfo:v5];
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[ADAnnounceDeviceSelector pairedDevice]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s pairedDevice called on an unexpected platform", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_init
{
  v18.receiver = self;
  v18.super_class = ADAnnounceDeviceSelector;
  v2 = [(ADAnnounceDeviceSelector *)&v18 init];
  if (v2)
  {
    v3 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
    headphonesManager = v2->_headphonesManager;
    v2->_headphonesManager = v3;

    v5 = +[ADDeviceCircleManager sharedInstance];
    deviceCircleManager = v2->_deviceCircleManager;
    v2->_deviceCircleManager = v5;

    v7 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
    externalNotificationRequestHandler = v2->_externalNotificationRequestHandler;
    v2->_externalNotificationRequestHandler = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

    v11 = dispatch_queue_create("com.apple.assistantd.remote_announce_notification_cache", v10);
    cachePurgeQueue = v2->_cachePurgeQueue;
    v2->_cachePurgeQueue = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    clientIdToAnnounceIdMap = v2->_clientIdToAnnounceIdMap;
    v2->_clientIdToAnnounceIdMap = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    announceIdToRemoteAssistantIdMap = v2->_announceIdToRemoteAssistantIdMap;
    v2->_announceIdToRemoteAssistantIdMap = v15;
  }

  return v2;
}

+ (id)_requestToExecuteCommand:(id)command onRemoteWithAssistantId:(id)id
{
  commandCopy = command;
  idCopy = id;
  _serializedData = [commandCopy _serializedData];
  if (_serializedData || ([commandCopy dictionary], v10 = objc_claimAutoreleasedReturnValue(), v15 = 0, +[NSPropertyListSerialization dataWithPropertyList:format:options:error:](NSPropertyListSerialization, "dataWithPropertyList:format:options:error:", v10, 200, 0, &v15), _serializedData = objc_claimAutoreleasedReturnValue(), v11 = v15, v10, !v11))
  {
    if ([idCopy length])
    {
      v8 = objc_alloc_init(SARemoteDevice);
      [v8 setAssistantId:idCopy];
      v9 = objc_alloc_init(SAExecuteOnRemoteRequest);
      [v9 setRemoteDevice:v8];
      [v9 setSerializedCommand:_serializedData];
      [v9 setUseGuaranteedDelivery:1];

      goto LABEL_11;
    }

    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "+[ADAnnounceDeviceSelector _requestToExecuteCommand:onRemoteWithAssistantId:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s invalid assistantId - must be a non-zero length string", buf, 0xCu);
    }
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "+[ADAnnounceDeviceSelector _requestToExecuteCommand:onRemoteWithAssistantId:]";
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Could not serialize the command: %@", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (int64_t)appropriateWorkoutVoiceFeedbackAnnouncementPlatform
{
  v2 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  currentAudioRoute = [v2 currentAudioRoute];

  isNonAnnounceSupportedWirelessHeadset = [currentAudioRoute isNonAnnounceSupportedWirelessHeadset];
  if (isNonAnnounceSupportedWirelessHeadset)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = v6;
    v9 = AFSiriAnnouncementPlatformGetName();
    v10 = 136315906;
    v11 = "+[ADAnnounceDeviceSelector appropriateWorkoutVoiceFeedbackAnnouncementPlatform]";
    v12 = 2112;
    v13 = currentAudioRoute;
    v14 = 1024;
    v15 = isNonAnnounceSupportedWirelessHeadset;
    v16 = 2112;
    v17 = v9;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s workout voice feedback platform: route %@ is non-announce supported headphones %d chosen platform %@", &v10, 0x26u);
  }

  return v5;
}

+ (id)sharedDeviceSelector
{
  if (qword_1005901D0 != -1)
  {
    dispatch_once(&qword_1005901D0, &stru_100512628);
  }

  v3 = qword_1005901D8;

  return v3;
}

@end
@interface ADAnnounceDeviceSelector
+ (id)_requestToExecuteCommand:(id)a3 onRemoteWithAssistantId:(id)a4;
+ (id)sharedDeviceSelector;
+ (int64_t)appropriateWorkoutVoiceFeedbackAnnouncementPlatform;
- (BOOL)_shouldHandleAnnouncementLocallyForRoute:(id)a3 notificationRequest:(id)a4;
- (id)_announcementRequestFromRemoteAnnouncementRequest:(id)a3 withCompletion:(id)a4;
- (id)_createPerformRemoteAnnoucementRequestFromNotificationRequest:(id)a3;
- (id)_init;
- (id)pairedDevice;
- (void)_populateCachesForRequest:(id)a3 toRemoteAssistantId:(id)a4;
- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)a3 completion:(id)a4;
- (void)handleAnnouncementRequest:(id)a3;
- (void)handleRemoteAnnounceRequest:(id)a3 completion:(id)a4;
- (void)handleRemoteDismissRequest:(id)a3 completion:(id)a4;
- (void)sendRemoteAnnouncementRequest:(id)a3 toAssistantId:(id)a4 withCompletion:(id)a5;
@end

@implementation ADAnnounceDeviceSelector

- (void)_populateCachesForRequest:(id)a3 toRemoteAssistantId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 announcementIdentifier];
  if (!v8)
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
    v9 = [v6 workoutReminder];
    v10 = [v9 predictionIdentifier];

    if (!v10)
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

    v11 = [(ADAnnounceDeviceSelector *)self clientIdToAnnounceIdMap];
    [v11 setObject:v8 forKey:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v6 workoutVoiceFeedback];
    v13 = [v12 feedbackIdentifier];

    if (v13)
    {
      v14 = [(ADAnnounceDeviceSelector *)self clientIdToAnnounceIdMap];
      [v14 setObject:v8 forKey:v13];

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
  if (v7)
  {
    v15 = [(ADAnnounceDeviceSelector *)self announceIdToRemoteAssistantIdMap];
    [v15 setObject:v7 forKey:v8];
  }

  v16 = dispatch_time(0, 60000000000);
  cachePurgeQueue = self->_cachePurgeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121AAC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v21 = v8;
  v22 = v6;
  dispatch_after(v16, cachePurgeQueue, block);

LABEL_18:
}

- (void)handleRemoteDismissRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSUUID alloc];
  v9 = [v7 announcementIdentifier];

  v10 = [v8 initWithUUIDString:v9];
  v11 = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100121CF4;
  v13[3] = &unk_10051E100;
  v14 = v6;
  v12 = v6;
  [v11 deactivateWorkoutAnnouncementWithIdentifier:v10 completion:v13];
}

- (id)_announcementRequestFromRemoteAnnouncementRequest:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 announcementType];
  v8 = [v7 unsignedIntValue];

  v9 = [v5 announcementNotificationType];
  v10 = [v9 unsignedIntValue];

  if (v8 == 1)
  {
    v11 = v10;
    if (v10 == 9)
    {
      v12 = [[ADAnnounceWorkoutVoiceFeedbackRequest alloc] initWithRemoteAnnouncement:v5 completion:v6];
      -[ADAnnouncementRequest setPlatform:](v12, "setPlatform:", [objc_opt_class() appropriateWorkoutVoiceFeedbackAnnouncementPlatform]);
    }

    else
    {
      v12 = [(ADAnnouncementRequest *)[ADAnnounceNotificationRequest alloc] initWithRemoteAnnouncement:v5 completion:v6];
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

    v6[2](v6, 0);
    v12 = 0;
  }

  return v12;
}

- (void)handleRemoteAnnounceRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v34 = "[ADAnnounceDeviceSelector handleRemoteAnnounceRequest:completion:]";
    v35 = 2112;
    v36 = *&v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  if (!v7)
  {
    v7 = &stru_100512690;
  }

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100122348;
  v30 = &unk_10051C718;
  v9 = v6;
  v31 = v9;
  v10 = v7;
  v32 = v10;
  v11 = [(ADAnnounceDeviceSelector *)self _announcementRequestFromRemoteAnnouncementRequest:v9 withCompletion:&v27];
  v12 = [(ADAnnounceDeviceSelector *)self headphonesManager];
  v13 = [v12 currentAudioRoute];
  v14 = [(ADAnnounceDeviceSelector *)self _shouldHandleAnnouncementLocallyForRoute:v13 notificationRequest:v11];

  if (v14)
  {
    v15 = [v9 announcementTimestamp];
    [v15 timeIntervalSinceNow];
    v17 = -v16;

    v18 = [v9 announcementNotificationType];
    v19 = [v18 unsignedIntValue];

    if (v19 == 9)
    {
      v20 = 20.0;
    }

    else
    {
      v20 = 10.0;
    }

    if (v20 >= v17)
    {
      v24 = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
      [v24 handleAnnouncementRequest:v11];
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
    v24 = [v22 initWithReason:v23];

    v25 = [v9 aceId];
    [v24 setRefId:v25];
  }

  else
  {
    v24 = objc_alloc_init(SACommandFailed);
    v26 = [v9 aceId];
    [v24 setRefId:v26];

    [v24 setReason:@"No Announcement Route"];
  }

  v10->invoke(v10, v24, 0);
LABEL_16:
}

- (id)_createPerformRemoteAnnoucementRequestFromNotificationRequest:(id)a3
{
  v3 = a3;
  v4 = [AFRequestInfo requestInfoFromAnnouncementRequest:v3 previousRequest:0 synchronousBurstIndex:0 isMediaPlaying:0];
  v5 = [v4 startLocalRequest];

  v6 = objc_alloc_init(SAPerformRemoteAnnouncement);
  v7 = [v3 announcementIdentifier];
  v8 = [v7 UUIDString];
  [v6 setAnnouncementIdentifier:v8];

  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 requestType]);
  [v6 setAnnouncementType:v9];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 announcementType]);
  [v6 setAnnouncementNotificationType:v10];

  v11 = [v3 platform];
  v12 = [NSNumber numberWithInteger:v11];
  [v6 setAnnouncementPlatform:v12];

  [v6 setStartLocalRequest:v5];
  v13 = +[NSDate now];
  [v6 setAnnouncementTimestamp:v13];

  return v6;
}

- (void)sendRemoteAnnouncementRequest:(id)a3 toAssistantId:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "[ADAnnounceDeviceSelector sendRemoteAnnouncementRequest:toAssistantId:withCompletion:]";
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s %@", &v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(ADAnnounceDeviceSelector *)self _createPerformRemoteAnnoucementRequestFromNotificationRequest:v8];
    v13 = [objc_opt_class() _requestToExecuteCommand:v12 onRemoteWithAssistantId:v9];
    if (v13)
    {
      [(ADAnnounceDeviceSelector *)self _populateCachesForRequest:v8 toRemoteAssistantId:v9];
      v14 = +[ADCommandCenter sharedCommandCenter];
      [v14 handleCommand:v13 completion:v10];
    }

    else
    {
      v14 = [[SACommandFailed alloc] initWithReason:@"Failed to create SAExecuteOnRemoteRequest"];
      v10[2](v10, v14, 0);
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
      v19 = v8;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unsupported request type for remote annoucement: %@", &v16, 0x16u);
    }

    v12 = objc_alloc_init(SACommandFailed);
    [v12 setReason:@"No Announcement Route"];
    v10[2](v10, v12, 0);
  }
}

- (void)handleAnnouncementRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 announcementType];
    v7 = v6 == 9;
    if (v6 == 9)
    {
      [v5 setPlatform:{objc_msgSend(objc_opt_class(), "appropriateWorkoutVoiceFeedbackAnnouncementPlatform")}];
    }

    v8 = [(ADAnnounceDeviceSelector *)self headphonesManager];
    v9 = [v8 currentAudioRoute];

    v10 = [(ADAnnounceDeviceSelector *)self _shouldHandleAnnouncementLocallyForRoute:v9 notificationRequest:v5];
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
      v12 = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
      [v12 handleAnnouncementRequest:v5];
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
    v27 = self;
    v15 = objc_retainBlock(v25);
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Searching for paired device", buf, 0xCu);
    }

    v17 = [(ADAnnounceDeviceSelector *)self pairedDevice];
    v18 = AFSiriLogContextConnection;
    v19 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      if (v19)
      {
        *buf = 136315394;
        v30 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]";
        v31 = 2112;
        v32 = v17;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Paired device found: %@", buf, 0x16u);
      }

      v20 = [v17 assistantIdentifier];
      if (v20)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100122E5C;
        v22[3] = &unk_100519680;
        v24 = v15;
        v23 = v14;
        [(ADAnnounceDeviceSelector *)self sendRemoteAnnouncementRequest:v23 toAssistantId:v20 withCompletion:v22];
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

    v12 = v26;
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

- (void)deactivateWorkoutAnnouncementWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (!v7)
    {
      v7 = &stru_100512648;
    }

    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
      v21 = 2112;
      v22 = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Attempting to deactivate workout reminder announcement with client ID: %@", buf, 0x16u);
    }

    v9 = [(ADAnnounceDeviceSelector *)self clientIdToAnnounceIdMap];
    v10 = [v9 objectForKey:v6];

    v11 = AFSiriLogContextConnection;
    v12 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        *buf = 136315650;
        v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v10;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Client ID (%@) maps to announcement ID: %@", buf, 0x20u);
      }

      v13 = [(ADAnnounceDeviceSelector *)self externalNotificationRequestHandler];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100123444;
      v15[3] = &unk_100519060;
      v18 = v7;
      v15[4] = self;
      v16 = v10;
      v17 = v6;
      [v13 deactivateWorkoutAnnouncementWithIdentifier:v16 completion:v15];
    }

    else
    {
      if (v12)
      {
        *buf = 136315394;
        v20 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]";
        v21 = 2112;
        v22 = v6;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s No announcement found for client ID: %@ - ignoring", buf, 0x16u);
      }

      v7->invoke(v7, 0);
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

- (BOOL)_shouldHandleAnnouncementLocallyForRoute:(id)a3 notificationRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v12 = v7;
    [v6 announcementType];
    v13 = AFSiriUserNotificationAnnouncementTypeGetName();
    v14 = 136315650;
    v15 = "[ADAnnounceDeviceSelector _shouldHandleAnnouncementLocallyForRoute:notificationRequest:]";
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s currentRoute: %@ announcementType: %@", &v14, 0x20u);
  }

  if ([v5 isRouteCurrentlyPicked])
  {
    v8 = [v5 availableAnnouncementRequestTypes] & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [v6 announcementType];
  v10 = (v9 == 9) | v8;
  if (v9 == 9 && (v8 & 1) == 0)
  {
    v10 = [v5 isNonAnnounceSupportedWirelessHeadset];
  }

  return v10 & 1;
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

+ (id)_requestToExecuteCommand:(id)a3 onRemoteWithAssistantId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _serializedData];
  if (v7 || ([v5 dictionary], v10 = objc_claimAutoreleasedReturnValue(), v15 = 0, +[NSPropertyListSerialization dataWithPropertyList:format:options:error:](NSPropertyListSerialization, "dataWithPropertyList:format:options:error:", v10, 200, 0, &v15), v7 = objc_claimAutoreleasedReturnValue(), v11 = v15, v10, !v11))
  {
    if ([v6 length])
    {
      v8 = objc_alloc_init(SARemoteDevice);
      [v8 setAssistantId:v6];
      v9 = objc_alloc_init(SAExecuteOnRemoteRequest);
      [v9 setRemoteDevice:v8];
      [v9 setSerializedCommand:v7];
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
  v3 = [v2 currentAudioRoute];

  v4 = [v3 isNonAnnounceSupportedWirelessHeadset];
  if (v4)
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
    v13 = v3;
    v14 = 1024;
    v15 = v4;
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
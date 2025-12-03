@interface MapsPushManager
+ (id)defaultManager;
+ (id)fakeDevicesFromNames:(id)names;
- (BOOL)shouldUseDevAPNS;
- (MapsPushDelegate)delegate;
- (MapsPushManager)init;
- (id)_simulatedDetails;
- (id)_simulatedNotification;
- (id)_simulatedPlace;
- (id)_simulatedProblemResolutionResponse;
- (id)_simulatedProblemStatus;
- (id)devicePushToken;
- (int64_t)_priorityForMessageOfType:(int64_t)type;
- (void)_handleGenericIDSMessage:(id)message;
- (void)_updateDevices;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)fetchProblemStatus:(id)status problemReportIDs:(id)ds manifestToken:(id)token;
- (void)mapsInstallStateDidChange:(BOOL)change;
- (void)propagateIDSMessageOfType:(int64_t)type message:(id)message;
- (void)pushItem:(id)item toDevice:(id)device;
- (void)registerForMapsICloudPushTopic;
- (void)sendRAPStatusChangeNotification:(id)notification;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setShouldUseDevAPNS:(BOOL)s;
- (void)setUpPushConnection;
- (void)simulateProblemResolution;
- (void)simulateRAPStatusChange;
- (void)simulateUGCPhotoAttributionClearedNotification;
- (void)simulateUGCPhotoSubmissionResolution;
@end

@implementation MapsPushManager

- (MapsPushDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mapsInstallStateDidChange:(BOOL)change
{
  if (change)
  {

    [(MapsPushManager *)self registerForMapsICloudPushTopic];
  }

  else
  {
    v6 = @"com.apple.maps.icloud";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    apsConnection = [(MapsPushManager *)self apsConnection];
    [apsConnection _setIgnoredTopics:v4];
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  v40 = DefaultLoggingSubsystem;
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v55 = messageCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received message: %@", buf, 0xCu);
  }

  v42 = dCopy;
  v43 = serviceCopy;
  v14 = [serviceCopy deviceForFromID:dCopy];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = accountCopy;
  nearbyDevices = [accountCopy nearbyDevices];
  v17 = [nearbyDevices countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
LABEL_5:
    v20 = 0;
    while (1)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(nearbyDevices);
      }

      uniqueID = [*(*(&v48 + 1) + 8 * v20) uniqueID];
      uniqueID2 = [v14 uniqueID];
      v23 = [uniqueID isEqualToString:uniqueID2];

      if (v23)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [nearbyDevices countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v18)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    nearbyDevices = [v15 devices];
    v24 = [nearbyDevices countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v24)
    {
LABEL_19:

      v31 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Unexpected iCloud account. Ignoring.", buf, 2u);
      }

      NSLog(@"Unexpected iCloud account. Ignoring...");
      goto LABEL_24;
    }

    v25 = v24;
    v26 = *v45;
LABEL_13:
    v27 = 0;
    while (1)
    {
      if (*v45 != v26)
      {
        objc_enumerationMutation(nearbyDevices);
      }

      uniqueID3 = [*(*(&v44 + 1) + 8 * v27) uniqueID];
      uniqueID4 = [v14 uniqueID];
      v30 = [uniqueID3 isEqualToString:uniqueID4];

      if (v30)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [nearbyDevices countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v25)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  v32 = [messageCopy objectForKeyedSubscript:@"GenericIDSMessageType"];

  if (v32)
  {
    [(MapsPushManager *)self _handleGenericIDSMessage:messageCopy];
LABEL_24:
    v33 = v43;
    v34 = v15;
    goto LABEL_32;
  }

  v35 = [messageCopy objectForKeyedSubscript:@"syncedBookmarkData"];

  v34 = v15;
  if (v35)
  {
    v36 = [messageCopy objectForKeyedSubscript:@"syncedBookmarkData"];
    v37 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Passing data to delegate", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pushManager:self gotPushData:v36];

    v33 = v43;
  }

  else
  {
    v39 = GEOFindOrCreateLog();
    v33 = v43;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Unexpected message body. Ignoring.", buf, 2u);
    }

    NSLog(@"Unexpected message body. Ignoring...");
  }

LABEL_32:
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Devices changed", v6, 2u);
  }

  [(MapsPushManager *)self _updateDevices];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Active Accounts changed", v6, 2u);
  }

  [(MapsPushManager *)self _updateDevices];
}

- (void)fetchProblemStatus:(id)status problemReportIDs:(id)ds manifestToken:(id)token
{
  tokenCopy = token;
  dsCopy = ds;
  statusCopy = status;
  v11 = objc_alloc_init(GEORPProblemStatusRequest);
  [v11 setStatusNotificationId:statusCopy];

  v12 = [dsCopy mutableCopy];
  [v11 setProblemIds:v12];

  v13 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v11 setUserCredentials:v13];

  v14 = objc_alloc_init(GEORPClientCapabilities);
  [v11 setClientCapabilities:v14];

  clientCapabilities = [v11 clientCapabilities];
  [clientCapabilities setHasConstrainedProblemStatusSize:0];

  clientCapabilities2 = [v11 clientCapabilities];
  [clientCapabilities2 setHasNoOptInRequest:1];

  v17 = +[GEOPlatform sharedPlatform];
  clientCapabilities3 = [v17 clientCapabilities];
  transitMarketSupport = [clientCapabilities3 transitMarketSupport];
  clientCapabilities4 = [v11 clientCapabilities];
  [clientCapabilities4 setTransitMarketSupport:transitMarketSupport];

  [v11 populateAnalyticsMetadata];
  v21 = +[GEOUtilityService sharedService];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A00A30;
  v24[3] = &unk_101631C90;
  v25 = v11;
  selfCopy = self;
  v27 = tokenCopy;
  v22 = tokenCopy;
  v23 = v11;
  [v21 getCurrentGeoServicesState:&_dispatch_main_q callback:v24];
}

- (void)sendRAPStatusChangeNotification:(id)notification
{
  notificationCopy = notification;
  data = [notificationCopy data];
  [(MapsPushManager *)self propagateIDSMessageOfType:1 message:data];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushManager:self receivedRAPStatusChangeNotification:notificationCopy];
}

- (void)simulateUGCPhotoAttributionClearedNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushManager:self receivedClearedPhotoAttributionNotificationWithTitle:@"Choose a Different Nickname" message:@"The nickname you chose for photo credit isn’t available. Choose a different nickname."];
}

- (void)simulateUGCPhotoSubmissionResolution
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = @"2258143483938644182";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Simulating a successful photo submission resolution for muid: %@", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = [v4 numberFromString:@"2258143483938644182"];
  v6 = +[GEOMapURLBuilder URLForInternalBusiness:id:provider:](GEOMapURLBuilder, "URLForInternalBusiness:id:provider:", 0, [v5 unsignedLongValue], 0);

  v7 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A01010;
  block[3] = &unk_101653D50;
  block[4] = self;
  v10 = @"2258143483938644182";
  v11 = @"Your Photos Are Live";
  v12 = @"The photos you added of Agnes Restaurant & Cheesery are now visible to everyone.";
  v13 = v6;
  v8 = v6;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (void)simulateRAPStatusChange
{
  v10 = objc_alloc_init(GEORPRapNotification);
  v3 = objc_alloc_init(GEOLocalizedString);
  [v3 setStringValue:@"title: Rap status change notification"];
  v4 = objc_alloc_init(GEOLocalizedString);
  [v4 setStringValue:@"text: Rap status change notification"];
  [v10 setTitle:v3];
  [v10 setBody:v4];
  v5 = objc_alloc_init(GEORPRapResponse);
  [v5 setNotification:v10];
  [v5 setResponseId:@"responseId"];
  v6 = objc_alloc_init(GEORPDisplayDetails);
  v7 = objc_alloc_init(GEOLocalizedString);
  [v7 setStringValue:@"Need More Information"];
  v8 = objc_alloc_init(GEOLocalizedString);
  [v8 setStringValue:@"We're stumped! We couldn't find any information about this business. Please send us a picture of the front door and any other details that can help us respond to your report."];
  [v6 setTitle:v7];
  [v6 setBody:v8];
  [v5 setDisplayDetails:v6];
  v9 = objc_alloc_init(GEORPRapInfo);
  [v9 setRapResponse:v5];
  [v9 setRapId:@"b4977ec0-4b44-11ed-a777-b33297611d8b"];
  [v9 setRapDisplayMenu:3];
  [(MapsPushManager *)self sendRAPStatusChangeNotification:v9];
}

- (void)simulateProblemResolution
{
  _simulatedProblemResolutionResponse = [(MapsPushManager *)self _simulatedProblemResolutionResponse];
  if (_simulatedProblemResolutionResponse)
  {
    v4 = dispatch_time(0, 10000000000);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100A012CC;
    v5[3] = &unk_101661A90;
    v5[4] = self;
    v6 = _simulatedProblemResolutionResponse;
    dispatch_after(v4, &_dispatch_main_q, v5);
  }
}

- (id)_simulatedProblemResolutionResponse
{
  v3 = objc_alloc_init(GEORPProblemStatusResponse);
  [v3 setStatusCode:0];
  _simulatedProblemStatus = [(MapsPushManager *)self _simulatedProblemStatus];
  [v3 addProblemStatus:_simulatedProblemStatus];

  return v3;
}

- (id)_simulatedNotification
{
  v2 = objc_alloc_init(GEORPNotification);
  [v2 setLocalizedText:@"The information for the location “P T C R Jewellery Polishing” has been updated."];
  [v2 setLocalizedTitle:@"Problem Fixed"];

  return v2;
}

- (id)_simulatedProblemStatus
{
  v3 = objc_alloc_init(GEORPProblemStatus);
  v4 = [NSString stringWithFormat:@"%d", rand()];
  [v3 setProblemId:v4];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  [v5 timeIntervalSinceReferenceDate];
  [v3 setCreationDate:?];

  [v3 setProblemState:2];
  _simulatedNotification = [(MapsPushManager *)self _simulatedNotification];
  [v3 setNotification:_simulatedNotification];

  _simulatedDetails = [(MapsPushManager *)self _simulatedDetails];
  [v3 setDetails:_simulatedDetails];

  return v3;
}

- (id)_simulatedDetails
{
  v3 = objc_alloc_init(GEORPDetails);
  [v3 setDisplayStyle:2];
  [v3 setLocalizedTitle:@"Location Updated"];
  [v3 setLocalizedDescription:{@"Thank you for the report you submitted on June 10, 2015. The information for the location “P T C R Jewellery Polishing” has been updated."}];
  v4 = objc_alloc_init(GEOMapRegion);
  [v3 setDisplayRegion:v4];

  displayRegion = [v3 displayRegion];
  [displayRegion setEastLng:-0.109615239];

  displayRegion2 = [v3 displayRegion];
  [displayRegion2 setNorthLat:51.5208347];

  displayRegion3 = [v3 displayRegion];
  [displayRegion3 setSouthLat:51.5195643];

  displayRegion4 = [v3 displayRegion];
  [displayRegion4 setWestLng:-0.111656927];

  _simulatedPlace = [(MapsPushManager *)self _simulatedPlace];
  [v3 addPlace:_simulatedPlace];

  return v3;
}

- (id)_simulatedPlace
{
  v2 = objc_alloc_init(GEOPDPlace);
  [v2 setMuid:0x8F98FC444E72B232];
  [v2 setResultProviderId:9902];
  [v2 setStatus:0];

  return v2;
}

- (void)registerForMapsICloudPushTopic
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    apsConnection = [(MapsPushManager *)self apsConnection];

    if (!apsConnection)
    {
      [(MapsPushManager *)self setUpPushConnection];
    }

    v6 = @"com.apple.maps.icloud";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    apsConnection2 = [(MapsPushManager *)self apsConnection];
    [apsConnection2 _setEnabledTopics:v4];
  }
}

- (id)devicePushToken
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100A018EC;
  v19 = sub_100A018FC;
  v20 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100A01904;
  v12 = &unk_10163B7E8;
  v14 = &v15;
  v3 = dispatch_semaphore_create(0);
  v13 = v3;
  [(MapsPushManager *)self setDevicePushTokenCompletion:&v9];
  v4 = [MSPMapsPushDaemonRemoteProxy sharedInstance:v9];
  devicePushTokenCompletion = [(MapsPushManager *)self devicePushTokenCompletion];
  [v4 fetchDevicePushToken:devicePushTokenCompletion];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v3, v6);
  [(MapsPushManager *)self setDevicePushTokenCompletion:0];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (void)setShouldUseDevAPNS:(BOOL)s
{
  [NSNumber numberWithBool:s];
  v5 = +[NSFileManager defaultManager];
  v3 = [v5 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  path = [v3 path];
  _CFPreferencesSetAppValueWithContainer();
}

- (BOOL)shouldUseDevAPNS
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  path = [v3 path];
  v5 = _CFPreferencesGetAppBooleanValueWithContainer() != 0;

  return v5;
}

- (void)setUpPushConnection
{
  shouldUseDevAPNS = [(MapsPushManager *)self shouldUseDevAPNS];
  v4 = &APSEnvironmentDevelopment;
  if (!shouldUseDevAPNS)
  {
    v4 = &APSEnvironmentProduction;
  }

  v5 = *v4;
  v6 = [APSConnection alloc];
  v7 = dispatch_get_global_queue(0, 0);
  v8 = [v6 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.Maps.mapspushd.icloud" queue:v7];

  [v8 setDelegate:self];
  [(MapsPushManager *)self setApsConnection:v8];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  topic = [messageCopy topic];
  v7 = [topic isEqualToString:@"com.apple.maps.icloud"];

  if (v7)
  {
    userInfo = [messageCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"nid"];

    firstObject = [v9 firstObject];
    userInfo2 = [messageCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:@"prid"];

    userInfo3 = [messageCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:@"mftoken"];

    userInfo4 = [messageCopy userInfo];
    v16 = [userInfo4 objectForKey:@"aps"];

    if (v16)
    {
      userInfo5 = [messageCopy userInfo];
      v18 = [userInfo5 objectForKeyedSubscript:@"aps"];
    }

    else
    {
      v18 = 0;
    }

    userInfo6 = [messageCopy userInfo];
    v20 = [userInfo6 objectForKey:@"photoLiveness"];

    if (v20)
    {
      v42 = v14;
      v38 = v12;
      v39 = firstObject;
      v40 = v9;
      userInfo7 = [messageCopy userInfo];
      v22 = [userInfo7 objectForKeyedSubscript:@"photoLiveness"];

      v23 = [v22 objectForKeyedSubscript:@"muid"];
      v24 = objc_alloc_init(NSNumberFormatter);
      v25 = [v24 numberFromString:v23];
      v26 = +[GEOMapURLBuilder URLForInternalBusiness:id:provider:](GEOMapURLBuilder, "URLForInternalBusiness:id:provider:", 0, [v25 unsignedLongValue], 0);

      v41 = v18;
      v27 = [v18 objectForKeyedSubscript:@"alert"];
      v28 = [v27 objectForKeyedSubscript:@"title"];
      v29 = [v27 objectForKeyedSubscript:@"body"];
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v44 = v28;
        v45 = 2112;
        v46 = v29;
        v47 = 2112;
        v48 = v23;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Did receive incoming message for ARP notification with title: %@, body: %@, and muid: %@", buf, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained pushManager:self receivedPhotoLivenessMUID:v23 title:v28 message:v29 actionURL:v26];

      firstObject = v39;
      v9 = v40;
      v12 = v38;
      goto LABEL_9;
    }

    v32 = [v18 objectForKey:@"category"];

    if (v32)
    {
      v33 = [v18 objectForKeyedSubscript:@"category"];
      if ([v33 isEqualToString:@"ATTRIBUTION_NAME_CLEARED"])
      {
        v41 = v18;
        v42 = v14;
        v34 = [v18 objectForKeyedSubscript:@"alert"];
        v35 = [v34 objectForKeyedSubscript:@"title"];
        v36 = [v34 objectForKeyedSubscript:@"body"];
        v37 = objc_loadWeakRetained(&self->_delegate);
        [v37 pushManager:self receivedClearedPhotoAttributionNotificationWithTitle:v35 message:v36];

LABEL_9:
LABEL_15:

        goto LABEL_16;
      }
    }

    [(MapsPushManager *)self fetchProblemStatus:firstObject problemReportIDs:v12 manifestToken:v14];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  devicePushTokenCompletion = [(MapsPushManager *)self devicePushTokenCompletion];

  if (devicePushTokenCompletion)
  {
    devicePushTokenCompletion2 = [(MapsPushManager *)self devicePushTokenCompletion];
    (devicePushTokenCompletion2)[2](devicePushTokenCompletion2, tokenCopy);
  }

  [(MapsPushManager *)self setDevicePushTokenCompletion:0];
}

- (int64_t)_priorityForMessageOfType:(int64_t)type
{
  if ((type - 1) >= 2)
  {
    return 200;
  }

  else
  {
    return 300;
  }
}

- (void)_handleGenericIDSMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"GenericIDSMessageType"];
  integerValue = [v5 integerValue];

  if (integerValue == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clearRAPStatusChangeNotificationWithManager:self];
    goto LABEL_9;
  }

  if (integerValue == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [GEORPRapInfo alloc];
    v10 = [messageCopy objectForKeyedSubscript:@"GenericIDSMessageData"];
    v11 = [v9 initWithData:v10];
    [WeakRetained pushManager:self receivedRAPStatusChangeNotification:v11];

LABEL_9:
    goto LABEL_10;
  }

  if (!integerValue)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = messageCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received unknown generic message: %@", &v12, 0xCu);
    }
  }

LABEL_10:
}

- (void)propagateIDSMessageOfType:(int64_t)type message:(id)message
{
  messageCopy = message;
  v7 = messageCopy;
  if (messageCopy)
  {
    v20 = messageCopy;
    v37[0] = @"GenericIDSMessageData";
    v37[1] = @"GenericIDSMessageType";
    v38[0] = messageCopy;
    v8 = [NSNumber numberWithInteger:type];
    v38[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(IDSService *)self->_service devices];
    v24 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v24)
    {
      v23 = *v27;
      v22 = IDSSendMessageOptionEncryptPayloadKey;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = IDSCopyForDevice();
          v12 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v33 = v9;
            v34 = 2112;
            v35 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Sending message: %@ to destination: %@", buf, 0x16u);
          }

          service = self->_service;
          v14 = [NSSet setWithObject:v11];
          typeCopy = type;
          v16 = [(MapsPushManager *)self _priorityForMessageOfType:type];
          v30 = v22;
          v31 = &__kCFBooleanTrue;
          v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v25 = 0;
          LOBYTE(service) = [(IDSService *)service sendMessage:v9 toDestinations:v14 priority:v16 options:v17 identifier:0 error:&v25];
          v18 = v25;

          if ((service & 1) == 0)
          {
            v19 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error sending message: %@", buf, 0xCu);
            }
          }

          type = typeCopy;
        }

        v24 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v24);
    }

    v7 = v20;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't send nil message", buf, 2u);
    }
  }
}

- (void)pushItem:(id)item toDevice:(id)device
{
  itemCopy = item;
  deviceCopy = device;
  v8 = deviceCopy;
  if (!deviceCopy || ([deviceCopy isFake] & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      device = [v8 device];
      *buf = 138412546;
      v32 = itemCopy;
      v33 = 2112;
      v34 = device;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Pushing item: %@ to device %@", buf, 0x16u);
    }

    accounts = [(IDSService *)self->_service accounts];
    anyObject = [accounts anyObject];

    if (anyObject)
    {
      pushSubmissionData = [itemCopy pushSubmissionData];
      v14 = pushSubmissionData;
      if (pushSubmissionData)
      {
        v29 = @"syncedBookmarkData";
        v30 = pushSubmissionData;
        v15 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        if (v8)
        {
          device2 = [v8 device];
          v17 = IDSCopyForDevice();
        }

        else
        {
          v17 = IDSCopyIDForAccount();
        }

        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v32 = v15;
          v33 = 2112;
          v34 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Sending message: %@ to destination: %@", buf, 0x16u);
        }

        service = self->_service;
        v22 = [NSSet setWithObject:v17];
        v27 = IDSSendMessageOptionEncryptPayloadKey;
        v28 = &__kCFBooleanTrue;
        v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v26 = 0;
        v24 = [(IDSService *)service sendMessage:v15 toDestinations:v22 priority:300 options:v23 identifier:0 error:&v26];
        v25 = v26;

        if ((v24 & 1) == 0)
        {
          NSLog(@"Error sending message: %@", v25);
        }
      }

      else
      {
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = itemCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "No sync data for item: %@", buf, 0xCu);
        }

        NSLog(@"ERROR: No sync data...");
      }
    }

    else
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "No valid account found", buf, 2u);
      }

      NSLog(@"No valid account found...");
    }
  }
}

- (void)_updateDevices
{
  v22 = +[NSMutableArray array];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    devices = [(IDSService *)self->_service devices];
    *buf = 138412290;
    v35 = devices;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Updating devices from full list: %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  obj = [(IDSService *)self->_service devices];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        modelIdentifier = [v8 modelIdentifier];
        v10 = [modelIdentifier length];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [&off_1016ED2E0 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
LABEL_10:
          v14 = 0;
          while (1)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(&off_1016ED2E0);
            }

            v15 = *(*(&v24 + 1) + 8 * v14);
            modelIdentifier2 = [v8 modelIdentifier];
            LOBYTE(v15) = [modelIdentifier2 hasPrefix:v15];

            if (v15)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [&off_1016ED2E0 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          if (v10)
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v35 = v8;
              _os_log_impl(&_mh_execute_header, &v17->super, OS_LOG_TYPE_DEBUG, "Skipping device without proper modelIdentifier prefix: %@", buf, 0xCu);
            }

            goto LABEL_22;
          }
        }

        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v8;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Adding device to list: %@", buf, 0xCu);
        }

        v17 = [[MapsPushDevice alloc] initWithIDSDevice:v8];
        [(NSArray *)v22 addObject:v17];
LABEL_22:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  devices = selfCopy->_devices;
  selfCopy->_devices = v22;
}

- (void)dealloc
{
  v3 = +[MSPMapsInstallState sharedState];
  [v3 unregisterMapsInstallStateObserver:self];

  v4.receiver = self;
  v4.super_class = MapsPushManager;
  [(MapsPushManager *)&v4 dealloc];
}

- (MapsPushManager)init
{
  v8.receiver = self;
  v8.super_class = MapsPushManager;
  v2 = [(MapsPushManager *)&v8 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.maps"];
    service = v2->_service;
    v2->_service = v3;

    [(IDSService *)v2->_service addDelegate:v2 queue:&_dispatch_main_q];
    [(MapsPushManager *)v2 _updateDevices];
    v5 = +[MSPMapsInstallState sharedState];
    [v5 registerMapsInstallStateObserver:v2];

    v6 = v2;
  }

  return v2;
}

+ (id)fakeDevicesFromNames:(id)names
{
  namesCopy = names;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [namesCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = namesCopy;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        lowercaseString = [v9 lowercaseString];
        v11 = [lowercaseString hasSuffix:@"ipad"];

        if (v11)
        {
          v12 = @"iPad4,1";
        }

        else
        {
          v12 = @"iPhone5,3";
        }

        v13 = [[FakeMapsPushDevice alloc] initWithName:v9 model:v12];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A03014;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195E120 != -1)
  {
    dispatch_once(&qword_10195E120, block);
  }

  v2 = qword_10195E118;

  return v2;
}

@end
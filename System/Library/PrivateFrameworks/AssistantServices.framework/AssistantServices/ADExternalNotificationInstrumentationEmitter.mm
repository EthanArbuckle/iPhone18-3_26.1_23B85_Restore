@interface ADExternalNotificationInstrumentationEmitter
+ (id)_createEmptyANCClientEventWithMetadataForRequest:(id)request;
+ (id)_createRequestLinkInfoFromUUID:(id)d component:(int)component;
+ (id)_getAnnounceReceivedEventFromAnnouncementRequest:(id)request nowPlayingMediaType:(id)type shouldLog:(BOOL)log;
+ (id)_getAnnounceReceivedTier1EventFromAnnouncementRequest:(id)request;
+ (id)_getCurrentlyConnectedHeadphonesANCAudioDevice;
+ (id)_randomlySampleWithoutReplacementNumSamples:(unint64_t)samples fromArray:(id)array;
+ (void)_emitAnnounceEnablementEventFromSectionInfo:(id)info siriLocale:(id)locale;
+ (void)emitAnnouncementReceivedForAnnouncementRequest:(id)request nowPlayingMediaType:(id)type;
+ (void)emitCoreAnalyticsAnnounceNotificationApplicationEnablementEvents;
+ (void)emitCoreAnalyticsEventForAnnouncementRequest:(id)request completionReason:(int64_t)reason;
+ (void)emitRequestLinkForAnnouncementRequest:(id)request;
+ (void)emitUserResponseSilenceForAnnouncementRequest:(id)request;
@end

@implementation ADExternalNotificationInstrumentationEmitter

+ (void)emitCoreAnalyticsAnnounceNotificationApplicationEnablementEvents
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.siri.ADExternalNotificationInstrumentationEmitter", v3);

  v5 = [objc_alloc(off_10058CB20()) initWithQueue:v4];
  v6 = v5;
  if (v5)
  {
    effectiveGlobalAnnounceSetting = [v5 effectiveGlobalAnnounceSetting];
    effectiveGlobalAnnounceHeadphonesSetting = [v6 effectiveGlobalAnnounceHeadphonesSetting];
    if (effectiveGlobalAnnounceSetting == 2 && effectiveGlobalAnnounceHeadphonesSetting == 2)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100212638;
      v10[3] = &unk_100516B70;
      v10[4] = self;
      [v6 getSectionInfoForActiveSectionsWithCompletion:v10];
    }
  }
}

+ (id)_randomlySampleWithoutReplacementNumSamples:(unint64_t)samples fromArray:(id)array
{
  arrayCopy = array;
  v6 = [arrayCopy count];
  if (v6 <= samples)
  {
    v8 = [[NSSet alloc] initWithArray:arrayCopy];
  }

  else
  {
    v7 = v6;
    v8 = objc_alloc_init(NSMutableSet);
    while (samples)
    {
      v9 = [arrayCopy objectAtIndex:arc4random_uniform(v7)];
      if (([v8 containsObject:v9] & 1) == 0)
      {
        [v8 addObject:v9];
        --samples;
      }
    }
  }

  return v8;
}

+ (void)_emitAnnounceEnablementEventFromSectionInfo:(id)info siriLocale:(id)locale
{
  v10[0] = @"announce_notifications_enabled";
  localeCopy = locale;
  infoCopy = info;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy announceSetting]);
  v11[0] = v7;
  v10[1] = @"app_bundle_id";
  sectionID = [infoCopy sectionID];

  v10[2] = @"device_locale";
  v11[1] = sectionID;
  v11[2] = localeCopy;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  AnalyticsSendEvent();
}

+ (void)emitCoreAnalyticsEventForAnnouncementRequest:(id)request completionReason:(int64_t)reason
{
  requestCopy = request;
  if ([requestCopy platform] == 2)
  {
    goto LABEL_24;
  }

  v7 = [self _getAnnounceReceivedEventFromAnnouncementRequest:requestCopy nowPlayingMediaType:0 shouldLog:0];
  connectedAudioDevice = [v7 connectedAudioDevice];
  productIdentifier = [connectedAudioDevice productIdentifier];
  v9 = productIdentifier;
  if (productIdentifier)
  {
    v10 = productIdentifier;
  }

  else
  {
    v10 = &stru_10051F508;
  }

  v31 = v10;

  announcementCategory = [v7 announcementCategory];
  if ([requestCopy requestType] == 1)
  {
    appID = [requestCopy appID];
    call = appID;
    if (appID)
    {
      v14 = appID;
    }

    else
    {
      v14 = &stru_10051F508;
    }

    v15 = v14;
LABEL_16:

    goto LABEL_17;
  }

  if ([requestCopy requestType] == 2)
  {
    call = [requestCopy call];
    callProviderBundleID = [call callProviderBundleID];
    v17 = callProviderBundleID;
    if (callProviderBundleID)
    {
      callProviderIdentifier = callProviderBundleID;
    }

    else
    {
      callProviderIdentifier = [call callProviderIdentifier];
    }

    v15 = callProviderIdentifier;

    goto LABEL_16;
  }

  v15 = &stru_10051F508;
LABEL_17:
  isTimeSensitiveAnnouncement = [v7 isTimeSensitiveAnnouncement];
  v20 = +[ADPreferences sharedPreferences];
  languageCode = [v20 languageCode];
  v22 = languageCode;
  if (languageCode)
  {
    v23 = languageCode;
  }

  else
  {
    v23 = &stru_10051F508;
  }

  v24 = v23;

  v34[0] = v31;
  v33[0] = @"airpodsModel";
  v33[1] = @"announceCategory";
  v25 = [NSNumber numberWithInt:announcementCategory];
  v34[1] = v25;
  v33[2] = @"announceStatus";
  v26 = [NSNumber numberWithInteger:reason];
  v27 = v26;
  if (v15)
  {
    v28 = v15;
  }

  else
  {
    v28 = &stru_10051F508;
  }

  v34[2] = v26;
  v34[3] = v28;
  v33[3] = @"appBundleId";
  v33[4] = @"isTimeSensitiveAnnouncement";
  v29 = [NSNumber numberWithBool:isTimeSensitiveAnnouncement];
  v33[5] = @"locale";
  v34[4] = v29;
  v34[5] = v24;
  v30 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:6];

  AnalyticsSendEvent();
LABEL_24:
}

+ (void)emitUserResponseSilenceForAnnouncementRequest:(id)request
{
  v5 = [self _createEmptyANCClientEventWithMetadataForRequest:request];
  v3 = objc_alloc_init(ANCSchemaANCUserResponseEvaluated);
  [v3 setUserResponseCategory:3];
  [v5 setUserResponseEvaluated:v3];
  v4 = +[AssistantSiriAnalytics sharedStream];
  [v4 emitMessage:v5];
}

+ (void)emitAnnouncementReceivedForAnnouncementRequest:(id)request nowPlayingMediaType:(id)type
{
  typeCopy = type;
  requestCopy = request;
  v8 = [SISchemaUUID alloc];
  v9 = objc_opt_new();
  v16 = [v8 initWithNSUUID:v9];

  v10 = [self _createEmptyANCClientEventWithMetadataForRequest:requestCopy];
  v11 = [self _getAnnounceReceivedEventFromAnnouncementRequest:requestCopy nowPlayingMediaType:typeCopy shouldLog:1];

  [v11 setLinkId:v16];
  [v10 setNotificationReceived:v11];
  v12 = +[AssistantSiriAnalytics sharedStream];
  [v12 emitMessage:v10];

  v13 = [self _createEmptyANCClientEventWithMetadataForRequest:requestCopy];
  v14 = [self _getAnnounceReceivedTier1EventFromAnnouncementRequest:requestCopy];

  [v14 setLinkId:v16];
  [v13 setNotificationReceivedTier1:v14];
  v15 = +[AssistantSiriAnalytics sharedStream];
  [v15 emitMessage:v13];
}

+ (id)_createEmptyANCClientEventWithMetadataForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(ANCSchemaANCClientEvent);
  v5 = objc_alloc_init(ANCSchemaANCClientEventMetadata);
  v6 = [SISchemaUUID alloc];
  announcementIdentifier = [requestCopy announcementIdentifier];

  v8 = [v6 initWithNSUUID:announcementIdentifier];
  [v5 setAncId:v8];
  [v4 setEventMetadata:v5];

  return v4;
}

+ (id)_getAnnounceReceivedTier1EventFromAnnouncementRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(ANCSchemaANCNotificationReceivedTier1);
  if ([requestCopy requestType] == 1)
  {
    v5 = requestCopy;
    appID = [v5 appID];
    if ([v5 platform] == 2)
    {
      if (sub_100216330())
      {
        [v4 setAppBundleId:appID];
      }

      else
      {
        [v4 setIsRedactedDueToOptOut:1];
      }
    }
  }

  return v4;
}

+ (id)_getAnnounceReceivedEventFromAnnouncementRequest:(id)request nowPlayingMediaType:(id)type shouldLog:(BOOL)log
{
  logCopy = log;
  requestCopy = request;
  typeCopy = type;
  v9 = objc_alloc_init(ANCSchemaANCNotificationReceived);
  v10 = objc_alloc_init(ANCSchemaANCBackgroundContent);
  v11 = objc_alloc_init(ANCSchemaANCAppNotificationMetadata);
  if ([requestCopy requestType] == 1)
  {
    v47 = v10;
    v49 = v11;
    v45 = typeCopy;
    v12 = requestCopy;
    notification = [v12 notification];
    request = [notification request];
    content = [request content];
    v16 = [content interruptionLevel] == 2;

    appID = [v12 appID];
    if ([self isFirstPartyApplicationWithBundleId:appID])
    {
      v46 = [v12 announcementType] == 1;
      v18 = 1;
    }

    else
    {
      v18 = sub_100216380(appID);
      v23 = +[AFSiriAnnouncementRequestCapabilityManager supportedAnnouncementTypesForBundleId:onPlatform:](AFSiriAnnouncementRequestCapabilityManager, "supportedAnnouncementTypesForBundleId:onPlatform:", appID, [v12 platform]);
      v24 = v23;
      if (v23)
      {
        v46 = [v23 containsObject:&off_100533BD8];
      }

      else
      {
        v46 = 0;
      }
    }

    notification2 = [v12 notification];
    request2 = [notification2 request];
    content2 = [request2 content];
    contentType = [content2 contentType];

    if ([contentType isEqualToString:_UNNotificationContentTypeMessagingDirect])
    {
      v30 = 2;
    }

    else if ([contentType isEqualToString:_UNNotificationContentTypeMessagingGroup])
    {
      v30 = 3;
    }

    else
    {
      v30 = 1;
    }

    [v49 setIsAskWithSiriEnabled:v18];
    [v49 setIsSmsEligible:v46];
    [v49 setCommsNotificationType:v30];
    if (logCopy)
    {
      v31 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v52 = "+[ADExternalNotificationInstrumentationEmitter _getAnnounceReceivedEventFromAnnouncementRequest:nowPlayingMediaType:shouldLog:]";
        v53 = 1024;
        *v54 = v18;
        *&v54[4] = 1024;
        *&v54[6] = v46;
        LOWORD(v55[0]) = 1024;
        *(v55 + 2) = v30;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s isAskWithSiriEnabled %d, isSMSEligible: %d, commsNotificationType: %d", buf, 0x1Eu);
      }
    }

    announcementType = [v12 announcementType];
    if ((announcementType - 1) > 8)
    {
      v25 = 0;
    }

    else
    {
      v25 = dword_1003F0488[(announcementType - 1)];
    }

    v10 = v47;
    v11 = v49;

    self = v44;
    typeCopy = v45;
  }

  else if ([requestCopy requestType] == 2)
  {
    call = [requestCopy call];
    callProviderBundleID = [call callProviderBundleID];
    v21 = callProviderBundleID;
    if (callProviderBundleID)
    {
      callProviderIdentifier = callProviderBundleID;
    }

    else
    {
      callProviderIdentifier = [call callProviderIdentifier];
    }

    appID = callProviderIdentifier;

    v16 = 0;
    v25 = 3;
  }

  else
  {
    appID = 0;
    v16 = 0;
    v25 = 0;
  }

  [v9 setAnnouncementCategory:v25];
  [v9 setIsTimeSensitiveAnnouncement:v16];
  if (appID)
  {
    if ([self isFirstPartyApplicationWithBundleId:appID])
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }
  }

  else
  {
    v33 = 0;
  }

  [v9 setAppCategory:v33];
  platform = [requestCopy platform];
  if (platform > 2)
  {
    if (platform == 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    if (platform == 3)
    {
      v35 = 3;
    }

    else
    {
      v35 = v37;
    }

    _getCurrentlyConnectedHeadphonesANCAudioDevice = 0;
  }

  else if (platform == 1)
  {
    _getCurrentlyConnectedHeadphonesANCAudioDevice = [objc_opt_class() _getCurrentlyConnectedHeadphonesANCAudioDevice];
    v35 = 1;
  }

  else
  {
    if (platform == 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = 0;
    }

    _getCurrentlyConnectedHeadphonesANCAudioDevice = 0;
  }

  if ([typeCopy isEqualToString:kMRMediaRemoteMediaTypeMusic])
  {
    v38 = 2;
  }

  else if ([typeCopy isEqualToString:kMRMediaRemoteMediaTypePodcast])
  {
    v38 = 3;
  }

  else if ([typeCopy isEqualToString:kMRMediaRemoteMediaTypeAudioBook])
  {
    v38 = 4;
  }

  else
  {
    v38 = 6;
    if (([typeCopy isEqualToString:kMRMediaRemoteMediaTypeITunesU] & 1) == 0)
    {
      if ([typeCopy isEqualToString:&stru_10051F508])
      {
        v38 = 6;
      }

      else
      {
        v38 = 0;
      }
    }
  }

  [v10 setMediaType:v38];
  if (logCopy)
  {
    v39 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v42 = v39;
      [requestCopy platform];
      AFSiriAnnouncementPlatformGetName();
      v43 = v48 = v10;
      *buf = 136315650;
      v52 = "+[ADExternalNotificationInstrumentationEmitter _getAnnounceReceivedEventFromAnnouncementRequest:nowPlayingMediaType:shouldLog:]";
      v53 = 2112;
      *v54 = v43;
      *&v54[8] = 1024;
      v55[0] = v38;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s Announce Platform: %@, Currently Playing Media Type: %d", buf, 0x1Cu);

      v10 = v48;
    }
  }

  [v9 setTargetPlatform:v35];
  [v9 setConnectedAudioDevice:_getCurrentlyConnectedHeadphonesANCAudioDevice];
  [v9 setBackgroundContent:v10];
  [v9 setNotificationMetadata:v11];
  v40 = [ADRequestDispatcherServiceHelper headGestureConfiguration]_0();
  [v9 setBobbleSupported:{objc_msgSend(v40, "isSupported")}];
  [v9 setBobbleEnabled:{objc_msgSend(v40, "isEnabled")}];

  return v9;
}

+ (id)_getCurrentlyConnectedHeadphonesANCAudioDevice
{
  v2 = +[(AFHeadphonesAnnouncementRequestCapabilityProvider *)ADHeadphonesAnnouncementRequestCapabilityProvider];
  currentlyRoutedHeadphonesProductID = [v2 currentlyRoutedHeadphonesProductID];
  v4 = objc_alloc_init(ANCSchemaANCAudioDevice);
  if ([currentlyRoutedHeadphonesProductID length])
  {
    v5 = [currentlyRoutedHeadphonesProductID componentsSeparatedByString:{@", "}];
    if ([v5 count] == 2)
    {
      v6 = [v5 objectAtIndex:0];
      [v4 setVendorIdentifier:v6];

      v7 = [v5 objectAtIndex:1];
      [v4 setProductIdentifier:v7];

      v8 = v4;
      goto LABEL_8;
    }

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[ADExternalNotificationInstrumentationEmitter _getCurrentlyConnectedHeadphonesANCAudioDevice]";
      v13 = 2112;
      v14 = currentlyRoutedHeadphonesProductID;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Invalid bt product code for headphones: %@", &v11, 0x16u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (void)emitRequestLinkForAnnouncementRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  announcementIdentifier = [requestCopy announcementIdentifier];
  v13 = [v4 _createRequestLinkInfoFromUUID:announcementIdentifier component:12];

  requestInfo = [requestCopy requestInfo];

  startLocalRequest = [requestInfo startLocalRequest];
  aceId = [startLocalRequest aceId];

  v9 = [[NSUUID alloc] initWithUUIDString:aceId];
  v10 = [objc_opt_class() _createRequestLinkInfoFromUUID:v9 component:1];
  v11 = objc_alloc_init(SISchemaRequestLink);
  [v11 setSource:v13];
  [v11 setTarget:v10];
  v12 = +[AssistantSiriAnalytics sharedStream];
  [v12 emitMessage:v11];
}

+ (id)_createRequestLinkInfoFromUUID:(id)d component:(int)component
{
  v4 = *&component;
  dCopy = d;
  v6 = [[SISchemaUUID alloc] initWithNSUUID:dCopy];

  v7 = objc_alloc_init(SISchemaRequestLinkInfo);
  [v7 setUuid:v6];
  [v7 setComponent:v4];

  return v7;
}

@end
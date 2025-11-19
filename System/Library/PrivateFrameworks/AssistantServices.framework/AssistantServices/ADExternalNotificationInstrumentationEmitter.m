@interface ADExternalNotificationInstrumentationEmitter
+ (id)_createEmptyANCClientEventWithMetadataForRequest:(id)a3;
+ (id)_createRequestLinkInfoFromUUID:(id)a3 component:(int)a4;
+ (id)_getAnnounceReceivedEventFromAnnouncementRequest:(id)a3 nowPlayingMediaType:(id)a4 shouldLog:(BOOL)a5;
+ (id)_getAnnounceReceivedTier1EventFromAnnouncementRequest:(id)a3;
+ (id)_getCurrentlyConnectedHeadphonesANCAudioDevice;
+ (id)_randomlySampleWithoutReplacementNumSamples:(unint64_t)a3 fromArray:(id)a4;
+ (void)_emitAnnounceEnablementEventFromSectionInfo:(id)a3 siriLocale:(id)a4;
+ (void)emitAnnouncementReceivedForAnnouncementRequest:(id)a3 nowPlayingMediaType:(id)a4;
+ (void)emitCoreAnalyticsAnnounceNotificationApplicationEnablementEvents;
+ (void)emitCoreAnalyticsEventForAnnouncementRequest:(id)a3 completionReason:(int64_t)a4;
+ (void)emitRequestLinkForAnnouncementRequest:(id)a3;
+ (void)emitUserResponseSilenceForAnnouncementRequest:(id)a3;
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
    v7 = [v5 effectiveGlobalAnnounceSetting];
    v8 = [v6 effectiveGlobalAnnounceHeadphonesSetting];
    if (v7 == 2 && v8 == 2)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100212638;
      v10[3] = &unk_100516B70;
      v10[4] = a1;
      [v6 getSectionInfoForActiveSectionsWithCompletion:v10];
    }
  }
}

+ (id)_randomlySampleWithoutReplacementNumSamples:(unint64_t)a3 fromArray:(id)a4
{
  v5 = a4;
  v6 = [v5 count];
  if (v6 <= a3)
  {
    v8 = [[NSSet alloc] initWithArray:v5];
  }

  else
  {
    v7 = v6;
    v8 = objc_alloc_init(NSMutableSet);
    while (a3)
    {
      v9 = [v5 objectAtIndex:arc4random_uniform(v7)];
      if (([v8 containsObject:v9] & 1) == 0)
      {
        [v8 addObject:v9];
        --a3;
      }
    }
  }

  return v8;
}

+ (void)_emitAnnounceEnablementEventFromSectionInfo:(id)a3 siriLocale:(id)a4
{
  v10[0] = @"announce_notifications_enabled";
  v5 = a4;
  v6 = a3;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 announceSetting]);
  v11[0] = v7;
  v10[1] = @"app_bundle_id";
  v8 = [v6 sectionID];

  v10[2] = @"device_locale";
  v11[1] = v8;
  v11[2] = v5;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  AnalyticsSendEvent();
}

+ (void)emitCoreAnalyticsEventForAnnouncementRequest:(id)a3 completionReason:(int64_t)a4
{
  v6 = a3;
  if ([v6 platform] == 2)
  {
    goto LABEL_24;
  }

  v7 = [a1 _getAnnounceReceivedEventFromAnnouncementRequest:v6 nowPlayingMediaType:0 shouldLog:0];
  v32 = [v7 connectedAudioDevice];
  v8 = [v32 productIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10051F508;
  }

  v31 = v10;

  v11 = [v7 announcementCategory];
  if ([v6 requestType] == 1)
  {
    v12 = [v6 appID];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_10051F508;
    }

    v15 = v14;
LABEL_16:

    goto LABEL_17;
  }

  if ([v6 requestType] == 2)
  {
    v13 = [v6 call];
    v16 = [v13 callProviderBundleID];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v13 callProviderIdentifier];
    }

    v15 = v18;

    goto LABEL_16;
  }

  v15 = &stru_10051F508;
LABEL_17:
  v19 = [v7 isTimeSensitiveAnnouncement];
  v20 = +[ADPreferences sharedPreferences];
  v21 = [v20 languageCode];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_10051F508;
  }

  v24 = v23;

  v34[0] = v31;
  v33[0] = @"airpodsModel";
  v33[1] = @"announceCategory";
  v25 = [NSNumber numberWithInt:v11];
  v34[1] = v25;
  v33[2] = @"announceStatus";
  v26 = [NSNumber numberWithInteger:a4];
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
  v29 = [NSNumber numberWithBool:v19];
  v33[5] = @"locale";
  v34[4] = v29;
  v34[5] = v24;
  v30 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:6];

  AnalyticsSendEvent();
LABEL_24:
}

+ (void)emitUserResponseSilenceForAnnouncementRequest:(id)a3
{
  v5 = [a1 _createEmptyANCClientEventWithMetadataForRequest:a3];
  v3 = objc_alloc_init(ANCSchemaANCUserResponseEvaluated);
  [v3 setUserResponseCategory:3];
  [v5 setUserResponseEvaluated:v3];
  v4 = +[AssistantSiriAnalytics sharedStream];
  [v4 emitMessage:v5];
}

+ (void)emitAnnouncementReceivedForAnnouncementRequest:(id)a3 nowPlayingMediaType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SISchemaUUID alloc];
  v9 = objc_opt_new();
  v16 = [v8 initWithNSUUID:v9];

  v10 = [a1 _createEmptyANCClientEventWithMetadataForRequest:v7];
  v11 = [a1 _getAnnounceReceivedEventFromAnnouncementRequest:v7 nowPlayingMediaType:v6 shouldLog:1];

  [v11 setLinkId:v16];
  [v10 setNotificationReceived:v11];
  v12 = +[AssistantSiriAnalytics sharedStream];
  [v12 emitMessage:v10];

  v13 = [a1 _createEmptyANCClientEventWithMetadataForRequest:v7];
  v14 = [a1 _getAnnounceReceivedTier1EventFromAnnouncementRequest:v7];

  [v14 setLinkId:v16];
  [v13 setNotificationReceivedTier1:v14];
  v15 = +[AssistantSiriAnalytics sharedStream];
  [v15 emitMessage:v13];
}

+ (id)_createEmptyANCClientEventWithMetadataForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ANCSchemaANCClientEvent);
  v5 = objc_alloc_init(ANCSchemaANCClientEventMetadata);
  v6 = [SISchemaUUID alloc];
  v7 = [v3 announcementIdentifier];

  v8 = [v6 initWithNSUUID:v7];
  [v5 setAncId:v8];
  [v4 setEventMetadata:v5];

  return v4;
}

+ (id)_getAnnounceReceivedTier1EventFromAnnouncementRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ANCSchemaANCNotificationReceivedTier1);
  if ([v3 requestType] == 1)
  {
    v5 = v3;
    v6 = [v5 appID];
    if ([v5 platform] == 2)
    {
      if (sub_100216330())
      {
        [v4 setAppBundleId:v6];
      }

      else
      {
        [v4 setIsRedactedDueToOptOut:1];
      }
    }
  }

  return v4;
}

+ (id)_getAnnounceReceivedEventFromAnnouncementRequest:(id)a3 nowPlayingMediaType:(id)a4 shouldLog:(BOOL)a5
{
  v50 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(ANCSchemaANCNotificationReceived);
  v10 = objc_alloc_init(ANCSchemaANCBackgroundContent);
  v11 = objc_alloc_init(ANCSchemaANCAppNotificationMetadata);
  if ([v7 requestType] == 1)
  {
    v47 = v10;
    v49 = v11;
    v45 = v8;
    v12 = v7;
    v13 = [v12 notification];
    v14 = [v13 request];
    v15 = [v14 content];
    v16 = [v15 interruptionLevel] == 2;

    v17 = [v12 appID];
    if ([a1 isFirstPartyApplicationWithBundleId:v17])
    {
      v46 = [v12 announcementType] == 1;
      v18 = 1;
    }

    else
    {
      v18 = sub_100216380(v17);
      v23 = +[AFSiriAnnouncementRequestCapabilityManager supportedAnnouncementTypesForBundleId:onPlatform:](AFSiriAnnouncementRequestCapabilityManager, "supportedAnnouncementTypesForBundleId:onPlatform:", v17, [v12 platform]);
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

    v26 = [v12 notification];
    v27 = [v26 request];
    v28 = [v27 content];
    v29 = [v28 contentType];

    if ([v29 isEqualToString:_UNNotificationContentTypeMessagingDirect])
    {
      v30 = 2;
    }

    else if ([v29 isEqualToString:_UNNotificationContentTypeMessagingGroup])
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
    if (v50)
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

    v32 = [v12 announcementType];
    if ((v32 - 1) > 8)
    {
      v25 = 0;
    }

    else
    {
      v25 = dword_1003F0488[(v32 - 1)];
    }

    v10 = v47;
    v11 = v49;

    a1 = v44;
    v8 = v45;
  }

  else if ([v7 requestType] == 2)
  {
    v19 = [v7 call];
    v20 = [v19 callProviderBundleID];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v19 callProviderIdentifier];
    }

    v17 = v22;

    v16 = 0;
    v25 = 3;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v25 = 0;
  }

  [v9 setAnnouncementCategory:v25];
  [v9 setIsTimeSensitiveAnnouncement:v16];
  if (v17)
  {
    if ([a1 isFirstPartyApplicationWithBundleId:v17])
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
  v34 = [v7 platform];
  if (v34 > 2)
  {
    if (v34 == 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    if (v34 == 3)
    {
      v35 = 3;
    }

    else
    {
      v35 = v37;
    }

    v36 = 0;
  }

  else if (v34 == 1)
  {
    v36 = [objc_opt_class() _getCurrentlyConnectedHeadphonesANCAudioDevice];
    v35 = 1;
  }

  else
  {
    if (v34 == 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = 0;
    }

    v36 = 0;
  }

  if ([v8 isEqualToString:kMRMediaRemoteMediaTypeMusic])
  {
    v38 = 2;
  }

  else if ([v8 isEqualToString:kMRMediaRemoteMediaTypePodcast])
  {
    v38 = 3;
  }

  else if ([v8 isEqualToString:kMRMediaRemoteMediaTypeAudioBook])
  {
    v38 = 4;
  }

  else
  {
    v38 = 6;
    if (([v8 isEqualToString:kMRMediaRemoteMediaTypeITunesU] & 1) == 0)
    {
      if ([v8 isEqualToString:&stru_10051F508])
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
  if (v50)
  {
    v39 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v42 = v39;
      [v7 platform];
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
  [v9 setConnectedAudioDevice:v36];
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
  v3 = [v2 currentlyRoutedHeadphonesProductID];
  v4 = objc_alloc_init(ANCSchemaANCAudioDevice);
  if ([v3 length])
  {
    v5 = [v3 componentsSeparatedByString:{@", "}];
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
      v14 = v3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Invalid bt product code for headphones: %@", &v11, 0x16u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (void)emitRequestLinkForAnnouncementRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 announcementIdentifier];
  v13 = [v4 _createRequestLinkInfoFromUUID:v5 component:12];

  v6 = [v3 requestInfo];

  v7 = [v6 startLocalRequest];
  v8 = [v7 aceId];

  v9 = [[NSUUID alloc] initWithUUIDString:v8];
  v10 = [objc_opt_class() _createRequestLinkInfoFromUUID:v9 component:1];
  v11 = objc_alloc_init(SISchemaRequestLink);
  [v11 setSource:v13];
  [v11 setTarget:v10];
  v12 = +[AssistantSiriAnalytics sharedStream];
  [v12 emitMessage:v11];
}

+ (id)_createRequestLinkInfoFromUUID:(id)a3 component:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [[SISchemaUUID alloc] initWithNSUUID:v5];

  v7 = objc_alloc_init(SISchemaRequestLinkInfo);
  [v7 setUuid:v6];
  [v7 setComponent:v4];

  return v7;
}

@end
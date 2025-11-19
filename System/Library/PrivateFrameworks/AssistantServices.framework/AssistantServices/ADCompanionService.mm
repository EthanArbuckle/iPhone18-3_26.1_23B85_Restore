@interface ADCompanionService
+ (ADCompanionService)sharedInstance;
- (ADCompanionService)init;
- (BOOL)_cancelTimerForMessage:(id)a3;
- (BOOL)_isDevicePartOfCurrentMediaSystem:(id)a3;
- (BOOL)_shouldLogDiscoveryContextForRequestId:(id)a3;
- (BOOL)_startTimerForMessage:(id)a3 targetDevice:(id)a4 timeout:(double)a5 heartbeat:(BOOL)a6 completion:(id)a7;
- (BOOL)_updateSharedData:(id)a3 forDevice:(id)a4;
- (BOOL)_updateSharedDataFromIDSWithIdentifier:(id)a3;
- (BOOL)_validateIncomingRequest:(id)a3 options:(id)a4 error:(id *)a5 assistantId:(id *)a6 idsDeviceId:(id *)a7 homeKitId:(id *)a8;
- (BOOL)doesCompanionLinkHaveOtheriOSActiveDevicesApartFrom:(id)a3;
- (id)_companionDevice;
- (id)_companionLinkDeviceForHkIdentifier:(id)a3;
- (id)_companionLinkDeviceForPeer:(id)a3 allowsDeviceCircleLookup:(BOOL)a4 allowsAWDLFallback:(BOOL)a5 error:(id *)a6 logDiscoveryContextFor:(id)a7;
- (id)_companionLinkDeviceForUniqueIDSIdentifier:(id)a3 allowsAWDLFallback:(BOOL)a4;
- (id)_createStartLocalRequestWithRSKE:(id)a3;
- (id)_getExecutionIdFromRequest:(id)a3;
- (id)_initializeNewMessageWaitContext;
- (id)_newRequestDictionary;
- (id)_newRequestDictionaryWithRequestInfo:(id)a3;
- (id)_newRequestInfoWithRequestDictionary:(id)a3;
- (id)_rapportEffectiveIdForPeer:(id)a3;
- (id)_remotePlaybackDeviceForDevice:(id)a3;
- (id)_setUpNewIntermediateIDsSetForPeer:(id)a3;
- (id)_setupClientAWDLTransportLinkForDestination:(id)a3;
- (id)_transformedRequestDictionaryToForward:(id)a3;
- (id)discoveryTypeForPeer:(id)a3;
- (id)getDevicesDiscoveredNearbyForUserID:(id)a3;
- (id)getDevicesDiscoveredTypeCountForUserID:(id)a3;
- (id)getUserIDForDevice:(id)a3;
- (int64_t)deviceType:(id)a3;
- (void)_activateAWDLMessageLink:(id)a3 completion:(id)a4;
- (void)_cancelAWDLClientLinkTimer;
- (void)_checkCompanionIdentifierStatus;
- (void)_cleanUpMessageWaitContext:(id)a3;
- (void)_emitDevicesDiscoveredEventForRequestId:(id)a3 deviceTypeCount:(id)a4;
- (void)_encryptionKeyDidChange:(id)a3;
- (void)_executeRemoteRequest:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 throughProxyDevice:(id)a7 completion:(id)a8;
- (void)_getFilteredDevicesFromList:(id)a3 withAccessToSameHomeAsDevice:(id)a4 completion:(id)a5;
- (void)_getSharedDataFromCompanionLinkDevice:(id)a3 completion:(id)a4;
- (void)_handleAceCommandRequest:(id)a3 messageID:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)_logCompanionDeviceCommunicationContextFor:(id)a3 executionId:(id)a4;
- (void)_logCompanionDeviceDiscoveryContextFor:(id)a3 executionId:(id)a4;
- (void)_logPersonalDevicesDiscoveredNearbyForRequestId:(id)a3;
- (void)_musicPersonalizationTokenChanged;
- (void)_postConfigurationChangedNotification;
- (void)_prepAWDLClientLinkIfMessageReceivedOverAWDL:(id)a3;
- (void)_recordIntermediateMessageID:(id)a3 forPeer:(id)a4;
- (void)_removeMessageHandler:(id)a3 forMessageType:(id)a4;
- (void)_resetHashedRouteIDs;
- (void)_scheduleOrExtendAWDLClientLinkTimer;
- (void)_sendHeartbeatMessage:(id)a3 targetDeviceIdentifier:(id)a4 timeout:(double)a5 completion:(id)a6;
- (void)_sendMessage:(id)a3 messageType:(id)a4 toTargetDevice:(id)a5 completion:(id)a6;
- (void)_setIsStereoPairConfigured:(BOOL)a3;
- (void)_setReadyState:(BOOL)a3;
- (void)_setupClientLink;
- (void)_sharedDataDidChange:(id)a3;
- (void)_startListening;
- (void)_startObservingDataChangedNotifications;
- (void)_startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5;
- (void)_stopListening;
- (void)_stopObservingDataChangedNotifications;
- (void)_storeFrontDidChange:(id)a3;
- (void)_tearDownIntermediateMessageIDs:(id)a3 forPeer:(id)a4;
- (void)_unblockWaitContext:(id)a3 forMessageID:(id)a4;
- (void)_unblockWaitingForMessageIDs:(id)a3;
- (void)_updateAssistantIDMapForDevice:(id)a3;
- (void)_updateCompanionIdentifier;
- (void)_updateHashedRouteIDForDevice:(id)a3;
- (void)_updateMediaSystemState;
- (void)_updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:(BOOL)a3;
- (void)_updateSharedDataForDevice:(id)a3 allowIDSFetch:(BOOL)a4 completion:(id)a5;
- (void)_updateSharedDataWithCompletion:(id)a3;
- (void)_updateSiriInfoDictionary;
- (void)_updateStoreFrontIdentifierWithCompletion:(id)a3;
- (void)_waitForMessageIDs:(id)a3 withContext:(id)a4 timeout:(double)a5 completion:(id)a6;
- (void)getDeviceIdentifiersWithCompletion:(id)a3;
- (void)getPlaybackDeviceListWithCompletion:(id)a3;
- (void)getSharedCompanionInfoWithCompletion:(id)a3;
- (void)getStereoPartnerIdentifierWithCompletion:(id)a3;
- (void)invalidateClientAWDLTransportLink;
- (void)rapportLink:(id)a3 didFindDevice:(id)a4;
- (void)rapportLink:(id)a3 didLoseDevice:(id)a4;
- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5;
- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4;
- (void)rapportLinkDidInterrupt:(id)a3;
- (void)rapportLinkDidInvalidate:(id)a3;
- (void)removeMessageHandler:(id)a3 forMessageType:(id)a4;
- (void)sendMessage:(id)a3 messageType:(id)a4 toDeviceWithHKIdentifier:(id)a5 completion:(id)a6;
- (void)sendMessage:(id)a3 messageType:(id)a4 toDeviceWithIDSIdentifier:(id)a5 completion:(id)a6;
- (void)sendStereoPartnerMessage:(id)a3 messageType:(id)a4 completion:(id)a5;
- (void)setMessageHandler:(id)a3 forMessageType:(id)a4;
- (void)setStereoPartnerIDSIdentifier:(id)a3;
- (void)startListeningForRemote;
- (void)startRemoteExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 throughProxyDevice:(id)a6 executionContext:(id)a7 completion:(id)a8;
- (void)startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5;
- (void)startRemoteSerialzedCommandExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8;
- (void)stopListening;
- (void)updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:(BOOL)a3;
@end

@implementation ADCompanionService

+ (ADCompanionService)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100268838;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_100590700 != -1)
  {
    dispatch_once(&qword_100590700, block);
  }

  v2 = qword_1005906F8;

  return v2;
}

- (void)_resetHashedRouteIDs
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCompanionService _resetHashedRouteIDs]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ADRapportLink *)self->_clientLink activeDevices];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        playbackDeviceIDs = self->_playbackDeviceIDs;
        v11 = [v9 identifier];
        v12 = [(NSMutableDictionary *)playbackDeviceIDs objectForKey:v11];

        if (v12)
        {
          v13 = [(ADRapportLink *)self->_clientLink localDevice];
          v14 = [v9 hasValidDiscoveryTypeForLocalDevice:v13];

          if (v14)
          {
            [v12 removeAllObjects];
            [(ADCompanionService *)self _updateHashedRouteIDForDevice:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_emitDevicesDiscoveredEventForRequestId:(id)a3 deviceTypeCount:(id)a4
{
  v28 = a3;
  v5 = a4;
  v6 = objc_alloc_init(HALSchemaHALClientEvent);
  v7 = objc_alloc_init(HALSchemaHALNearbyPersonalDevicesReported);
  [v6 setNearbyPersonalDevicesReported:v7];
  [v6 setHasNearbyPersonalDevicesReported:1];
  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v26 = v8;
  v10 = [[SISchemaUUID alloc] initWithNSUUID:v8];
  [v9 setHalId:v10];

  v27 = v6;
  v25 = v9;
  [v6 setEventMetadata:v9];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * v15) integerValue];
        v17 = [NSNumber numberWithInteger:v16];
        v18 = [v11 objectForKeyedSubscript:v17];
        v19 = [v18 integerValue];

        if (v16 > 2)
        {
          switch(v16)
          {
            case 3:
              [v7 setMacBookCount:v19];
              [v7 setHasMacBookCount:1];
              break;
            case 4:
              [v7 setMacStudioCount:v19];
              [v7 setHasMacStudioCount:1];
              break;
            case 5:
              [v7 setIMacCount:v19];
              [v7 setHasIMacCount:1];
              break;
          }
        }

        else if (v16)
        {
          if (v16 == 1)
          {
            [v7 setIPadCount:v19];
            [v7 setHasIPadCount:1];
          }

          else if (v16 == 2)
          {
            [v7 setWatchCount:v19];
            [v7 setHasWatchCount:1];
          }
        }

        else
        {
          [v7 setIPhoneCount:v19];
          [v7 setHasIPhoneCount:1];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v20 = +[AssistantSiriAnalytics sharedAnalytics];
  v21 = [v20 defaultMessageStream];
  [v21 emitMessage:v27];

  v22 = ADCreateRequestLinkInfo();
  v23 = [v26 UUIDString];
  v24 = ADCreateRequestLinkInfo();

  ADEmitRequestLinkEventMessage();
}

- (void)_logPersonalDevicesDiscoveredNearbyForRequestId:(id)a3
{
  v4 = a3;
  if (AFIsHorseman())
  {
    v5 = +[ADCommandCenter sharedCommandCenter];
    v6 = [v5 _selectedSharedUserID];

    if ([v6 length])
    {
      v7 = [(ADCompanionService *)self instrumentationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100070D48;
      block[3] = &unk_10051DB68;
      block[4] = self;
      v9 = v4;
      v10 = v6;
      dispatch_async(v7, block);
    }
  }
}

- (void)_logCompanionDeviceCommunicationContextFor:(id)a3 executionId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v16 = objc_alloc_init(HALSchemaHALClientEvent);
  v7 = objc_alloc_init(HALSchemaHALCompanionDeviceCommunicationContext);
  [v7 setEnded:v6];

  [v7 setHasEnded:1];
  [v16 setCompanionDeviceCommunicationContext:v7];
  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v10 = [[SISchemaUUID alloc] initWithNSUUID:v8];
  [v9 setHalId:v10];

  [v16 setEventMetadata:v9];
  v11 = +[AssistantSiriAnalytics sharedAnalytics];
  v12 = [v11 defaultMessageStream];
  [v12 emitMessage:v16];

  v13 = ADCreateRequestLinkInfo();

  v14 = [v8 UUIDString];
  v15 = ADCreateRequestLinkInfo();

  ADEmitRequestLinkEventMessage();
}

- (void)_logCompanionDeviceDiscoveryContextFor:(id)a3 executionId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v16 = objc_alloc_init(HALSchemaHALClientEvent);
  v7 = objc_alloc_init(HALSchemaHALCompanionDeviceDiscoveryContext);
  [v7 setEnded:v6];

  [v7 setHasEnded:1];
  [v16 setCompanionDeviceDiscoveryContext:v7];
  v8 = +[NSUUID UUID];
  v9 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v10 = [[SISchemaUUID alloc] initWithNSUUID:v8];
  [v9 setHalId:v10];

  [v16 setEventMetadata:v9];
  v11 = +[AssistantSiriAnalytics sharedAnalytics];
  v12 = [v11 defaultMessageStream];
  [v12 emitMessage:v16];

  v13 = ADCreateRequestLinkInfo();

  v14 = [v8 UUIDString];
  v15 = ADCreateRequestLinkInfo();

  ADEmitRequestLinkEventMessage();
}

- (int64_t)deviceType:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 model];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 lowercaseString];
      if ([v6 hasPrefix:@"iphone"])
      {
        v7 = 0;
      }

      else if ([v6 hasPrefix:@"ipad"])
      {
        v7 = 1;
      }

      else if ([v6 hasPrefix:@"watch"])
      {
        v7 = 2;
      }

      else if ([v6 hasPrefix:@"macbook"])
      {
        v7 = 3;
      }

      else if ([v6 hasPrefix:@"macstudio"])
      {
        v7 = 4;
      }

      else if ([v6 hasPrefix:@"imac"])
      {
        v7 = 5;
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = 6;
    }
  }

  else
  {
    v7 = 6;
  }

  return v7;
}

- (id)getUserIDForDevice:(id)a3
{
  v3 = [a3 siriInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"peerData"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 objectForKeyedSubscript:@"sharedUserIdentifier"];
      v7 = v6;
      if (v6 && [v6 length])
      {
        v8 = v7;
      }

      else
      {
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315138;
          v14 = "[ADCompanionService getUserIDForDevice:]";
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s deviceSiriInfo sharedUserIdentifier nil", &v13, 0xCu);
        }

        v8 = 0;
      }
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[ADCompanionService getUserIDForDevice:]";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s deviceSiriInfo peerData nil", &v13, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[ADCompanionService getUserIDForDevice:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s deviceSiriInfo nil", &v13, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)getDevicesDiscoveredNearbyForUserID:(id)a3
{
  v25 = a3;
  v4 = [(ADRapportLink *)self->_clientLink activeDevices];
  v5 = [v4 copy];

  if (v5)
  {
    v27 = objc_alloc_init(NSMutableDictionary);
    group = dispatch_group_create();
    queue = dispatch_queue_create("ADInstrumentationDeviceDiscoveryQueue", 0);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = *v53;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v52 + 1) + 8 * i);
        v10 = [(ADCompanionService *)self getUserIDForDevice:v9];
        v11 = [v9 idsDeviceIdentifier];
        if (v11)
        {
          v32 = 0;
          v33 = &v32;
          v34 = 0x2020000000;
          LOBYTE(v35) = 0;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100252CCC;
          block[3] = &unk_10051C588;
          v51 = &v32;
          v12 = v27;
          v49 = v12;
          v13 = v11;
          v50 = v13;
          dispatch_sync(queue, block);
          if ((v33[3] & 1) == 0)
          {
            v14 = [v9 isDiscoveredOverInfraWifi];
            if (v10)
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            if (v15 == 1 && [v25 isEqualToString:v10])
            {
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_100252D20;
              v45[3] = &unk_10051DB68;
              v46 = v12;
              v47[0] = v13;
              v47[1] = v9;
              dispatch_async(queue, v45);
              v16 = v47;
              v17 = &v46;
              goto LABEL_18;
            }

            if ([v9 hasWatchOS] && objc_msgSend(v9, "isOwner"))
            {
              dispatch_group_enter(group);
              v18 = +[ADMultiUserService sharedService];
              v38[0] = _NSConcreteStackBlock;
              v38[1] = 3221225472;
              v38[2] = sub_100252D30;
              v38[3] = &unk_100518150;
              v39 = v25;
              v40 = queue;
              v41 = v12;
              v42 = v13;
              v43 = v9;
              v44 = group;
              [v18 showPrimaryUserSharedUserIDWithCompletion:v38];

              v16 = &v40;
              v17 = &v39;
LABEL_18:
            }
          }

          _Block_object_dispose(&v32, 8);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (!v6)
      {
LABEL_22:

        v19 = dispatch_time(0, 1000000000);
        dispatch_group_wait(group, v19);
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = sub_100252DEC;
        v36 = sub_100252DFC;
        v37 = 0;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100252E04;
        v29[3] = &unk_10051D4A0;
        v30 = v27;
        v31 = &v32;
        v20 = v27;
        dispatch_sync(queue, v29);
        v21 = v33[5];

        _Block_object_dispose(&v32, 8);
        v5 = v23;
        goto LABEL_24;
      }
    }
  }

  v21 = &__NSArray0__struct;
LABEL_24:

  return v21;
}

- (id)getDevicesDiscoveredTypeCountForUserID:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCompanionService getDevicesDiscoveredTypeCountForUserID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(ADCompanionService *)self getDevicesDiscoveredNearbyForUserID:v4];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(ADCompanionService *)self deviceType:*(*(&v21 + 1) + 8 * i)];
        v13 = [NSNumber numberWithInteger:v12];
        v14 = [v6 objectForKeyedSubscript:v13];

        v15 = [NSNumber numberWithInteger:v12];
        if (v14)
        {
          v16 = [v6 objectForKeyedSubscript:v15];

          v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 integerValue] + 1);
          v18 = [NSNumber numberWithInteger:v12];
          [v6 setObject:v17 forKeyedSubscript:v18];

          v15 = v16;
        }

        else
        {
          [v6 setObject:&off_100533D70 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = [NSDictionary dictionaryWithDictionary:v6];

  return v19;
}

- (void)_cancelAWDLClientLinkTimer
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCompanionService _cancelAWDLClientLinkTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  awdlClientLinkTimer = self->_awdlClientLinkTimer;
  if (awdlClientLinkTimer)
  {
    [(AFWatchdogTimer *)awdlClientLinkTimer cancel];
    v5 = self->_awdlClientLinkTimer;
    self->_awdlClientLinkTimer = 0;
  }
}

- (void)_scheduleOrExtendAWDLClientLinkTimer
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCompanionService _scheduleOrExtendAWDLClientLinkTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  awdlClientLinkTimer = self->_awdlClientLinkTimer;
  if (awdlClientLinkTimer)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[ADCompanionService _scheduleOrExtendAWDLClientLinkTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Extending time out.", buf, 0xCu);
      awdlClientLinkTimer = self->_awdlClientLinkTimer;
    }

    [(AFWatchdogTimer *)awdlClientLinkTimer reset];
  }

  v6 = [AFWatchdogTimer alloc];
  serialQueue = self->_serialQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002533E0;
  v10[3] = &unk_10051DFE8;
  v10[4] = self;
  v8 = [v6 initWithTimeoutInterval:serialQueue onQueue:v10 timeoutHandler:45.0];
  v9 = self->_awdlClientLinkTimer;
  self->_awdlClientLinkTimer = v8;

  [(AFWatchdogTimer *)self->_awdlClientLinkTimer start];
}

- (void)invalidateClientAWDLTransportLink
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCompanionService invalidateClientAWDLTransportLink]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  clientAWDLTransportLink = self->_clientAWDLTransportLink;
  if (clientAWDLTransportLink)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      clientAWDLTransportLinkDestinationId = self->_clientAWDLTransportLinkDestinationId;
      v9 = 136315394;
      v10 = "[ADCompanionService invalidateClientAWDLTransportLink]";
      v11 = 2112;
      v12 = clientAWDLTransportLinkDestinationId;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s _clientAWDLTransportLink exists for %@. Invalidating it.", &v9, 0x16u);
      clientAWDLTransportLink = self->_clientAWDLTransportLink;
    }

    [(ADRapportLink *)clientAWDLTransportLink removeListener:self];
    [(ADRapportLink *)self->_clientAWDLTransportLink invalidate];
    v7 = self->_clientAWDLTransportLink;
    self->_clientAWDLTransportLink = 0;
  }

  v8 = self->_clientAWDLTransportLinkDestinationId;
  self->_clientAWDLTransportLinkDestinationId = 0;

  [(ADCompanionService *)self _cancelAWDLClientLinkTimer];
}

- (BOOL)doesCompanionLinkHaveOtheriOSActiveDevicesApartFrom:(id)a3
{
  v20 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  [(ADRapportLink *)self->_clientLink activeDevices];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        v9 = v6;
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          if (v10)
          {
            [v10 operatingSystemVersion];
            v12 = v24;
            [v10 operatingSystemVersion];
            v13 = v23;
            [v10 operatingSystemVersion];
            v14 = v22;
          }

          else
          {
            v14 = 0;
            v13 = 0;
            v12 = 0;
            v24 = 0;
            v23 = 0;
            v22 = 0;
          }

          *buf = 136316162;
          v30 = "[ADCompanionService doesCompanionLinkHaveOtheriOSActiveDevicesApartFrom:]";
          v31 = 2112;
          v32 = v10;
          v33 = 2048;
          v34 = v12;
          v35 = 2048;
          v36 = v13;
          v37 = 2048;
          v38 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s DEVICE: %@, OS major version %ld, OS minor version %ld, OS patch version %ld,", buf, 0x34u);
        }

        if ([v10 isOwner] && objc_msgSend(v10, "isDiscoveredOverInfraWifi"))
        {
          v15 = [v10 hasIOS];
          v6 = v15 | v9;
          if (v20 && v15)
          {
            v16 = [v10 idsDeviceIdentifier];
            v17 = [v20 idsDeviceUniqueIdentifier];
            v18 = [v16 isEqualToString:v17] ^ 1;

            v6 = v18 | v9;
          }
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)rapportLink:(id)a3 didLoseDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCompanionService rapportLink:didLoseDevice:]";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s device lost: %@", &v16, 0x16u);
  }

  if (self->_siriInfoDictNeedsInit)
  {
    [(ADCompanionService *)self _updateSiriInfoDictionary];
  }

  if (AFIsHorseman() && [(ADCompanionService *)self _isDevicePartOfCurrentMediaSystem:v7])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[ADCompanionService rapportLink:didLoseDevice:]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s media system device lost: %@", &v16, 0x16u);
    }

    [(ADCompanionService *)self setStereoPartnerIDSIdentifier:0];
  }

  v10 = +[NSNotificationCenter defaultCenter];
  if (AFSupportsPlayThisOnThat())
  {
    playbackDeviceIDs = self->_playbackDeviceIDs;
    v12 = [v7 identifier];
    v13 = [(NSMutableDictionary *)playbackDeviceIDs objectForKey:v12];

    if (v13)
    {
      v14 = self->_playbackDeviceIDs;
      v15 = [v7 identifier];
      [(NSMutableDictionary *)v14 removeObjectForKey:v15];

      [v10 postNotificationName:@"ADCompanionServicePlaybackDevicesDidChangeNotification" object:0];
    }
  }

  [v10 postNotificationName:@"ADCompanionServiceActiveDevicesDidChangeNotification" object:0];
}

- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v33 = 136315650;
    v34 = "[ADCompanionService rapportLink:didUpdateDevice:changes:]";
    v35 = 2112;
    v36 = v9;
    v37 = 2048;
    v38 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s device updated: %@ with changes: %ld", &v33, 0x20u);
  }

  if (self->_siriInfoDictNeedsInit)
  {
    [(ADCompanionService *)self _updateSiriInfoDictionary];
  }

  [(ADCompanionService *)self _updateAssistantIDMapForDevice:v9];
  v11 = AFSupportsPlayThisOnThat();
  if ((a5 & 2) != 0 && v11)
  {
    v12 = [v9 _ad_siriSharedDataProtobuf];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v33 = 136315394;
      v34 = "[ADCompanionService rapportLink:didUpdateDevice:changes:]";
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s siriInfo: %@", &v33, 0x16u);
    }

    v14 = [v12 isRemotePlaybackDevice];
    playbackDeviceIDs = self->_playbackDeviceIDs;
    v16 = [v9 identifier];
    v17 = [(NSMutableDictionary *)playbackDeviceIDs objectForKey:v16];

    if (v14)
    {
      v18 = AFSiriLogContextDaemon;
      v19 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (v19)
        {
          v33 = 136315394;
          v34 = "[ADCompanionService rapportLink:didUpdateDevice:changes:]";
          v35 = 2112;
          v36 = v9;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s playback device updated: %@", &v33, 0x16u);
        }
      }

      else
      {
        if (v19)
        {
          v33 = 136315394;
          v34 = "[ADCompanionService rapportLink:didUpdateDevice:changes:]";
          v35 = 2112;
          v36 = v9;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s playback device added: %@", &v33, 0x16u);
        }

        v23 = self->_playbackDeviceIDs;
        v24 = objc_opt_new();
        v25 = [v9 identifier];
        [(NSMutableDictionary *)v23 setObject:v24 forKey:v25];
      }

      [(ADCompanionService *)self _updateHashedRouteIDForDevice:v9];
    }

    else
    {
      if (!v17)
      {
LABEL_22:

        goto LABEL_23;
      }

      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v33 = 136315394;
        v34 = "[ADCompanionService rapportLink:didUpdateDevice:changes:]";
        v35 = 2112;
        v36 = v9;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s playback device removed: %@", &v33, 0x16u);
      }

      v21 = self->_playbackDeviceIDs;
      v22 = [v9 identifier];
      [(NSMutableDictionary *)v21 removeObjectForKey:v22];
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 postNotificationName:@"ADCompanionServicePlaybackDevicesDidChangeNotification" object:0];

    goto LABEL_22;
  }

LABEL_23:
  v27 = AFIsHorseman();
  if ((a5 & 2) != 0)
  {
    if (v27)
    {
      v28 = [v9 idsDeviceIdentifier];
      v29 = [(ADRapportLink *)self->_clientLink localDevice];
      v30 = [v29 idsPersonalDeviceIdentifier];
      v31 = [v28 isEqualToString:v30];

      if (v31)
      {
        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v33 = 136315394;
          v34 = "[ADCompanionService rapportLink:didUpdateDevice:changes:]";
          v35 = 2112;
          v36 = v9;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s companion device updated: %@", &v33, 0x16u);
        }

        [(ADCompanionService *)self _updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:1];
      }
    }
  }
}

- (void)rapportLink:(id)a3 didFindDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 isPersonal];
    v11 = @"standard";
    *&v35[4] = "[ADCompanionService rapportLink:didFindDevice:]";
    *v35 = 136315650;
    *&v35[12] = 2112;
    if (v10)
    {
      v11 = @"companion capable";
    }

    *&v35[14] = v11;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ device found: %@", v35, 0x20u);
  }

  if (self->_siriInfoDictNeedsInit)
  {
    [(ADCompanionService *)self _updateSiriInfoDictionary];
  }

  [(ADCompanionService *)self _updateAssistantIDMapForDevice:v7, *v35];
  if (AFIsHorseman())
  {
    v12 = [v7 idsDeviceIdentifier];
    v13 = [(ADRapportLink *)self->_clientLink localDevice];
    v14 = [v13 idsPersonalDeviceIdentifier];
    v15 = [v12 isEqualToString:v14];

    if (v15)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v35 = 136315394;
        *&v35[4] = "[ADCompanionService rapportLink:didFindDevice:]";
        *&v35[12] = 2112;
        *&v35[14] = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s companion device found: %@", v35, 0x16u);
      }

      [(ADCompanionService *)self _updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:1];
    }

    if ([(ADCompanionService *)self _isDevicePartOfCurrentMediaSystem:v7])
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v35 = 136315394;
        *&v35[4] = "[ADCompanionService rapportLink:didFindDevice:]";
        *&v35[12] = 2112;
        *&v35[14] = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s media system device found: %@", v35, 0x16u);
      }

      v18 = [v7 idsDeviceIdentifier];
      [(ADCompanionService *)self setStereoPartnerIDSIdentifier:v18];
    }
  }

  v19 = +[NSNotificationCenter defaultCenter];
  if (AFSupportsPlayThisOnThat())
  {
    v20 = [v7 identifier];

    if (v20)
    {
      v21 = [v7 _ad_siriSharedDataProtobuf];
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v35 = 136315394;
        *&v35[4] = "[ADCompanionService rapportLink:didFindDevice:]";
        *&v35[12] = 2112;
        *&v35[14] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s siriInfo: %@", v35, 0x16u);
      }

      v23 = [v21 isRemotePlaybackDevice];
      playbackDeviceIDs = self->_playbackDeviceIDs;
      v25 = [v7 identifier];
      v26 = [(NSMutableDictionary *)playbackDeviceIDs objectForKey:v25];
      v27 = v26;
      if (v23)
      {

        if (!v27)
        {
          v28 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *v35 = 136315394;
            *&v35[4] = "[ADCompanionService rapportLink:didFindDevice:]";
            *&v35[12] = 2112;
            *&v35[14] = v7;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s playback device found: %@", v35, 0x16u);
          }

          v29 = self->_playbackDeviceIDs;
          v30 = objc_opt_new();
          v31 = [v7 identifier];
          [(NSMutableDictionary *)v29 setObject:v30 forKey:v31];

          [(ADCompanionService *)self _updateHashedRouteIDForDevice:v7];
LABEL_29:
          [v19 postNotificationName:@"ADCompanionServicePlaybackDevicesDidChangeNotification" object:0];
        }
      }

      else
      {

        if (v27)
        {
          v32 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *v35 = 136315394;
            *&v35[4] = "[ADCompanionService rapportLink:didFindDevice:]";
            *&v35[12] = 2112;
            *&v35[14] = v7;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s playback device lost: %@", v35, 0x16u);
          }

          v33 = self->_playbackDeviceIDs;
          v34 = [v7 identifier];
          [(NSMutableDictionary *)v33 removeObjectForKey:v34];

          goto LABEL_29;
        }
      }
    }
  }

  [v19 postNotificationName:@"ADCompanionServiceActiveDevicesDidChangeNotification" object:0];
}

- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADCompanionService rapportLink:didUpdateLocalDevice:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s companion service updated local device: %@", &v12, 0x16u);
  }

  if (AFIsHorseman())
  {
    [(ADCompanionService *)self _updateCompanionIdentifier];
    [(ADCompanionService *)self _updateMediaSystemState];
    if (AFSupportsAirPlayEndpointRoute())
    {
      v9 = [(_ADPBDeviceSetDataRequest *)self->_cachedSharedData airplayRouteId];
      v10 = [(ADRapportLink *)self->_clientLink localDevice];
      v11 = [v10 mediaRouteIdentifier];

      if (v9 != v11 && ([v9 isEqualToString:v11] & 1) == 0)
      {
        [(ADCompanionService *)self _updateSiriInfoDictionary];
      }
    }
  }
}

- (void)rapportLinkDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCompanionService rapportLinkDidInvalidate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100254640;
  v8[3] = &unk_10051E010;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (void)rapportLinkDidInterrupt:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCompanionService rapportLinkDidInterrupt:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10025492C;
  v8[3] = &unk_10051E010;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (id)_newRequestDictionaryWithRequestInfo:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [(ADCompanionService *)self _newRequestDictionary];
  v6 = [v4 text];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"text"];
  }

  v7 = [v4 handoffRequestData];
  if (v7)
  {
    [v5 setObject:v7 forKey:@"handoffRequestData"];
  }

  v8 = [v4 handoffOriginDeviceName];
  if (v8)
  {
    [v5 setObject:v8 forKey:@"handoffOriginDeviceName"];
  }

  v9 = [v4 handoffURLString];
  if (v9)
  {
    [v5 setObject:v9 forKey:@"handoffURLString"];
  }

  v10 = [v4 turnIdentifier];
  if (v10)
  {
    [v5 setObject:v10 forKey:@"handoffTurnIdentifier"];
  }

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 handoffRequiresUserInteraction]);
  [v5 setObject:v11 forKey:@"handoffRequiresUserInteraction"];

  v12 = [v4 handoffNotification];
  if (v12)
  {
    [v5 setObject:v12 forKey:@"handoffNotification"];
  }

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isSiriXRequest]);
  [v5 setObject:v13 forKey:@"isSiriXRequest"];

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isATVHandoff]);
  [v5 setObject:v14 forKey:@"isATVHandoff"];

  return v5;
}

- (id)_createStartLocalRequestWithRSKE:(id)a3
{
  v3 = a3;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  v6 = objc_alloc_init(SAStartLocalRequest);
  [v6 setAceId:v5];
  [v3 setRefId:v5];
  v32 = v3;
  v7 = [NSArray arrayWithObjects:&v32 count:1];
  [v6 setClientBoundCommands:v7];

  v8 = objc_alloc_init(SARequestCompleted);
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  [v8 setAceId:v10];

  v11 = [v6 aceId];
  [v8 setRefId:v11];

  v12 = objc_alloc_init(SAResultCallback);
  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];
  [v12 setAceId:v14];

  v15 = [v6 aceId];
  [v12 setRefId:v15];

  [v12 setCode:0];
  v31 = v8;
  v16 = [NSArray arrayWithObjects:&v31 count:1];
  [v12 setCommands:v16];

  v17 = objc_alloc_init(SACommandFailed);
  v18 = +[NSUUID UUID];
  v19 = [v18 UUIDString];
  [v17 setAceId:v19];

  v20 = [v6 aceId];
  [v17 setRefId:v20];

  v21 = objc_alloc_init(SAResultCallback);
  v22 = +[NSUUID UUID];
  v23 = [v22 UUIDString];
  [v21 setAceId:v23];

  v24 = [v6 aceId];
  [v21 setRefId:v24];

  [v21 setCode:-1];
  v30 = v17;
  v25 = [NSArray arrayWithObjects:&v30 count:1];
  [v21 setCommands:v25];

  v29[0] = v12;
  v29[1] = v21;
  v26 = [NSArray arrayWithObjects:v29 count:2];
  [v3 setCallbacks:v26];

  v27 = [v6 aceId];
  [v3 setRefId:v27];

  return v6;
}

- (id)_newRequestInfoWithRequestDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"text"];
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
      v42 = 2112;
      v43 = @"text";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v6 = [v4 objectForKey:@"handoffRequestData"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
        v42 = 2112;
        v43 = @"handoffRequestData";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
      }

      v12 = 0;
    }

    else
    {
      v7 = [v4 objectForKey:@"handoffOriginDeviceName"];
      if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
          v42 = 2112;
          v43 = @"handoffOriginDeviceName";
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        v8 = [v4 objectForKey:@"handoffURLString"];
        if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
            v42 = 2112;
            v43 = @"handoffURLString";
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
          }

          v12 = 0;
        }

        else
        {
          v9 = [v4 objectForKey:@"handoffTurnIdentifier"];
          if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v27 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
              v42 = 2112;
              v43 = @"handoffTurnIdentifier";
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
            }

            v12 = 0;
          }

          else
          {
            v10 = [v4 objectForKey:@"handoffRequiresUserInteraction"];
            if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v28 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
                v42 = 2112;
                v43 = @"handoffRequiresUserInteraction";
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
              }

              v12 = 0;
            }

            else
            {
              v38 = [v4 objectForKey:@"handoffNotification"];
              if (v38 && (objc_opt_isKindOfClass() & 1) == 0)
              {
                v29 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
                  v42 = 2112;
                  v43 = @"handoffNotification";
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
                }

                v12 = 0;
                v14 = v38;
              }

              else
              {
                v37 = [v4 objectForKey:@"isSiriXRequest"];
                if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v30 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
                    v42 = 2112;
                    v43 = @"isSiriXRequest";
                    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
                  }

                  v12 = 0;
                  v14 = v38;
                }

                else
                {
                  v11 = [v4 objectForKey:@"isATVHandoff"];
                  v36 = v11;
                  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v31 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
                      v42 = 2112;
                      v43 = @"isATVHandoff";
                      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s malformed remote request key: %@", buf, 0x16u);
                    }

                    v12 = 0;
                    v14 = v38;
                  }

                  else
                  {
                    v12 = objc_alloc_init(AFRequestInfo);
                    [v12 setText:v5];
                    [v12 setHandoffOriginDeviceName:v7];
                    [v12 setHandoffURLString:v8];
                    v34 = v9;
                    [v12 setTurnIdentifier:v9];
                    v35 = v10;
                    [v12 setHandoffRequiresUserInteraction:{objc_msgSend(v10, "BOOLValue")}];
                    v13 = v11;
                    v14 = v38;
                    [v12 setHandoffNotification:v38];
                    [v12 setActivationEvent:1];
                    [v12 setIsSiriXRequest:{objc_msgSend(v37, "BOOLValue")}];
                    [v12 setIsATVHandoff:{objc_msgSend(v13, "BOOLValue")}];
                    v15 = [v37 BOOLValue];
                    if (!v6 || !v15)
                    {
                      goto LABEL_49;
                    }

                    v16 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315138;
                      v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Handoff request is SiriX, unpacking RunSiriKitExecutor command and wrapping in a StartLocalRequest", buf, 0xCu);
                    }

                    v39 = 0;
                    v17 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v39];
                    v18 = v39;
                    v33 = v17;
                    v19 = [v17 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
                    v20 = v18;
                    if (v18)
                    {
                      v21 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315394;
                        v41 = "[ADCompanionService _newRequestInfoWithRequestDictionary:]";
                        v42 = 2112;
                        v43 = v20;
                        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Error unpacking RunSiriKitExecutor command from handoff data: %@", buf, 0x16u);
                      }
                    }

                    v14 = v38;
                    if (v19)
                    {
                      v22 = [(ADCompanionService *)self _createStartLocalRequestWithRSKE:v19];
                      [v12 setStartLocalRequest:v22];

                      v14 = v38;
                    }

                    else
                    {
LABEL_49:
                      [v12 setHandoffRequestData:v6];
                    }

                    v9 = v34;
                    v10 = v35;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v12;
}

- (void)_getFilteredDevicesFromList:(id)a3 withAccessToSameHomeAsDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = a4;
    v11 = +[ADHomeInfoManager sharedInfoManager];
    v12 = [v10 homeKitIdentifier];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002559F0;
    v14[3] = &unk_100518128;
    v18 = v9;
    v15 = v8;
    v16 = v11;
    v17 = self;
    v13 = v11;
    [v13 getHomeIdForAccessoryId:v12 completion:v14];
  }
}

- (id)_transformedRequestDictionaryToForward:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(ADCompanionService *)self _newRequestDictionary];
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

- (id)_newRequestDictionary
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = objc_opt_new();
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  [v3 setObject:v5 forKey:@"messageID"];
  v6 = +[ADDeviceCircleManager sharedInstance];
  v7 = [v6 localPeerInfo];
  v8 = [v7 idsDeviceUniqueIdentifier];

  v9 = AFSiriLogContextDaemon;
  if (v8)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[ADCompanionService _newRequestDictionary]";
      v31 = 2112;
      v32 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s localPeerUniqueIdentifier: %@", buf, 0x16u);
    }

    [v3 setObject:v8 forKey:@"idsDeviceId"];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v30 = "[ADCompanionService _newRequestDictionary]";
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s unable to retrieve local IDS identifier", buf, 0xCu);
  }

  if (AFSupportsAirPlayEndpointRoute())
  {
    v10 = [(ADRapportLink *)self->_clientLink localDevice];
    v11 = [v10 mediaRouteIdentifier];

    v12 = AFSiriLogContextDaemon;
    if (v11)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v30 = "[ADCompanionService _newRequestDictionary]";
        v31 = 2112;
        v32 = v11;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s routeIdentifier: %@", buf, 0x16u);
      }

      v28 = v11;
      v13 = [NSArray arrayWithObjects:&v28 count:1];
      [v3 setObject:v13 forKey:@"airPlayRouteIDs"];
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[ADCompanionService _newRequestDictionary]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s unable to retrieve AirPlay route identifier", buf, 0xCu);
    }
  }

  v14 = +[ADCommandCenter sharedCommandCenter];
  v15 = [v14 getAssistantIdentifier];

  v16 = AFSiriLogContextDaemon;
  if (v15)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[ADCompanionService _newRequestDictionary]";
      v31 = 2112;
      v32 = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s assistantId: %@", buf, 0x16u);
    }

    [v3 setObject:v15 forKey:@"assistantId"];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v30 = "[ADCompanionService _newRequestDictionary]";
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s unable to retrieve assistantd identifier", buf, 0xCu);
  }

  v17 = AFCurrentUserInterfaceIdiom();
  if (v17)
  {
    v18 = AFCurrentUserInterfaceIdiom();
    [v3 setObject:v18 forKey:@"userInterfaceIdiom"];
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[ADCompanionService _newRequestDictionary]";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s unable to retrieve user interface idiom", buf, 0xCu);
    }
  }

  v20 = SAAceVersionCurrent;
  if (v20)
  {
    [v3 setObject:v20 forKey:@"aceVersion"];
  }

  else
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[ADCompanionService _newRequestDictionary]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s unable to retrieve ACE version", buf, 0xCu);
    }
  }

  v22 = [(ADRapportLink *)self->_clientLink localDevice];
  v23 = [v22 mediaSystemIdentifier];
  v24 = [v23 UUIDString];

  if (v24)
  {
    [v3 setObject:v24 forKey:@"mediaSystemId"];
  }

  v25 = [v22 homeKitIdentifier];
  v26 = [v25 UUIDString];

  if (v26)
  {
    [v3 setObject:v26 forKey:@"homeKitId"];
  }

  return v3;
}

- (id)_companionDevice
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(ADRapportLink *)self->_clientLink localDevice];
  v4 = [v3 idsPersonalDeviceIdentifier];
  v5 = [(ADCompanionService *)self _companionLinkDeviceForUniqueIDSIdentifier:v4];

  return v5;
}

- (id)_companionLinkDeviceForHkIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v4 length])
  {
    v5 = [ADPeerInfo alloc];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10025654C;
    v10[3] = &unk_10051D9B8;
    v11 = v4;
    v6 = [AFPeerInfo newWithBuilder:v10];
    v7 = [(ADPeerInfo *)v5 initWithAFPeerInfo:v6];
    v8 = [(ADCompanionService *)self _companionLinkDeviceForPeer:v7 allowsDeviceCircleLookup:1 logDiscoveryContextFor:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_companionLinkDeviceForUniqueIDSIdentifier:(id)a3 allowsAWDLFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v6 length])
  {
    v7 = [ADPeerInfo alloc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100256688;
    v12[3] = &unk_10051D9B8;
    v13 = v6;
    v8 = [AFPeerInfo newWithBuilder:v12];
    v9 = [(ADPeerInfo *)v7 initWithAFPeerInfo:v8];
    v10 = [(ADCompanionService *)self _companionLinkDeviceForPeer:v9 allowsDeviceCircleLookup:1 allowsAWDLFallback:v4 error:0 logDiscoveryContextFor:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_companionLinkDeviceForPeer:(id)a3 allowsDeviceCircleLookup:(BOOL)a4 allowsAWDLFallback:(BOOL)a5 error:(id *)a6 logDiscoveryContextFor:(id)a7
{
  v127 = a5;
  v9 = a4;
  v11 = a3;
  v12 = a7;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (a6)
  {
    *a6 = 0;
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v120 = [(ADRapportLink *)self->_clientLink localDevice];
    *buf = 136315394;
    v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
    v154 = 2112;
    v155 = v120;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s local device: %@", buf, 0x16u);
  }

  v14 = objc_alloc_init(HALSchemaHALCompanionDeviceDiscoveryEnded);
  [v14 setHasOtheriOSActiveDevices:{-[ADCompanionService doesCompanionLinkHaveOtheriOSActiveDevicesApartFrom:](self, "doesCompanionLinkHaveOtheriOSActiveDevicesApartFrom:", v11)}];
  v15 = [(ADCompanionService *)self _shouldLogDiscoveryContextForRequestId:v12];
  v16 = v15;
  if (!v11)
  {
    [v14 setDiscoveryType:0];
    [v14 setHasNullPeerIdentityServicesId:1];
    if (v16)
    {
      [(ADCompanionService *)self _logCompanionDeviceDiscoveryContextFor:v14 executionId:v12];
    }

    v34 = 0;
    goto LABEL_158;
  }

  v122 = v9;
  v121 = a6;
  v124 = v15;
  v17 = [(ADRapportLink *)self->_clientLink activeDevices];
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v17 count];
    *buf = 136315394;
    v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
    v154 = 2048;
    v155 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Found %lu active devices", buf, 0x16u);
  }

  v20 = [v11 idsDeviceUniqueIdentifier];
  [v14 setHasNullPeerIdentityServicesId:{objc_msgSend(v20, "length") == 0}];

  v21 = [v11 idsDeviceUniqueIdentifier];
  if (v21 && (v22 = v21, [v11 idsDeviceUniqueIdentifier], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "length"), v23, v22, v24))
  {
    v25 = [v11 idsDeviceUniqueIdentifier];
  }

  else
  {
    v26 = [v11 idsIdentifier];
    if (v26 && (v27 = v26, [v11 idsIdentifier], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "length"), v28, v27, v29))
    {
      v30 = [v11 idsIdentifier];
      v31 = [v30 hasPrefix:@"device:"];

      v32 = [v11 idsIdentifier];
      v25 = v32;
      if (v31)
      {
        v33 = [v32 _stripFZIDPrefix];

        v25 = v33;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  v130 = v14;
  v35 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = [v11 homeKitAccessoryIdentifier];
    v37 = [v11 rapportEffectiveIdentifier];
    *buf = 136315906;
    v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
    v154 = 2112;
    v155 = v25;
    v156 = 2112;
    v157 = v36;
    v158 = 2112;
    v159 = v37;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Looking for device with ids id: %@, homekitID : %@, rapportEffectiveID: %@", buf, 0x2Au);
  }

  v125 = v17;
  v126 = v12;
  v38 = self;
  if (![v25 length])
  {
    v128 = 0;
    v129 = 0;
    goto LABEL_54;
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v39 = v17;
  v40 = [v39 countByEnumeratingWithState:&v144 objects:v151 count:16];
  if (!v40)
  {
    v128 = 0;
    v129 = 0;
    goto LABEL_53;
  }

  v41 = v40;
  v128 = 0;
  v129 = 0;
  v42 = *v145;
  do
  {
    for (i = 0; i != v41; i = i + 1)
    {
      if (*v145 != v42)
      {
        objc_enumerationMutation(v39);
      }

      v44 = *(*(&v144 + 1) + 8 * i);
      v45 = [v44 idsDeviceIdentifier];
      v46 = [v45 isEqualToString:v25];

      if (v46)
      {
        v47 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Found the matching device using ids id.", buf, 0xCu);
        }

        [v130 setDiscoveryType:{objc_msgSend(v44, "getHALDiscoveryType")}];
        v48 = [(ADRapportLink *)v38->_clientLink localDevice];
        v49 = [v44 hasValidDiscoveryTypeForLocalDevice:v48];

        if (!v49)
        {
          v52 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%s Discovery type is invalid.", buf, 0xCu);
          }

          if ([v44 isDiscoveredOverWifiP2P])
          {
            v53 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s Found device over wifiP2P", buf, 0xCu);
            }

            v54 = 1019;
          }

          else
          {
            if (![v44 isDiscoveredOverBLE])
            {
              continue;
            }

            v55 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s Found device over BLE", buf, 0xCu);
            }

            v54 = 1020;
          }

          v56 = [AFError errorWithCode:v54];
          v51 = v129;
          v129 = v56;
          goto LABEL_45;
        }

        if (![v44 isDiscoveredOverWifiP2P])
        {
          v57 = v44;

          if (!v57)
          {
            v17 = v125;
            v12 = v126;
            self = v38;
            goto LABEL_55;
          }

          v58 = 1;
LABEL_131:
          v17 = v125;
          v12 = v126;
          self = v38;
          v14 = v130;
          goto LABEL_146;
        }

        if (v127)
        {
          v50 = v44;
          v51 = v128;
          v128 = v50;
LABEL_45:

          continue;
        }
      }
    }

    v41 = [v39 countByEnumeratingWithState:&v144 objects:v151 count:16];
  }

  while (v41);
LABEL_53:

  v17 = v125;
  v12 = v126;
  self = v38;
LABEL_54:

LABEL_55:
  v59 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s Searching using Rapport Identifier", buf, 0xCu);
  }

  v60 = [v11 rapportEffectiveIdentifier];
  v123 = v11;
  if (![v60 length])
  {
LABEL_81:

    goto LABEL_82;
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v61 = v17;
  v62 = [v61 countByEnumeratingWithState:&v140 objects:v150 count:16];
  if (!v62)
  {
    goto LABEL_80;
  }

  v63 = v62;
  v64 = *v141;
  while (2)
  {
    v65 = 0;
LABEL_61:
    if (*v141 != v64)
    {
      objc_enumerationMutation(v61);
    }

    v66 = *(*(&v140 + 1) + 8 * v65);
    v67 = [v66 effectiveIdentifier];
    v68 = [v67 isEqualToString:v60];

    if (!v68)
    {
      goto LABEL_78;
    }

    [v130 setDiscoveryType:{objc_msgSend(v66, "getHALDiscoveryType")}];
    v69 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s Found the matching device using rapportEffectiveIdentifier", buf, 0xCu);
    }

    v70 = [(ADRapportLink *)v38->_clientLink localDevice];
    v71 = [v66 hasValidDiscoveryTypeForLocalDevice:v70];

    if (!v71)
    {
      v74 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "%s Discovery type is invalid.", buf, 0xCu);
      }

      if ([v66 isDiscoveredOverWifiP2P])
      {
        v75 = 1019;
      }

      else
      {
        if (![v66 isDiscoveredOverBLE])
        {
          goto LABEL_78;
        }

        v75 = 1020;
      }

      v76 = [AFError errorWithCode:v75];
      v73 = v129;
      v129 = v76;
LABEL_77:

LABEL_78:
      if (v63 == ++v65)
      {
        v63 = [v61 countByEnumeratingWithState:&v140 objects:v150 count:16];
        if (!v63)
        {
LABEL_80:

          v11 = v123;
          v17 = v125;
          v12 = v126;
          self = v38;
          goto LABEL_81;
        }

        continue;
      }

      goto LABEL_61;
    }

    break;
  }

  if ([v66 isDiscoveredOverWifiP2P])
  {
    if (v127)
    {
      v72 = v66;
      v73 = v128;
      v128 = v72;
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v57 = v66;

  if (v57)
  {
LABEL_130:
    v58 = 1;
    v11 = v123;
    goto LABEL_131;
  }

  v11 = v123;
  v17 = v125;
  v12 = v126;
  self = v38;
LABEL_82:
  v77 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s Searching using HomeKit Identifier", buf, 0xCu);
  }

  v78 = [v11 homeKitAccessoryIdentifier];
  if (![v78 length])
  {
LABEL_108:

    goto LABEL_109;
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v79 = v17;
  v80 = [v79 countByEnumeratingWithState:&v136 objects:v149 count:16];
  if (!v80)
  {
LABEL_107:

    v11 = v123;
    v17 = v125;
    v12 = v126;
    self = v38;
    goto LABEL_108;
  }

  v81 = v80;
  v82 = *v137;
LABEL_87:
  v83 = 0;
  while (1)
  {
    if (*v137 != v82)
    {
      objc_enumerationMutation(v79);
    }

    v84 = *(*(&v136 + 1) + 8 * v83);
    v85 = [v84 homeKitIdentifier];
    v86 = [v85 UUIDString];
    v87 = [v86 isEqualToString:v78];

    if (!v87)
    {
      goto LABEL_105;
    }

    [v130 setDiscoveryType:{objc_msgSend(v84, "getHALDiscoveryType")}];
    v88 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "%s Found the matching device using homeKitAccessoryIdentifier", buf, 0xCu);
    }

    v89 = [(ADRapportLink *)v38->_clientLink localDevice];
    v90 = [v84 hasValidDiscoveryTypeForLocalDevice:v89];

    if (v90)
    {
      break;
    }

    v93 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "%s Discovery type is invalid.", buf, 0xCu);
    }

    if ([v84 isDiscoveredOverWifiP2P])
    {
      v94 = 1019;
      goto LABEL_103;
    }

    if ([v84 isDiscoveredOverBLE])
    {
      v94 = 1020;
LABEL_103:
      v95 = [AFError errorWithCode:v94];
      v92 = v129;
      v129 = v95;
LABEL_104:
    }

LABEL_105:
    if (v81 == ++v83)
    {
      v81 = [v79 countByEnumeratingWithState:&v136 objects:v149 count:16];
      if (v81)
      {
        goto LABEL_87;
      }

      goto LABEL_107;
    }
  }

  if ([v84 isDiscoveredOverWifiP2P])
  {
    if (v127)
    {
      v91 = v84;
      v92 = v128;
      v128 = v91;
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  v57 = v84;

  if (v57)
  {
    goto LABEL_130;
  }

  v11 = v123;
  v17 = v125;
  v12 = v126;
  self = v38;
LABEL_109:
  v96 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "%s Searching using uniqueIdentifierForPeer", buf, 0xCu);
  }

  v97 = +[ADPeerCloudService sharedInstance];
  v98 = [v97 uniqueIdentifierForPeer:v11];

  if ([v98 length])
  {
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v99 = v17;
    v100 = [v99 countByEnumeratingWithState:&v132 objects:v148 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v133;
      while (2)
      {
        for (j = 0; j != v101; j = j + 1)
        {
          if (*v133 != v102)
          {
            objc_enumerationMutation(v99);
          }

          v104 = *(*(&v132 + 1) + 8 * j);
          v105 = [v104 idsDeviceIdentifier];
          v106 = [v105 isEqualToString:v98];

          if (v106)
          {
            [v130 setDiscoveryType:{objc_msgSend(v104, "getHALDiscoveryType")}];
            v107 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "%s Found the matching device using uniqueIdentifier", buf, 0xCu);
            }

            v108 = [(ADRapportLink *)v38->_clientLink localDevice];
            v109 = [v104 hasValidDiscoveryTypeForLocalDevice:v108];

            if (v109)
            {
              if (![v104 isDiscoveredOverWifiP2P])
              {
                v57 = v104;
                goto LABEL_134;
              }

              if (v127)
              {
                v110 = v104;

                v128 = v110;
              }
            }
          }
        }

        v101 = [v99 countByEnumeratingWithState:&v132 objects:v148 count:16];
        if (v101)
        {
          continue;
        }

        break;
      }

      v57 = 0;
LABEL_134:
      v11 = v123;
      v17 = v125;
      v12 = v126;
      self = v38;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v14 = v130;

  if (!v57 && v122)
  {
    buf[0] = 0;
    v111 = [v11 afPeerInfo];
    v112 = sub_10001A498(v111, buf);

    if (buf[0] == 1)
    {
      v113 = [[ADPeerInfo alloc] initWithAFPeerInfo:v112];
      v131 = v129;
      v57 = [(ADCompanionService *)self _companionLinkDeviceForPeer:v113 allowsDeviceCircleLookup:0 allowsAWDLFallback:v127 error:&v131 logDiscoveryContextFor:0];
      v114 = v131;

      v129 = v114;
    }

    else
    {
      v57 = 0;
    }
  }

  v58 = v57 != 0;
  if (v57 | v128)
  {
    if (v57)
    {
LABEL_146:
      v115 = [v57 isMeDevice];
    }

    else
    {
      v115 = [v128 isMeDevice];
      v58 = 0;
    }

    [v14 setIsMeDevice:v115];
  }

  else
  {
    v119 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
      v154 = 2112;
      v155 = v11;
      _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%s unable to find device with peer: %@", buf, 0x16u);
    }

    if (!v129)
    {
      v129 = [AFError errorWithCode:1011];
    }

    v58 = 0;
    v57 = 0;
    v128 = 0;
    if (v121)
    {
      *v121 = v129;
    }
  }

  if (v124)
  {
    [(ADCompanionService *)self _logCompanionDeviceDiscoveryContextFor:v14 executionId:v12];
  }

  if (v58)
  {
    v116 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v153 = "[ADCompanionService _companionLinkDeviceForPeer:allowsDeviceCircleLookup:allowsAWDLFallback:error:logDiscoveryContextFor:]";
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "%s Device found over iWifi will be favored.", buf, 0xCu);
    }
  }

  if (v57)
  {
    v117 = v57;
  }

  else
  {
    v117 = v128;
  }

  v34 = v117;

LABEL_158:

  return v34;
}

- (id)discoveryTypeForPeer:(id)a3
{
  v44 = a3;
  if (!v44)
  {
    v44 = 0;
    goto LABEL_5;
  }

  v4 = [(ADPeerInfo *)v44 idsDeviceUniqueIdentifier];
  if (![v4 length])
  {
    v6 = [(ADPeerInfo *)v44 assistantIdentifier];
    v7 = [v6 length];

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_35;
  }

LABEL_7:
  v49 = 0;
  v8 = [(ADPeerInfo *)v44 afPeerInfo];
  v9 = sub_10001A498(v8, &v49);

  v36 = v9;
  if (v49 == 1)
  {
    v10 = [[ADPeerInfo alloc] initWithAFPeerInfo:v9];

    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v51 = "[ADCompanionService discoveryTypeForPeer:]";
      v52 = 2112;
      v53 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Improved peer info from Device Circle Manager: %@", buf, 0x16u);
    }

    v44 = v10;
  }

  v12 = [(ADRapportLink *)self->_clientLink activeDevices];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v33 = v13;
    v34 = [v12 count];
    *buf = 136315394;
    v51 = "[ADCompanionService discoveryTypeForPeer:]";
    v52 = 2048;
    v53 = v34;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s Found %lu active devices", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (!v14)
  {
    v5 = 0;
    goto LABEL_34;
  }

  v16 = v14;
  v5 = 0;
  v17 = *v46;
  *&v15 = 136315650;
  v35 = v15;
  v41 = *v46;
  do
  {
    v18 = 0;
    v19 = v5;
    v42 = v16;
    do
    {
      if (*v46 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v45 + 1) + 8 * v18);
      v21 = [v20 idsDeviceIdentifier];
      v22 = [(ADPeerInfo *)v44 idsDeviceUniqueIdentifier];
      if ([v21 isEqualToString:v22])
      {
        goto LABEL_23;
      }

      v23 = [v20 _ad_siriSharedDataProtobuf];
      v24 = [v23 assistantId];
      v25 = [(ADPeerInfo *)v44 assistantIdentifier];
      if ([v24 isEqualToString:v25])
      {
        goto LABEL_22;
      }

      v26 = [v20 effectiveIdentifier];
      v27 = [(ADPeerInfo *)v44 rapportEffectiveIdentifier];
      v40 = v26;
      if ([v26 isEqualToString:v27])
      {

LABEL_22:
        v17 = v41;
        v16 = v42;
LABEL_23:

        goto LABEL_24;
      }

      v38 = [v20 homeKitIdentifier];
      [v38 UUIDString];
      v29 = v37 = v27;
      v30 = [(ADPeerInfo *)v44 homeKitAccessoryIdentifier];
      v39 = [v29 isEqualToString:v30];

      v17 = v41;
      v16 = v42;
      if ((v39 & 1) == 0)
      {
        v5 = v19;
        goto LABEL_27;
      }

LABEL_24:
      v5 = [v20 getAceDiscoveryType];

      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = v35;
        v51 = "[ADCompanionService discoveryTypeForPeer:]";
        v52 = 2112;
        v53 = v5;
        v54 = 2112;
        v55 = v44;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s Found discovery type %@ for device with peerInfo: %@", buf, 0x20u);
      }

      if ([v20 isDiscoveredOverInfraWifi])
      {
        goto LABEL_34;
      }

LABEL_27:
      v18 = v18 + 1;
      v19 = v5;
    }

    while (v16 != v18);
    v31 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    v16 = v31;
  }

  while (v31);
LABEL_34:

LABEL_35:

  return v5;
}

- (void)_checkCompanionIdentifierStatus
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(ADRapportLink *)self->_clientLink localDevice];
  v4 = v3;
  if (v3 && ![v3 personalDeviceState])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADCompanionService _checkCompanionIdentifierStatus]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s posting notification to request companion update", &v7, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.personal.requests.companion.update", 0, 0, 1u);
  }
}

- (void)_sendHeartbeatMessage:(id)a3 targetDeviceIdentifier:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 objectForKey:@"messageID"];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v45 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]";
    v46 = 2112;
    v47 = *&v13;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ -> %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v15 = +[ADFMDMonitor sharedManager];
  v16 = [v15 isLostModeActive];

  if (!v16)
  {
    v19 = 0;
    if (v11 && self->_clientAWDLTransportLink)
    {
      if ([(NSString *)self->_clientAWDLTransportLinkDestinationId isEqualToString:v11, 0])
      {
        [(ADCompanionService *)self _scheduleOrExtendAWDLClientLinkTimer];
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }
    }

    v20 = [(ADCompanionService *)self _companionLinkDeviceForUniqueIDSIdentifier:v11 allowsAWDLFallback:v19];
    v18 = v20;
    if (self->_isListening)
    {
      if (v20)
      {
        if (a5 > 0.0)
        {
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10025842C;
          v40[3] = &unk_10051CF58;
          v21 = v12;
          v41 = v21;
          v34 = [(ADCompanionService *)self _startTimerForMessage:v13 targetDevice:v18 timeout:0 heartbeat:v40 completion:a5];
          v22 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v45 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]";
            v46 = 2112;
            v47 = *&v13;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s sending message: %@", buf, 0x16u);
          }

          clientLink = self->_clientLink;
          v24 = [v18 identifier];
          v42 = RPOptionStatusFlags;
          v43 = &off_100533D40;
          v25 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1002584A8;
          v35[3] = &unk_100517FE8;
          v39 = v34;
          v36 = v13;
          v37 = self;
          v38 = v21;
          [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.request.heartbeat" request:v10 destinationID:v24 options:v25 responseHandler:v35];

          v26 = v41;
          goto LABEL_34;
        }

        v33 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v45 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]";
          v46 = 2048;
          v47 = a5;
          v48 = 2112;
          v49 = v13;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s invalid timeout (%f) for message: %@", buf, 0x20u);
          if (!v12)
          {
            goto LABEL_35;
          }
        }

        else if (!v12)
        {
          goto LABEL_35;
        }

        v28 = 50;
      }

      else
      {
        v29 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v45 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]";
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s unable to find remote device for execution", buf, 0xCu);
        }

        if (AFIsInternalInstall())
        {
          v30 = AFSiriLogContextPerformance;
          v31 = os_signpost_id_generate(AFSiriLogContextPerformance);
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v32 = v31;
            if (os_signpost_enabled(v30))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, v32, "CompanionDeviceNotFound", "ADCompanionService _sendHeartbeatMessage", buf, 2u);
            }
          }
        }

        if (!v12)
        {
          v18 = 0;
          goto LABEL_35;
        }

        v28 = 1000;
      }
    }

    else
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v45 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s companion service is disabled", buf, 0xCu);
        if (!v12)
        {
          goto LABEL_35;
        }
      }

      else if (!v12)
      {
        goto LABEL_35;
      }

      v28 = 1009;
    }

    v26 = [AFError errorWithCode:v28];
    (*(v12 + 2))(v12, v26);
LABEL_34:

    goto LABEL_35;
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v45 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]";
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Lost mode is active, not sending any outbound requests", buf, 0xCu);
    if (!v12)
    {
      goto LABEL_36;
    }

    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v18 = [AFError errorWithCode:1003];
    (*(v12 + 2))(v12, v18);
LABEL_35:
  }

LABEL_36:
}

- (BOOL)_cancelTimerForMessage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_timerInfo objectForKey:v4];
    v6 = [v5 heartbeatTimer];
    [v6 cancelIfNotAlreadyCanceled];

    v7 = [v5 requestTimer];
    v8 = [v7 cancelIfNotAlreadyCanceled];
    [(NSMutableDictionary *)self->_timerInfo removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_timerInfo count])
    {
      timerInfo = self->_timerInfo;
      self->_timerInfo = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_startTimerForMessage:(id)a3 targetDevice:(id)a4 timeout:(double)a5 heartbeat:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v49 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]";
    v50 = 2112;
    v51 = *&v12;
    v52 = 2112;
    v53 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s %@ -> %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (!v12)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v49 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]";
      v18 = "%s message ID is null";
      v19 = v21;
      v20 = 12;
      goto LABEL_17;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v16 = [(NSMutableDictionary *)self->_timerInfo objectForKey:v12];

  if (v16)
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]";
      v50 = 2112;
      v51 = *&v12;
      v18 = "%s already tracking timer for message: %@";
      v19 = v17;
      v20 = 22;
LABEL_17:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (a5 <= 0.0)
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v49 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]";
      v50 = 2048;
      v51 = a5;
      v52 = 2112;
      v53 = v12;
      v18 = "%s invalid timeout (%f) for message: %@";
      v19 = v29;
      v20 = 32;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v38 = [v13 idsDeviceIdentifier];
  v22 = [v38 length];
  v23 = v22 != 0;
  if (v22)
  {
    if (!self->_timerInfo)
    {
      v24 = objc_opt_new();
      timerInfo = self->_timerInfo;
      self->_timerInfo = v24;
    }

    v26 = objc_opt_new();
    objc_initWeak(buf, self);
    if (v8)
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100258C94;
      v43[3] = &unk_100518088;
      v44 = v12;
      objc_copyWeak(v47, buf);
      v47[1] = *&a5;
      *&v47[2] = a5 * 0.5;
      v45 = self;
      v46 = v38;
      v27 = objc_retainBlock(v43);
      v28 = [[AFWatchdogTimer alloc] initWithTimeoutInterval:self->_serialQueue onQueue:v27 timeoutHandler:a5 * 0.5];
      [v26 setHeartbeatTimer:v28];
      v37 = v28;

      objc_destroyWeak(v47);
    }

    else
    {
      v37 = 0;
    }

    v32 = [AFWatchdogTimer alloc];
    serialQueue = self->_serialQueue;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100258F0C;
    v39[3] = &unk_1005180B0;
    v34 = v12;
    v40 = v34;
    objc_copyWeak(&v42, buf);
    v41 = v14;
    v35 = [v32 initWithTimeoutInterval:serialQueue onQueue:v39 timeoutHandler:a5];
    [v26 setRequestTimer:v35];
    [(NSMutableDictionary *)self->_timerInfo setObject:v26 forKey:v34];
    v36 = +[NSProcessInfo processInfo];
    [v36 systemUptime];
    [v26 setStartTime:?];

    [v35 start];
    [v37 start];

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  else
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]";
      v50 = 2112;
      v51 = *&v13;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s target device lacks IDS identifier: %@", buf, 0x16u);
    }
  }

LABEL_19:
  return v23;
}

- (void)getSharedCompanionInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCompanionService getSharedCompanionInfoWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100259400;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (void)getPlaybackDeviceListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCompanionService getPlaybackDeviceListWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002595C0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(serialQueue, v8);
}

- (void)_updateHashedRouteIDForDevice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADCompanionService _updateHashedRouteIDForDevice:]";
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  playbackDeviceIDs = self->_playbackDeviceIDs;
  v7 = [v4 identifier];
  v8 = [(NSMutableDictionary *)playbackDeviceIDs objectForKey:v7];

  if (v8)
  {
    v9 = [v4 _ad_siriSharedDataProtobuf];
    v10 = v9;
    if (!v9)
    {
LABEL_12:

      goto LABEL_13;
    }

    v11 = [v9 airplayRouteId];
    if (v11)
    {
      v12 = [v8 objectForKey:v11];

      if (!v12)
      {
        v13 = [v11 dataUsingEncoding:4];
        v14 = +[ADSecurityService sharedService];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100259A54;
        v15[3] = &unk_100518038;
        v16 = v4;
        v17 = self;
        v18 = v11;
        [v14 processData:v13 usingProcedure:1 completion:v15];

LABEL_10:
      }
    }

    else if ([v8 count])
    {
      [v8 removeAllObjects];
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"ADCompanionServicePlaybackDevicesDidChangeNotification" object:0];
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (id)_remotePlaybackDeviceForDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [v4 _ad_siriSharedDataProtobuf];
  if (v5)
  {
    v6 = objc_alloc_init(SARemotePlaybackDevice);
    v7 = [v5 assistantId];
    [v6 setAssistantId:v7];

    v8 = [v5 userAssignedName];
    [v6 setDeviceName:v8];

    v9 = [v5 languageCode];
    [v6 setLanguage:v9];

    [v6 setSiriEnabled:{objc_msgSend(v5, "siriEnabled")}];
    v10 = [v5 userAgent];
    [v6 setUserAgent:v10];

    v11 = [v5 storeFrontId];
    [v6 setStorefront:v11];

    v12 = [v5 userToken];
    [v6 setUserToken:v12];

    v13 = [v5 utsRequiredRequestData];
    v14 = [v13 _ad_dictionaryRepresentation];
    [v6 setUtsRequiredRequestKeyValuePairs:v14];

    playbackDeviceIDs = self->_playbackDeviceIDs;
    v16 = [v4 identifier];
    v17 = [(NSMutableDictionary *)playbackDeviceIDs objectForKey:v16];

    v18 = [v5 airplayRouteId];
    v19 = [v17 objectForKey:v18];
    [v6 setHashedRouteId:v19];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateStoreFrontIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCompanionService _updateStoreFrontIdentifierWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = +[ADAssistantDataManager sharedDataManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10025A11C;
  v8[3] = &unk_10051D6C8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getiTunesStoreFrontIdentifierWithCompletion:v8];
}

- (void)_updateSharedDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCompanionService _updateSharedDataWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = +[ADCommandCenter sharedCommandCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10025A4F0;
  v8[3] = &unk_100518010;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getSharedDataForPeer:v8];
}

- (void)_getSharedDataFromCompanionLinkDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]";
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v9 = +[ADFMDMonitor sharedManager];
  v10 = [v9 isLostModeActive];

  if (v10)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Lost mode is active, not sending any outbound requests", buf, 0xCu);
    }

    v12 = 1003;
  }

  else
  {
    v14 = [v6 idsDeviceIdentifier];
    v15 = [v14 length];

    if (v15)
    {
      v13 = [(ADCompanionService *)self _newRequestDictionary];
      v16 = [v13 objectForKey:@"messageID"];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10025AA40;
      v30[3] = &unk_10051CF58;
      v17 = v7;
      v31 = v17;
      v18 = [(ADCompanionService *)self _startTimerForMessage:v16 targetDevice:v6 heartbeat:1 completion:v30];
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v35 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]";
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s sending message: %@", buf, 0x16u);
      }

      clientLink = self->_clientLink;
      v21 = [v6 identifier];
      v32 = RPOptionStatusFlags;
      v33 = &off_100533D40;
      v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10025AB24;
      v25[3] = &unk_100517FE8;
      v29 = v18;
      v26 = v16;
      v27 = self;
      v28 = v17;
      v23 = v16;
      [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.request.shared.data" request:v13 destinationID:v21 options:v22 responseHandler:v25];

      goto LABEL_12;
    }

    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]";
      v36 = 2112;
      v37 = v6;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s device does not have an IDS identifier: %@", buf, 0x16u);
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
      goto LABEL_13;
    }

    v12 = 0;
  }

  v13 = [AFError errorWithCode:v12];
  (*(v7 + 2))(v7, 0, v13);
LABEL_12:

LABEL_13:
}

- (void)startListeningForRemote
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025AEA4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v41 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]";
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@, %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v12 = +[ADFMDMonitor sharedManager];
  v13 = [v12 isLostModeActive];

  if (!v13)
  {
    [(ADCompanionService *)self _checkCompanionIdentifierStatus];
    v15 = [(ADCompanionService *)self _newRequestDictionaryWithRequestInfo:v8];
    v16 = [(ADCompanionService *)self _getExecutionIdFromRequest:v15];
    v17 = [(ADCompanionService *)self _companionLinkDeviceForPeer:v9 allowsDeviceCircleLookup:1 logDiscoveryContextFor:v16];

    if (self->_isListening)
    {
      if (v17)
      {
        v18 = [v15 objectForKey:@"messageID"];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10025B3C4;
        v36[3] = &unk_10051CF58;
        v19 = v10;
        v37 = v19;
        v30 = [(ADCompanionService *)self _startTimerForMessage:v18 targetDevice:v17 heartbeat:1 completion:v36];
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v41 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]";
          v42 = 2112;
          v43 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s sending message: %@", buf, 0x16u);
        }

        clientLink = self->_clientLink;
        v21 = [v17 identifier];
        v38 = RPOptionStatusFlags;
        v39 = &off_100533D40;
        v22 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10025B3E0;
        v31[3] = &unk_100517FE8;
        v35 = v30;
        v32 = v18;
        v33 = self;
        v34 = v19;
        v23 = v18;
        [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.request.remote" request:v15 destinationID:v21 options:v22 responseHandler:v31];

        goto LABEL_15;
      }

      v25 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s unable to find remote device for execution", buf, 0xCu);
      }

      if (AFIsInternalInstall())
      {
        v26 = AFSiriLogContextPerformance;
        v27 = os_signpost_id_generate(AFSiriLogContextPerformance);
        if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = v27;
          if (os_signpost_enabled(v26))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_EVENT, v28, "CompanionDeviceNotFound", "ADCompanionService _startRemoteRequest", buf, 2u);
          }
        }
      }
    }

    else
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s companion service is disabled", buf, 0xCu);
      }
    }

    (*(v10 + 2))(v10, 0);
LABEL_15:

    goto LABEL_16;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v41 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]";
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Lost mode is active, not sending any outbound requests", buf, 0xCu);
  }

  (*(v10 + 2))(v10, 0);
LABEL_16:
}

- (void)startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCompanionService startRemoteRequest:onPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!v8 && v10)
  {
    v10[2](v10, 0);
  }

  serialQueue = self->_serialQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10025B718;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(serialQueue, v16);
}

- (void)_cleanUpMessageWaitContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCompanionService _cleanUpMessageWaitContext:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  [(NSMutableSet *)self->_waitContexts removeObject:v4];
  if (![(NSMutableSet *)self->_waitContexts count])
  {
    waitContexts = self->_waitContexts;
    self->_waitContexts = 0;
  }
}

- (void)_waitForMessageIDs:(id)a3 withContext:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count])
  {
    v13 = [[NSMutableSet alloc] initWithArray:v10];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [v11 seenMessageIDs];
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v15)
    {
      v16 = *v31;
      do
      {
        v17 = 0;
        do
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [v13 removeObject:*(*(&v30 + 1) + 8 * v17)];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v15);
    }

    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v35 = "[ADCompanionService _waitForMessageIDs:withContext:timeout:completion:]";
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s %@ waiting on %@", buf, 0x20u);
    }

    [v11 setWaitingOnMessageIDs:v13];
    [v11 setCompletion:v12];
    [(ADCompanionService *)self _unblockWaitContext:v11 forMessageID:0];
    v19 = [v11 completion];

    if (v19)
    {
      objc_initWeak(buf, v11);
      v20 = [AFWatchdogTimer alloc];
      serialQueue = self->_serialQueue;
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_10025BB88;
      v27 = &unk_10051C650;
      objc_copyWeak(&v29, buf);
      v28 = self;
      v22 = [v20 initWithTimeoutInterval:serialQueue onQueue:&v24 timeoutHandler:a5];
      [v11 setTimer:{v22, v24, v25, v26, v27}];
      [v22 start];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[ADCompanionService _waitForMessageIDs:withContext:timeout:completion:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Nothing to wait on invoking now", buf, 0xCu);
    }

    v12[2](v12);
  }
}

- (void)_unblockWaitContext:(id)a3 forMessageID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[ADCompanionService _unblockWaitContext:forMessageID:]";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Unblocking %@ with %@", &v15, 0x20u);
  }

  if (v6)
  {
    v8 = [v5 seenMessageIDs];
    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableArray);
      [v5 setSeenMessageIDs:v8];
    }

    [v8 addObject:v6];
    v9 = [v5 waitingOnMessageIDs];
    [v9 removeObject:v6];
  }

  v10 = [v5 completion];
  if (v10)
  {
    v11 = [v5 waitingOnMessageIDs];
    v12 = [v11 count];

    if (!v12)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[ADCompanionService _unblockWaitContext:forMessageID:]";
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Invoking wait context completion %@", &v15, 0x16u);
      }

      v14 = [v5 timer];
      [v14 cancel];

      [v5 setCompletion:0];
      v10[2](v10);
    }
  }
}

- (void)_unblockWaitingForMessageIDs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    waitContexts = self->_waitContexts;
    if (waitContexts)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(NSMutableSet *)waitContexts allObjects];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(ADCompanionService *)self _unblockWaitContext:*(*(&v11 + 1) + 8 * v10) forMessageID:v4];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (id)_initializeNewMessageWaitContext
{
  v3 = objc_alloc_init(ADCompanionServiceMessageWaitContext);
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCompanionService _initializeNewMessageWaitContext]";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  waitContexts = self->_waitContexts;
  if (!waitContexts)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_waitContexts;
    self->_waitContexts = v6;

    waitContexts = self->_waitContexts;
  }

  [(NSMutableSet *)waitContexts addObject:v3];

  return v3;
}

- (void)_tearDownIntermediateMessageIDs:(id)a3 forPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCompanionService *)self _rapportEffectiveIdForPeer:v7];
  v9 = [v8 length];
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[ADCompanionService _tearDownIntermediateMessageIDs:forPeer:]";
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Removed %@", &v12, 0x16u);
    }

    v11 = [(NSMutableDictionary *)self->_intermediateMessageIDs objectForKey:v8];
    [v11 removeObject:v6];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[ADCompanionService _tearDownIntermediateMessageIDs:forPeer:]";
    v14 = 2112;
    v15 = v7;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to get rapportEffectiveIdentifier for peer %@", &v12, 0x16u);
  }
}

- (void)_recordIntermediateMessageID:(id)a3 forPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(ADCompanionService *)self _rapportEffectiveIdForPeer:v7];
    if ([v9 length])
    {
      v10 = [(NSMutableDictionary *)self->_intermediateMessageIDs objectForKey:v9];
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v18 = v11;
        *buf = 136316162;
        v25 = "[ADCompanionService _recordIntermediateMessageID:forPeer:]";
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v9;
        v32 = 2048;
        v33 = [v10 count];
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Recorded %@ for peer: %@, rapportEffectiveIdentifier=%@, messageIDSets count: %lu", buf, 0x34u);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v19 + 1) + 8 * i) addObject:{v6, v19}];
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[ADCompanionService _recordIntermediateMessageID:forPeer:]";
        v26 = 2112;
        v27 = v8;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to get rapportEffectiveIdentifier for peer %@", buf, 0x16u);
      }
    }
  }
}

- (id)_setUpNewIntermediateIDsSetForPeer:(id)a3
{
  v4 = a3;
  if (!self->_intermediateMessageIDs)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    intermediateMessageIDs = self->_intermediateMessageIDs;
    self->_intermediateMessageIDs = v5;
  }

  v7 = [(ADCompanionService *)self _rapportEffectiveIdForPeer:v4];
  if ([v7 length])
  {
    v8 = [(NSMutableDictionary *)self->_intermediateMessageIDs objectForKey:v7];
    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableSet);
      [(NSMutableDictionary *)self->_intermediateMessageIDs setObject:v8 forKey:v7];
    }

    v9 = objc_alloc_init(NSMutableArray);
    [v8 addObject:v9];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADCompanionService _setUpNewIntermediateIDsSetForPeer:]";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to get rapportEffectiveIdentifier for peer %@", &v12, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_rapportEffectiveIdForPeer:(id)a3
{
  v3 = a3;
  v4 = [v3 rapportEffectiveIdentifier];
  if (![v4 length])
  {
    v5 = [v3 afPeerInfo];
    v6 = sub_10001A498(v5, 0);
    v7 = [v6 rapportEffectiveIdentifier];

    v4 = v7;
  }

  return v4;
}

- (id)_getExecutionIdFromRequest:(id)a3
{
  v3 = [a3 objectForKey:@"executionContext"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:@"executionID"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldLogDiscoveryContextForRequestId:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!v4)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "[ADCompanionService _shouldLogDiscoveryContextForRequestId:]";
      v11 = "%s Received nil execution id, skip logging discovery event.";
      v12 = v14;
      v13 = 12;
      goto LABEL_16;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_14;
  }

  discoveryContextLoggedForExecutionIds = self->_discoveryContextLoggedForExecutionIds;
  if (!discoveryContextLoggedForExecutionIds)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_discoveryContextLoggedForExecutionIds;
    self->_discoveryContextLoggedForExecutionIds = v6;

    discoveryContextLoggedForExecutionIds = self->_discoveryContextLoggedForExecutionIds;
  }

  v8 = [(NSMutableSet *)discoveryContextLoggedForExecutionIds containsObject:v4];
  v9 = AFSiriLogContextDaemon;
  v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      v17 = 136315394;
      v18 = "[ADCompanionService _shouldLogDiscoveryContextForRequestId:]";
      v19 = 2112;
      v20 = v4;
      v11 = "%s Event has already been logged once for %@";
      v12 = v9;
      v13 = 22;
LABEL_16:
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v11, &v17, v13);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v17 = 136315394;
    v18 = "[ADCompanionService _shouldLogDiscoveryContextForRequestId:]";
    v19 = 2112;
    v20 = v4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Logging event for: %@", &v17, 0x16u);
  }

  if ([(NSMutableSet *)self->_discoveryContextLoggedForExecutionIds count]>= 0x33)
  {
    [(NSMutableSet *)self->_discoveryContextLoggedForExecutionIds removeAllObjects];
  }

  [(NSMutableSet *)self->_discoveryContextLoggedForExecutionIds addObject:v4];
  v15 = 1;
LABEL_14:

  return v15;
}

- (void)_executeRemoteRequest:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 throughProxyDevice:(id)a7 completion:(id)a8
{
  v10 = a6;
  v52 = a5;
  v13 = a3;
  v14 = a4;
  v54 = a7;
  v15 = a8;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
    v83 = 2112;
    v84 = v13;
    v85 = 2112;
    v86 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s %@, %@", buf, 0x20u);
  }

  v55 = v13;
  dispatch_assert_queue_V2(self->_serialQueue);
  v17 = +[ADFMDMonitor sharedManager];
  v18 = [v17 isLostModeActive];

  if (v18)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Lost mode is active, not sending any outbound requests", buf, 0xCu);
    }

    v20 = [AFError errorWithCode:1003];
    v15[2](v15, 0, v20);
    goto LABEL_51;
  }

  [(ADCompanionService *)self _checkCompanionIdentifierStatus];
  if (self->_isListening)
  {
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_10025D350;
    v76[3] = &unk_100517EF8;
    v21 = v13;
    v77 = v21;
    v78 = self;
    v49 = v15;
    v80 = v49;
    v22 = v14;
    v79 = v22;
    v51 = objc_retainBlock(v76);
    v75 = 0;
    v23 = [(ADCompanionService *)self _getExecutionIdFromRequest:v21];
    v53 = [(ADCompanionService *)self _companionLinkDeviceForPeer:v22 allowsDeviceCircleLookup:1 allowsAWDLFallback:v10 error:&v75 logDiscoveryContextFor:v23];
    v50 = v75;

    if (v53)
    {
      v24 = [v53 isDiscoveredOverWifiP2P];
    }

    else
    {
      v24 = 0;
    }

    clientAWDLTransportLinkDestinationId = self->_clientAWDLTransportLinkDestinationId;
    if (clientAWDLTransportLinkDestinationId)
    {
      v27 = [v22 idsDeviceUniqueIdentifier];
      v28 = [(NSString *)clientAWDLTransportLinkDestinationId isEqualToString:v27];
    }

    else
    {
      v28 = 0;
    }

    if (v53 && (([v53 isDiscoveredOverInfraWifi] & 1) != 0 || (-[ADRapportLink localDevice](self->_clientLink, "localDevice"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v53, "willUseProxyCommunicationWithLocalDevice:", v29), v29, v30)))
    {
      v31 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s Device found over iWifi or destination device is a proxyHost on local device.", buf, 0xCu);
      }

      (v51[2])(v51, v53, 0);
    }

    else if (v10 && (+[AFFeatureFlags isAWDLFallbackForPersonalRequestsEnabled]& (v24 | v28)) == 1)
    {
      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s Using AWDL message link for sending message.", buf, 0xCu);
      }

      v33 = v53;
      if (!v53)
      {
        v34 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s We are responding back to a request received over AWDL. Blindly use existing AWDL link with a faux destinationDevice", buf, 0xCu);
        }

        v35 = objc_alloc_init(RPCompanionLinkDevice);
        [v35 setIdentifier:self->_clientAWDLTransportLinkDestinationId];
        v33 = v35;
      }

      if (self->_clientAWDLTransportLink && (v36 = self->_clientAWDLTransportLinkDestinationId, v53 = v33, [v33 identifier], v37 = objc_claimAutoreleasedReturnValue(), LODWORD(v36) = -[NSString isEqualToString:](v36, "isEqualToString:", v37), v37, v33 = v53, v36))
      {
        v38 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s _clientAWDLTransportLink already exists, no need for activation. Sending message.", buf, 0xCu);
        }

        (v51[2])(v51, v53, 1);
        [(ADCompanionService *)self _scheduleOrExtendAWDLClientLinkTimer];
      }

      else
      {
        v43 = v33;
        v44 = [(ADCompanionService *)self _setupClientAWDLTransportLinkForDestination:?];
        objc_initWeak(buf, v44);

        WeakRetained = objc_loadWeakRetained(buf);
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_10025D898;
        v70[3] = &unk_100517F20;
        objc_copyWeak(&v73, buf);
        v72 = v51;
        v46 = v43;
        v71 = v46;
        v74 = 1;
        [WeakRetained setStateUpdateHandler:v70];

        v47 = objc_loadWeakRetained(buf);
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_10025D9D8;
        v66[3] = &unk_100517F48;
        v68 = v49;
        v66[4] = self;
        v53 = v46;
        v67 = v53;
        objc_copyWeak(&v69, buf);
        [(ADCompanionService *)self _activateAWDLMessageLink:v47 completion:v66];

        objc_destroyWeak(&v69);
        objc_destroyWeak(&v73);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10025DB70;
      v60[3] = &unk_100517F70;
      v63 = v10;
      v64 = v28;
      v65 = v24;
      v61 = v50;
      v62 = v49;
      v39 = objc_retainBlock(v60);
      v40 = v39;
      if (v52)
      {
        if (v54)
        {
          v41 = [(ADCompanionService *)self _companionLinkDeviceForUniqueIDSIdentifier:?];
          if (v41)
          {
            v42 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
              v83 = 2112;
              v84 = v54;
              _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s #hal Sending command via proxy: %@", buf, 0x16u);
            }

            (v51[2])(v51, v41, 0);
          }

          else
          {
            v40[2](v40);
          }
        }

        else
        {
          v48 = +[ADDeviceCircleManager sharedInstance];
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_10025DDC8;
          v56[3] = &unk_100517FC0;
          v56[4] = self;
          v57 = v51;
          v59 = 0;
          v58 = v40;
          [v48 getContextCollectorDeviceIdentifiersWithCompletion:v56];
        }
      }

      else
      {
        (v39[2])(v39);
      }
    }

    v20 = v77;
    goto LABEL_51;
  }

  v25 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v82 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]";
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s companion service is disabled", buf, 0xCu);
    if (!v15)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

  if (v15)
  {
LABEL_12:
    v20 = [AFError errorWithCode:1009];
    v15[2](v15, 0, v20);
LABEL_51:
  }

LABEL_52:
}

- (void)startRemoteExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 throughProxyDevice:(id)a6 executionContext:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v34 = "[ADCompanionService startRemoteExecution:onPeer:allowsRelay:throughProxyDevice:executionContext:completion:]";
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s command = %@, peer = %@, executionContext = %@", buf, 0x2Au);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025EAE8;
  block[3] = &unk_100517E80;
  block[4] = self;
  v27 = v14;
  v32 = a5;
  v28 = v15;
  v29 = v17;
  v30 = v16;
  v31 = v18;
  v21 = v18;
  v22 = v16;
  v23 = v17;
  v24 = v15;
  v25 = v14;
  dispatch_async(serialQueue, block);
}

- (void)startRemoteSerialzedCommandExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[ADCompanionService startRemoteSerialzedCommandExecution:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10025EDDC;
  v24[3] = &unk_100517E58;
  v24[4] = self;
  v25 = v14;
  v29 = a5;
  v26 = v16;
  v27 = v15;
  v30 = a6;
  v28 = v17;
  v20 = v17;
  v21 = v15;
  v22 = v16;
  v23 = v14;
  dispatch_async(serialQueue, v24);
}

- (void)sendStereoPartnerMessage:(id)a3 messageType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCompanionService sendStereoPartnerMessage:messageType:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10025F080;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(serialQueue, v16);
}

- (BOOL)_isDevicePartOfCurrentMediaSystem:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v6 = [v5 mediaSystemIdentifier];

  if (v6)
  {
    v7 = [(ADRapportLink *)self->_clientLink localDevice];
    v8 = [v7 mediaSystemIdentifier];
    v9 = [v6 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getStereoPartnerIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025F268;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_postConfigurationChangedNotification
{
  if (AFIsHorseman())
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v4 = &off_100533D70;
    if (self->_isStereoPairConfigured)
    {
      v4 = &off_100533D58;
    }

    v8 = @"deviceCount";
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v3 logEventWithType:5101 context:v5];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ADCompanionServiceStereoConfigurationDidChangeNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFStereoConfigurationaDidChangeDarwinNotification, 0, 0, 1u);
}

- (void)_setIsStereoPairConfigured:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_isStereoPairConfigured != v3)
  {
    self->_isStereoPairConfigured = v3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADCompanionService _setIsStereoPairConfigured:]";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s media system is configured: %d", &v6, 0x12u);
    }
  }
}

- (void)setStereoPartnerIDSIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_stereoPartnerIDSIdentifier != v4 && ![(NSString *)v4 isEqualToString:?])
  {
    v6 = [(NSString *)v5 copy];
    stereoPartnerIDSIdentifier = self->_stereoPartnerIDSIdentifier;
    self->_stereoPartnerIDSIdentifier = v6;

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = self->_stereoPartnerIDSIdentifier;
      v10 = 136315394;
      v11 = "[ADCompanionService setStereoPartnerIDSIdentifier:]";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s stereo partner has changed: %@", &v10, 0x16u);
    }

    [(ADCompanionService *)self _setIsStereoPairConfigured:self->_stereoPartnerIDSIdentifier != 0];
    [(ADCompanionService *)self _postConfigurationChangedNotification];
  }
}

- (void)_updateMediaSystemState
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[ADCompanionService _updateMediaSystemState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (AFIsHorseman())
  {
    v4 = [(ADRapportLink *)self->_clientLink localDevice];
    v5 = [v4 mediaSystemIdentifier];

    if (v5)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [(ADRapportLink *)self->_clientLink activeDevices];
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = *v15;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            if ([(ADCompanionService *)self _isDevicePartOfCurrentMediaSystem:v10])
            {
              v11 = [(ADRapportLink *)self->_clientLink localDevice];
              v12 = [v10 hasValidDiscoveryTypeForLocalDevice:v11];

              if (v12)
              {
                v7 = v10;
                goto LABEL_17;
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v13 = [v7 idsDeviceIdentifier];
      [(ADCompanionService *)self setStereoPartnerIDSIdentifier:v13];
    }

    else
    {
      [(ADCompanionService *)self setStereoPartnerIDSIdentifier:0];
    }
  }
}

- (void)removeMessageHandler:(id)a3 forMessageType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[ADCompanionService removeMessageHandler:forMessageType:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@, delegate: %@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025F938;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(serialQueue, block);
}

- (void)_removeMessageHandler:(id)a3 forMessageType:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [(NSMapTable *)self->_handlerForMessageType objectForKey:v7];
  v9 = [v8 isEqual:v6];

  if (v9)
  {
    [(NSMapTable *)self->_handlerForMessageType removeObjectForKey:v7];
    if (![(NSMapTable *)self->_handlerForMessageType count])
    {
      handlerForMessageType = self->_handlerForMessageType;
      self->_handlerForMessageType = 0;
    }
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "[ADCompanionService _removeMessageHandler:forMessageType:]";
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ is not registered to handle message type: %@", &v12, 0x20u);
    }
  }
}

- (void)setMessageHandler:(id)a3 forMessageType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[ADCompanionService setMessageHandler:forMessageType:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@, delegate: %@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025FBEC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(serialQueue, block);
}

- (void)_sendMessage:(id)a3 messageType:(id)a4 toTargetDevice:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v45 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]";
    v46 = 2112;
    v47 = v11;
    v48 = 2112;
    v49 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ -> %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v15 = +[ADFMDMonitor sharedManager];
  v16 = [v15 isLostModeActive];

  if (v16)
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Lost mode is active, not sending any outbound requests", buf, 0xCu);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v13)
    {
LABEL_6:
      v18 = 1003;
LABEL_24:
      v19 = [AFError errorWithCode:v18];
      v13[2](v13, 0, v19);
LABEL_25:
    }
  }

  else
  {
    if (!self->_isListening)
    {
      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v45 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s companion service is disabled", buf, 0xCu);
        if (!v13)
        {
          goto LABEL_26;
        }
      }

      else if (!v13)
      {
        goto LABEL_26;
      }

      v18 = 1009;
      goto LABEL_24;
    }

    if (v12)
    {
      v19 = [(ADCompanionService *)self _newRequestDictionary];
      [v19 setObject:v11 forKey:@"type"];
      [v19 setObject:v10 forKey:@"payload"];
      [v19 objectForKey:@"messageID"];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1002601B0;
      v20 = v39[3] = &unk_10051E038;
      v40 = v20;
      v21 = v13;
      v41 = v21;
      v32 = [(ADCompanionService *)self _startTimerForMessage:v20 targetDevice:v12 heartbeat:1 completion:v39];
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v45 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]";
        v46 = 2112;
        v47 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s sending message: %@", buf, 0x16u);
      }

      clientLink = self->_clientLink;
      v23 = [v12 identifier];
      v42 = RPOptionStatusFlags;
      v43 = &off_100533D40;
      v24 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10026032C;
      v33[3] = &unk_100517E30;
      v34 = v20;
      v38 = v32;
      v35 = v12;
      v36 = self;
      v37 = v21;
      v25 = v20;
      [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.request.generic" request:v19 destinationID:v23 options:v24 responseHandler:v33];

      goto LABEL_25;
    }

    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s unable to find remote device for execution", buf, 0xCu);
    }

    if (AFIsInternalInstall())
    {
      v28 = AFSiriLogContextPerformance;
      v29 = os_signpost_id_generate(AFSiriLogContextPerformance);
      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v30 = v29;
        if (os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, v30, "CompanionDeviceNotFound", "ADCompanionService _sendMessage", buf, 2u);
        }
      }
    }

    if (v13)
    {
      v18 = 1000;
      goto LABEL_24;
    }
  }

LABEL_26:
}

- (void)sendMessage:(id)a3 messageType:(id)a4 toDeviceWithHKIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADCompanionService sendMessage:messageType:toDeviceWithHKIdentifier:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260958;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v21 = v12;
  v22 = v10;
  v23 = v11;
  v24 = v13;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  dispatch_async(serialQueue, block);
}

- (void)sendMessage:(id)a3 messageType:(id)a4 toDeviceWithIDSIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADCompanionService sendMessage:messageType:toDeviceWithIDSIdentifier:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260B54;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v21 = v12;
  v22 = v10;
  v23 = v11;
  v24 = v13;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  dispatch_async(serialQueue, block);
}

- (void)getDeviceIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100260C50;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_stopListening
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCompanionService _stopListening]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_isListening)
  {
    [(ADRapportLink *)self->_clientLink invalidate];
    clientLink = self->_clientLink;
    self->_clientLink = 0;

    *&self->_isListening = 0;
    playbackDeviceIDs = self->_playbackDeviceIDs;
    self->_playbackDeviceIDs = 0;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:@"ADSecurityServiceEncryptionKeyDidChangeNotification"];

    [(ADCompanionService *)self _setReadyState:self->_isCompanionLinkReady];
    [(ADCompanionService *)self setStereoPartnerIDSIdentifier:0];
    [(NSMutableDictionary *)self->_incomingRequestLog removeAllObjects];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NSMutableDictionary *)self->_timerInfo allValues];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * v11) heartbeatTimer];
          [v12 stop];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [(ADCompanionService *)self _stopObservingDataChangedNotifications];
    cachedSharedData = self->_cachedSharedData;
    self->_cachedSharedData = 0;

    cachedStoreFrontIdentifier = self->_cachedStoreFrontIdentifier;
    self->_cachedStoreFrontIdentifier = 0;
  }
}

- (void)stopListening
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002610CC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_startListening
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCompanionService _startListening]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_isListening)
  {
    if (!self->_incomingRequestLog)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      incomingRequestLog = self->_incomingRequestLog;
      self->_incomingRequestLog = v4;
    }

    if (AFSupportsPlayThisOnThat())
    {
      if (!self->_playbackDeviceIDs)
      {
        v6 = objc_opt_new();
        playbackDeviceIDs = self->_playbackDeviceIDs;
        self->_playbackDeviceIDs = v6;
      }

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"_encryptionKeyDidChange:" name:@"ADSecurityServiceEncryptionKeyDidChangeNotification" object:0];
    }

    [(ADCompanionService *)self _setupClientLink];
  }
}

- (void)_stopObservingDataChangedNotifications
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADCompanionService _stopObservingDataChangedNotifications]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_isObservingDataChanges)
  {
    self->_isObservingDataChanges = 0;
    musicPersonalizationNotificationToken = self->_musicPersonalizationNotificationToken;
    if (musicPersonalizationNotificationToken != -1)
    {
      notify_cancel(musicPersonalizationNotificationToken);
      self->_musicPersonalizationNotificationToken = -1;
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"ADAssistantDataManageriTunesStoreFrontIdentifierDidChangeNotification" object:0];
    [v5 removeObserver:self name:@"ADSharedDataDidChangeNotification" object:0];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADCompanionService _stopObservingDataChangedNotifications]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Already not observing data changes", &v7, 0xCu);
    }
  }
}

- (void)_startObservingDataChangedNotifications
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADCompanionService _startObservingDataChangedNotifications]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_isObservingDataChanges)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADCompanionService _startObservingDataChangedNotifications]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Already observing data changes", buf, 0xCu);
    }
  }

  else
  {
    self->_isObservingDataChanges = 1;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_sharedDataDidChange:" name:@"ADSharedDataDidChangeNotification" object:0];
    if (AFSupportsPlayThisOnThatPlayback())
    {
      objc_initWeak(&location, self);
      if (self->_musicPersonalizationNotificationToken == -1)
      {
        serialQueue = self->_serialQueue;
        v8 = _NSConcreteStackBlock;
        v9 = 3221225472;
        v10 = sub_10026163C;
        v11 = &unk_100519768;
        objc_copyWeak(&v12, &location);
        if (notify_register_dispatch(AFCachedFusePersonalizationTokenChanged, &self->_musicPersonalizationNotificationToken, serialQueue, &v8))
        {
          v7 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v15 = "[ADCompanionService _startObservingDataChangedNotifications]";
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to register for music personalization token notification", buf, 0xCu);
          }

          self->_musicPersonalizationNotificationToken = -1;
        }

        objc_destroyWeak(&v12);
      }

      [v5 addObserver:self selector:"_storeFrontDidChange:" name:@"ADAssistantDataManageriTunesStoreFrontIdentifierDidChangeNotification" object:{0, v8, v9, v10, v11}];
      objc_destroyWeak(&location);
    }
  }
}

- (void)_musicPersonalizationTokenChanged
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCompanionService _musicPersonalizationTokenChanged]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADCompanionService *)self _updateSiriInfoDictionary];
}

- (void)_storeFrontDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCompanionService _storeFrontDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100261830;
  v5[3] = &unk_10051B778;
  v5[4] = self;
  [(ADCompanionService *)self _updateStoreFrontIdentifierWithCompletion:v5];
}

- (void)_encryptionKeyDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCompanionService _encryptionKeyDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100261940;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_sharedDataDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCompanionService _sharedDataDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100261A48;
  v5[3] = &unk_10051B778;
  v5[4] = self;
  [(ADCompanionService *)self _updateSharedDataWithCompletion:v5];
}

- (BOOL)_validateIncomingRequest:(id)a3 options:(id)a4 error:(id *)a5 assistantId:(id *)a6 idsDeviceId:(id *)a7 homeKitId:(id *)a8
{
  v12 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:@"idsDeviceId"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v38 = 136315138;
          v39 = "[ADCompanionService _validateIncomingRequest:options:error:assistantId:idsDeviceId:homeKitId:]";
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s malformed IDS id", &v38, 0xCu);
        }

        v26 = [AFError errorWithCode:11 description:@"Malformed IDS id."];
        v19 = v26;
        if (a5)
        {
          v27 = v26;
          v24 = 0;
          *a5 = v19;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_60;
      }

      if (![v13 length])
      {

        v13 = 0;
      }
    }

    v14 = [v12 objectForKey:@"homeKitId"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v38 = 136315138;
          v39 = "[ADCompanionService _validateIncomingRequest:options:error:assistantId:idsDeviceId:homeKitId:]";
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s malformed HomeKit id", &v38, 0xCu);
        }

        v29 = [AFError errorWithCode:11 description:@"Malformed HomeKit id."];
        v19 = v29;
        if (a5)
        {
          v30 = v29;
          v24 = 0;
          *a5 = v19;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_59;
      }

      if (![v14 length])
      {

        v14 = 0;
      }
    }

    v15 = [v12 objectForKey:@"assistantId"];
    if (v15)
    {
      v16 = v15;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v38 = 136315138;
          v39 = "[ADCompanionService _validateIncomingRequest:options:error:assistantId:idsDeviceId:homeKitId:]";
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s malformed Assistant id", &v38, 0xCu);
        }

        v32 = [AFError errorWithCode:11 description:@"Malformed Assistant id."];
        v19 = v32;
        if (a5)
        {
          v33 = v32;
          goto LABEL_44;
        }

LABEL_57:
        v24 = 0;
        goto LABEL_58;
      }

      if ([v16 length])
      {
LABEL_47:
        if (a6)
        {
          v34 = v16;
          *a6 = v16;
        }

        if (a7)
        {
          v35 = v13;
          *a7 = v13;
        }

        if (a8)
        {
          v36 = v14;
          v19 = 0;
          *a8 = v14;
        }

        else
        {
          v19 = 0;
        }

        v24 = 1;
        goto LABEL_58;
      }
    }

    if (!(v13 | v14))
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v38 = 136315138;
        v39 = "[ADCompanionService _validateIncomingRequest:options:error:assistantId:idsDeviceId:homeKitId:]";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s no IDS, HomeKit or Assistant id specified", &v38, 0xCu);
      }

      v18 = [AFError errorWithCode:11 description:@"No IDS, HomeKit or Assistant ID specified."];
      v19 = v18;
      if (a5)
      {
        v20 = v18;
        v16 = 0;
LABEL_44:
        v24 = 0;
        *a5 = v19;
LABEL_58:

LABEL_59:
LABEL_60:

        goto LABEL_61;
      }

      v16 = 0;
      goto LABEL_57;
    }

    v16 = 0;
    goto LABEL_47;
  }

  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v38 = 136315138;
    v39 = "[ADCompanionService _validateIncomingRequest:options:error:assistantId:idsDeviceId:homeKitId:]";
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s malformed request dictionary", &v38, 0xCu);
  }

  v22 = [AFError errorWithCode:11 description:@"Malformed request dictionary."];
  v19 = v22;
  if (a5)
  {
    v23 = v22;
    v24 = 0;
    *a5 = v19;
  }

  else
  {
    v24 = 0;
  }

LABEL_61:

  return v24;
}

- (void)_updateSiriInfoDictionary
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCompanionService _updateSiriInfoDictionary]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026205C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_activateAWDLMessageLink:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "[ADCompanionService _activateAWDLMessageLink:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v9 = os_signpost_id_generate(AFSiriLogContextPerformance);
  v10 = AFSiriLogContextPerformance;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CompanionServiceAWDLClientLink", "Creating AWDL Client link", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100262C70;
  block[3] = &unk_10051BFA8;
  v17 = v7;
  v18 = v9;
  v16 = v6;
  v13 = v7;
  v14 = v6;
  dispatch_async(serialQueue, block);
}

- (void)_prepAWDLClientLinkIfMessageReceivedOverAWDL:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"messageLinkType"];
  v6 = v5;
  if (v5 && [v5 isEqualToString:@"AWDL"])
  {
    v7 = [v4 objectForKey:@"idsDeviceId"];
    v8 = AFSiriLogContextDaemon;
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v18 = "[ADCompanionService _prepAWDLClientLinkIfMessageReceivedOverAWDL:]";
        v19 = 2112;
        v20 = v9;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Received message via AWDL for destinationId: %@", buf, 0x16u);
      }

      if (self->_clientAWDLTransportLink && [(NSString *)self->_clientAWDLTransportLinkDestinationId isEqualToString:v9])
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v18 = "[ADCompanionService _prepAWDLClientLinkIfMessageReceivedOverAWDL:]";
          v19 = 2112;
          v20 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Already activated AWDL link for destinationId: %@. Extending timer.", buf, 0x16u);
        }

        [(ADCompanionService *)self _scheduleOrExtendAWDLClientLinkTimer];
      }

      else
      {
        v11 = objc_alloc_init(RPCompanionLinkDevice);
        [v11 setIdentifier:v9];
        [(ADCompanionService *)self _setupClientAWDLTransportLinkForDestination:v11];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100263298;
        v14[3] = &unk_100517DE0;
        v14[4] = self;
        v16 = v15 = v9;
        v12 = v16;
        v13 = v9;
        [(ADCompanionService *)self _activateAWDLMessageLink:v12 completion:v14];

        v9 = v11;
      }
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "[ADCompanionService _prepAWDLClientLinkIfMessageReceivedOverAWDL:]";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Incoming request does not have device IDS id set.", buf, 0xCu);
      }

      v9 = 0;
    }
  }
}

- (void)_handleAceCommandRequest:(id)a3 messageID:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
    v151 = 2112;
    v152 = v11;
    v153 = 2112;
    v154 = v10;
    v155 = 2112;
    v156 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s incoming command request: %@ %@ %@", buf, 0x2Au);
  }

  v15 = [v10 objectForKey:@"messageLinkType"];
  v16 = v15;
  if (!v15 || ![v15 isEqualToString:@"AWDL"])
  {
    v120 = 0;
LABEL_10:
    v18 = [v10 objectForKey:@"forwardsToIDSDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v10 objectForKey:@"forwardsToAssistantId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v125 = v21;
    v126 = v19;
    if (v19 | v21)
    {
      v123 = v16;
      v118 = v12;
      v22 = v11;
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_100264820;
      v143[3] = &unk_1005199B8;
      v144 = v19;
      v145 = v21;
      v23 = [AFPeerInfo newWithBuilder:v143];
      v24 = +[ADDeviceCircleManager sharedInstance];
      v25 = [v24 localPeerInfo];

      if ((sub_10001A834(v23, v25) & 1) == 0)
      {
        v33 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
          v151 = 2112;
          v152 = v23;
          v153 = 2112;
          v154 = v10;
          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s Forwarding request to %@: %@", buf, 0x20u);
        }

        v34 = [[ADPeerInfo alloc] initWithAFPeerInfo:v23];
        v35 = [(ADCompanionService *)self _getExecutionIdFromRequest:v10];
        v36 = [(ADCompanionService *)self _companionLinkDeviceForPeer:v34 allowsDeviceCircleLookup:1 logDiscoveryContextFor:v35];

        if (v36)
        {
          clientLink = self->_clientLink;
          v38 = [(ADCompanionService *)self _transformedRequestDictionaryToForward:v10];
          v39 = [v36 identifier];
          v147 = RPOptionStatusFlags;
          v148 = &off_100533D40;
          v40 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v141[0] = _NSConcreteStackBlock;
          v141[1] = 3221225472;
          v141[2] = sub_10026487C;
          v141[3] = &unk_100517D68;
          v142 = v13;
          [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.request.execute.ace.command" request:v38 destinationID:v39 options:v40 responseHandler:v141];

          v41 = v142;
        }

        else
        {
          v44 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
            v151 = 2112;
            v152 = v23;
            _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s Unable to find destination from peer info %@.", buf, 0x16u);
          }

          if (AFIsInternalInstall())
          {
            v45 = AFSiriLogContextPerformance;
            v46 = os_signpost_id_generate(AFSiriLogContextPerformance);
            if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v47 = v46;
              if (os_signpost_enabled(v45))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_EVENT, v47, "CompanionDeviceNotFound", "ADCompanionService _handleAceCommandRequest", buf, 2u);
              }
            }
          }

          v41 = [AFError errorWithCode:1017];
          (*(v13 + 2))(v13, 0, 0, v41);
        }

        v29 = v144;
        v11 = v22;
        v12 = v118;
        v16 = v123;
        goto LABEL_44;
      }

      v12 = v118;
      v16 = v123;
    }

    v26 = +[ADFMDMonitor sharedManager];
    v27 = [v26 isLostModeActive];

    if (!v27)
    {
      v29 = [v10 objectForKey:@"command"];
      if (!v29)
      {
        v30 = [v10 objectForKey:@"serializedCommand"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s incoming command is serialized", buf, 0xCu);
          }

          v32 = [AceObject aceObjectWithPlistData:v30];
          v29 = [v32 dictionary];
        }

        else
        {
          v29 = 0;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v124 = v16;
        v116 = v11;
        v48 = os_signpost_id_generate(AFSiriLogContextPerformance);
        v49 = AFSiriLogContextPerformance;
        v50 = v49;
        spid = v48;
        v51 = v48 - 1;
        if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          v52 = [v29 valueForKey:@"$class"];
          *buf = 138412546;
          v150 = v52;
          v151 = 2112;
          v152 = v116;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_BEGIN, v48, "CompanionService", "Received ACE Command Request: Class=%@, MessageID=%@", buf, 0x16u);
        }

        v139 = 0;
        v140 = 0;
        v137 = 0;
        v138 = 0;
        v53 = [(ADCompanionService *)self _validateIncomingRequest:v10 options:v12 error:&v140 assistantId:&v139 idsDeviceId:&v138 homeKitId:&v137];
        v115 = v140;
        v54 = v139;
        v119 = v138;
        v117 = v137;
        if (v53)
        {
          v110 = v54;
          if (v54 && v119)
          {
            v55 = +[ADDeviceCircleManager sharedInstance];
            [v55 _setAssistantId:v54 forDeviceWithIdsDeviceUniqueIdentifier:v119];
          }

          v114 = +[ADPeerCloudService sharedInstance];
          v56 = [v114 peerInfoForIDSDeviceUniqueIdentifier:v119 allowNonPeers:1];
          if (!v56)
          {
            v57 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
              v151 = 2112;
              v152 = v119;
              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s received command from peer IDS isn't aware of yet: %@", buf, 0x16u);
            }

            v56 = [[ADPeerInfo alloc] initWithUniqueIdentifer:v119];
          }

          [(ADPeerInfo *)v56 setAssistantIdentifier:v110];
          [(ADPeerInfo *)v56 setHomeKitAccessoryIdentifier:v117];
          v58 = [v10 objectForKey:@"airPlayRouteIDs"];
          v109 = v56;
          if (v58)
          {
            v59 = v58;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v135 = 0u;
              v136 = 0u;
              v133 = 0u;
              v134 = 0u;
              v60 = v59;
              v61 = [v60 countByEnumeratingWithState:&v133 objects:v146 count:16];
              if (v61)
              {
                v62 = v61;
                v107 = v59;
                v112 = self;
                v63 = *v134;
                while (2)
                {
                  v64 = v60;
                  for (i = 0; i != v62; ++i)
                  {
                    if (*v134 != v63)
                    {
                      objc_enumerationMutation(v64);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {

                      v81 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315138;
                        v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                        _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s received malformed route identifiers", buf, 0xCu);
                      }

                      v60 = 0;
                      goto LABEL_86;
                    }
                  }

                  v60 = v64;
                  v62 = [v64 countByEnumeratingWithState:&v133 objects:v146 count:16];
                  if (v62)
                  {
                    continue;
                  }

                  break;
                }

LABEL_86:
                v59 = v107;
                self = v112;
              }
            }

            else
            {
              v80 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%s received malformed route identifier container", buf, 0xCu);
              }

              v60 = 0;
            }
          }

          else
          {
            v60 = 0;
          }

          v113 = v60;
          [(ADPeerInfo *)v56 setAirPlayRouteIdentifiers:v60];
          v82 = [v12 objectForKey:RPOptionSenderIDSDeviceID];
          if (v82)
          {
            v83 = [(ADCompanionService *)self _companionLinkDeviceForUniqueIDSIdentifier:v82 allowsAWDLFallback:v120];
            v84 = v83;
            if (v83)
            {
              v85 = [v83 effectiveIdentifier];
              [(ADPeerInfo *)v56 setRapportEffectiveIdentifier:v85];

              -[ADPeerInfo setDeviceOwnedByCurrentUser:](v56, "setDeviceOwnedByCurrentUser:", ([v84 statusFlags] >> 19) & 1);
            }

            else
            {
              v87 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                v151 = 2112;
                v152 = v82;
                _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%s unable to find sender with id: (%@)", buf, 0x16u);
              }
            }
          }

          else
          {
            v86 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
              _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%s sender has no IDS identifier", buf, 0xCu);
            }
          }

          v88 = [v10 objectForKey:@"userInterfaceIdiom"];
          v108 = v82;
          if (v88)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v89 = v88;
              v90 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%s received malformed User Interface Idiom", buf, 0xCu);
              }

              v88 = 0;
            }
          }

          v106 = v88;
          [(ADPeerInfo *)v56 setUserInterfaceIdiom:v88];
          v91 = [v10 objectForKey:@"aceVersion"];
          if (v91)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v121 = v91;
              v92 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%s received malformed ACE Version", buf, 0xCu);
              }

              v91 = 0;
            }
          }

          [(ADPeerInfo *)v56 setAceVersion:v91];
          v93 = [v10 objectForKey:@"mediaSystemId"];
          v122 = v91;
          if (v93)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v94 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%s received malformed Media System ID", buf, 0xCu);
              }

              v93 = 0;
            }
          }

          [(ADPeerInfo *)v56 setMediaSystemIdentifier:v93];
          v95 = [v10 objectForKey:@"executionContext"];
          if (v95)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v96 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
                _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%s received malformed execution context", buf, 0xCu);
              }

              v95 = 0;
            }
          }

          v104 = v93;
          if (v116)
          {
            incomingRequestLog = self->_incomingRequestLog;
            v98 = +[NSProcessInfo processInfo];
            [v98 systemUptime];
            v99 = [NSNumber numberWithDouble:?];
            [(NSMutableDictionary *)incomingRequestLog setObject:v99 forKey:v116];
          }

          v100 = [(ADCompanionService *)self _setUpNewIntermediateIDsSetForPeer:v109, v104];
          [(ADCompanionService *)self _prepAWDLClientLinkIfMessageReceivedOverAWDL:v10];
          v101 = +[ADCommandCenter sharedCommandCenter];
          v127[0] = _NSConcreteStackBlock;
          v127[1] = 3221225472;
          v127[2] = sub_100264990;
          v127[3] = &unk_100517DB8;
          v127[4] = self;
          v128 = v100;
          v129 = v109;
          v130 = v116;
          v131 = v13;
          v132 = spid;
          v102 = v109;
          v103 = v100;
          [v101 executeCommand:v29 fromPeer:v102 remoteExecutionInfo:v95 reply:v127];

          v11 = v116;
          v16 = v124;
          v43 = v126;
          v67 = v115;
          v70 = v110;
        }

        else
        {
          v71 = v54;
          v72 = AFSiriLogContextDaemon;
          v67 = v115;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
            v151 = 2112;
            v152 = v115;
            _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%s validation error %@", buf, 0x16u);
          }

          v73 = objc_opt_new();
          v74 = objc_alloc_init(SACommandIgnored);
          v75 = [v74 dictionary];
          [v73 setObject:v75 forKey:@"commandResponse"];

          v114 = v73;
          (*(v13 + 2))(v13, v73, 0, v115);
          v76 = AFSiriLogContextPerformance;
          v113 = v76;
          if (v51 > 0xFFFFFFFFFFFFFFFDLL)
          {
            v11 = v116;
            v16 = v124;
            v43 = v126;
            v70 = v71;
          }

          else
          {
            v77 = v76;
            v78 = os_signpost_enabled(v76);
            v11 = v116;
            v16 = v124;
            v79 = v77;
            v43 = v126;
            v70 = v71;
            if (v78)
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_INTERVAL_END, spid, "CompanionService", "Validation error, rejected request", buf, 2u);
            }
          }
        }
      }

      else
      {
        v66 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
          _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s received malformed command", buf, 0xCu);
        }

        v67 = objc_opt_new();
        v68 = objc_alloc_init(SACommandIgnored);
        v69 = [v68 dictionary];
        [v67 setObject:v69 forKey:@"commandResponse"];

        v70 = [AFError errorWithCode:11];
        (*(v13 + 2))(v13, v67, 0, v70);
        v43 = v126;
      }

      goto LABEL_122;
    }

    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Lost mode is active, rejecting incoming request", buf, 0xCu);
    }

    v29 = [AFError errorWithCode:1003];
    (*(v13 + 2))(v13, 0, 0, v29);
LABEL_44:
    v43 = v126;
LABEL_122:

    goto LABEL_123;
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Received message via AWDL", buf, 0xCu);
  }

  if ((+[AFFeatureFlags isAWDLFallbackForPersonalRequestsEnabled]& 1) != 0)
  {
    v120 = 1;
    goto LABEL_10;
  }

  v42 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v150 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]";
    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s Received message via AWDL but AWDL is not enabled. Return the companion mismatched error dialog.", buf, 0xCu);
  }

  v43 = [AFError errorWithCode:1019];
  (*(v13 + 2))(v13, 0, 0, v43);
LABEL_123:
}

- (id)_setupClientAWDLTransportLinkForDestination:(id)a3
{
  v4 = a3;
  v5 = [v4 idsDeviceIdentifier];
  if (v5 && (v6 = v5, [v4 idsDeviceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = [v4 idsDeviceIdentifier];
  }

  else
  {
    v9 = [v4 identifier];
    if (v9)
    {
      v10 = [v4 identifier];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v4 identifier];
        v13 = [v12 hasPrefix:@"device:"];

        v14 = [v4 identifier];
        v9 = v14;
        if (v13)
        {
          v15 = [v14 _stripFZIDPrefix];

          v9 = v15;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v34 = "[ADCompanionService _setupClientAWDLTransportLinkForDestination:]";
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Creating AWDL client link for destination: %@", buf, 0x16u);
  }

  clientAWDLTransportLink = self->_clientAWDLTransportLink;
  if (clientAWDLTransportLink)
  {
    [(ADRapportLink *)clientAWDLTransportLink invalidate];
    v18 = self->_clientAWDLTransportLink;
    self->_clientAWDLTransportLink = 0;
  }

  clientAWDLTransportLinkDestinationId = self->_clientAWDLTransportLinkDestinationId;
  self->_clientAWDLTransportLinkDestinationId = 0;

  v20 = [ADRapportLink alloc];
  serialQueue = self->_serialQueue;
  v22 = [ADRapportLinkConfiguration newWithBuilder:&stru_100517D20];
  v23 = [(ADRapportLink *)v20 initWithQueue:serialQueue configuration:v22];
  v24 = self->_clientAWDLTransportLink;
  self->_clientAWDLTransportLink = v23;

  [(ADRapportLink *)self->_clientAWDLTransportLink addListener:self];
  v25 = self->_clientAWDLTransportLink;
  v31 = RPOptionStatusFlags;
  v32 = &off_100533D88;
  v26 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100265048;
  v30[3] = &unk_100517C88;
  v30[4] = self;
  [(ADRapportLink *)v25 registerRequestID:@"com.apple.siri.request.execute.ace.command" options:v26 handler:v30];

  [(ADRapportLink *)self->_clientAWDLTransportLink setDestinationDevice:v4];
  v27 = self->_clientAWDLTransportLink;
  v28 = v27;

  return v27;
}

- (void)_setupClientLink
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[ADCompanionService _setupClientLink]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_clientLink)
  {
    v4 = os_signpost_id_generate(AFSiriLogContextPerformance);
    v5 = AFSiriLogContextPerformance;
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CompanionServiceClientLink", "Creating CompanionService ClientLink", buf, 2u);
    }

    v7 = [ADRapportLink alloc];
    serialQueue = self->_serialQueue;
    v9 = [ADRapportLinkConfiguration newWithBuilder:&stru_100517C20];
    v10 = [(ADRapportLink *)v7 initWithQueue:serialQueue configuration:v9];
    clientLink = self->_clientLink;
    self->_clientLink = v10;

    [(ADRapportLink *)self->_clientLink addListener:self];
    v25 = RPOptionStatusFlags;
    v26 = &off_100533D40;
    v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = self->_clientLink;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10026566C;
    v24[3] = &unk_100517C88;
    v24[4] = self;
    [(ADRapportLink *)v13 registerRequestID:@"com.apple.siri.request.execute.ace.command" options:v12 handler:v24];
    v14 = self->_clientLink;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100265814;
    v23[3] = &unk_100517C88;
    v23[4] = self;
    [(ADRapportLink *)v14 registerRequestID:@"com.apple.siri.request.remote" options:v12 handler:v23];
    v15 = self->_clientLink;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100265CB0;
    v22[3] = &unk_100517C88;
    v22[4] = self;
    [(ADRapportLink *)v15 registerRequestID:@"com.apple.siri.request.shared.data" options:v12 handler:v22];
    v16 = self->_clientLink;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100266098;
    v21[3] = &unk_100517C88;
    v21[4] = self;
    [(ADRapportLink *)v16 registerRequestID:@"com.apple.siri.request.generic" options:v12 handler:v21];
    v17 = self->_clientLink;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002667BC;
    v20[3] = &unk_100517C88;
    v20[4] = self;
    [(ADRapportLink *)v17 registerRequestID:@"com.apple.siri.request.heartbeat" options:v12 handler:v20];
    v18 = self->_clientLink;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100266A90;
    v19[3] = &unk_100517D00;
    v19[4] = self;
    v19[5] = v4;
    [(ADRapportLink *)v18 activateWithCompletion:v19];
  }
}

- (BOOL)_updateSharedDataFromIDSWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADCompanionService _updateSharedDataFromIDSWithIdentifier:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v13, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v4 length])
  {
    v6 = +[ADPeerCloudService sharedInstance];
    v7 = [v6 peerInfoForIDSDeviceUniqueIdentifier:v4 allowNonPeers:1];

    v8 = v7 != 0;
    if (v7)
    {
      v9 = +[ADCommandCenter sharedCommandCenter];
      v10 = [NSSet setWithObject:v7];
      [v9 updateSharedDataFromCloudPeers:v10 completion:0];
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[ADCompanionService _updateSharedDataFromIDSWithIdentifier:]";
        v15 = 2112;
        v16 = v4;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s unable to find peer for IDS identifier: (%@)", &v13, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateSharedDataForDevice:(id)a3 allowIDSFetch:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADCompanionService _updateSharedDataForDevice:allowIDSFetch:completion:]";
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v11 = [v8 idsDeviceIdentifier];
  if (![v11 length])
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[ADCompanionService _updateSharedDataForDevice:allowIDSFetch:completion:]";
      v33 = 2112;
      v34 = v8;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s unable to find IDS identifier for device: %@", buf, 0x16u);
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    else if (!v9)
    {
      goto LABEL_24;
    }

    v9[2](v9, 0);
    goto LABEL_24;
  }

  v12 = [v8 _ad_siriSharedDataProtobuf];
  v13 = [v12 _ad_data];

  if ([(ADCompanionService *)self _updateSharedData:v13 forDevice:v8])
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[ADCompanionService _updateSharedDataForDevice:allowIDSFetch:completion:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s updated shared data from siriInfo dictionary", buf, 0xCu);
    }

    if (v9)
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    v16 = +[NSProcessInfo processInfo];
    [v16 systemUptime];
    v18 = v17;

    v19 = [(NSMutableDictionary *)self->_deviceUpdateLog objectForKey:v11];
    v20 = v19;
    if (v19 && ([v19 doubleValue], vabdd_f64(v18, v21) <= 3600.0))
    {
      if (v6)
      {
        v24 = [(ADCompanionService *)self _updateSharedDataFromIDSWithIdentifier:v11];
        if (v9)
        {
          v9[2](v9, v24);
        }
      }

      else if (v9)
      {
        v9[2](v9, 0);
      }
    }

    else
    {
      if (!self->_deviceUpdateLog)
      {
        v22 = objc_opt_new();
        deviceUpdateLog = self->_deviceUpdateLog;
        self->_deviceUpdateLog = v22;
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100267648;
      v25[3] = &unk_100517C00;
      v25[4] = self;
      v26 = v8;
      v29 = v18;
      v27 = v11;
      v30 = v6;
      v28 = v9;
      [(ADCompanionService *)self _getSharedDataFromCompanionLinkDevice:v26 completion:v25];
    }
  }

LABEL_24:
}

- (void)updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:(BOOL)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADCompanionService updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10026783C;
  v7[3] = &unk_10051CBD8;
  v7[4] = self;
  v8 = a3;
  dispatch_async(serialQueue, v7);
}

- (void)_updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCompanionService _updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = +[ADPreferences sharedPreferences];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 lastCompanionRemoteDataFetchDate];
    v9 = v8;
    if (v8 && ([v8 timeIntervalSinceNow], v10 > -86400.0))
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "[ADCompanionService _updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s preventing IDS fetch due to rate limiting", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(ADCompanionService *)self _companionDevice];
  if (v13)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100267AF8;
    v18[3] = &unk_10051B778;
    v19 = v7;
    [(ADCompanionService *)self _updateSharedDataForDevice:v13 allowIDSFetch:v12 completion:v18];
    v14 = v19;
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[ADCompanionService _updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s unable to find companion device in active devices", buf, 0xCu);
    }

    v16 = [(ADRapportLink *)self->_clientLink localDevice];
    v14 = [v16 idsPersonalDeviceIdentifier];

    if (v12 && [(ADCompanionService *)self _updateSharedDataFromIDSWithIdentifier:v14])
    {
      v17 = +[NSDate now];
      [v7 setLastCompanionRemoteDataFetchDate:v17];

      [v7 synchronize];
    }
  }
}

- (BOOL)_updateSharedData:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[ADCompanionService _updateSharedData:forDevice:]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v23, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (v6)
  {
    v9 = [v7 idsDeviceIdentifier];
    v10 = [v9 length];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = +[ADPeerCloudService sharedInstance];
      v13 = [v6 assistantId];
      if (v13)
      {
        v14 = +[ADDeviceCircleManager sharedInstance];
        [v14 _setAssistantId:v13 forDeviceWithIdsDeviceUniqueIdentifier:v9];
      }

      v15 = [v12 peerInfoForIDSDeviceUniqueIdentifier:v9 allowNonPeers:1];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [[ADPeerInfo alloc] initWithUniqueIdentifer:v9];
      }

      v20 = v17;
      v21 = +[ADCommandCenter sharedCommandCenter];
      [v21 updateSharedDataWithCloudData:v6 fromPeer:v20];
    }

    else
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315394;
        v24 = "[ADCompanionService _updateSharedData:forDevice:]";
        v25 = 2112;
        v26 = v7;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s unable to find IDS identifier for device: %@", &v23, 0x16u);
      }
    }
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[ADCompanionService _updateSharedData:forDevice:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s shared data missing", &v23, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)_updateAssistantIDMapForDevice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADCompanionService _updateAssistantIDMapForDevice:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v13, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = [v4 idsDeviceIdentifier];
  if ([v6 length])
  {
    v7 = [v4 _ad_siriSharedDataProtobuf];
    v8 = [v7 assistantId];

    if (!v8)
    {
      if (!AFSupportsMultiUser() || (+[ADMultiUserService sharedService](ADMultiUserService, "sharedService"), v12 = objc_claimAutoreleasedReturnValue(), [v12 getAssistantIdentifierForIDS:v6], v8 = objc_claimAutoreleasedReturnValue(), v12, !v8))
      {
        v10 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v13 = 136315394;
        v14 = "[ADCompanionService _updateAssistantIDMapForDevice:]";
        v15 = 2112;
        v16 = v4;
        v11 = "%s unable to find assistant identifier for device: %@";
LABEL_13:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0x16u);
        goto LABEL_11;
      }
    }

    v9 = +[ADDeviceCircleManager sharedInstance];
    [v9 _setAssistantId:v8 forDeviceWithIdsDeviceUniqueIdentifier:v6];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[ADCompanionService _updateAssistantIDMapForDevice:]";
      v15 = 2112;
      v16 = v4;
      v11 = "%s unable to find IDS identifier for device: %@";
      goto LABEL_13;
    }
  }

LABEL_11:
}

- (void)_updateCompanionIdentifier
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[ADCompanionService _updateCompanionIdentifier]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v20, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (AFIsHorseman())
  {
    clientLink = self->_clientLink;
    if (clientLink)
    {
      v5 = [(ADRapportLink *)clientLink localDevice];
      v6 = [v5 personalRequestsState];
      v7 = v6 != 0;
      if (AFIsHorseman())
      {
        IsRunningAsInstance = AFProcessIsRunningAsInstance();
        if (v6)
        {
          v7 = 1;
        }

        else
        {
          v7 = IsRunningAsInstance;
        }
      }

      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADCompanionService _updateCompanionIdentifier]";
        v22 = 1024;
        LODWORD(v23) = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s companion link ready: %d", &v20, 0x12u);
      }

      if (self->_isCompanionLinkReady != v7)
      {
        self->_isCompanionLinkReady = v7;
        [(ADCompanionService *)self _setReadyState:v7];
      }

      v10 = +[ADPreferences sharedPreferences];
      if (![v5 personalDeviceState])
      {
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "[ADCompanionService _updateCompanionIdentifier]";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s companion identifier has not updated yet", &v20, 0xCu);
        }

        [v10 setCompanionIdentifier:0];
        goto LABEL_41;
      }

      v11 = [v5 personalDeviceState];
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADCompanionService _updateCompanionIdentifier]";
        v22 = 1024;
        LODWORD(v23) = v11 == 6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s has companion device: %d", &v20, 0x12u);
      }

      if (v11 == 6)
      {
        v13 = [v5 idsPersonalDeviceIdentifier];
      }

      else
      {
        v13 = 0;
      }

      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADCompanionService _updateCompanionIdentifier]";
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s companion identifier has been updated: %@", &v20, 0x16u);
      }

      v17 = [v10 companionIdentifier];
      if (v13 == v17 || ([(__CFString *)v13 isEqualToString:v17]& 1) != 0)
      {
        v18 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "[ADCompanionService _updateCompanionIdentifier]";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s companion identifier was already set", &v20, 0xCu);
        }

        if (v11 != 6)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v11 != 6)
        {
          [v10 setCompanionIdentifier:0];
          goto LABEL_40;
        }

        if (v13)
        {
          v19 = v13;
        }

        else
        {
          v19 = &stru_10051F508;
        }

        [v10 setCompanionIdentifier:v19];
        if (v13)
        {
          [(NSMutableDictionary *)self->_deviceUpdateLog removeObjectForKey:v13];
          if (v17)
          {
            [v10 setLastCompanionRemoteDataFetchDate:0];
            [v10 synchronize];
          }
        }
      }

      [(ADCompanionService *)self _updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:1];
LABEL_40:

LABEL_41:
      return;
    }

    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[ADCompanionService _updateCompanionIdentifier]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s unable to check companion identifier without client link established", &v20, 0xCu);
    }
  }
}

- (void)_setReadyState:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADCompanionService _setReadyState:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_isReady != v3)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[ADCompanionService _setReadyState:]";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s companion service ready: %d", &v8, 0x12u);
    }

    self->_isReady = v3;
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"ADCompanionServiceReadyStateDidChangeNotification" object:0];
  }
}

- (ADCompanionService)init
{
  v16.receiver = self;
  v16.super_class = ADCompanionService;
  v2 = [(ADCompanionService *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADCompanionService.Serial", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = dispatch_queue_create("ADInstrumentationQueue", 0);
    instrumentationQueue = v2->_instrumentationQueue;
    v2->_instrumentationQueue = v6;

    v8 = v2->_instrumentationQueue;
    v9 = dispatch_get_global_queue(17, 0);
    dispatch_set_target_queue(v8, v9);

    v2->_musicPersonalizationNotificationToken = -1;
    v10 = v2->_serialQueue;
    v11 = +[ADQueueMonitor sharedMonitor];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10026871C;
    v14[3] = &unk_10051C2E0;
    v15 = v10;
    v12 = v10;
    [v11 addQueue:v12 heartBeatInterval:v14 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v2;
}

@end
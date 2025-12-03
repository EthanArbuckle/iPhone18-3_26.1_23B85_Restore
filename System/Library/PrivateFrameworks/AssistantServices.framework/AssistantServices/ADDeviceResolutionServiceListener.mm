@interface ADDeviceResolutionServiceListener
- (ADDeviceResolutionServiceListener)initWithInstanceContext:(id)context deviceCircleManager:(id)manager;
- (BOOL)_peerIsPairedPhone:(id)phone;
- (BOOL)_peerIsPairedWatch:(id)watch;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_crossDeviceCommandExecutionEndedEvent:(int)event actionResult:(int)result halId:(id)id contextProximityPairs:(id)pairs homeKitTarget:(int)target;
- (id)_crossDeviceCommandExecutionFailedEvent:(int)event action:(int)action halId:(id)id;
- (id)_crossDeviceCommandExecutionStartedEvent:(int)event halId:(id)id;
- (id)_devicesMatchingDescriptions:(id)descriptions capabilitiesTuples:(id)tuples proximityMap:(id)map;
- (id)_halDeviceFromContext:(id)context proximity:(int64_t)proximity;
- (id)_resultStringFromHALAction:(int)action actionResult:(int)result;
- (int)_halActionFromAction:(id)action;
- (int)_halActionResultFromActionResult:(id)result;
- (int)_halDeviceFamilyFromInterfaceIdiom:(id)idiom;
- (int)_halDevicePowerStateFromSystemStateSnapshot:(id)snapshot;
- (int)_halDeviceProximityFromProximity:(int64_t)proximity;
- (int)_halHomeKitTargetFromTarget:(id)target;
- (int)_halMediaPlayerStateFromPlaybackState:(int64_t)state;
- (void)_logAFAnalyticsCrossDeviceCommandHandledEventWithResult:(int)result halActionResult:(int)actionResult contextProximityPairs:(id)pairs;
- (void)_pairedCompanionDeviceFromSharedDataWithCompletion:(id)completion;
- (void)getAllReachableDevicesWithCompletion:(id)completion;
- (void)getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:(id)units serviceContexts:(id)contexts completion:(id)completion;
- (void)getDeviceContextAndProximityMapIncludingAllReachableDevice:(BOOL)device completion:(id)completion;
- (void)getDevicesMatchingCapabilityDescriptions:(id)descriptions completion:(id)completion;
- (void)getSourceDeviceForContextWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)logCrossDeviceCommandEnded:(id)ended action:(id)action actionResult:(id)result homeKitTarget:(id)target contextProximityPairs:(id)pairs;
- (void)logCrossDeviceCommandFailed:(id)failed action:(id)action reason:(id)reason;
- (void)logCrossDeviceCommandStarted:(id)started action:(id)action;
- (void)logCrossDeviceRequestLink:(id)link halId:(id)id;
- (void)meDeviceWithCompletion:(id)completion;
- (void)pairedCompanionDeviceWithCompletion:(id)completion;
- (void)setupListener;
@end

@implementation ADDeviceResolutionServiceListener

- (void)getDeviceContextAndProximityMapIncludingAllReachableDevice:(BOOL)device completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = +[ADCommandCenter sharedCommandCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D6DF8;
    v7[3] = &unk_10051A638;
    deviceCopy = device;
    v8 = completionCopy;
    [v6 getCurrentContextSnapshotWithCompletion:v7];
  }
}

- (BOOL)_peerIsPairedPhone:(id)phone
{
  rapportEffectiveIdentifier = [phone rapportEffectiveIdentifier];
  v4 = [rapportEffectiveIdentifier isEqualToString:@"BTPipe-Phone"];

  return v4;
}

- (BOOL)_peerIsPairedWatch:(id)watch
{
  rapportEffectiveIdentifier = [watch rapportEffectiveIdentifier];
  v4 = [rapportEffectiveIdentifier isEqualToString:@"BTPipe-Watch"];

  return v4;
}

- (void)meDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADDeviceResolutionServiceListener meDeviceWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    deviceCircleManager = self->_deviceCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D70B8;
    v7[3] = &unk_10051A610;
    v8 = completionCopy;
    [(ADDeviceCircleManager *)deviceCircleManager getManagedLocalAndRemotePeerInfoWithCompletion:v7];
  }

LABEL_4:
}

- (void)_pairedCompanionDeviceFromSharedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADDeviceResolutionServiceListener _pairedCompanionDeviceFromSharedDataWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v5 = +[ADCommandCenter sharedCommandCenter];
    _sharedDataService = [v5 _sharedDataService];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D77D0;
    v7[3] = &unk_10051A5C0;
    v8 = completionCopy;
    [_sharedDataService getSharedDataFromPeerUseCache:1 completion:v7];
  }

LABEL_4:
}

- (void)pairedCompanionDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADDeviceResolutionServiceListener pairedCompanionDeviceWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_7;
  }

  if ((AFIsIOS() & 1) != 0 || AFIsNano())
  {
    deviceCircleManager = self->_deviceCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D7B9C;
    v7[3] = &unk_10051A570;
    v7[4] = self;
    v8 = completionCopy;
    [(ADDeviceCircleManager *)deviceCircleManager getManagedLocalAndRemotePeerInfoWithCompletion:v7];
  }

  else
  {
    [(ADDeviceResolutionServiceListener *)self _pairedCompanionDeviceFromSharedDataWithCompletion:completionCopy];
  }

LABEL_7:
}

- (id)_devicesMatchingDescriptions:(id)descriptions capabilitiesTuples:(id)tuples proximityMap:(id)map
{
  descriptionsCopy = descriptions;
  tuplesCopy = tuples;
  mapCopy = map;
  v21 = descriptionsCopy;
  v25 = SVDCapabilityDescriptionsGroupedByCapabilityKey();
  v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(tuplesCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = tuplesCopy;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        content = [v12 content];
        v14 = [content af_lenientMappedDictionary:&stru_10051A4F8];
        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v32 = 1;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1002D8154;
        v26[3] = &unk_10051A520;
        v15 = v14;
        v27 = v15;
        v28 = &v29;
        [v25 enumerateKeysAndObjectsUsingBlock:v26];
        if (*(v30 + 24) == 1)
        {
          info = [v12 info];
          assistantIdentifier = [info assistantIdentifier];
          if (assistantIdentifier)
          {
            v18 = [mapCopy objectForKey:assistantIdentifier];
          }

          else
          {
            v18 = 0;
          }

          v19 = sub_1002D72C8(info, [v18 integerValue]);
          if (v19)
          {
            [v22 setObject:content forKey:v19];
          }
        }

        _Block_object_dispose(&v29, 8);
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  return v22;
}

- (void)getDevicesMatchingCapabilityDescriptions:(id)descriptions completion:(id)completion
{
  descriptionsCopy = descriptions;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[ADDeviceResolutionServiceListener getDevicesMatchingCapabilityDescriptions:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
  }

  if (AFSupportsHALOnDemandRapportConnection())
  {
    deviceCircleManager = self->_deviceCircleManager;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002D84B8;
    v17[3] = &unk_10051CE90;
    v17[4] = self;
    v18 = descriptionsCopy;
    v19 = completionCopy;
    v10 = completionCopy;
    v11 = descriptionsCopy;
    [(ADDeviceCircleManager *)deviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:v17];
  }

  else
  {
    v11 = SVDCapabilityDescriptionsGroupedByCapabilityKey();
    v12 = self->_deviceCircleManager;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002D85E4;
    v14[3] = &unk_10051CE90;
    v14[4] = self;
    v15 = descriptionsCopy;
    v16 = completionCopy;
    v13 = completionCopy;
    v10 = descriptionsCopy;
    [(ADDeviceCircleManager *)v12 getCapabilitiesForReachableDevicesWithCompletion:v14];
  }
}

- (void)getSourceDeviceForContextWithIdentifiers:(id)identifiers completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D87F0;
  v8[3] = &unk_10051A4B8;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = identifiersCopy;
  [(ADDeviceResolutionServiceListener *)self getDeviceContextAndProximityMapIncludingAllReachableDevice:0 completion:v8];
}

- (void)getAllReachableDevicesWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D8B18;
  v5[3] = &unk_10051A490;
  completionCopy = completion;
  v4 = completionCopy;
  [(ADDeviceResolutionServiceListener *)self getDeviceContextAndProximityMapIncludingAllReachableDevice:1 completion:v5];
}

- (void)getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:(id)units serviceContexts:(id)contexts completion:(id)completion
{
  unitsCopy = units;
  contextsCopy = contexts;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADDeviceResolutionServiceListener getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:serviceContexts:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #hal", buf, 0xCu);
  }

  v12 = [contextsCopy af_mappedArray:&stru_10051A3C0];
  v13 = [unitsCopy af_mappedArray:&stru_10051A400];
  +[NSMutableDictionary dictionary];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002D8EB8;
  v18[3] = &unk_10051A428;
  v19 = v12;
  v21 = v20 = v13;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = v21;
  v16 = v13;
  v17 = v12;
  [(ADDeviceResolutionServiceListener *)self getDeviceContextAndProximityMapIncludingAllReachableDevice:1 completion:v18];
}

- (void)logCrossDeviceCommandFailed:(id)failed action:(id)action reason:(id)reason
{
  reasonCopy = reason;
  failedCopy = failed;
  v10 = [(ADDeviceResolutionServiceListener *)self _halActionFromAction:action];
  integerValue = [reasonCopy integerValue];

  v12 = [(ADDeviceResolutionServiceListener *)self _crossDeviceCommandExecutionFailedEvent:integerValue action:v10 halId:failedCopy];

  v13 = +[AssistantSiriAnalytics sharedStream];
  [v13 emitMessage:v12];

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[ADDeviceResolutionServiceListener logCrossDeviceCommandFailed:action:reason:]";
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s #hal Emitted commandFailed %@ to sharedStream", &v15, 0x16u);
  }
}

- (void)_logAFAnalyticsCrossDeviceCommandHandledEventWithResult:(int)result halActionResult:(int)actionResult contextProximityPairs:(id)pairs
{
  v5 = *&actionResult;
  v6 = *&result;
  pairsCopy = pairs;
  v9 = [(ADDeviceResolutionServiceListener *)self _resultStringFromHALAction:v6 actionResult:v5];
  allKeys = [pairsCopy allKeys];
  firstObject = [allKeys firstObject];

  v12 = [pairsCopy objectForKeyedSubscript:firstObject];

  deviceInfo = [firstObject deviceInfo];
  productType = [deviceInfo productType];

  [v12 integerValue];
  if (productType)
  {
    v15 = [NSSet setWithObject:productType];
  }

  else
  {
    v15 = 0;
  }

  v16 = AFAnalyticsContextCreateForCrossDeviceCommandHandled();
  v17 = +[AFAnalytics sharedAnalytics];
  [v17 logEventWithType:4560 context:v16];

  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADDeviceResolutionServiceListener _logAFAnalyticsCrossDeviceCommandHandledEventWithResult:halActionResult:contextProximityPairs:]";
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s #hal Emitted AFAnalyticsEventTypeDaemonContextCrossDeviceCommandHandled event with context: %@", &v19, 0x16u);
  }
}

- (void)logCrossDeviceCommandEnded:(id)ended action:(id)action actionResult:(id)result homeKitTarget:(id)target contextProximityPairs:(id)pairs
{
  pairsCopy = pairs;
  targetCopy = target;
  resultCopy = result;
  actionCopy = action;
  endedCopy = ended;
  v17 = [(ADDeviceResolutionServiceListener *)self _halActionFromAction:actionCopy];
  v18 = [(ADDeviceResolutionServiceListener *)self _halActionResultFromActionResult:resultCopy];

  v19 = [(ADDeviceResolutionServiceListener *)self _halHomeKitTargetFromTarget:targetCopy];
  v20 = [(ADDeviceResolutionServiceListener *)self _crossDeviceCommandExecutionEndedEvent:v17 actionResult:v18 halId:endedCopy contextProximityPairs:pairsCopy homeKitTarget:v19];

  v21 = +[AssistantSiriAnalytics sharedStream];
  [v21 emitMessage:v20];

  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v24 = 136315394;
    v25 = "[ADDeviceResolutionServiceListener logCrossDeviceCommandEnded:action:actionResult:homeKitTarget:contextProximityPairs:]";
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s #hal Emitted commandEnded %@ to sharedStream", &v24, 0x16u);
  }

  v23 = [(ADDeviceResolutionServiceListener *)self _shouldLogAFAnalyticsCrossDeviceEvent:actionCopy];

  if (v23)
  {
    [(ADDeviceResolutionServiceListener *)self _logAFAnalyticsCrossDeviceCommandHandledEventWithResult:v17 halActionResult:v18 contextProximityPairs:pairsCopy];
  }
}

- (void)logCrossDeviceCommandStarted:(id)started action:(id)action
{
  startedCopy = started;
  v7 = [(ADDeviceResolutionServiceListener *)self _crossDeviceCommandExecutionStartedEvent:[(ADDeviceResolutionServiceListener *)self _halActionFromAction:action] halId:startedCopy];

  v8 = +[AssistantSiriAnalytics sharedStream];
  [v8 emitMessage:v7];

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADDeviceResolutionServiceListener logCrossDeviceCommandStarted:action:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #hal Emitted commandStarted event %@ to sharedStream", &v10, 0x16u);
  }
}

- (void)logCrossDeviceRequestLink:(id)link halId:(id)id
{
  linkCopy = link;
  idCopy = id;
  if ([idCopy length] && objc_msgSend(linkCopy, "length"))
  {
    v7 = ADCreateRequestLinkInfo();
    v8 = ADCreateRequestLinkInfo();
    ADEmitRequestLinkEventMessage();
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADDeviceResolutionServiceListener logCrossDeviceRequestLink:halId:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #hal Emitted RequestLink event to sharedStream", &v11, 0xCu);
    }
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[ADDeviceResolutionServiceListener logCrossDeviceRequestLink:halId:]";
      v13 = 2112;
      v14 = linkCopy;
      v15 = 2112;
      v16 = idCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s #hal RequestId %@ or halIdentifier %@ should not be nil.", &v11, 0x20u);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[SVDDeviceResolutionXPCInterface entitlement];
  HasEntitlement = AFConnectionHasEntitlement();

  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADDeviceResolutionServiceListener listener:shouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = connectionCopy;
      v21 = 1024;
      v22 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ Device Resolution Service Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v10 = +[SVDDeviceResolutionXPCInterface xpcInterface];
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002D9B68;
    v15[3] = &unk_10051A380;
    v16 = processIdentifier;
    [connectionCopy setInvalidationHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002D9C24;
    v13[3] = &unk_10051A380;
    v14 = processIdentifier;
    [connectionCopy setInterruptionHandler:v13];
    [connectionCopy resume];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[ADDeviceResolutionServiceListener listener:shouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@ Device Resolution Service Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)setupListener
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D9D54;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (ADDeviceResolutionServiceListener)initWithInstanceContext:(id)context deviceCircleManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = ADDeviceResolutionServiceListener;
  v8 = [(ADDeviceResolutionServiceListener *)&v19 init];
  if (v8)
  {
    if (contextCopy)
    {
      v9 = contextCopy;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v8->_instanceContext;
    v8->_instanceContext = v9;

    objc_storeStrong(&v8->_deviceCircleManager, manager);
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = v8->_instanceContext;
      deviceCircleManager = v8->_deviceCircleManager;
      *buf = 136315650;
      v21 = "[ADDeviceResolutionServiceListener initWithInstanceContext:deviceCircleManager:]";
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = deviceCircleManager;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s instanceContext = %@, deviceCircleManager = %@", buf, 0x20u);
    }

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

    v14 = dispatch_queue_create("ADDeviceResolutionServiceListener", v13);
    queue = v8->_queue;
    v8->_queue = v14;

    [(ADDeviceResolutionServiceListener *)v8 setupListener];
  }

  return v8;
}

- (int)_halDevicePowerStateFromSystemStateSnapshot:(id)snapshot
{
  sleepState = [snapshot sleepState];
  if (sleepState < 3)
  {
    return sleepState + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_halDeviceFamilyFromInterfaceIdiom:(id)idiom
{
  idiomCopy = idiom;
  if ([idiomCopy isEqualToString:SAUserInterfaceIdiomPHONEValue])
  {
    v4 = 1;
  }

  else if ([idiomCopy isEqualToString:SAUserInterfaceIdiomPADValue])
  {
    v4 = 2;
  }

  else if ([idiomCopy isEqualToString:SAUserInterfaceIdiomCAMEOValue])
  {
    v4 = 6;
  }

  else if ([idiomCopy isEqualToString:SAUserInterfaceIdiomHORSEMANValue])
  {
    v4 = 7;
  }

  else if ([idiomCopy isEqualToString:SAUserInterfaceIdiomZEUSValue])
  {
    v4 = 5;
  }

  else if ([idiomCopy isEqualToString:SAUserInterfaceIdiomWATCHValue])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)_halMediaPlayerStateFromPlaybackState:(int64_t)state
{
  if (state > 5)
  {
    return 2;
  }

  else
  {
    return dword_1003F0784[state];
  }
}

- (int)_halDeviceProximityFromProximity:(int64_t)proximity
{
  if (proximity == 4000)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  if (proximity == 3000)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (proximity == 2000)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (!proximity)
  {
    v5 = 0;
  }

  if (proximity <= 2999)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (id)_halDeviceFromContext:(id)context proximity:(int64_t)proximity
{
  contextCopy = context;
  v7 = objc_alloc_init(HALSchemaHALDevice);
  [v7 setDeviceProximity:{-[ADDeviceResolutionServiceListener _halDeviceProximityFromProximity:](self, "_halDeviceProximityFromProximity:", proximity)}];
  deviceInfo = [contextCopy deviceInfo];
  buildVersion = [deviceInfo buildVersion];
  [v7 setSystemBuild:buildVersion];

  userInterfaceIdiom = [deviceInfo userInterfaceIdiom];
  [v7 setDeviceFamily:{-[ADDeviceResolutionServiceListener _halDeviceFamilyFromInterfaceIdiom:](self, "_halDeviceFamilyFromInterfaceIdiom:", userInterfaceIdiom)}];

  playbackStateSnapshot = [contextCopy playbackStateSnapshot];
  if (playbackStateSnapshot)
  {
    v12 = objc_alloc_init(HALSchemaHALMediaPlayerContext);
    [v12 setState:{-[ADDeviceResolutionServiceListener _halMediaPlayerStateFromPlaybackState:](self, "_halMediaPlayerStateFromPlaybackState:", objc_msgSend(playbackStateSnapshot, "playbackState"))}];
    mediaType = [playbackStateSnapshot mediaType];
    v14 = [mediaType isEqualToString:kMRMediaRemoteMediaTypeMusic];

    if (v14)
    {
      v15 = 10;
    }

    else
    {
      mediaType2 = [playbackStateSnapshot mediaType];
      v17 = [mediaType2 isEqualToString:kMRMediaRemoteNowPlayingInfoTypeVideo];

      if (v17)
      {
        v15 = 28;
      }

      else
      {
        mediaType3 = [playbackStateSnapshot mediaType];
        v19 = [mediaType3 isEqualToString:kMRMediaRemoteMediaTypePodcast];

        if (v19)
        {
          v15 = 16;
        }

        else
        {
          mediaType4 = [playbackStateSnapshot mediaType];
          v21 = [mediaType4 isEqualToString:kMRMediaRemoteMediaTypeAudioBook];

          if (v21)
          {
            v15 = 3;
          }

          else
          {
            mediaType5 = [playbackStateSnapshot mediaType];
            v23 = [mediaType5 isEqualToString:kMRMediaRemoteMediaTypeITunesU];

            if (v23)
            {
              v15 = 8;
            }

            else
            {
              v15 = 0;
            }
          }
        }
      }
    }

    [v12 setType:v15];
    if ([v12 state] == 1)
    {
      v24 = 0;
    }

    else
    {
      nowPlayingTimestamp = [playbackStateSnapshot nowPlayingTimestamp];

      if (!nowPlayingTimestamp)
      {
LABEL_18:
        [v7 setMediaPlayerContext:v12];

        goto LABEL_19;
      }

      v26 = +[NSDate date];
      nowPlayingTimestamp2 = [playbackStateSnapshot nowPlayingTimestamp];
      [v26 timeIntervalSinceDate:nowPlayingTimestamp2];
      v29 = v28;

      [(ADDeviceResolutionServiceListener *)self _generalizeTimeIntervalsForPrivacy:v29];
      v24 = v30;
    }

    [v12 setTimeSinceLastMediaPlaybackInSeconds:v24];
    goto LABEL_18;
  }

LABEL_19:
  alarmSnapshot = [contextCopy alarmSnapshot];
  v32 = alarmSnapshot;
  if (alarmSnapshot)
  {
    alarmsByID = [alarmSnapshot alarmsByID];
    notifiedFiringAlarmIDs = [v32 notifiedFiringAlarmIDs];
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_10031A520;
    v70 = sub_10031A530;
    v71 = 0;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10031A538;
    v63[3] = &unk_10051BD78;
    v35 = alarmsByID;
    v64 = v35;
    v65 = &v66;
    [notifiedFiringAlarmIDs enumerateObjectsUsingBlock:v63];
    if (v67[5])
    {
      v36 = +[NSDate date];
      [v36 timeIntervalSinceDate:v67[5]];
      v38 = v37;

      v39 = objc_alloc_init(HALSchemaHALAlarmContext);
      [(ADDeviceResolutionServiceListener *)self _generalizeTimeIntervalsForPrivacy:v38];
      [v39 setTimeSinceAlarmFiredInSeconds:v40];
      [v7 setAlarmContext:v39];
    }

    _Block_object_dispose(&v66, 8);
  }

  timerSnapshot = [contextCopy timerSnapshot];
  v42 = timerSnapshot;
  if (timerSnapshot)
  {
    timersByID = [timerSnapshot timersByID];
    notifiedFiringTimerIDs = [v42 notifiedFiringTimerIDs];
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_10031A520;
    v70 = sub_10031A530;
    v71 = 0;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10031A600;
    v60[3] = &unk_10051BD78;
    v45 = timersByID;
    v61 = v45;
    v62 = &v66;
    [notifiedFiringTimerIDs enumerateObjectsUsingBlock:v60];
    if (v67[5])
    {
      v46 = +[NSDate date];
      [v46 timeIntervalSinceDate:v67[5]];
      v48 = v47;

      v49 = objc_alloc_init(HALSchemaHALTimerContext);
      [(ADDeviceResolutionServiceListener *)self _generalizeTimeIntervalsForPrivacy:v48];
      [v49 setTimeSinceTimerFiredInSeconds:v50];
      [v7 setTimerContext:v49];
    }

    _Block_object_dispose(&v66, 8);
  }

  if ([contextCopy heardVoiceTrigger] == 2)
  {
    heardVoiceTriggerMetadata = [contextCopy heardVoiceTriggerMetadata];
    v52 = +[NSDate date];
    deliveryDate = [heardVoiceTriggerMetadata deliveryDate];
    [v52 timeIntervalSinceDate:deliveryDate];
    v55 = v54;

    v56 = objc_alloc_init(HALSchemaHALVoiceTriggerContext);
    [(ADDeviceResolutionServiceListener *)self _generalizeTimeIntervalsForPrivacy:v55];
    [v56 setTimeSinceVoiceTriggerHeardInSeconds:v57];
    [v7 setVoiceTriggerContext:v56];
  }

  systemStateSnapshot = [contextCopy systemStateSnapshot];
  if (systemStateSnapshot)
  {
    [v7 setPowerState:{-[ADDeviceResolutionServiceListener _halDevicePowerStateFromSystemStateSnapshot:](self, "_halDevicePowerStateFromSystemStateSnapshot:", systemStateSnapshot)}];
  }

  return v7;
}

- (id)_crossDeviceCommandExecutionEndedEvent:(int)event actionResult:(int)result halId:(id)id contextProximityPairs:(id)pairs homeKitTarget:(int)target
{
  v7 = *&target;
  v9 = *&result;
  v10 = *&event;
  idCopy = id;
  pairsCopy = pairs;
  v14 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionEnded);
  [v14 setAction:v10];
  if (v9)
  {
    [v14 setActionResult:v9];
  }

  [v14 setHomeKitTarget:v7];
  v15 = objc_alloc_init(HALSchemaHALClientEvent);
  v16 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionContext);
  [v16 setEnded:v14];
  [v15 setCrossDeviceCommandContext:v16];
  v17 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  if ([idCopy length])
  {
    v18 = [[NSUUID alloc] initWithUUIDString:idCopy];
  }

  else
  {
    v18 = objc_alloc_init(NSUUID);
  }

  v19 = v18;
  v20 = [[SISchemaUUID alloc] initWithNSUUID:v18];
  [v17 setHalId:v20];

  [v15 setEventMetadata:v17];
  +[NSMutableArray array];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10031A8DC;
  v27 = &unk_10051BD50;
  v29 = v28 = self;
  v21 = v29;
  [pairsCopy enumerateKeysAndObjectsUsingBlock:&v24];

  v22 = [NSArray arrayWithArray:v21, v24, v25, v26, v27, v28];
  [v14 setSelecteds:v22];

  return v15;
}

- (id)_crossDeviceCommandExecutionFailedEvent:(int)event action:(int)action halId:(id)id
{
  v5 = *&action;
  v6 = *&event;
  idCopy = id;
  v8 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionFailed);
  [v8 setReason:v6];
  [v8 setAction:v5];
  v9 = objc_alloc_init(HALSchemaHALClientEvent);
  v10 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionContext);
  [v10 setFailed:v8];
  [v9 setCrossDeviceCommandContext:v10];
  v11 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  if ([idCopy length])
  {
    v12 = [[NSUUID alloc] initWithUUIDString:idCopy];
  }

  else
  {
    v12 = objc_alloc_init(NSUUID);
  }

  v13 = v12;
  v14 = [[SISchemaUUID alloc] initWithNSUUID:v12];
  [v11 setHalId:v14];

  [v9 setEventMetadata:v11];

  return v9;
}

- (id)_crossDeviceCommandExecutionStartedEvent:(int)event halId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(HALSchemaHALClientEvent);
  v6 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionStarted);
  v7 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionContext);
  [v7 setStartedOrChanged:v6];
  [v5 setCrossDeviceCommandContext:v7];
  v8 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  if ([idCopy length])
  {
    v9 = [[NSUUID alloc] initWithUUIDString:idCopy];
  }

  else
  {
    v9 = objc_alloc_init(NSUUID);
  }

  v10 = v9;
  v11 = [[SISchemaUUID alloc] initWithNSUUID:v9];
  [v8 setHalId:v11];

  [v5 setEventMetadata:v8];

  return v5;
}

- (int)_halHomeKitTargetFromTarget:(id)target
{
  integerValue = [target integerValue];
  if ((integerValue - 1) >= 7)
  {
    LODWORD(integerValue) = 0;
  }

  return integerValue;
}

- (int)_halActionFromAction:(id)action
{
  integerValue = [action integerValue];
  if ((integerValue - 1) >= 0x15)
  {
    LODWORD(integerValue) = 0;
  }

  return integerValue;
}

- (int)_halActionResultFromActionResult:(id)result
{
  integerValue = [result integerValue];
  if ((integerValue - 1) >= 3)
  {
    LODWORD(integerValue) = 0;
  }

  return integerValue;
}

- (id)_resultStringFromHALAction:(int)action actionResult:(int)result
{
  switch(action)
  {
    case 0:
      result = @"unknown";
      break;
    case 1:
      result = @"appLaunch-Launch";
      break;
    case 2:
      result = @"appLaunch-DeviceDisambiguation";
      break;
    case 3:
      result = @"media-PlayContent";
      break;
    case 4:
      result = @"media-DeviceDisambiguation";
      break;
    case 5:
      result = @"resumeMedia";
      break;
    case 6:
      result = @"skipContent";
      break;
    case 7:
      result = @"skipTime";
      break;
    case 8:
      result = @"seekTime";
      break;
    case 9:
      result = @"setRepeatState";
      break;
    case 10:
      result = @"setSubtitleState";
      break;
    case 11:
      result = @"setShuffleState";
      break;
    case 12:
      result = @"setAudioLanguage";
      break;
    case 13:
      result = @"whatDidTheySay";
      break;
    case 14:
      result = @"QuickStop.QuickStopCompleted-confirmation";
      break;
    case 15:
      if (result >= 4)
      {
        goto LABEL_12;
      }

      result = off_10051BD98[result];
      break;
    case 16:
      result = @"SAAlarmDismiss.CommandSucceeded";
      break;
    case 17:
      result = @"SAAlarmSnooze.CommandSucceeded";
      break;
    case 18:
      result = @"QuickStop.QuickStopCompleted-Timer";
      break;
    case 19:
      result = @"SATimerDismiss.CommandSucceeded";
      break;
    case 20:
      result = @"pauseMedia";
      break;
    case 21:
      result = @"QuickStop.announcement";
      break;
    default:
LABEL_12:
      result = 0;
      break;
  }

  return result;
}

@end
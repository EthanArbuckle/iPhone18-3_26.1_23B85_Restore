@interface ADDeviceResolutionServiceListener
- (ADDeviceResolutionServiceListener)initWithInstanceContext:(id)a3 deviceCircleManager:(id)a4;
- (BOOL)_peerIsPairedPhone:(id)a3;
- (BOOL)_peerIsPairedWatch:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_crossDeviceCommandExecutionEndedEvent:(int)a3 actionResult:(int)a4 halId:(id)a5 contextProximityPairs:(id)a6 homeKitTarget:(int)a7;
- (id)_crossDeviceCommandExecutionFailedEvent:(int)a3 action:(int)a4 halId:(id)a5;
- (id)_crossDeviceCommandExecutionStartedEvent:(int)a3 halId:(id)a4;
- (id)_devicesMatchingDescriptions:(id)a3 capabilitiesTuples:(id)a4 proximityMap:(id)a5;
- (id)_halDeviceFromContext:(id)a3 proximity:(int64_t)a4;
- (id)_resultStringFromHALAction:(int)a3 actionResult:(int)a4;
- (int)_halActionFromAction:(id)a3;
- (int)_halActionResultFromActionResult:(id)a3;
- (int)_halDeviceFamilyFromInterfaceIdiom:(id)a3;
- (int)_halDevicePowerStateFromSystemStateSnapshot:(id)a3;
- (int)_halDeviceProximityFromProximity:(int64_t)a3;
- (int)_halHomeKitTargetFromTarget:(id)a3;
- (int)_halMediaPlayerStateFromPlaybackState:(int64_t)a3;
- (void)_logAFAnalyticsCrossDeviceCommandHandledEventWithResult:(int)a3 halActionResult:(int)a4 contextProximityPairs:(id)a5;
- (void)_pairedCompanionDeviceFromSharedDataWithCompletion:(id)a3;
- (void)getAllReachableDevicesWithCompletion:(id)a3;
- (void)getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:(id)a3 serviceContexts:(id)a4 completion:(id)a5;
- (void)getDeviceContextAndProximityMapIncludingAllReachableDevice:(BOOL)a3 completion:(id)a4;
- (void)getDevicesMatchingCapabilityDescriptions:(id)a3 completion:(id)a4;
- (void)getSourceDeviceForContextWithIdentifiers:(id)a3 completion:(id)a4;
- (void)logCrossDeviceCommandEnded:(id)a3 action:(id)a4 actionResult:(id)a5 homeKitTarget:(id)a6 contextProximityPairs:(id)a7;
- (void)logCrossDeviceCommandFailed:(id)a3 action:(id)a4 reason:(id)a5;
- (void)logCrossDeviceCommandStarted:(id)a3 action:(id)a4;
- (void)logCrossDeviceRequestLink:(id)a3 halId:(id)a4;
- (void)meDeviceWithCompletion:(id)a3;
- (void)pairedCompanionDeviceWithCompletion:(id)a3;
- (void)setupListener;
@end

@implementation ADDeviceResolutionServiceListener

- (void)getDeviceContextAndProximityMapIncludingAllReachableDevice:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = +[ADCommandCenter sharedCommandCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D6DF8;
    v7[3] = &unk_10051A638;
    v9 = a3;
    v8 = v5;
    [v6 getCurrentContextSnapshotWithCompletion:v7];
  }
}

- (BOOL)_peerIsPairedPhone:(id)a3
{
  v3 = [a3 rapportEffectiveIdentifier];
  v4 = [v3 isEqualToString:@"BTPipe-Phone"];

  return v4;
}

- (BOOL)_peerIsPairedWatch:(id)a3
{
  v3 = [a3 rapportEffectiveIdentifier];
  v4 = [v3 isEqualToString:@"BTPipe-Watch"];

  return v4;
}

- (void)meDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADDeviceResolutionServiceListener meDeviceWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    deviceCircleManager = self->_deviceCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D70B8;
    v7[3] = &unk_10051A610;
    v8 = v4;
    [(ADDeviceCircleManager *)deviceCircleManager getManagedLocalAndRemotePeerInfoWithCompletion:v7];
  }

LABEL_4:
}

- (void)_pairedCompanionDeviceFromSharedDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADDeviceResolutionServiceListener _pairedCompanionDeviceFromSharedDataWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v5 = +[ADCommandCenter sharedCommandCenter];
    v6 = [v5 _sharedDataService];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002D77D0;
    v7[3] = &unk_10051A5C0;
    v8 = v3;
    [v6 getSharedDataFromPeerUseCache:1 completion:v7];
  }

LABEL_4:
}

- (void)pairedCompanionDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADDeviceResolutionServiceListener pairedCompanionDeviceWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (!v4)
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
    v8 = v4;
    [(ADDeviceCircleManager *)deviceCircleManager getManagedLocalAndRemotePeerInfoWithCompletion:v7];
  }

  else
  {
    [(ADDeviceResolutionServiceListener *)self _pairedCompanionDeviceFromSharedDataWithCompletion:v4];
  }

LABEL_7:
}

- (id)_devicesMatchingDescriptions:(id)a3 capabilitiesTuples:(id)a4 proximityMap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v23 = a5;
  v21 = v7;
  v25 = SVDCapabilityDescriptionsGroupedByCapabilityKey();
  v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
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
        v13 = [v12 content];
        v14 = [v13 af_lenientMappedDictionary:&stru_10051A4F8];
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
          v16 = [v12 info];
          v17 = [v16 assistantIdentifier];
          if (v17)
          {
            v18 = [v23 objectForKey:v17];
          }

          else
          {
            v18 = 0;
          }

          v19 = sub_1002D72C8(v16, [v18 integerValue]);
          if (v19)
          {
            [v22 setObject:v13 forKey:v19];
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

- (void)getDevicesMatchingCapabilityDescriptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v18 = v6;
    v19 = v7;
    v10 = v7;
    v11 = v6;
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
    v15 = v6;
    v16 = v7;
    v13 = v7;
    v10 = v6;
    [(ADDeviceCircleManager *)v12 getCapabilitiesForReachableDevicesWithCompletion:v14];
  }
}

- (void)getSourceDeviceForContextWithIdentifiers:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D87F0;
  v8[3] = &unk_10051A4B8;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(ADDeviceResolutionServiceListener *)self getDeviceContextAndProximityMapIncludingAllReachableDevice:0 completion:v8];
}

- (void)getAllReachableDevicesWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D8B18;
  v5[3] = &unk_10051A490;
  v6 = a3;
  v4 = v6;
  [(ADDeviceResolutionServiceListener *)self getDeviceContextAndProximityMapIncludingAllReachableDevice:1 completion:v5];
}

- (void)getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:(id)a3 serviceContexts:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADDeviceResolutionServiceListener getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:serviceContexts:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #hal", buf, 0xCu);
  }

  v12 = [v9 af_mappedArray:&stru_10051A3C0];
  v13 = [v8 af_mappedArray:&stru_10051A400];
  +[NSMutableDictionary dictionary];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002D8EB8;
  v18[3] = &unk_10051A428;
  v19 = v12;
  v21 = v20 = v13;
  v22 = v10;
  v14 = v10;
  v15 = v21;
  v16 = v13;
  v17 = v12;
  [(ADDeviceResolutionServiceListener *)self getDeviceContextAndProximityMapIncludingAllReachableDevice:1 completion:v18];
}

- (void)logCrossDeviceCommandFailed:(id)a3 action:(id)a4 reason:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(ADDeviceResolutionServiceListener *)self _halActionFromAction:a4];
  v11 = [v8 integerValue];

  v12 = [(ADDeviceResolutionServiceListener *)self _crossDeviceCommandExecutionFailedEvent:v11 action:v10 halId:v9];

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

- (void)_logAFAnalyticsCrossDeviceCommandHandledEventWithResult:(int)a3 halActionResult:(int)a4 contextProximityPairs:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  v9 = [(ADDeviceResolutionServiceListener *)self _resultStringFromHALAction:v6 actionResult:v5];
  v10 = [v8 allKeys];
  v11 = [v10 firstObject];

  v12 = [v8 objectForKeyedSubscript:v11];

  v13 = [v11 deviceInfo];
  v14 = [v13 productType];

  [v12 integerValue];
  if (v14)
  {
    v15 = [NSSet setWithObject:v14];
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

- (void)logCrossDeviceCommandEnded:(id)a3 action:(id)a4 actionResult:(id)a5 homeKitTarget:(id)a6 contextProximityPairs:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(ADDeviceResolutionServiceListener *)self _halActionFromAction:v15];
  v18 = [(ADDeviceResolutionServiceListener *)self _halActionResultFromActionResult:v14];

  v19 = [(ADDeviceResolutionServiceListener *)self _halHomeKitTargetFromTarget:v13];
  v20 = [(ADDeviceResolutionServiceListener *)self _crossDeviceCommandExecutionEndedEvent:v17 actionResult:v18 halId:v16 contextProximityPairs:v12 homeKitTarget:v19];

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

  v23 = [(ADDeviceResolutionServiceListener *)self _shouldLogAFAnalyticsCrossDeviceEvent:v15];

  if (v23)
  {
    [(ADDeviceResolutionServiceListener *)self _logAFAnalyticsCrossDeviceCommandHandledEventWithResult:v17 halActionResult:v18 contextProximityPairs:v12];
  }
}

- (void)logCrossDeviceCommandStarted:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = [(ADDeviceResolutionServiceListener *)self _crossDeviceCommandExecutionStartedEvent:[(ADDeviceResolutionServiceListener *)self _halActionFromAction:a4] halId:v6];

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

- (void)logCrossDeviceRequestLink:(id)a3 halId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
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
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s #hal RequestId %@ or halIdentifier %@ should not be nil.", &v11, 0x20u);
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[SVDDeviceResolutionXPCInterface entitlement];
  HasEntitlement = AFConnectionHasEntitlement();

  if (HasEntitlement)
  {
    v8 = [v5 processIdentifier];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADDeviceResolutionServiceListener listener:shouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = v5;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ Device Resolution Service Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v10 = +[SVDDeviceResolutionXPCInterface xpcInterface];
    [v5 setExportedInterface:v10];

    [v5 setExportedObject:self];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002D9B68;
    v15[3] = &unk_10051A380;
    v16 = v8;
    [v5 setInvalidationHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002D9C24;
    v13[3] = &unk_10051A380;
    v14 = v8;
    [v5 setInterruptionHandler:v13];
    [v5 resume];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[ADDeviceResolutionServiceListener listener:shouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = v5;
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

- (ADDeviceResolutionServiceListener)initWithInstanceContext:(id)a3 deviceCircleManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ADDeviceResolutionServiceListener;
  v8 = [(ADDeviceResolutionServiceListener *)&v19 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v8->_instanceContext;
    v8->_instanceContext = v9;

    objc_storeStrong(&v8->_deviceCircleManager, a4);
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

- (int)_halDevicePowerStateFromSystemStateSnapshot:(id)a3
{
  v3 = [a3 sleepState];
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_halDeviceFamilyFromInterfaceIdiom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAUserInterfaceIdiomPHONEValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAUserInterfaceIdiomPADValue])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SAUserInterfaceIdiomCAMEOValue])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:SAUserInterfaceIdiomHORSEMANValue])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:SAUserInterfaceIdiomZEUSValue])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:SAUserInterfaceIdiomWATCHValue])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)_halMediaPlayerStateFromPlaybackState:(int64_t)a3
{
  if (a3 > 5)
  {
    return 2;
  }

  else
  {
    return dword_1003F0784[a3];
  }
}

- (int)_halDeviceProximityFromProximity:(int64_t)a3
{
  if (a3 == 4000)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  if (a3 == 3000)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 2000)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a3 <= 2999)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (id)_halDeviceFromContext:(id)a3 proximity:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HALSchemaHALDevice);
  [v7 setDeviceProximity:{-[ADDeviceResolutionServiceListener _halDeviceProximityFromProximity:](self, "_halDeviceProximityFromProximity:", a4)}];
  v8 = [v6 deviceInfo];
  v9 = [v8 buildVersion];
  [v7 setSystemBuild:v9];

  v10 = [v8 userInterfaceIdiom];
  [v7 setDeviceFamily:{-[ADDeviceResolutionServiceListener _halDeviceFamilyFromInterfaceIdiom:](self, "_halDeviceFamilyFromInterfaceIdiom:", v10)}];

  v11 = [v6 playbackStateSnapshot];
  if (v11)
  {
    v12 = objc_alloc_init(HALSchemaHALMediaPlayerContext);
    [v12 setState:{-[ADDeviceResolutionServiceListener _halMediaPlayerStateFromPlaybackState:](self, "_halMediaPlayerStateFromPlaybackState:", objc_msgSend(v11, "playbackState"))}];
    v13 = [v11 mediaType];
    v14 = [v13 isEqualToString:kMRMediaRemoteMediaTypeMusic];

    if (v14)
    {
      v15 = 10;
    }

    else
    {
      v16 = [v11 mediaType];
      v17 = [v16 isEqualToString:kMRMediaRemoteNowPlayingInfoTypeVideo];

      if (v17)
      {
        v15 = 28;
      }

      else
      {
        v18 = [v11 mediaType];
        v19 = [v18 isEqualToString:kMRMediaRemoteMediaTypePodcast];

        if (v19)
        {
          v15 = 16;
        }

        else
        {
          v20 = [v11 mediaType];
          v21 = [v20 isEqualToString:kMRMediaRemoteMediaTypeAudioBook];

          if (v21)
          {
            v15 = 3;
          }

          else
          {
            v22 = [v11 mediaType];
            v23 = [v22 isEqualToString:kMRMediaRemoteMediaTypeITunesU];

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
      v25 = [v11 nowPlayingTimestamp];

      if (!v25)
      {
LABEL_18:
        [v7 setMediaPlayerContext:v12];

        goto LABEL_19;
      }

      v26 = +[NSDate date];
      v27 = [v11 nowPlayingTimestamp];
      [v26 timeIntervalSinceDate:v27];
      v29 = v28;

      [(ADDeviceResolutionServiceListener *)self _generalizeTimeIntervalsForPrivacy:v29];
      v24 = v30;
    }

    [v12 setTimeSinceLastMediaPlaybackInSeconds:v24];
    goto LABEL_18;
  }

LABEL_19:
  v31 = [v6 alarmSnapshot];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 alarmsByID];
    v34 = [v32 notifiedFiringAlarmIDs];
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
    v35 = v33;
    v64 = v35;
    v65 = &v66;
    [v34 enumerateObjectsUsingBlock:v63];
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

  v41 = [v6 timerSnapshot];
  v42 = v41;
  if (v41)
  {
    v43 = [v41 timersByID];
    v44 = [v42 notifiedFiringTimerIDs];
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
    v45 = v43;
    v61 = v45;
    v62 = &v66;
    [v44 enumerateObjectsUsingBlock:v60];
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

  if ([v6 heardVoiceTrigger] == 2)
  {
    v51 = [v6 heardVoiceTriggerMetadata];
    v52 = +[NSDate date];
    v53 = [v51 deliveryDate];
    [v52 timeIntervalSinceDate:v53];
    v55 = v54;

    v56 = objc_alloc_init(HALSchemaHALVoiceTriggerContext);
    [(ADDeviceResolutionServiceListener *)self _generalizeTimeIntervalsForPrivacy:v55];
    [v56 setTimeSinceVoiceTriggerHeardInSeconds:v57];
    [v7 setVoiceTriggerContext:v56];
  }

  v58 = [v6 systemStateSnapshot];
  if (v58)
  {
    [v7 setPowerState:{-[ADDeviceResolutionServiceListener _halDevicePowerStateFromSystemStateSnapshot:](self, "_halDevicePowerStateFromSystemStateSnapshot:", v58)}];
  }

  return v7;
}

- (id)_crossDeviceCommandExecutionEndedEvent:(int)a3 actionResult:(int)a4 halId:(id)a5 contextProximityPairs:(id)a6 homeKitTarget:(int)a7
{
  v7 = *&a7;
  v9 = *&a4;
  v10 = *&a3;
  v12 = a5;
  v13 = a6;
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
  if ([v12 length])
  {
    v18 = [[NSUUID alloc] initWithUUIDString:v12];
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
  [v13 enumerateKeysAndObjectsUsingBlock:&v24];

  v22 = [NSArray arrayWithArray:v21, v24, v25, v26, v27, v28];
  [v14 setSelecteds:v22];

  return v15;
}

- (id)_crossDeviceCommandExecutionFailedEvent:(int)a3 action:(int)a4 halId:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v7 = a5;
  v8 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionFailed);
  [v8 setReason:v6];
  [v8 setAction:v5];
  v9 = objc_alloc_init(HALSchemaHALClientEvent);
  v10 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionContext);
  [v10 setFailed:v8];
  [v9 setCrossDeviceCommandContext:v10];
  v11 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  if ([v7 length])
  {
    v12 = [[NSUUID alloc] initWithUUIDString:v7];
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

- (id)_crossDeviceCommandExecutionStartedEvent:(int)a3 halId:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(HALSchemaHALClientEvent);
  v6 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionStarted);
  v7 = objc_alloc_init(HALSchemaHALCrossDeviceCommandExecutionContext);
  [v7 setStartedOrChanged:v6];
  [v5 setCrossDeviceCommandContext:v7];
  v8 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  if ([v4 length])
  {
    v9 = [[NSUUID alloc] initWithUUIDString:v4];
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

- (int)_halHomeKitTargetFromTarget:(id)a3
{
  v3 = [a3 integerValue];
  if ((v3 - 1) >= 7)
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (int)_halActionFromAction:(id)a3
{
  v3 = [a3 integerValue];
  if ((v3 - 1) >= 0x15)
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (int)_halActionResultFromActionResult:(id)a3
{
  v3 = [a3 integerValue];
  if ((v3 - 1) >= 3)
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (id)_resultStringFromHALAction:(int)a3 actionResult:(int)a4
{
  switch(a3)
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
      if (a4 >= 4)
      {
        goto LABEL_12;
      }

      result = off_10051BD98[a4];
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
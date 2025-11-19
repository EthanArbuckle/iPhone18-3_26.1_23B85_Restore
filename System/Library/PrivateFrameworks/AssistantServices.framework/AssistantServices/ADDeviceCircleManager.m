@interface ADDeviceCircleManager
+ (ADDeviceCircleManager)sharedInstance;
+ (id)_rapportLinkWithQueue:(id)a3;
- (BOOL)_isLocalDeviceCollectorCandidate;
- (BOOL)_isRemoteDeviceCollectorCandidate:(id)a3;
- (id)_collectorDeviceIdentifiersWithFlags;
- (id)_handleDeviceCapabilitiesFetch:(id)a3 fromPeer:(id)a4;
- (id)_handlePeersAndSVDCapabilitiesFetch:(id)a3 fromPeer:(id)a4;
- (id)_handleSVDCapabilitiesFetch:(id)a3 fromPeer:(id)a4;
- (id)_initWithQueue:(id)a3 rapportLink:(id)a4;
- (id)_keepAliveLinkToDevice:(id)a3;
- (id)_localPeerData;
- (id)_localPeerInfo;
- (id)_managedPeerInfoForAssistantIdentifier:(id)a3;
- (id)_managedPeerInfoForHomeKitAccessoryIdentifier:(id)a3;
- (id)_managedPeerInfoForIDSDeviceUniqueIdentifier:(id)a3;
- (id)_managedPeerInfoForRapportEffectiveIdentifier:(id)a3;
- (id)_managedPeerInfoMatchingPeerInfo:(id)a3;
- (id)_rapportLinkMessageOptions;
- (id)_remotePeerInfoForAssistantIdentifier:(id)a3;
- (id)_remotePeerInfoForHomeKitAccessoryIdentifier:(id)a3;
- (id)_remotePeerInfoForIDSDeviceUniqueIdentifier:(id)a3;
- (id)_remotePeerInfoForRapportEffectiveIdentifier:(id)a3;
- (id)_rpDeviceMatchingPeerInfo:(id)a3;
- (id)_setUpOnDemandClientLinkToContextCollector;
- (id)_syncCompanionLinkDeviceLocalPeerData;
- (id)assistantIdForDeviceWithIdsDeviceUniqueIdentifier:(id)a3;
- (id)idsDeviceUniqueIdentifierForDeviceWithAssistantId:(id)a3;
- (id)localPeerInfo;
- (id)locationSharingDevice;
- (id)managedPeerInfoMatchingPeerInfo:(id)a3;
- (void)_activateOnDemandClientLinkToContextCollector:(id)a3 completion:(id)a4;
- (void)_cleanupOnDemandClientLinkToContextCollector:(id)a3;
- (void)_executeCommand:(id)a3 onPeer:(id)a4 executionContext:(id)a5 throughOnDemandConnectionToContextCollector:(BOOL)a6 completion:(id)a7;
- (void)_executeCommandThroughOnDemandClientLinkToContextCollector:(id)a3 onPeer:(id)a4 debugID:(id)a5 completion:(id)a6;
- (void)_fetchDeviceCapabilitiesForDevices:(id)a3 completion:(id)a4;
- (void)_fetchDeviceCapabilitiesForDevices:(id)a3 fromCollectorWithIndex:(unint64_t)a4 existingCapabilities:(id)a5 completion:(id)a6;
- (void)_forwardExecuteCommandToDevice:(id)a3 message:(id)a4 from:(id)a5 completion:(id)a6;
- (void)_handleExecuteCommand:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)_reelectCollectorDeviceForReason:(int64_t)a3 completion:(id)a4;
- (void)_reelectCollectorIfNecessary;
- (void)_registerRequestHandlerForRequestId:(id)a3 messageType:(id)a4 handler:(id)a5;
- (void)_removeRemotePeerInfoWithRapportEffectiveIdentifier:(id)a3;
- (void)_resetRapportLinkAndReconnectNow:(BOOL)a3;
- (void)_setAssistantId:(id)a3 forDeviceWithIdsDeviceUniqueIdentifier:(id)a4;
- (void)_setupClientLink;
- (void)_startStationaryScoreTimer;
- (void)_stopStationaryScoreTimer;
- (void)_updateAssistantIdentifierAndSharedUserIdentifier;
- (void)_updateClientLinkSiriInfo;
- (void)_updateCollectorElectionVersion;
- (void)_updateContextCollectorStatusToRapport:(BOOL)a3;
- (void)_updateCurrentAccessoryInfo:(id)a3;
- (void)_updateDeviceCountTrend;
- (void)_updateLocalPeerInfo:(id)a3;
- (void)_updateRemotePeerInfo:(id)a3;
- (void)_updateSiriInfoWithDeviceCapabilities;
- (void)_updateSiriInfoWithLocalPeerData:(id)a3;
- (void)_updateStationaryScore;
- (void)_updateStationaryScoreAndResetTimer;
- (void)_updateStationaryScoreBroadcasting;
- (void)activeAccountIdentifierDidChange:(id)a3;
- (void)addListener:(id)a3;
- (void)dumpAssistantStateChunk:(id)a3;
- (void)executeCommand:(id)a3 onPeer:(id)a4 executionContext:(id)a5 throughOnDemandRapportConnection:(id)a6;
- (void)getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:(id)a3;
- (void)getCapabilitiesForDevice:(id)a3 completion:(id)a4;
- (void)getCapabilitiesForReachableDevicesWithCompletion:(id)a3;
- (void)getContextCollectorDeviceIdentifiersWithCompletion:(id)a3;
- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)a3;
- (void)homeInfoManager:(id)a3 didUpdateCurrentAccessoryInfo:(id)a4;
- (void)isMeDeviceDidChange:(id)a3;
- (void)myriadTrialBoostsUpdated:(id)a3;
- (void)preferencesEnabledBitsDidChange:(id)a3;
- (void)preferencesSharedUserIdentifierDidChange:(id)a3;
- (void)rapportLink:(id)a3 didFindDevice:(id)a4;
- (void)rapportLink:(id)a3 didLoseDevice:(id)a4;
- (void)rapportLink:(id)a3 didReceiveMessage:(id)a4 ofType:(id)a5 fromPeer:(id)a6 completion:(id)a7;
- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5;
- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4;
- (void)rapportLinkDidInterrupt:(id)a3;
- (void)rapportLinkDidInvalidate:(id)a3;
- (void)reelectCollectorDeviceForReason:(int64_t)a3 completion:(id)a4;
- (void)reelectContextCollectorWithBestScore;
- (void)removeListener:(id)a3;
- (void)sendRequestType:(id)a3 data:(id)a4 toDeviceWithAssistantIdentifier:(id)a5 onQueue:(id)a6 completion:(id)a7;
- (void)sharedDataDidChange:(id)a3;
- (void)wakeUpNearbyDevices;
@end

@implementation ADDeviceCircleManager

+ (ADDeviceCircleManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100191ADC;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_100590408 != -1)
  {
    dispatch_once(&qword_100590408, block);
  }

  v2 = qword_100590400;

  return v2;
}

- (id)localPeerInfo
{
  os_unfair_lock_lock(&self->_peerInfoLock);
  v3 = [(ADDeviceCircleManager *)self _localPeerInfo];
  os_unfair_lock_unlock(&self->_peerInfoLock);

  return v3;
}

- (id)_localPeerInfo
{
  localPeerInfo = self->_localPeerInfo;
  if (!localPeerInfo)
  {
    v4 = [(ADDeviceCircleManager *)self _localPeerData];
    v5 = sub_100184DB0(v4);

    [(ADDeviceCircleManager *)self _updateLocalPeerInfo:v5];
    localPeerInfo = self->_localPeerInfo;
  }

  return localPeerInfo;
}

- (void)_updateAssistantIdentifierAndSharedUserIdentifier
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001D42C;
  v9[3] = &unk_1005143D8;
  v9[4] = self;
  v3 = objc_retainBlock(v9);
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 assistantIsEnabled];

  if (v5)
  {
    v6 = +[ADCommandCenter sharedCommandCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100186A8C;
    v7[3] = &unk_100519990;
    v7[4] = self;
    v8 = v3;
    [v6 fetchActiveAccount:v7];
  }

  else
  {
    (v3[2])(v3, 0, 0);
  }
}

- (id)locationSharingDevice
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [(ADRapportLink *)self->_clientLink activeDevices];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v19 + 1) + 8 * v6);
      v8 = [v7 siriInfo];
      v9 = [v8 objectForKeyedSubscript:@"peerData"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 objectForKeyedSubscript:@"isLocationSharingDevice"];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v12 = [v7 effectiveIdentifier];
    v13 = [(NSMutableDictionary *)self->_remotePeerInfoByRapportEffectiveIdentifier objectForKey:v12];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = +[ADMultiUserMeDevice sharedInstance];
  v15 = [v14 isMeDevice];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v13 = self->_localPeerInfo;
  }

  else
  {
    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (void)reelectCollectorDeviceForReason:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184194;
  block[3] = &unk_10051BFA8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)dumpAssistantStateChunk:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001842A4;
  v8[3] = &unk_10051CF08;
  v9 = a3;
  v4 = v9;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001842BC;
  v6[3] = &unk_10051A610;
  v7 = objc_retainBlock(v8);
  v5 = v7;
  [(ADDeviceCircleManager *)self getManagedLocalAndRemotePeerInfoWithCompletion:v6];
}

- (id)_remotePeerInfoForRapportEffectiveIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_remotePeerInfoByRapportEffectiveIdentifier objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_remotePeerInfoForHomeKitAccessoryIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier objectForKey:v4];
    v6 = [(ADDeviceCircleManager *)self _remotePeerInfoForRapportEffectiveIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_remotePeerInfoForIDSDeviceUniqueIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier objectForKey:v4];
    v6 = [(ADDeviceCircleManager *)self _remotePeerInfoForRapportEffectiveIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_remotePeerInfoForAssistantIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_rapportEffectiveIdentifiersByAssistantIdentifier objectForKey:v4];
    v6 = [(ADDeviceCircleManager *)self _remotePeerInfoForRapportEffectiveIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeRemotePeerInfoWithRapportEffectiveIdentifier:(id)a3
{
  v11 = a3;
  v4 = [v11 length];
  v5 = v11;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_remotePeerInfoByRapportEffectiveIdentifier objectForKey:v11];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 idsDeviceUniqueIdentifier];
      if ([v8 length])
      {
        [(NSMutableDictionary *)self->_rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier removeObjectForKey:v8];
      }

      v9 = [v7 assistantIdentifier];
      if ([v9 length])
      {
        [(NSMutableDictionary *)self->_rapportEffectiveIdentifiersByAssistantIdentifier removeObjectForKey:v9];
      }

      v10 = [v7 homeKitAccessoryIdentifier];
      if ([v10 length])
      {
        [(NSMutableDictionary *)self->_rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier removeObjectForKey:v10];
      }

      [(NSMutableDictionary *)self->_remotePeerInfoByRapportEffectiveIdentifier removeObjectForKey:v11];
    }

    v5 = v11;
  }
}

- (void)_updateRemotePeerInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rapportEffectiveIdentifier];
    if (![v6 length])
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "[ADDeviceCircleManager _updateRemotePeerInfo:]";
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = v6;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Unable to add or update remote peer info %@ because its rapportEffectiveIdentifier is %@.", &v25, 0x20u);
      }

      goto LABEL_24;
    }

    v7 = [(NSMutableDictionary *)self->_remotePeerInfoByRapportEffectiveIdentifier objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isEqual:v5])
      {
LABEL_21:

LABEL_24:
        goto LABEL_25;
      }

      [(ADDeviceCircleManager *)self _removeRemotePeerInfoWithRapportEffectiveIdentifier:v6];
    }

    remotePeerInfoByRapportEffectiveIdentifier = self->_remotePeerInfoByRapportEffectiveIdentifier;
    if (!remotePeerInfoByRapportEffectiveIdentifier)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = self->_remotePeerInfoByRapportEffectiveIdentifier;
      self->_remotePeerInfoByRapportEffectiveIdentifier = v10;

      remotePeerInfoByRapportEffectiveIdentifier = self->_remotePeerInfoByRapportEffectiveIdentifier;
    }

    [(NSMutableDictionary *)remotePeerInfoByRapportEffectiveIdentifier setObject:v5 forKey:v6];
    v12 = [v5 idsDeviceUniqueIdentifier];
    if ([v12 length])
    {
      rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier = self->_rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier;
      if (!rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = self->_rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier;
        self->_rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier = v14;

        rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier = self->_rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier;
      }

      [(NSMutableDictionary *)rapportEffectiveIdentifiersByIDSDeviceUniqueIdentifier setObject:v6 forKey:v12];
    }

    v16 = [v5 assistantIdentifier];
    if ([v16 length])
    {
      rapportEffectiveIdentifiersByAssistantIdentifier = self->_rapportEffectiveIdentifiersByAssistantIdentifier;
      if (!rapportEffectiveIdentifiersByAssistantIdentifier)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v19 = self->_rapportEffectiveIdentifiersByAssistantIdentifier;
        self->_rapportEffectiveIdentifiersByAssistantIdentifier = v18;

        rapportEffectiveIdentifiersByAssistantIdentifier = self->_rapportEffectiveIdentifiersByAssistantIdentifier;
      }

      [(NSMutableDictionary *)rapportEffectiveIdentifiersByAssistantIdentifier setObject:v6 forKey:v16];
    }

    v20 = [v5 homeKitAccessoryIdentifier];
    if ([v20 length])
    {
      rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier = self->_rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier;
      if (!rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier)
      {
        v22 = objc_alloc_init(NSMutableDictionary);
        v23 = self->_rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier;
        self->_rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier = v22;

        rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier = self->_rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier;
      }

      [(NSMutableDictionary *)rapportEffectiveIdentifiersByHomeKitAccessoryIdentifier setObject:v6 forKey:v20];
    }

    goto LABEL_21;
  }

LABEL_25:
}

- (void)_updateLocalPeerInfo:(id)a3
{
  v4 = a3;
  localPeerInfo = self->_localPeerInfo;
  if (localPeerInfo != v4 && ([(AFPeerInfo *)localPeerInfo isEqual:v4]& 1) == 0)
  {
    v6 = self->_localPeerInfo;
    v7 = v4;
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADDeviceCircleManager _updateLocalPeerInfo:]";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ -> %@", buf, 0x20u);
    }

    v9 = [(AFPeerInfo *)v7 copy];
    v10 = self->_localPeerInfo;
    self->_localPeerInfo = v9;

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100184C8C;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v15 = v6;
    v16 = v7;
    v12 = v7;
    v13 = v6;
    dispatch_async(queue, block);
  }
}

- (void)_updateSiriInfoWithLocalPeerData:(id)a3
{
  v3 = [a3 buildDictionaryRepresentation];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADDeviceCircleManager _updateSiriInfoWithLocalPeerData:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Publish peer data %@ to others...", &v5, 0x16u);
  }

  [ADRapportLink updateSiriInfoWithObject:v3 forKey:@"peerData"];
}

- (id)_localPeerData
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001851B8;
  v4[3] = &unk_1005144A8;
  v4[4] = self;
  v2 = [ADDeviceCirclePeerData newWithBuilder:v4];

  return v2;
}

- (id)_managedPeerInfoMatchingPeerInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ADDeviceCircleManager.m" lineNumber:2189 description:{@"Invalid parameter not satisfying: %@", @"peerInfoToMatch != nil"}];
  }

  v6 = [v5 assistantIdentifier];
  if ([v6 length])
  {
    v7 = [(ADDeviceCircleManager *)self _managedPeerInfoForAssistantIdentifier:v6];

    if (v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v8 = [v5 rapportEffectiveIdentifier];
  if ([v8 length])
  {
    v7 = [(ADDeviceCircleManager *)self _managedPeerInfoForRapportEffectiveIdentifier:v8];

    if (v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v9 = [v5 idsDeviceUniqueIdentifier];
  if (![v9 length])
  {

LABEL_15:
    v10 = [v5 homeKitAccessoryIdentifier];
    if ([v10 length])
    {
      v7 = [(ADDeviceCircleManager *)self _managedPeerInfoForHomeKitAccessoryIdentifier:v10];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_19;
  }

  v7 = [(ADDeviceCircleManager *)self _managedPeerInfoForIDSDeviceUniqueIdentifier:v9];

  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_19:

  return v7;
}

- (id)_managedPeerInfoForRapportEffectiveIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ADDeviceCircleManager.m" lineNumber:2177 description:{@"Invalid parameter not satisfying: %@", @"[rapportEffectiveIdentifier length] > 0"}];
  }

  v6 = [(ADDeviceCircleManager *)self _remotePeerInfoForRapportEffectiveIdentifier:v5];
  if (!v6)
  {
    v7 = [(ADDeviceCircleManager *)self _localPeerInfo];
    v8 = [v7 rapportEffectiveIdentifier];
    v9 = [v8 isEqualToString:v5];

    if (v9)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_managedPeerInfoForHomeKitAccessoryIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ADDeviceCircleManager.m" lineNumber:2165 description:{@"Invalid parameter not satisfying: %@", @"[homeKitAccessoryIdentifier length] > 0"}];
  }

  v6 = [(ADDeviceCircleManager *)self _remotePeerInfoForHomeKitAccessoryIdentifier:v5];
  if (!v6)
  {
    v7 = [(ADDeviceCircleManager *)self _localPeerInfo];
    v8 = [v7 homeKitAccessoryIdentifier];
    v9 = [v8 isEqualToString:v5];

    if (v9)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_managedPeerInfoForIDSDeviceUniqueIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ADDeviceCircleManager.m" lineNumber:2153 description:{@"Invalid parameter not satisfying: %@", @"[idsDeviceUniqueIdentifier length] > 0"}];
  }

  v6 = [(ADDeviceCircleManager *)self _remotePeerInfoForIDSDeviceUniqueIdentifier:v5];
  if (!v6)
  {
    v7 = [(ADDeviceCircleManager *)self _localPeerInfo];
    v8 = [v7 idsDeviceUniqueIdentifier];
    v9 = [v8 isEqualToString:v5];

    if (v9)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_managedPeerInfoForAssistantIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ADDeviceCircleManager.m" lineNumber:2140 description:{@"Invalid parameter not satisfying: %@", @"[assistantIdentifier length] > 0"}];
  }

  v6 = [v5 uppercaseString];
  v7 = [(ADDeviceCircleManager *)self _remotePeerInfoForAssistantIdentifier:v6];
  if (!v7)
  {
    v8 = [(ADDeviceCircleManager *)self _localPeerInfo];
    v9 = [v8 assistantIdentifier];
    v10 = [v9 isEqualToString:v6];

    if (v10)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_keepAliveLinkToDevice:(id)a3
{
  v4 = a3;
  v5 = [ADRapportLinkConfiguration newWithBuilder:&stru_100514460];
  v6 = [[ADRapportLink alloc] initWithQueue:self->_queue configuration:v5];
  [(ADRapportLink *)v6 setServiceType:@"com.apple.siri.wakeup"];
  [(ADRapportLink *)v6 setDestinationDevice:v4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100185A48;
  v9[3] = &unk_10051C498;
  v10 = v4;
  v7 = v4;
  [(ADRapportLink *)v6 activateWithCompletion:v9];

  return v6;
}

- (void)_updateDeviceCountTrend
{
  v3 = [(ADRapportLink *)self->_clientLink activeDevices];
  v4 = [v3 count];

  v5 = +[NSDate date];
  v6 = objc_alloc_init(ADDeviceCountAndTimestamp);
  [(ADDeviceCountAndTimestamp *)v6 setDeviceCount:v4];
  [(ADDeviceCountAndTimestamp *)v6 setTimestamp:v5];
  v7 = [(NSMutableArray *)self->_deviceCountTrend count];
  deviceCountTrend = self->_deviceCountTrend;
  if (v7)
  {
    v9 = [(NSMutableArray *)deviceCountTrend lastObject];
    v10 = [v9 deviceCount];
    v11 = [v9 timestamp];
    [v5 timeIntervalSinceDate:v11];
    v13 = v12;
    if ([(NSMutableArray *)self->_deviceCountTrend indexOfObjectPassingTest:&stru_100514440]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v4 > v10 || v13 > 60.0)
      {
        [(NSMutableArray *)self->_deviceCountTrend removeAllObjects];
      }

      [(NSMutableArray *)self->_deviceCountTrend addObject:v6];
      goto LABEL_23;
    }

    if (v4 < v10)
    {
LABEL_23:

      goto LABEL_24;
    }

    v14 = [(NSMutableArray *)self->_deviceCountTrend firstObject];
    v15 = [v14 deviceCount];
    v16 = v4 - v15;
    if (v4 - v15 < 0)
    {
      v16 = v15 - v4;
    }

    if (v16 <= 1 && v4 > 2 || v4 == 2 && v15 == 2)
    {
      if (v13 <= 60.0)
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v18 = 136315138;
          v19 = "[ADDeviceCircleManager _updateDeviceCountTrend]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s #hal Local device likely has dropped out of network and back in. Adding 5 point penalty", &v18, 0xCu);
        }

        self->_rapportInstabilityPenalty += 5;
      }
    }

    else if (!v10 || v13 <= 60.0)
    {
      goto LABEL_22;
    }

    [(NSMutableArray *)self->_deviceCountTrend removeAllObjects];
LABEL_22:
    [(NSMutableArray *)self->_deviceCountTrend addObject:v6];

    goto LABEL_23;
  }

  [(NSMutableArray *)deviceCountTrend addObject:v6];
LABEL_24:
}

- (void)_updateStationaryScore
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v3 = objc_alloc_init(SiriCoreWiFiManagerClient);
  v21 = 0;
  v22 = 0;
  [v3 hasAssociatedNetworkWithRSSI:&v26 andSNR:&v25 andCCA:&v24 andPhyMode:&v22 andChannelInfo:&v21 isCaptive:&v23];
  v4 = v22;
  v5 = v21;
  self->_rollingRSSI = (v26 + (self->_rollingRSSI * self->_rollingRSSICount)) / (self->_rollingRSSICount + 1);
  v6 = sub_10000A928(@"assistantdDidLaunch");
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:v6];
  v9 = v8 / 3600.0;

  v10 = log(((v9 * 2.0) + 1.0));
  v11 = [(ADRapportLink *)self->_clientLink activeDevices];
  v12 = [v11 count];

  if (AFIsHorseman())
  {
    v13 = 20;
  }

  else
  {
    v13 = 0;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    rapportInstabilityPenalty = self->_rapportInstabilityPenalty;
    *buf = 136316162;
    v28 = "[ADDeviceCircleManager _updateStationaryScore]";
    v29 = 2048;
    v30 = v10;
    v31 = 2048;
    v32 = rapportInstabilityPenalty;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #hal normalized assistantd longevity score: %f, rapport link penalty: %lu, # devices seen: %lu, device boost: %lu", buf, 0x34u);
  }

  rollingRSSICount = self->_rollingRSSICount;
  self->_currentStationaryScore = (((self->_rollingRSSI + v10) - (self->_rapportInstabilityPenalty - v10)) + (2 * v12)) + v13;
  self->_rollingRSSICount = rollingRSSICount + 1;
  v16 = +[ADRapportLink siriInfoToBeBroadcasted];
  v17 = [v16 objectForKey:@"stationaryScore"];

  if (!v17 || (currentStationaryScore = self->_currentStationaryScore, [v17 floatValue], vabds_f32(currentStationaryScore, v19) >= 25.0))
  {
    [(ADDeviceCircleManager *)self _updateClientLinkSiriInfo];
  }
}

- (void)_updateStationaryScoreAndResetTimer
{
  [(ADDeviceCircleManager *)self _stopStationaryScoreTimer];
  [(ADDeviceCircleManager *)self _updateStationaryScore];

  [(ADDeviceCircleManager *)self _startStationaryScoreTimer];
}

- (void)_updateStationaryScoreBroadcasting
{
  if (-[ADDeviceCircleManager _isLocalDeviceCollectorCandidate](self, "_isLocalDeviceCollectorCandidate") && (-[ADRapportLink activeDevices](self->_clientLink, "activeDevices"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    if (!self->_stationaryScoreTimer)
    {

      [(ADDeviceCircleManager *)self _updateStationaryScoreAndResetTimer];
    }
  }

  else
  {

    [(ADDeviceCircleManager *)self _stopStationaryScoreTimer];
  }
}

- (void)_stopStationaryScoreTimer
{
  stationaryScoreTimer = self->_stationaryScoreTimer;
  if (stationaryScoreTimer)
  {
    [(AFWatchdogTimer *)stationaryScoreTimer cancel];
    v4 = self->_stationaryScoreTimer;
    self->_stationaryScoreTimer = 0;
  }
}

- (void)_startStationaryScoreTimer
{
  if (!self->_stationaryScoreTimer)
  {
    objc_initWeak(&location, self);
    v3 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10018634C;
    v10 = &unk_10051B5F0;
    objc_copyWeak(&v11, &location);
    v5 = [v3 initWithTimeoutInterval:queue onQueue:&v7 timeoutHandler:600.0];
    stationaryScoreTimer = self->_stationaryScoreTimer;
    self->_stationaryScoreTimer = v5;

    [(AFWatchdogTimer *)self->_stationaryScoreTimer start:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)isMeDeviceDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADDeviceCircleManager isMeDeviceDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001864B4;
  block[3] = &unk_10051B5F0;
  objc_copyWeak(&v7, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)sharedDataDidChange:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADDeviceCircleManager sharedDataDidChange:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ((AFIsNano() & 1) == 0)
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100186660;
    v7[3] = &unk_10051C650;
    v7[4] = self;
    objc_copyWeak(&v8, buf);
    dispatch_async(queue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)myriadTrialBoostsUpdated:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = +[ADMyriadSettingsManager sharedSettingsManager];
    v7 = [v6 treatmentId];
    v10 = 136315394;
    v11 = "[ADDeviceCircleManager myriadTrialBoostsUpdated:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Trial Boost Notification Received For TreatmentID: %@", &v10, 0x16u);
  }

  v8 = [(ADDeviceCircleManager *)self _syncCompanionLinkDeviceLocalPeerData];
  v9 = [(ADDeviceCircleManager *)self _localPeerData];
  [(ADDeviceCircleManager *)self _updateSiriInfoWithLocalPeerData:v9];
}

- (void)_updateCurrentAccessoryInfo:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[ADDeviceCircleManager _updateCurrentAccessoryInfo:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s currentAccessoryInfo = %@", &v14, 0x16u);
  }

  v6 = [(ADRapportLink *)self->_clientLink localDevice];
  v7 = self->_currentAccessoryInfo;
  v8 = v4;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (v8 && v7)
    {
      v10 = [(AFHomeAccessoryInfo *)v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = [(AFHomeAccessoryInfo *)v9 copy];
    currentAccessoryInfo = self->_currentAccessoryInfo;
    self->_currentAccessoryInfo = v11;

    v13 = [(ADDeviceCircleManager *)self _syncCompanionLinkDeviceLocalPeerData];
  }

LABEL_11:
}

- (void)preferencesSharedUserIdentifierDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186BBC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)activeAccountIdentifierDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186C38;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)preferencesEnabledBitsDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186CB4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)homeInfoManager:(id)a3 didUpdateCurrentAccessoryInfo:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100186D88;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)rapportLink:(id)a3 didReceiveMessage:(id)a4 ofType:(id)a5 fromPeer:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  dispatch_assert_queue_V2(self->_queue);
  if ([v12 isEqualToString:@"svdCapabilities_fetch"] && self->_isCollector)
  {
    v15 = [(ADDeviceCircleManager *)self _handleSVDCapabilitiesFetch:v11 fromPeer:v13];
LABEL_9:
    v16 = v15;
    v14[2](v14, v15, 0);

    goto LABEL_10;
  }

  if ([v12 isEqualToString:@"device_capabilities_fetch"] && self->_isCollector)
  {
    v15 = [(ADDeviceCircleManager *)self _handleDeviceCapabilitiesFetch:v11 fromPeer:v13];
    goto LABEL_9;
  }

  if ([v12 isEqualToString:@"peers_svdCapabilities_fetch"])
  {
    v15 = [(ADDeviceCircleManager *)self _handlePeersAndSVDCapabilitiesFetch:v11 fromPeer:v13];
    goto LABEL_9;
  }

  if ([v12 isEqualToString:@"execute_command_request"])
  {
    [(ADDeviceCircleManager *)self _handleExecuteCommand:v11 fromPeer:v13 completion:v14];
  }

  else
  {
    v17 = [(NSMapTable *)self->_requestHandlers keyEnumerator];
    v18 = [v17 allObjects];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100187120;
    v25[3] = &unk_1005143B0;
    v19 = v12;
    v26 = v19;
    v20 = [v18 af_firstObjectPassingTest:v25];

    v21 = [(NSMapTable *)self->_requestHandlers objectForKey:v20];
    v22 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v28 = "[ADDeviceCircleManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
      v29 = 2112;
      v30 = v21;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback handler:%@", buf, 0x16u);
    }

    if ([v21 conformsToProtocol:&OBJC_PROTOCOL___ADDeviceCircleRequestHandler])
    {
      v23 = v21;
      if (objc_opt_respondsToSelector())
      {
        [v23 handle:v11 fromPeer:v13 completion:v14];
      }
    }

    else
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "[ADDeviceCircleManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
        v29 = 2112;
        v30 = v19;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s #hal Unexpected message type: %@", buf, 0x16u);
      }

      v23 = [AFError errorWithCode:1014];
      (v14)[2](v14, 0, v23);
    }
  }

LABEL_10:
}

- (void)_handleExecuteCommand:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v12 = +[ADFMDMonitor sharedManager];
  v13 = [v12 isLostModeActive];

  if (!v13)
  {
    if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled])
    {
      v15 = [v8 objectForKeyedSubscript:@"recipient_assistant_identifier"];
      if ([v15 length])
      {
        v16 = [(ADDeviceCircleManager *)self _localPeerData];
        v17 = [v16 assistantIdentifier];
        v18 = [v15 isEqualToString:v17];

        if ((v18 & 1) == 0)
        {
          v28 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
            v45 = 2112;
            v46 = v15;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s #hal Received execute command with recipient of %@. Will attempt to forward.", buf, 0x16u);
          }

          v29 = [(ADDeviceCircleManager *)self _managedPeerInfoForAssistantIdentifier:v15];
          if (v29)
          {
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1001879A4;
            v38[3] = &unk_100514DE0;
            v39 = v15;
            v40 = v10;
            [(ADDeviceCircleManager *)self _forwardExecuteCommandToDevice:v39 message:v8 from:v9 completion:v38];

            v30 = v39;
          }

          else
          {
            v34 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
              v45 = 2112;
              v46 = v15;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s #hal Unable to find recipient peerInfo with assistantId: %@.", buf, 0x16u);
            }

            v30 = [AFError errorWithCode:1017];
            (*(v10 + 2))(v10, 0, v30);
          }

          goto LABEL_45;
        }
      }
    }

    v15 = [v8 objectForKeyedSubscript:@"serialized_command"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v19 = [AceObject aceObjectWithPlistData:v15];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 dictionary];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Invalid command received. Ignoring.", buf, 0xCu);
        }

        v41 = @"execute_command_response";
        v32 = objc_alloc_init(SACommandIgnored);
        v33 = [v32 dictionary];
        v42 = v33;
        v26 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];

        if (v10)
        {
          (*(v10 + 2))(v10, v26, 0);
        }

        goto LABEL_43;
      }

LABEL_16:
      v19 = [v8 objectForKeyedSubscript:@"execution_context"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Received malformed execution context. Continuing with execution.", buf, 0xCu);
        }

        v19 = 0;
      }

      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Dispatching commandDict to ADCommandCenter", buf, 0xCu);
        if (v19)
        {
          goto LABEL_22;
        }
      }

      else if (v19)
      {
LABEL_22:
        v23 = [[AFCommandExecutionInfo alloc] initWithDictionaryRepresentation:v19];
        v24 = [ADPeerInfo alloc];
        v25 = [v23 originPeerInfo];
        v26 = [(ADPeerInfo *)v24 initWithAFPeerInfo:v25];

LABEL_42:
        v35 = +[ADCommandCenter sharedCommandCenter];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100187AAC;
        v36[3] = &unk_100514DE0;
        v36[4] = self;
        v37 = v10;
        [v35 executeCommand:v20 fromPeer:v26 remoteExecutionInfo:v19 reply:v36];

        goto LABEL_43;
      }

      v26 = 0;
      goto LABEL_42;
    }

    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Invalid command received. Ignoring.", buf, 0xCu);
      if (v10)
      {
        goto LABEL_25;
      }
    }

    else if (v10)
    {
LABEL_25:
      v26 = [AFError errorWithCode:1015];
      (*(v10 + 2))(v10, 0, v26);
      v20 = 0;
LABEL_43:

LABEL_44:
      goto LABEL_45;
    }

    v20 = 0;
    goto LABEL_44;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v44 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]";
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Lost mode is active, rejecting incoming request", buf, 0xCu);
    if (!v10)
    {
      goto LABEL_46;
    }

    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v15 = [AFError errorWithCode:1003];
    (*(v10 + 2))(v10, 0, v15);
LABEL_45:
  }

LABEL_46:
}

- (id)_handleDeviceCapabilitiesFetch:(id)a3 fromPeer:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKey:@"get_capabilities_for_devices"];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v28 = "[ADDeviceCircleManager _handleDeviceCapabilitiesFetch:fromPeer:]";
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal capabilities fetch request from %@: %@", buf, 0x20u);
  }

  v20 = v6;
  v21 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(ADRapportLink *)self->_clientLink activeDevices];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 idsDeviceIdentifier];
        if ([v7 containsObject:v15])
        {
          v16 = [v14 siriInfo];
          v17 = [v16 objectForKey:@"deviceCapabilities"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 setObject:v17 forKey:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [v21 copy];

  return v18;
}

- (id)_handlePeersAndSVDCapabilitiesFetch:(id)a3 fromPeer:(id)a4
{
  v5 = a4;
  v6 = +[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled];
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v46 = "[ADDeviceCircleManager _handlePeersAndSVDCapabilitiesFetch:fromPeer:]";
      v47 = 2112;
      v48 = v5;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal Peers and SVD capabilities fetch request from %@: ", buf, 0x16u);
    }

    v34 = v5;
    v35 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = self;
    v8 = [(ADRapportLink *)self->_clientLink activeDevices];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [v13 idsDeviceIdentifier];
          v15 = sub_100188240(v14);

          v16 = [v15 assistantIdentifier];
          v17 = [v16 length];

          if (v17)
          {
            v18 = [v13 siriInfo];
            v19 = [v18 objectForKey:@"deviceCapabilitiesV2"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42[0] = @"peerData";
              v20 = [v15 buildDictionaryRepresentation];
              v42[1] = @"deviceCapabilitiesV2";
              v43[0] = v20;
              v43[1] = v19;
              v21 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

              v22 = [v15 assistantIdentifier];
              [v35 setObject:v21 forKey:v22];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v10);
    }

    v23 = [(ADRapportLink *)v33->_clientLink localDevice];

    if (v23)
    {
      v24 = [(ADDeviceCircleManager *)v33 localPeerInfo];
      v25 = [(ADRapportLink *)v33->_clientLink localDevice];
      v26 = [v25 siriInfo];
      v27 = [v26 objectForKey:@"deviceCapabilitiesV2"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40[0] = @"peerData";
        v28 = [v24 buildDictionaryRepresentation];
        v40[1] = @"deviceCapabilitiesV2";
        v41[0] = v28;
        v41[1] = v27;
        v29 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

        v30 = [v24 assistantIdentifier];
        [v35 setObject:v29 forKey:v30];
      }
    }

    v31 = [v35 copy];

    v5 = v34;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[ADDeviceCircleManager _handlePeersAndSVDCapabilitiesFetch:fromPeer:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #hal Peers and SVD capabilities fetch request not supported on this device.", buf, 0xCu);
    }

    v31 = &__NSDictionary0__struct;
  }

  return v31;
}

- (id)_handleSVDCapabilitiesFetch:(id)a3 fromPeer:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKey:@"get_capabilities_for_assistant_identifiers"];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v30 = "[ADDeviceCircleManager _handleSVDCapabilitiesFetch:fromPeer:]";
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal SVD capabilities fetch request from %@: %@", buf, 0x20u);
  }

  v22 = v6;
  v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(ADRapportLink *)self->_clientLink activeDevices];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 effectiveIdentifier];
        v16 = [(ADDeviceCircleManager *)self _managedPeerInfoForRapportEffectiveIdentifier:v15];
        v17 = [v16 assistantIdentifier];

        if ([v7 containsObject:v17])
        {
          v18 = [v14 siriInfo];
          v19 = [v18 objectForKey:@"deviceCapabilitiesV2"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 setObject:v19 forKey:v17];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = [v23 copy];

  return v20;
}

- (void)rapportLinkDidInvalidate:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADDeviceCircleManager rapportLinkDidInvalidate:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal", &v5, 0xCu);
  }

  [(ADDeviceCircleManager *)self _resetRapportLinkAndReconnectNow:0];
}

- (void)rapportLinkDidInterrupt:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADDeviceCircleManager rapportLinkDidInterrupt:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal", &v5, 0xCu);
  }

  [(ADDeviceCircleManager *)self _resetRapportLinkAndReconnectNow:1];
}

- (void)_resetRapportLinkAndReconnectNow:(BOOL)a3
{
  v3 = a3;
  currentCollectorIDs = self->_currentCollectorIDs;
  self->_currentCollectorIDs = 0;

  self->_isCollector = 0;
  [(ADRapportLink *)self->_clientLink removeListener:self];
  [(ADRapportLink *)self->_clientLink invalidate];
  clientLink = self->_clientLink;
  self->_clientLink = 0;

  self->_rapportInstabilityPenalty += 10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001888A0;
  v13[3] = &unk_10051DFE8;
  v13[4] = self;
  v7 = objc_retainBlock(v13);
  v8 = v7;
  if (v3)
  {
    (v7[2])(v7);
  }

  else
  {
    v9 = dispatch_time(0, 20000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001888FC;
    block[3] = &unk_10051E038;
    block[4] = self;
    v12 = v8;
    dispatch_after(v9, queue, block);
  }
}

- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADDeviceCircleManager rapportLink:didUpdateLocalDevice:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #hal %@", &v8, 0x16u);
  }

  [(ADDeviceCircleManager *)self _updateStationaryScoreBroadcasting];
  [(ADDeviceCircleManager *)self _reelectCollectorIfNecessary];
  v7 = [(ADDeviceCircleManager *)self _syncCompanionLinkDeviceLocalPeerData];
}

- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[ADDeviceCircleManager rapportLink:didUpdateDevice:changes:]";
    v17 = 2112;
    v18 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v15, 0x16u);
  }

  v11 = [(ADDeviceCircleManager *)self _isRemoteDeviceCollectorCandidate:v9];
  if ((v5 & 2) != 0 && v11)
  {
    [(ADDeviceCircleManager *)self _reelectCollectorIfNecessary];
  }

  v12 = sub_100188B7C(v9, 0);
  os_unfair_lock_lock(&self->_peerInfoLock);
  [(ADDeviceCircleManager *)self _updateRemotePeerInfo:v12];
  os_unfair_lock_unlock(&self->_peerInfoLock);
  v13 = [v12 assistantIdentifier];
  v14 = [v12 idsDeviceUniqueIdentifier];
  [(ADDeviceCircleManager *)self _setAssistantId:v13 forDeviceWithIdsDeviceUniqueIdentifier:v14];
}

- (void)rapportLink:(id)a3 didLoseDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADDeviceCircleManager rapportLink:didLoseDevice:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal %@", &v12, 0x16u);
  }

  currentCollectorIDs = self->_currentCollectorIDs;
  v10 = [v7 idsDeviceIdentifier];
  LODWORD(currentCollectorIDs) = [(NSArray *)currentCollectorIDs containsObject:v10];

  if (currentCollectorIDs)
  {
    [(ADDeviceCircleManager *)self _reelectCollectorDeviceForReason:3 completion:0];
  }

  else
  {
    [(ADDeviceCircleManager *)self _updateStationaryScoreBroadcasting];
  }

  [(ADDeviceCircleManager *)self _updateDeviceCountTrend];
  os_unfair_lock_lock(&self->_peerInfoLock);
  v11 = [v7 effectiveIdentifier];
  [(ADDeviceCircleManager *)self _removeRemotePeerInfoWithRapportEffectiveIdentifier:v11];

  os_unfair_lock_unlock(&self->_peerInfoLock);
}

- (void)rapportLink:(id)a3 didFindDevice:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADDeviceCircleManager rapportLink:didFindDevice:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #hal %@", &v10, 0x16u);
  }

  [(ADDeviceCircleManager *)self _updateStationaryScoreBroadcasting];
  [(ADDeviceCircleManager *)self _reelectCollectorIfNecessary];
  [(ADDeviceCircleManager *)self _updateDeviceCountTrend];
  v7 = sub_100188B7C(v5, 0);
  os_unfair_lock_lock(&self->_peerInfoLock);
  [(ADDeviceCircleManager *)self _updateRemotePeerInfo:v7];
  os_unfair_lock_unlock(&self->_peerInfoLock);
  v8 = [v7 assistantIdentifier];
  v9 = [v7 idsDeviceUniqueIdentifier];
  [(ADDeviceCircleManager *)self _setAssistantId:v8 forDeviceWithIdsDeviceUniqueIdentifier:v9];
}

- (void)_fetchDeviceCapabilitiesForDevices:(id)a3 fromCollectorWithIndex:(unint64_t)a4 existingCapabilities:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(NSArray *)self->_currentCollectorIDs count]<= a4)
  {
    v12[2](v12, v11);
  }

  else if ([v10 count])
  {
    v24 = [(NSArray *)self->_currentCollectorIDs objectAtIndex:a4];
    v13 = objc_alloc_init(NSMutableSet);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100189C68;
    v33[3] = &unk_1005146D8;
    v14 = v10;
    v34 = v14;
    v15 = v13;
    v35 = v15;
    v36 = self;
    v39 = a4;
    v16 = v11;
    v37 = v16;
    v38 = v12;
    v17 = objc_retainBlock(v33);
    v25 = [v14 af_lenientMappedArray:&stru_100514318];
    clientLink = self->_clientLink;
    v40 = @"get_capabilities_for_assistant_identifiers";
    v41 = v25;
    v18 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v19 = [(ADDeviceCircleManager *)self _rapportLinkMessageOptions];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100189D58;
    v26[3] = &unk_100514388;
    v27 = v14;
    v28 = v16;
    v29 = v15;
    v30 = self;
    v31 = v24;
    v32 = v17;
    v20 = v24;
    v21 = v17;
    v22 = v15;
    [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"svdCapabilities_fetch" messagePayload:v18 toDeviceWithIDSDeviceID:v20 options:v19 completion:v26];
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (void)_fetchDeviceCapabilitiesForDevices:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10018A564;
    v9[3] = &unk_10051CF08;
    v10 = v7;
    [(ADDeviceCircleManager *)self _fetchDeviceCapabilitiesForDevices:v6 fromCollectorWithIndex:0 existingCapabilities:v8 completion:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_updateSiriInfoWithDeviceCapabilities
{
  if (!AFSupportsHALCapabilitiesDonation())
  {
    return;
  }

  v3 = +[AFInstanceContext currentContext];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[AFPreferences sharedPreferences];
  if ([v5 assistantIsEnabled])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [[SVDAssistantEnabledCapability alloc] initWithStatus:v6];
  [v4 addObject:v7];
  if ((AFIsATV() & 1) == 0)
  {
    v8 = [[SVDAlarmTimerIntentsHandlingCapability alloc] initWithStatus:1];
    [v4 addObject:v8];
  }

  if (AFIsATV())
  {
    v9 = [[SVDAppLaunchCapability alloc] initWithStatus:1];
    [v4 addObject:v9];
    v10 = [[SVDVideoPlaybackCapability alloc] initWithStatus:1];
    [v4 addObject:v10];
    v11 = [[SVDSeymourRoutingCapability alloc] initWithStatus:1];
    [v4 addObject:v11];
    if (+[AFFeatureFlags isLassoEnabled])
    {
      v12 = [[SVDProfileSwitchingCapability alloc] initWithStatus:1];
      [v4 addObject:v12];
    }
  }

  else
  {
    if (!AFIsHorseman() || (AFIsHorseman() & 1) == 0 && !AFIsIOS())
    {
      goto LABEL_16;
    }

    v9 = [[SVDCustomTimerIntentHandlingCapability alloc] initWithStatus:1];
    [v4 addObject:v9];
  }

LABEL_16:
  svdCapabilities = self->_svdCapabilities;
  p_svdCapabilities = &self->_svdCapabilities;
  if (![(NSArray *)svdCapabilities isEqualToArray:v4])
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315394;
      v18 = "[ADDeviceCircleManager _updateSiriInfoWithDeviceCapabilities]";
      v19 = 2112;
      v20 = v4;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #hal Updating device capabilities V2 to %@", &v17, 0x16u);
    }

    v16 = [v4 af_lenientMappedArray:&stru_100518608];
    [ADRapportLink updateSiriInfoWithObject:v16 forKey:@"deviceCapabilitiesV2"];
    objc_storeStrong(p_svdCapabilities, v4);
  }
}

- (void)_executeCommandThroughOnDemandClientLinkToContextCollector:(id)a3 onPeer:(id)a4 debugID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (AFSupportsHALOnDemandRapportConnection())
  {
    obj = [(ADDeviceCircleManager *)self _setUpOnDemandClientLinkToContextCollector];
    [(ADRapportLink *)self->_onDemandClientLinkToContextCollector invalidate];
    objc_storeStrong(&self->_onDemandClientLinkToContextCollector, obj);
    v14 = [NSMutableDictionary dictionaryWithDictionary:v10];
    v15 = [v11 assistantIdentifier];

    if (v15)
    {
      v16 = [v11 assistantIdentifier];
      [v14 setObject:v16 forKeyedSubscript:@"recipient_assistant_identifier"];
    }

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_10018ACA4;
    v47[4] = sub_10018ACB4;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_10018ACA4;
    v45[4] = sub_10018ACB4;
    v46 = 0;
    v17 = [AFSafetyBlock alloc];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10018ACBC;
    v38[3] = &unk_100514260;
    v18 = v12;
    v39 = v18;
    v40 = 0;
    v41 = self;
    v42 = v13;
    v43 = v47;
    v44 = v45;
    v19 = [v17 initWithBlock:v38];
    v20 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10018AE2C;
    v36[3] = &unk_10051DFE8;
    v22 = v19;
    v37 = v22;
    v23 = [v20 initWithTimeoutInterval:queue onQueue:v36 timeoutHandler:1.7];
    [v23 start];
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[ADDeviceCircleManager _executeCommandThroughOnDemandClientLinkToContextCollector:onPeer:debugID:completion:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s #hal activating #on-demand connection to context collector...", buf, 0xCu);
    }

    onDemandClientLinkToContextCollector = self->_onDemandClientLinkToContextCollector;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10018AE6C;
    v30[3] = &unk_1005142D8;
    v30[4] = self;
    v34 = v45;
    v26 = v22;
    v31 = v26;
    v27 = v14;
    v32 = v27;
    v33 = v18;
    v35 = v47;
    [(ADDeviceCircleManager *)self _activateOnDemandClientLinkToContextCollector:onDemandClientLinkToContextCollector completion:v30];

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }

  else
  {
    v28 = [AFError errorWithCode:13];
    (*(v13 + 2))(v13, 0, v28);
  }
}

- (void)_executeCommand:(id)a3 onPeer:(id)a4 executionContext:(id)a5 throughOnDemandConnectionToContextCollector:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADDeviceCircleManager _executeCommand:onPeer:executionContext:throughOnDemandConnectionToContextCollector:completion:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (v12 && v13)
  {
    queue = self->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10018B4B4;
    v19[3] = &unk_1005167F0;
    v20 = v14;
    v21 = self;
    v22 = v12;
    v23 = v13;
    v25 = a6;
    v24 = v15;
    dispatch_async(queue, v19);

    v18 = v20;
  }

  else
  {
    v18 = [NSError errorWithDomain:kAFAssistantErrorDomain code:31 userInfo:0];
    if (v15)
    {
      (*(v15 + 2))(v15, &__NSDictionary0__struct, v18);
    }
  }
}

- (void)executeCommand:(id)a3 onPeer:(id)a4 executionContext:(id)a5 throughOnDemandRapportConnection:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (AFSupportsHALOnDemandRapportConnection())
  {
    [(ADDeviceCircleManager *)self _executeCommand:v14 onPeer:v10 executionContext:v11 throughOnDemandConnectionToContextCollector:1 completion:v12];
  }

  else if (v12)
  {
    v13 = [AFError errorWithCode:13];
    v12[2](v12, 0, v13);
  }
}

- (void)_reelectCollectorDeviceForReason:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (AFSupportsHALContextCollectorElection())
  {
    v7 = [(ADRapportLink *)self->_clientLink localDevice];
    v8 = [v7 idsDeviceIdentifier];
    v91 = self;
    v9 = [(ADDeviceCircleManager *)self _isLocalDeviceCollectorCandidate];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      if (a3 > 5)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_100514518[a3];
      }

      *buf = 136315394;
      v121 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]";
      v122 = 2112;
      v123 = v11;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s #hal Re-election reason: %@", buf, 0x16u);
    }

    v13 = [(ADRapportLink *)v91->_clientLink activeDevices];

    if (!v13)
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v121 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s #hal No other devices nearby", buf, 0xCu);
      }

      if (v91->_isCollector)
      {
        LOBYTE(currentCollectorIDs) = 1;
      }

      else
      {
        currentCollectorIDs = v91->_currentCollectorIDs;
        if (currentCollectorIDs)
        {
          v91->_currentCollectorIDs = 0;

          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v22 = v91->_listeners;
          v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v114 objects:v128 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v115;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v115 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [*(*(&v114 + 1) + 8 * i) contextCollectorChangedToDevicesWithIdentifiers:v91->_currentCollectorIDs localDeviceIsCollector:v91->_isCollector];
              }

              v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v114 objects:v128 count:16];
            }

            while (v24);
          }

          LOBYTE(currentCollectorIDs) = v91->_isCollector;
        }
      }

      [(ADDeviceCircleManager *)v91 _updateContextCollectorStatusToRapport:currentCollectorIDs & 1];
      if (v6)
      {
        v6[2](v6);
      }

      goto LABEL_72;
    }

    v14 = v6;
    v89 = objc_alloc_init(NSMutableArray);
    v90 = objc_alloc_init(NSMutableDictionary);
    v15 = 0;
    if (v9 && v8)
    {
      [v90 setObject:v7 forKey:v8];
      v16 = +[ADRapportLink siriInfoToBeBroadcasted];
      v17 = [v16 mutableCopy];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = objc_alloc_init(NSMutableDictionary);
      }

      v27 = v19;

      [v27 setObject:v8 forKey:@"idsDeviceIdentifier"];
      v28 = [v16 objectForKey:@"stationaryScore"];
      if (!v28)
      {
        [(ADDeviceCircleManager *)v91 _updateStationaryScore];
        *&v29 = v91->_currentStationaryScore;
        v30 = [NSNumber numberWithFloat:v29];
        [v27 setObject:v30 forKey:@"stationaryScore"];
      }

      v31 = [v27 objectForKey:@"isCollector"];
      v32 = [v31 BOOLValue];

      [v89 addObject:v27];
      v15 = v32;
      v33 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v76 = v33;
        v77 = [v27 objectForKey:@"stationaryScore"];
        [v77 floatValue];
        *buf = 136315906;
        v121 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]";
        v122 = 2112;
        v123 = v8;
        v124 = 2048;
        v125 = v78;
        v126 = 1024;
        v127 = v15;
        _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "%s #hal Collector candidate (local) %@: score %.2f, isCollector %d", buf, 0x26u);
      }
    }

    v82 = v9;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v34 = [(ADRapportLink *)v91->_clientLink activeDevices];
    v35 = [v34 countByEnumeratingWithState:&v110 objects:v119 count:16];
    v83 = v14;
    v80 = v8;
    v81 = v7;
    if (v35)
    {
      v36 = *v111;
      v37 = v91;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v111 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v110 + 1) + 8 * j);
          v40 = [v39 siriInfo];
          v41 = [v39 idsDeviceIdentifier];
          if ([(ADDeviceCircleManager *)v37 _isRemoteDeviceCollectorCandidate:v39])
          {
            v42 = v41 == 0;
          }

          else
          {
            v42 = 1;
          }

          if (!v42)
          {
            v43 = [v40 objectForKey:@"stationaryScore"];

            if (v43)
            {
              [v90 setObject:v39 forKey:v41];
              v44 = [v40 mutableCopy];
              [v44 setObject:v41 forKey:@"idsDeviceIdentifier"];
              [v89 addObject:v44];
              v45 = [v44 objectForKey:@"isCollector"];
              v46 = [v45 BOOLValue];

              v47 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                v48 = v47;
                v87 = [v44 objectForKey:@"stationaryScore"];
                [v87 floatValue];
                *buf = 136315906;
                v121 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]";
                v122 = 2112;
                v123 = v41;
                v124 = 2048;
                v125 = v49;
                v126 = 1024;
                v127 = v46;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%s #hal Collector candidate %@: score %.2f, isCollector %d", buf, 0x26u);
              }

              v15 += v46;

              v37 = v91;
            }
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v110 objects:v119 count:16];
      }

      while (v35);
      LODWORD(v35) = v15 > 1;
      v6 = v83;
      v8 = v80;
      v7 = v81;
    }

    else
    {
      v6 = v14;
    }

    v50 = v89;
    [v89 sortUsingComparator:&stru_1005141C0];
    v51 = objc_alloc_init(NSMutableArray);
    v88 = objc_alloc_init(NSMutableSet);
    v86 = objc_alloc_init(NSMutableDictionary);
    v52 = dispatch_group_create();
    v53 = &qword_1003F0000;
    if (v35)
    {
      v54 = +[ADHomeInfoManager sharedInfoManager];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v55 = v89;
      v56 = [v55 countByEnumeratingWithState:&v106 objects:v118 count:16];
      if (v56)
      {
        v58 = v56;
        obj = v55;
        v59 = *v107;
        v85 = v54;
        *&v57 = 136315394;
        v79 = v57;
        v60 = v91;
LABEL_55:
        v61 = 0;
        while (1)
        {
          if (*v107 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v106 + 1) + 8 * v61);
          v63 = [v62 objectForKey:{@"isCollector", v79}];
          v64 = [v63 BOOLValue];

          if (!v64)
          {
            break;
          }

          v65 = [v62 objectForKey:@"idsDeviceIdentifier"];
          v66 = [v90 objectForKey:v65];
          v67 = [(__CFString *)v66 homeKitIdentifier];
          if (v67)
          {
            dispatch_group_enter(v52);
            v68 = [(__CFString *)v66 homeKitIdentifier];
            v98[0] = _NSConcreteStackBlock;
            v98[1] = 3221225472;
            v98[2] = sub_10018C7B4;
            v98[3] = &unk_100514210;
            v98[4] = v60;
            v99 = v66;
            v69 = v85;
            v100 = v69;
            v101 = v51;
            v102 = v65;
            v103 = v88;
            v104 = v86;
            v105 = v52;
            v70 = v69;
            v60 = v91;
            [v70 getHomeIdForAccessoryId:v68 completion:v98];
          }

          else
          {
            v71 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = v79;
              v121 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]";
              v122 = 2112;
              v123 = v66;
              _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%s Unable to get HomeKit identifier for %@", buf, 0x16u);
            }

            [v51 addObject:v65];
          }

          if (v58 == ++v61)
          {
            v58 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
            if (v58)
            {
              goto LABEL_55;
            }

            break;
          }
        }

        v8 = v80;
        v7 = v81;
        v50 = v89;
        v6 = v83;
        v55 = obj;
        v53 = &qword_1003F0000;
        v54 = v85;
      }

      else
      {
        v50 = v89;
        v6 = v83;
      }
    }

    else
    {
      v72 = [v89 firstObject];

      if (!v72)
      {
LABEL_71:
        queue = v91->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = v53[1];
        block[2] = sub_10018C904;
        block[3] = &unk_1005167F0;
        block[4] = v91;
        v93 = v51;
        v94 = v86;
        v97 = v82;
        v95 = v8;
        v96 = v6;
        v74 = v86;
        v75 = v51;
        dispatch_group_notify(v52, queue, block);

LABEL_72:
        goto LABEL_73;
      }

      v54 = [v89 firstObject];
      v55 = [v54 objectForKey:@"idsDeviceIdentifier"];
      [v51 addObject:v55];
    }

    goto LABEL_71;
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_73:
}

- (void)_reelectCollectorIfNecessary
{
  v9 = [(ADDeviceCircleManager *)self _collectorDeviceIdentifiersWithFlags];
  v3 = [v9 count];
  if ([(NSArray *)self->_currentCollectorIDs count])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [NSSet setWithArray:v9];
    v7 = [NSSet setWithArray:self->_currentCollectorIDs];
    v8 = [v6 isEqualToSet:v7];

    if (v8)
    {
      if (v3 < 2)
      {
        goto LABEL_12;
      }

      v5 = 2;
    }

    else
    {
      v5 = 4;
    }
  }

  [(ADDeviceCircleManager *)self _reelectCollectorDeviceForReason:v5 completion:0];
LABEL_12:
}

- (void)_updateCollectorElectionVersion
{
  if (AFSupportsHALContextCollectorElection())
  {
    v2 = +[AFPreferences sharedPreferences];
    v3 = [v2 assistantIsEnabled];

    if (v3)
    {

      [ADRapportLink updateSiriInfoWithObject:&off_1005343E0 forKey:@"collectorElectionVersion"];
    }

    else
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = "[ADDeviceCircleManager _updateCollectorElectionVersion]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Siri is turned off", &v5, 0xCu);
      }

      [ADRapportLink updateSiriInfoWithObject:&off_1005343F0 forKey:@"collectorElectionVersion"];
    }
  }
}

- (BOOL)_isRemoteDeviceCollectorCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 siriInfo];
  v5 = [v4 objectForKey:@"collectorElectionVersion"];
  [v5 floatValue];
  v7 = v6;

  v8 = [v3 homeKitIdentifier];
  if (v8)
  {
    v9 = [v3 idsDeviceIdentifier];
    v11 = v7 >= 1.0 && v9 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isLocalDeviceCollectorCandidate
{
  v2 = [(ADRapportLink *)self->_clientLink localDevice];
  if (AFSupportsHALContextCollecting())
  {
    v3 = [v2 homeKitIdentifier];
    if (v3)
    {
      v4 = [v2 idsDeviceIdentifier];
      if (v4)
      {
        v5 = +[AFPreferences sharedPreferences];
        v6 = [v5 assistantIsEnabled];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_collectorDeviceIdentifiersWithFlags
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[ADRapportLink siriInfoToBeBroadcasted];
  v5 = [v4 objectForKey:@"isCollector"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(ADRapportLink *)self->_clientLink localDevice];
    v8 = [v7 idsDeviceIdentifier];

    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(ADRapportLink *)self->_clientLink activeDevices];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    *&v11 = 136315138;
    v23 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 siriInfo];
        v17 = [v16 objectForKey:@"isCollector"];
        v18 = [v17 BOOLValue];

        if (v18)
        {
          v19 = [v15 idsDeviceIdentifier];

          if (v19)
          {
            v20 = [v15 idsDeviceIdentifier];
            [v3 addObject:v20];
          }

          else
          {
            v21 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              v29 = "[ADDeviceCircleManager _collectorDeviceIdentifiersWithFlags]";
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Collector device does not have idsDeviceIdentifier. Skipping.", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v12);
  }

  return v3;
}

- (void)_updateClientLinkSiriInfo
{
  if ((AFIsNano() & 1) == 0)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      currentStationaryScore = self->_currentStationaryScore;
      isCollector = self->_isCollector;
      v9 = 136315650;
      v10 = "[ADDeviceCircleManager _updateClientLinkSiriInfo]";
      v11 = 2048;
      v12 = currentStationaryScore;
      v13 = 1024;
      v14 = isCollector;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal Updating score to %.2f, isCollector to %d", &v9, 0x1Cu);
    }

    *&v4 = self->_currentStationaryScore;
    v5 = [NSNumber numberWithFloat:v4];
    [ADRapportLink updateSiriInfoWithObject:v5 forKey:@"stationaryScore"];

    v6 = [NSNumber numberWithBool:self->_isCollector];
    [ADRapportLink updateSiriInfoWithObject:v6 forKey:@"isCollector"];
  }
}

- (void)_updateContextCollectorStatusToRapport:(BOOL)a3
{
  v3 = a3;
  if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[ADDeviceCircleManager _updateContextCollectorStatusToRapport:]";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", &v6, 0xCu);
    }

    [(ADRapportLink *)self->_clientLink updateLocalDeviceIsContextCollector:v3];
  }
}

- (id)_syncCompanionLinkDeviceLocalPeerData
{
  v3 = [(ADRapportLink *)self->_clientLink localDevice];
  os_unfair_lock_lock(&self->_peerInfoLock);
  v4 = [(ADDeviceCircleManager *)self _localPeerData];
  v5 = v4;
  if (v3)
  {
    sub_100188B7C(v3, v4);
  }

  else
  {
    sub_100184DB0(v4);
  }
  v6 = ;
  [(ADDeviceCircleManager *)self _updateLocalPeerInfo:v6];
  os_unfair_lock_unlock(&self->_peerInfoLock);

  return v5;
}

- (id)managedPeerInfoMatchingPeerInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_peerInfoLock);
    v5 = [(ADDeviceCircleManager *)self _managedPeerInfoMatchingPeerInfo:v4];

    os_unfair_lock_unlock(&self->_peerInfoLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendRequestType:(id)a3 data:(id)a4 toDeviceWithAssistantIdentifier:(id)a5 onQueue:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  clientLink = self->_clientLink;
  v16 = a4;
  v17 = a3;
  v18 = [(ADDeviceCircleManager *)self _rapportLinkMessageOptions];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10018D9D8;
  v22[3] = &unk_1005173D8;
  v24 = v13;
  v25 = v14;
  v23 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v12;
  [(ADRapportLink *)clientLink sendRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:v17 messagePayload:v16 toDeviceWithAssistantIdentifier:v21 options:v18 completion:v22];
}

- (void)_forwardExecuteCommandToDevice:(id)a3 message:(id)a4 from:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ((+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled]& 1) != 0)
  {
    v12 = [v10 objectForKeyedSubscript:@"type"];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "[ADDeviceCircleManager _forwardExecuteCommandToDevice:message:from:completion:]";
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v9;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal Forward executeCommand of type: %@ to device: %@", buf, 0x20u);
    }

    queue = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10018DDAC;
    v16[3] = &unk_100514DE0;
    v17 = v9;
    v18 = v11;
    [(ADDeviceCircleManager *)self sendRequestType:v12 data:v10 toDeviceWithAssistantIdentifier:v17 onQueue:queue completion:v16];
  }

  else
  {
    v15 = [AFError errorWithCode:13];
    (*(v11 + 2))(v11, 0, v15);
  }
}

- (void)_registerRequestHandlerForRequestId:(id)a3 messageType:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v11 = [NSString stringWithFormat:@"%@/%@", v8, v9];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v16 = "[ADDeviceCircleManager _registerRequestHandlerForRequestId:messageType:handler:]";
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s #hal combinedKey: %@", buf, 0x16u);
    }

    [(NSMapTable *)self->_requestHandlers setObject:v10 forKey:v11];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      requestHandlers = self->_requestHandlers;
      *buf = 136315394;
      v16 = "[ADDeviceCircleManager _registerRequestHandlerForRequestId:messageType:handler:]";
      v17 = 2112;
      v18 = requestHandlers;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal registered handlers: %@", buf, 0x16u);
    }
  }
}

- (void)wakeUpNearbyDevices
{
  if (AFSupportsHALContextCollecting())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018E0EC;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10018E3B8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  if ((AFSupportsHALOnDemandRapportConnection() & 1) == 0)
  {
    v4[2](v4, 0);
  }

  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [v7 componentsSeparatedByString:@"-"];
  v9 = [v8 firstObject];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E604;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v9;
  v14 = v4;
  v11 = v9;
  dispatch_async(queue, block);

LABEL_6:
}

- (void)getCapabilitiesForReachableDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10018F27C;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)getCapabilitiesForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018F5D4;
      block[3] = &unk_10051E088;
      block[4] = self;
      v11 = v6;
      v12 = v8;
      dispatch_async(queue, block);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (id)_rpDeviceMatchingPeerInfo:(id)a3
{
  v4 = [(ADDeviceCircleManager *)self _managedPeerInfoMatchingPeerInfo:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ADRapportLink *)self->_clientLink activeDevices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 effectiveIdentifier];
        v11 = [v4 rapportEffectiveIdentifier];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)reelectContextCollectorWithBestScore
{
  if (AFSupportsHALContextCollectorElection())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018FC14;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018FDD0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addListener:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018FE74;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)getContextCollectorDeviceIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (AFSupportsHALContextCollectorElection())
    {
      queue = self->_queue;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10018FF4C;
      v6[3] = &unk_10051E038;
      v6[4] = self;
      v7 = v4;
      dispatch_async(queue, v6);
    }

    else
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }
}

- (id)idsDeviceUniqueIdentifierForDeviceWithAssistantId:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 uppercaseString];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10018ACA4;
    v17 = sub_10018ACB4;
    v18 = 0;
    os_unfair_lock_lock(&self->_assistantIdMapLock);
    assistantIdsByDeviceIDSID = self->_assistantIdsByDeviceIDSID;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100190484;
    v10[3] = &unk_100514130;
    v7 = v5;
    v11 = v7;
    v12 = &v13;
    [(NSMutableDictionary *)assistantIdsByDeviceIDSID enumerateKeysAndObjectsUsingBlock:v10];
    os_unfair_lock_unlock(&self->_assistantIdMapLock);
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setAssistantId:(id)a3 forDeviceWithIdsDeviceUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [v6 uppercaseString];
    os_unfair_lock_lock(&self->_assistantIdMapLock);
    assistantIdsByDeviceIDSID = self->_assistantIdsByDeviceIDSID;
    if (!assistantIdsByDeviceIDSID)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = self->_assistantIdsByDeviceIDSID;
      self->_assistantIdsByDeviceIDSID = v10;

      assistantIdsByDeviceIDSID = self->_assistantIdsByDeviceIDSID;
    }

    [(NSMutableDictionary *)assistantIdsByDeviceIDSID setObject:v8 forKey:v7];
    os_unfair_lock_unlock(&self->_assistantIdMapLock);
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "[ADDeviceCircleManager _setAssistantId:forDeviceWithIdsDeviceUniqueIdentifier:]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s #hal Updated assistantId %@ for device %@", &v13, 0x20u);
    }
  }
}

- (id)assistantIdForDeviceWithIdsDeviceUniqueIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    os_unfair_lock_lock(&self->_assistantIdMapLock);
    v5 = [(NSMutableDictionary *)self->_assistantIdsByDeviceIDSID objectForKey:v4];
    os_unfair_lock_unlock(&self->_assistantIdMapLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_rapportLinkMessageOptions
{
  v4 = RPOptionStatusFlags;
  v5 = &off_1005339F8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_cleanupOnDemandClientLinkToContextCollector:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[ADDeviceCircleManager _cleanupOnDemandClientLinkToContextCollector:]";
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal #on-demand clean up #on-demand connection: %@", &v7, 0x16u);
  }

  [v4 invalidate];
  onDemandClientLinkToContextCollector = self->_onDemandClientLinkToContextCollector;
  self->_onDemandClientLinkToContextCollector = 0;
}

- (void)_activateOnDemandClientLinkToContextCollector:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100190904;
  v7[3] = &unk_10051DDE8;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [v6 activateWithCompletion:v7];
}

- (id)_setUpOnDemandClientLinkToContextCollector
{
  v3 = [ADRapportLinkConfiguration newWithBuilder:&stru_1005140C8];
  v4 = [[ADRapportLink alloc] initWithQueue:self->_queue configuration:v3];
  [(ADRapportLink *)v4 addListener:self];
  v5 = [(ADDeviceCircleManager *)self _rapportLinkMessageOptions];
  [(ADRapportLink *)v4 registerRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" options:v5];

  return v4;
}

- (void)_setupClientLink
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100190DA8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_initWithQueue:(id)a3 rapportLink:(id)a4
{
  v7 = a3;
  v8 = a4;
  v43.receiver = self;
  v43.super_class = ADDeviceCircleManager;
  v9 = [(ADDeviceCircleManager *)&v43 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = +[NSHashTable weakObjectsHashTable];
    listeners = v10->_listeners;
    v10->_listeners = v11;

    v10->_rollingRSSI = 0.0;
    v10->_rollingRSSICount = 0;
    v10->_currentStationaryScore = 0.0;
    v13 = objc_alloc_init(NSMutableArray);
    deviceCountTrend = v10->_deviceCountTrend;
    v10->_deviceCountTrend = v13;

    v10->_assistantIdMapLock._os_unfair_lock_opaque = 0;
    v10->_peerInfoLock._os_unfair_lock_opaque = 0;
    v15 = +[NSMutableArray array];
    svdCapabilities = v10->_svdCapabilities;
    v10->_svdCapabilities = v15;

    v17 = objc_alloc_init(NSMapTable);
    requestHandlers = v10->_requestHandlers;
    v10->_requestHandlers = v17;

    onDemandClientLinkToContextCollector = v10->_onDemandClientLinkToContextCollector;
    v10->_onDemandClientLinkToContextCollector = 0;

    objc_storeStrong(&v10->_clientLink, a4);
    [(ADDeviceCircleManager *)v10 _setupClientLink];
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v10 selector:"preferencesEnabledBitsDidChange:" name:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v10 selector:"activeAccountIdentifierDidChange:" name:@"ADActiveAccountIdentifierDidChangeNotification" object:0];

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v10 selector:"preferencesSharedUserIdentifierDidChange:" name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v10 selector:"sharedDataDidChange:" name:@"ADSharedDataDidChangeNotification" object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v10 selector:"isMeDeviceDidChange:" name:@"ADMultiUserMeDeviceEvaluatedNotification" object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v10 selector:"isMeDeviceDidChange:" name:@"ADMultiUserMeDeviceChangedNotification" object:0];

    queue = v10->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001916A0;
    block[3] = &unk_10051DFE8;
    v27 = v10;
    v42 = v27;
    dispatch_async(queue, block);
    v28 = +[ADHomeInfoManager sharedInfoManager];
    [v28 addListener:v27];
    v29 = v10->_queue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001916A8;
    v38[3] = &unk_10051E010;
    v39 = v28;
    v30 = v27;
    v40 = v30;
    v31 = v28;
    dispatch_async(v29, v38);
    [(ADDeviceCircleManager *)v30 _setupMUXSupport];
    AFLogInitIfNeeded();
    v32 = v10->_queue;
    v33 = +[ADQueueMonitor sharedMonitor];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100191730;
    v36[3] = &unk_10051C2E0;
    v37 = v32;
    v34 = v32;
    [v33 addQueue:v34 heartBeatInterval:v36 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v10;
}

+ (id)_rapportLinkWithQueue:(id)a3
{
  v3 = a3;
  v4 = [ADRapportLink alloc];
  v5 = [ADRapportLinkConfiguration newWithBuilder:&stru_100514068];
  v6 = [(ADRapportLink *)v4 initWithQueue:v3 configuration:v5];

  return v6;
}

@end
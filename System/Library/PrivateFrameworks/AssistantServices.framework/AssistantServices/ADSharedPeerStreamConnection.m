@interface ADSharedPeerStreamConnection
+ (id)_errorWithCode:(int64_t)a3 underylingError:(id)a4;
+ (id)sharedPeerStreamConnectionWithServiceIdentifier:(id)a3 listener:(BOOL)a4;
- (BOOL)deviceIsNearby;
- (BOOL)hasNearbyPeer;
- (id)_account;
- (id)_destination;
- (id)_failureMetricsContextDictionary;
- (id)_initWithServiceIdentifier:(id)a3 listener:(BOOL)a4;
- (id)_pairedDevice;
- (void)_close;
- (void)_establishEagerStreamPair;
- (void)_getSocketFromDevice;
- (void)_getSocketFromDeviceForStreamIdentifier:(id)a3;
- (void)_handleGetMetricsMessage:(id)a3 context:(id)a4;
- (void)_handleReestablishMessage:(id)a3 context:(id)a4;
- (void)_handleResponseProtobuf:(id)a3 forIdentifier:(id)a4;
- (void)_handleWakeUpMessage:(id)a3 context:(id)a4;
- (void)_initiateOptimisticEagerStreamFetchRetry;
- (void)_invokeMetricsCompletionWithMetrics:(id)a3 forIdentifier:(id)a4;
- (void)_invokeSocketCompletionWithCurrentSocketOrError:(id)a3;
- (void)_preheat;
- (void)_requestStreamEstablishment;
- (void)_setPreferBTClassic:(BOOL)a3;
- (void)_updatePairedDeviceInfo;
- (void)addDelegate:(id)a3;
- (void)closeForConnection:(id)a3;
- (void)getMetricsContext:(id)a3;
- (void)getRemoteMetrics:(id)a3;
- (void)getSocketForConnection:(id)a3 completion:(id)a4;
- (void)preheat;
- (void)removeDelegate:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)setPreferBTClassic:(BOOL)a3;
@end

@implementation ADSharedPeerStreamConnection

- (BOOL)deviceIsNearby
{
  v2 = [(ADSharedPeerStreamConnection *)self _pairedDevice];
  v3 = [v2 isNearby];

  return v3;
}

- (void)preheat
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092F2C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_preheat
{
  v3 = [(ADSharedPeerStreamConnection *)self _pairedDevice];
  v4 = [v3 isNearby];

  if (v4)
  {

    [(ADSharedPeerStreamConnection *)self _establishEagerStreamPair];
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSharedPeerStreamConnection service:devicesChanged:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  [(ADSharedPeerStreamConnection *)self _updatePairedDeviceInfo];
  [(ADSharedPeerStreamConnection *)self _preheat];
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 136315394;
    v34 = "[ADSharedPeerStreamConnection service:nearbyDevicesChanged:]";
    v35 = 2048;
    v36 = [v7 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %lu", buf, 0x16u);
  }

  if ([v7 count])
  {
    [(ADSharedPeerStreamConnection *)self _establishEagerStreamPair];
    if (!self->_nearbyDeviceIdentifiers)
    {
      v10 = objc_opt_new();
      nearbyDeviceIdentifiers = self->_nearbyDeviceIdentifiers;
      self->_nearbyDeviceIdentifiers = v10;
    }

    v12 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v28 + 1) + 8 * i) uniqueIDOverride];
          if (v19)
          {
            if (([(NSMutableSet *)self->_nearbyDeviceIdentifiers containsObject:v19]& 1) == 0)
            {
              [(NSMutableSet *)self->_nearbyDeviceIdentifiers addObject:v19];
              v16 = 1;
            }

            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);

      [(NSMutableSet *)self->_nearbyDeviceIdentifiers intersectSet:v12];
      if ((v16 & 1) != 0 && ((AFIsNano() & 1) != 0 || AFSupportsPairedDevice()))
      {
        v20 = +[NSProcessInfo processInfo];
        [v20 systemUptime];
        v22 = v21;

        if (vabdd_f64(v22, self->_lastSharedDataUpdateTimestamp) > 3600.0)
        {
          self->_lastSharedDataUpdateTimestamp = v22;
          v23 = +[ADCommandCenter sharedCommandCenter];
          [v23 updateSharedDataFromPeerUseCache:0 allowCloudMessaging:0 completion:0];
        }
      }
    }

    else
    {

      [(NSMutableSet *)self->_nearbyDeviceIdentifiers intersectSet:v12, v28];
    }
  }

  else
  {
    v24 = self->_nearbyDeviceIdentifiers;
    self->_nearbyDeviceIdentifiers = 0;

    if (self->_sockfd != -1)
    {
      v25 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[ADSharedPeerStreamConnection service:nearbyDevicesChanged:]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Nearby device disappeared, closing cached streams", buf, 0xCu);
      }

      [(ADSharedPeerStreamConnection *)self _close];
    }
  }

  v26 = +[NSProcessInfo processInfo];
  [v26 systemUptime];
  self->_lastNearbyDevicesChangedTimestamp = v27;
}

- (void)_establishEagerStreamPair
{
  if (!self->_gettingDeviceSocket && self->_sockfd == -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentPeerStreamConnection);

    if (!WeakRetained)
    {
      v4 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = "[ADSharedPeerStreamConnection _establishEagerStreamPair]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Eagerly getting device socket", &v5, 0xCu);
      }

      [(ADSharedPeerStreamConnection *)self _getSocketFromDevice];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!a6)
  {
    v19 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "[ADSharedPeerStreamConnection service:account:identifier:didSendWithSuccess:error:context:]";
      v32 = 2112;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Message send with identifier %@ failed %{public}@", buf, 0x20u);
    }

    [(ADSharedPeerStreamConnection *)self _invokeMetricsCompletionWithMetrics:0 forIdentifier:v16];
  }

  v20 = +[NSProcessInfo processInfo];
  [v20 systemUptime];
  self->_lastIDSMessageSentTimestamp = v21;

  [v18 averageLocalRTT];
  v22 = [NSNumber numberWithDouble:?];
  v29[0] = v22;
  v28[1] = @"local_message_state";
  v23 = [v18 localMessageState];
  if (v23 > 3)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(&off_10050FE30 + v23);
  }

  v29[1] = v24;
  v28[2] = @"device_blacked_out";
  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 deviceBlackedOut]);
  v29[2] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  lastIDSMetricsContext = self->_lastIDSMetricsContext;
  self->_lastIDSMetricsContext = v26;

  self->_lastIDSMessageSuccess = a6;
}

- (void)_handleResponseProtobuf:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[ADSharedPeerStreamConnection _handleResponseProtobuf:forIdentifier:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", &v13, 0x20u);
  }

  v9 = [_ADPBProxyGetMetricsResponse alloc];
  v10 = [v6 data];
  v11 = [(_ADPBProxyGetMetricsResponse *)v9 initWithData:v10];

  v12 = [(_ADPBProxyGetMetricsResponse *)v11 _ad_metrics];
  [(ADSharedPeerStreamConnection *)self _invokeMetricsCompletionWithMetrics:v12 forIdentifier:v7];
}

- (void)_handleReestablishMessage:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    currentStreamIdentifier = self->_currentStreamIdentifier;
    v10 = v8;
    v11 = [v6 lastKnownStreamId];
    v14 = 136315650;
    v15 = "[ADSharedPeerStreamConnection _handleReestablishMessage:context:]";
    v16 = 2112;
    v17 = currentStreamIdentifier;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Current Stream Identifier %@ Remote Stream Identifier %@", &v14, 0x20u);
  }

  if (self->_sockfd != -1)
  {
    v12 = self->_currentStreamIdentifier;
    v13 = [v6 lastKnownStreamId];
    LODWORD(v12) = [(NSString *)v12 isEqualToString:v13];

    if (v12)
    {
      [(ADSharedPeerStreamConnection *)self _close];
      [(ADSharedPeerStreamConnection *)self _getSocketFromDevice];
    }
  }
}

- (void)_handleGetMetricsMessage:(id)a3 context:(id)a4
{
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_delegates;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          WeakRetained = objc_loadWeakRetained(&self->_currentPeerStreamConnection);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_100093B14;
          v13[3] = &unk_10050FDE8;
          v14 = v5;
          v15 = self;
          [v11 peerStreamConnection:WeakRetained requestMetrics:v13];

          goto LABEL_11;
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_handleWakeUpMessage:(id)a3 context:(id)a4
{
  v6 = a3;
  v24 = a4;
  if (self->_peerSupportsNamedStreams)
  {
    if (self->_socketForConnectionHasBeenVended)
    {
      v23 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = self->_delegates;
      v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          v11 = 0;
          do
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v29 + 1) + 8 * v11);
            WeakRetained = objc_loadWeakRetained(&self->_currentPeerStreamConnection);
            v14 = [NSError errorWithDomain:@"ADPeerStreamConnectionErrorDomain" code:4 userInfo:0];
            [v12 peerStreamConnection:WeakRetained failedWithError:v14];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }

      v6 = v23;
    }

    v15 = [v6 streamId];
    [(ADSharedPeerStreamConnection *)self _getSocketFromDeviceForStreamIdentifier:v15];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = self->_delegates;
  v17 = [(NSHashTable *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          v22 = objc_loadWeakRetained(&self->_currentPeerStreamConnection);
          [v21 peerStreamConnectionHasIncomingPeer:v22];
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSHashTable *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v10 = a7;
  v11 = [v9 type];
  v12 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADSharedPeerStreamConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
    v21 = 1024;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s type = %d", &v19, 0x12u);
  }

  v13 = [v10 incomingResponseIdentifier];
  if (v13)
  {
    [(ADSharedPeerStreamConnection *)self _handleResponseProtobuf:v9 forIdentifier:v13];
  }

  else
  {
    if (v11 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = objc_opt_class();
    }

    v15 = [v14 alloc];
    v16 = [v9 data];
    v17 = [v15 initWithData:v16];

    [v17 _ad_performWithPeerStreamConnection:self context:v10];
    if (!v17)
    {
      v18 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        v19 = 136315394;
        v20 = "[ADSharedPeerStreamConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
        v21 = 1024;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Don't know how to make request for %d", &v19, 0x12u);
      }
    }
  }
}

- (void)_updatePairedDeviceInfo
{
  v3 = [(ADSharedPeerStreamConnection *)self _pairedDevice];
  v4 = [v3 modelIdentifier];
  v5 = [v4 copy];
  productType = self->_productType;
  self->_productType = v5;

  v7 = [v3 productBuildVersion];
  v8 = [v7 copy];
  buildVersion = self->_buildVersion;
  self->_buildVersion = v8;

  v10 = [v3 productName];
  v11 = [v3 productVersion];
  v12 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v13 = self->_productType;
    v14 = self->_buildVersion;
    v16 = 136316162;
    v17 = "[ADSharedPeerStreamConnection _updatePairedDeviceInfo]";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ %@ %@ %@", &v16, 0x34u);
  }

  AFWatchOSVersion();
  self->_peerSupportsNamedStreams = AFWatchOSVersionIsGreaterThanOrEqual();
  self->_peerSupportsExtendedHeader = AFWatchOSVersionIsGreaterThanOrEqual();
  v15 = [v3 uniqueIDOverride];
  [ADPeerInfo updateSharedInfoWithIdentifier:v15 productType:self->_productType buildVersion:self->_buildVersion];
}

- (void)getMetricsContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000943B8;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_failureMetricsContextDictionary
{
  v3 = [(ADSharedPeerStreamConnection *)self _pairedDevice];
  v4 = [v3 isNearby];
  v5 = [v3 isConnected];
  v6 = [v3 isCloudConnected];
  v7 = +[NSProcessInfo processInfo];
  [v7 systemUptime];
  v9 = v8;

  v10 = v9 - self->_lastNearbyDevicesChangedTimestamp;
  v26 = [NSMutableDictionary alloc];
  v28[0] = @"has_device";
  v25 = [NSNumber numberWithBool:v3 != 0];
  v29[0] = v25;
  v28[1] = @"nearby";
  v11 = [NSNumber numberWithBool:v4];
  v29[1] = v11;
  v28[2] = @"connected";
  v12 = [NSNumber numberWithBool:v5];
  v29[2] = v12;
  v28[3] = @"cloud_connected";
  v13 = [NSNumber numberWithBool:v6];
  v29[3] = v13;
  v28[4] = @"last_nearby_status_change";
  v14 = [NSNumber numberWithDouble:v10];
  v29[4] = v14;
  v28[5] = @"preferring_bt_classic";
  v15 = [NSNumber numberWithBool:self->_prefersBTClassic];
  v29[5] = v15;
  v29[6] = &off_100533818;
  v28[6] = @"last_wakeup_duration";
  v28[7] = @"last_stream_open_duration";
  v16 = [NSNumber numberWithDouble:self->_lastStreamEstablishmentDuration];
  v29[7] = v16;
  v28[8] = @"last_stream_open_error";
  v17 = [NSNumber numberWithUnsignedInteger:self->_lastOpenErrorCode];
  v29[8] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:9];
  v27 = [v26 initWithDictionary:v18];

  lastIDSMessageSentTimestamp = self->_lastIDSMessageSentTimestamp;
  if (lastIDSMessageSentTimestamp != 0.0 && self->_lastIDSMetricsContext)
  {
    v20 = v9 - lastIDSMessageSentTimestamp;
    v21 = [[NSMutableDictionary alloc] initWithCapacity:5];
    v22 = [NSNumber numberWithDouble:v20];
    [v21 setObject:v22 forKey:@"time_since"];

    v23 = [NSNumber numberWithBool:self->_lastIDSMessageSuccess];
    [v21 setObject:v23 forKey:@"success"];

    [v21 addEntriesFromDictionary:self->_lastIDSMetricsContext];
    [v27 setObject:v21 forKey:@"last_ids_message_info"];
  }

  return v27;
}

- (void)_setPreferBTClassic:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 136315394;
    v16 = "[ADSharedPeerStreamConnection _setPreferBTClassic:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v3 && !self->_prefersBTClassic)
  {
    idsService = self->_idsService;
    v13 = IDSLinkPreferenceOptionPacketsPerSecondKey;
    v14 = &off_100533800;
    v8 = 1;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(IDSService *)idsService setLinkPreferences:v9];
LABEL_11:

    self->_prefersBTClassic = v8;
    return;
  }

  if (self->_prefersBTClassic && !v3)
  {
    v10 = self->_idsService;
    v11 = IDSLinkPreferenceOptionPacketsPerSecondKey;
    v12 = &off_100533818;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [(IDSService *)v10 setLinkPreferences:v9];
    v8 = 0;
    goto LABEL_11;
  }
}

- (void)setPreferBTClassic:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009496C;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (BOOL)hasNearbyPeer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100094A28;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_requestStreamEstablishment
{
  if (self->_listener && self->_peerSupportsNamedStreams)
  {
    v3 = +[ADPreferences sharedPreferences];
    v4 = [v3 lastKnownProxyStreamId];

    v5 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[ADSharedPeerStreamConnection _requestStreamEstablishment]";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    if (v4)
    {
      v6 = objc_alloc_init(_ADPBProxyReestablishRequest);
      [(_ADPBProxyReestablishRequest *)v6 setLastKnownStreamId:v4];
      v7 = [IDSProtobuf alloc];
      v8 = [(_ADPBProxyReestablishRequest *)v6 data];
      v9 = [v7 initWithProtobufData:v8 type:objc_msgSend(objc_opt_class() isResponse:{"_ADPBProxyRequestType"), 0}];

      v10 = [(ADSharedPeerStreamConnection *)self _service];
      v11 = [(ADSharedPeerStreamConnection *)self _destination];
      v19[0] = IDSSendMessageOptionTimeoutKey;
      v19[1] = IDSSendMessageOptionForceLocalDeliveryKey;
      v20[0] = &off_1005337E8;
      v20[1] = &__kCFBooleanTrue;
      v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
      v17 = 0;
      v18 = 0;
      v13 = [v10 sendProtobuf:v9 toDestinations:v11 priority:300 options:v12 identifier:&v18 error:&v17];
      v14 = v18;
      v15 = v17;

      if ((v13 & 1) == 0)
      {
        v16 = AFSiriLogContextIDS;
        if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "[ADSharedPeerStreamConnection _requestStreamEstablishment]";
          v23 = 2114;
          v24 = v15;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Reestablish message failed %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)_invokeMetricsCompletionWithMetrics:(id)a3 forIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_metricsResponses objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
  }

  [(NSMutableDictionary *)self->_metricsResponses removeObjectForKey:v6];
}

- (void)getRemoteMetrics:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100094E70;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)_close
{
  if (self->_deviceConnection)
  {
    v3 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADSharedPeerStreamConnection _close]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
    }

    sockfd = self->_sockfd;
    if (sockfd != -1)
    {
      close(sockfd);
      self->_sockfd = -1;
    }

    self->_gettingDeviceSocket = 0;
    [(IDSDeviceConnection *)self->_deviceConnection close];
    deviceConnection = self->_deviceConnection;
    self->_deviceConnection = 0;
  }
}

- (void)closeForConnection:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009547C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_invokeSocketCompletionWithCurrentSocketOrError:(id)a3
{
  v4 = a3;
  if (self->_socketCompletion)
  {
    v5 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADSharedPeerStreamConnection _invokeSocketCompletionWithCurrentSocketOrError:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
    }

    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = self->_deviceConnection;
      deviceConnection = self->_deviceConnection;
      self->_deviceConnection = 0;

      self->_gettingDeviceSocket = 0;
      self->_sockfd = -1;
    }

    (*(self->_socketCompletion + 2))();
    socketCompletion = self->_socketCompletion;
    self->_socketCompletion = 0;

    self->_socketForConnectionHasBeenVended = 1;
    self->_optimisticRetriesAreBlocked = 0;
  }
}

- (void)_getSocketFromDeviceForStreamIdentifier:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(ADSharedPeerStreamConnection *)self _close];
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:&off_1005337B8 forKey:IDSOpenSocketOptionTransportKey];
  [v6 setObject:&off_1005337D0 forKey:IDSOpenSocketOptionPriorityKey];
  [v6 setObject:&off_1005337B8 forKey:IDSOpenSocketOptionScopeKey];
  if (v4)
  {
    [v6 setObject:v4 forKey:IDSOpenSocketOptionStreamNameKey];
  }

  v7 = [(ADSharedPeerStreamConnection *)self _pairedDevice];
  v8 = v7;
  if (v7)
  {
    if (v4 && self->_listener || ([v7 isNearby] & 1) != 0)
    {
      goto LABEL_17;
    }

    v9 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s no nearby device; returning immediately", buf, 0xCu);
    }

    v10 = +[ADSharedPeerStreamConnection _noNearbyPeerError];
  }

  else
  {
    v11 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s No Paired device returning immediately", buf, 0xCu);
    }

    v10 = +[ADSharedPeerStreamConnection _noDeviceError];
  }

  v12 = v10;
  if (!v10)
  {
LABEL_17:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = sub_100095B44;
    v28 = sub_100095B54;
    v29 = 0;
    self->_gettingDeviceSocket = 1;
    currentStreamIdentifier = self->_currentStreamIdentifier;
    self->_currentStreamIdentifier = 0;

    self->_socketForConnectionHasBeenVended = 0;
    v14 = +[NSProcessInfo processInfo];
    [v14 systemUptime];
    v16 = v15;

    v17 = [IDSDeviceConnection alloc];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100095B5C;
    v21[3] = &unk_10050FDC0;
    v22 = v4;
    v23 = self;
    v24 = buf;
    v25 = v16;
    v18 = [v17 initSocketWithDevice:v8 options:v6 completionHandler:v21 queue:self->_queue];
    deviceConnection = self->_deviceConnection;
    p_deviceConnection = &self->_deviceConnection;
    *p_deviceConnection = v18;

    objc_storeStrong((*&buf[8] + 40), *p_deviceConnection);
    _Block_object_dispose(buf, 8);

    goto LABEL_18;
  }

  [(ADSharedPeerStreamConnection *)self _invokeSocketCompletionWithCurrentSocketOrError:v10];
  objc_storeWeak(&self->_currentPeerStreamConnection, 0);

LABEL_18:
}

- (void)_getSocketFromDevice
{
  if (self->_listener && !self->_peerSupportsNamedStreams)
  {
    [(ADSharedPeerStreamConnection *)self _getSocketFromDeviceForStreamIdentifier:0];
  }
}

- (void)getSocketForConnection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009604C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_initiateOptimisticEagerStreamFetchRetry
{
  if (self->_optimisticRetriesAreBlocked)
  {
    self->_optimisticRetriesAreBlocked = 1;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100096338;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v3 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v6 = "[ADSharedPeerStreamConnection _initiateOptimisticEagerStreamFetchRetry]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Denying optimistic retry as we haven't vended socket since the last time.", buf, 0xCu);
    }
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000964BC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100096560;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_destination
{
  v2 = qword_10058FE88;
  if (!qword_10058FE88)
  {
    v3 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v4 = qword_10058FE88;
    qword_10058FE88 = v3;

    v2 = qword_10058FE88;
  }

  return v2;
}

- (id)_account
{
  v2 = [(IDSService *)self->_idsService accounts];
  v3 = [v2 anyObject];

  return v3;
}

- (id)_pairedDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ADSharedPeerStreamConnection *)self _service];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_initWithServiceIdentifier:(id)a3 listener:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"ADPeerStreamConnection.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v23.receiver = self;
  v23.super_class = ADSharedPeerStreamConnection;
  v8 = [(ADSharedPeerStreamConnection *)&v23 init];
  if (v8)
  {
    v9 = [v7 copy];
    v10 = *(v8 + 3);
    *(v8 + 3) = v9;

    v11 = +[NSProcessInfo processInfo];
    [v11 systemUptime];
    *(v8 + 18) = v12 + -3600.0;

    v13 = qword_100590558;
    v14 = dispatch_queue_attr_make_initially_inactive(0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UNSPECIFIED, 0);

    v17 = dispatch_queue_create_with_target_V2("ADPeerStreamConnection", v16, v13);
    v18 = *(v8 + 4);
    *(v8 + 4) = v17;

    v19 = [[IDSService alloc] initWithService:*(v8 + 3)];
    v20 = *(v8 + 5);
    *(v8 + 5) = v19;

    [*(v8 + 5) addDelegate:v8 queue:*(v8 + 4)];
    *(v8 + 8) = a4;
    *(v8 + 22) = -1;
    [v8 _updatePairedDeviceInfo];
    [v8 _requestStreamEstablishment];
    dispatch_activate(*(v8 + 4));
  }

  return v8;
}

+ (id)sharedPeerStreamConnectionWithServiceIdentifier:(id)a3 listener:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    if (qword_10058FEA0 != -1)
    {
      dispatch_once(&qword_10058FEA0, &stru_10050FD98);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100095B44;
    v17 = sub_100095B54;
    v18 = 0;
    v6 = qword_10058FE90;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100096ACC;
    block[3] = &unk_100511478;
    v11 = &v13;
    v10 = v5;
    v12 = a4;
    dispatch_sync(v6, block);
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_errorWithCode:(int64_t)a3 underylingError:(id)a4
{
  if (a4)
  {
    v9 = NSUnderlyingErrorKey;
    v10 = a4;
    v5 = a4;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:@"ADPeerStreamConnectionErrorDomain" code:a3 userInfo:v6];
  }

  else
  {
    v7 = [NSError errorWithDomain:@"ADPeerStreamConnectionErrorDomain" code:a3 userInfo:0];
  }

  return v7;
}

@end
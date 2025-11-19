@interface ADDeviceProximityManager
+ (id)sharedManager;
- (id)_initWithQueue:(id)a3 donationService:(id)a4 deviceCircleManager:(id)a5;
- (id)_messageLink;
- (id)_proximityDiscoveryLink;
- (id)_rapportLinkMessageOptions;
- (void)_clearProximityDiscoveryLink;
- (void)_fetchProximityObservationsFromCollectorsWithCompletion:(id)a3;
- (void)_getAggregatedProximityObservationsWithCompletion:(id)a3;
- (void)_insertProximityForRemoteDeviceID:(id)a3 rpProximity:(int)a4;
- (void)_pushProximityObservationToCollector:(id)a3;
- (void)_recordProximityObservation:(id)a3;
- (void)_resetMessageLinkAndReconnectNow:(BOOL)a3;
- (void)_stopScanning;
- (void)_updateProximityForDevice:(id)a3;
- (void)contextCollectorChangedToDevicesWithIdentifiers:(id)a3 localDeviceIsCollector:(BOOL)a4;
- (void)getDeviceProximityRelativeToLocalDeviceWithCompletion:(id)a3;
- (void)getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:(id)a3 includesAllReachableDevices:(BOOL)a4 completion:(id)a5;
- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4;
- (void)performProximityScan;
- (void)rapportLink:(id)a3 didFindDevice:(id)a4;
- (void)rapportLink:(id)a3 didLoseDevice:(id)a4;
- (void)rapportLink:(id)a3 didReceiveMessage:(id)a4 ofType:(id)a5 fromPeer:(id)a6 completion:(id)a7;
- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5;
- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4;
- (void)rapportLinkDidInterrupt:(id)a3;
- (void)rapportLinkDidInvalidate:(id)a3;
- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
@end

@implementation ADDeviceProximityManager

- (id)_rapportLinkMessageOptions
{
  v4 = RPOptionStatusFlags;
  v5 = &off_100533B00;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4
{
  v5 = a3;
  v6 = +[NSDate date];
  if (self->_heardVoiceTriggerObserver == v5)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[ADDeviceProximityManager notifyObserver:didReceiveNotificationWithToken:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s #hal Heard Voice Trigger", buf, 0xCu);
    }

    v17 = [v6 dateByAddingTimeInterval:15.0];
    v18 = [AFDeviceContextMetadata alloc];
    v10 = [v18 initWithType:AFDeviceContextKeyHeardVoiceTrigger deliveryDate:v6 expirationDate:v17 redactedKeyPaths:0 historyConfiguration:0];
    [(AFContextDonationService *)self->_donationService donateContext:&off_100533B18 withMetadata:v10 pushToRemote:1];
    currentVoiceTriggerExpirationDate = self->_currentVoiceTriggerExpirationDate;
    self->_currentVoiceTriggerExpirationDate = v17;
    v12 = v17;

    v13 = dispatch_time(0, 15100000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C29C4;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    v15 = block;
    goto LABEL_9;
  }

  if (self->_voiceTriggerFirstPassObserver == v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[ADDeviceProximityManager notifyObserver:didReceiveNotificationWithToken:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal Voice Trigger first pass", buf, 0xCu);
    }

    v8 = [v6 dateByAddingTimeInterval:5.0];
    v9 = [AFDeviceContextMetadata alloc];
    v10 = [v9 initWithType:AFDeviceContextKeyHeardVoiceTrigger deliveryDate:v6 expirationDate:v8 redactedKeyPaths:0 historyConfiguration:0];
    [(AFContextDonationService *)self->_donationService donateContext:&off_100533B18 withMetadata:v10 pushToRemote:0];
    v11 = self->_currentVoiceTriggerExpirationDate;
    self->_currentVoiceTriggerExpirationDate = v8;
    v12 = v8;

    v13 = dispatch_time(0, 5100000000);
    queue = self->_queue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001C2B44;
    v20[3] = &unk_10051DFE8;
    v20[4] = self;
    v15 = v20;
LABEL_9:
    dispatch_after(v13, queue, v15);
  }
}

- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2D38;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v7 = a4;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C2EA4;
  v10[3] = &unk_10051E010;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, v10);
}

- (void)contextCollectorChangedToDevicesWithIdentifiers:(id)a3 localDeviceIsCollector:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C2F64;
  v5[3] = &unk_10051CBD8;
  v5[4] = self;
  v6 = a4;
  dispatch_async(queue, v5);
}

- (void)rapportLink:(id)a3 didReceiveMessage:(id)a4 ofType:(id)a5 fromPeer:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = AFSiriLogContextDaemon;
  if (!self->_localIsCollector)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[ADDeviceProximityManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
      v27 = 2112;
      v28 = v13;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s #hal Local device is not collector for message %@", buf, 0x16u);
    }

    v19 = [AFError errorWithCode:1014];
    v16[2](v16, 0, v19);
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v26 = "[ADDeviceProximityManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v13;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s #hal Received %@ from %@: %@", buf, 0x2Au);
  }

  if ([v14 isEqualToString:@"device_proximity_fetch"])
  {
    v18 = [(NSMutableDictionary *)self->_proximityObservations allValues];
    v19 = [v18 af_lenientMappedArray:&stru_100515750];

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "[ADDeviceProximityManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
      v27 = 2112;
      v28 = v19;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s #hal Sending observations: %@", buf, 0x16u);
    }

    v23 = @"proximity_observations";
    v24 = v19;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    (v16)[2](v16, v21, 0);

LABEL_11:
    goto LABEL_12;
  }

  if ([v14 isEqualToString:@"device_proximity_push"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[ADRapportProximityObservation alloc] initWithDictionaryRepresentation:v13];
      [(ADDeviceProximityManager *)self _recordProximityObservation:v22];
    }

    v16[2](v16, 0, 0);
  }

LABEL_12:
}

- (void)rapportLink:(id)a3 didLoseDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "[ADDeviceProximityManager rapportLink:didLoseDevice:]";
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal %@", buf, 0x16u);
  }

  v9 = [v7 idsDeviceIdentifier];
  if (v9 && self->_localDeviceIDSIdentifier)
  {
    v10 = [NSSet setWithObjects:v9, 0];
    v11 = [v10 adpm_sortedKeyString];

    v12 = [(NSMutableDictionary *)self->_proximityObservations objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v15 = "[ADDeviceProximityManager rapportLink:didLoseDevice:]";
        v16 = 2112;
        v17 = v9;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal removing observations for lost device: %@", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_proximityObservations setObject:0 forKeyedSubscript:v11];
    }
  }
}

- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5
{
  v7 = a3;
  v8 = a4;
  if (self->_proximityDiscoveryLink == v7)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = "[ADDeviceProximityManager rapportLink:didUpdateDevice:changes:]";
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal", &v10, 0xCu);
    }

    [(ADDeviceProximityManager *)self _updateProximityForDevice:v8];
  }
}

- (void)rapportLink:(id)a3 didFindDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_proximityDiscoveryLink == v6)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "[ADDeviceProximityManager rapportLink:didFindDevice:]";
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal", &v9, 0xCu);
    }

    [(ADDeviceProximityManager *)self _updateProximityForDevice:v7];
  }
}

- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4
{
  v5 = [a4 idsDeviceIdentifier];
  localDeviceIDSIdentifier = self->_localDeviceIDSIdentifier;
  self->_localDeviceIDSIdentifier = v5;

  _objc_release_x1(v5, localDeviceIDSIdentifier);
}

- (void)rapportLinkDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_messageLink == v4)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADDeviceProximityManager rapportLinkDidInvalidate:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #hal message link invalidated", &v8, 0xCu);
    }

    [(ADDeviceProximityManager *)self _resetMessageLinkAndReconnectNow:0];
  }

  else if (self->_proximityDiscoveryLink == v4)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADDeviceProximityManager rapportLinkDidInvalidate:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #hal proximity link invalidated", &v8, 0xCu);
    }

    [(ADDeviceProximityManager *)self _clearProximityDiscoveryLink];
  }
}

- (void)rapportLinkDidInterrupt:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_messageLink == v4)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADDeviceProximityManager rapportLinkDidInterrupt:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #hal message link interrupted", &v8, 0xCu);
    }

    [(ADDeviceProximityManager *)self _resetMessageLinkAndReconnectNow:1];
  }

  else if (self->_proximityDiscoveryLink == v4)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADDeviceProximityManager rapportLinkDidInterrupt:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s #hal proximity link interrupted", &v8, 0xCu);
    }

    [(ADDeviceProximityManager *)self _clearProximityDiscoveryLink];
  }
}

- (void)_fetchProximityObservationsFromCollectorsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[ADDeviceProximityManager _fetchProximityObservationsFromCollectorsWithCompletion:]";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
    }

    deviceCircleManager = self->_deviceCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C40B4;
    v7[3] = &unk_100515730;
    v7[4] = self;
    v8 = v4;
    [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v7];
  }
}

- (void)_pushProximityObservationToCollector:(id)a3
{
  v4 = a3;
  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 assistantIsEnabled];

  if (v6)
  {
    deviceCircleManager = self->_deviceCircleManager;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C4A88;
    v9[3] = &unk_1005156A0;
    v9[4] = self;
    v10 = v4;
    [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v9];
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[ADDeviceProximityManager _pushProximityObservationToCollector:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Skip pushing proximity info as Siri is disabled", buf, 0xCu);
    }
  }
}

- (void)_recordProximityObservation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 deviceIDPair];
    v7 = [v6 adpm_sortedKeyString];

    v8 = [(NSMutableDictionary *)self->_proximityObservations objectForKeyedSubscript:v7];
    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[NSMutableArray array];
    }

    v12 = v11;

    [v12 addObject:v5];
    v13 = [v12 indexesOfObjectsPassingTest:&stru_100515638];
    if ([v13 count])
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v21 = v14;
        *v22 = 136315650;
        *&v22[4] = "[ADDeviceProximityManager _recordProximityObservation:]";
        *&v22[12] = 2048;
        *&v22[14] = [v13 count];
        *&v22[22] = 2048;
        v23 = [v12 count];
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s #hal removing %lu expired keys of %lu", v22, 0x20u);
      }

      [v12 removeObjectsAtIndexes:v13];
    }

    [v12 sortUsingComparator:&stru_100515678];
    v15 = [v12 lastObject];
    v16 = [v15 isEqual:v5];

    v17 = AFSiriLogContextDaemon;
    v18 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v18)
      {
        *v22 = 136315394;
        *&v22[4] = "[ADDeviceProximityManager _recordProximityObservation:]";
        *&v22[12] = 2112;
        *&v22[14] = v5;
        v19 = "%s #hal Recorded latest observation: %@";
LABEL_16:
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v19, v22, 0x16u);
      }
    }

    else if (v18)
    {
      *v22 = 136315394;
      *&v22[4] = "[ADDeviceProximityManager _recordProximityObservation:]";
      *&v22[12] = 2112;
      *&v22[14] = v5;
      v19 = "%s #hal Recorded stale observation: %@";
      goto LABEL_16;
    }

    v20 = [v12 copy];
    [(NSMutableDictionary *)self->_proximityObservations setObject:v20 forKeyedSubscript:v7];
  }
}

- (void)_insertProximityForRemoteDeviceID:(id)a3 rpProximity:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  localDeviceIDSIdentifier = self->_localDeviceIDSIdentifier;
  if (v6 && localDeviceIDSIdentifier)
  {
    v8 = [NSSet setWithObjects:localDeviceIDSIdentifier, v6, 0];
    v9 = [ADRapportProximityObservation alloc];
    v10 = +[NSDate date];
    v11 = [(ADRapportProximityObservation *)v9 initWithDeviceIDPair:v8 proximity:v4 observationDate:v10];

    [(ADDeviceProximityManager *)self _recordProximityObservation:v11];
    if (!self->_localIsCollector)
    {
      [(ADDeviceProximityManager *)self _pushProximityObservationToCollector:v11];
    }
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "[ADDeviceProximityManager _insertProximityForRemoteDeviceID:rpProximity:]";
      v15 = 2112;
      v16 = localDeviceIDSIdentifier;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s #hal Invalid proximity observation for identifier(s): local %@, remote %@", buf, 0x20u);
    }
  }
}

- (void)_updateProximityForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 idsDeviceIdentifier];
  v6 = [v4 proximity];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = [v4 model];
    v10 = 136315906;
    v11 = "[ADDeviceProximityManager _updateProximityForDevice:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal device: %@ (%@) proximity: %d", &v10, 0x26u);
  }

  [(ADDeviceProximityManager *)self _insertProximityForRemoteDeviceID:v5 rpProximity:v6];
}

- (void)_resetMessageLinkAndReconnectNow:(BOOL)a3
{
  v3 = a3;
  [(ADRapportLink *)self->_messageLink removeListener:self];
  [(ADRapportLink *)self->_messageLink invalidate];
  messageLink = self->_messageLink;
  self->_messageLink = 0;

  if (v3)
  {
    v6 = [(ADDeviceProximityManager *)self _messageLink];
  }

  else
  {
    v7 = dispatch_time(0, 20000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C54B4;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_after(v7, queue, block);
  }
}

- (void)_clearProximityDiscoveryLink
{
  [(ADRapportLink *)self->_proximityDiscoveryLink removeListener:self];
  [(ADRapportLink *)self->_proximityDiscoveryLink invalidate];
  proximityDiscoveryLink = self->_proximityDiscoveryLink;
  self->_proximityDiscoveryLink = 0;
}

- (id)_proximityDiscoveryLink
{
  proximityDiscoveryLink = self->_proximityDiscoveryLink;
  if (!proximityDiscoveryLink)
  {
    v4 = [ADRapportLinkConfiguration alloc];
    v5 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_100515598];
    v6 = [ADRapportLinkTransportOptions newWithBuilder:&stru_1005155B8];
    v7 = [ADRapportLinkConnectionOptions newWithBuilder:&stru_1005155D8];
    v8 = [(ADRapportLinkConfiguration *)v4 initWithDiscoveryOptions:v5 transportOptions:v6 connectionOptions:v7 enablesProximityTracking:2];

    v9 = [[ADRapportLink alloc] initWithQueue:self->_queue configuration:v8];
    v10 = self->_proximityDiscoveryLink;
    self->_proximityDiscoveryLink = v9;

    [(ADRapportLink *)self->_proximityDiscoveryLink addListener:self];
    [(ADRapportLink *)self->_proximityDiscoveryLink activateWithCompletion:&stru_1005155F8];

    proximityDiscoveryLink = self->_proximityDiscoveryLink;
  }

  return proximityDiscoveryLink;
}

- (id)_messageLink
{
  messageLink = self->_messageLink;
  if (!messageLink)
  {
    v4 = [ADRapportLinkConfiguration alloc];
    v5 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_1005154F8];
    v6 = [ADRapportLinkTransportOptions newWithBuilder:&stru_100515518];
    v7 = [ADRapportLinkConnectionOptions newWithBuilder:&stru_100515558];
    v8 = [(ADRapportLinkConfiguration *)v4 initWithDiscoveryOptions:v5 transportOptions:v6 connectionOptions:v7 enablesProximityTracking:1];

    v9 = [[ADRapportLink alloc] initWithQueue:self->_queue configuration:v8];
    v10 = self->_messageLink;
    self->_messageLink = v9;

    [(ADRapportLink *)self->_messageLink addListener:self];
    v11 = self->_messageLink;
    v12 = [(ADDeviceProximityManager *)self _rapportLinkMessageOptions];
    [(ADRapportLink *)v11 registerRequestID:@"com.apple.siri.rapport-link.request.device-proximity-manager" options:v12];

    [(ADRapportLink *)self->_messageLink setRequestHandler:self forRequestID:@"com.apple.siri.rapport-link.request.device-proximity-manager" messageType:@"device_proximity_fetch"];
    [(ADRapportLink *)self->_messageLink setRequestHandler:self forRequestID:@"com.apple.siri.rapport-link.request.device-proximity-manager" messageType:@"device_proximity_push"];
    [(ADRapportLink *)self->_messageLink activateWithCompletion:&stru_100515578];

    messageLink = self->_messageLink;
  }

  return messageLink;
}

- (void)_getAggregatedProximityObservationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_proximityObservations af_lenientMappedDictionary:&stru_1005154B0];
  v6 = v5;
  if (self->_localIsCollector)
  {
    v7 = [v5 allValues];
    v8 = sub_100015BD4(v7);
    v4[2](v4, v8);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C5B4C;
    v9[3] = &unk_10051DD70;
    v10 = v5;
    v11 = v4;
    [(ADDeviceProximityManager *)self _fetchProximityObservationsFromCollectorsWithCompletion:v9];
  }
}

- (void)getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:(id)a3 includesAllReachableDevices:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C5EF8;
  v13[3] = &unk_10051C6C8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)getDeviceProximityRelativeToLocalDeviceWithCompletion:(id)a3
{
  v4 = a3;
  if (AFSupportsHALProximityScanning())
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001C73E0;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)_stopScanning
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADDeviceProximityManager _stopScanning]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C7604;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)performProximityScan
{
  if (AFSupportsHALProximityScanning())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C7950;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[ADDeviceProximityManager performProximityScan]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal Not supported on this platform", buf, 0xCu);
    }
  }
}

- (id)_initWithQueue:(id)a3 donationService:(id)a4 deviceCircleManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35.receiver = self;
  v35.super_class = ADDeviceProximityManager;
  v12 = [(ADDeviceProximityManager *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    objc_storeStrong(&v13->_deviceCircleManager, a5);
    v14 = objc_alloc_init(NSMutableDictionary);
    proximityObservations = v13->_proximityObservations;
    v13->_proximityObservations = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    timersByDeviceIDPair = v13->_timersByDeviceIDPair;
    v13->_timersByDeviceIDPair = v16;

    [(ADDeviceCircleManager *)v13->_deviceCircleManager addListener:v13];
    deviceCircleManager = v13->_deviceCircleManager;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001C7E8C;
    v33[3] = &unk_100515378;
    v19 = v13;
    v34 = v19;
    [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v33];
    v20 = [AFNotifyObserver alloc];
    v21 = [AFSiriActivationContext newWithBuilder:&stru_100515398];
    v22 = AFSiriActivationGetDarwinNotificationNameFromContext();
    v23 = [v20 initWithName:v22 options:0 queue:v13->_queue delegate:v19];
    v24 = v19[12];
    v19[12] = v23;

    v25 = [AFNotifyObserver alloc];
    v26 = [AFSiriActivationContext newWithBuilder:&stru_1005153B8];
    v27 = AFSiriActivationGetDarwinNotificationNameFromContext();
    v28 = [v25 initWithName:v27 options:0 queue:v13->_queue delegate:v19];
    v29 = v19[13];
    v19[13] = v28;

    v30 = [v19 _messageLink];
    v31 = +[ADRequestLifecycleObserver sharedObserver];
    [v31 addListener:v19];

    objc_storeStrong(v19 + 6, a4);
    [v19[6] registerContextTransformer:v19 forType:AFDeviceContextKeyHeardVoiceTrigger];
  }

  return v13;
}

+ (id)sharedManager
{
  if (qword_1005904C0 != -1)
  {
    dispatch_once(&qword_1005904C0, &stru_100515350);
  }

  v3 = qword_1005904C8;

  return v3;
}

@end
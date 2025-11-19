@interface ADPeerCloudService
+ (id)_pointerToBlockMap;
+ (id)_timedOutError;
+ (id)_unexpectedMessageError;
+ (id)_wrappedSendFailureError:(id)a3;
+ (id)sharedInstance;
- (BOOL)_handleRemoteExecution:(id)a3 peer:(id)a4 completion:(id)a5;
- (id)_cachedSharedDataForUniqueId:(id)a3;
- (id)_companionPeer;
- (id)_destinationsForPeers:(id)a3;
- (id)_init;
- (id)_peerInfoForAssistantId:(id)a3 allowNonPeers:(BOOL)a4;
- (id)_peerInfoForIDSDeviceUniqueIdentifier:(id)a3 allowNonPeers:(BOOL)a4;
- (id)_peers;
- (id)_uniqueIdentifierForPeer:(id)a3;
- (id)cachedSharedDataForUniqueId:(id)a3;
- (id)companionPeer;
- (id)companionPeerUniqueIdentifier;
- (id)localPeerIDSDeviceUniqueIdentifier;
- (id)peerInfoForAssistantId:(id)a3 allowNonPeers:(BOOL)a4;
- (id)peerInfoForIDSDeviceUniqueIdentifier:(id)a3 allowNonPeers:(BOOL)a4;
- (id)peers;
- (id)uniqueIdentifierForPeer:(id)a3;
- (void)_airplayRouteDidChange:(id)a3;
- (void)_companionIdentifierDidChangeNotification:(id)a3;
- (void)_handleMessageResponse:(id)a3 ofType:(unsigned __int16)a4 orError:(id)a5 fromID:(id)a6 handler:(id)a7;
- (void)_notifyObserversOfRequestInfo:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)_notifyObserversOfSharedData:(id)a3 fromPeer:(id)a4;
- (void)_notifyObserversOfSharedDataRequestFromPeer:(id)a3 completion:(id)a4;
- (void)_sendProto:(id)a3 ofType:(unsigned __int16)a4 originalRequestId:(id)a5 toPeers:(id)a6 responseType:(unsigned __int16)a7 completion:(id)a8;
- (void)_setCachedSharedData:(id)a3 forUniqueId:(id)a4;
- (void)_startRemoteRequest:(id)a3 onPeers:(id)a4 completion:(id)a5;
- (void)_updateActiveAccountState;
- (void)_updateAirPlayRouteIdentifierWithCompletion:(id)a3;
- (void)getSharedDataFromPeers:(id)a3 completion:(id)a4;
- (void)sendSharedData:(id)a3 toPeers:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setRemoteRequestObserver:(id)a3 withHandle:(void *)a4;
- (void)setSharedDataObserver:(id)a3 withHandle:(void *)a4;
- (void)setSharedDataRequestObserver:(id)a3 withHandler:(void *)a4;
- (void)startListeningForRemote;
- (void)startRemoteExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 throughProxyDevice:(id)a6 executionContext:(id)a7 completion:(id)a8;
- (void)startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5;
- (void)startRemoteSerialzedCommandExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8;
@end

@implementation ADPeerCloudService

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 136315394;
    v15 = "[ADPeerCloudService service:devicesChanged:]";
    v16 = 2048;
    v17 = [v7 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %lu devices", buf, 0x16u);
  }

  if (AFIsHorseman())
  {
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100194208;
    v11[3] = &unk_10051E010;
    v12 = v7;
    v13 = self;
    dispatch_async(queue, v11);
  }
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = 136315394;
    v9 = "[ADPeerCloudService service:activeAccountsChanged:]";
    v10 = 2048;
    v11 = [a4 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %lu accounts", &v8, 0x16u);
  }

  [(ADPeerCloudService *)self _updateActiveAccountState];
}

- (void)_handleMessageResponse:(id)a3 ofType:(unsigned __int16)a4 orError:(id)a5 fromID:(id)a6 handler:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v13;
  if (v16)
  {
    goto LABEL_3;
  }

  if ([v15 responseType] != v10)
  {
    v27 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      v40 = v27;
      v41 = 136315650;
      v42 = "[ADPeerCloudService _handleMessageResponse:ofType:orError:fromID:handler:]";
      v43 = 1024;
      *v44 = [v15 responseType];
      *&v44[4] = 1024;
      *&v44[6] = v10;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Response class is %d doesn't match %d", &v41, 0x18u);
    }

    v16 = +[ADPeerCloudService _unexpectedMessageError];
    if (v16)
    {
LABEL_3:
      v17 = v16;
      [v15 outstandingResponses];
LABEL_4:
      v18 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        v41 = 136315138;
        v42 = "[ADPeerCloudService _handleMessageResponse:ofType:orError:fromID:handler:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Completing request", &v41, 0xCu);
      }

      v19 = [NSSet alloc];
      v20 = [v15 responses];
      v21 = [v20 allValues];
      v22 = [v19 initWithArray:v21];

      v23 = [v15 completion];
      (v23)[2](v23, v22, v17);

      v24 = [v15 timeoutTimer];
      [v24 cancelIfNotAlreadyCanceled];

      completions = self->_completions;
      v26 = [v15 identifier];
      [(NSMutableDictionary *)completions removeObjectForKey:v26];

      goto LABEL_7;
    }
  }

  v28 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v41 = 136315394;
    v42 = "[ADPeerCloudService _handleMessageResponse:ofType:orError:fromID:handler:]";
    v43 = 1024;
    *v44 = v10;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Handling response of type %d", &v41, 0x12u);
  }

  v29 = objc_alloc_init(ADPeerResponse);
  v30 = [[ADPeerInfo alloc] initWithIDSIdentifer:v14];
  [(ADPeerResponse *)v29 setPeer:v30];
  v31 = objc_alloc(sub_1001949F0(v10));
  v32 = [v12 data];
  v33 = [v31 initWithData:v32];

  [(ADPeerResponse *)v29 setProto:v33];
  v34 = [v15 responses];
  v35 = v34;
  if (v14)
  {
    [v34 setObject:v29 forKey:v14];
  }

  else
  {
    v36 = +[NSNull null];
    [v35 setObject:v29 forKey:v36];
  }

  [v15 setOutstandingResponses:{objc_msgSend(v15, "outstandingResponses") - 1}];
  v37 = [v15 outstandingResponses];
  if (v37 <= 0)
  {
    v17 = 0;
    goto LABEL_4;
  }

  v38 = v37;
  v39 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v41 = 136315394;
    v42 = "[ADPeerCloudService _handleMessageResponse:ofType:orError:fromID:handler:]";
    v43 = 2048;
    *v44 = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s %ld responses remaining", &v41, 0x16u);
  }

LABEL_7:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[ADPeerCloudService service:account:identifier:didSendWithSuccess:error:context:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s ", &v21, 0xCu);
  }

  if (!a6)
  {
    v20 = [(NSMutableDictionary *)self->_completions objectForKey:v16];
    if (v20)
    {
      [(ADPeerCloudService *)self _handleMessageResponse:0 ofType:0xFFFFLL orError:v17 fromID:0 handler:v20];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[ADPeerCloudService service:account:incomingUnhandledProtobuf:fromID:context:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v18 = +[ADFMDMonitor sharedManager];
  v19 = [v18 isLostModeActive];

  if (v19)
  {
    v20 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v49 = "[ADPeerCloudService service:account:incomingUnhandledProtobuf:fromID:context:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Dropping incoming message because Lost Mode is active", buf, 0xCu);
    }
  }

  else
  {
    v21 = [(ADPeerCloudService *)self _service];
    v22 = [v21 deviceForFromID:v15];

    if (v22)
    {
      v44 = [v14 type];
      v23 = [v16 incomingResponseIdentifier];
      v45 = [v16 outgoingResponseIdentifier];
      v41 = [v16 expectsPeerResponse];
      v24 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        *buf = 136316418;
        v49 = "[ADPeerCloudService service:account:incomingUnhandledProtobuf:fromID:context:]";
        v50 = 1024;
        v51 = v44;
        v52 = 2112;
        v53 = v15;
        v54 = 2112;
        v55 = v23;
        v56 = 2112;
        v57 = v45;
        v58 = 1024;
        v59 = v41;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Type %d from %@. Incoming %@ Outgoing %@ Expects Response %d", buf, 0x36u);
      }

      v43 = v23;
      v25 = [(NSMutableDictionary *)self->_completions objectForKey:v23];
      if (v25)
      {
        [(ADPeerCloudService *)self _handleMessageResponse:v14 ofType:v44 orError:0 fromID:v15 handler:v25];
      }

      else
      {
        v39 = v13;
        v40 = v12;
        v38 = [ADPeerInfo alloc];
        v37 = IDSCopyIDForDevice();
        v27 = [v22 modelIdentifier];
        v28 = [v22 productBuildVersion];
        v29 = [v22 name];
        v30 = [(ADPeerInfo *)v38 initWithIDSIdentifer:v37 productType:v27 buildVersion:v28 name:v29];

        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10019504C;
        v46[3] = &unk_100514740;
        v47 = v41;
        v46[4] = self;
        v46[5] = v45;
        v42 = v30;
        v46[6] = v30;
        v31 = objc_retainBlock(v46);
        v32 = sub_1001949F0(v44);
        if (v32)
        {
          v33 = [v32 alloc];
          v34 = [v14 data];
          v35 = [v33 initWithData:v34];

          v36 = v42;
          [v35 _ad_performWithCloudService:self fromPeer:v42 completion:v31];
          v13 = v39;
        }

        else
        {
          v35 = +[ADPeerCloudService _unexpectedMessageError];
          (v31[2])(v31, 0, 0xFFFFLL, v35);
          v13 = v39;
          v36 = v42;
        }

        v12 = v40;
      }
    }

    else
    {
      v26 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v49 = "[ADPeerCloudService service:account:incomingUnhandledProtobuf:fromID:context:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Dropping incoming message with unknown sender", buf, 0xCu);
      }
    }
  }
}

- (BOOL)_handleRemoteExecution:(id)a3 peer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[ADPeerCloudService _handleRemoteExecution:peer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = [v8 hasContent];
  if (v12)
  {
    v13 = [v8 sourceIDSFirstRoutableDestination];
    [v9 setIdsFirstRoutableDestination:v13];

    v14 = [v8 assistantId];
    if (v14)
    {
      v15 = +[ADDeviceCircleManager sharedInstance];
      v16 = [(ADPeerCloudService *)self _uniqueIdentifierForPeer:v9];
      [v15 _setAssistantId:v14 forDeviceWithIdsDeviceUniqueIdentifier:v16];
    }

    v17 = [v8 content];
    v18 = [NSDictionary dictionaryWithPlistData:v17];

    v19 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v20 = AceObjectClassPListKey;
      v21 = v19;
      v22 = [v18 objectForKeyedSubscript:v20];
      *buf = 136315650;
      v28 = "[ADPeerCloudService _handleRemoteExecution:peer:completion:]";
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s got remote execution command: %@ -> %@", buf, 0x20u);
    }

    v23 = +[ADCommandCenter sharedCommandCenter];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001953C4;
    v25[3] = &unk_10051CEE0;
    v26 = v10;
    [v23 executeCommand:v18 fromPeer:v9 remoteExecutionInfo:0 reply:v25];
  }

  return v12;
}

- (void)_notifyObserversOfRequestInfo:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v22 = a3;
  v21 = a4;
  v19 = a5;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v35 = "[ADPeerCloudService _notifyObserversOfRequestInfo:fromPeer:completion:]";
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = v21;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:1];
  v10 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(NSMapTable *)self->_remoteRequestObservers objectEnumerator];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100195864;
        v26[3] = &unk_10051BBE0;
        v26[4] = self;
        v27 = v9;
        v28 = v10;
        (*(v15 + 16))(v15, v22, v21, v26);

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019591C;
  block[3] = &unk_10051E038;
  v24 = v9;
  v25 = v19;
  v17 = v19;
  v18 = v9;
  dispatch_group_notify(v10, queue, block);
}

- (void)setRemoteRequestObserver:(id)a3 withHandle:(void *)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100195AB8;
  block[3] = &unk_10051BFA8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)startListeningForRemote
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADPeerCloudService startListeningForRemote]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADPeerCloudService *)self setRemoteRequestObserver:&stru_100514718 withHandle:&unk_100590420];
}

- (void)startRemoteSerialzedCommandExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a8;
  v16 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v34 = "[ADPeerCloudService startRemoteSerialzedCommandExecution:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]";
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  if (!v12)
  {
    v25 = +[ADPeerCloudService _unexpectedMessageError];
LABEL_10:
    v24 = v25;
    v15[2](v15, 0, v25);
    goto LABEL_11;
  }

  if (!v13)
  {
    v25 = [[NSError alloc] initWithDomain:@"ADRemoteConnectionErrorDomain" code:5 userInfo:0];
    goto LABEL_10;
  }

  v17 = +[NSUUID UUID];
  v18 = [v17 UUIDString];
  v19 = [v18 componentsSeparatedByString:@"-"];
  v20 = [v19 firstObject];

  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v34 = "[ADPeerCloudService startRemoteSerialzedCommandExecution:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]";
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s #hal1 (%@) send command to peer: %@", buf, 0x20u);
  }

  mach_absolute_time();
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  queue = self->_queue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100196138;
  v26[3] = &unk_1005146D8;
  v27 = v12;
  v28 = self;
  v32 = Milliseconds;
  v29 = v13;
  v30 = v20;
  v31 = v15;
  v24 = v20;
  dispatch_async(queue, v26);

LABEL_11:
}

- (void)startRemoteExecution:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 throughProxyDevice:(id)a6 executionContext:(id)a7 completion:(id)a8
{
  v10 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v20 = 136315650;
    v21 = "[ADPeerCloudService startRemoteExecution:onPeer:allowsRelay:throughProxyDevice:executionContext:completion:]";
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@ %@", &v20, 0x20u);
  }

  v18 = [v13 dictionary];
  v19 = [v18 plistData];
  [(ADPeerCloudService *)self startRemoteSerialzedCommandExecution:v19 onPeer:v14 allowsRelay:v10 allowFallbackOnAWDL:0 executionContext:v15 completion:v16];
}

- (void)startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [NSSet setWithObject:v9];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001969A8;
    v13[3] = &unk_10051CF08;
    v14 = v11;
    [(ADPeerCloudService *)self _startRemoteRequest:v8 onPeers:v12 completion:v13];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)_startRemoteRequest:(id)a3 onPeers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v30 = "[ADPeerCloudService _startRemoteRequest:onPeers:completion:]";
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  if (v8)
  {
    queue = self->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100196C90;
    v19[3] = &unk_10051E0D8;
    v20 = v8;
    v21 = self;
    v22 = v9;
    v23 = v10;
    dispatch_async(queue, v19);

    v13 = v20;
LABEL_14:

    goto LABEL_15;
  }

  if (v10)
  {
    v13 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 setObject:&__kCFBooleanFalse forKey:*(*(&v24 + 1) + 8 * v18)];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    (*(v10 + 2))(v10, v13);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_notifyObserversOfSharedDataRequestFromPeer:(id)a3 completion:(id)a4
{
  v19 = a3;
  v17 = a4;
  v6 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADPeerCloudService _notifyObserversOfSharedDataRequestFromPeer:completion:]";
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:1];
  v8 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(NSMapTable *)self->_sharedDataRequestObservers objectEnumerator];
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        dispatch_group_enter(v8);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10019724C;
        v23[3] = &unk_100514638;
        v23[4] = self;
        v24 = v7;
        v25 = v8;
        (*(v13 + 16))(v13, v19, v23);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100197318;
  block[3] = &unk_10051E038;
  v21 = v7;
  v22 = v17;
  v15 = v17;
  v16 = v7;
  dispatch_group_notify(v8, queue, block);
}

- (void)setSharedDataRequestObserver:(id)a3 withHandler:(void *)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001974C8;
  block[3] = &unk_10051BFA8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)getSharedDataFromPeers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADPeerCloudService getSharedDataFromPeers:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001976BC;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)_notifyObserversOfSharedData:(id)a3 fromPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[ADPeerCloudService _notifyObserversOfSharedData:fromPeer:]";
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  v9 = [(ADPeerCloudService *)self _uniqueIdentifierForPeer:v7];
  v10 = [v6 assistantId];
  if (v10)
  {
    v11 = +[ADDeviceCircleManager sharedInstance];
    [v11 _setAssistantId:v10 forDeviceWithIdsDeviceUniqueIdentifier:v9];
  }

  v12 = AFIsHorseman();
  if (v6 && v12)
  {
    [(ADPeerCloudService *)self _setCachedSharedData:v6 forUniqueId:v9];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = [(NSMapTable *)self->_sharedDataObservers objectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17) + 16))();
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)setSharedDataObserver:(id)a3 withHandle:(void *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADPeerCloudService setSharedDataObserver:withHandle:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100197D60;
  block[3] = &unk_10051BFA8;
  block[4] = self;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)sendSharedData:(id)a3 toPeers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADPeerCloudService sendSharedData:toPeers:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100197F50;
    block[3] = &unk_10051DB68;
    v11 = v6;
    v12 = self;
    v13 = v7;
    dispatch_async(queue, block);
  }
}

- (void)_updateAirPlayRouteIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADPeerCloudService _updateAirPlayRouteIdentifierWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (AFSupportsAirPlayEndpointRoute())
  {
    v6 = +[AFMediaRemoteDeviceInfo currentDevice];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100198118;
    v7[3] = &unk_10051D6C8;
    v7[4] = self;
    v8 = v4;
    [v6 getRouteIdentifierWithCompletion:v7];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)_airplayRouteDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADPeerCloudService _airplayRouteDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001983CC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_companionIdentifierDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADPeerCloudService _companionIdentifierDidChangeNotification:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (AFIsHorseman())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001984F4;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_updateActiveAccountState
{
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(IDSService *)self->_service accounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v17 count:16];
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

        if ([*(*(&v9 + 1) + 8 * i) isActive])
        {
          LODWORD(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (self->_hasActiveAccount != v4)
  {
    self->_hasActiveAccount = v4;
    v7 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[ADPeerCloudService _updateActiveAccountState]";
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Has active account: %d", buf, 0x12u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"ADPeerCloudServiceActiveAccountStatusDidChangeNotification" object:0];
  }
}

- (void)_setCachedSharedData:(id)a3 forUniqueId:(id)a4
{
  v11 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    peerSharedData = self->_peerSharedData;
    v8 = v11;
    if (v11)
    {
      if (!peerSharedData)
      {
        v9 = objc_opt_new();
        v10 = self->_peerSharedData;
        self->_peerSharedData = v9;

        v8 = v11;
        peerSharedData = self->_peerSharedData;
      }

      [(NSMutableDictionary *)peerSharedData setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)peerSharedData removeObjectForKey:v6];
    }
  }
}

- (id)_cachedSharedDataForUniqueId:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_peerSharedData objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cachedSharedDataForUniqueId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100198960;
    v16 = sub_100198970;
    v17 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100198978;
    block[3] = &unk_10051C588;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(queue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_peerInfoForAssistantId:(id)a3 allowNonPeers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[ADDeviceCircleManager sharedInstance];
  v8 = [v7 idsDeviceUniqueIdentifierForDeviceWithAssistantId:v6];

  if (v8)
  {
    v9 = [(ADPeerCloudService *)self _peerInfoForIDSDeviceUniqueIdentifier:v8 allowNonPeers:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)peerInfoForAssistantId:(id)a3 allowNonPeers:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100198960;
    v19 = sub_100198970;
    v20 = 0;
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100198BA0;
    v11[3] = &unk_1005145E8;
    v13 = &v15;
    v11[4] = self;
    v12 = v6;
    v14 = a4;
    dispatch_sync(queue, v11);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)companionPeerUniqueIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100198960;
  v10 = sub_100198970;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100198CE4;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_companionPeer
{
  v3 = [(NSString *)self->_companionIdentifier length];
  if (v3)
  {
    v3 = [(ADPeerCloudService *)self _peerInfoForIDSDeviceUniqueIdentifier:self->_companionIdentifier allowNonPeers:0];
  }

  return v3;
}

- (id)companionPeer
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100198960;
  v23 = sub_100198970;
  v24 = 0;
  if (AFIsHorseman())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019900C;
    block[3] = &unk_10051D4A0;
    block[4] = self;
    block[5] = &v19;
    dispatch_sync(queue, block);
  }

  else if (AFIsNano())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(ADPeerCloudService *)self peers];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v5)
    {
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [(ADPeerCloudService *)self _service];
          v10 = [v8 idsIdentifier];
          v11 = [v9 deviceForFromID:v10];

          if ([v11 isDefaultPairedDevice])
          {
            objc_storeStrong(v20 + 5, v8);

            goto LABEL_14;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v14 objects:v25 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

- (id)localPeerIDSDeviceUniqueIdentifier
{
  v2 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADPeerCloudService localPeerIDSDeviceUniqueIdentifier]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Fetching IDS device unique identifier for local device...", &v6, 0xCu);
  }

  v3 = IDSCopyLocalDeviceUniqueID();
  v4 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADPeerCloudService localPeerIDSDeviceUniqueIdentifier]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Fetched IDS device unique identifier %@ for local device.", &v6, 0x16u);
  }

  return v3;
}

- (id)_peerInfoForIDSDeviceUniqueIdentifier:(id)a3 allowNonPeers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = _IDSCopyIDForDeviceUniqueID();
  v8 = [(ADPeerCloudService *)self _service];
  v9 = [v8 deviceForFromID:v7];

  if (v9)
  {
    v10 = [ADPeerInfo alloc];
    v11 = IDSCopyIDForDevice();
    v12 = [v9 modelIdentifier];
    v13 = [v9 productBuildVersion];
    v14 = [v9 name];
    v15 = [(ADPeerInfo *)v10 initWithIDSIdentifer:v11 productType:v12 buildVersion:v13 name:v14];

    [(ADPeerInfo *)v15 setIdsDeviceUniqueIdentifier:v6];
  }

  else if (v4 && [v6 length])
  {
    v16 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADPeerCloudService _peerInfoForIDSDeviceUniqueIdentifier:allowNonPeers:]";
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Unable to find peer, creating faux element for identifier: %@", &v18, 0x16u);
    }

    v15 = [[ADPeerInfo alloc] initWithUniqueIdentifer:v6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)peerInfoForIDSDeviceUniqueIdentifier:(id)a3 allowNonPeers:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100198960;
  v19 = sub_100198970;
  v20 = 0;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019947C;
  v11[3] = &unk_1005145E8;
  v12 = v6;
  v13 = &v15;
  v11[4] = self;
  v14 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_uniqueIdentifierForPeer:(id)a3
{
  v4 = [a3 idsIdentifier];
  v5 = [(ADPeerCloudService *)self _service];
  v6 = [v5 deviceForFromID:v4];

  if (v6)
  {
    v7 = [v6 uniqueIDOverride];
    if (![v7 length])
    {
      v8 = [v6 uniqueID];

      v7 = v8;
    }
  }

  else if ([v4 hasPrefix:@"device:"])
  {
    v7 = [v4 _stripFZIDPrefix];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADPeerCloudService _uniqueIdentifierForPeer:]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s retrieved ID from URI: %@", &v11, 0x16u);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)uniqueIdentifierForPeer:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100198960;
  v16 = sub_100198970;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100199754;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)peers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100198960;
  v10 = sub_100198970;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100199894;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_peers
{
  v3 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(ADPeerCloudService *)self _service];
  v5 = [v4 devices];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [ADPeerInfo alloc];
        v12 = IDSCopyIDForDevice();
        v13 = [v10 modelIdentifier];
        v14 = [v10 productBuildVersion];
        v15 = [v10 name];
        v16 = [(ADPeerInfo *)v11 initWithIDSIdentifer:v12 productType:v13 buildVersion:v14 name:v15];

        [v3 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_sendProto:(id)a3 ofType:(unsigned __int16)a4 originalRequestId:(id)a5 toPeers:(id)a6 responseType:(unsigned __int16)a7 completion:(id)a8
{
  v9 = a7;
  v12 = a4;
  v41 = a3;
  v14 = a5;
  v42 = a6;
  v15 = a8;
  v16 = +[ADFMDMonitor sharedManager];
  LODWORD(a6) = [v16 isLostModeActive];

  if (!a6)
  {
    v18 = [(ADPeerCloudService *)self _destinationsForPeers:v42];
    v19 = [v18 count];
    if (!v19)
    {
      v35 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v48 = "[ADPeerCloudService _sendProto:ofType:originalRequestId:toPeers:responseType:completion:]";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s No place to send this", buf, 0xCu);
      }

      if (v15)
      {
        v40 = [[NSError alloc] initWithDomain:@"ADRemoteConnectionErrorDomain" code:5 userInfo:0];
        v15[2](v15, 0, v40);
      }

      goto LABEL_26;
    }

    v20 = v19;
    v21 = [IDSProtobuf alloc];
    v22 = [v41 data];
    v39 = [v21 initWithProtobufData:v22 type:v12 isResponse:v14 != 0];

    v23 = [[NSMutableDictionary alloc] initWithCapacity:3];
    [v23 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionAllowCloudDeliveryKey];
    if (v14)
    {
      [v23 setObject:v14 forKey:IDSSendMessageOptionPeerResponseIdentifierKey];
    }

    if (v15)
    {
      [v23 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionExpectsPeerResponseKey];
    }

    v24 = [(ADPeerCloudService *)self _service];
    v45 = 0;
    v46 = 0;
    v25 = [v24 sendProtobuf:v39 toDestinations:v18 priority:300 options:v23 identifier:&v46 error:&v45];
    v38 = v46;
    v37 = v45;

    if (v25)
    {
      if (v15)
      {
        if (v38)
        {
          v26 = objc_alloc_init(ADCloudResponseHandler);
          [(ADCloudResponseHandler *)v26 setIdentifier:v38];
          -[ADCloudResponseHandler setOutstandingResponses:](v26, "setOutstandingResponses:", [v18 count]);
          [(ADCloudResponseHandler *)v26 setResponseType:v9];
          v27 = [[NSMutableDictionary alloc] initWithCapacity:v20];
          [(ADCloudResponseHandler *)v26 setResponses:v27];

          [(ADCloudResponseHandler *)v26 setCompletion:v15];
          objc_initWeak(buf, v26);
          v28 = [AFWatchdogTimer alloc];
          queue = self->_queue;
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_10019A094;
          v43[3] = &unk_10051C650;
          v43[4] = self;
          objc_copyWeak(&v44, buf);
          v30 = [v28 initWithTimeoutInterval:queue onQueue:v43 timeoutHandler:300.0];
          [(ADCloudResponseHandler *)v26 setTimeoutTimer:v30];
          [v30 start];
          completions = self->_completions;
          if (!completions)
          {
            v32 = objc_alloc_init(NSMutableDictionary);
            v34 = self->_completions;
            p_completions = &self->_completions;
            *p_completions = v32;

            completions = *p_completions;
          }

          [(NSMutableDictionary *)completions setObject:v26 forKey:v38];

          objc_destroyWeak(&v44);
          objc_destroyWeak(buf);
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v36 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v48 = "[ADPeerCloudService _sendProto:ofType:originalRequestId:toPeers:responseType:completion:]";
        v49 = 1024;
        v50 = v12;
        v51 = 2114;
        v52 = v37;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Failed sending message type %d %{public}@", buf, 0x1Cu);
        if (!v15)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v15)
      {
LABEL_23:
        v26 = [ADPeerCloudService _wrappedSendFailureError:v37];
        v15[2](v15, 0, v26);
LABEL_24:
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v48 = "[ADPeerCloudService _sendProto:ofType:originalRequestId:toPeers:responseType:completion:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Lost mode is active, not sending any outbound requests", buf, 0xCu);
  }

  if (v15)
  {
    v18 = [[NSError alloc] initWithDomain:@"ADRemoteConnectionErrorDomain" code:7 userInfo:0];
    v15[2](v15, 0, v18);
LABEL_26:
  }
}

- (id)_destinationsForPeers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  if (v4)
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v35 + 1) + 8 * i) idsIdentifier];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v12 = [(ADPeerCloudService *)self _service];
    v6 = [v12 devices];

    v13 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v26 = v5;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v31 + 1) + 8 * j);
          v18 = IDSCopyIDForDevice();
          if (v18)
          {
            v19 = [v17 modelIdentifier];
            if (v19)
            {
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v20 = [NSArray arrayWithObjects:@"AudioAccessory", @"AppleTV", 0];
              v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v28;
                while (2)
                {
                  for (k = 0; k != v22; k = k + 1)
                  {
                    if (*v28 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    if ([v19 hasPrefix:*(*(&v27 + 1) + 8 * k)])
                    {

                      [v26 addObject:v18];
                      goto LABEL_29;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

LABEL_29:
          }
        }

        v14 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
      v4 = 0;
      v5 = v26;
    }
  }

  return v5;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = ADPeerCloudService;
  v2 = [(ADPeerCloudService *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADPeerCloudService", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019A514;
    block[3] = &unk_10051DFE8;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

+ (id)_pointerToBlockMap
{
  v2 = [[NSMapTable alloc] initWithKeyOptions:1282 valueOptions:0 capacity:1];

  return v2;
}

+ (id)_wrappedSendFailureError:(id)a3
{
  v3 = a3;
  v4 = [NSError alloc];
  v5 = v4;
  if (v3)
  {
    v9 = NSUnderlyingErrorKey;
    v10 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [v5 initWithDomain:@"ADRemoteConnectionErrorDomain" code:3 userInfo:v6];
  }

  else
  {
    v7 = [v4 initWithDomain:@"ADRemoteConnectionErrorDomain" code:3 userInfo:0];
  }

  return v7;
}

+ (id)_timedOutError
{
  v2 = [[NSError alloc] initWithDomain:@"ADRemoteConnectionErrorDomain" code:6 userInfo:0];

  return v2;
}

+ (id)_unexpectedMessageError
{
  v2 = [[NSError alloc] initWithDomain:@"ADRemoteConnectionErrorDomain" code:0 userInfo:0];

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100590418 != -1)
  {
    dispatch_once(&qword_100590418, &stru_1005145C0);
  }

  v3 = qword_100590410;

  return v3;
}

@end
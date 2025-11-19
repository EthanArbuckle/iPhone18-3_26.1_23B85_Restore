@interface ADPeerConnection
- (ADPeerConnection)initWithServiceIdentifier:(id)a3 forRequests:(void *)a4 requireConnectedPeer:(BOOL)a5;
- (BOOL)_hasConnectedPeer;
- (BOOL)deviceIsNearby:(id *)a3;
- (BOOL)hasPeer;
- (id)_account;
- (id)_destination;
- (id)_pairedDevice;
- (id)_service;
- (id)_wrappedSendFailureError:(id)a3;
- (id)peerBuildVersion;
- (id)peerName;
- (id)peerType;
- (id)peerVersion;
- (void)_invokeCompletionForIdentifier:(id)a3 response:(id)a4 error:(id)a5;
- (void)_sendRequest:(id)a3 responseClass:(Class)a4 fireAndForget:(BOOL)a5 timeout:(double)a6 overrideRequireConnectedPeer:(BOOL)a7 to:(BOOL)a8 allowCloud:(BOOL)a9 completion:(id)a10;
- (void)_sendResponse:(id)a3 forRequestId:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setDelegate:(id)a3 forRequestTypes:(void *)a4;
@end

@implementation ADPeerConnection

- (id)_pairedDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ADPeerConnection *)self _service];
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

- (id)_service
{
  idsService = self->_idsService;
  if (!idsService)
  {
    v4 = [[IDSService alloc] initWithService:self->_identifier];
    v5 = self->_idsService;
    self->_idsService = v4;

    [(IDSService *)self->_idsService addDelegate:self queue:self->_queue];
    idsService = self->_idsService;
  }

  return idsService;
}

- (id)peerName
{
  v2 = [(ADPeerConnection *)self _pairedDevice];
  v3 = [v2 productName];

  return v3;
}

- (id)peerVersion
{
  v2 = [(ADPeerConnection *)self _pairedDevice];
  v3 = [v2 productVersion];

  return v3;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!a6)
  {
    v16 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "[ADPeerConnection service:account:identifier:didSendWithSuccess:error:]";
      v20 = 2112;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Message send with identifier %@ failed %{public}@", &v18, 0x20u);
    }

    v17 = [(ADPeerConnection *)self _wrappedSendFailureError:v15];
    [(ADPeerConnection *)self _invokeCompletionForIdentifier:v14 response:0 error:v17];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [v12 incomingResponseIdentifier];
  v14 = [v12 outgoingResponseIdentifier];
  v15 = [v12 expectsPeerResponse];
  v16 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v17 = v16;
    v18 = [v10 type];
    v19 = v13;
    v20 = self;
    v21 = v10;
    v22 = v14;
    v23 = v15;
    v24 = v11;
    v25 = v18;
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 expectsPeerResponse]);
    *buf = 136316674;
    v46 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
    v47 = 2112;
    v48 = identifier;
    v49 = 1024;
    *v50 = v25;
    v11 = v24;
    v15 = v23;
    v14 = v22;
    v10 = v21;
    self = v20;
    v13 = v19;
    *&v50[4] = 2112;
    *&v50[6] = v11;
    v51 = 2112;
    v52 = v19;
    v53 = 2112;
    v54 = v14;
    v55 = 2112;
    v56 = v26;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Received %@ type %d fromId %@ incoming %@ outgoing %@ expects response %@", buf, 0x44u);
  }

  if (v13)
  {
    [(ADPeerConnection *)self _invokeCompletionForIdentifier:v13 response:v10 error:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (v28 = self->_classMapFunc, WeakRetained, v28))
    {
      classMapFunc = self->_classMapFunc;
      v40 = v11;
      if (classMapFunc)
      {
        v30 = classMapFunc([v10 type]);
      }

      else
      {
        v30 = 0;
      }

      v32 = [v30 alloc];
      v33 = [v10 data];
      v34 = [v32 initWithData:v33];

      v35 = objc_loadWeakRetained(&self->_delegate);
      v36 = AFSiriLogContextIDS;
      v37 = os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO);
      if (v35 && v34)
      {
        if (v37)
        {
          *buf = 136315138;
          v46 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Handing protobuf to delegate", buf, 0xCu);
        }

        v38 = objc_loadWeakRetained(&self->_delegate);
        v39 = v38;
        if (v15)
        {
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1000838DC;
          v42[3] = &unk_10050F998;
          v43 = v14;
          v44 = self;
          [v39 peerConnection:self handlePBSubclass:v34 completion:v42];
        }

        else
        {
          [v38 peerConnection:self handlePBSubclass:v34 completion:0];
        }
      }

      else if (v37)
      {
        *buf = 136315650;
        v46 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
        v47 = 2112;
        v48 = v10;
        v49 = 2112;
        *v50 = v12;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Tried to handle protobuf but couldn't find class or had no delegate %@ %@", buf, 0x20u);
      }

      v11 = v40;
    }

    else
    {
      v31 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v46 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
        v47 = 2112;
        v48 = v10;
        v49 = 2112;
        *v50 = v12;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Don't know how to handle protobuf %@ %@", buf, 0x20u);
      }

      if (v15)
      {
        [(ADPeerConnection *)self _sendResponse:0 forRequestId:v14];
      }
    }
  }
}

- (id)_wrappedSendFailureError:(id)a3
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

- (void)_invokeCompletionForIdentifier:(id)a3 response:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_completions objectForKey:v14];
  if (v9 || ![v8 isResponse])
  {
    v13 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = objc_alloc([(NSMutableDictionary *)self->_responseClasses objectForKey:v14]);
  v12 = [v8 data];
  v13 = [v11 initWithData:v12];

  if (v10)
  {
LABEL_6:
    (v10)[2](v10, v13, v9);
  }

LABEL_7:
  [(NSMutableDictionary *)self->_completions removeObjectForKey:v14];
  [(NSMutableDictionary *)self->_responseClasses removeObjectForKey:v14];
}

- (void)_sendResponse:(id)a3 forRequestId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083D50;
    block[3] = &unk_10051DB68;
    v11 = v6;
    v12 = v7;
    v13 = self;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADPeerConnection _sendResponse:forRequestId:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Ignoring response with no requestId %@", buf, 0x16u);
    }
  }
}

- (void)setDelegate:(id)a3 forRequestTypes:(void *)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083FB8;
  block[3] = &unk_10051E128;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_sendRequest:(id)a3 responseClass:(Class)a4 fireAndForget:(BOOL)a5 timeout:(double)a6 overrideRequireConnectedPeer:(BOOL)a7 to:(BOOL)a8 allowCloud:(BOOL)a9 completion:(id)a10
{
  v17 = a3;
  v18 = a10;
  requestMapFunc = self->_requestMapFunc;
  v20 = objc_opt_class();
  v21 = requestMapFunc(v20);
  v22 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "[ADPeerConnection _sendRequest:responseClass:fireAndForget:timeout:overrideRequireConnectedPeer:to:allowCloud:completion:]";
    v38 = 1024;
    v39 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Sending Request %d", buf, 0x12u);
  }

  queue = self->_queue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000841C0;
  v26[3] = &unk_10050F970;
  v32 = a7;
  v33 = a8;
  v27 = v17;
  v28 = v18;
  v26[4] = self;
  v31 = v21;
  v34 = a5;
  v29 = a6;
  v35 = a9;
  v30 = a4;
  v24 = v17;
  v25 = v18;
  dispatch_async(queue, v26);
}

- (id)_destination
{
  v2 = qword_10058FE10;
  if (!qword_10058FE10)
  {
    v3 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v4 = qword_10058FE10;
    qword_10058FE10 = v3;

    v2 = qword_10058FE10;
  }

  return v2;
}

- (id)_account
{
  v2 = [(IDSService *)self->_idsService accounts];
  v3 = [v2 anyObject];

  return v3;
}

- (BOOL)_hasConnectedPeer
{
  v2 = [(ADPeerConnection *)self _pairedDevice];
  v3 = [v2 isConnected];

  return v3;
}

- (BOOL)deviceIsNearby:(id *)a3
{
  v4 = [(ADPeerConnection *)self _pairedDevice];
  v5 = v4;
  if (a3)
  {
    *a3 = [v4 uniqueIDOverride];
  }

  v6 = [v5 isNearby];

  return v6;
}

- (id)peerBuildVersion
{
  v2 = [(ADPeerConnection *)self _pairedDevice];
  v3 = [v2 productBuildVersion];

  return v3;
}

- (id)peerType
{
  v2 = [(ADPeerConnection *)self _pairedDevice];
  v3 = [v2 modelIdentifier];

  return v3;
}

- (BOOL)hasPeer
{
  v2 = [(ADPeerConnection *)self _account];
  v3 = v2 != 0;

  return v3;
}

- (ADPeerConnection)initWithServiceIdentifier:(id)a3 forRequests:(void *)a4 requireConnectedPeer:(BOOL)a5
{
  v9 = a3;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ADPeerConnection.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v19 = +[NSAssertionHandler currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"ADPeerConnection.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"func"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = ADPeerConnection;
  v10 = [(ADPeerConnection *)&v20 init];
  if (v10)
  {
    v11 = [v9 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

    v15 = dispatch_queue_create("ADRemotePeerConnection", v14);
    queue = v10->_queue;
    v10->_queue = v15;

    v10->_requestMapFunc = a4;
    v10->_requireConnectedPeer = a5;
  }

  return v10;
}

@end
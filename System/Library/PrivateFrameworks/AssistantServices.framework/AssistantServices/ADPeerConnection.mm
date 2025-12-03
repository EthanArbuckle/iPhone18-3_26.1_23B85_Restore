@interface ADPeerConnection
- (ADPeerConnection)initWithServiceIdentifier:(id)identifier forRequests:(void *)requests requireConnectedPeer:(BOOL)peer;
- (BOOL)_hasConnectedPeer;
- (BOOL)deviceIsNearby:(id *)nearby;
- (BOOL)hasPeer;
- (id)_account;
- (id)_destination;
- (id)_pairedDevice;
- (id)_service;
- (id)_wrappedSendFailureError:(id)error;
- (id)peerBuildVersion;
- (id)peerName;
- (id)peerType;
- (id)peerVersion;
- (void)_invokeCompletionForIdentifier:(id)identifier response:(id)response error:(id)error;
- (void)_sendRequest:(id)request responseClass:(Class)class fireAndForget:(BOOL)forget timeout:(double)timeout overrideRequireConnectedPeer:(BOOL)peer to:(BOOL)to allowCloud:(BOOL)cloud completion:(id)self0;
- (void)_sendResponse:(id)response forRequestId:(id)id;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)setDelegate:(id)delegate forRequestTypes:(void *)types;
@end

@implementation ADPeerConnection

- (id)_pairedDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _service = [(ADPeerConnection *)self _service];
  devices = [_service devices];

  v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _pairedDevice = [(ADPeerConnection *)self _pairedDevice];
  productName = [_pairedDevice productName];

  return productName;
}

- (id)peerVersion
{
  _pairedDevice = [(ADPeerConnection *)self _pairedDevice];
  productVersion = [_pairedDevice productVersion];

  return productVersion;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v16 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "[ADPeerConnection service:account:identifier:didSendWithSuccess:error:]";
      v20 = 2112;
      v21 = identifierCopy;
      v22 = 2114;
      v23 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Message send with identifier %@ failed %{public}@", &v18, 0x20u);
    }

    v17 = [(ADPeerConnection *)self _wrappedSendFailureError:errorCopy];
    [(ADPeerConnection *)self _invokeCompletionForIdentifier:identifierCopy response:0 error:v17];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  expectsPeerResponse = [contextCopy expectsPeerResponse];
  v16 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v17 = v16;
    type = [protobufCopy type];
    v19 = incomingResponseIdentifier;
    selfCopy = self;
    v21 = protobufCopy;
    v22 = outgoingResponseIdentifier;
    v23 = expectsPeerResponse;
    v24 = dCopy;
    v25 = type;
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy expectsPeerResponse]);
    *buf = 136316674;
    v46 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
    v47 = 2112;
    v48 = identifier;
    v49 = 1024;
    *v50 = v25;
    dCopy = v24;
    expectsPeerResponse = v23;
    outgoingResponseIdentifier = v22;
    protobufCopy = v21;
    self = selfCopy;
    incomingResponseIdentifier = v19;
    *&v50[4] = 2112;
    *&v50[6] = dCopy;
    v51 = 2112;
    v52 = v19;
    v53 = 2112;
    v54 = outgoingResponseIdentifier;
    v55 = 2112;
    v56 = v26;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Received %@ type %d fromId %@ incoming %@ outgoing %@ expects response %@", buf, 0x44u);
  }

  if (incomingResponseIdentifier)
  {
    [(ADPeerConnection *)self _invokeCompletionForIdentifier:incomingResponseIdentifier response:protobufCopy error:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (v28 = self->_classMapFunc, WeakRetained, v28))
    {
      classMapFunc = self->_classMapFunc;
      v40 = dCopy;
      if (classMapFunc)
      {
        v30 = classMapFunc([protobufCopy type]);
      }

      else
      {
        v30 = 0;
      }

      v32 = [v30 alloc];
      data = [protobufCopy data];
      v34 = [v32 initWithData:data];

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
        if (expectsPeerResponse)
        {
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1000838DC;
          v42[3] = &unk_10050F998;
          v43 = outgoingResponseIdentifier;
          selfCopy2 = self;
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
        v48 = protobufCopy;
        v49 = 2112;
        *v50 = contextCopy;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Tried to handle protobuf but couldn't find class or had no delegate %@ %@", buf, 0x20u);
      }

      dCopy = v40;
    }

    else
    {
      v31 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v46 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]";
        v47 = 2112;
        v48 = protobufCopy;
        v49 = 2112;
        *v50 = contextCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Don't know how to handle protobuf %@ %@", buf, 0x20u);
      }

      if (expectsPeerResponse)
      {
        [(ADPeerConnection *)self _sendResponse:0 forRequestId:outgoingResponseIdentifier];
      }
    }
  }
}

- (id)_wrappedSendFailureError:(id)error
{
  errorCopy = error;
  v4 = [NSError alloc];
  v5 = v4;
  if (errorCopy)
  {
    v9 = NSUnderlyingErrorKey;
    v10 = errorCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [v5 initWithDomain:@"ADRemoteConnectionErrorDomain" code:3 userInfo:v6];
  }

  else
  {
    v7 = [v4 initWithDomain:@"ADRemoteConnectionErrorDomain" code:3 userInfo:0];
  }

  return v7;
}

- (void)_invokeCompletionForIdentifier:(id)identifier response:(id)response error:(id)error
{
  identifierCopy = identifier;
  responseCopy = response;
  errorCopy = error;
  v10 = [(NSMutableDictionary *)self->_completions objectForKey:identifierCopy];
  if (errorCopy || ![responseCopy isResponse])
  {
    v13 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = objc_alloc([(NSMutableDictionary *)self->_responseClasses objectForKey:identifierCopy]);
  data = [responseCopy data];
  v13 = [v11 initWithData:data];

  if (v10)
  {
LABEL_6:
    (v10)[2](v10, v13, errorCopy);
  }

LABEL_7:
  [(NSMutableDictionary *)self->_completions removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_responseClasses removeObjectForKey:identifierCopy];
}

- (void)_sendResponse:(id)response forRequestId:(id)id
{
  responseCopy = response;
  idCopy = id;
  if (idCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083D50;
    block[3] = &unk_10051DB68;
    v11 = responseCopy;
    v12 = idCopy;
    selfCopy = self;
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
      v17 = responseCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Ignoring response with no requestId %@", buf, 0x16u);
    }
  }
}

- (void)setDelegate:(id)delegate forRequestTypes:(void *)types
{
  delegateCopy = delegate;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083FB8;
  block[3] = &unk_10051E128;
  block[4] = self;
  v10 = delegateCopy;
  typesCopy = types;
  v8 = delegateCopy;
  dispatch_async(queue, block);
}

- (void)_sendRequest:(id)request responseClass:(Class)class fireAndForget:(BOOL)forget timeout:(double)timeout overrideRequireConnectedPeer:(BOOL)peer to:(BOOL)to allowCloud:(BOOL)cloud completion:(id)self0
{
  requestCopy = request;
  completionCopy = completion;
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
  peerCopy = peer;
  toCopy = to;
  v27 = requestCopy;
  v28 = completionCopy;
  v26[4] = self;
  v31 = v21;
  forgetCopy = forget;
  timeoutCopy = timeout;
  cloudCopy = cloud;
  classCopy = class;
  v24 = requestCopy;
  v25 = completionCopy;
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
  accounts = [(IDSService *)self->_idsService accounts];
  anyObject = [accounts anyObject];

  return anyObject;
}

- (BOOL)_hasConnectedPeer
{
  _pairedDevice = [(ADPeerConnection *)self _pairedDevice];
  isConnected = [_pairedDevice isConnected];

  return isConnected;
}

- (BOOL)deviceIsNearby:(id *)nearby
{
  _pairedDevice = [(ADPeerConnection *)self _pairedDevice];
  v5 = _pairedDevice;
  if (nearby)
  {
    *nearby = [_pairedDevice uniqueIDOverride];
  }

  isNearby = [v5 isNearby];

  return isNearby;
}

- (id)peerBuildVersion
{
  _pairedDevice = [(ADPeerConnection *)self _pairedDevice];
  productBuildVersion = [_pairedDevice productBuildVersion];

  return productBuildVersion;
}

- (id)peerType
{
  _pairedDevice = [(ADPeerConnection *)self _pairedDevice];
  modelIdentifier = [_pairedDevice modelIdentifier];

  return modelIdentifier;
}

- (BOOL)hasPeer
{
  _account = [(ADPeerConnection *)self _account];
  v3 = _account != 0;

  return v3;
}

- (ADPeerConnection)initWithServiceIdentifier:(id)identifier forRequests:(void *)requests requireConnectedPeer:(BOOL)peer
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (requests)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ADPeerConnection.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (requests)
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
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

    v15 = dispatch_queue_create("ADRemotePeerConnection", v14);
    queue = v10->_queue;
    v10->_queue = v15;

    v10->_requestMapFunc = requests;
    v10->_requireConnectedPeer = peer;
  }

  return v10;
}

@end
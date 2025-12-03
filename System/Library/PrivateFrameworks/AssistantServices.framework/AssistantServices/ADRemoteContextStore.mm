@interface ADRemoteContextStore
- (ADRemoteContextStore)initWithRapportLink:(id)link queue:(id)queue;
- (id)_contextLinkMessageOptions;
- (id)_initWithRapportLink:(id)link queue:(id)queue deviceCircleManager:(id)manager;
- (void)_activateOnDemandRapportConnectionAndFetchContext:(id)context;
- (void)_dumpStateForReason:(id)reason;
- (void)_enumerateDeviceContextsUsingBlock:(id)block;
- (void)_fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:(id)info completion:(id)completion;
- (void)_fetchContextFromCollectorThroughOnDemandConnection:(id)connection;
- (void)_fetchContextFromDeviceWithPeerInfo:(id)info completion:(id)completion;
- (void)_setContextCollectionAllowed:(BOOL)allowed;
- (void)fetchContextSnapshotFromAllDevicesWithCompletion:(id)completion;
- (void)fetchContextSnapshotFromDevicesWithPeerInfo:(id)info completion:(id)completion;
- (void)getContextSnapshotIncludingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys completion:(id)completion;
- (void)getSerializedDeviceContextSnapshotIncludingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys completion:(id)completion;
- (void)rapportLink:(id)link didLoseDevice:(id)device;
- (void)setDeviceContext:(id)context includedKeys:(id)keys excludedKeys:(id)excludedKeys forDeviceWithPeerInfo:(id)info completion:(id)completion;
- (void)setDeviceContext:(id)context withIncludedKeys:(id)keys excludedKeys:(id)excludedKeys forDeviceWithIDSDeviceUniqueIdentifier:(id)identifier withCompletion:(id)completion;
- (void)startCollectingContext;
- (void)stopCollectingContext;
- (void)updateRapportLink:(id)link;
@end

@implementation ADRemoteContextStore

- (id)_contextLinkMessageOptions
{
  v4 = RPOptionStatusFlags;
  v5 = &off_1005339E0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_dumpStateForReason:(id)reason
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017E15C;
  v5[3] = &unk_100513F18;
  reasonCopy = reason;
  v4 = reasonCopy;
  [(ADRemoteContextStore *)self _enumerateDeviceContextsUsingBlock:v5];
}

- (void)rapportLink:(id)link didLoseDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017E2D4;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(queue, v8);
}

- (void)getSerializedDeviceContextSnapshotIncludingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys completion:(id)completion
{
  keysCopy = keys;
  mandatoryKeysCopy = mandatoryKeys;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10017E524;
    v12[3] = &unk_10051E0D8;
    v13 = keysCopy;
    v16 = completionCopy;
    selfCopy = self;
    v15 = mandatoryKeysCopy;
    dispatch_async(queue, v12);
  }
}

- (void)setDeviceContext:(id)context includedKeys:(id)keys excludedKeys:(id)excludedKeys forDeviceWithPeerInfo:(id)info completion:(id)completion
{
  contextCopy = context;
  keysCopy = keys;
  excludedKeysCopy = excludedKeys;
  infoCopy = info;
  completionCopy = completion;
  v17 = completionCopy;
  if (infoCopy)
  {
    queue = self->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10017E9E4;
    v19[3] = &unk_1005183C8;
    v20 = contextCopy;
    v21 = infoCopy;
    v22 = keysCopy;
    v23 = excludedKeysCopy;
    selfCopy = self;
    v25 = v17;
    dispatch_async(queue, v19);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

- (void)setDeviceContext:(id)context withIncludedKeys:(id)keys excludedKeys:(id)excludedKeys forDeviceWithIDSDeviceUniqueIdentifier:(id)identifier withCompletion:(id)completion
{
  contextCopy = context;
  keysCopy = keys;
  excludedKeysCopy = excludedKeys;
  identifierCopy = identifier;
  completionCopy = completion;
  v16 = completionCopy;
  if (identifierCopy)
  {
    v17 = sub_100188240(identifierCopy);
    [(ADRemoteContextStore *)self setDeviceContext:contextCopy includedKeys:keysCopy excludedKeys:excludedKeysCopy forDeviceWithPeerInfo:v17 completion:v16];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

- (void)updateRapportLink:(id)link
{
  linkCopy = link;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017EDE0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = linkCopy;
  v6 = linkCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[ADRemoteContextStore _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:completion:]";
      v15 = 2112;
      v16 = infoCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Force fetching from devices through collector: %@", buf, 0x16u);
    }

    deviceCircleManager = self->_deviceCircleManager;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10017EF88;
    v10[3] = &unk_100514EF8;
    v10[4] = self;
    v11 = infoCopy;
    v12 = completionCopy;
    [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v10];
  }
}

- (void)_fetchContextFromDeviceWithPeerInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "[ADRemoteContextStore _fetchContextFromDeviceWithPeerInfo:completion:]";
    v25 = 2112;
    v26 = infoCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal Force fetching context directly from %@", buf, 0x16u);
  }

  rapportLink = self->_rapportLink;
  v21 = @"prefers_assistant_identifiers";
  v22 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  _contextLinkMessageOptions = [(ADRemoteContextStore *)self _contextLinkMessageOptions];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10017FB4C;
  v18 = &unk_100514DE0;
  v19 = infoCopy;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = infoCopy;
  [(ADRapportLink *)rapportLink sendRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"agg_context_fetch" messagePayload:v10 toPeer:v13 options:_contextLinkMessageOptions completion:&v15];

  v14 = [AFAnalytics sharedAnalytics:v15];
  [v14 logEventWithType:4585 context:0];
}

- (void)_fetchContextFromCollectorThroughOnDemandConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    if (AFSupportsHALOnDemandRapportConnection())
    {
      queue = self->_queue;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10017FE98;
      v6[3] = &unk_10051E038;
      v6[4] = self;
      v7 = connectionCopy;
      dispatch_async(queue, v6);
    }

    else
    {
      (*(connectionCopy + 2))(connectionCopy, 0, 0);
    }
  }
}

- (void)_activateOnDemandRapportConnectionAndFetchContext:(id)context
{
  contextCopy = context;
  if ((AFSupportsHALOnDemandRapportConnection() & 1) == 0)
  {
LABEL_8:
    (*(contextCopy + 2))(contextCopy, 0, 0);
    goto LABEL_9;
  }

  configuration = [(ADRapportLink *)self->_rapportLink configuration];
  connectionOptions = [configuration connectionOptions];
  usesOnDemandConnection = [connectionOptions usesOnDemandConnection];

  v8 = AFSiriLogContextDaemon;
  if (usesOnDemandConnection != 2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      rapportLink = self->_rapportLink;
      *buf = 136315394;
      v15 = "[ADRemoteContextStore _activateOnDemandRapportConnectionAndFetchContext:]";
      v16 = 2112;
      v17 = rapportLink;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s #hal #on-demand rapportLink not set up to use on-demand connection: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = self->_rapportLink;
    *buf = 136315394;
    v15 = "[ADRemoteContextStore _activateOnDemandRapportConnectionAndFetchContext:]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal #on-demand about to activate link: %@", buf, 0x16u);
  }

  v10 = self->_rapportLink;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001806E0;
  v12[3] = &unk_10051DD98;
  v12[4] = self;
  v13 = contextCopy;
  [(ADRapportLink *)v10 activateWithCompletion:v12];

LABEL_9:
}

- (void)fetchContextSnapshotFromAllDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001809A8;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)fetchContextSnapshotFromDevicesWithPeerInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([infoCopy count])
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100180BD8;
      block[3] = &unk_10051E088;
      block[4] = self;
      v10 = infoCopy;
      v11 = completionCopy;
      dispatch_async(queue, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)getContextSnapshotIncludingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys completion:(id)completion
{
  keysCopy = keys;
  mandatoryKeysCopy = mandatoryKeys;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[ADRemoteContextStore getContextSnapshotIncludingKeys:excludingMandatoryKeys:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #hal", buf, 0xCu);
  }

  if (completionCopy)
  {
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001818A4;
    v13[3] = &unk_10051E0D8;
    v13[4] = self;
    v14 = keysCopy;
    v15 = mandatoryKeysCopy;
    v16 = completionCopy;
    dispatch_async(queue, v13);
  }
}

- (void)_enumerateDeviceContextsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    deviceContextMap = self->_deviceContextMap;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100181DA0;
    v7[3] = &unk_100513EC8;
    v8 = blockCopy;
    [(AFPeerMap *)deviceContextMap enumerateObjectsUsingBlock:v7];
  }
}

- (void)_setContextCollectionAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_contextCollectionAllowed != allowedCopy)
  {
    self->_contextCollectionAllowed = allowedCopy;
    if (allowedCopy)
    {
      v5 = objc_alloc_init(AFPeerMap);
      deviceContextMap = self->_deviceContextMap;
      self->_deviceContextMap = v5;

      rapportLink = self->_rapportLink;

      [(ADRapportLink *)rapportLink addListener:self];
    }

    else
    {
      v8 = self->_deviceContextMap;
      self->_deviceContextMap = 0;

      v9 = self->_rapportLink;

      [(ADRapportLink *)v9 removeListener:self];
    }
  }
}

- (void)stopCollectingContext
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100181F48;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startCollectingContext
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100182074;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_initWithRapportLink:(id)link queue:(id)queue deviceCircleManager:(id)manager
{
  linkCopy = link;
  queueCopy = queue;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = ADRemoteContextStore;
  v12 = [(ADRemoteContextStore *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rapportLink, link);
    if (queueCopy)
    {
      v14 = queueCopy;
      queue = v13->_queue;
      v13->_queue = v14;
    }

    else
    {
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);

      v18 = dispatch_queue_create("ADRemoteContextStore", v17);
      queue = v13->_queue;
      v13->_queue = v18;
    }

    objc_storeStrong(&v13->_deviceCircleManager, manager);
  }

  return v13;
}

- (ADRemoteContextStore)initWithRapportLink:(id)link queue:(id)queue
{
  queueCopy = queue;
  linkCopy = link;
  v8 = +[ADDeviceCircleManager sharedInstance];
  v9 = [(ADRemoteContextStore *)self _initWithRapportLink:linkCopy queue:queueCopy deviceCircleManager:v8];

  return v9;
}

@end
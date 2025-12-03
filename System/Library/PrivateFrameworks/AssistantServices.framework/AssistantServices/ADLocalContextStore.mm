@interface ADLocalContextStore
- (ADLocalContextStore)initWithInstanceContext:(id)context rapportLink:(id)link queue:(id)queue delegate:(id)delegate;
- (id)_contextLinkMessageOptions;
- (id)_deviceContextToVendForPrivacyClass:(int64_t)class;
- (id)_initWithInstanceContext:(id)context rapportLink:(id)link queue:(id)queue delegate:(id)delegate deviceCircleManager:(id)manager;
- (id)_localContextWithPrivacyClass:(int64_t)class;
- (id)localContextWithPrivacyClass:(int64_t)class;
- (void)_didUpdateContext;
- (void)_initializeBuiltInContextProviders;
- (void)_pushContextToCollector:(id)collector forReason:(id)reason includingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys includingKeysInResponse:(id)response excludingMandatoryKeysInResponse:(id)inResponse completion:(id)completion;
- (void)_pushContextToCollectorsForReason:(id)reason completion:(id)completion;
- (void)_updateLocalPeerInfo:(id)info;
- (void)contextCollectorChangedToDevicesWithIdentifiers:(id)identifiers localDeviceIsCollector:(BOOL)collector;
- (void)donateContext:(id)context withMetadata:(id)metadata pushToRemote:(BOOL)remote;
- (void)donateSerializedContextMapByPrivacyClass:(id)class withMetadataMap:(id)map forType:(id)type pushToRemote:(BOOL)remote completion:(id)completion;
- (void)getLocalContextWithPrivacyClass:(int64_t)class completion:(id)completion;
- (void)localPeerInfoUpdatedFrom:(id)from to:(id)to;
- (void)pushContextToContextCollectorIncludingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys expectingResponseIncludingKeys:(id)includingKeys excludingMandatoryKeys:(id)excludingMandatoryKeys completion:(id)completion;
- (void)registerContextTransformer:(id)transformer forType:(id)type;
- (void)setMyriadAdvertisementContext:(id)context completion:(id)completion;
- (void)updateRapportLink:(id)link;
@end

@implementation ADLocalContextStore

- (void)_didUpdateContext
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(ADLocalContextStore *)self _localContextWithPrivacyClass:10];
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 localContextStore:self didUpdateDeviceContext:v6];
  }
}

- (void)localPeerInfoUpdatedFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2890;
  block[3] = &unk_10051DB68;
  v12 = fromCopy;
  v13 = toCopy;
  selfCopy = self;
  v9 = toCopy;
  v10 = fromCopy;
  dispatch_async(queue, block);
}

- (void)contextCollectorChangedToDevicesWithIdentifiers:(id)identifiers localDeviceIsCollector:(BOOL)collector
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2A64;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)donateSerializedContextMapByPrivacyClass:(id)class withMetadataMap:(id)map forType:(id)type pushToRemote:(BOOL)remote completion:(id)completion
{
  classCopy = class;
  mapCopy = map;
  typeCopy = type;
  completionCopy = completion;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "[ADLocalContextStore donateSerializedContextMapByPrivacyClass:withMetadataMap:forType:pushToRemote:completion:]";
    v27 = 2112;
    v28 = typeCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s #hal %@", buf, 0x16u);
    if (!typeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (typeCopy)
  {
LABEL_3:
    queue = self->_queue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001B2EA4;
    v18[3] = &unk_1005167F0;
    v19 = typeCopy;
    v20 = classCopy;
    selfCopy = self;
    v22 = mapCopy;
    remoteCopy = remote;
    v23 = completionCopy;
    dispatch_async(queue, v18);
  }

LABEL_4:
}

- (void)donateContext:(id)context withMetadata:(id)metadata pushToRemote:(BOOL)remote
{
  contextCopy = context;
  metadataCopy = metadata;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315651;
    v20 = "[ADLocalContextStore donateContext:withMetadata:pushToRemote:]";
    v21 = 2113;
    v22 = contextCopy;
    v23 = 2112;
    v24 = metadataCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal %{private}@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001B31F4;
  v14[3] = &unk_10051C958;
  v15 = metadataCopy;
  v16 = contextCopy;
  selfCopy = self;
  remoteCopy = remote;
  v12 = contextCopy;
  v13 = metadataCopy;
  dispatch_async(queue, v14);
}

- (void)registerContextTransformer:(id)transformer forType:(id)type
{
  transformerCopy = transformer;
  typeCopy = type;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B371C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = transformerCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = transformerCopy;
  dispatch_async(queue, block);
}

- (id)_deviceContextToVendForPrivacyClass:(int64_t)class
{
  if (!class || class == 50)
  {
    v5 = [(NSMutableDictionary *)self->_redactedContextByPrivacyClass objectForKey:&off_100533AB8];
    v4 = [v5 mutableCopy];
  }

  else if (class == 10)
  {
    v4 = [(AFMutableDeviceContext *)self->_localContext mutableCopy];
  }

  else
  {
    v4 = 0;
  }

  v6 = +[NSUUID UUID];
  [v4 setIdentifier:v6];

  [v4 setPrivacyClass:class];
  v7 = [v4 copy];

  return v7;
}

- (void)_pushContextToCollector:(id)collector forReason:(id)reason includingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys includingKeysInResponse:(id)response excludingMandatoryKeysInResponse:(id)inResponse completion:(id)completion
{
  collectorCopy = collector;
  reasonCopy = reason;
  keysCopy = keys;
  mandatoryKeysCopy = mandatoryKeys;
  responseCopy = response;
  inResponseCopy = inResponse;
  completionCopy = completion;
  if ((AFSupportsHALContextDonation() & 1) == 0)
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]";
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s #hal context donation not supported on this platform", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_23;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_23;
    }

    v30 = 13;
LABEL_21:
    v28 = [AFError errorWithCode:v30];
    completionCopy[2](completionCopy, 0, v28);
LABEL_22:

    goto LABEL_23;
  }

  v22 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v22 assistantIsEnabled];

  if (assistantIsEnabled)
  {
    dispatch_assert_queue_V2(self->_queue);
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v36 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]";
      v37 = 2112;
      v38 = reasonCopy;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s #hal reason: %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(NSMutableDictionary);
    v26 = v25;
    if (collectorCopy)
    {
      [v25 addEntriesFromDictionary:collectorCopy];
    }

    [v26 setObject:keysCopy forKey:@"included_context_types_in_request"];
    if ([mandatoryKeysCopy count])
    {
      [v26 setObject:mandatoryKeysCopy forKey:@"excluded_context_keys_in_request"];
    }

    if ([responseCopy count])
    {
      [v26 setObject:responseCopy forKey:@"included_context_types_in_response"];
    }

    if ([inResponseCopy count])
    {
      [v26 setObject:inResponseCopy forKey:@"excluded_context_keys_in_response"];
    }

    [v26 setObject:&__kCFBooleanTrue forKey:@"prefers_assistant_identifiers"];
    deviceCircleManager = self->_deviceCircleManager;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001B3BA4;
    v32[3] = &unk_100514EF8;
    v33 = v26;
    v34 = completionCopy;
    v32[4] = self;
    v28 = v26;
    [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v32];

    goto LABEL_22;
  }

  v31 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s #hal skip pushing context to remote because Siri is disabled on this device", buf, 0xCu);
  }

  if (completionCopy)
  {
    v30 = 18;
    goto LABEL_21;
  }

LABEL_23:
}

- (id)_contextLinkMessageOptions
{
  v4 = RPOptionStatusFlags;
  v5 = &off_100533AD0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_pushContextToCollectorsForReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  v8 = [(ADLocalContextStore *)self _deviceContextToVendForPrivacyClass:50];
  serializedBackingStore = [v8 serializedBackingStore];
  v11 = AFDeviceContextKeyAll;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(ADLocalContextStore *)self _pushContextToCollector:serializedBackingStore forReason:reasonCopy includingKeys:v10 excludingMandatoryKeys:0 includingKeysInResponse:0 excludingMandatoryKeysInResponse:0 completion:completionCopy];
}

- (void)_updateLocalPeerInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[ADLocalContextStore _updateLocalPeerInfo:]";
    v18 = 2112;
    v19 = infoCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  [(AFMutableDeviceContext *)self->_localContext setDeviceInfo:infoCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_redactedContextByPrivacyClass allValues];
  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10) setDeviceInfo:infoCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(ADLocalContextStore *)self _didUpdateContext];
}

- (void)_initializeBuiltInContextProviders
{
  if (!self->_builtInProviders)
  {
    v13 = [[ADAlarmContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext];
    v4 = [[ADTimerContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext];
    v5 = [[ADMediaPlaybackContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext queue:self->_queue];
    v6 = [[ADHomeAnnouncementContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext];
    v7 = [[ADMultiUserStateContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext];
    v8 = [[ADCallStateContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext];
    v9 = [[ADSiriClientStateContextProvider alloc] initWithDonationService:self instanceContext:self->_instanceContext queue:self->_queue];
    v10 = [NSMutableArray arrayWithObjects:v13, v4, v5, v6, v7, v8, v9, 0];
    if (AFIsATV())
    {
      v11 = [[ADSystemStateContextProvider alloc] initWithDonationService:self];
      [(NSArray *)v10 addObject:v11];
    }

    builtInProviders = self->_builtInProviders;
    self->_builtInProviders = v10;
  }
}

- (void)pushContextToContextCollectorIncludingKeys:(id)keys excludingMandatoryKeys:(id)mandatoryKeys expectingResponseIncludingKeys:(id)includingKeys excludingMandatoryKeys:(id)excludingMandatoryKeys completion:(id)completion
{
  keysCopy = keys;
  mandatoryKeysCopy = mandatoryKeys;
  includingKeysCopy = includingKeys;
  excludingMandatoryKeysCopy = excludingMandatoryKeys;
  completionCopy = completion;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001B4C04;
  v23[3] = &unk_1005183C8;
  v24 = keysCopy;
  selfCopy = self;
  v26 = mandatoryKeysCopy;
  v27 = includingKeysCopy;
  v28 = excludingMandatoryKeysCopy;
  v29 = completionCopy;
  v18 = excludingMandatoryKeysCopy;
  v19 = includingKeysCopy;
  v20 = mandatoryKeysCopy;
  v21 = completionCopy;
  v22 = keysCopy;
  dispatch_async(queue, v23);
}

- (void)updateRapportLink:(id)link
{
  linkCopy = link;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B4E70;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = linkCopy;
  v6 = linkCopy;
  dispatch_async(queue, v7);
}

- (id)_localContextWithPrivacyClass:(int64_t)class
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = v5;
    v10 = AFDeviceContextPrivacyClassGetStringDescription();
    v11 = 136315394;
    v12 = "[ADLocalContextStore _localContextWithPrivacyClass:]";
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v11, 0x16u);
  }

  v6 = [(ADLocalContextStore *)self _deviceContextToVendForPrivacyClass:class];
  if (([v6 isValid] & 1) == 0)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADLocalContextStore _localContextWithPrivacyClass:]";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #hal Invalid local device context %@", &v11, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)localContextWithPrivacyClass:(int64_t)class
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001B405C;
  v11 = sub_1001B406C;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B513C;
  block[3] = &unk_100514E58;
  block[4] = self;
  block[5] = &v7;
  block[6] = class;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)getLocalContextWithPrivacyClass:(int64_t)class completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B5238;
    block[3] = &unk_10051BFA8;
    block[4] = self;
    v10 = completionCopy;
    classCopy = class;
    dispatch_async(queue, block);
  }
}

- (id)_initWithInstanceContext:(id)context rapportLink:(id)link queue:(id)queue delegate:(id)delegate deviceCircleManager:(id)manager
{
  contextCopy = context;
  linkCopy = link;
  queueCopy = queue;
  delegateCopy = delegate;
  managerCopy = manager;
  v37.receiver = self;
  v37.super_class = ADLocalContextStore;
  v17 = [(ADLocalContextStore *)&v37 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, queue);
    if (contextCopy)
    {
      v19 = contextCopy;
    }

    else
    {
      v19 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v18->_instanceContext;
    v18->_instanceContext = v19;

    objc_storeWeak(&v18->_delegate, delegateCopy);
    objc_storeStrong(&v18->_deviceCircleManager, manager);
    v21 = objc_alloc_init(AFMutableDeviceContext);
    localContext = v18->_localContext;
    v18->_localContext = v21;

    [(AFMutableDeviceContext *)v18->_localContext setFromLocalDevice:1];
    v23 = objc_alloc_init(NSMutableDictionary);
    redactedContextByPrivacyClass = v18->_redactedContextByPrivacyClass;
    v18->_redactedContextByPrivacyClass = v23;

    v25 = v18->_redactedContextByPrivacyClass;
    v26 = objc_alloc_init(AFMutableDeviceContext);
    [(NSMutableDictionary *)v25 setObject:v26 forKey:&off_100533AB8];

    v27 = +[NSMapTable strongToWeakObjectsMapTable];
    contextTransformersByType = v18->_contextTransformersByType;
    v18->_contextTransformersByType = v27;

    queue = v18->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B550C;
    block[3] = &unk_10051DFE8;
    v30 = v18;
    v36 = v30;
    dispatch_async(queue, block);
    objc_storeStrong(v30 + 5, link);
    [v30[5] addListener:v30];
    [(ADDeviceCircleManager *)v18->_deviceCircleManager addListener:v30];
    v31 = v18->_queue;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001B5568;
    v33[3] = &unk_10051DFE8;
    v34 = v30;
    dispatch_async(v31, v33);
  }

  return v18;
}

- (ADLocalContextStore)initWithInstanceContext:(id)context rapportLink:(id)link queue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  queueCopy = queue;
  linkCopy = link;
  contextCopy = context;
  v14 = +[ADDeviceCircleManager sharedInstance];
  v15 = [(ADLocalContextStore *)self _initWithInstanceContext:contextCopy rapportLink:linkCopy queue:queueCopy delegate:delegateCopy deviceCircleManager:v14];

  return v15;
}

- (void)setMyriadAdvertisementContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5768;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

@end
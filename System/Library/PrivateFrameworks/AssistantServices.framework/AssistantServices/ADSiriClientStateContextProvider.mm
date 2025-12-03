@interface ADSiriClientStateContextProvider
- (ADSiriClientStateContextProvider)initWithDonationService:(id)service instanceContext:(id)context queue:(id)queue;
- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
@end

@implementation ADSiriClientStateContextProvider

- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion
{
  v6 = *(completion + 2);
  if (policy == 10)
  {
    v6(completion, snapshot, metadata);
  }

  else
  {
    (v6)(completion, 0, 0, metadata);
  }
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[ADSiriClientStateContextProvider notifyObserver:didChangeStateFrom:to:]";
    v19 = 2048;
    fromCopy = from;
    v21 = 2048;
    toCopy = to;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s AFSiriClientState changed from %llu to %llu", &v17, 0x20u);
  }

  v9 = +[NSDate now];
  v10 = [[AFDeviceContextHistoryConfiguration alloc] initWithKeepsHistory:1 historyBufferSize:3];
  v11 = [AFDeviceContextMetadata alloc];
  v12 = AFDeviceContextKeySiriClientState;
  v13 = [NSDate dateWithTimeInterval:v9 sinceDate:60.0];
  v14 = [v11 initWithType:v12 deliveryDate:v9 expirationDate:v13 redactedKeyPaths:0 historyConfiguration:v10];

  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  v16 = [NSNumber numberWithUnsignedLongLong:to];
  [WeakRetained donateContext:v16 withMetadata:v14 pushToRemote:0];
}

- (ADSiriClientStateContextProvider)initWithDonationService:(id)service instanceContext:(id)context queue:(id)queue
{
  serviceCopy = service;
  contextCopy = context;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = ADSiriClientStateContextProvider;
  v11 = [(ADSiriClientStateContextProvider *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_donationService, serviceCopy);
    if (contextCopy)
    {
      v13 = contextCopy;
    }

    else
    {
      v13 = +[AFInstanceContext currentContext];
    }

    instanceContext = v12->_instanceContext;
    v12->_instanceContext = v13;

    v15 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
    v16 = AFNotifyGetEffectiveNotificationName();

    v17 = [[AFNotifyObserver alloc] initWithName:v16 options:1 queue:queueCopy delegate:v12];
    observer = v12->_observer;
    v12->_observer = v17;

    WeakRetained = objc_loadWeakRetained(&v12->_donationService);
    [WeakRetained registerContextTransformer:v12 forType:AFDeviceContextKeySiriClientState];
  }

  return v12;
}

@end
@interface ADCallStateContextProvider
- (ADCallStateContextProvider)initWithDonationService:(id)service instanceContext:(id)context;
- (void)_donateCallStateContextWithSnapshot:(id)snapshot completion:(id)completion;
- (void)callObserver:(id)observer callStateDidChangeFrom:(unint64_t)from to:(unint64_t)to isDropInCallDidChangeTo:(BOOL)changeTo;
- (void)callObserver:(id)observer onSpeakerDidChange:(BOOL)change;
@end

@implementation ADCallStateContextProvider

- (void)_donateCallStateContextWithSnapshot:(id)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  v8 = +[NSDate date];
  v9 = [v8 dateByAddingTimeInterval:7200.0];
  v10 = [AFDeviceContextMetadata alloc];
  v11 = [v10 initWithType:AFDeviceContextKeyCallState deliveryDate:v8 expirationDate:v9 redactedKeyPaths:0 historyConfiguration:0];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    currentState = self->_currentState;
    log = v12;
    [(AFCallStateSnapshot *)currentState callState];
    v15 = AFCallStateGetNames();
    v16 = [v15 componentsJoinedByString:@"|"];
    onSpeaker = [(AFCallStateSnapshot *)self->_currentState onSpeaker];
    isDropInCall = [(AFCallStateSnapshot *)self->_currentState isDropInCall];
    *buf = 136315906;
    v26 = "[ADCallStateContextProvider _donateCallStateContextWithSnapshot:completion:]";
    v27 = 2112;
    v28 = v16;
    v29 = 1024;
    v30 = onSpeaker;
    v31 = 1024;
    v32 = isDropInCall;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #hal Previous callState: %@, onSpeaker: %d, isDropInCall: %d", buf, 0x22u);

    v12 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = v12;
    [snapshotCopy callState];
    v20 = AFCallStateGetNames();
    v21 = [v20 componentsJoinedByString:@"|"];
    onSpeaker2 = [snapshotCopy onSpeaker];
    isDropInCall2 = [snapshotCopy isDropInCall];
    *buf = 136315906;
    v26 = "[ADCallStateContextProvider _donateCallStateContextWithSnapshot:completion:]";
    v27 = 2112;
    v28 = v21;
    v29 = 1024;
    v30 = onSpeaker2;
    v31 = 1024;
    v32 = isDropInCall2;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s #hal New callState: %@, onSpeaker: %d, isDropInCall: %d", buf, 0x22u);
  }

  [(AFContextDonation *)self->_donationService donateContext:snapshotCopy withMetadata:v11 pushToRemote:0];
  v13 = self->_currentState;
  self->_currentState = snapshotCopy;

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)callObserver:(id)observer onSpeakerDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[ADCallStateContextProvider callObserver:onSpeakerDidChange:]";
    v12 = 1024;
    v13 = changeCopy;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal call onSpeaker=%d", buf, 0x12u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029BE9C;
  v8[3] = &unk_100519610;
  v8[4] = self;
  v9 = changeCopy;
  v7 = [[AFCallStateSnapshot alloc] initWithBuilder:v8];
  [(ADCallStateContextProvider *)self _donateCallStateContextWithSnapshot:v7 completion:0];
}

- (void)callObserver:(id)observer callStateDidChangeFrom:(unint64_t)from to:(unint64_t)to isDropInCallDidChangeTo:(BOOL)changeTo
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10029C10C;
  v17[3] = &unk_1005195C0;
  v17[4] = self;
  v17[5] = from;
  v9 = [[AFCallStateSnapshot alloc] initWithBuilder:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10029C18C;
  v15[3] = &unk_1005195E8;
  v15[4] = self;
  v15[5] = to;
  changeToCopy = changeTo;
  v10 = [[AFCallStateSnapshot alloc] initWithBuilder:v15];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [v9 description];
    v14 = [v10 description];
    *buf = 136315650;
    v19 = "[ADCallStateContextProvider callObserver:callStateDidChangeFrom:to:isDropInCallDidChangeTo:]";
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s #hal from = %@, to = %@", buf, 0x20u);
  }

  [(ADCallStateContextProvider *)self _donateCallStateContextWithSnapshot:v10 completion:0];
}

- (ADCallStateContextProvider)initWithDonationService:(id)service instanceContext:(id)context
{
  serviceCopy = service;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = ADCallStateContextProvider;
  v9 = [(ADCallStateContextProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_donationService, service);
    if (contextCopy)
    {
      v11 = contextCopy;
    }

    else
    {
      v11 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v10->_instanceContext;
    v10->_instanceContext = v11;

    v13 = objc_alloc_init(ADCallObserver);
    observer = v10->_observer;
    v10->_observer = v13;

    [(ADCallObserver *)v10->_observer startObservingCallStateWithDelegate:v10];
    [(AFContextDonation *)v10->_donationService registerContextTransformer:v10 forType:AFDeviceContextKeyCallState];
  }

  return v10;
}

@end
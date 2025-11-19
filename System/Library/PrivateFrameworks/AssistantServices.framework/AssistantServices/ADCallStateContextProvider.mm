@interface ADCallStateContextProvider
- (ADCallStateContextProvider)initWithDonationService:(id)a3 instanceContext:(id)a4;
- (void)_donateCallStateContextWithSnapshot:(id)a3 completion:(id)a4;
- (void)callObserver:(id)a3 callStateDidChangeFrom:(unint64_t)a4 to:(unint64_t)a5 isDropInCallDidChangeTo:(BOOL)a6;
- (void)callObserver:(id)a3 onSpeakerDidChange:(BOOL)a4;
@end

@implementation ADCallStateContextProvider

- (void)_donateCallStateContextWithSnapshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v17 = [(AFCallStateSnapshot *)self->_currentState onSpeaker];
    v18 = [(AFCallStateSnapshot *)self->_currentState isDropInCall];
    *buf = 136315906;
    v26 = "[ADCallStateContextProvider _donateCallStateContextWithSnapshot:completion:]";
    v27 = 2112;
    v28 = v16;
    v29 = 1024;
    v30 = v17;
    v31 = 1024;
    v32 = v18;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #hal Previous callState: %@, onSpeaker: %d, isDropInCall: %d", buf, 0x22u);

    v12 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = v12;
    [v6 callState];
    v20 = AFCallStateGetNames();
    v21 = [v20 componentsJoinedByString:@"|"];
    v22 = [v6 onSpeaker];
    v23 = [v6 isDropInCall];
    *buf = 136315906;
    v26 = "[ADCallStateContextProvider _donateCallStateContextWithSnapshot:completion:]";
    v27 = 2112;
    v28 = v21;
    v29 = 1024;
    v30 = v22;
    v31 = 1024;
    v32 = v23;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s #hal New callState: %@, onSpeaker: %d, isDropInCall: %d", buf, 0x22u);
  }

  [(AFContextDonation *)self->_donationService donateContext:v6 withMetadata:v11 pushToRemote:0];
  v13 = self->_currentState;
  self->_currentState = v6;

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)callObserver:(id)a3 onSpeakerDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[ADCallStateContextProvider callObserver:onSpeakerDidChange:]";
    v12 = 1024;
    v13 = v4;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal call onSpeaker=%d", buf, 0x12u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029BE9C;
  v8[3] = &unk_100519610;
  v8[4] = self;
  v9 = v4;
  v7 = [[AFCallStateSnapshot alloc] initWithBuilder:v8];
  [(ADCallStateContextProvider *)self _donateCallStateContextWithSnapshot:v7 completion:0];
}

- (void)callObserver:(id)a3 callStateDidChangeFrom:(unint64_t)a4 to:(unint64_t)a5 isDropInCallDidChangeTo:(BOOL)a6
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10029C10C;
  v17[3] = &unk_1005195C0;
  v17[4] = self;
  v17[5] = a4;
  v9 = [[AFCallStateSnapshot alloc] initWithBuilder:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10029C18C;
  v15[3] = &unk_1005195E8;
  v15[4] = self;
  v15[5] = a5;
  v16 = a6;
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

- (ADCallStateContextProvider)initWithDonationService:(id)a3 instanceContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ADCallStateContextProvider;
  v9 = [(ADCallStateContextProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_donationService, a3);
    if (v8)
    {
      v11 = v8;
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
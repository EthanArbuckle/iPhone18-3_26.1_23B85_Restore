@interface ADSystemStateContextProvider
- (ADSystemStateContextProvider)initWithDonationService:(id)service;
- (void)_donateSystemStateContextWithSnapshot:(id)snapshot;
- (void)_handleSleepStateChangedToState:(int64_t)state fromState:(int64_t)fromState;
- (void)pineBoardSystemStateObserver:(id)observer pineBoardStateDidChangeFrom:(int64_t)from to:(int64_t)to;
@end

@implementation ADSystemStateContextProvider

- (void)pineBoardSystemStateObserver:(id)observer pineBoardStateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if ((to - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1003F04D8[to - 1];
  }

  if ((from - 1) > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1003F04D8[from - 1];
  }

  [(ADSystemStateContextProvider *)self _handleSleepStateChangedToState:v5 fromState:v6];
}

- (void)_donateSystemStateContextWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9 = +[NSDate date];
  v5 = [v9 dateByAddingTimeInterval:86400.0];
  v6 = [AFDeviceContextMetadata alloc];
  v7 = [v6 initWithType:AFDeviceContextKeySystemState deliveryDate:v9 expirationDate:v5 redactedKeyPaths:0 historyConfiguration:0];
  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:snapshotCopy withMetadata:v7 pushToRemote:1];
}

- (void)_handleSleepStateChangedToState:(int64_t)state fromState:(int64_t)fromState
{
  if (state != fromState)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = v6;
      v9 = AFSleepStateGetName();
      v10 = AFSleepStateGetName();
      v11 = 136315650;
      v12 = "[ADSystemStateContextProvider _handleSleepStateChangedToState:fromState:]";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal to: %@, from: %@", &v11, 0x20u);
    }

    v7 = [[AFSystemStateSnapshot alloc] initWithSleepState:state];
    [(ADSystemStateContextProvider *)self _donateSystemStateContextWithSnapshot:v7];
  }
}

- (ADSystemStateContextProvider)initWithDonationService:(id)service
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = ADSystemStateContextProvider;
  v5 = [(ADSystemStateContextProvider *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_donationService, serviceCopy);
    v7 = +[AFPineBoardSystemStateObserver defaultObserver];
    [v7 addListener:v6];

    v8 = +[AFPineBoardSystemStateObserver defaultObserver];
    pineBoardSystemState = [v8 pineBoardSystemState];
    if ((pineBoardSystemState - 1) > 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1003F04D8[(pineBoardSystemState - 1)];
    }

    [(ADSystemStateContextProvider *)v6 _handleSleepStateChangedToState:v10 fromState:0];
    WeakRetained = objc_loadWeakRetained(&v6->_donationService);
    [WeakRetained registerContextTransformer:v6 forType:AFDeviceContextKeySystemState];
  }

  return v6;
}

@end
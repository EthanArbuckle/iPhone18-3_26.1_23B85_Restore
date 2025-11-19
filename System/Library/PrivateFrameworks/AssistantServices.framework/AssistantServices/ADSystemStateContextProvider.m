@interface ADSystemStateContextProvider
- (ADSystemStateContextProvider)initWithDonationService:(id)a3;
- (void)_donateSystemStateContextWithSnapshot:(id)a3;
- (void)_handleSleepStateChangedToState:(int64_t)a3 fromState:(int64_t)a4;
- (void)pineBoardSystemStateObserver:(id)a3 pineBoardStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
@end

@implementation ADSystemStateContextProvider

- (void)pineBoardSystemStateObserver:(id)a3 pineBoardStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  if ((a5 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1003F04D8[a5 - 1];
  }

  if ((a4 - 1) > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1003F04D8[a4 - 1];
  }

  [(ADSystemStateContextProvider *)self _handleSleepStateChangedToState:v5 fromState:v6];
}

- (void)_donateSystemStateContextWithSnapshot:(id)a3
{
  v4 = a3;
  v9 = +[NSDate date];
  v5 = [v9 dateByAddingTimeInterval:86400.0];
  v6 = [AFDeviceContextMetadata alloc];
  v7 = [v6 initWithType:AFDeviceContextKeySystemState deliveryDate:v9 expirationDate:v5 redactedKeyPaths:0 historyConfiguration:0];
  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:v4 withMetadata:v7 pushToRemote:1];
}

- (void)_handleSleepStateChangedToState:(int64_t)a3 fromState:(int64_t)a4
{
  if (a3 != a4)
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

    v7 = [[AFSystemStateSnapshot alloc] initWithSleepState:a3];
    [(ADSystemStateContextProvider *)self _donateSystemStateContextWithSnapshot:v7];
  }
}

- (ADSystemStateContextProvider)initWithDonationService:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ADSystemStateContextProvider;
  v5 = [(ADSystemStateContextProvider *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_donationService, v4);
    v7 = +[AFPineBoardSystemStateObserver defaultObserver];
    [v7 addListener:v6];

    v8 = +[AFPineBoardSystemStateObserver defaultObserver];
    v9 = [v8 pineBoardSystemState];
    if ((v9 - 1) > 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1003F04D8[(v9 - 1)];
    }

    [(ADSystemStateContextProvider *)v6 _handleSleepStateChangedToState:v10 fromState:0];
    WeakRetained = objc_loadWeakRetained(&v6->_donationService);
    [WeakRetained registerContextTransformer:v6 forType:AFDeviceContextKeySystemState];
  }

  return v6;
}

@end
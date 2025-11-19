@interface ADSiriCapabilitiesStore
+ (id)sharedStore;
- (ADAssetManager)assetManager;
- (ADSiriCapabilitiesStore)initWithDispatchQueue:(id)a3 preferences:(id)a4 assetManager:(id)a5;
- (BOOL)siriSystemAssistantExperienceEnabled;
- (void)dealloc;
- (void)emitAIR;
- (void)refreshOrchestrationMode;
- (void)siriEnabledStatusDidChange:(BOOL)a3;
- (void)updateCapabilitiesWithAssetManager:(id)a3;
@end

@implementation ADSiriCapabilitiesStore

- (void)refreshOrchestrationMode
{
  v4 = 0u;
  v5 = 0u;
  [(ADSiriCapabilitiesStore *)self currentState];
  *&v4 = 1;
  v3[0] = v4;
  v3[1] = 0u;
  [(ADSiriCapabilitiesStore *)self setCurrentState:v3];
}

- (ADAssetManager)assetManager
{
  WeakRetained = objc_loadWeakRetained(&self->_assetManager);

  return WeakRetained;
}

- (BOOL)siriSystemAssistantExperienceEnabled
{
  v8 = 0u;
  [(ADSiriCapabilitiesStore *)self currentState:0];
  v2 = BYTE8(v8) & 0x3F;
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v6 = [NSNumber numberWithBool:v2 == 63];
    v7 = [NSNumber numberWithUnsignedInteger:*(&v8 + 1)];
    *buf = 136315650;
    v10 = "[ADSiriCapabilitiesStore siriSystemAssistantExperienceEnabled]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Status from cache: %@. Capabilities: %@", buf, 0x20u);
  }

  return v2 == 63;
}

- (void)siriEnabledStatusDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    v8 = [NSNumber numberWithBool:v3];
    *location = 136315394;
    *&location[4] = "[ADSiriCapabilitiesStore siriEnabledStatusDidChange:]";
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Siri enabled status changed assistantEnabled: %@", location, 0x16u);
  }

  objc_initWeak(location, self);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100174924;
  v9[3] = &unk_10051C650;
  objc_copyWeak(&v10, location);
  v9[4] = self;
  dispatch_async(dispatchQueue, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
}

- (void)updateCapabilitiesWithAssetManager:(id)a3
{
  v4 = a3;
  v5 = [(ADSiriCapabilitiesStore *)self preferences];
  v6 = [v5 languageCode];

  objc_initWeak(&location, self);
  v7 = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100174B48;
  v10[3] = &unk_100513C90;
  v8 = v7;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v12 = v9;
  [v4 fetchAssetsAvailabilityForLanguage:v9 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)emitAIR
{
  v3 = [(ADSiriCapabilitiesStore *)self preferences];
  v4 = [v3 languageCode];

  v5 = [(ADSiriCapabilitiesStore *)self preferences];
  v6 = [v5 countryCode];

  v7 = +[AFPreferences sharedPreferences];
  v8 = [v7 assistantIsEnabled];

  [(ADSiriCapabilitiesStore *)self currentState];
  if (v8)
  {
    [(ADSiriCapabilitiesStore *)self currentState];
    if ((~v23 & 0x27) != 0)
    {
      [(ADSiriCapabilitiesStore *)self currentState];
      if ((~v22 & 7) != 0)
      {
        [(ADSiriCapabilitiesStore *)self currentState];
        if ((~v21 & 7) != 0)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 4;
    }

    v10 = v24 == v9;
    v11 = (v24 != v9) << 8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 128;
  }

  v12 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v19 = v12;
    v20 = [NSNumber numberWithBool:v8];
    v15 = [NSNumber numberWithBool:v10];
    v18 = [NSNumber numberWithUnsignedInteger:v9];
    v16 = [NSNumber numberWithUnsignedInteger:v24];
    v17 = [NSNumber numberWithUnsignedInteger:v11];
    *buf = 136316418;
    v26 = "[ADSiriCapabilitiesStore emitAIR]";
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s Emitting AIR event isAssistantEnabled: %@, isSiriAvailable: %@, orchestrationModeDesired: %@, orchestrationModeChosen: %@, unavailabilityReasons: %@", buf, 0x3Eu);
  }

  v13 = +[ADCommandCenter sharedCommandCenter];
  v14 = [v13 _requestDispatcherService];
  [v14 emitAIREventForSiriAvailabiltyWithLocale:v4 countryCode:v6 isAvailable:v10 orchestrationMode:v9 unavailabilityReasons:v11];
}

- (ADSiriCapabilitiesStore)initWithDispatchQueue:(id)a3 preferences:(id)a4 assetManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = ADSiriCapabilitiesStore;
  v12 = [(ADSiriCapabilitiesStore *)&v20 init];
  v13 = v12;
  if (v12)
  {
    *(v12 + 56) = 0u;
    *(v12 + 40) = 0u;
    objc_storeStrong(v12 + 1, a3);
    objc_storeStrong(&v13->_preferences, a4);
    objc_storeWeak(&v13->_assetManager, v11);
    v14 = [[ADSiriCapabilitiesStoreAssetsAvailabilityObserver alloc] initWithSiriConfiguration:v13];
    [v11 addAvailabilityObserver:v14];
    v15 = [[ADWeakWrapper alloc] initWithWrapped:v13];
    [(ADSiriCapabilitiesStore *)v13 setWeakWrapper:v15];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v15, sub_100175D6C, @"com.apple.gms.availability.notification", 0, 0);

    v17 = [(ADSiriCapabilitiesStore *)v13 preferences];
    v18 = [v17 languageCode];

    sub_100174C68(v13, &__NSDictionary0__struct, v18);
    [(ADSiriCapabilitiesStore *)v13 updateCapabilitiesWithAssetManager:v11];
  }

  return v13;
}

- (void)dealloc
{
  if (self)
  {
    v3 = [(ADSiriCapabilitiesStore *)self weakWrapper];
    [(ADSiriCapabilitiesStore *)self setWeakWrapper:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v3, 0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100176128;
    block[3] = &unk_10051DFE8;
    v8 = v3;
    v5 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  v6.receiver = self;
  v6.super_class = ADSiriCapabilitiesStore;
  [(ADSiriCapabilitiesStore *)&v6 dealloc];
}

+ (id)sharedStore
{
  if (qword_100590398 != -1)
  {
    dispatch_once(&qword_100590398, &stru_100513C68);
  }

  v3 = qword_1005903A0;

  return v3;
}

@end
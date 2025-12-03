@interface ADSiriCapabilitiesStore
+ (id)sharedStore;
- (ADAssetManager)assetManager;
- (ADSiriCapabilitiesStore)initWithDispatchQueue:(id)queue preferences:(id)preferences assetManager:(id)manager;
- (BOOL)siriSystemAssistantExperienceEnabled;
- (void)dealloc;
- (void)emitAIR;
- (void)refreshOrchestrationMode;
- (void)siriEnabledStatusDidChange:(BOOL)change;
- (void)updateCapabilitiesWithAssetManager:(id)manager;
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

- (void)siriEnabledStatusDidChange:(BOOL)change
{
  changeCopy = change;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    v8 = [NSNumber numberWithBool:changeCopy];
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

- (void)updateCapabilitiesWithAssetManager:(id)manager
{
  managerCopy = manager;
  preferences = [(ADSiriCapabilitiesStore *)self preferences];
  languageCode = [preferences languageCode];

  objc_initWeak(&location, self);
  v7 = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100174B48;
  v10[3] = &unk_100513C90;
  v8 = v7;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = languageCode;
  v12 = v9;
  [managerCopy fetchAssetsAvailabilityForLanguage:v9 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)emitAIR
{
  preferences = [(ADSiriCapabilitiesStore *)self preferences];
  languageCode = [preferences languageCode];

  preferences2 = [(ADSiriCapabilitiesStore *)self preferences];
  countryCode = [preferences2 countryCode];

  v7 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v7 assistantIsEnabled];

  [(ADSiriCapabilitiesStore *)self currentState];
  if (assistantIsEnabled)
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
    v20 = [NSNumber numberWithBool:assistantIsEnabled];
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
  _requestDispatcherService = [v13 _requestDispatcherService];
  [_requestDispatcherService emitAIREventForSiriAvailabiltyWithLocale:languageCode countryCode:countryCode isAvailable:v10 orchestrationMode:v9 unavailabilityReasons:v11];
}

- (ADSiriCapabilitiesStore)initWithDispatchQueue:(id)queue preferences:(id)preferences assetManager:(id)manager
{
  queueCopy = queue;
  preferencesCopy = preferences;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = ADSiriCapabilitiesStore;
  v12 = [(ADSiriCapabilitiesStore *)&v20 init];
  v13 = v12;
  if (v12)
  {
    *(v12 + 56) = 0u;
    *(v12 + 40) = 0u;
    objc_storeStrong(v12 + 1, queue);
    objc_storeStrong(&v13->_preferences, preferences);
    objc_storeWeak(&v13->_assetManager, managerCopy);
    v14 = [[ADSiriCapabilitiesStoreAssetsAvailabilityObserver alloc] initWithSiriConfiguration:v13];
    [managerCopy addAvailabilityObserver:v14];
    v15 = [[ADWeakWrapper alloc] initWithWrapped:v13];
    [(ADSiriCapabilitiesStore *)v13 setWeakWrapper:v15];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v15, sub_100175D6C, @"com.apple.gms.availability.notification", 0, 0);

    preferences = [(ADSiriCapabilitiesStore *)v13 preferences];
    languageCode = [preferences languageCode];

    sub_100174C68(v13, &__NSDictionary0__struct, languageCode);
    [(ADSiriCapabilitiesStore *)v13 updateCapabilitiesWithAssetManager:managerCopy];
  }

  return v13;
}

- (void)dealloc
{
  if (self)
  {
    weakWrapper = [(ADSiriCapabilitiesStore *)self weakWrapper];
    [(ADSiriCapabilitiesStore *)self setWeakWrapper:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, weakWrapper, 0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100176128;
    block[3] = &unk_10051DFE8;
    v8 = weakWrapper;
    v5 = weakWrapper;
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
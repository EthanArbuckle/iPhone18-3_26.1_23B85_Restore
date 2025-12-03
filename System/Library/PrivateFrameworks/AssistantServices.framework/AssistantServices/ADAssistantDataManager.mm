@interface ADAssistantDataManager
+ (id)sharedDataManager;
- (ADAssistantDataManager)init;
- (ADAssistantDataManager)initWithInstanceContext:(id)context;
- (id)_cachedAssistantData;
- (id)_cachedRestrictions;
- (id)_mcQueue;
- (id)_redactedCopyMeCards:(id)cards;
- (id)_unredactedMeCards;
- (id)unredactedAnchor;
- (void)_censorSpeechDidChange:(id)change;
- (void)_countryCodeDidChange:(id)change;
- (void)_currentLocaleDidChange:(id)change;
- (void)_fetchDictationAllowedStatus:(id)status;
- (void)_fetchDictationHIPAAMDMStatus:(id)status;
- (void)_generateAssistantData;
- (void)_locationRestrictionDidChange:(id)change;
- (void)_notifyAnnouncementEligibilityObserverVoiceAssetsDidChange;
- (void)_notifyObserversOfDictationHIPAAMDMStatus;
- (void)_notifyObserversOfSAD:(id)d;
- (void)_onMainThreadUpdateCountryCodeWithCountryConfiguration:(id)configuration completion:(id)completion;
- (void)_outputVoiceDidChange:(id)change;
- (void)_safeGenerateAssistantDataForVoiceTriggerEnabled;
- (void)_safeUpdateVoiceOverStatus;
- (void)_setAllowExplicitContent:(BOOL)content;
- (void)_setAllowExplicitContentAndCensorSpeech:(BOOL)speech;
- (void)_storeFrontDidChange:(id)change;
- (void)_systemTimeZoneDidChange:(id)change;
- (void)_updateCallCapability:(id)capability;
- (void)_updateDictationAllowedStatus;
- (void)_updateItunesStoreIdentifier:(id)identifier;
- (void)_updateRestrictions:(id)restrictions;
- (void)_updateVoice:(id)voice;
- (void)_updateVoiceOverStatus:(id)status;
- (void)_voiceAssetsUpdated:(id)updated;
- (void)addObserver:(id)observer;
- (void)addressBookManagerDidUpdateData:(id)data meCard:(id)card;
- (void)contextCollector:(id)collector didChangeDisplayScale:(double)scale;
- (void)dealloc;
- (void)didChangeTelephonyCallingSupport;
- (void)getAssistantDataWithCompletion:(id)completion;
- (void)getMeCardsWithCompletion:(id)completion;
- (void)getiTunesStoreFrontIdentifierWithCompletion:(id)completion;
- (void)localMeCardDidUpdate:(id)update;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)removeObserver:(id)observer;
- (void)requestAssistantDataUpdateHighPriority:(BOOL)priority;
- (void)setAllowExplicitContentAndCensorSpeech:(BOOL)speech;
@end

@implementation ADAssistantDataManager

+ (id)sharedDataManager
{
  if (qword_1005909A8 != -1)
  {
    dispatch_once(&qword_1005909A8, &stru_10051B728);
  }

  v3 = qword_1005909A0;

  return v3;
}

- (void)localMeCardDidUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100302F74;
  v7[3] = &unk_10051E010;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

- (void)_updateVoiceOverStatus:(id)status
{
  statusCopy = status;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADAssistantDataManager _updateVoiceOverStatus:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s VoiceOver status changed, updating assistant data", &v8, 0xCu);
  }

  v6 = _AXSVoiceOverTouchEnabled() != 0;
  v7 = self->_voiceOverIsActive != v6;
  self->_voiceOverIsActive = v6;
  statusCopy[2](statusCopy, v7);
}

- (void)_updateItunesStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_cachedStoreFrontId;
  v6 = +[ACAccountStore ams_sharedAccountStore];
  v7 = v6;
  if (!v6)
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[ADAssistantDataManager _updateItunesStoreIdentifier:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unable to get the shared instance of ACAccountStore.", &v20, 0xCu);
    }

LABEL_6:
    v12 = 0;
    if (!identifierCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ams_activeiTunesAccount = [v6 ams_activeiTunesAccount];
  ams_storefront = [ams_activeiTunesAccount ams_storefront];
  if (ams_storefront)
  {
    v10 = ams_storefront;
    goto LABEL_15;
  }

  v13 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[ADAssistantDataManager _updateItunesStoreIdentifier:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Using local identifier", &v20, 0xCu);
  }

  ams_localiTunesAccount = [v7 ams_localiTunesAccount];
  if (!ams_localiTunesAccount)
  {
    v15 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[ADAssistantDataManager _updateItunesStoreIdentifier:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to get the local iTunes Account.", &v20, 0xCu);
    }
  }

  ams_storefront2 = [ams_localiTunesAccount ams_storefront];
  if (!ams_storefront2)
  {
    v19 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[ADAssistantDataManager _updateItunesStoreIdentifier:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s No store front identifier available", &v20, 0xCu);
    }

    goto LABEL_6;
  }

  v10 = ams_storefront2;

LABEL_15:
  cachedStoreFrontId = self->_cachedStoreFrontId;
  self->_cachedStoreFrontId = v10;
  v18 = v10;

  v12 = [(NSString *)self->_cachedStoreFrontId isEqualToString:v5]^ 1;
  if (identifierCopy)
  {
LABEL_16:
    identifierCopy[2](identifierCopy, v12);
  }

LABEL_17:
}

- (void)_updateCallCapability:(id)capability
{
  capabilityCopy = capability;
  if (qword_1005909C0 != -1)
  {
    dispatch_once(&qword_1005909C0, &stru_10051B8D0);
  }

  v5 = qword_1005909C8;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003034EC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = capabilityCopy;
  v6 = capabilityCopy;
  dispatch_async(v5, v7);
}

- (void)_updateVoice:(id)voice
{
  voiceCopy = voice;
  if (sub_100004988())
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1003038C8;
    v28[3] = &unk_10051B860;
    v28[4] = self;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1003039B4;
    v25[3] = &unk_10051C6F0;
    v5 = objc_retainBlock(v28);
    v26 = v5;
    v6 = voiceCopy;
    v27 = v6;
    v7 = objc_retainBlock(v25);
    v8 = +[AFPreferences sharedPreferences];
    inProgressOutputVoice = [v8 inProgressOutputVoice];

    if (inProgressOutputVoice)
    {
      languageCode = [inProgressOutputVoice languageCode];
      name = [inProgressOutputVoice name];
      v12 = [[SiriTTSSynthesisVoice alloc] initWithLanguage:languageCode name:name];
      v13 = +[SiriTTSDaemonSession afSharedSession];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100303BAC;
      v17[3] = &unk_10051B8B0;
      v18 = inProgressOutputVoice;
      v19 = languageCode;
      v20 = name;
      v21 = v12;
      v22 = v7;
      v23 = v5;
      v24 = v6;
      v14 = v12;
      v15 = name;
      v16 = languageCode;
      [v13 getSynthesisVoiceMatching:v14 reply:v17];
    }

    else
    {
      (v7[2])(v7);
    }
  }

  else if (voiceCopy)
  {
    (*(voiceCopy + 2))(voiceCopy, 0);
  }
}

- (id)_cachedRestrictions
{
  cachedRestrictions = [(NSArray *)self->_cachedRestrictions count];
  if (cachedRestrictions)
  {
    cachedRestrictions = self->_cachedRestrictions;
  }

  return cachedRestrictions;
}

- (void)_updateRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v4 = objc_alloc_init(NSMutableArray);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 1;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1003045F4;
  v39[4] = sub_100304604;
  v40 = 0;
  v5 = dispatch_group_create();
  _mcQueue = [(ADAssistantDataManager *)self _mcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030460C;
  block[3] = &unk_10051B7E8;
  v7 = v4;
  v32 = v7;
  v33 = v48;
  v34 = v46;
  v35 = v44;
  v36 = v43;
  v37 = v42;
  v38 = v41;
  dispatch_group_async(v5, _mcQueue, block);

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  dispatch_group_enter(v5);
  v8 = +[ADCommandCenter sharedCommandCenter];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1003048C4;
  v26[3] = &unk_10051B810;
  v28 = v29;
  v9 = v5;
  v27 = v9;
  [v8 fetchLocationAuthorization:v26];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003048E0;
  v14[3] = &unk_10051B838;
  v15 = v7;
  selfCopy = self;
  v19 = v39;
  v20 = v48;
  v21 = v46;
  v22 = v44;
  v23 = v43;
  v24 = v42;
  v25 = v41;
  v18 = v29;
  v17 = restrictionsCopy;
  v11 = restrictionsCopy;
  v12 = v7;
  dispatch_group_notify(v9, queue, v14);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);
}

- (void)_fetchDictationAllowedStatus:(id)status
{
  statusCopy = status;
  _mcQueue = [(ADAssistantDataManager *)self _mcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100304C28;
  block[3] = &unk_10051CF58;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(_mcQueue, block);
}

- (void)_fetchDictationHIPAAMDMStatus:(id)status
{
  statusCopy = status;
  _mcQueue = [(ADAssistantDataManager *)self _mcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100304D2C;
  block[3] = &unk_10051CF58;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(_mcQueue, block);
}

- (id)_mcQueue
{
  if (qword_1005909B0 != -1)
  {
    dispatch_once(&qword_1005909B0, &stru_10051B7C0);
  }

  v3 = qword_1005909B8;

  return v3;
}

- (void)_setAllowExplicitContentAndCensorSpeech:(BOOL)speech
{
  speechCopy = speech;
  v5 = +[ADPreferences sharedPreferences];
  [v5 setAllowExplicitContent:speechCopy];

  self->_cachedAllowsExplicitContent = speechCopy;
  self->_cachedCensorSpeech = !speechCopy;

  [(ADAssistantDataManager *)self _generateAssistantData];
}

- (void)_setAllowExplicitContent:(BOOL)content
{
  contentCopy = content;
  v5 = +[ADPreferences sharedPreferences];
  [v5 setAllowExplicitContent:contentCopy];

  self->_cachedAllowsExplicitContent = contentCopy;

  [(ADAssistantDataManager *)self _generateAssistantData];
}

- (id)_unredactedMeCards
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1003045F4;
  v10 = sub_100304604;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100304FF4;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_cachedAssistantData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1003045F4;
  v10 = sub_100304604;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100305130;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_onMainThreadUpdateCountryCodeWithCountryConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (!+[NSThread isMainThread])
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ADAssistantDataManager.m" lineNumber:913 description:@"called from non-main thread"];
  }

  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADAssistantDataManager _onMainThreadUpdateCountryCodeWithCountryConfiguration:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Updating country configuration for assistant data", buf, 0xCu);
  }

  countryCode = [configurationCopy countryCode];
  if (!countryCode)
  {
    [configurationCopy updateProvidersForCurrentCountry];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100305308;
  block[3] = &unk_10051E088;
  block[4] = self;
  v16 = countryCode;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = countryCode;
  dispatch_async(queue, block);
}

- (void)_updateDictationAllowedStatus
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100305428;
  v2[3] = &unk_10051B778;
  v2[4] = self;
  [(ADAssistantDataManager *)self _fetchDictationAllowedStatus:v2];
}

- (void)_notifyObserversOfDictationHIPAAMDMStatus
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100305670;
  v2[3] = &unk_10051B778;
  v2[4] = self;
  [(ADAssistantDataManager *)self _fetchDictationHIPAAMDMStatus:v2];
}

- (void)_notifyObserversOfSAD:(id)d
{
  dCopy = d;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 assistantDataManager:self didUpdateAssistantData:dCopy meCards:self->_cachedMeCards unredactedAnchor:self->_unredactedAnchor];
        }

        else
        {
          [v10 assistantDataManager:self didUpdateAssistantData:{dCopy, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_generateAssistantData
{
  if (self->_initialFetchComplete && (self->_cachedCountryCode || self->_receivedGeoCountryConfigurationResponse || self->_cachedVoice))
  {
    v3 = objc_alloc_init(SASetAssistantData);
    v4 = +[NSLocale currentLocale];
    v5 = +[NSTimeZone systemTimeZone];
    name = [v5 name];
    [v3 setTimeZoneId:name];

    localeIdentifier = [v4 localeIdentifier];
    [v3 setRegion:localeIdentifier];

    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AppleICUForce24HourTime", kCFPreferencesAnyApplication, 0);
    if (AppBooleanValue || CFPreferencesGetAppBooleanValue(@"AppleICUForce12HourTime", kCFPreferencesAnyApplication, 0))
    {
      v9 = [NSNumber numberWithBool:AppBooleanValue != 0];
    }

    else
    {
      v9 = 0;
    }

    [v3 setTwentyFourHourTimeDisplay:v9];

    _cachedRestrictions = [(ADAssistantDataManager *)self _cachedRestrictions];
    [v3 setParentalRestrictions:_cachedRestrictions];

    [v3 setCensorSpeech:self->_cachedCensorSpeech];
    v11 = [NSNumber numberWithBool:self->_cachedAllowUserGeneratedContent];
    [v3 setAllowUserGeneratedContent:v11];

    [v3 setMediaPlayerExplicitContentDisallowed:!self->_cachedAllowsExplicitContent];
    [v3 setMediaContentRatingRestrictions:self->_cachedContentRatingRestrictions];
    [v3 setCountryCode:self->_cachedCountryCode];
    [(ADDisplayScaleContextCollector *)self->_displayScaleMonitor displayScale];
    v12 = [NSNumber numberWithDouble:?];
    [v3 setUiScale:v12];

    [v3 setTtsVoice:self->_cachedVoice];
    [v3 setMeCards:self->_cachedMeCards];
    v13 = AFDeviceColor();
    [v3 setDeviceColor:v13];

    v14 = AFDeviceEnclosureColor();
    [v3 setDeviceEnclosure:v14];

    [v3 setInRetailStoreDemoMode:self->_cachedInRetailStoreDemoMode];
    v15 = +[NSLocale preferredLanguages];
    firstObject = [v15 firstObject];
    [v3 setPreferredLanguage:firstObject];

    [v3 setFullStorefrontId:self->_cachedStoreFrontId];
    v17 = [NSNumber numberWithBool:self->_cachedServerFlagsEnabled];
    [v3 setDebugFlags:v17];

    v18 = [NSNumber numberWithBool:sub_10000F1C0()];
    [v3 setVoiceTriggerEnabled:v18];

    if (self->_cachedSupportsTelephonyCalls)
    {
      v49 = SADeviceCapabilityTelephonyValue;
      v19 = [NSArray arrayWithObjects:&v49 count:1];
      [v3 setDeviceCapabilities:v19];
    }

    af_aceTemperatureUnit = [v4 af_aceTemperatureUnit];
    [v3 setTemperatureUnit:af_aceTemperatureUnit];

    [v3 setVoiceOver:self->_voiceOverIsActive];
    v21 = +[AFPreferences sharedPreferences];
    manualEndpointingThreshold = [v21 manualEndpointingThreshold];
    [manualEndpointingThreshold doubleValue];
    v24 = v23 * 1000.0;

    v25 = [NSNumber numberWithDouble:v24];
    [v3 setHoldToTalkThresholdInMilliseconds:v25];

    v26 = AFCurrentUserInterfaceIdiom();
    [v3 setUserInterfaceIdiom:v26];

    properties = [v3 properties];
    allKeys = [properties allKeys];
    v29 = [allKeys mutableCopy];

    [v29 removeObject:SASetAssistantDataAnchorPListKey];
    v30 = +[NSNull null];
    v31 = [properties objectsForKeys:v29 notFoundMarker:v30];
    v32 = sub_100215D9C(v31);
    unredactedAnchor = self->_unredactedAnchor;
    self->_unredactedAnchor = v32;

    v34 = [(ADAssistantDataManager *)self _redactedCopyMeCards:self->_cachedMeCards];
    [v3 setMeCards:v34];

    properties2 = [v3 properties];

    v36 = [properties2 objectsForKeys:v29 notFoundMarker:v30];

    v37 = sub_100215D9C(v36);
    [v3 setAnchor:v37];
    v38 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v39 = self->_unredactedAnchor;
      v43 = 136315650;
      v44 = "[ADAssistantDataManager _generateAssistantData]";
      v45 = 2112;
      v46 = v37;
      v47 = 2112;
      v48 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s SADanchor:%@\tunredacted:%@", &v43, 0x20u);
    }

    cachedSAD = self->_cachedSAD;
    self->_cachedSAD = v3;
    v41 = v3;

    [(ADAssistantDataManager *)self _notifyObserversOfSAD:self->_cachedSAD];
  }

  else
  {
    v42 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v43 = 136315138;
      v44 = "[ADAssistantDataManager _generateAssistantData]";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Not generating assistant data because we don't have some necessary cached data", &v43, 0xCu);
    }
  }
}

- (id)_redactedCopyMeCards:(id)cards
{
  cardsCopy = cards;
  v4 = [cardsCopy count];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:v4];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = cardsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = _AFRedactedCopyPerson();
          [v5 addObject:{v11, v13}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)_notifyAnnouncementEligibilityObserverVoiceAssetsDidChange
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = AFUpdateAnnouncementEligibilityDarwinNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (void)_censorSpeechDidChange:(id)change
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADAssistantDataManager _censorSpeechDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100306300;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_safeUpdateVoiceOverStatus
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003063F4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_safeGenerateAssistantDataForVoiceTriggerEnabled
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003064E8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_countryCodeDidChange:(id)change
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADAssistantDataManager _countryCodeDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003066B8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_outputVoiceDidChange:(id)change
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADAssistantDataManager _outputVoiceDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100306870;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_systemTimeZoneDidChange:(id)change
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADAssistantDataManager _systemTimeZoneDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100306A98;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_storeFrontDidChange:(id)change
{
  changeCopy = change;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADAssistantDataManager _storeFrontDidChange:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = +[ACAccountStore ams_sharedAccountStore];
  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100306C60;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[ADAssistantDataManager _storeFrontDidChange:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to get the shared instance of ACAccountStore.", buf, 0xCu);
    }
  }
}

- (void)_locationRestrictionDidChange:(id)change
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADAssistantDataManager _locationRestrictionDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100306EC4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_currentLocaleDidChange:(id)change
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADAssistantDataManager _currentLocaleDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030706C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
}

- (void)_voiceAssetsUpdated:(id)updated
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADAssistantDataManager _voiceAssetsUpdated:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100307174;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)contextCollector:(id)collector didChangeDisplayScale:(double)scale
{
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [NSNumber numberWithDouble:scale];
    *buf = 136315394;
    v12 = "[ADAssistantDataManager contextCollector:didChangeDisplayScale:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003073D4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addressBookManagerDidUpdateData:(id)data meCard:(id)card
{
  cardCopy = card;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100307474;
  v8[3] = &unk_10051E010;
  v9 = cardCopy;
  selfCopy = self;
  v7 = cardCopy;
  dispatch_async(queue, v8);
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADAssistantDataManager profileConnectionDidReceiveEffectiveSettingsChangedNotification:userInfo:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003076F4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didChangeTelephonyCallingSupport
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[ADAssistantDataManager didChangeTelephonyCallingSupport]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100307890;
  v4[3] = &unk_10051B778;
  v4[4] = self;
  [(ADAssistantDataManager *)self _updateCallCapability:v4];
}

- (void)getAssistantDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100307948;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)setAllowExplicitContentAndCensorSpeech:(BOOL)speech
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100307ABC;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  speechCopy = speech;
  dispatch_async(queue, v4);
}

- (id)unredactedAnchor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1003045F4;
  v10 = sub_100304604;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100307BBC;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)getMeCardsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100307CB0;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getiTunesStoreFrontIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10030825C;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)requestAssistantDataUpdateHighPriority:(BOOL)priority
{
  priorityCopy = priority;
  v5 = qos_class_self();
  if (v5 <= QOS_CLASS_USER_INITIATED)
  {
    v6 = 25;
  }

  else
  {
    v6 = v5;
  }

  if (priorityCopy)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADAssistantDataManager requestAssistantDataUpdateHighPriority:]";
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Manually requesting assistant data update at qos_class_t %#02X", buf, 0x12u);
  }

  if (priorityCopy)
  {
    v9 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  else
  {
    v9 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100308544;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  v10 = dispatch_block_create_with_qos_class(v9, v7, 0, block);
  dispatch_async(self->_queue, v10);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003085F0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100308694;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  [(ADAssistantDataManager *)self removeiTunesObserver];
  [TUCallCapabilities removeDelegate:self];
  v6.receiver = self;
  v6.super_class = ADAssistantDataManager;
  [(ADAssistantDataManager *)&v6 dealloc];
}

- (ADAssistantDataManager)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v90.receiver = self;
  v90.super_class = ADAssistantDataManager;
  v5 = [(ADAssistantDataManager *)&v90 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_initially_inactive(0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v8 = dispatch_queue_create("ADAssistantDataManager", v7);
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    dispatch_set_qos_class_floor(*(v5 + 1), QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v5 + 1));
    if (contextCopy)
    {
      v10 = contextCopy;
    }

    else
    {
      v10 = +[AFInstanceContext defaultContext];
    }

    v11 = *(v5 + 20);
    *(v5 + 20) = v10;

    v12 = [[NSHashTable alloc] initWithOptions:5 capacity:1];
    v13 = *(v5 + 2);
    *(v5 + 2) = v12;

    v14 = dispatch_group_create();
    v15 = [[ADDisplayScaleContextCollector alloc] initWithDelegate:v5];
    v16 = *(v5 + 14);
    *(v5 + 14) = v15;

    v17 = dispatch_group_create();
    v18 = *(v5 + 4);
    *(v5 + 4) = v17;

    HasAddressBook = AFDeviceHasAddressBook();
    dispatch_group_enter(*(v5 + 4));
    if (HasAddressBook)
    {
      v20 = [[ADAddressBookManager alloc] initWithDelegate:v5];
      v21 = *(v5 + 22);
      *(v5 + 22) = v20;

      dispatch_group_enter(v14);
      v22 = *(v5 + 22);
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1003090EC;
      v87[3] = &unk_10051B750;
      v23 = &v88;
      v88 = v5;
      v24 = &v89;
      v89 = v14;
      [v22 getMeCard:v87];
    }

    else
    {
      dispatch_group_enter(v14);
      v25 = +[ADLocalMeCardStore sharedStore];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_1003091B4;
      v84[3] = &unk_10051B750;
      v23 = &v85;
      v26 = v5;
      v85 = v26;
      v24 = &v86;
      v86 = v14;
      [v25 meCard:v84];

      v27 = +[ADLocalMeCardStore sharedStore];
      [v27 addMeCardObserver:v26];
    }

    dispatch_group_enter(v14);
    v28 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10030927C;
    block[3] = &unk_10051E010;
    v29 = v5;
    v82 = v29;
    v30 = v14;
    v83 = v30;
    v61 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v28, 0, block);
    dispatch_async(*(v5 + 1), v61);
    *(v29 + 28) = 256;
    *(v29 + 89) = 0;
    *(v29 + 120) = _AFPreferencesGetEnableServerDebugFlags();
    v31 = objc_alloc_init(SAMediaContentRatingRestrictions);
    v32 = *(v29 + 12);
    *(v29 + 12) = v31;

    if (qword_100590550 != -1)
    {
      dispatch_once(&qword_100590550, &stru_100516C10);
    }

    *(v29 + 58) = byte_100590549;
    dispatch_group_enter(v30);
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100309304;
    v79[3] = &unk_10051B778;
    v33 = v30;
    v80 = v33;
    [v29 _updateRestrictions:v79];
    dispatch_group_enter(v33);
    v34 = qos_class_self();
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_10030930C;
    v76[3] = &unk_10051E010;
    v35 = v29;
    v77 = v35;
    v36 = v33;
    v78 = v36;
    v37 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v34, 0, v76);
    dispatch_async(*(v5 + 1), v37);
    dispatch_group_enter(v36);
    v38 = qos_class_self();
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_100309394;
    v73[3] = &unk_10051E010;
    v39 = v35;
    v74 = v39;
    v40 = v36;
    v75 = v40;
    v41 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v38, 0, v73);
    dispatch_async(*(v5 + 1), v41);
    v42 = +[ADPreferences sharedPreferences];
    countryCode = [v42 countryCode];
    v44 = v39[8];
    v39[8] = countryCode;

    dispatch_group_enter(v40);
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10030941C;
    v70[3] = &unk_10051E010;
    v45 = v39;
    v71 = v45;
    v46 = v40;
    v72 = v46;
    dispatch_async(&_dispatch_main_q, v70);
    AFIsNano();
    v45[104] = 1;
    dispatch_group_enter(v46);
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1003094CC;
    v68[3] = &unk_10051B778;
    v69 = v46;
    v47 = v46;
    [v45 _updateCallCapability:v68];
    LODWORD(v40) = qos_class_self();
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1003094D4;
    v66[3] = &unk_10051DFE8;
    v48 = v45;
    v67 = v48;
    v49 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v40, 0, v66);
    v50 = dispatch_time(0, 3000000000);
    dispatch_after(v50, *(v5 + 1), v49);
    LODWORD(v40) = qos_class_self();
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1003095A8;
    v64[3] = &unk_10051DFE8;
    v51 = v48;
    v65 = v51;
    v52 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v40, 0, v64);
    dispatch_group_notify(v47, *(v5 + 1), v52);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1003095BC;
    v62[3] = &unk_10051B778;
    v53 = v51;
    v63 = v53;
    [v53 _fetchDictationHIPAAMDMStatus:v62];
    v54 = +[AFPreferences sharedPreferences];
    v53[106] = [v54 _dictationIsAllowed];

    [v53 _updateDictationAllowedStatus];
    v55 = +[NSNotificationCenter defaultCenter];
    [v55 addObserver:v53 selector:"_locationRestrictionDidChange:" name:@"ADLocationRestrictionDidChangeNotification" object:0];
    [v55 addObserver:v53 selector:"_currentLocaleDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];
    [v55 addObserver:v53 selector:"_systemTimeZoneDidChange:" name:NSSystemTimeZoneDidChangeNotification object:0];
    [v55 addObserver:v53 selector:"_outputVoiceDidChange:" name:@"ADPreferencesOutputVoiceDidChangeNotification" object:0];
    [v55 addObserver:v53 selector:"_voiceAssetsUpdated:" name:@"ADVoiceAssetsUpdatedNotification" object:0];
    [v55 addObserver:v53 selector:"_censorSpeechDidChange:" name:@"ADShouldCensorSpeechDidChangeNotification" object:0];
    [TUCallCapabilities addDelegate:v53 queue:*(v5 + 1)];
    v56 = +[NSNotificationCenter defaultCenter];
    [v56 addObserver:v53 selector:"_storeFrontDidChange:" name:ACAccountStoreDidChangeNotification object:0];

    [v55 addObserver:v53 selector:"_countryCodeDidChange:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v53, sub_100309658, kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v53, sub_100309650, kAXSVoiceOverTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v59 = +[MCProfileConnection sharedConnection];
    [v59 addObserver:v53];

    [v53 addiTunesObserver];
  }

  return v5;
}

- (ADAssistantDataManager)init
{
  v3 = +[AFInstanceContext currentContext];
  v4 = [(ADAssistantDataManager *)self initWithInstanceContext:v3];

  return v4;
}

@end
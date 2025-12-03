@interface ADPreferences
+ (id)sharedPreferences;
- (ADPreferences)initWithInstanceContext:(id)context;
- (BOOL)_validatePhsManifestData:(id)data;
- (BOOL)allowExplicitContent;
- (BOOL)deviceWasRedirectedToProduction;
- (BOOL)getAudioSessionActiveDelay:(double *)delay;
- (BOOL)getMaximumOutputVolume:(float *)volume;
- (BOOL)getMinimumOutputVolume:(float *)volume;
- (BOOL)hasSetUpMultiUserSharedRecordZoneSubscription;
- (BOOL)homeAutomationServerFlowBypassed;
- (BOOL)ignoreLocationWiFiStatus;
- (BOOL)locationAuthorizationHasBeenUpdated;
- (BOOL)metricsSenderDisabled;
- (BOOL)mirroredMultiUserSharedDataNeedsSync;
- (BOOL)multiUserSharedDataNeedsSync;
- (BOOL)multiUserVoiceIdentification;
- (BOOL)proxyConnectionDisabled;
- (BOOL)shouldEnableRemoteSessions;
- (BOOL)voiceTriggerNeedsDataSync;
- (double)myriadDeviceVTEndTimeDistanceThreshold;
- (double)serverTimeoutInterval;
- (id)_cachedKeychainStringForKey:(id)key;
- (id)_keychainCache;
- (id)_keychainStringForKey:(id)key;
- (id)accountIdentifiers;
- (id)accountInfoForIdentifier:(id)identifier;
- (id)accountStatusServerChangeToken;
- (id)cloudKitSharedDatabaseChangeToken;
- (id)companionIdentifier;
- (id)deviceOwner;
- (id)experimentIdentifierForConfigurationIdentifier:(id)identifier;
- (id)getExperimentStateForConfigurationIdentifier:(id)identifier;
- (id)internalAuthAppleConnectServiceTicket;
- (id)internalAuthSessionToken;
- (id)keyValueServerChangeToken;
- (id)languageCodeWithFallback:(BOOL)fallback;
- (id)lastCompanionRemoteDataFetchDate;
- (id)lastKnownProxyStreamId;
- (id)loggingSharedUserIdentifier;
- (id)multiUserHomeUUIDsForDeletion;
- (id)multiUserPrimaryUser;
- (id)multiUserSharedDataServerChangeToken;
- (id)multiUserSharedDataServerChangeTokenForOwner:(id)owner;
- (id)multiUserSharedUsers;
- (id)outputVoiceWithFallback:(BOOL)fallback;
- (id)overrideAudioSessionActiveDelay;
- (id)phsAssetManifest:(BOOL)manifest;
- (id)productTypePrefix;
- (id)redirectForServerURLString:(id)string;
- (id)serverAudioSessionActivationDelay;
- (id)serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold;
- (id)serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay;
- (id)serverOverride;
- (id)sharedUserIdentifier;
- (id)voiceTriggerServerChangeToken;
- (unint64_t)lastKnownAnalyticsStoreState;
- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec;
- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec;
- (void)_cacheAndSetKeychainString:(id)string forKey:(id)key completion:(id)completion;
- (void)dumpAssistantStateChunk:(id)chunk;
- (void)removeMultiUserHomeUUID:(id)d;
- (void)setAccountInfo:(id)info forIdentifier:(id)identifier;
- (void)setAllowExplicitContent:(BOOL)content;
- (void)setCompanionIdentifier:(id)identifier;
- (void)setDeviceWasRedirectedToProduction:(BOOL)production;
- (void)setExperimentIdentifier:(id)identifier forConfigurationIdentifier:(id)configurationIdentifier;
- (void)setExperimentState:(id)state forConfigurationIdentifier:(id)identifier;
- (void)setHasATVInHome:(BOOL)home;
- (void)setHasATVOrHomePodInHome:(BOOL)home;
- (void)setHasHomePodInHome:(BOOL)home;
- (void)setHasPairedWatches:(BOOL)watches;
- (void)setHasSetUpAccountStatusRecordZoneSubscription:(BOOL)subscription;
- (void)setHasSetUpKeyValueRecordZoneSubscription:(BOOL)subscription;
- (void)setHasSetUpVoiceTriggerRecordZoneSubscription:(BOOL)subscription;
- (void)setHasSetupMultiUserSharedRecordZoneSubscription:(BOOL)subscription;
- (void)setHomeAutomationServerFlowBypassed:(BOOL)bypassed;
- (void)setIsMediaEntitySyncDisabledSyncConfig:(BOOL)config;
- (void)setIsMultiUserSyncerMeDevice:(BOOL)device;
- (void)setIsSiriFullUODSupported:(BOOL)supported;
- (void)setIsSyncDisabledForFullUoDDevices:(BOOL)devices;
- (void)setIsSyncNeededForWatch:(BOOL)watch;
- (void)setIsUsingDefaultLanguageSettings:(BOOL)settings;
- (void)setLanguageCode:(id)code;
- (void)setLastKnownAnalyticsStoreState:(unint64_t)state;
- (void)setLocationAuthorizationHasBeenUpdated:(BOOL)updated;
- (void)setMirroredMultiUserSharedDataNeedsSync:(BOOL)sync;
- (void)setMultiUserHomeUUIDsForDeletion:(id)deletion;
- (void)setMultiUserIsOnboardingDevice:(BOOL)device;
- (void)setMultiUserSharedDataNeedsSync:(BOOL)sync;
- (void)setMultiUserSharedDataServerChangeToken:(id)token forOwnerName:(id)name;
- (void)setMultiUserVoiceIdentification:(BOOL)identification;
- (void)setMyriadDeviceVTEndTimeDistanceThreshold:(double)threshold;
- (void)setOutputVoice:(id)voice;
- (void)setRedirect:(id)redirect forServerURLString:(id)string;
- (void)setSharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier;
- (void)setShouldDisableServerFallbackDomain:(BOOL)domain;
- (void)setShouldDisableServerFallbackNL:(BOOL)l;
- (void)setSingleUserCompanionACEHost:(id)host;
- (void)setSingleUserMeCard:(id)card;
- (void)setSiriDataSharingOptInStatus:(int64_t)status propagateToHomeAccessories:(BOOL)accessories source:(int64_t)source reason:(id)reason completion:(id)completion;
- (void)setVoiceTriggerNeedsDataSync:(BOOL)sync;
- (void)synchronize;
@end

@implementation ADPreferences

+ (id)sharedPreferences
{
  if (qword_100590768 != -1)
  {
    dispatch_once(&qword_100590768, &stru_1005184D8);
  }

  v3 = qword_100590770;

  return v3;
}

- (id)productTypePrefix
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)accountIdentifiers
{
  v2 = _AFPreferencesValueForKeyWithContext();
  allKeys = [v2 allKeys];

  return allKeys;
}

- (id)_keychainCache
{
  dispatch_assert_queue_V2(self->_queue);
  keychainCache = self->_keychainCache;
  if (!keychainCache)
  {
    v4 = objc_opt_new();
    v5 = self->_keychainCache;
    self->_keychainCache = v4;

    keychainCache = self->_keychainCache;
  }

  return keychainCache;
}

- (id)sharedUserIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100278A38;
  v10 = sub_100278A48;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000109A8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)metricsSenderDisabled
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)serverOverride
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)synchronize
{
  AFInternalPreferencesSynchronize();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CA84;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)internalAuthAppleConnectServiceTicket
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100278A38;
  v10 = sub_100278A48;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C03C;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)internalAuthSessionToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100278A38;
  v10 = sub_100278A48;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C180;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)shouldEnableRemoteSessions
{
  if ((+[AFFeatureFlags isRemoteSessionDisabled]& 1) != 0)
  {
    v2 = AFDeviceSupportsDisablingServerFallbackWhenMissingAsset();
    v3 = +[ADPreferences sharedPreferences];
    siriDataSharingOptInStatus = [v3 siriDataSharingOptInStatus];

    v5 = +[AFPreferences sharedPreferences];
    longLivedIdentifierUploadingEnabled = [v5 longLivedIdentifierUploadingEnabled];

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = AFSiriDataSharingOptInStatusGetName();
      v14 = 136315906;
      v15 = "[ADPreferences(Networking) shouldEnableRemoteSessions]";
      v16 = 1024;
      v17 = v2;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = longLivedIdentifierUploadingEnabled;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s isDevSupportDisableServerFallbackForMissingAsset: %d, sharingStatus: %@, islongLivedIdUploadEnabled: %d", &v14, 0x22u);
    }

    v10 = v2 ^ 1;
    if (siriDataSharingOptInStatus == 1)
    {
      v10 = 1;
    }

    v11 = v10 | longLivedIdentifierUploadingEnabled;
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[ADPreferences(Networking) shouldEnableRemoteSessions]";
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s AFFeatureFlags isDisallowRemoteNetworkSession is FALSE", &v14, 0xCu);
    }

    v11 = 1;
  }

  return v11 & 1;
}

- (void)dumpAssistantStateChunk:(id)chunk
{
  chunkCopy = chunk;
  v18 = objc_alloc_init(NSMutableDictionary);
  languageCode = [(ADPreferences *)self languageCode];
  v6 = languageCode;
  if (languageCode)
  {
    v7 = languageCode;
  }

  else
  {
    v7 = @"nil";
  }

  [v18 setObject:v7 forKeyedSubscript:@"languageCode"];

  sharedUserIdentifier = [(ADPreferences *)self sharedUserIdentifier];
  v9 = sharedUserIdentifier;
  if (sharedUserIdentifier)
  {
    v10 = sharedUserIdentifier;
  }

  else
  {
    v10 = @"nil";
  }

  [v18 setObject:v10 forKeyedSubscript:@"sharedUserIdentifier"];

  if ([(ADPreferences *)self multiUserVoiceIdentification])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v18 setObject:v11 forKeyedSubscript:@"multiUserVoiceIdentificationEnabled"];
  if ([(ADPreferences *)self allowExplicitContent])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v18 setObject:v12 forKeyedSubscript:@"allowExplicitContent"];
  v13 = +[AFPreferences sharedPreferences];
  if ([v13 cloudSyncEnabled])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v18 setObject:v14 forKeyedSubscript:@"cloudSyncEnabled"];

  outputVoice = [(ADPreferences *)self outputVoice];
  if (outputVoice)
  {
    outputVoice2 = [(ADPreferences *)self outputVoice];
    v17 = [outputVoice2 description];
    [v18 setObject:v17 forKeyedSubscript:@"outputVoice"];
  }

  else
  {
    [v18 setObject:@"nil" forKeyedSubscript:@"outputVoice"];
  }

  chunkCopy[2](chunkCopy, v18);
}

- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongValue = [v2 unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 0;
  }

  return unsignedLongValue;
}

- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongValue = [v2 unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 0;
  }

  return unsignedLongValue;
}

- (void)setShouldDisableServerFallbackDomain:(BOOL)domain
{
  v3 = [NSNumber numberWithBool:domain];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setShouldDisableServerFallbackNL:(BOOL)l
{
  v3 = [NSNumber numberWithBool:l];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsSiriFullUODSupported:(BOOL)supported
{
  v3 = [NSNumber numberWithBool:supported];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsSyncDisabledForFullUoDDevices:(BOOL)devices
{
  v3 = [NSNumber numberWithBool:devices];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsMediaEntitySyncDisabledSyncConfig:(BOOL)config
{
  v3 = [NSNumber numberWithBool:config];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasHomePodInHome:(BOOL)home
{
  v3 = [NSNumber numberWithBool:home];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasATVInHome:(BOOL)home
{
  v3 = [NSNumber numberWithBool:home];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasATVOrHomePodInHome:(BOOL)home
{
  v3 = [NSNumber numberWithBool:home];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsSyncNeededForWatch:(BOOL)watch
{
  v3 = [NSNumber numberWithBool:watch];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasPairedWatches:(BOOL)watches
{
  v3 = [NSNumber numberWithBool:watches];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHomeAutomationServerFlowBypassed:(BOOL)bypassed
{
  v3 = [NSNumber numberWithBool:bypassed];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)homeAutomationServerFlowBypassed
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setLocationAuthorizationHasBeenUpdated:(BOOL)updated
{
  v3 = [NSNumber numberWithBool:updated];
  _AFBackedUpPreferencesSetValueForKey();

  AFBackedUpPreferencesSynchronize();
}

- (BOOL)locationAuthorizationHasBeenUpdated
{
  v2 = _AFBackedUpPreferencesValueForKey();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (double)myriadDeviceVTEndTimeDistanceThreshold
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 myriadDeviceVTEndTimeDistanceThreshold];
  v4 = v3;

  return v4;
}

- (void)setMyriadDeviceVTEndTimeDistanceThreshold:(double)threshold
{
  v4 = +[AFPreferences sharedPreferences];
  [v4 setMyriadDeviceVTEndTimeDistanceThreshold:threshold];
}

- (void)setSingleUserCompanionACEHost:(id)host
{
  if (host)
  {
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)setSingleUserMeCard:(id)card
{
  if (card)
  {
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)_cacheAndSetKeychainString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100278CD8;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = keyCopy;
  v17 = stringCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = stringCopy;
  v14 = keyCopy;
  dispatch_async(queue, v15);
}

- (id)_keychainStringForKey:(id)key
{
  queue = self->_queue;
  keyCopy = key;
  dispatch_assert_queue_V2(queue);
  v5 = AFKeychainValueForAccountAndKey();

  if (v5)
  {
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cachedKeychainStringForKey:(id)key
{
  keyCopy = key;
  dispatch_assert_queue_V2(self->_queue);
  _keychainCache = [(ADPreferences *)self _keychainCache];
  v6 = [_keychainCache objectForKey:keyCopy];
  v7 = +[NSNull null];

  if (v6 != v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      goto LABEL_8;
    }

    v9 = [(ADPreferences *)self _keychainStringForKey:keyCopy];
    if (v9)
    {
      v8 = v9;
      [_keychainCache setValue:v9 forKey:keyCopy];
      goto LABEL_8;
    }

    v10 = +[NSNull null];
    [_keychainCache setValue:v10 forKey:keyCopy];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)setAllowExplicitContent:(BOOL)content
{
  v3 = [NSNumber numberWithBool:content];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)allowExplicitContent
{
  v2 = +[AFPreferences sharedPreferences];
  allowExplicitContent = [v2 allowExplicitContent];

  return allowExplicitContent;
}

- (id)serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)serverAudioSessionActivationDelay
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)overrideAudioSessionActiveDelay
{
  v2 = _AFPreferencesValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)getAudioSessionActiveDelay:(double *)delay
{
  if (delay)
  {
    *delay = 0.0;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 doubleValue];
      *delay = v6;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)getMinimumOutputVolume:(float *)volume
{
  if (volume)
  {
    *volume = 0.0;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 floatValue];
      *volume = v6;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)getMaximumOutputVolume:(float *)volume
{
  if (volume)
  {
    *volume = 0.0;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 floatValue];
      *volume = v6;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)setLastKnownAnalyticsStoreState:(unint64_t)state
{
  v3 = [NSNumber numberWithUnsignedInteger:state];
  _AFPreferencesSetValueForKeyWithContext();
}

- (unint64_t)lastKnownAnalyticsStoreState
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BOOL)proxyConnectionDisabled
{
  v2 = _AFPreferencesValueForKeyWithContext();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setExperimentState:(id)state forConfigurationIdentifier:(id)identifier
{
  stateCopy = state;
  v6 = [@"Experiment State" stringByAppendingString:identifier];
  _AFPreferencesSetValueForKey();
}

- (id)getExperimentStateForConfigurationIdentifier:(id)identifier
{
  v3 = [@"Experiment State" stringByAppendingString:identifier];
  v4 = _AFPreferencesValueForKey();

  return v4;
}

- (void)setExperimentIdentifier:(id)identifier forConfigurationIdentifier:(id)configurationIdentifier
{
  identifierCopy = identifier;
  v6 = [@"Experiment Identifier" stringByAppendingString:configurationIdentifier];
  _AFPreferencesSetValueForKey();
}

- (id)experimentIdentifierForConfigurationIdentifier:(id)identifier
{
  v3 = [@"Experiment Identifier" stringByAppendingString:identifier];
  v4 = _AFPreferencesValueForKey();

  return v4;
}

- (void)setSiriDataSharingOptInStatus:(int64_t)status propagateToHomeAccessories:(BOOL)accessories source:(int64_t)source reason:(id)reason completion:(id)completion
{
  accessoriesCopy = accessories;
  reasonCopy = reason;
  completionCopy = completion;
  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v16 = 136316163;
    v17 = "[ADPreferences setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]";
    v18 = 2049;
    statusCopy = status;
    v20 = 2048;
    sourceCopy = source;
    v22 = 2113;
    v23 = reasonCopy;
    v24 = 1024;
    v25 = accessoriesCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Setting Siri Data Sharing OptIn status=%{private}ld from source=%ld with reason=%{private}@, and propagating to home accessories=%d", &v16, 0x30u);
  }

  _AFPreferencesSetSiriDataSharingOptInStatusWithContext();
  v15 = +[NSNotificationCenter defaultCenter];
  [v15 postNotificationName:@"ADPreferencesSiriDataSharingOptInStatusDidChangeNotification" object:self];
  [v15 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)lastCompanionRemoteDataFetchDate
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setCompanionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100279A30;
  v5[3] = &unk_10051B5F0;
  objc_copyWeak(&v6, &location);
  [(ADPreferences *)self _cacheAndSetKeychainString:identifierCopy forKey:@"Companion Identifier" completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)companionIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100278A38;
  v10 = sub_100278A48;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100279B94;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setSharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier
{
  identifierCopy = identifier;
  userIdentifierCopy = userIdentifier;
  objc_initWeak(&location, self);
  [(ADPreferences *)self _cacheAndSetKeychainString:identifierCopy forKey:@"User Identifier" completion:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100279CF4;
  v8[3] = &unk_10051B5F0;
  objc_copyWeak(&v9, &location);
  [(ADPreferences *)self _cacheAndSetKeychainString:userIdentifierCopy forKey:@"Logging User Identifier" completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)loggingSharedUserIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100278A38;
  v10 = sub_100278A48;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100279E78;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)multiUserHomeUUIDsForDeletion
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)removeMultiUserHomeUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 mutableCopy];
      if ([v5 containsObject:v6])
      {
        [v5 removeObject:v6];
        [v5 count];
        _AFPreferencesSetValueForKeyWithContext();
      }
    }

    dCopy = v6;
  }
}

- (void)setMultiUserHomeUUIDsForDeletion:(id)deletion
{
  deletionCopy = deletion;
  v7 = deletionCopy;
  if (deletionCopy && [deletionCopy count])
  {
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = objc_alloc_init(NSMutableArray);
    if ([v5 count])
    {
      [v6 addObjectsFromArray:v5];
    }

    if ([v7 count])
    {
      [v6 addObjectsFromArray:v7];
    }

    if ([v6 count])
    {
      _AFPreferencesSetValueForKeyWithContext();
    }
  }

  else
  {
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)setIsMultiUserSyncerMeDevice:(BOOL)device
{
  v3 = [NSNumber numberWithBool:device];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setMultiUserIsOnboardingDevice:(BOOL)device
{
  deviceCopy = device;
  v5 = [NSNumber numberWithBool:?];
  _AFPreferencesSetValueForKeyWithContext();

  objc_initWeak(&location, self);
  if (deviceCopy)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = objc_loadWeakRetained(&location);
    [v6 postNotificationName:@"ADDeviceUsedForHomePodSetupNotification" object:v7];
  }

  objc_destroyWeak(&location);
}

- (id)multiUserSharedUsers
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)deviceOwner
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)multiUserPrimaryUser
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setHasSetupMultiUserSharedRecordZoneSubscription:(BOOL)subscription
{
  v3 = [NSNumber numberWithBool:subscription];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)hasSetUpMultiUserSharedRecordZoneSubscription
{
  v2 = _AFPreferencesValueForKeyWithContext();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)multiUserSharedDataServerChangeToken
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setDeviceWasRedirectedToProduction:(BOOL)production
{
  productionCopy = production;
  v4 = _AFPreferencesValueForKeyWithContext();
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue != productionCopy)
  {
    v6 = [NSNumber numberWithBool:productionCopy];
    _AFPreferencesSetValueForKeyWithContext();

    AFInternalPreferencesSynchronize();
  }
}

- (BOOL)deviceWasRedirectedToProduction
{
  v2 = _AFPreferencesValueForKeyWithContext();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMultiUserVoiceIdentification:(BOOL)identification
{
  identificationCopy = identification;
  v5 = _AFBackedUpPreferencesValueForKey();
  v6 = v5;
  if (!v5 || [v5 BOOLValue] != identificationCopy)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADPreferences setMultiUserVoiceIdentification:]";
      v12 = 1024;
      v13 = identificationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s voiceIdentification is %d", &v10, 0x12u);
    }

    v8 = [NSNumber numberWithBool:identificationCopy];
    _AFBackedUpPreferencesSetValueForKey();

    AFBackedUpPreferencesSynchronize();
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"ADMultiUserVoiceIdentificationDidChangeNotification" object:self];
  }
}

- (BOOL)multiUserVoiceIdentification
{
  v2 = _AFBackedUpPreferencesValueForKey();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setMultiUserSharedDataServerChangeToken:(id)token forOwnerName:(id)name
{
  if (token && name)
  {
    nameCopy = name;
    tokenCopy = token;
    v7 = _AFPreferencesValueForKeyWithContext();
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = v10;

    [v11 setObject:tokenCopy forKey:nameCopy];
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (id)multiUserSharedDataServerChangeTokenForOwner:(id)owner
{
  if (owner)
  {
    ownerCopy = owner;
    v4 = _AFPreferencesValueForKeyWithContext();
    v5 = [v4 objectForKey:ownerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setMirroredMultiUserSharedDataNeedsSync:(BOOL)sync
{
  v3 = [NSNumber numberWithBool:sync];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)mirroredMultiUserSharedDataNeedsSync
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setMultiUserSharedDataNeedsSync:(BOOL)sync
{
  v3 = [NSNumber numberWithBool:sync];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)multiUserSharedDataNeedsSync
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setHasSetUpVoiceTriggerRecordZoneSubscription:(BOOL)subscription
{
  v3 = [NSNumber numberWithBool:subscription];
  _AFPreferencesSetValueForKeyWithContext();
}

- (id)voiceTriggerServerChangeToken
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setVoiceTriggerNeedsDataSync:(BOOL)sync
{
  v3 = [NSNumber numberWithBool:sync];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)voiceTriggerNeedsDataSync
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_validatePhsManifestData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = dataCopy;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_23;
          }

          v10 = [v4 objectForKey:v9];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_22:

LABEL_23:
            v15 = 0;
            goto LABEL_25;
          }

          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = v10;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  goto LABEL_22;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v7 = v17;
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
        v15 = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }

LABEL_25:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)phsAssetManifest:(BOOL)manifest
{
  v4 = _AFPreferencesValueForKeyWithContext();
  if ([(ADPreferences *)self _validatePhsManifestData:v4])
  {
    v5 = v4;
    v4 = v5;
  }

  else
  {
    _AFPreferencesSetValueForKeyWithContext();
    AFInternalPreferencesSynchronize();
    v5 = +[NSDictionary dictionary];
  }

  v6 = v5;

  return v6;
}

- (id)cloudKitSharedDatabaseChangeToken
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setHasSetUpAccountStatusRecordZoneSubscription:(BOOL)subscription
{
  v3 = [NSNumber numberWithBool:subscription];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasSetUpKeyValueRecordZoneSubscription:(BOOL)subscription
{
  v3 = [NSNumber numberWithBool:subscription];
  _AFPreferencesSetValueForKeyWithContext();
}

- (id)accountStatusServerChangeToken
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)keyValueServerChangeToken
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)lastKnownProxyStreamId
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setRedirect:(id)redirect forServerURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    redirectCopy = redirect;
    v11 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v11 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(NSMutableDictionary);
    }

    v8 = v7;
    [v7 setObject:redirectCopy forKey:stringCopy];

    if ([v8 count])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (id)redirectForServerURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 objectForKey:stringCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)ignoreLocationWiFiStatus
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setIsUsingDefaultLanguageSettings:(BOOL)settings
{
  if (settings)
  {
    v3 = [NSNumber numberWithBool:1];
    _AFPreferencesSetValueForKeyWithContext();
  }

  else
  {

    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)setOutputVoice:(id)voice
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027B980;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  voiceCopy = voice;
  dispatch_async(queue, block);
  _AFPreferencesSetOutputVoiceWithContext();

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ADPreferencesOutputVoiceDidChangeNotification" object:self];
}

- (id)outputVoiceWithFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 _outputVoiceWithFallback:fallbackCopy];

  return v5;
}

- (void)setLanguageCode:(id)code
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027BAC4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  codeCopy = code;
  dispatch_async(queue, block);
  _AFPreferencesSetLanguageCodeWithContext();

  [(ADPreferences *)self synchronize];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ADPreferencesLanguageCodeDidChangeNotification" object:self];
}

- (id)languageCodeWithFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 _languageCodeWithFallback:fallbackCopy];

  return v5;
}

- (double)serverTimeoutInterval
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 20.0;
  }

  return v5;
}

- (void)setAccountInfo:(id)info forIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = _AFPreferencesValueForKeyWithContext();
    v7 = [v6 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(NSMutableDictionary);
    }

    v10 = v9;

    if (infoCopy)
    {
      [v10 setObject:infoCopy forKey:identifierCopy];
    }

    else
    {
      [v10 removeObjectForKey:identifierCopy];
    }

    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (id)accountInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = _AFPreferencesValueForKeyWithContext();
  v5 = [v4 objectForKey:identifierCopy];

  return v5;
}

- (ADPreferences)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ADPreferences;
  v5 = [(ADPreferences *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(0, v6);

    queue = v5->_queue;
    v5->_queue = v7;

    if (contextCopy)
    {
      v9 = contextCopy;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v9;
  }

  return v5;
}

@end
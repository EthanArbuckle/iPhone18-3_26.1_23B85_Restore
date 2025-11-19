@interface ADPreferences
+ (id)sharedPreferences;
- (ADPreferences)initWithInstanceContext:(id)a3;
- (BOOL)_validatePhsManifestData:(id)a3;
- (BOOL)allowExplicitContent;
- (BOOL)deviceWasRedirectedToProduction;
- (BOOL)getAudioSessionActiveDelay:(double *)a3;
- (BOOL)getMaximumOutputVolume:(float *)a3;
- (BOOL)getMinimumOutputVolume:(float *)a3;
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
- (id)_cachedKeychainStringForKey:(id)a3;
- (id)_keychainCache;
- (id)_keychainStringForKey:(id)a3;
- (id)accountIdentifiers;
- (id)accountInfoForIdentifier:(id)a3;
- (id)accountStatusServerChangeToken;
- (id)cloudKitSharedDatabaseChangeToken;
- (id)companionIdentifier;
- (id)deviceOwner;
- (id)experimentIdentifierForConfigurationIdentifier:(id)a3;
- (id)getExperimentStateForConfigurationIdentifier:(id)a3;
- (id)internalAuthAppleConnectServiceTicket;
- (id)internalAuthSessionToken;
- (id)keyValueServerChangeToken;
- (id)languageCodeWithFallback:(BOOL)a3;
- (id)lastCompanionRemoteDataFetchDate;
- (id)lastKnownProxyStreamId;
- (id)loggingSharedUserIdentifier;
- (id)multiUserHomeUUIDsForDeletion;
- (id)multiUserPrimaryUser;
- (id)multiUserSharedDataServerChangeToken;
- (id)multiUserSharedDataServerChangeTokenForOwner:(id)a3;
- (id)multiUserSharedUsers;
- (id)outputVoiceWithFallback:(BOOL)a3;
- (id)overrideAudioSessionActiveDelay;
- (id)phsAssetManifest:(BOOL)a3;
- (id)productTypePrefix;
- (id)redirectForServerURLString:(id)a3;
- (id)serverAudioSessionActivationDelay;
- (id)serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold;
- (id)serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay;
- (id)serverOverride;
- (id)sharedUserIdentifier;
- (id)voiceTriggerServerChangeToken;
- (unint64_t)lastKnownAnalyticsStoreState;
- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec;
- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec;
- (void)_cacheAndSetKeychainString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)dumpAssistantStateChunk:(id)a3;
- (void)removeMultiUserHomeUUID:(id)a3;
- (void)setAccountInfo:(id)a3 forIdentifier:(id)a4;
- (void)setAllowExplicitContent:(BOOL)a3;
- (void)setCompanionIdentifier:(id)a3;
- (void)setDeviceWasRedirectedToProduction:(BOOL)a3;
- (void)setExperimentIdentifier:(id)a3 forConfigurationIdentifier:(id)a4;
- (void)setExperimentState:(id)a3 forConfigurationIdentifier:(id)a4;
- (void)setHasATVInHome:(BOOL)a3;
- (void)setHasATVOrHomePodInHome:(BOOL)a3;
- (void)setHasHomePodInHome:(BOOL)a3;
- (void)setHasPairedWatches:(BOOL)a3;
- (void)setHasSetUpAccountStatusRecordZoneSubscription:(BOOL)a3;
- (void)setHasSetUpKeyValueRecordZoneSubscription:(BOOL)a3;
- (void)setHasSetUpVoiceTriggerRecordZoneSubscription:(BOOL)a3;
- (void)setHasSetupMultiUserSharedRecordZoneSubscription:(BOOL)a3;
- (void)setHomeAutomationServerFlowBypassed:(BOOL)a3;
- (void)setIsMediaEntitySyncDisabledSyncConfig:(BOOL)a3;
- (void)setIsMultiUserSyncerMeDevice:(BOOL)a3;
- (void)setIsSiriFullUODSupported:(BOOL)a3;
- (void)setIsSyncDisabledForFullUoDDevices:(BOOL)a3;
- (void)setIsSyncNeededForWatch:(BOOL)a3;
- (void)setIsUsingDefaultLanguageSettings:(BOOL)a3;
- (void)setLanguageCode:(id)a3;
- (void)setLastKnownAnalyticsStoreState:(unint64_t)a3;
- (void)setLocationAuthorizationHasBeenUpdated:(BOOL)a3;
- (void)setMirroredMultiUserSharedDataNeedsSync:(BOOL)a3;
- (void)setMultiUserHomeUUIDsForDeletion:(id)a3;
- (void)setMultiUserIsOnboardingDevice:(BOOL)a3;
- (void)setMultiUserSharedDataNeedsSync:(BOOL)a3;
- (void)setMultiUserSharedDataServerChangeToken:(id)a3 forOwnerName:(id)a4;
- (void)setMultiUserVoiceIdentification:(BOOL)a3;
- (void)setMyriadDeviceVTEndTimeDistanceThreshold:(double)a3;
- (void)setOutputVoice:(id)a3;
- (void)setRedirect:(id)a3 forServerURLString:(id)a4;
- (void)setSharedUserIdentifier:(id)a3 loggingSharedUserIdentifier:(id)a4;
- (void)setShouldDisableServerFallbackDomain:(BOOL)a3;
- (void)setShouldDisableServerFallbackNL:(BOOL)a3;
- (void)setSingleUserCompanionACEHost:(id)a3;
- (void)setSingleUserMeCard:(id)a3;
- (void)setSiriDataSharingOptInStatus:(int64_t)a3 propagateToHomeAccessories:(BOOL)a4 source:(int64_t)a5 reason:(id)a6 completion:(id)a7;
- (void)setVoiceTriggerNeedsDataSync:(BOOL)a3;
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
  v3 = [v2 allKeys];

  return v3;
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v4 = [v3 siriDataSharingOptInStatus];

    v5 = +[AFPreferences sharedPreferences];
    v6 = [v5 longLivedIdentifierUploadingEnabled];

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
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s isDevSupportDisableServerFallbackForMissingAsset: %d, sharingStatus: %@, islongLivedIdUploadEnabled: %d", &v14, 0x22u);
    }

    v10 = v2 ^ 1;
    if (v4 == 1)
    {
      v10 = 1;
    }

    v11 = v10 | v6;
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

- (void)dumpAssistantStateChunk:(id)a3
{
  v4 = a3;
  v18 = objc_alloc_init(NSMutableDictionary);
  v5 = [(ADPreferences *)self languageCode];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"nil";
  }

  [v18 setObject:v7 forKeyedSubscript:@"languageCode"];

  v8 = [(ADPreferences *)self sharedUserIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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

  v15 = [(ADPreferences *)self outputVoice];
  if (v15)
  {
    v16 = [(ADPreferences *)self outputVoice];
    v17 = [v16 description];
    [v18 setObject:v17 forKeyedSubscript:@"outputVoice"];
  }

  else
  {
    [v18 setObject:@"nil" forKeyedSubscript:@"outputVoice"];
  }

  v4[2](v4, v18);
}

- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShouldDisableServerFallbackDomain:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setShouldDisableServerFallbackNL:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsSiriFullUODSupported:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsSyncDisabledForFullUoDDevices:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsMediaEntitySyncDisabledSyncConfig:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasHomePodInHome:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasATVInHome:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasATVOrHomePodInHome:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setIsSyncNeededForWatch:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasPairedWatches:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHomeAutomationServerFlowBypassed:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)homeAutomationServerFlowBypassed
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLocationAuthorizationHasBeenUpdated:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFBackedUpPreferencesSetValueForKey();

  AFBackedUpPreferencesSynchronize();
}

- (BOOL)locationAuthorizationHasBeenUpdated
{
  v2 = _AFBackedUpPreferencesValueForKey();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)myriadDeviceVTEndTimeDistanceThreshold
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 myriadDeviceVTEndTimeDistanceThreshold];
  v4 = v3;

  return v4;
}

- (void)setMyriadDeviceVTEndTimeDistanceThreshold:(double)a3
{
  v4 = +[AFPreferences sharedPreferences];
  [v4 setMyriadDeviceVTEndTimeDistanceThreshold:a3];
}

- (void)setSingleUserCompanionACEHost:(id)a3
{
  if (a3)
  {
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)setSingleUserMeCard:(id)a3
{
  if (a3)
  {
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)_cacheAndSetKeychainString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100278CD8;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (id)_keychainStringForKey:(id)a3
{
  queue = self->_queue;
  v4 = a3;
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

- (id)_cachedKeychainStringForKey:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(ADPreferences *)self _keychainCache];
  v6 = [v5 objectForKey:v4];
  v7 = +[NSNull null];

  if (v6 != v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      goto LABEL_8;
    }

    v9 = [(ADPreferences *)self _keychainStringForKey:v4];
    if (v9)
    {
      v8 = v9;
      [v5 setValue:v9 forKey:v4];
      goto LABEL_8;
    }

    v10 = +[NSNull null];
    [v5 setValue:v10 forKey:v4];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)setAllowExplicitContent:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)allowExplicitContent
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 allowExplicitContent];

  return v3;
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

- (BOOL)getAudioSessionActiveDelay:(double *)a3
{
  if (a3)
  {
    *a3 = 0.0;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 doubleValue];
      *a3 = v6;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)getMinimumOutputVolume:(float *)a3
{
  if (a3)
  {
    *a3 = 0.0;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 floatValue];
      *a3 = v6;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)getMaximumOutputVolume:(float *)a3
{
  if (a3)
  {
    *a3 = 0.0;
    v4 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v4 floatValue];
      *a3 = v6;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)setLastKnownAnalyticsStoreState:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (unint64_t)lastKnownAnalyticsStoreState
{
  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)proxyConnectionDisabled
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setExperimentState:(id)a3 forConfigurationIdentifier:(id)a4
{
  v5 = a3;
  v6 = [@"Experiment State" stringByAppendingString:a4];
  _AFPreferencesSetValueForKey();
}

- (id)getExperimentStateForConfigurationIdentifier:(id)a3
{
  v3 = [@"Experiment State" stringByAppendingString:a3];
  v4 = _AFPreferencesValueForKey();

  return v4;
}

- (void)setExperimentIdentifier:(id)a3 forConfigurationIdentifier:(id)a4
{
  v5 = a3;
  v6 = [@"Experiment Identifier" stringByAppendingString:a4];
  _AFPreferencesSetValueForKey();
}

- (id)experimentIdentifierForConfigurationIdentifier:(id)a3
{
  v3 = [@"Experiment Identifier" stringByAppendingString:a3];
  v4 = _AFPreferencesValueForKey();

  return v4;
}

- (void)setSiriDataSharingOptInStatus:(int64_t)a3 propagateToHomeAccessories:(BOOL)a4 source:(int64_t)a5 reason:(id)a6 completion:(id)a7
{
  v9 = a4;
  v12 = a6;
  v13 = a7;
  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v16 = 136316163;
    v17 = "[ADPreferences setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]";
    v18 = 2049;
    v19 = a3;
    v20 = 2048;
    v21 = a5;
    v22 = 2113;
    v23 = v12;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Setting Siri Data Sharing OptIn status=%{private}ld from source=%ld with reason=%{private}@, and propagating to home accessories=%d", &v16, 0x30u);
  }

  _AFPreferencesSetSiriDataSharingOptInStatusWithContext();
  v15 = +[NSNotificationCenter defaultCenter];
  [v15 postNotificationName:@"ADPreferencesSiriDataSharingOptInStatusDidChangeNotification" object:self];
  [v15 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
  if (v13)
  {
    v13[2](v13, 0);
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

- (void)setCompanionIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100279A30;
  v5[3] = &unk_10051B5F0;
  objc_copyWeak(&v6, &location);
  [(ADPreferences *)self _cacheAndSetKeychainString:v4 forKey:@"Companion Identifier" completion:v5];
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

- (void)setSharedUserIdentifier:(id)a3 loggingSharedUserIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  [(ADPreferences *)self _cacheAndSetKeychainString:v6 forKey:@"User Identifier" completion:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100279CF4;
  v8[3] = &unk_10051B5F0;
  objc_copyWeak(&v9, &location);
  [(ADPreferences *)self _cacheAndSetKeychainString:v7 forKey:@"Logging User Identifier" completion:v8];
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

- (void)removeMultiUserHomeUUID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v6 = v3;
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

    v3 = v6;
  }
}

- (void)setMultiUserHomeUUIDsForDeletion:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3 && [v3 count])
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

- (void)setIsMultiUserSyncerMeDevice:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setMultiUserIsOnboardingDevice:(BOOL)a3
{
  v3 = a3;
  v5 = [NSNumber numberWithBool:?];
  _AFPreferencesSetValueForKeyWithContext();

  objc_initWeak(&location, self);
  if (v3)
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

- (void)setHasSetupMultiUserSharedRecordZoneSubscription:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)hasSetUpMultiUserSharedRecordZoneSubscription
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = [v2 BOOLValue];

  return v3;
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

- (void)setDeviceWasRedirectedToProduction:(BOOL)a3
{
  v3 = a3;
  v4 = _AFPreferencesValueForKeyWithContext();
  v5 = [v4 BOOLValue];

  if (v5 != v3)
  {
    v6 = [NSNumber numberWithBool:v3];
    _AFPreferencesSetValueForKeyWithContext();

    AFInternalPreferencesSynchronize();
  }
}

- (BOOL)deviceWasRedirectedToProduction
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setMultiUserVoiceIdentification:(BOOL)a3
{
  v3 = a3;
  v5 = _AFBackedUpPreferencesValueForKey();
  v6 = v5;
  if (!v5 || [v5 BOOLValue] != v3)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADPreferences setMultiUserVoiceIdentification:]";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s voiceIdentification is %d", &v10, 0x12u);
    }

    v8 = [NSNumber numberWithBool:v3];
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMultiUserSharedDataServerChangeToken:(id)a3 forOwnerName:(id)a4
{
  if (a3 && a4)
  {
    v5 = a4;
    v6 = a3;
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

    [v11 setObject:v6 forKey:v5];
    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (id)multiUserSharedDataServerChangeTokenForOwner:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = _AFPreferencesValueForKeyWithContext();
    v5 = [v4 objectForKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setMirroredMultiUserSharedDataNeedsSync:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)mirroredMultiUserSharedDataNeedsSync
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setMultiUserSharedDataNeedsSync:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)multiUserSharedDataNeedsSync
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSetUpVoiceTriggerRecordZoneSubscription:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
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

- (void)setVoiceTriggerNeedsDataSync:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (BOOL)voiceTriggerNeedsDataSync
{
  v2 = _AFPreferencesValueForKeyWithContext();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_validatePhsManifestData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
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

- (id)phsAssetManifest:(BOOL)a3
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

- (void)setHasSetUpAccountStatusRecordZoneSubscription:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  _AFPreferencesSetValueForKeyWithContext();
}

- (void)setHasSetUpKeyValueRecordZoneSubscription:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
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

- (void)setRedirect:(id)a3 forServerURLString:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
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
    [v7 setObject:v6 forKey:v5];

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

- (id)redirectForServerURLString:(id)a3
{
  if (a3)
  {
    v3 = a3;
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

    v7 = [v6 objectForKey:v3];

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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIsUsingDefaultLanguageSettings:(BOOL)a3
{
  if (a3)
  {
    v3 = [NSNumber numberWithBool:1];
    _AFPreferencesSetValueForKeyWithContext();
  }

  else
  {

    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (void)setOutputVoice:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027B980;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  v5 = a3;
  dispatch_async(queue, block);
  _AFPreferencesSetOutputVoiceWithContext();

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ADPreferencesOutputVoiceDidChangeNotification" object:self];
}

- (id)outputVoiceWithFallback:(BOOL)a3
{
  v3 = a3;
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 _outputVoiceWithFallback:v3];

  return v5;
}

- (void)setLanguageCode:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027BAC4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  v5 = a3;
  dispatch_async(queue, block);
  _AFPreferencesSetLanguageCodeWithContext();

  [(ADPreferences *)self synchronize];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ADPreferencesLanguageCodeDidChangeNotification" object:self];
}

- (id)languageCodeWithFallback:(BOOL)a3
{
  v3 = a3;
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 _languageCodeWithFallback:v3];

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

- (void)setAccountInfo:(id)a3 forIdentifier:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (v5)
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

    if (v11)
    {
      [v10 setObject:v11 forKey:v5];
    }

    else
    {
      [v10 removeObjectForKey:v5];
    }

    _AFPreferencesSetValueForKeyWithContext();
  }
}

- (id)accountInfoForIdentifier:(id)a3
{
  v3 = a3;
  v4 = _AFPreferencesValueForKeyWithContext();
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (ADPreferences)initWithInstanceContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADPreferences;
  v5 = [(ADPreferences *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(0, v6);

    queue = v5->_queue;
    v5->_queue = v7;

    if (v4)
    {
      v9 = v4;
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
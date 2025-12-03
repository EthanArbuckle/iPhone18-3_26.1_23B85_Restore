@interface ADAssistantProperties
- (BOOL)_getHasHomekitHome;
- (BOOL)_getIsAppleIntelligenceAvailable;
- (BOOL)_getIsAppleIntelligenceEnabled;
- (BOOL)_getIsAppleIntelligenceHardwareCapable;
- (BOOL)_getIsAssistantEnabled;
- (BOOL)_getIsChatGPTConfirmationAlwaysRequired;
- (BOOL)_getIsChatGPTSetUpPrompts;
- (BOOL)_getIsGenAIEnabled;
- (BOOL)_getIsMteUploadEnabled;
- (BOOL)_getIsPreciseLocationEnabled;
- (id)_getAppleIntelligenceProperties;
- (id)_getGradingOptInStateChanges;
- (id)_getInputLocale;
- (id)_getODDHomeKitProperties;
- (id)_getODDOptInProperties;
- (id)_getODDVoiceProperties;
- (id)_getVoiceAccentWithVoiceInfo:(id)info;
- (id)_getVoiceTriggerSettings;
- (id)getODDAssistantProperties;
- (int)_getChatGPTAccountType;
- (int)_getGenAIAgent;
- (int)_getListenForSettings;
- (int)_getLocationAccessPermission;
- (int)_getSiriDataSharingOptInStatus;
- (int)_getVoiceGenderWithVoiceInfo:(id)info;
- (int)_getVoiceNameWithVoiceInfo:(id)info;
- (uint64_t)_getIsServerUserDataSyncEnabled;
@end

@implementation ADAssistantProperties

- (uint64_t)_getIsServerUserDataSyncEnabled
{
  v0 = +[AFPreferences sharedPreferences];
  v1 = +[AFPreferences sharedPreferences];
  v25 = v0;
  if ([v1 dictationIsEnabled])
  {
    siriDataSharingOptInStatus = [v1 siriDataSharingOptInStatus];
    v3 = +[AFUtilitiesWrapper deviceSupportsOnDeviceDictation];
    v4 = sub_100214E4C(v1);
    v5 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v27 = "ADShouldAllowDictationOnlySync";
      v28 = 1024;
      v29 = siriDataSharingOptInStatus != 1;
      v30 = 1024;
      v31 = v3;
      v32 = 1024;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s optedOut: %d, deviceSupportsOnDeviceDictation: %d, serverDictationRequired: %d", buf, 0x1Eu);
    }

    v6 = (siriDataSharingOptInStatus == 1) | v4 | v3 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = +[AFPreferences sharedPreferences];
  v8 = +[ADPreferences sharedPreferences];
  languageCode = [v8 languageCode];

  siriDataSharingOptInStatus2 = [v7 siriDataSharingOptInStatus];
  v11 = sub_10000A500();
  v12 = sub_10000ABF4(languageCode);
  if (AFIsIOS())
  {
    isSyncNeededForWatch = [v7 isSyncNeededForWatch];
    deviceHasAtvInHome = [v7 deviceHasAtvInHome];
    deviceHasHomePodInHome = [v7 deviceHasHomePodInHome];
  }

  else
  {
    deviceHasHomePodInHome = 0;
    deviceHasAtvInHome = 0;
    isSyncNeededForWatch = 0;
  }

  v16 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136316930;
    v27 = "ADShouldAllowAssistantSync";
    v28 = 1024;
    v29 = siriDataSharingOptInStatus2 != 1;
    v30 = 1024;
    v31 = v11;
    v32 = 1024;
    v33 = deviceHasAtvInHome;
    v34 = 1024;
    v35 = deviceHasHomePodInHome;
    v36 = 1024;
    v37 = isSyncNeededForWatch;
    v38 = 1024;
    v39 = v12;
    v40 = 2112;
    v41 = languageCode;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s optedOut: %d, fullUodCapable: %d, deviceHasAtvInHome: %d, deviceHasHomePodInHome: %d, isSyncNeededForWatch: %d, syncDisabledViaTrial: %d siriLocale: %@", buf, 0x3Au);
  }

  if ((siriDataSharingOptInStatus2 == 1 || (v11 & 1) == 0) | (isSyncNeededForWatch | deviceHasAtvInHome) & 1)
  {
  }

  else
  {

    if (!(deviceHasHomePodInHome & 1 | ((v12 & 1) == 0)))
    {
      v17 = 0;
      if (v6)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }

  v17 = sub_10000A630();
  if (v6)
  {
LABEL_15:
    v18 = 1;
    v19 = v25;
    goto LABEL_22;
  }

LABEL_17:
  v19 = v25;
  if ([v25 assistantIsEnabled] & v17)
  {
    v18 = 1;
  }

  else
  {
    v20 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      dictationIsEnabled = [v25 dictationIsEnabled];
      assistantIsEnabled = [v25 assistantIsEnabled];
      *buf = 136316162;
      v27 = "ADIsSyncEnabled";
      v28 = 1024;
      v29 = dictationIsEnabled;
      v30 = 1024;
      v31 = 0;
      v32 = 1024;
      v33 = assistantIsEnabled;
      v34 = 1024;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Sync disallowed dictation enabled=%d, dictation only sync allowed=%d, assistant enabled=%d, assistant sync enabled=%d", buf, 0x24u);
    }

    v18 = 0;
  }

LABEL_22:

  return v18;
}

- (int)_getLocationAccessPermission
{
  if (!+[CLLocationManager locationServicesEnabled])
  {
    return 1;
  }

  v2 = AFEffectiveSiriBundlePathForLocation();
  v3 = [CLLocationManager authorizationStatusForBundlePath:v2];

  if (v3 - 1 > 3)
  {
    return 4;
  }

  else
  {
    return dword_1003F0320[v3 - 1];
  }
}

- (BOOL)_getIsPreciseLocationEnabled
{
  v2 = objc_alloc_init(PreciseLocationManager);
  isPreciseLocationEnabled = [(PreciseLocationManager *)v2 isPreciseLocationEnabled];

  return isPreciseLocationEnabled;
}

- (int)_getSiriDataSharingOptInStatus
{
  v2 = _AFPreferencesSiriDataSharingOptInStatus();

  return [ADAssistantPropertiesUtils SISchemaDataSharingOptInStateFrom:v2];
}

- (BOOL)_getHasHomekitHome
{
  v2 = AFAppleAudioDeviceConnectedInLast24Hours();
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_getVoiceTriggerSettings
{
  v2 = objc_alloc_init(SISchemaSiriVoiceTriggerSettings);
  [v2 setIsHeySiriTriggerPhraseEnabled:0];
  [v2 setIsJustSiriTriggerPhraseEnabled:0];
  v3 = +[VTPreferences sharedPreferences];
  voiceTriggerEnabled = [v3 voiceTriggerEnabled];

  if (voiceTriggerEnabled)
  {
    v5 = +[VTPreferences sharedPreferences];
    v8 = 0;
    v6 = [v5 getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v8];

    if (v6 <= 1)
    {
      [v2 setIsHeySiriTriggerPhraseEnabled:1];
      [v2 setIsJustSiriTriggerPhraseEnabled:v6];
    }
  }

  return v2;
}

- (int)_getListenForSettings
{
  _getVoiceTriggerSettings = [(ADAssistantProperties *)self _getVoiceTriggerSettings];
  v3 = [ADAssistantPropertiesUtils ODDSiriSchemaODDListenForFrom:_getVoiceTriggerSettings];

  return v3;
}

- (id)_getGradingOptInStateChanges
{
  v2 = +[AFPreferences sharedPreferences];
  siriDataSharingOptInStatusHistory = [v2 siriDataSharingOptInStatusHistory];
  v4 = [siriDataSharingOptInStatusHistory count];
  if (v4 >= 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ADGradingOptInStateChangesHistory";
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Fetching %lu most recent siri data sharing opt-in status change entries from preferences %@", buf, 0x20u);
  }

  v7 = [siriDataSharingOptInStatusHistory subarrayWithRange:{0, v5}];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v12 = sub_10012FA10;
  v13 = sub_10012FA20;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012FA28;
  v10[3] = &unk_100512988;
  v10[4] = buf;
  v10[5] = v5;
  [v7 enumerateObjectsUsingBlock:v10];
  v8 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v8;
}

- (BOOL)_getIsMteUploadEnabled
{
  v2 = +[AFSiriDataSharingSensitivityManager shared];
  isOptedOutOfMTE = [v2 isOptedOutOfMTE];

  return isOptedOutOfMTE ^ 1;
}

- (int)_getVoiceNameWithVoiceInfo:(id)info
{
  name = [info name];
  v4 = name;
  if (name)
  {
    uppercaseString = [name uppercaseString];
    v6 = [NSString stringWithFormat:@"VOICENAME_%@", uppercaseString];
  }

  else
  {
    v6 = @"VOICENAME_UNKNOWN";
  }

  v7 = v6;
  if (([(__CFString *)v7 isEqualToString:@"VOICENAME_UNKNOWN"]& 1) != 0)
  {
    v8 = 0;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_AARON"]& 1) != 0)
  {
    v8 = 1;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_AIDAN"]& 1) != 0)
  {
    v8 = 2;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_AKASH"]& 1) != 0)
  {
    v8 = 3;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ALEKSEI"]& 1) != 0)
  {
    v8 = 4;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ALVA"]& 1) != 0)
  {
    v8 = 5;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_AMELIE"]& 1) != 0)
  {
    v8 = 6;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ANGEL"]& 1) != 0)
  {
    v8 = 7;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ARTHUR"]& 1) != 0)
  {
    v8 = 8;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_AXEL"]& 1) != 0)
  {
    v8 = 9;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_BEATRIZ"]& 1) != 0)
  {
    v8 = 10;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_CARMEN"]& 1) != 0)
  {
    v8 = 11;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_CARMIT"]& 1) != 0)
  {
    v8 = 12;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_CATHERINE"]& 1) != 0)
  {
    v8 = 13;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_CHENGHAN"]& 1) != 0)
  {
    v8 = 14;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_DAMAYANTI"]& 1) != 0)
  {
    v8 = 15;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_DAMON"]& 1) != 0)
  {
    v8 = 16;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_DANIEL"]& 1) != 0)
  {
    v8 = 17;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_DEDEC"]& 1) != 0)
  {
    v8 = 18;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_DEDED"]& 1) != 0)
  {
    v8 = 19;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ELIF"]& 1) != 0)
  {
    v8 = 20;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ELLEN"]& 1) != 0)
  {
    v8 = 21;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ELSE"]& 1) != 0)
  {
    v8 = 22;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENGBC"]& 1) != 0)
  {
    v8 = 23;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENGBD"]& 1) != 0)
  {
    v8 = 24;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_FRANCESCA"]& 1) != 0)
  {
    v8 = 25;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_GORDON"]& 1) != 0)
  {
    v8 = 26;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_HATTORI"]& 1) != 0)
  {
    v8 = 27;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_HELENA"]& 1) != 0)
  {
    v8 = 28;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_HIRO"]& 1) != 0)
  {
    v8 = 29;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_HOYIN"]& 1) != 0)
  {
    v8 = 30;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_INGRID"]& 1) != 0)
  {
    v8 = 31;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_JENS"]& 1) != 0)
  {
    v8 = 32;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_JINSOO"]& 1) != 0)
  {
    v8 = 33;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_KAAN"]& 1) != 0)
  {
    v8 = 34;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_KANYA"]& 1) != 0)
  {
    v8 = 35;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_KAYAN"]& 1) != 0)
  {
    v8 = 36;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_KLAAR"]& 1) != 0)
  {
    v8 = 37;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_LEONA"]& 1) != 0)
  {
    v8 = 38;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_LIMU"]& 1) != 0)
  {
    v8 = 39;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_LINFEI"]& 1) != 0)
  {
    v8 = 40;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_LUCIANA"]& 1) != 0)
  {
    v8 = 41;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_LUISA"]& 1) != 0)
  {
    v8 = 42;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MAEVE"]& 1) != 0)
  {
    v8 = 43;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MAGED"]& 1) != 0)
  {
    v8 = 44;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MARIE"]& 1) != 0)
  {
    v8 = 45;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MARIUS"]& 1) != 0)
  {
    v8 = 46;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MARTHA"]& 1) != 0)
  {
    v8 = 47;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MARTIN"]& 1) != 0)
  {
    v8 = 48;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MEIJIA"]& 1) != 0)
  {
    v8 = 49;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MINJI"]& 1) != 0)
  {
    v8 = 50;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MOIRA"]& 1) != 0)
  {
    v8 = 51;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_NANDO"]& 1) != 0)
  {
    v8 = 52;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_NICKY"]& 1) != 0)
  {
    v8 = 53;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_NORA"]& 1) != 0)
  {
    v8 = 54;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_OREN"]& 1) != 0)
  {
    v8 = 55;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_PAOLO"]& 1) != 0)
  {
    v8 = 56;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_PAULINA"]& 1) != 0)
  {
    v8 = 57;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_PIERRE"]& 1) != 0)
  {
    v8 = 58;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_PIETER"]& 1) != 0)
  {
    v8 = 59;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_QUINN"]& 1) != 0)
  {
    v8 = 60;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_RIYA"]& 1) != 0)
  {
    v8 = 61;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SAKURA"]& 1) != 0)
  {
    v8 = 62;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SAMER"]& 1) != 0)
  {
    v8 = 63;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SANDRA"]& 1) != 0)
  {
    v8 = 64;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SARA"]& 1) != 0)
  {
    v8 = 65;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SATU"]& 1) != 0)
  {
    v8 = 66;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SHUFEN"]& 1) != 0)
  {
    v8 = 67;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SIMONE"]& 1) != 0)
  {
    v8 = 68;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SINJI"]& 1) != 0)
  {
    v8 = 69;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SOHA"]& 1) != 0)
  {
    v8 = 70;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SOPHIE"]& 1) != 0)
  {
    v8 = 71;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_SUVI"]& 1) != 0)
  {
    v8 = 72;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_TESSA"]& 1) != 0)
  {
    v8 = 73;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_THTHA"]& 1) != 0)
  {
    v8 = 74;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_THTHB"]& 1) != 0)
  {
    v8 = 75;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_TILDE"]& 1) != 0)
  {
    v8 = 76;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_TOPI"]& 1) != 0)
  {
    v8 = 77;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_VINCENT"]& 1) != 0)
  {
    v8 = 78;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_XANDER"]& 1) != 0)
  {
    v8 = 79;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_YASMIN"]& 1) != 0)
  {
    v8 = 80;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_YELDA"]& 1) != 0)
  {
    v8 = 81;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_YELENA"]& 1) != 0)
  {
    v8 = 82;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_YUNA"]& 1) != 0)
  {
    v8 = 83;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_YUSHU"]& 1) != 0)
  {
    v8 = 84;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ZIV"]& 1) != 0)
  {
    v8 = 85;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MSMYA"]& 1) != 0)
  {
    v8 = 86;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_MSMYB"]& 1) != 0)
  {
    v8 = 87;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ZHCNC"]& 1) != 0)
  {
    v8 = 88;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ZHCND"]& 1) != 0)
  {
    v8 = 89;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_VIVNA"]& 1) != 0)
  {
    v8 = 90;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_VIVNB"]& 1) != 0)
  {
    v8 = 91;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_VIVNC"]& 1) != 0)
  {
    v8 = 92;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_VIVND"]& 1) != 0)
  {
    v8 = 93;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENAUC"]& 1) != 0)
  {
    v8 = 94;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENAUD"]& 1) != 0)
  {
    v8 = 95;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ITITC"]& 1) != 0)
  {
    v8 = 96;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ITITD"]& 1) != 0)
  {
    v8 = 97;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_FRFRC"]& 1) != 0)
  {
    v8 = 98;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_FRFRD"]& 1) != 0)
  {
    v8 = 99;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENUSWORKOUTA"]& 1) != 0)
  {
    v8 = 100;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENUSWORKOUTB"]& 1) != 0)
  {
    v8 = 101;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENUSWORKOUTC"]& 1) != 0)
  {
    v8 = 102;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_ENUSWORKOUTD"]& 1) != 0)
  {
    v8 = 103;
  }

  else if (([(__CFString *)v7 isEqualToString:@"VOICENAME_PTPTA"]& 1) != 0)
  {
    v8 = 104;
  }

  else if ([(__CFString *)v7 isEqualToString:@"VOICENAME_PTPTB"])
  {
    v8 = 105;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getVoiceAccentWithVoiceInfo:(id)info
{
  languageCode = [info languageCode];
  v4 = [SIUtilities convertLanguageCodeToSchemaLocale:languageCode];

  return [ADAssistantPropertiesUtils SISchemaLocaleToSISchemaISOLocale:v4];
}

- (int)_getVoiceGenderWithVoiceInfo:(id)info
{
  gender = [info gender];

  return [ADAssistantPropertiesUtils SISchemaVoiceGenderFromAFVoiceGender:gender];
}

- (id)_getInputLocale
{
  v2 = objc_alloc_init(SISchemaISOLocale);
  v3 = +[ADPreferences sharedPreferences];
  languageCode = [v3 languageCode];

  if (languageCode)
  {
    v5 = [ADAssistantPropertiesUtils SISchemaLocaleToSISchemaISOLocale:[SIUtilities convertLanguageCodeToSchemaLocale:languageCode]];

    v2 = v5;
  }

  return v2;
}

- (BOOL)_getIsAssistantEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v2 assistantIsEnabled];

  return assistantIsEnabled;
}

- (int)_getGenAIAgent
{
  v2 = 2 * (+[GATSettings getGenAIAgent]== 1);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADAssistantProperties _getGenAIAgent]";
    v7 = 1024;
    v8 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #ODD: genAIAgent=%d", &v5, 0x12u);
  }

  return v2;
}

- (BOOL)_getIsChatGPTSetUpPrompts
{
  v2 = +[GATSettings setupPrompt];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADAssistantProperties _getIsChatGPTSetUpPrompts]";
    v7 = 1024;
    v8 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #ODD: prompt=%d", &v5, 0x12u);
  }

  return v2;
}

- (int)_getChatGPTAccountType
{
  v2 = +[GATSettings accountType];
  if ((v2 - 1) < 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADAssistantProperties _getChatGPTAccountType]";
    v8 = 1024;
    v9 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #ODD: type=%d", &v6, 0x12u);
  }

  return v3;
}

- (BOOL)_getIsChatGPTConfirmationAlwaysRequired
{
  v2 = +[GATSettings useConfirmationPrompts];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADAssistantProperties _getIsChatGPTConfirmationAlwaysRequired]";
    v7 = 1024;
    v8 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #ODD: confirmation=%d", &v5, 0x12u);
  }

  return v2;
}

- (BOOL)_getIsGenAIEnabled
{
  v2 = +[GATSettings isEnabled];
  v3 = AFMontaraRestricted() ^ 1;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "[ADAssistantProperties _getIsGenAIEnabled]";
    v8 = 1024;
    v9 = v2;
    v10 = 1024;
    v11 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #ODD: enabled=%d allowed=%d", &v6, 0x18u);
  }

  return v3 & v2;
}

- (BOOL)_getIsAppleIntelligenceAvailable
{
  isDeviceEligible = [sub_100138F44() isDeviceEligible];
  v6 = 2;
  v3 = [sub_100138F44() shouldBeShownInSettingsReturningAvailabilityStatus:&v6];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v8 = "[ADAssistantProperties _getIsAppleIntelligenceAvailable]";
    v9 = 1024;
    v10 = v3;
    v11 = 2048;
    v12 = v6;
    v13 = 1024;
    v14 = isDeviceEligible;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #ODD: isAvailableInSettings=%d availabilityStatus=%ld isDeviceEligible=%d", buf, 0x22u);
  }

  if (v6 == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_getIsAppleIntelligenceHardwareCapable
{
  v2 = AFHasGMSCapabilityUnembargoed();
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADAssistantProperties _getIsAppleIntelligenceHardwareCapable]";
    v7 = 1024;
    v8 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #ODD: %d", &v5, 0x12u);
  }

  return v2;
}

- (BOOL)_getIsAppleIntelligenceEnabled
{
  v2 = objc_alloc_init(CSFGMOptIn);
  isOptedIn = [v2 isOptedIn];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADAssistantProperties _getIsAppleIntelligenceEnabled]";
    v8 = 1024;
    v9 = isOptedIn;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #ODD: %d", &v6, 0x12u);
  }

  return isOptedIn;
}

- (id)_getODDHomeKitProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADAssistantProperties _getODDHomeKitProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDHomeKitProperties);
  [v4 setHasHomekitHome:{-[ADAssistantProperties _getHasHomekitHome](self, "_getHasHomekitHome")}];

  return v4;
}

- (id)_getODDOptInProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADAssistantProperties _getODDOptInProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDOptInProperties);
  [v4 setIsMteUploadEnabled:{-[ADAssistantProperties _getIsMteUploadEnabled](self, "_getIsMteUploadEnabled")}];
  [v4 setDataSharingOptInStatus:{-[ADAssistantProperties _getSiriDataSharingOptInStatus](self, "_getSiriDataSharingOptInStatus")}];
  _getGradingOptInStateChanges = [(ADAssistantProperties *)self _getGradingOptInStateChanges];
  [v4 setGradingOptInStateChanges:_getGradingOptInStateChanges];

  [v4 setIsServerUserDataSyncEnabled:{-[ADAssistantProperties _getIsServerUserDataSyncEnabled](self, "_getIsServerUserDataSyncEnabled")}];

  return v4;
}

- (id)_getODDVoiceProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[ADAssistantProperties _getODDVoiceProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v9, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDVoiceProperties);
  v5 = +[ADPreferences sharedPreferences];
  outputVoice = [v5 outputVoice];

  [v4 setGender:{-[ADAssistantProperties _getVoiceGenderWithVoiceInfo:](self, "_getVoiceGenderWithVoiceInfo:", outputVoice)}];
  v7 = [(ADAssistantProperties *)self _getVoiceAccentWithVoiceInfo:outputVoice];
  [v4 setAccent:v7];

  [v4 setName:{-[ADAssistantProperties _getVoiceNameWithVoiceInfo:](self, "_getVoiceNameWithVoiceInfo:", outputVoice)}];

  return v4;
}

- (id)_getAppleIntelligenceProperties
{
  v3 = objc_alloc_init(ODDSiriSchemaODDAppleIntelligenceProperties);
  _getIsAppleIntelligenceEnabled = [(ADAssistantProperties *)self _getIsAppleIntelligenceEnabled];
  [v3 setIsAppleIntelligenceEnabled:_getIsAppleIntelligenceEnabled];
  [v3 setIsAppleIntelligenceHardwareCapable:{-[ADAssistantProperties _getIsAppleIntelligenceHardwareCapable](self, "_getIsAppleIntelligenceHardwareCapable")}];
  [v3 setIsAppleIntelligenceAvailable:{-[ADAssistantProperties _getIsAppleIntelligenceAvailable](self, "_getIsAppleIntelligenceAvailable")}];
  if (_getIsAppleIntelligenceEnabled)
  {
    _getIsGenAIEnabled = [(ADAssistantProperties *)self _getIsGenAIEnabled];
    [v3 setIsChatGPTEnabled:_getIsGenAIEnabled];
    if (_getIsGenAIEnabled)
    {
      [v3 addGenAIAgentsEnabled:{-[ADAssistantProperties _getGenAIAgent](self, "_getGenAIAgent")}];
      [v3 setIsGenAIConfirmationAlwaysRequired:{-[ADAssistantProperties _getIsChatGPTConfirmationAlwaysRequired](self, "_getIsChatGPTConfirmationAlwaysRequired")}];
      [v3 setGenAIAccountType:{-[ADAssistantProperties _getChatGPTAccountType](self, "_getChatGPTAccountType")}];
      [v3 setIsGenAISetUpPrompts:{-[ADAssistantProperties _getIsChatGPTSetUpPrompts](self, "_getIsChatGPTSetUpPrompts")}];
      [v3 setIsChatGPTConfirmationAlwaysRequired:{-[ADAssistantProperties _getIsChatGPTConfirmationAlwaysRequired](self, "_getIsChatGPTConfirmationAlwaysRequired")}];
      [v3 setChatGPTAccountType:{-[ADAssistantProperties _getChatGPTAccountType](self, "_getChatGPTAccountType")}];
      [v3 setIsChatGPTSetUpPrompts:{-[ADAssistantProperties _getIsChatGPTSetUpPrompts](self, "_getIsChatGPTSetUpPrompts")}];
      goto LABEL_6;
    }
  }

  else
  {
    [v3 setIsChatGPTEnabled:0];
  }

  [v3 addGenAIAgentsEnabled:1];
LABEL_6:

  return v3;
}

- (id)getODDAssistantProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[ADAssistantProperties getODDAssistantProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v11, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDAssistantProperties);
  [v4 setIsAssistantEnabled:{-[ADAssistantProperties _getIsAssistantEnabled](self, "_getIsAssistantEnabled")}];
  _getInputLocale = [(ADAssistantProperties *)self _getInputLocale];
  [v4 setInputLocale:_getInputLocale];

  [v4 setListenFor:{-[ADAssistantProperties _getListenForSettings](self, "_getListenForSettings")}];
  [v4 setIsPreciseLocationEnabled:{-[ADAssistantProperties _getIsPreciseLocationEnabled](self, "_getIsPreciseLocationEnabled")}];
  _getODDVoiceProperties = [(ADAssistantProperties *)self _getODDVoiceProperties];
  [v4 setVoice:_getODDVoiceProperties];

  _getAppleIntelligenceProperties = [(ADAssistantProperties *)self _getAppleIntelligenceProperties];
  [v4 setAppleIntelligence:_getAppleIntelligenceProperties];

  _getODDOptInProperties = [(ADAssistantProperties *)self _getODDOptInProperties];
  [v4 setOptIn:_getODDOptInProperties];

  _getODDHomeKitProperties = [(ADAssistantProperties *)self _getODDHomeKitProperties];
  [v4 setHomeKit:_getODDHomeKitProperties];

  [v4 setLocationAccessPermission:{-[ADAssistantProperties _getLocationAccessPermission](self, "_getLocationAccessPermission")}];

  return v4;
}

@end
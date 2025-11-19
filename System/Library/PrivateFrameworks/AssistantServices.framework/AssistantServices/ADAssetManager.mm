@interface ADAssetManager
+ (ADAssetManager)sharedInstance;
- (ADAssetManager)init;
- (ADAssetManager)initWithLanguageCode:(id)a3 speechAssetManager:(id)a4 cdmClient:(id)a5 morphunAssetManager:(id)a6 supportsSiriUoD:(BOOL)a7 supportsSiriHybridUoD:(BOOL)a8;
- (id)_fetchAssetStatusForLanguage:(id)a3;
- (id)assetsAvailableStatusForLanguage:(id)a3;
- (void)_checkAssetsStatusForIntervalRecording;
- (void)_emitUODAssetPreparedEventWithLanguage:(id)a3 elapsed:(unsigned int)a4;
- (void)_recordAssetsNeededForLanguage:(id)a3 resetPrevious:(BOOL)a4;
- (void)_registerAssetStatusTrackers;
- (void)_registerCDMStatusTracker;
- (void)_subscribeToMorphunAssetStatusForLanguage:(id)a3;
- (void)addAvailabilityObserver:(id)a3;
- (void)assetStatus:(id)a3;
- (void)assetsAvailableForLocale:(id)a3 withType:(int64_t)a4;
- (void)assetsUnavailableWithType:(int64_t)a3;
- (void)attentionAssetStatus:(id)a3;
- (void)dumpAssistantStateChunk:(id)a3;
- (void)fetchAssetsAvailabilityForLanguage:(id)a3 completion:(id)a4;
- (void)languageCodeWasChangedTo:(id)a3;
- (void)notifyObserversAssetAvailabilityChanged;
- (void)notifyObserversLanguageCodeChanged:(id)a3;
- (void)removeAvailabilityObserver:(id)a3;
@end

@implementation ADAssetManager

+ (ADAssetManager)sharedInstance
{
  if (qword_100590680 != -1)
  {
    dispatch_once(&qword_100590680, &stru_1005177C0);
  }

  v3 = qword_100590678;

  return v3;
}

- (void)dumpAssistantStateChunk:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002407C0;
  v9[3] = &unk_10051CF08;
  v10 = a3;
  v4 = v10;
  v5 = objc_retainBlock(v9);
  v6 = [NSMutableDictionary alloc];
  v7 = [(ADAssetManager *)self assetsAvailableStatusForLanguage:self->_currentLanguageCode];
  v8 = [v6 initWithDictionary:v7 copyItems:1];

  [v8 setValue:self->_currentLanguageCode forKey:@"LANGUAGE"];
  (v5[2])(v5, v8);
}

- (void)_emitUODAssetPreparedEventWithLanguage:(id)a3 elapsed:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_alloc_init(SADSchemaSADUODAssetsPrepared);
  v7 = [v5 uppercaseString];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v9 = [NSString stringWithFormat:@"LOCALE_%@", v8];

  v10 = v9;
  if ([v10 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
  {
    v11 = 0;
  }

  else if ([v10 isEqualToString:@"LOCALE_AR_AE"])
  {
    v11 = 1;
  }

  else if ([v10 isEqualToString:@"LOCALE_AR_SA"])
  {
    v11 = 2;
  }

  else if ([v10 isEqualToString:@"LOCALE_CA_ES"])
  {
    v11 = 3;
  }

  else if ([v10 isEqualToString:@"LOCALE_CS_CZ"])
  {
    v11 = 4;
  }

  else if ([v10 isEqualToString:@"LOCALE_DA_DK"])
  {
    v11 = 5;
  }

  else if ([v10 isEqualToString:@"LOCALE_DE_AT"])
  {
    v11 = 6;
  }

  else if ([v10 isEqualToString:@"LOCALE_DE_CH"])
  {
    v11 = 7;
  }

  else if ([v10 isEqualToString:@"LOCALE_DE_DE"])
  {
    v11 = 8;
  }

  else if ([v10 isEqualToString:@"LOCALE_EL_GR"])
  {
    v11 = 9;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_AE"])
  {
    v11 = 10;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_AU"])
  {
    v11 = 11;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_CA"])
  {
    v11 = 12;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_GB"])
  {
    v11 = 13;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_ID"])
  {
    v11 = 14;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_IE"])
  {
    v11 = 15;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_IN"])
  {
    v11 = 16;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_MY"])
  {
    v11 = 17;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_NZ"])
  {
    v11 = 18;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_PH"])
  {
    v11 = 19;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_SG"])
  {
    v11 = 20;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_SA"])
  {
    v11 = 21;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_US"])
  {
    v11 = 22;
  }

  else if ([v10 isEqualToString:@"LOCALE_EN_ZA"])
  {
    v11 = 23;
  }

  else if ([v10 isEqualToString:@"LOCALE_ES_CL"])
  {
    v11 = 24;
  }

  else if ([v10 isEqualToString:@"LOCALE_ES_CO"])
  {
    v11 = 25;
  }

  else if ([v10 isEqualToString:@"LOCALE_ES_ES"])
  {
    v11 = 26;
  }

  else if ([v10 isEqualToString:@"LOCALE_ES_MX"])
  {
    v11 = 27;
  }

  else if ([v10 isEqualToString:@"LOCALE_ES_US"])
  {
    v11 = 28;
  }

  else if ([v10 isEqualToString:@"LOCALE_FI_FI"])
  {
    v11 = 29;
  }

  else if ([v10 isEqualToString:@"LOCALE_FR_BE"])
  {
    v11 = 30;
  }

  else if ([v10 isEqualToString:@"LOCALE_FR_CA"])
  {
    v11 = 31;
  }

  else if ([v10 isEqualToString:@"LOCALE_FR_CH"])
  {
    v11 = 32;
  }

  else if ([v10 isEqualToString:@"LOCALE_FR_FR"])
  {
    v11 = 33;
  }

  else if ([v10 isEqualToString:@"LOCALE_HE_IL"])
  {
    v11 = 34;
  }

  else if ([v10 isEqualToString:@"LOCALE_HI_IN"])
  {
    v11 = 35;
  }

  else if ([v10 isEqualToString:@"LOCALE_HR_HR"])
  {
    v11 = 36;
  }

  else if ([v10 isEqualToString:@"LOCALE_HU_HU"])
  {
    v11 = 37;
  }

  else if ([v10 isEqualToString:@"LOCALE_ID_ID"])
  {
    v11 = 38;
  }

  else if ([v10 isEqualToString:@"LOCALE_IT_CH"])
  {
    v11 = 39;
  }

  else if ([v10 isEqualToString:@"LOCALE_IT_IT"])
  {
    v11 = 40;
  }

  else if ([v10 isEqualToString:@"LOCALE_JA_JP"])
  {
    v11 = 41;
  }

  else if ([v10 isEqualToString:@"LOCALE_KO_KR"])
  {
    v11 = 42;
  }

  else if ([v10 isEqualToString:@"LOCALE_MS_MY"])
  {
    v11 = 43;
  }

  else if ([v10 isEqualToString:@"LOCALE_NB_NO"])
  {
    v11 = 44;
  }

  else if ([v10 isEqualToString:@"LOCALE_NL_BE"])
  {
    v11 = 45;
  }

  else if ([v10 isEqualToString:@"LOCALE_NL_NL"])
  {
    v11 = 46;
  }

  else if ([v10 isEqualToString:@"LOCALE_PL_PL"])
  {
    v11 = 47;
  }

  else if ([v10 isEqualToString:@"LOCALE_PT_BR"])
  {
    v11 = 48;
  }

  else if ([v10 isEqualToString:@"LOCALE_PT_PT"])
  {
    v11 = 49;
  }

  else if ([v10 isEqualToString:@"LOCALE_RO_RO"])
  {
    v11 = 50;
  }

  else if ([v10 isEqualToString:@"LOCALE_RU_RU"])
  {
    v11 = 51;
  }

  else if ([v10 isEqualToString:@"LOCALE_SK_SK"])
  {
    v11 = 52;
  }

  else if ([v10 isEqualToString:@"LOCALE_SV_SE"])
  {
    v11 = 53;
  }

  else if ([v10 isEqualToString:@"LOCALE_TH_TH"])
  {
    v11 = 54;
  }

  else if ([v10 isEqualToString:@"LOCALE_TR_TR"])
  {
    v11 = 55;
  }

  else if ([v10 isEqualToString:@"LOCALE_UK_UA"])
  {
    v11 = 56;
  }

  else if ([v10 isEqualToString:@"LOCALE_VI_VN"])
  {
    v11 = 57;
  }

  else if ([v10 isEqualToString:@"LOCALE_WUU_CN"])
  {
    v11 = 58;
  }

  else if ([v10 isEqualToString:@"LOCALE_YUE_CN"])
  {
    v11 = 59;
  }

  else if ([v10 isEqualToString:@"LOCALE_ZH_CN"])
  {
    v11 = 60;
  }

  else if ([v10 isEqualToString:@"LOCALE_ZH_HK"])
  {
    v11 = 61;
  }

  else if ([v10 isEqualToString:@"LOCALE_ZH_TW"])
  {
    v11 = 62;
  }

  else
  {
    v11 = 0;
  }

  [v6 setLocale:v11];
  [v6 setElapsedSeconds:v4];
  v12 = objc_alloc_init(SADSchemaSADClientEvent);
  [v12 setUodAssetsPrepared:v6];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADAssetManager _emitUODAssetPreparedEventWithLanguage:elapsed:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Emitting asset prepared event", buf, 0xCu);
  }

  v14 = +[AssistantSiriAnalytics sharedStream];
  [v14 emitMessage:v12];
}

- (void)_checkAssetsStatusForIntervalRecording
{
  if ([(ADAssetManager *)self _shouldLogAssetsPreparedEvent])
  {
    currentLanguageCode = self->_currentLanguageCode;
    if (currentLanguageCode)
    {
      v4 = [(NSString *)currentLanguageCode stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v5 = [(ADAssetManager *)self _fetchAssetStatusForLanguage:self->_currentLanguageCode];
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = 136315650;
        v13 = "[ADAssetManager _checkAssetsStatusForIntervalRecording]";
        v14 = 2112;
        v15 = v4;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s For measuring asset fetch time, status for %@: %@", &v12, 0x20u);
      }

      if (AFUODStatusSupportedFull())
      {
        v7 = [(NSMutableDictionary *)self->_assetFetchIntervalBeginDates objectForKey:v4];
        if (v7)
        {
          [(NSMutableDictionary *)self->_assetFetchIntervalBeginDates removeObjectForKey:v4];
          v8 = +[NSDate date];
          [v8 timeIntervalSinceDate:v7];
          v10 = llround(v9);

          if (v10)
          {
            v11 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v12 = 136315906;
              v13 = "[ADAssetManager _checkAssetsStatusForIntervalRecording]";
              v14 = 2112;
              v15 = v4;
              v16 = 2112;
              v17 = v7;
              v18 = 1024;
              v19 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Asset fetch for %@ began at %@ and took %u seconds", &v12, 0x26u);
            }

            [(ADAssetManager *)self _emitUODAssetPreparedEventWithLanguage:v4 elapsed:v10];
          }
        }
      }
    }
  }
}

- (void)_recordAssetsNeededForLanguage:(id)a3 resetPrevious:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(ADAssetManager *)self _shouldLogAssetsPreparedEvent])
  {
    goto LABEL_11;
  }

  v7 = +[AFPreferences sharedPreferences];
  if (([v7 assistantIsEnabled] & 1) == 0)
  {

    goto LABEL_11;
  }

  currentLanguageCode = self->_currentLanguageCode;

  if (!currentLanguageCode)
  {
LABEL_11:
    v9 = v6;
    goto LABEL_12;
  }

  v9 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v10 = [(NSMutableDictionary *)self->_assetFetchIntervalBeginDates valueForKey:v9];
  if (!v10 || v4)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADAssetManager _recordAssetsNeededForLanguage:resetPrevious:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Saving date when %@ assets are first known to be needed", &v14, 0x16u);
    }

    assetFetchIntervalBeginDates = self->_assetFetchIntervalBeginDates;
    v13 = +[NSDate date];
    [(NSMutableDictionary *)assetFetchIntervalBeginDates setValue:v13 forKey:v9];
  }

LABEL_12:
}

- (void)_subscribeToMorphunAssetStatusForLanguage:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:self->_currentLanguageCode] & 1) == 0)
  {
    morphunAssetsManager = self->_morphunAssetsManager;
    v6 = [[NSLocale alloc] initWithLocaleIdentifier:self->_currentLanguageCode];
    [(MorphunAssets *)morphunAssetsManager unsubscribeFromLocale:v6];
  }

  objc_initWeak(&location, self);
  v7 = self->_morphunAssetsManager;
  v8 = [NSLocale localeWithLocaleIdentifier:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100241520;
  v10[3] = &unk_100517838;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [(MorphunAssets *)v7 subscribeToLocale:v8 withCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)_fetchAssetStatusForLanguage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [NSLocale localeWithLocaleIdentifier:v4];
  v6 = [v5 languageCode];
  v7 = [SFUtilities languageStringForLocaleString:v4];
  v35 = [(NSDictionary *)self->_speechAssetStatusForLocale objectForKeyedSubscript:v7];
  if (AFOfflineDictationStatusStringIsInstalled())
  {
    if (AFIsNano() && AFDeviceSupportsFullSiriUOD())
    {
      v8 = [(NSDictionary *)self->_speechAssetTasksForLocale objectForKey:v7, v35];
      v9 = [v8 supportsAssistant];
      if ((v9 & 1) == 0)
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "[ADAssetManager _fetchAssetStatusForLanguage:]";
          v43 = 2112;
          *v44 = v7;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Speech asset for %@ does not support Assistant.", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [(NSMutableDictionary *)self->_nlAssetStatus objectForKeyedSubscript:v4, v35];
  v37 = v7;
  if ([v11 BOOLValue])
  {
    v12 = 1;
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_nlAssetStatus objectForKeyedSubscript:v6];
    v12 = [v13 BOOLValue];
  }

  v14 = [(NSMutableDictionary *)self->_nlRouterAssetStatus objectForKeyedSubscript:v4];
  if ([v14 BOOLValue])
  {
    v15 = 1;
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_nlRouterAssetStatus objectForKeyedSubscript:v6];
    v15 = [v16 BOOLValue];
  }

  v17 = [(MorphunAssets *)self->_morphunAssetsManager isAssetReadyForLocale:v5];
  if (v12)
  {
    v18 = 1;
  }

  else if (_AFPreferencesSiriXNLAssetOverride())
  {
    v19 = AFSiriLogContextDaemon;
    v18 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v42 = "[ADAssetManager _fetchAssetStatusForLanguage:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s NL asset overriden as available", buf, 0xCu);
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [(NSDictionary *)self->_attentionAssetStatus objectForKeyedSubscript:v4];
  v38 = v6;
  if ([v20 BOOLValue])
  {
    v21 = 1;
  }

  else
  {
    v22 = [(NSDictionary *)self->_attentionAssetStatus objectForKeyedSubscript:v6];
    v21 = [v22 BOOLValue];
  }

  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    supportsSiriUoD = self->_supportsSiriUoD;
    supportsSiriHybridUoD = self->_supportsSiriHybridUoD;
    *buf = 136317186;
    v42 = "[ADAssetManager _fetchAssetStatusForLanguage:]";
    v43 = 1024;
    *v44 = v9;
    *&v44[4] = 1024;
    *&v44[6] = v18;
    v45 = 1024;
    v46 = v17;
    v47 = 1024;
    v48 = v21;
    v49 = 1024;
    v50 = v15;
    v51 = 2114;
    v52 = v4;
    v53 = 1024;
    v54 = supportsSiriUoD;
    v55 = 1024;
    v56 = supportsSiriHybridUoD;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Retrieved asset status ASR: %u, NL: %u, Morphun: %u, Attention: %u, NLRouter: %u, (lang:%{public}@, uod:%d, hybrid:%d)", buf, 0x40u);
  }

  if (self->_supportsSiriUoD && (self->_speechAssetManager || (v26 = AFSiriLogContextDaemon, !os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)) || (*buf = 136315138, v42 = "[ADAssetManager _fetchAssetStatusForLanguage:]", _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s UOD without a speech manager", buf, 0xCu), self->_supportsSiriUoD)) || self->_supportsSiriHybridUoD)
  {
    if (!self->_cdmClient)
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v42 = "[ADAssetManager _fetchAssetStatusForLanguage:]";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s UOD or Hybrid without a CDM client", buf, 0xCu);
      }
    }
  }

  v39[0] = AFAssetManagerNLAssetsTag;
  v28 = [NSNumber numberWithBool:v18];
  v40[0] = v28;
  v39[1] = AFAssetManagerSpeechAssetsTag;
  v29 = [NSNumber numberWithBool:v9];
  v40[1] = v29;
  v39[2] = AFAssetManagerMorphunAssetsTag;
  v30 = [NSNumber numberWithBool:v17];
  v40[2] = v30;
  v39[3] = AFAssetManagerAttentionAssetsTag;
  v31 = [NSNumber numberWithBool:v21];
  v40[3] = v31;
  v39[4] = AFAssetManagerNLRouterAssetsTag;
  v32 = [NSNumber numberWithBool:v15];
  v40[4] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:5];

  if ([(ADAssetManager *)self _shouldLogAssetsPreparedEvent]&& (AFUODStatusSupportedFull() & 1) == 0)
  {
    [(ADAssetManager *)self _recordAssetsNeededForLanguage:v4 resetPrevious:0];
  }

  return v33;
}

- (void)_registerAssetStatusTrackers
{
  objc_initWeak(&location, self);
  if (self->_supportsSiriUoD)
  {
    delegateQueue = self->_delegateQueue;
    group = self->_group;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002421C0;
    block[3] = &unk_10051B5F0;
    objc_copyWeak(&v22, &location);
    dispatch_group_async(group, delegateQueue, block);
    v6 = self->_delegateQueue;
    v5 = self->_group;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10024237C;
    v19[3] = &unk_10051B5F0;
    objc_copyWeak(&v20, &location);
    dispatch_group_async(v5, v6, v19);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADAssetManager _registerAssetStatusTrackers]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Device does not support full Siri UoD, not registering assets change for ASR assets", buf, 0xCu);
    }
  }

  if (self->_supportsSiriUoD || self->_supportsSiriHybridUoD)
  {
    v9 = self->_delegateQueue;
    v8 = self->_group;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100242534;
    v17[3] = &unk_10051B5F0;
    objc_copyWeak(&v18, &location);
    dispatch_group_async(v8, v9, v17);
    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADAssetManager _registerAssetStatusTrackers]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Device does not support full Siri UoD or Hybrid UoD, not registering assets change for NL assets", buf, 0xCu);
    }
  }

  if (self->_supportsSiriUoD || self->_supportsSiriHybridUoD)
  {
    p_delegateQueue = &self->_delegateQueue;
    v10 = self->_delegateQueue;
    v11 = p_delegateQueue[1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100242578;
    v15[3] = &unk_10051B5F0;
    objc_copyWeak(&v16, &location);
    dispatch_group_async(v11, v10, v15);
    objc_destroyWeak(&v16);
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADAssetManager _registerAssetStatusTrackers]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Device does not support full Siri UoD or Hybrid UoD, not registering assets change for Morphun assets", buf, 0xCu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)_registerCDMStatusTracker
{
  v3 = os_signpost_id_generate(AFSiriLogContextDaemon);
  v4 = AFSiriLogContextDaemon;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "RegisterAssetNL", &unk_100468A0D, &v17, 2u);
  }

  v6 = objc_alloc_init(CDMClient);
  cdmClient = self->_cdmClient;
  self->_cdmClient = v6;

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[ADAssetManager _registerCDMStatusTracker]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Registering NL delegate", &v17, 0xCu);
  }

  [(CDMClient *)self->_cdmClient registerWithAssetsDelegate:self withType:0];
  v9 = AFSiriLogContextDaemon;
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "RegisterAssetNL", &unk_100468A0D, &v17, 2u);
  }

  v11 = os_signpost_id_generate(AFSiriLogContextDaemon);
  v12 = AFSiriLogContextDaemon;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RegisterAssetNLRouter", &unk_100468A0D, &v17, 2u);
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[ADAssetManager _registerCDMStatusTracker]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Registering NL router delegate", &v17, 0xCu);
  }

  [(CDMClient *)self->_cdmClient registerWithAssetsDelegate:self withType:1];
  v15 = AFSiriLogContextDaemon;
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v11, "RegisterAssetNLRouter", &unk_100468A0D, &v17, 2u);
  }
}

- (void)assetsUnavailableWithType:(int64_t)a3
{
  objc_initWeak(&location, self);
  if (a3 == 1)
  {
    group = self->_group;
    queue = self->_queue;
    v7 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100242CF8;
    block[3] = &unk_10051B5F0;
    objc_copyWeak(&v11, &location);
    v8 = block;
    goto LABEL_5;
  }

  if (!a3)
  {
    group = self->_group;
    queue = self->_queue;
    v7 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100242BB0;
    v12[3] = &unk_10051B5F0;
    objc_copyWeak(&v13, &location);
    v8 = v12;
LABEL_5:
    dispatch_group_async(group, queue, v8);
    objc_destroyWeak(v7 + 4);
    goto LABEL_8;
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = "[ADAssetManager assetsUnavailableWithType:]";
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unknown NL delegate type", buf, 0xCu);
  }

LABEL_8:
  objc_destroyWeak(&location);
}

- (void)assetsAvailableForLocale:(id)a3 withType:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  if (a4 == 1)
  {
    group = self->_group;
    queue = self->_queue;
    v9 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002431CC;
    v14[3] = &unk_10051C650;
    objc_copyWeak(&v16, &location);
    v15 = v6;
    dispatch_group_async(group, queue, v14);
    v10 = v15;
    goto LABEL_5;
  }

  if (!a4)
  {
    v7 = self->_group;
    v8 = self->_queue;
    v9 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100243024;
    block[3] = &unk_10051C650;
    objc_copyWeak(&v19, &location);
    v18 = v6;
    dispatch_group_async(v7, v8, block);
    v10 = v18;
LABEL_5:

    objc_destroyWeak(v9 + 5);
    goto LABEL_8;
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v22 = "[ADAssetManager assetsAvailableForLocale:withType:]";
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unknown NL delegate type", buf, 0xCu);
  }

LABEL_8:
  objc_destroyWeak(&location);
}

- (void)attentionAssetStatus:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  group = self->_group;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100243440;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_group_async(group, queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)assetStatus:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  group = self->_group;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100243684;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_group_async(group, queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)notifyObserversLanguageCodeChanged:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_availabilityObservers count])
  {
    v5 = [(NSMutableSet *)self->_availabilityObservers copy];
    objc_initWeak(&location, self);
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024391C;
    v8[3] = &unk_1005177E8;
    objc_copyWeak(&v11, &location);
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_async(queue, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)notifyObserversAssetAvailabilityChanged
{
  if ([(NSMutableSet *)self->_availabilityObservers count])
  {
    v3 = [(NSMutableSet *)self->_availabilityObservers copy];
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100243B0C;
    block[3] = &unk_10051C650;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    v5 = v3;
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)removeAvailabilityObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100243CE0;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addAvailabilityObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100243E04;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)languageCodeWasChangedTo:(id)a3
{
  v4 = a3;
  if (self->_supportsSiriUoD || self->_supportsSiriHybridUoD)
  {
    objc_initWeak(location, self);
    p_delegateQueue = &self->_delegateQueue;
    delegateQueue = self->_delegateQueue;
    v6 = p_delegateQueue[1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100243FE8;
    v9[3] = &unk_10051C650;
    objc_copyWeak(&v11, location);
    v10 = v4;
    dispatch_group_notify(v6, delegateQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[ADAssetManager languageCodeWasChangedTo:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Device does not support full Siri UoD or Hybrid UoD, not registering assets change for Morphun assets", location, 0xCu);
    }
  }
}

- (void)fetchAssetsAvailabilityForLanguage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 length])
    {
      if (self->_supportsSiriUoD || self->_supportsSiriHybridUoD)
      {
        objc_initWeak(location, self);
        group = self->_group;
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100244468;
        block[3] = &unk_1005180B0;
        objc_copyWeak(&v19, location);
        v17 = v6;
        v18 = v7;
        dispatch_group_notify(group, queue, block);

        objc_destroyWeak(&v19);
        objc_destroyWeak(location);
        goto LABEL_12;
      }

      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 136315138;
        *(location + 4) = "[ADAssetManager fetchAssetsAvailabilityForLanguage:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Siri UoD not supported. Returning empty assets status", location, 0xCu);
      }

      v15 = self->_queue;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100244450;
      v20[3] = &unk_10051CF58;
      v21 = v7;
      dispatch_async(v15, v20);
      v13 = v21;
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 136315138;
        *(location + 4) = "[ADAssetManager fetchAssetsAvailabilityForLanguage:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Input language code is nil. Returning empty assets status", location, 0xCu);
      }

      v12 = self->_queue;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100244438;
      v22[3] = &unk_10051CF58;
      v23 = v7;
      dispatch_async(v12, v22);
      v13 = v23;
    }

    goto LABEL_12;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 136315138;
    *(location + 4) = "[ADAssetManager fetchAssetsAvailabilityForLanguage:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Completion block is nil", location, 0xCu);
  }

LABEL_12:
}

- (id)assetsAvailableStatusForLanguage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADAssetManager assetsAvailableStatusForLanguage:]";
    v9 = "%s Input language code is nil. Returning nil assets status";
LABEL_13:
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v9, &buf, 0xCu);
    goto LABEL_11;
  }

  if (self->_supportsSiriUoD || self->_supportsSiriHybridUoD)
  {
    dispatch_group_wait(self->_group, 0xFFFFFFFFFFFFFFFFLL);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_100244718;
    v16 = sub_100244728;
    v17 = 0;
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100244730;
    block[3] = &unk_10051C588;
    p_buf = &buf;
    block[4] = self;
    v11 = v4;
    dispatch_sync(queue, block);
    v6 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    goto LABEL_5;
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADAssetManager assetsAvailableStatusForLanguage:]";
    v9 = "%s Siri UoD not supported. Returning nil assets status";
    goto LABEL_13;
  }

LABEL_11:
  v6 = 0;
LABEL_5:

  return v6;
}

- (ADAssetManager)initWithLanguageCode:(id)a3 speechAssetManager:(id)a4 cdmClient:(id)a5 morphunAssetManager:(id)a6 supportsSiriUoD:(BOOL)a7 supportsSiriHybridUoD:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v42.receiver = self;
  v42.super_class = ADAssetManager;
  v18 = [(ADAssetManager *)&v42 init];
  if (v18)
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = v40 = v14;
    dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INITIATED, 0);
    v20 = v39 = v15;

    v21 = dispatch_queue_create("com.apple.ADAssetManager", v20);
    queue = v18->_queue;
    v18->_queue = v21;

    v23 = dispatch_queue_create("com.apple.ADAssetManager.delegate", v20);
    delegateQueue = v18->_delegateQueue;
    v18->_delegateQueue = v23;

    v25 = dispatch_group_create();
    group = v18->_group;
    v18->_group = v25;

    v27 = +[AFPreferences sharedPreferences];
    v28 = [v27 languageCode];
    currentLanguageCode = v18->_currentLanguageCode;
    v18->_currentLanguageCode = v28;

    v30 = objc_opt_new();
    nlAssetStatus = v18->_nlAssetStatus;
    v18->_nlAssetStatus = v30;

    v32 = objc_opt_new();
    nlRouterAssetStatus = v18->_nlRouterAssetStatus;
    v18->_nlRouterAssetStatus = v32;

    objc_storeStrong(&v18->_currentLanguageCode, a3);
    v18->_supportsSiriUoD = a7;
    v18->_supportsSiriHybridUoD = a8;
    objc_storeStrong(&v18->_speechAssetManager, a4);
    objc_storeStrong(&v18->_cdmClient, a5);
    objc_storeStrong(&v18->_morphunAssetsManager, a6);
    v34 = +[NSMutableSet set];
    availabilityObservers = v18->_availabilityObservers;
    v18->_availabilityObservers = v34;

    [(ADAssetManager *)v18 _registerAssetStatusTrackers];
    v14 = v40;
    v36 = +[NSMutableDictionary dictionary];
    assetFetchIntervalBeginDates = v18->_assetFetchIntervalBeginDates;
    v18->_assetFetchIntervalBeginDates = v36;

    v15 = v39;
  }

  return v18;
}

- (ADAssetManager)init
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 languageCode];
  v5 = AFDeviceSupportsSiriUOD();
  v6 = [(ADAssetManager *)self initWithLanguageCode:v4 speechAssetManager:0 cdmClient:0 morphunAssetManager:0 supportsSiriUoD:v5 supportsSiriHybridUoD:AFDeviceSupportsHybridUOD()];

  return v6;
}

@end
@interface ADSiriAnalyticsGlobalDimensionMessageResolver
- (ADSiriAnalyticsGlobalDimensionMessageResolver)initWithQueue:(id)a3;
- (BOOL)handlesMessage:(id)a3;
- (id)_resolveDeviceFixedContext:(id)a3;
- (id)_resolveSiriAccountInformation:(id)a3;
- (void)resolveMessage:(id)a3 completion:(id)a4;
@end

@implementation ADSiriAnalyticsGlobalDimensionMessageResolver

- (id)_resolveSiriAccountInformation:(id)a3
{
  v3 = a3;
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 longLivedIdentifierUploadingEnabled];

  if (v5)
  {
    v6 = +[ADAccount activeAccount];
    v7 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v6 assistantIdentifier];
      v17 = 136315394;
      v18 = "[ADSiriAnalyticsGlobalDimensionMessageResolver _resolveSiriAccountInformation:]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #RPI: resolving DIMSchemaDIMSiriAccountInformation assistantIdentifier=%@", &v17, 0x16u);
    }

    v10 = [v6 assistantIdentifier];
    [v3 setSiriDeviceId:v10];

    v11 = +[ADPreferences sharedPreferences];
    v12 = [v11 sharedUserIdentifier];
    [v3 setSiriUserId:v12];

    v13 = [v6 speechIdentifier];
    [v3 setSiriSpeechId:v13];

    v14 = v3;
  }

  else
  {
    v15 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[ADSiriAnalyticsGlobalDimensionMessageResolver _resolveSiriAccountInformation:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s #RPI: resolving nil DIMSchemaDIMSiriAccountInformation", &v17, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)_resolveDeviceFixedContext:(id)a3
{
  v3 = a3;
  v4 = +[ADPreferences sharedPreferences];
  v5 = +[NSLocale currentLocale];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 countryCode];
    [v6 languageCode];
    if (v7)
      v8 = {;
      v9 = [v6 countryCode];
      v10 = [NSString stringWithFormat:@"%@-%@", v8, v9];
    }

    else
      v10 = {;
    }

    if (v10)
    {
      [v3 setSystemLocale:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", v10)}];
    }
  }

  v11 = [v4 languageCode];
  v53 = v11;
  if (v11)
  {
    v12 = [SIUtilities convertLanguageCodeToSchemaLocale:v11];
  }

  else
  {
    v12 = 0;
  }

  [v3 setSiriInputLocale:v12];
  v13 = objc_alloc_init(SISchemaVoiceSettings);
  [v13 setVoiceGender:0];
  v14 = [v4 outputVoice];
  v15 = [v14 gender];

  if (v15 == 2)
  {
    v16 = 1;
  }

  else
  {
    v17 = [v4 outputVoice];
    v18 = [v17 gender];

    if (v18 == 1)
    {
      v16 = 2;
    }

    else
    {
      v19 = [v4 outputVoice];
      v20 = [v19 gender];

      if (v20 != 3)
      {
        goto LABEL_18;
      }

      v16 = 3;
    }
  }

  [v13 setVoiceGender:v16];
LABEL_18:
  v21 = [v4 outputVoice];
  v22 = [v21 languageCode];

  if (v22)
  {
    [v13 setVoiceAccent:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", v22)}];
  }

  v51 = v22;
  v23 = [v4 outputVoice];
  v24 = [v23 name];
  [v13 setVoiceName:v24];

  [v3 setSiriVoiceSettings:v13];
  v25 = [v4 siriDataSharingOptInStatus] - 1;
  if (v25 < 3)
  {
    v26 = (v25 + 1);
  }

  else
  {
    v26 = 0;
  }

  [v3 setDataSharingOptInState:v26];
  v27 = [v4 searchQueriesDataSharingStatus];
  if (v27 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (v27 == 2);
  }

  [v3 setSearchDataOptOutState:v28];
  v29 = objc_alloc_init(NSDateFormatter);
  [v29 setDateFormat:@"ZZZZZ"];
  v30 = +[NSTimeZone localTimeZone];
  [v29 setTimeZone:v30];

  v31 = +[NSDate date];
  v32 = [v29 stringFromDate:v31];

  v50 = v32;
  [v3 setTimezoneOffset:v32];
  v33 = AFBuildVersion();
  [v3 setSystemBuild:v33];

  v34 = AFProductTypeForInstrumentation();
  [v3 setDeviceType:v34];

  v35 = [v4 countryCode];
  if (v35)
  {
    [v3 setCountryCode:{+[SIUtilities convertCountryCodeToSchemaCountryCode:](SIUtilities, "convertCountryCodeToSchemaCountryCode:", v35)}];
  }

  v49 = v35;
  v36 = +[ADHomeInfoManager sharedInfoManager];
  if ([v36 hasOptedInHH2])
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  [v3 setHomeKitConfiguration:v37];

  if (qword_100590550 != -1)
  {
    dispatch_once(&qword_100590550, &stru_100516C10);
  }

  v52 = v13;
  [v3 setIsStoreDemoMode:byte_100590549];
  if (([v3 hasTimeIntervalSince1970] & 1) == 0)
  {
    v38 = +[NSDate date];
    [v38 timeIntervalSince1970];
    [v3 setTimeIntervalSince1970:?];
  }

  v39 = [v4 productTypePrefix];
  [v3 setDataCollectionId:v39];

  v40 = [v6 languageCode];
  [v3 setEffectiveSystemLanguage:v40];
  v41 = +[NSLocale preferredLanguages];
  [v3 setPreferredLanguages:v41];
  v42 = objc_alloc_init(DIMSchemaEntitySyncSettings);
  v43 = +[AFPreferences sharedPreferences];
  [v42 setIsMediaEntitySyncEnabled:{objc_msgSend(v43, "isMediaEntitySyncDisabled") ^ 1}];

  [v3 setEntitySyncSettings:v42];
  v44 = objc_alloc_init(DIMSchemaDIMDataSharingSettings);
  [v44 setIsAppAnalyticsEnabled:sub_100216330()];
  [v44 setIsDiagnosticsAndUsageEnabled:AFDiagnosticsSubmissionAllowed()];
  [v3 setDataSharingSettings:v44];
  v45 = +[AFPreferences sharedPreferences];
  v46 = [v45 activeDictationLanguages];

  if (v46)
  {
    [v3 setAvailableDictationKeyboards:{objc_msgSend(v46, "count")}];
  }

  v47 = +[AFPreferences sharedPreferences];
  [v3 setIsLongLivedIDUploadDisabled:{objc_msgSend(v47, "longLivedIdentifierUploadingEnabled") ^ 1}];

  return v3;
}

- (void)resolveMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 deviceFixedContext];
  v9 = v8 != 0;

  if (v8)
  {
    v10 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADSiriAnalyticsGlobalDimensionMessageResolver resolveMessage:completion:]";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Resolving deviceFixedContext for message: %@", &v19, 0x16u);
    }

    v11 = [v6 deviceFixedContext];
    v12 = [(ADSiriAnalyticsGlobalDimensionMessageResolver *)self _resolveDeviceFixedContext:v11];
    [v6 setDeviceFixedContext:v12];
  }

  v13 = [v6 siriAccountInformation];

  if (v13)
  {
    v14 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADSiriAnalyticsGlobalDimensionMessageResolver resolveMessage:completion:]";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Resolving siriAccountInformation for message: %@", &v19, 0x16u);
    }

    v15 = [v6 siriAccountInformation];
    v16 = [(ADSiriAnalyticsGlobalDimensionMessageResolver *)self _resolveSiriAccountInformation:v15];
    [v6 setSiriAccountInformation:v16];

    v17 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADSiriAnalyticsGlobalDimensionMessageResolver resolveMessage:completion:]";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Firing off DIM logging for message: %@", &v19, 0x16u);
    }

    v18 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v18 asyncLogAnalyticsIdentifiersDIMEvents];

    v9 = 1;
  }

  v7[2](v7, v6, v9);
}

- (BOOL)handlesMessage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v4 deviceFixedContext];
  if (!v5)
  {
    v6 = [v4 siriAccountInformation];

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v7 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADSiriAnalyticsGlobalDimensionMessageResolver handlesMessage:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Handling message: %@", &v10, 0x16u);
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (ADSiriAnalyticsGlobalDimensionMessageResolver)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADSiriAnalyticsGlobalDimensionMessageResolver;
  v6 = [(ADSiriAnalyticsGlobalDimensionMessageResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end
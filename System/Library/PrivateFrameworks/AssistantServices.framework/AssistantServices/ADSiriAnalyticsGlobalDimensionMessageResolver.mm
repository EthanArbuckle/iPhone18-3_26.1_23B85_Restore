@interface ADSiriAnalyticsGlobalDimensionMessageResolver
- (ADSiriAnalyticsGlobalDimensionMessageResolver)initWithQueue:(id)queue;
- (BOOL)handlesMessage:(id)message;
- (id)_resolveDeviceFixedContext:(id)context;
- (id)_resolveSiriAccountInformation:(id)information;
- (void)resolveMessage:(id)message completion:(id)completion;
@end

@implementation ADSiriAnalyticsGlobalDimensionMessageResolver

- (id)_resolveSiriAccountInformation:(id)information
{
  informationCopy = information;
  v4 = +[AFPreferences sharedPreferences];
  longLivedIdentifierUploadingEnabled = [v4 longLivedIdentifierUploadingEnabled];

  if (longLivedIdentifierUploadingEnabled)
  {
    v6 = +[ADAccount activeAccount];
    v7 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      assistantIdentifier = [v6 assistantIdentifier];
      v17 = 136315394;
      v18 = "[ADSiriAnalyticsGlobalDimensionMessageResolver _resolveSiriAccountInformation:]";
      v19 = 2112;
      v20 = assistantIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #RPI: resolving DIMSchemaDIMSiriAccountInformation assistantIdentifier=%@", &v17, 0x16u);
    }

    assistantIdentifier2 = [v6 assistantIdentifier];
    [informationCopy setSiriDeviceId:assistantIdentifier2];

    v11 = +[ADPreferences sharedPreferences];
    sharedUserIdentifier = [v11 sharedUserIdentifier];
    [informationCopy setSiriUserId:sharedUserIdentifier];

    speechIdentifier = [v6 speechIdentifier];
    [informationCopy setSiriSpeechId:speechIdentifier];

    v14 = informationCopy;
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

- (id)_resolveDeviceFixedContext:(id)context
{
  contextCopy = context;
  v4 = +[ADPreferences sharedPreferences];
  v5 = +[NSLocale currentLocale];
  v6 = v5;
  if (v5)
  {
    countryCode = [v5 countryCode];
    [v6 languageCode];
    if (countryCode)
      v8 = {;
      countryCode2 = [v6 countryCode];
      v10 = [NSString stringWithFormat:@"%@-%@", v8, countryCode2];
    }

    else
      v10 = {;
    }

    if (v10)
    {
      [contextCopy setSystemLocale:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", v10)}];
    }
  }

  languageCode = [v4 languageCode];
  v53 = languageCode;
  if (languageCode)
  {
    v12 = [SIUtilities convertLanguageCodeToSchemaLocale:languageCode];
  }

  else
  {
    v12 = 0;
  }

  [contextCopy setSiriInputLocale:v12];
  v13 = objc_alloc_init(SISchemaVoiceSettings);
  [v13 setVoiceGender:0];
  outputVoice = [v4 outputVoice];
  gender = [outputVoice gender];

  if (gender == 2)
  {
    v16 = 1;
  }

  else
  {
    outputVoice2 = [v4 outputVoice];
    gender2 = [outputVoice2 gender];

    if (gender2 == 1)
    {
      v16 = 2;
    }

    else
    {
      outputVoice3 = [v4 outputVoice];
      gender3 = [outputVoice3 gender];

      if (gender3 != 3)
      {
        goto LABEL_18;
      }

      v16 = 3;
    }
  }

  [v13 setVoiceGender:v16];
LABEL_18:
  outputVoice4 = [v4 outputVoice];
  languageCode2 = [outputVoice4 languageCode];

  if (languageCode2)
  {
    [v13 setVoiceAccent:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", languageCode2)}];
  }

  v51 = languageCode2;
  outputVoice5 = [v4 outputVoice];
  name = [outputVoice5 name];
  [v13 setVoiceName:name];

  [contextCopy setSiriVoiceSettings:v13];
  v25 = [v4 siriDataSharingOptInStatus] - 1;
  if (v25 < 3)
  {
    v26 = (v25 + 1);
  }

  else
  {
    v26 = 0;
  }

  [contextCopy setDataSharingOptInState:v26];
  searchQueriesDataSharingStatus = [v4 searchQueriesDataSharingStatus];
  if (searchQueriesDataSharingStatus == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (searchQueriesDataSharingStatus == 2);
  }

  [contextCopy setSearchDataOptOutState:v28];
  v29 = objc_alloc_init(NSDateFormatter);
  [v29 setDateFormat:@"ZZZZZ"];
  v30 = +[NSTimeZone localTimeZone];
  [v29 setTimeZone:v30];

  v31 = +[NSDate date];
  v32 = [v29 stringFromDate:v31];

  v50 = v32;
  [contextCopy setTimezoneOffset:v32];
  v33 = AFBuildVersion();
  [contextCopy setSystemBuild:v33];

  v34 = AFProductTypeForInstrumentation();
  [contextCopy setDeviceType:v34];

  countryCode3 = [v4 countryCode];
  if (countryCode3)
  {
    [contextCopy setCountryCode:{+[SIUtilities convertCountryCodeToSchemaCountryCode:](SIUtilities, "convertCountryCodeToSchemaCountryCode:", countryCode3)}];
  }

  v49 = countryCode3;
  v36 = +[ADHomeInfoManager sharedInfoManager];
  if ([v36 hasOptedInHH2])
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  [contextCopy setHomeKitConfiguration:v37];

  if (qword_100590550 != -1)
  {
    dispatch_once(&qword_100590550, &stru_100516C10);
  }

  v52 = v13;
  [contextCopy setIsStoreDemoMode:byte_100590549];
  if (([contextCopy hasTimeIntervalSince1970] & 1) == 0)
  {
    v38 = +[NSDate date];
    [v38 timeIntervalSince1970];
    [contextCopy setTimeIntervalSince1970:?];
  }

  productTypePrefix = [v4 productTypePrefix];
  [contextCopy setDataCollectionId:productTypePrefix];

  languageCode3 = [v6 languageCode];
  [contextCopy setEffectiveSystemLanguage:languageCode3];
  v41 = +[NSLocale preferredLanguages];
  [contextCopy setPreferredLanguages:v41];
  v42 = objc_alloc_init(DIMSchemaEntitySyncSettings);
  v43 = +[AFPreferences sharedPreferences];
  [v42 setIsMediaEntitySyncEnabled:{objc_msgSend(v43, "isMediaEntitySyncDisabled") ^ 1}];

  [contextCopy setEntitySyncSettings:v42];
  v44 = objc_alloc_init(DIMSchemaDIMDataSharingSettings);
  [v44 setIsAppAnalyticsEnabled:sub_100216330()];
  [v44 setIsDiagnosticsAndUsageEnabled:AFDiagnosticsSubmissionAllowed()];
  [contextCopy setDataSharingSettings:v44];
  v45 = +[AFPreferences sharedPreferences];
  activeDictationLanguages = [v45 activeDictationLanguages];

  if (activeDictationLanguages)
  {
    [contextCopy setAvailableDictationKeyboards:{objc_msgSend(activeDictationLanguages, "count")}];
  }

  v47 = +[AFPreferences sharedPreferences];
  [contextCopy setIsLongLivedIDUploadDisabled:{objc_msgSend(v47, "longLivedIdentifierUploadingEnabled") ^ 1}];

  return contextCopy;
}

- (void)resolveMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  deviceFixedContext = [messageCopy deviceFixedContext];
  v9 = deviceFixedContext != 0;

  if (deviceFixedContext)
  {
    v10 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADSiriAnalyticsGlobalDimensionMessageResolver resolveMessage:completion:]";
      v21 = 2112;
      v22 = messageCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Resolving deviceFixedContext for message: %@", &v19, 0x16u);
    }

    deviceFixedContext2 = [messageCopy deviceFixedContext];
    v12 = [(ADSiriAnalyticsGlobalDimensionMessageResolver *)self _resolveDeviceFixedContext:deviceFixedContext2];
    [messageCopy setDeviceFixedContext:v12];
  }

  siriAccountInformation = [messageCopy siriAccountInformation];

  if (siriAccountInformation)
  {
    v14 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADSiriAnalyticsGlobalDimensionMessageResolver resolveMessage:completion:]";
      v21 = 2112;
      v22 = messageCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Resolving siriAccountInformation for message: %@", &v19, 0x16u);
    }

    siriAccountInformation2 = [messageCopy siriAccountInformation];
    v16 = [(ADSiriAnalyticsGlobalDimensionMessageResolver *)self _resolveSiriAccountInformation:siriAccountInformation2];
    [messageCopy setSiriAccountInformation:v16];

    v17 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADSiriAnalyticsGlobalDimensionMessageResolver resolveMessage:completion:]";
      v21 = 2112;
      v22 = messageCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Firing off DIM logging for message: %@", &v19, 0x16u);
    }

    v18 = +[ADAnalyticsIdentifiersProvider sharedInstance];
    [v18 asyncLogAnalyticsIdentifiersDIMEvents];

    v9 = 1;
  }

  completionCopy[2](completionCopy, messageCopy, v9);
}

- (BOOL)handlesMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = messageCopy;
  deviceFixedContext = [v4 deviceFixedContext];
  if (!deviceFixedContext)
  {
    siriAccountInformation = [v4 siriAccountInformation];

    if (siriAccountInformation)
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

- (ADSiriAnalyticsGlobalDimensionMessageResolver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADSiriAnalyticsGlobalDimensionMessageResolver;
  v6 = [(ADSiriAnalyticsGlobalDimensionMessageResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end
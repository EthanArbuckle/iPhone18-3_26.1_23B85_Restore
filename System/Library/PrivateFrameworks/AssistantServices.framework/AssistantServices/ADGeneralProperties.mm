@interface ADGeneralProperties
- (ADGeneralProperties)initWithQueue:(id)a3;
- (BOOL)_getIsStoreDemoMode;
- (id)_getSystemLocale;
- (int)_getUTCOffset;
- (void)_getStoreFrontIdWithCompletion:(id)a3;
- (void)getODDGeneralPropertiesWithCompletion:(id)a3;
@end

@implementation ADGeneralProperties

- (BOOL)_getIsStoreDemoMode
{
  if (qword_100590550 != -1)
  {
    dispatch_once(&qword_100590550, &stru_100516C10);
  }

  return byte_100590549;
}

- (int)_getUTCOffset
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"ZZZZZ"];
  v3 = +[NSTimeZone localTimeZone];
  [v2 setTimeZone:v3];

  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  LODWORD(v4) = [ADGeneralPropertiesUtils SISchemaUTCOffsetFromTimeZoneOffset:v5];
  return v4;
}

- (void)_getStoreFrontIdWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADGeneralProperties _getStoreFrontIdWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Retrieving", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = sub_10013BE64;
  v28 = sub_10013BE74;
  v29 = 0;
  v6 = [AFOneArgumentSafetyBlock alloc];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10013BE7C;
  v22[3] = &unk_100512BB0;
  v22[4] = self;
  p_buf = &buf;
  v7 = v4;
  v23 = v7;
  v8 = [v6 initWithBlock:v22];
  v9 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013BF44;
  v20[3] = &unk_10051DFE8;
  v11 = v8;
  v21 = v11;
  v12 = [v9 initWithTimeoutInterval:queue onQueue:v20 timeoutHandler:3.0];
  v13 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v12;

  v14 = +[ADAssistantDataManager sharedDataManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013C010;
  v18[3] = &unk_100519FC0;
  v15 = v11;
  v19 = v15;
  [v14 getiTunesStoreFrontIdentifierWithCompletion:v18];

  v16 = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10013C01C;
  v17[3] = &unk_10051E1C8;
  v17[4] = &buf;
  dispatch_async(v16, v17);

  _Block_object_dispose(&buf, 8);
}

- (id)_getSystemLocale
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 objectForKey:NSLocaleIdentifier];

  v4 = [v3 uppercaseString];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v6 = [NSString stringWithFormat:@"LOCALE_%@", v5];
  if ([v6 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
  {
    v7 = 0;
  }

  else if ([v6 isEqualToString:@"LOCALE_AR_AE"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"LOCALE_AR_SA"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"LOCALE_CA_ES"])
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"LOCALE_CS_CZ"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"LOCALE_DA_DK"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToString:@"LOCALE_DE_AT"])
  {
    v7 = 6;
  }

  else if ([v6 isEqualToString:@"LOCALE_DE_CH"])
  {
    v7 = 7;
  }

  else if ([v6 isEqualToString:@"LOCALE_DE_DE"])
  {
    v7 = 8;
  }

  else if ([v6 isEqualToString:@"LOCALE_EL_GR"])
  {
    v7 = 9;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_AE"])
  {
    v7 = 10;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_AU"])
  {
    v7 = 11;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_CA"])
  {
    v7 = 12;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_GB"])
  {
    v7 = 13;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_ID"])
  {
    v7 = 14;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_IE"])
  {
    v7 = 15;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_IN"])
  {
    v7 = 16;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_MY"])
  {
    v7 = 17;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_NZ"])
  {
    v7 = 18;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_PH"])
  {
    v7 = 19;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_SG"])
  {
    v7 = 20;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_SA"])
  {
    v7 = 21;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_US"])
  {
    v7 = 22;
  }

  else if ([v6 isEqualToString:@"LOCALE_EN_ZA"])
  {
    v7 = 23;
  }

  else if ([v6 isEqualToString:@"LOCALE_ES_CL"])
  {
    v7 = 24;
  }

  else if ([v6 isEqualToString:@"LOCALE_ES_CO"])
  {
    v7 = 25;
  }

  else if ([v6 isEqualToString:@"LOCALE_ES_ES"])
  {
    v7 = 26;
  }

  else if ([v6 isEqualToString:@"LOCALE_ES_MX"])
  {
    v7 = 27;
  }

  else if ([v6 isEqualToString:@"LOCALE_ES_US"])
  {
    v7 = 28;
  }

  else if ([v6 isEqualToString:@"LOCALE_FI_FI"])
  {
    v7 = 29;
  }

  else if ([v6 isEqualToString:@"LOCALE_FR_BE"])
  {
    v7 = 30;
  }

  else if ([v6 isEqualToString:@"LOCALE_FR_CA"])
  {
    v7 = 31;
  }

  else if ([v6 isEqualToString:@"LOCALE_FR_CH"])
  {
    v7 = 32;
  }

  else if ([v6 isEqualToString:@"LOCALE_FR_FR"])
  {
    v7 = 33;
  }

  else if ([v6 isEqualToString:@"LOCALE_HE_IL"])
  {
    v7 = 34;
  }

  else if ([v6 isEqualToString:@"LOCALE_HI_IN"])
  {
    v7 = 35;
  }

  else if ([v6 isEqualToString:@"LOCALE_HR_HR"])
  {
    v7 = 36;
  }

  else if ([v6 isEqualToString:@"LOCALE_HU_HU"])
  {
    v7 = 37;
  }

  else if ([v6 isEqualToString:@"LOCALE_ID_ID"])
  {
    v7 = 38;
  }

  else if ([v6 isEqualToString:@"LOCALE_IT_CH"])
  {
    v7 = 39;
  }

  else if ([v6 isEqualToString:@"LOCALE_IT_IT"])
  {
    v7 = 40;
  }

  else if ([v6 isEqualToString:@"LOCALE_JA_JP"])
  {
    v7 = 41;
  }

  else if ([v6 isEqualToString:@"LOCALE_KO_KR"])
  {
    v7 = 42;
  }

  else if ([v6 isEqualToString:@"LOCALE_MS_MY"])
  {
    v7 = 43;
  }

  else if ([v6 isEqualToString:@"LOCALE_NB_NO"])
  {
    v7 = 44;
  }

  else if ([v6 isEqualToString:@"LOCALE_NL_BE"])
  {
    v7 = 45;
  }

  else if ([v6 isEqualToString:@"LOCALE_NL_NL"])
  {
    v7 = 46;
  }

  else if ([v6 isEqualToString:@"LOCALE_PL_PL"])
  {
    v7 = 47;
  }

  else if ([v6 isEqualToString:@"LOCALE_PT_BR"])
  {
    v7 = 48;
  }

  else if ([v6 isEqualToString:@"LOCALE_PT_PT"])
  {
    v7 = 49;
  }

  else if ([v6 isEqualToString:@"LOCALE_RO_RO"])
  {
    v7 = 50;
  }

  else if ([v6 isEqualToString:@"LOCALE_RU_RU"])
  {
    v7 = 51;
  }

  else if ([v6 isEqualToString:@"LOCALE_SK_SK"])
  {
    v7 = 52;
  }

  else if ([v6 isEqualToString:@"LOCALE_SV_SE"])
  {
    v7 = 53;
  }

  else if ([v6 isEqualToString:@"LOCALE_TH_TH"])
  {
    v7 = 54;
  }

  else if ([v6 isEqualToString:@"LOCALE_TR_TR"])
  {
    v7 = 55;
  }

  else if ([v6 isEqualToString:@"LOCALE_UK_UA"])
  {
    v7 = 56;
  }

  else if ([v6 isEqualToString:@"LOCALE_VI_VN"])
  {
    v7 = 57;
  }

  else if ([v6 isEqualToString:@"LOCALE_WUU_CN"])
  {
    v7 = 58;
  }

  else if ([v6 isEqualToString:@"LOCALE_YUE_CN"])
  {
    v7 = 59;
  }

  else if ([v6 isEqualToString:@"LOCALE_ZH_CN"])
  {
    v7 = 60;
  }

  else if ([v6 isEqualToString:@"LOCALE_ZH_HK"])
  {
    v7 = 61;
  }

  else if ([v6 isEqualToString:@"LOCALE_ZH_TW"])
  {
    v7 = 62;
  }

  else
  {
    v7 = 0;
  }

  v8 = [ADAssistantPropertiesUtils SISchemaLocaleToSISchemaISOLocale:v7];

  return v8;
}

- (void)getODDGeneralPropertiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[ADGeneralProperties getODDGeneralPropertiesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = +[ADPreferences sharedPreferences];
  v7 = objc_alloc_init(ODDSiriSchemaODDGeneralProperties);
  v8 = [(ADGeneralProperties *)self _getSystemLocale];
  [v7 setSystemLocale:v8];

  [v7 setUTCOffset:{-[ADGeneralProperties _getUTCOffset](self, "_getUTCOffset")}];
  v9 = [(ADGeneralProperties *)self _getDeviceType];
  [v7 setDeviceType:v9];

  v10 = [(ADGeneralProperties *)self _getModelNumber];
  [v7 setModelNumber:v10];

  v11 = [(ADGeneralProperties *)self _getDeviceOS];
  [v7 setDeviceOS:v11];

  [v7 setIsStoreDemoMode:{-[ADGeneralProperties _getIsStoreDemoMode](self, "_getIsStoreDemoMode")}];
  v12 = [v6 productTypePrefix];
  [v7 setDataCollectionId:v12];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013CB50;
  v15[3] = &unk_100512B88;
  v16 = v7;
  v17 = v4;
  v13 = v4;
  v14 = v7;
  [(ADGeneralProperties *)self _getStoreFrontIdWithCompletion:v15];
}

- (ADGeneralProperties)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADGeneralProperties;
  v6 = [(ADGeneralProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end
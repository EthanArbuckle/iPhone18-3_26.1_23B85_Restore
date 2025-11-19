@interface ADIntentVocabularyUpdateConnection
- (ADIntentVocabularyUpdateConnection)initWithBundleID:(id)a3 path:(id)a4 canDonateOnBehalfOfApps:(BOOL)a5;
- (id)_datastoreManager;
- (id)_datastoreManagerFor:(id)a3 bundlePath:(id)a4;
- (void)_askToSyncSlot:(id)a3 onBehalfOf:(id)a4;
- (void)_deleteEverythingOnBehalfOf:(id)a3 withDataStorageManager:(id)a4;
- (void)_recordVocabulary:(id)a3 forIntentSlot:(id)a4 onBehalfOf:(id)a5 withDataStorageManager:(id)a6 withValidationCompletion:(id)a7;
- (void)_triggerUserVocabularySyncAttributingApp:(id)a3 vocabType:(id)a4;
- (void)deleteEverything;
- (void)deleteEverythingOnBehalfOf:(id)a3;
- (void)fetchCurrentSiriLanguageCode:(id)a3;
- (void)fetchSiriAuthorization:(id)a3;
- (void)recordVocabulary:(id)a3 forIntentSlot:(id)a4 onBehalfOf:(id)a5 withValidationCompletion:(id)a6;
- (void)recordVocabulary:(id)a3 forIntentSlot:(id)a4 withValidationCompletion:(id)a5;
- (void)requestSiriAuthorization:(id)a3;
- (void)verifyProcessCanDonateIntentWithName:(id)a3 completion:(id)a4;
@end

@implementation ADIntentVocabularyUpdateConnection

- (void)fetchCurrentSiriLanguageCode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10031534C;
    v6[3] = &unk_10051C628;
    v7 = v4;
    [(ADIntentVocabularyUpdateConnection *)self fetchSiriAuthorization:v6];
  }
}

- (void)verifyProcessCanDonateIntentWithName:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    CanDonateIntent = INAppCanDonateIntent();
    (*(a4 + 2))(v6, CanDonateIntent);
  }
}

- (void)requestSiriAuthorization:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(BKSApplicationStateMonitor);
    v6 = [v5 applicationStateForApplication:self->_appBundleID];
    [v5 invalidate];
    if (v6 == 8)
    {
      v7 = +[NSXPCConnection currentConnection];
      v8 = v7;
      if (v7)
      {
        [v7 auditToken];
      }

      else
      {
        memset(v11, 0, sizeof(v11));
      }

      [_INSiriAuthorizationManager _requestSiriAuthorization:v4 auditToken:v11];
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        appBundleID = self->_appBundleID;
        LODWORD(v11[0]) = 136315394;
        *(v11 + 4) = "[ADIntentVocabularyUpdateConnection requestSiriAuthorization:]";
        WORD6(v11[0]) = 2114;
        *(v11 + 14) = appBundleID;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Ignoring attempt by %{public}@ to request Siri authorization while not in the foreground", v11, 0x16u);
      }

      [(ADIntentVocabularyUpdateConnection *)self fetchSiriAuthorization:v4];
    }
  }
}

- (void)fetchSiriAuthorization:(id)a3
{
  if (a3)
  {
    appBundleID = self->_appBundleID;
    v5 = a3;
    (*(a3 + 2))(v5, [_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:appBundleID]);
  }
}

- (void)deleteEverythingOnBehalfOf:(id)a3
{
  v4 = a3;
  if (self->_canDonateOnBehalfOfApps)
  {
    v5 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManagerFor:v4 bundlePath:0];
    [(ADIntentVocabularyUpdateConnection *)self _deleteEverythingOnBehalfOf:v4 withDataStorageManager:v5];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADIntentVocabularyUpdateConnection deleteEverythingOnBehalfOf:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Process tried to delete vocabulary on behalf of apps but not authorized", &v7, 0xCu);
    }
  }
}

- (void)deleteEverything
{
  appBundleID = self->_appBundleID;
  v4 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManager];
  [(ADIntentVocabularyUpdateConnection *)self _deleteEverythingOnBehalfOf:appBundleID withDataStorageManager:v4];
}

- (void)_deleteEverythingOnBehalfOf:(id)a3 withDataStorageManager:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [v6 deleteEverything];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[ADIntentVocabularyUpdateConnection _deleteEverythingOnBehalfOf:withDataStorageManager:]";
    v17 = 2114;
    v18 = v7;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Removed all local user-vocabulary for %{public}@", buf, 0x16u);
  }

  v10 = +[ADSyncDeny sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003158F4;
  v12[3] = &unk_10051C868;
  v13 = v7;
  v14 = self;
  v11 = v7;
  [v10 checkIfAnyUserVocabularyIsDeniedForApp:v11 completion:v12];
}

- (void)_askToSyncSlot:(id)a3 onBehalfOf:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = +[ADSyncDeny sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100315AF0;
  v11[3] = &unk_10051BBE0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 checkPermissionToSyncSlot:v9 forApp:v10 completion:v11];
}

- (void)_triggerUserVocabularySyncAttributingApp:(id)a3 vocabType:(id)a4
{
  v4 = [NSString stringWithFormat:@"Synapse.%@#%@", a3, a4];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[ADIntentVocabularyUpdateConnection _triggerUserVocabularySyncAttributingApp:vocabType:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Posting sync notification for reason: %@", buf, 0x16u);
  }

  notify_post("com.apple.assistant.app_vocabulary");
}

- (void)_recordVocabulary:(id)a3 forIntentSlot:(id)a4 onBehalfOf:(id)a5 withDataStorageManager:(id)a6 withValidationCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100315E14;
  v20[3] = &unk_10051BBB8;
  v21 = a6;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v25 = v14;
  v26 = a7;
  v15 = v26;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v21;
  [v19 checkIfSyncSlot:v17 isAllowedWithCompletion:v20];
}

- (void)recordVocabulary:(id)a3 forIntentSlot:(id)a4 onBehalfOf:(id)a5 withValidationCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (!self->_canDonateOnBehalfOfApps)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[ADIntentVocabularyUpdateConnection recordVocabulary:forIntentSlot:onBehalfOf:withValidationCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Process tried to donate vocabulary on behalf of apps but not authorized", &v20, 0xCu);
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    else if (!v13)
    {
      goto LABEL_8;
    }

    v13[2](v13, 0);
    goto LABEL_8;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v12 copy];
    v17 = v16;
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
    v20 = 136315906;
    v21 = "[ADIntentVocabularyUpdateConnection recordVocabulary:forIntentSlot:onBehalfOf:withValidationCompletion:]";
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s On behalf of %@ got %@ items for %@", &v20, 0x2Au);
  }

  v19 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManagerFor:v12 bundlePath:0];
  [(ADIntentVocabularyUpdateConnection *)self _recordVocabulary:v10 forIntentSlot:v11 onBehalfOf:v12 withDataStorageManager:v19 withValidationCompletion:v13];

LABEL_8:
}

- (void)recordVocabulary:(id)a3 forIntentSlot:(id)a4 withValidationCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v14 = [(NSString *)self->_appBundleID copy];
    v16 = 136315906;
    v17 = "[ADIntentVocabularyUpdateConnection recordVocabulary:forIntentSlot:withValidationCompletion:]";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s got %@ items for %@ from %@", &v16, 0x2Au);
  }

  v15 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManager];
  [(ADIntentVocabularyUpdateConnection *)self _recordVocabulary:v8 forIntentSlot:v9 onBehalfOf:self->_appBundleID withDataStorageManager:v15 withValidationCompletion:v10];
}

- (id)_datastoreManagerFor:(id)a3 bundlePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    goto LABEL_18;
  }

  v10 = [v6 isEqualToString:@"com.apple.siriactionsd"];
  v24 = 0;
  v11 = [LSBundleRecord bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:&v24];
  v12 = v24;
  if (!v11)
  {
    v13 = AFSiriLogContextDaemon;
    if (v10)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = &stru_10051F508;
        *buf = 136315650;
        v26 = "[ADIntentVocabularyUpdateConnection _datastoreManagerFor:bundlePath:]";
        v27 = 2112;
        if (v12)
        {
          v14 = v12;
        }

        v28 = v6;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Could not get bundle record for app bundle ID %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v22 = &stru_10051F508;
      *buf = 136315650;
      v26 = "[ADIntentVocabularyUpdateConnection _datastoreManagerFor:bundlePath:]";
      v27 = 2112;
      if (v12)
      {
        v22 = v12;
      }

      v28 = v6;
      v29 = 2112;
      v30 = v22;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Could not get bundle record for app bundle ID %@ %@", buf, 0x20u);
    }
  }

  v15 = [v11 URL];
  v9 = [v15 path];

  if (!v9)
  {
    v16 = AFSiriLogContextDaemon;
    if (v10)
    {
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
LABEL_16:
        v9 = self->_appPath;
        goto LABEL_17;
      }

      appPath = self->_appPath;
      v18 = v16;
      v19 = [(NSString *)appPath copy];
      *buf = 136315650;
      v26 = "[ADIntentVocabularyUpdateConnection _datastoreManagerFor:bundlePath:]";
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s App bundle path for app bundle ID %@ is nil, using %@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v23 = self->_appPath;
      v18 = v16;
      v19 = [(NSString *)v23 copy];
      *buf = 136315650;
      v26 = "[ADIntentVocabularyUpdateConnection _datastoreManagerFor:bundlePath:]";
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s App bundle path for app bundle ID %@ is nil, using %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v20 = [_INVocabularyStoreManager managerForBundleID:v6 bundlePath:v9];

  return v20;
}

- (id)_datastoreManager
{
  datastoreManager = self->_datastoreManager;
  if (!datastoreManager)
  {
    v4 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManagerFor:self->_appBundleID bundlePath:self->_appPath];
    v5 = self->_datastoreManager;
    self->_datastoreManager = v4;

    datastoreManager = self->_datastoreManager;
  }

  return datastoreManager;
}

- (ADIntentVocabularyUpdateConnection)initWithBundleID:(id)a3 path:(id)a4 canDonateOnBehalfOfApps:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v18.receiver = self;
    v18.super_class = ADIntentVocabularyUpdateConnection;
    v10 = [(ADIntentVocabularyUpdateConnection *)&v18 init];
    if (v10)
    {
      v11 = [v8 copy];
      appBundleID = v10->_appBundleID;
      v10->_appBundleID = v11;

      v13 = [v9 copy];
      appPath = v10->_appPath;
      v10->_appPath = v13;

      v10->_canDonateOnBehalfOfApps = a5;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[ADIntentVocabularyUpdateConnection initWithBundleID:path:canDonateOnBehalfOfApps:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s no bundleID!", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

@end
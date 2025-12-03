@interface ADIntentVocabularyUpdateConnection
- (ADIntentVocabularyUpdateConnection)initWithBundleID:(id)d path:(id)path canDonateOnBehalfOfApps:(BOOL)apps;
- (id)_datastoreManager;
- (id)_datastoreManagerFor:(id)for bundlePath:(id)path;
- (void)_askToSyncSlot:(id)slot onBehalfOf:(id)of;
- (void)_deleteEverythingOnBehalfOf:(id)of withDataStorageManager:(id)manager;
- (void)_recordVocabulary:(id)vocabulary forIntentSlot:(id)slot onBehalfOf:(id)of withDataStorageManager:(id)manager withValidationCompletion:(id)completion;
- (void)_triggerUserVocabularySyncAttributingApp:(id)app vocabType:(id)type;
- (void)deleteEverything;
- (void)deleteEverythingOnBehalfOf:(id)of;
- (void)fetchCurrentSiriLanguageCode:(id)code;
- (void)fetchSiriAuthorization:(id)authorization;
- (void)recordVocabulary:(id)vocabulary forIntentSlot:(id)slot onBehalfOf:(id)of withValidationCompletion:(id)completion;
- (void)recordVocabulary:(id)vocabulary forIntentSlot:(id)slot withValidationCompletion:(id)completion;
- (void)requestSiriAuthorization:(id)authorization;
- (void)verifyProcessCanDonateIntentWithName:(id)name completion:(id)completion;
@end

@implementation ADIntentVocabularyUpdateConnection

- (void)fetchCurrentSiriLanguageCode:(id)code
{
  codeCopy = code;
  v5 = codeCopy;
  if (codeCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10031534C;
    v6[3] = &unk_10051C628;
    v7 = codeCopy;
    [(ADIntentVocabularyUpdateConnection *)self fetchSiriAuthorization:v6];
  }
}

- (void)verifyProcessCanDonateIntentWithName:(id)name completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    CanDonateIntent = INAppCanDonateIntent();
    (*(completion + 2))(completionCopy, CanDonateIntent);
  }
}

- (void)requestSiriAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (authorizationCopy)
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

      [_INSiriAuthorizationManager _requestSiriAuthorization:authorizationCopy auditToken:v11];
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

      [(ADIntentVocabularyUpdateConnection *)self fetchSiriAuthorization:authorizationCopy];
    }
  }
}

- (void)fetchSiriAuthorization:(id)authorization
{
  if (authorization)
  {
    appBundleID = self->_appBundleID;
    authorizationCopy = authorization;
    (*(authorization + 2))(authorizationCopy, [_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:appBundleID]);
  }
}

- (void)deleteEverythingOnBehalfOf:(id)of
{
  ofCopy = of;
  if (self->_canDonateOnBehalfOfApps)
  {
    v5 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManagerFor:ofCopy bundlePath:0];
    [(ADIntentVocabularyUpdateConnection *)self _deleteEverythingOnBehalfOf:ofCopy withDataStorageManager:v5];
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
  _datastoreManager = [(ADIntentVocabularyUpdateConnection *)self _datastoreManager];
  [(ADIntentVocabularyUpdateConnection *)self _deleteEverythingOnBehalfOf:appBundleID withDataStorageManager:_datastoreManager];
}

- (void)_deleteEverythingOnBehalfOf:(id)of withDataStorageManager:(id)manager
{
  managerCopy = manager;
  v7 = [of copy];
  deleteEverything = [managerCopy deleteEverything];
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
  selfCopy = self;
  v11 = v7;
  [v10 checkIfAnyUserVocabularyIsDeniedForApp:v11 completion:v12];
}

- (void)_askToSyncSlot:(id)slot onBehalfOf:(id)of
{
  slotCopy = slot;
  v7 = [of copy];
  v8 = +[ADSyncDeny sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100315AF0;
  v11[3] = &unk_10051BBE0;
  v11[4] = self;
  v12 = v7;
  v13 = slotCopy;
  v9 = slotCopy;
  v10 = v7;
  [v8 checkPermissionToSyncSlot:v9 forApp:v10 completion:v11];
}

- (void)_triggerUserVocabularySyncAttributingApp:(id)app vocabType:(id)type
{
  type = [NSString stringWithFormat:@"Synapse.%@#%@", app, type];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[ADIntentVocabularyUpdateConnection _triggerUserVocabularySyncAttributingApp:vocabType:]";
    v8 = 2112;
    v9 = type;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Posting sync notification for reason: %@", buf, 0x16u);
  }

  notify_post("com.apple.assistant.app_vocabulary");
}

- (void)_recordVocabulary:(id)vocabulary forIntentSlot:(id)slot onBehalfOf:(id)of withDataStorageManager:(id)manager withValidationCompletion:(id)completion
{
  vocabularyCopy = vocabulary;
  slotCopy = slot;
  ofCopy = of;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100315E14;
  v20[3] = &unk_10051BBB8;
  managerCopy = manager;
  v22 = vocabularyCopy;
  v23 = slotCopy;
  selfCopy = self;
  v25 = ofCopy;
  completionCopy = completion;
  v15 = completionCopy;
  v16 = ofCopy;
  v17 = slotCopy;
  v18 = vocabularyCopy;
  v19 = managerCopy;
  [v19 checkIfSyncSlot:v17 isAllowedWithCompletion:v20];
}

- (void)recordVocabulary:(id)vocabulary forIntentSlot:(id)slot onBehalfOf:(id)of withValidationCompletion:(id)completion
{
  vocabularyCopy = vocabulary;
  slotCopy = slot;
  ofCopy = of;
  completionCopy = completion;
  v14 = AFSiriLogContextDaemon;
  if (!self->_canDonateOnBehalfOfApps)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[ADIntentVocabularyUpdateConnection recordVocabulary:forIntentSlot:onBehalfOf:withValidationCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Process tried to donate vocabulary on behalf of apps but not authorized", &v20, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_8;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_8;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [ofCopy copy];
    v17 = v16;
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vocabularyCopy count]);
    v20 = 136315906;
    v21 = "[ADIntentVocabularyUpdateConnection recordVocabulary:forIntentSlot:onBehalfOf:withValidationCompletion:]";
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = slotCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s On behalf of %@ got %@ items for %@", &v20, 0x2Au);
  }

  v19 = [(ADIntentVocabularyUpdateConnection *)self _datastoreManagerFor:ofCopy bundlePath:0];
  [(ADIntentVocabularyUpdateConnection *)self _recordVocabulary:vocabularyCopy forIntentSlot:slotCopy onBehalfOf:ofCopy withDataStorageManager:v19 withValidationCompletion:completionCopy];

LABEL_8:
}

- (void)recordVocabulary:(id)vocabulary forIntentSlot:(id)slot withValidationCompletion:(id)completion
{
  vocabularyCopy = vocabulary;
  slotCopy = slot;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vocabularyCopy count]);
    v14 = [(NSString *)self->_appBundleID copy];
    v16 = 136315906;
    v17 = "[ADIntentVocabularyUpdateConnection recordVocabulary:forIntentSlot:withValidationCompletion:]";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = slotCopy;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s got %@ items for %@ from %@", &v16, 0x2Au);
  }

  _datastoreManager = [(ADIntentVocabularyUpdateConnection *)self _datastoreManager];
  [(ADIntentVocabularyUpdateConnection *)self _recordVocabulary:vocabularyCopy forIntentSlot:slotCopy onBehalfOf:self->_appBundleID withDataStorageManager:_datastoreManager withValidationCompletion:completionCopy];
}

- (id)_datastoreManagerFor:(id)for bundlePath:(id)path
{
  forCopy = for;
  pathCopy = path;
  v8 = pathCopy;
  if (pathCopy)
  {
    path = pathCopy;
    goto LABEL_18;
  }

  v10 = [forCopy isEqualToString:@"com.apple.siriactionsd"];
  v24 = 0;
  v11 = [LSBundleRecord bundleRecordWithBundleIdentifier:forCopy allowPlaceholder:0 error:&v24];
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

        v28 = forCopy;
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

      v28 = forCopy;
      v29 = 2112;
      v30 = v22;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Could not get bundle record for app bundle ID %@ %@", buf, 0x20u);
    }
  }

  v15 = [v11 URL];
  path = [v15 path];

  if (!path)
  {
    v16 = AFSiriLogContextDaemon;
    if (v10)
    {
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
LABEL_16:
        path = self->_appPath;
        goto LABEL_17;
      }

      appPath = self->_appPath;
      v18 = v16;
      v19 = [(NSString *)appPath copy];
      *buf = 136315650;
      v26 = "[ADIntentVocabularyUpdateConnection _datastoreManagerFor:bundlePath:]";
      v27 = 2112;
      v28 = forCopy;
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
      v28 = forCopy;
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s App bundle path for app bundle ID %@ is nil, using %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v20 = [_INVocabularyStoreManager managerForBundleID:forCopy bundlePath:path];

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

- (ADIntentVocabularyUpdateConnection)initWithBundleID:(id)d path:(id)path canDonateOnBehalfOfApps:(BOOL)apps
{
  dCopy = d;
  pathCopy = path;
  if (dCopy)
  {
    v18.receiver = self;
    v18.super_class = ADIntentVocabularyUpdateConnection;
    v10 = [(ADIntentVocabularyUpdateConnection *)&v18 init];
    if (v10)
    {
      v11 = [dCopy copy];
      appBundleID = v10->_appBundleID;
      v10->_appBundleID = v11;

      v13 = [pathCopy copy];
      appPath = v10->_appPath;
      v10->_appPath = v13;

      v10->_canDonateOnBehalfOfApps = apps;
    }

    self = v10;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

@end
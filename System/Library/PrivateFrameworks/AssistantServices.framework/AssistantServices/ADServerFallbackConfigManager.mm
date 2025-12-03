@interface ADServerFallbackConfigManager
+ (id)sharedInstance;
- (ADServerFallbackConfigManager)init;
- (BOOL)_shouldDisableServerFallbackABForDomainDirected:(BOOL)directed;
- (BOOL)assistantSyncDisabled;
- (void)_populateConfiguration;
- (void)_registerUpdateHandler;
@end

@implementation ADServerFallbackConfigManager

- (BOOL)_shouldDisableServerFallbackABForDomainDirected:(BOOL)directed
{
  v4 = @"disableFallbackNL";
  if (directed)
  {
    v4 = @"disableFallbackDomain";
  }

  v5 = v4;
  v6 = [(TRIClient *)self->_siriUnderstandingClient levelForFactor:v5 withNamespaceName:@"SIRI_UNDERSTANDING_CLASSIC_DEPRECATION"];
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = @"Nil";
    v11 = 136315906;
    v12 = "[ADServerFallbackConfigManager _shouldDisableServerFallbackABForDomainDirected:]";
    v13 = 2112;
    if (v6)
    {
      v8 = v6;
    }

    v14 = v5;
    v15 = 2112;
    v16 = @"SIRI_UNDERSTANDING_CLASSIC_DEPRECATION";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Getting level information from trial for factor = %@, namespace = %@, level = %@", &v11, 0x2Au);
  }

  if (v6)
  {
    if ([(__CFString *)v6 levelOneOfCase]== 10)
    {
      bOOLeanValue = [(__CFString *)v6 BOOLeanValue];
    }

    else
    {
      bOOLeanValue = 0;
    }
  }

  else
  {
    bOOLeanValue = 1;
  }

  return bOOLeanValue;
}

- (void)_populateConfiguration
{
  self->_shouldDisableServerFallbackDomain = [(ADServerFallbackConfigManager *)self _shouldDisableServerFallbackABForDomainDirected:1];
  v3 = +[ADPreferences sharedPreferences];
  [v3 setShouldDisableServerFallbackDomain:self->_shouldDisableServerFallbackDomain];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    shouldDisableServerFallbackDomain = self->_shouldDisableServerFallbackDomain;
    *v15 = 136315394;
    *&v15[4] = "[ADServerFallbackConfigManager _populateConfiguration]";
    *&v15[12] = 1024;
    *&v15[14] = shouldDisableServerFallbackDomain;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Updating value for _shouldDisableServerFallbackDomain config-> %d", v15, 0x12u);
  }

  self->_shouldDisableServerFallbackNL = [(ADServerFallbackConfigManager *)self _shouldDisableServerFallbackABForDomainDirected:0];
  v6 = +[ADPreferences sharedPreferences];
  [v6 setShouldDisableServerFallbackNL:self->_shouldDisableServerFallbackNL];

  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    shouldDisableServerFallbackNL = self->_shouldDisableServerFallbackNL;
    *v15 = 136315394;
    *&v15[4] = "[ADServerFallbackConfigManager _populateConfiguration]";
    *&v15[12] = 1024;
    *&v15[14] = shouldDisableServerFallbackNL;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Updating value for _shouldDisableServerFallbackNL config-> %d", v15, 0x12u);
  }

  v9 = [(TRIClient *)self->_siriUnderstandingClient levelForFactor:@"disableAssistantSync" withNamespaceName:@"SIRI_UNDERSTANDING_CLASSIC_DEPRECATION"];
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = @"YES";
    *v15 = 136315906;
    *&v15[4] = "[ADServerFallbackConfigManager _populateConfiguration]";
    if (!v9)
    {
      v11 = @"NO";
    }

    *&v15[12] = 2112;
    *&v15[14] = @"disableAssistantSync";
    v16 = 2112;
    v17 = @"SIRI_UNDERSTANDING_CLASSIC_DEPRECATION";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Getting level information from trial for factor = %@, namespace = %@, level is not nil = %@", v15, 0x2Au);
  }

  if (v9)
  {
    if ([v9 levelOneOfCase] == 10)
    {
      bOOLeanValue = [v9 BOOLeanValue];
    }

    else
    {
      bOOLeanValue = 0;
    }
  }

  else
  {
    bOOLeanValue = 1;
  }

  self->_shouldDisableAssistantSync = bOOLeanValue;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *v15 = 136315394;
    *&v15[4] = "[ADServerFallbackConfigManager _populateConfiguration]";
    *&v15[12] = 1024;
    *&v15[14] = bOOLeanValue;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Updating value for _shouldDisableAssistantSync config-> %d", v15, 0x12u);
    if (!self->_shouldDisableAssistantSync)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (bOOLeanValue)
  {
LABEL_18:
    v14 = +[ADPreferences sharedPreferences];
    [v14 setIsSyncDisabledForFullUoDDevices:1];
  }

LABEL_19:
}

- (void)_registerUpdateHandler
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADServerFallbackConfigManager _registerUpdateHandler]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Registering update handler for ADServerFallbackConfigManager", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100149BC8;
  v7[3] = &unk_10051D478;
  objc_copyWeak(&v8, buf);
  v4 = objc_retainBlock(v7);
  updateHandler = self->_updateHandler;
  self->_updateHandler = v4;

  v6 = [(TRIClient *)self->_siriUnderstandingClient addUpdateHandlerForNamespaceName:@"SIRI_UNDERSTANDING_CLASSIC_DEPRECATION" queue:self->_queue usingBlock:self->_updateHandler];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (BOOL)assistantSyncDisabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100149D58;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (ADServerFallbackConfigManager)init
{
  v12.receiver = self;
  v12.super_class = ADServerFallbackConfigManager;
  v2 = [(ADServerFallbackConfigManager *)&v12 init];
  if (v2)
  {
    v3 = [TRIClient clientWithIdentifier:115];
    siriUnderstandingClient = v2->_siriUnderstandingClient;
    v2->_siriUnderstandingClient = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ADServerFallbackConfigManager", v5);

    queue = v2->_queue;
    v2->_queue = v6;

    [(ADServerFallbackConfigManager *)v2 _registerUpdateHandler];
    v8 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100149E84;
    block[3] = &unk_10051DFE8;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100590330 != -1)
  {
    dispatch_once(&qword_100590330, &stru_100513038);
  }

  v3 = qword_100590328;

  return v3;
}

@end
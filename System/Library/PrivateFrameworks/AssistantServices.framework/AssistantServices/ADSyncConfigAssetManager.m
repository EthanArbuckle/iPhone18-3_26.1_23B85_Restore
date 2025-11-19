@interface ADSyncConfigAssetManager
+ (id)sharedInstance;
- (ADSyncConfigAssetManager)init;
- (BOOL)_getBooleanValueForFactor:(id)a3;
- (BOOL)isInactiveDeviceSyncDisabled;
- (id)_initWithTriClient:(id)a3;
- (int64_t)_getIntValueForFactor:(id)a3;
- (int64_t)inactiveDeviceThreshold;
- (void)_populateConfiguration;
- (void)_registerUpdateHandler;
@end

@implementation ADSyncConfigAssetManager

+ (id)sharedInstance
{
  if (qword_100590AF0 != -1)
  {
    dispatch_once(&qword_100590AF0, &stru_10051D450);
  }

  v3 = qword_100590AE8;

  return v3;
}

- (BOOL)isInactiveDeviceSyncDisabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A914;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)inactiveDeviceThreshold
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000ACB8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)_getIntValueForFactor:(id)a3
{
  v4 = a3;
  v5 = [(TRIClient *)self->_client levelForFactor:v4 withNamespaceName:@"SIRI_MEMORY_SYNC_CONFIG"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 longValue];
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADSyncConfigAssetManager _getIntValueForFactor:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Level not found, clearing value for factor name %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_getBooleanValueForFactor:(id)a3
{
  v4 = a3;
  v5 = [(TRIClient *)self->_client levelForFactor:v4 withNamespaceName:@"SIRI_MEMORY_SYNC_CONFIG"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLeanValue];
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADSyncConfigAssetManager _getBooleanValueForFactor:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Level not found, clearing value for factor name %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_populateConfiguration
{
  v3 = [(ADSyncConfigAssetManager *)self _getBooleanValueForFactor:@"disable_inactive_sync.enablement_status"];
  self->_disableAssistantSyncForInactiveDevices = v3;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADSyncConfigAssetManager _populateConfiguration]";
    v15 = 1024;
    LODWORD(v16) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Updating value for inactive device sync config -> %d", &v13, 0x12u);
  }

  v5 = [(ADSyncConfigAssetManager *)self _getIntValueForFactor:@"disable_inactive_sync.threshold"];
  self->_inactiveDeviceThreshold = v5;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADSyncConfigAssetManager _populateConfiguration]";
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Updating value for inactive device sync threshold -> %lld", &v13, 0x16u);
  }

  v7 = [(TRIClient *)self->_client levelForFactor:@"siri_audio.media_entity_sync.disablement_status" withNamespaceName:@"SIRI_AUDIO_DISABLE_MEDIA_ENTITY_SYNC"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLeanValue];
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "[ADSyncConfigAssetManager _populateConfiguration]";
      v15 = 2112;
      v16 = @"siri_audio.media_entity_sync.disablement_status";
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Updating sync config: %@ -> %d", &v13, 0x1Cu);
    }
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[ADSyncConfigAssetManager _populateConfiguration]";
      v15 = 2112;
      v16 = @"siri_audio.media_entity_sync.disablement_status";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Level not found, clearing config: %@", &v13, 0x16u);
    }

    v9 = 0;
  }

  v12 = +[ADPreferences sharedPreferences];
  [v12 setIsMediaEntitySyncDisabledSyncConfig:v9];
}

- (void)_registerUpdateHandler
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADSyncConfigAssetManager _registerUpdateHandler]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Checking for sync config", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10035EDB8;
  v12[3] = &unk_10051D478;
  objc_copyWeak(&v13, buf);
  v4 = objc_retainBlock(v12);
  updateHandler = self->_updateHandler;
  self->_updateHandler = v4;

  client = self->_client;
  v7 = [TRINamespace namespaceNameFromId:1280];
  v8 = [(TRIClient *)client addUpdateHandlerForNamespaceName:v7 queue:self->_queue usingBlock:self->_updateHandler];

  v9 = self->_client;
  v10 = [TRINamespace namespaceNameFromId:424];
  v11 = [(TRIClient *)v9 addUpdateHandlerForNamespaceName:v10 queue:self->_queue usingBlock:self->_updateHandler];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (id)_initWithTriClient:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ADSyncConfigAssetManager;
  v6 = [(ADSyncConfigAssetManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("ADSyncConfigAssetManager", v8);

    queue = v7->_queue;
    v7->_queue = v9;

    [(ADSyncConfigAssetManager *)v7 _registerUpdateHandler];
    v11 = v7->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035EFB4;
    block[3] = &unk_10051DFE8;
    v14 = v7;
    dispatch_async(v11, block);
  }

  return v7;
}

- (ADSyncConfigAssetManager)init
{
  v3 = [TRIClient clientWithIdentifier:133];
  v4 = [(ADSyncConfigAssetManager *)self _initWithTriClient:v3];

  return v4;
}

@end
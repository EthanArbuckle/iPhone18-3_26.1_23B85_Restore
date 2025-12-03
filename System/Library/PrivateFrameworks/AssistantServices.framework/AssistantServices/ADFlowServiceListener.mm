@interface ADFlowServiceListener
- (ADFlowServiceListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)fetchSiriKitApplicationsWithNotificationPreviewRestrictionsWithCompletion:(id)completion;
- (void)getPersonalSettingsForSharedUserID:(id)d completion:(id)completion;
- (void)setupListener;
@end

@implementation ADFlowServiceListener

- (void)getPersonalSettingsForSharedUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy && AFSupportsMultiUser())
    {
      _cachedAssistantData = +[ADMultiUserService sharedService];
      [_cachedAssistantData getMultiUserSettingsForSharedUserID:dCopy completion:completionCopy];
    }

    else
    {
      v8 = +[ADAssistantDataManager sharedDataManager];
      _cachedAssistantData = [v8 _cachedAssistantData];

      if (_cachedAssistantData)
      {
        temperatureUnit = [_cachedAssistantData temperatureUnit];
        twentyFourHourTimeDisplay = [_cachedAssistantData twentyFourHourTimeDisplay];
        bOOLValue = [twentyFourHourTimeDisplay BOOLValue];

        region = [_cachedAssistantData region];
        countryCode = [_cachedAssistantData countryCode];
        preferredLanguage = [_cachedAssistantData preferredLanguage];
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v18 = 136315138;
          v19 = "[ADFlowServiceListener getPersonalSettingsForSharedUserID:completion:]";
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Settings found", &v18, 0xCu);
        }

        v16 = objc_alloc_init(AFPersonalUserSettings);
        [(AFPersonalUserSettings *)v16 setTemperatureUnit:temperatureUnit];
        [(AFPersonalUserSettings *)v16 setTwentyFourHourTimeDisplay:bOOLValue];
        [(AFPersonalUserSettings *)v16 setRegion:region];
        [(AFPersonalUserSettings *)v16 setCountryCode:countryCode];
        [(AFPersonalUserSettings *)v16 setPreferredLanguage:preferredLanguage];
        completionCopy[2](completionCopy, v16, 0);
      }

      else
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v18 = 136315138;
          v19 = "[ADFlowServiceListener getPersonalSettingsForSharedUserID:completion:]";
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Settings not found", &v18, 0xCu);
        }

        temperatureUnit = [AFError errorWithCode:0 description:@"User Settings unavailable"];
        (completionCopy)[2](completionCopy, 0, temperatureUnit);
      }
    }
  }
}

- (void)fetchSiriKitApplicationsWithNotificationPreviewRestrictionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADNotificationManager sharedManager];
  [v4 fetchSiriRelatedNotificationPreviewRestrictedAppsWithCompletion:completionCopy];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v17 = "[ADFlowServiceListener listener:shouldAcceptNewConnection:]";
      v18 = 2112;
      v19 = connectionCopy;
      v20 = 1024;
      v21 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ Flow Service Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFFlowService];
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10015E9F8;
    v14[3] = &unk_10051A380;
    v15 = processIdentifier;
    [connectionCopy setInvalidationHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10015EAB4;
    v12[3] = &unk_10051A380;
    v13 = processIdentifier;
    [connectionCopy setInterruptionHandler:v12];
    [connectionCopy resume];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[ADFlowServiceListener listener:shouldAcceptNewConnection:]";
      v18 = 2112;
      v19 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ Flow Service Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)setupListener
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015EBE4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (ADFlowServiceListener)init
{
  v8.receiver = self;
  v8.super_class = ADFlowServiceListener;
  v2 = [(ADFlowServiceListener *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("ADFlowServiceListener", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end
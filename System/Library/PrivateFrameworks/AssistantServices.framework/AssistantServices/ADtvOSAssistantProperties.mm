@interface ADtvOSAssistantProperties
- (ADtvOSAssistantProperties)initWithQueue:(id)a3;
- (BOOL)_getIsAdaptiveVolumeEnabled;
- (BOOL)_getIsPermanentOffsetEnabled;
- (BOOL)_getIsPersonalDomainsEnabled;
- (float)_getPermanentOffsetFactor;
- (id)_getODDAdaptiveVolumeProperties;
- (id)_getODDHomePodProperties;
- (id)_getODDMultiUserSetupStatusFrom:(id)a3;
- (int)_getAdaptiveVolumeUserIntent;
- (void)_getMultiUserSetupStatusWithCompletion:(id)a3;
- (void)_getODDMultiUserStateWithCompletion:(id)a3;
- (void)_getODDUserPersonalizationArrayWithCompletion:(id)a3;
- (void)_getODDUserPersonalizationForSharedUser:(id)a3 withCompletion:(id)a4;
- (void)getODDtvOSAssistantPropertiesWithCompletion:(id)a3;
@end

@implementation ADtvOSAssistantProperties

- (float)_getPermanentOffsetFactor
{
  v2 = +[CSPreferences sharedPreferences];
  [v2 adaptiveSiriVolumePermanentOffset];
  v3 = [NSNumber numberWithFloat:?];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (BOOL)_getIsPermanentOffsetEnabled
{
  v2 = +[CSPreferences sharedPreferences];
  v3 = [v2 isAdaptiveSiriVolumePermanentOffsetEnabled];

  return v3;
}

- (int)_getAdaptiveVolumeUserIntent
{
  v2 = +[CSPreferences sharedPreferences];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 adaptiveSiriVolumeRecentIntent]);

  v4 = [v3 intValue];
  if (v4 - 1 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_getIsAdaptiveVolumeEnabled
{
  v2 = +[CSPreferences sharedPreferences];
  v3 = [v2 smartSiriVolumeContextAwareEnabled];

  return v3;
}

- (BOOL)_getIsPersonalDomainsEnabled
{
  v2 = +[ADMultiUserService sharedService];
  v3 = [v2 primaryUser];
  v4 = [v3 personalDomainsIsEnabled];

  return v4;
}

- (void)_getMultiUserSetupStatusWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (id)_getODDMultiUserSetupStatusFrom:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADtvOSAssistantProperties _getODDMultiUserSetupStatusFrom:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  v5 = objc_alloc_init(ODDSiriSchemaODDMultiUserSetupStatus);
  [v5 setNumGuestsAccepted:{objc_msgSend(v3, "numGuestsAccepted")}];
  [v5 setNumParticipantsWithTrust:{objc_msgSend(v3, "numParticipantsWithTrust")}];
  [v5 setNumUsersWhoSyncedRecognizeMyVoice:{objc_msgSend(v3, "numUsersWhoSyncedRecognizeMyVoice")}];
  [v5 setNumUsersWithRecognizeMyVoiceEnabled:{objc_msgSend(v3, "numUsersWithRecognizeMyVoiceEnabled")}];
  [v5 setNumVoiceProfilesAvailable:{objc_msgSend(v3, "numVoiceProfilesAvailable")}];
  [v5 setNumUsersWithPersonalRequestsEnabled:{objc_msgSend(v3, "numUsersWithPersonalRequestsEnabled")}];
  [v5 setNumUsersWithMatchingSiriLanguage:{objc_msgSend(v3, "numUsersWithMatchingSiriLanguage")}];
  [v5 setNumUsersWithSiriCloudSyncEnabled:{objc_msgSend(v3, "numUsersWithSiriCloudSyncEnabled")}];
  [v5 setNumUsersWithLocationServicesEnabled:{objc_msgSend(v3, "numUsersWithLocationServicesEnabled")}];

  return v5;
}

- (id)_getODDAdaptiveVolumeProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADtvOSAssistantProperties _getODDAdaptiveVolumeProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDAdaptiveVolumeProperties);
  [v4 setIsAdaptiveVolumeEnabled:{-[ADtvOSAssistantProperties _getIsAdaptiveVolumeEnabled](self, "_getIsAdaptiveVolumeEnabled")}];
  [v4 setAdaptiveVolume:{-[ADtvOSAssistantProperties _getAdaptiveVolumeUserIntent](self, "_getAdaptiveVolumeUserIntent")}];
  [v4 setIsPermanentOffsetEnabled:{-[ADtvOSAssistantProperties _getIsPermanentOffsetEnabled](self, "_getIsPermanentOffsetEnabled")}];
  [(ADtvOSAssistantProperties *)self _getPermanentOffsetFactor];
  [v4 setPermanentOffsetFactor:?];

  return v4;
}

- (id)_getODDHomePodProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADtvOSAssistantProperties _getODDHomePodProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDHomePodProperties);
  v5 = [(ADtvOSAssistantProperties *)self _getODDAdaptiveVolumeProperties];
  [v4 setAdaptiveVolume:v5];

  [v4 setIsPersonalDomainsEnabled:{-[ADtvOSAssistantProperties _getIsPersonalDomainsEnabled](self, "_getIsPersonalDomainsEnabled")}];

  return v4;
}

- (void)_getODDUserPersonalizationForSharedUser:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[ADtvOSAssistantProperties _getODDUserPersonalizationForSharedUser:withCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v9 = objc_alloc_init(ODDSiriSchemaODDUserPersonalization);
  [v9 setIsPersonalDomainRequestsEnabled:{objc_msgSend(v6, "personalDomainsIsEnabled")}];
  v10 = [(ADtvOSAssistantProperties *)self _getVoiceSettings];
  [v9 setVoiceSettings:v10];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100136DA4;
  v14[3] = &unk_10051DD70;
  v15 = v9;
  v16 = v7;
  v12 = v7;
  v13 = v9;
  [ADDevicePropertiesUtils fetchActiveSubscriptionsWithQueue:queue completion:v14];
}

- (void)_getODDUserPersonalizationArrayWithCompletion:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v36 = "[ADtvOSAssistantProperties _getODDUserPersonalizationArrayWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v5 = dispatch_group_create();
  v6 = +[ADMultiUserService sharedService];
  v7 = [v6 sharedUsersBySharedUserID];
  v8 = [v7 count];

  v9 = &qword_1003F0000;
  if (v8)
  {
    v22 = v3;
    v10 = [[NSMutableArray alloc] initWithCapacity:1];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [v6 sharedUsersBySharedUserID];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          v17 = [v6 sharedUsersBySharedUserID];
          v18 = [v17 objectForKey:v16];

          if (v18)
          {
            dispatch_group_enter(v5);
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_10013710C;
            v27[3] = &unk_100512A88;
            v28 = v10;
            v29 = v5;
            [(ADtvOSAssistantProperties *)self _getODDUserPersonalizationForSharedUser:v18 withCompletion:v27];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v3 = v22;
    v9 = &qword_1003F0000;
  }

  else
  {
    v10 = 0;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = v9[1];
  block[2] = sub_10013714C;
  block[3] = &unk_10051E038;
  v25 = v10;
  v26 = v3;
  v20 = v10;
  v21 = v3;
  dispatch_group_notify(v5, queue, block);
}

- (void)_getODDMultiUserStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "[ADtvOSAssistantProperties _getODDMultiUserStateWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v7 = objc_alloc_init(ODDSiriSchemaODDMultiUserState);
  dispatch_group_enter(v6);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001373C0;
  v21[3] = &unk_100512A60;
  v8 = v7;
  v22 = v8;
  v9 = v6;
  v23 = v9;
  [(ADtvOSAssistantProperties *)self _getMultiUserSetupStatusWithCompletion:v21];
  dispatch_group_enter(v9);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100137400;
  v18[3] = &unk_100516750;
  v10 = v8;
  v19 = v10;
  v20 = v9;
  v11 = v9;
  [(ADtvOSAssistantProperties *)self _getODDUserPersonalizationArrayWithCompletion:v18];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100137440;
  v15[3] = &unk_10051E038;
  v16 = v10;
  v17 = v4;
  v13 = v10;
  v14 = v4;
  dispatch_group_notify(v11, queue, v15);
}

- (void)getODDtvOSAssistantPropertiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[ADtvOSAssistantProperties getODDtvOSAssistantPropertiesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = objc_alloc_init(ODDSiriSchemaODDtvOSAssistantProperties);
  v7 = [(ADtvOSAssistantProperties *)self _getODDHomePodProperties];
  [v6 setHomePodProperties:v7];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001375CC;
  v10[3] = &unk_100512A38;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [(ADtvOSAssistantProperties *)self _getODDMultiUserStateWithCompletion:v10];
}

- (ADtvOSAssistantProperties)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADtvOSAssistantProperties;
  v6 = [(ADtvOSAssistantProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end
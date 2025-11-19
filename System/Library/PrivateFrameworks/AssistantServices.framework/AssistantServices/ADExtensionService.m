@interface ADExtensionService
- (ADCommandCenterClient)commandCenterClient;
- (ADExtensionService)init;
- (BOOL)_intentNeedsPreparation:(id)a3;
- (BOOL)_prepareNameComponents:(id)a3 meCardCache:(id *)a4;
- (BOOL)_preparePerson:(id)a3 meCardCache:(id *)a4;
- (BOOL)_replacement:(id *)a3 forString:(id)a4 meCardCache:(id *)a5;
- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4;
- (id)_meCard;
- (id)_meCardWithCache:(id *)a3;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (id)siriLanguageCodeForExtensionService:(id)a3;
- (void)_logUUFRConditionally:(id)a3 executionContext:(id)a4;
- (void)cancelOperationsForRequestID:(id)a3 forAssistantID:(id)a4 fromRemote:(BOOL)a5 reason:(int64_t)a6;
- (void)extensionService:(id)a3 extensionRequestDidFinishForApplication:(id)a4 error:(id)a5;
- (void)extensionService:(id)a3 extensionRequestWillStartForApplication:(id)a4;
- (void)extensionService:(id)a3 handleFailedStartPlaybackWithDestination:(int64_t)a4 completion:(id)a5;
- (void)extensionService:(id)a3 handleIntent:(id)a4 inBackgroundAppWithBundleIdentifier:(id)a5 completionHandler:(id)a6;
- (void)extensionService:(id)a3 handleIntentForwardingAction:(id)a4 inBackgroundAppWithBundleIdentifier:(id)a5 completionHandler:(id)a6;
- (void)extensionService:(id)a3 logEventWithType:(int64_t)a4 context:(id)a5 contextNoCopy:(BOOL)a6;
- (void)extensionService:(id)a3 prepareForStartPlaybackWithDestination:(int64_t)a4 intent:(id)a5 completion:(id)a6;
- (void)extensionService:(id)a3 prepareIntent:(id)a4;
- (void)extensionService:(id)a3 processData:(id)a4 usingSecurityProcedure:(int64_t)a5 completionHandler:(id)a6;
- (void)extensionService:(id)a3 processDataUsingSHA256WithInMemorySalt:(id)a4 completionHandler:(id)a5;
- (void)extensionService:(id)a3 requiresHandlingCommand:(id)a4 completion:(id)a5;
- (void)extensionService:(id)a3 suspendTimeout:(BOOL)a4;
- (void)extensionService:(id)a3 wantsToCacheImage:(id)a4;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
- (void)resetExternalResources;
@end

@implementation ADExtensionService

- (ADCommandCenterClient)commandCenterClient
{
  WeakRetained = objc_loadWeakRetained(&self->_commandCenterClient);

  return WeakRetained;
}

- (void)_logUUFRConditionally:(id)a3 executionContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    kdebug_trace();
    v7 = [v6 info];
    v8 = [v7 turnId];

    if (v8)
    {
      v9 = objc_alloc_init(SISchemaUEIUUFRReady);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 setAceCommandClass:v11];

      v12 = [NSUUID alloc];
      v13 = [v5 aceId];
      v14 = [v12 initWithUUIDString:v13];

      if (v14)
      {
        v15 = [[SISchemaUUID alloc] initWithNSUUID:v14];
        [v9 setAceCommandId:v15];
      }

      v16 = +[AFDialogPhase completionDialogPhase];
      [v9 setDialogPhase:{objc_msgSend(v16, "UEIUUFRReadyDialogPhase")}];

      [v9 setUufrReadySource:3];
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v20 = v17;
        v21 = [v5 encodedClassName];
        v22 = 136315650;
        v23 = "[ADExtensionService _logUUFRConditionally:executionContext:]";
        v24 = 2112;
        v25 = v21;
        v26 = 2112;
        v27 = v8;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Logging UUFR ready for %@ with turnId: %@", &v22, 0x20u);
      }

      v18 = +[AFAnalytics sharedAnalytics];
      [v18 logInstrumentation:v9 machAbsoluteTime:mach_absolute_time() turnIdentifier:v8];
    }

    else
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315138;
        v23 = "[ADExtensionService _logUUFRConditionally:executionContext:]";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Failed to find turnId for UUFR", &v22, 0xCu);
      }
    }
  }
}

- (BOOL)_intentNeedsPreparation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_prepareNameComponents:(id)a3 meCardCache:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v36 = 0;
    v8 = [v6 namePrefix];
    v9 = [(ADExtensionService *)self _replacement:&v36 forString:v8 meCardCache:a4];
    v10 = v36;

    if (v9)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s setting nameComponents.namePrefix to %@", buf, 0x16u);
      }

      [v6 setNamePrefix:v10];
    }

    v35 = v10;
    v12 = [v6 givenName];
    v13 = [(ADExtensionService *)self _replacement:&v35 forString:v12 meCardCache:a4];
    v14 = v35;

    if (v13)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s setting nameComponents.givenName to %@", buf, 0x16u);
      }

      [v6 setGivenName:v14];
      LOBYTE(v9) = 1;
    }

    v34 = v14;
    v16 = [v6 middleName];
    v17 = [(ADExtensionService *)self _replacement:&v34 forString:v16 meCardCache:a4];
    v18 = v34;

    if (v17)
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
        v39 = 2112;
        v40 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s setting nameComponents.middleName to %@", buf, 0x16u);
      }

      [v6 setMiddleName:v18];
      LOBYTE(v9) = 1;
    }

    v33 = v18;
    v20 = [v6 nameSuffix];
    v21 = [(ADExtensionService *)self _replacement:&v33 forString:v20 meCardCache:a4];
    v22 = v33;

    if (v21)
    {
      v23 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s setting nameComponents.nameSuffix to %@", buf, 0x16u);
      }

      [v6 setNameSuffix:v22];
      LOBYTE(v9) = 1;
    }

    v32 = v22;
    v24 = [v6 nickname];
    v25 = [(ADExtensionService *)self _replacement:&v32 forString:v24 meCardCache:a4];
    v26 = v32;

    if (v25)
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s setting nameComponents.nickname to %@", buf, 0x16u);
      }

      [v6 setNickname:v26];
      LOBYTE(v9) = 1;
    }

    v28 = [v6 phoneticRepresentation];
    v29 = [(ADExtensionService *)self _prepareNameComponents:v28 meCardCache:a4];

    v30 = v29 | v9;
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

- (BOOL)_preparePerson:(id)a3 meCardCache:(id *)a4
{
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[ADExtensionService _preparePerson:meCardCache:]";
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v30 = 0;
  v8 = [v6 contactIdentifier];
  v9 = [(ADExtensionService *)self _replacement:&v30 forString:v8 meCardCache:a4];
  v10 = v30;

  if (v9)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[ADExtensionService _preparePerson:meCardCache:]";
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s setting contactIdentifier to %@", buf, 0x16u);
    }

    [v6 setContactIdentifier:v10];
  }

  v29 = v10;
  v12 = [v6 displayName];
  v13 = [(ADExtensionService *)self _replacement:&v29 forString:v12 meCardCache:a4];
  v14 = v29;

  if (v13)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[ADExtensionService _preparePerson:meCardCache:]";
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s setting displayName to %@", buf, 0x16u);
    }

    [v6 setDisplayName:v14];
    v9 = 1;
  }

  v16 = [v6 nameComponents];
  v17 = [(ADExtensionService *)self _prepareNameComponents:v16 meCardCache:a4];

  v18 = v17 | v9;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = [v6 siriMatches];
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v18 |= [(ADExtensionService *)self _preparePerson:*(*(&v25 + 1) + 8 * v23) meCardCache:a4];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v21);
  }

  return v18 & 1;
}

- (BOOL)_replacement:(id *)a3 forString:(id)a4 meCardCache:(id *)a5
{
  v8 = a4;
  if ([v8 isEqualToString:_AFSUPRedactedUserFirstName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:a5];
    v10 = [v9 firstName];
LABEL_13:
    *a3 = v10;

    goto LABEL_14;
  }

  if ([v8 isEqualToString:_AFSUPRedactedUserMiddleName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:a5];
    v10 = [v9 middleName];
    goto LABEL_13;
  }

  if ([v8 isEqualToString:_AFSUPRedactedUserLastName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:a5];
    v10 = [v9 lastName];
    goto LABEL_13;
  }

  if ([v8 isEqualToString:_AFSUPRedactedUserFullName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:a5];
    v10 = [v9 fullName];
    goto LABEL_13;
  }

  if ([v8 isEqualToString:_AFSUPRedactedUserNickName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:a5];
    v10 = [v9 nickName];
    goto LABEL_13;
  }

  if ([v8 isEqualToString:_AFSUPRedactedMeCardInternalGUID])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:a5];
    v10 = [v9 internalGUID];
    goto LABEL_13;
  }

  if (![v8 isEqualToString:_AFSUPRedactedRelationName])
  {
    v11 = 0;
    goto LABEL_15;
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[ADExtensionService _replacement:forString:meCardCache:]";
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s No replacement for %@, but there should be one", &v14, 0x16u);
  }

LABEL_14:
  v11 = 1;
LABEL_15:

  return v11;
}

- (id)_meCard
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10017A754;
  v18 = sub_10017A764;
  v19 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[ADAssistantDataManager sharedDataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017A76C;
  v11[3] = &unk_100513E68;
  v13 = &v14;
  v4 = v2;
  v12 = v4;
  [v3 getMeCardsWithCompletion:v11];

  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  v7 = AFSiriLogContextConnection;
  if (v6 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[ADExtensionService _meCard]";
    v22 = 2048;
    v23 = 0x4000000000000000;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Timed out fetching meCard  after waiting %0.1g seconds", buf, 0x16u);
    v7 = AFSiriLogContextConnection;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v15[5])
    {
      v8 = @"a meCard";
    }

    else
    {
      v8 = @"(null)";
    }

    *buf = 136315394;
    v21 = "[ADExtensionService _meCard]";
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Got %@", buf, 0x16u);
  }

  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)_meCardWithCache:(id *)a3
{
  v5 = *a3;
  if (!v5)
  {
    v5 = [(ADExtensionService *)self _meCard];
    *a3 = v5;
  }

  return v5;
}

- (void)extensionService:(id)a3 handleFailedStartPlaybackWithDestination:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4 < 3)
  {
    v10 = +[ADCommandCenter sharedCommandCenter];
    [v10 handleFailedStartPlaybackWithDestination:a4 completion:v8];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADExtensionService extensionService:handleFailedStartPlaybackWithDestination:completion:]";
      v13 = 2048;
      v14 = a4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unexpected value for startPlaybackType: %ld, ignoring.", &v11, 0x16u);
    }

    v8[2](v8);
  }
}

- (void)extensionService:(id)a3 prepareForStartPlaybackWithDestination:(int64_t)a4 intent:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 < 3)
  {
    v13 = +[ADCommandCenter sharedCommandCenter];
    [v13 prepareForStartPlaybackWithDestination:a4 intent:v10 completion:v11];
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADExtensionService extensionService:prepareForStartPlaybackWithDestination:intent:completion:]";
      v16 = 2048;
      v17 = a4;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unexpected value for startPlaybackType: %ld, ignoring.", &v14, 0x16u);
    }

    v11[2](v11, 0);
  }
}

- (void)extensionService:(id)a3 requiresHandlingCommand:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[ADCommandCenter sharedCommandCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017AB50;
  v10[3] = &unk_10051CD88;
  v11 = v6;
  v9 = v6;
  [v8 handleCommand:v7 completion:v10];
}

- (id)siriLanguageCodeForExtensionService:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 languageCode];

  return v4;
}

- (void)extensionService:(id)a3 logEventWithType:(int64_t)a4 context:(id)a5 contextNoCopy:(BOOL)a6
{
  v6 = a6;
  v8 = a5;
  v9 = +[AFAnalytics sharedAnalytics];
  v11 = v9;
  if ((a4 - 601) >= 0x29)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4;
  }

  [v9 logEventWithType:v10 context:v8 contextNoCopy:v6];
}

- (void)extensionService:(id)a3 handleIntentForwardingAction:(id)a4 inBackgroundAppWithBundleIdentifier:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 handleIntentForwardingAction:v10 inBackgroundApplicationWithBundleIdentifier:v9 completionHandler:v8];
}

- (void)extensionService:(id)a3 handleIntent:(id)a4 inBackgroundAppWithBundleIdentifier:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 handleIntent:v10 inBackgroundAppWithBundleId:v9 reply:v8];
}

- (void)extensionService:(id)a3 extensionRequestDidFinishForApplication:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ADExtensionService *)self commandCenterClient];
  [v9 adExtensionRequestFinishedForApplication:v8 error:v7];
}

- (void)extensionService:(id)a3 extensionRequestWillStartForApplication:(id)a4
{
  v5 = a4;
  v6 = [(ADExtensionService *)self commandCenterClient];
  [v6 adExtensionRequestWillStartForApplication:v5];
}

- (void)extensionService:(id)a3 wantsToCacheImage:(id)a4
{
  v5 = a4;
  v6 = [(ADExtensionService *)self commandCenterClient];
  [v6 adWantsToCacheImage:v5];
}

- (void)extensionService:(id)a3 processDataUsingSHA256WithInMemorySalt:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[ADSecurityService sharedService];
  [v8 processData:v7 usingProcedure:5 completion:v6];
}

- (void)extensionService:(id)a3 processData:(id)a4 usingSecurityProcedure:(int64_t)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = +[ADSecurityService sharedService];
  [v10 processData:v9 usingProcedure:a5 completion:v8];
}

- (void)extensionService:(id)a3 suspendTimeout:(BOOL)a4
{
  v4 = a4;
  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 _setIsTimeoutSuspended:v4];
}

- (void)extensionService:(id)a3 prepareIntent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ADExtensionService *)self _intentNeedsPreparation:v7])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ADExtensionService extensionService:prepareIntent:]";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Preparing INPerson in %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v14 = sub_10017A754;
    v15 = sub_10017A764;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10017B224;
    v10[3] = &unk_100513E40;
    v10[4] = self;
    v10[5] = buf;
    [v7 _intents_enumerateObjectsOfClass:objc_opt_class() withBlock:v10];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v11 = 136315138;
      v12 = "[ADExtensionService extensionService:prepareIntent:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Finished", v11, 0xCu);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)cancelOperationsForRequestID:(id)a3 forAssistantID:(id)a4 fromRemote:(BOOL)a5 reason:(int64_t)a6
{
  v6 = a5;
  v9 = a3;
  v10 = a4;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[ADExtensionService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]";
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s requestID = %@, fromRemote = %d", &v12, 0x1Cu);
  }

  if (!v6)
  {
    [(INSExtensionService *)self->_extensionService resetExternalResources];
  }
}

- (void)resetExternalResources
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADExtensionService resetExternalResources]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(INSExtensionService *)self->_extensionService resetExternalResources];
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10017B9A0;
  v50[3] = &unk_10051E088;
  v50[4] = self;
  v11 = v9;
  v51 = v11;
  v37 = v10;
  v52 = v37;
  v12 = a5;
  v13 = objc_retainBlock(v50);
  [(ADExtensionService *)self _logUUFRConditionally:v11 executionContext:v12];
  v14 = dispatch_group_create();
  v15 = [(INSExtensionService *)self->_extensionService extensionContext];
  v16 = [v12 originPeerInfo];

  v17 = [v16 airPlayRouteIdentifiers];

  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v54 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]";
    v55 = 2112;
    v56 = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s airPlayRouteIdentifiers = %@", buf, 0x16u);
  }

  [v15 _setAirPlayRouteIdentifiers:{v17, v17}];
  v19 = +[ADCommandCenter sharedCommandCenter];
  dispatch_group_enter(v14);
  v20 = [AFSafetyBlock alloc];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10017BAD0;
  v48[3] = &unk_10051BF08;
  v21 = v14;
  v49 = v21;
  v22 = [v20 initWithBlock:v48];
  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v54 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]";
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Fetching audioSession", buf, 0xCu);
  }

  v24 = [v19 _speechManager];
  v25 = [v24 audioSessionController];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10017BBA0;
  v45[3] = &unk_100513DF0;
  v26 = v15;
  v46 = v26;
  v27 = v22;
  v47 = v27;
  [v25 getAudioSessionIDWithCompletion:v45];

  v28 = [v19 _speechCapturingContext];
  if (v28)
  {
    dispatch_group_enter(v21);
    v29 = [AFSafetyBlock alloc];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10017BCA0;
    v43[3] = &unk_10051BF08;
    v44 = v21;
    v30 = [v29 initWithBlock:v43];
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v54 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]";
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s Fetching audioRecordRouteAndDeviceIdentification", buf, 0xCu);
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10017BD70;
    v40[3] = &unk_100513E18;
    v41 = v26;
    v42 = v30;
    v32 = v30;
    [v28 getAudioRecordRouteAndDeviceIdentificationWithCompletion:v40];
  }

  v33 = +[ADCommandCenter sharedCommandCenter];
  v34 = [v33 _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017BEAC;
  block[3] = &unk_10051CF58;
  v39 = v13;
  v35 = v13;
  dispatch_group_notify(v21, v34, block);
}

- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = [(ADExtensionService *)self commandsForDomain:a4];
  LOBYTE(self) = [v7 containsObject:v6];

  return self;
}

- (id)commandsForDomain:(id)a3
{
  v4 = a3;
  v5 = [(ADExtensionService *)self domains];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(ADExtensionService *)self domains];
    if ([v7 containsObject:v4])
    {
      v8 = [(INSExtensionService *)self->_extensionService commandIdentifiers];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)domains
{
  v2 = [(INSExtensionService *)self->_extensionService groupIdentifier];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (ADExtensionService)init
{
  v7.receiver = self;
  v7.super_class = ADExtensionService;
  v2 = [(ADExtensionService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(ADService *)v2 setIdentifier:@"ADExtensionServiceIdentifier"];
    v4 = [[INSExtensionService alloc] initWithOptions:&__NSDictionary0__struct];
    extensionService = v3->_extensionService;
    v3->_extensionService = v4;

    [(INSExtensionService *)v3->_extensionService setDelegate:v3];
  }

  return v3;
}

@end
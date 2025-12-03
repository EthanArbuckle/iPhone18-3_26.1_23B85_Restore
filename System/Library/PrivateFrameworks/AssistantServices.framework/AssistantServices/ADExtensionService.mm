@interface ADExtensionService
- (ADCommandCenterClient)commandCenterClient;
- (ADExtensionService)init;
- (BOOL)_intentNeedsPreparation:(id)preparation;
- (BOOL)_prepareNameComponents:(id)components meCardCache:(id *)cache;
- (BOOL)_preparePerson:(id)person meCardCache:(id *)cache;
- (BOOL)_replacement:(id *)_replacement forString:(id)string meCardCache:(id *)cache;
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (id)_meCard;
- (id)_meCardWithCache:(id *)cache;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (id)siriLanguageCodeForExtensionService:(id)service;
- (void)_logUUFRConditionally:(id)conditionally executionContext:(id)context;
- (void)cancelOperationsForRequestID:(id)d forAssistantID:(id)iD fromRemote:(BOOL)remote reason:(int64_t)reason;
- (void)extensionService:(id)service extensionRequestDidFinishForApplication:(id)application error:(id)error;
- (void)extensionService:(id)service extensionRequestWillStartForApplication:(id)application;
- (void)extensionService:(id)service handleFailedStartPlaybackWithDestination:(int64_t)destination completion:(id)completion;
- (void)extensionService:(id)service handleIntent:(id)intent inBackgroundAppWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)extensionService:(id)service handleIntentForwardingAction:(id)action inBackgroundAppWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)extensionService:(id)service logEventWithType:(int64_t)type context:(id)context contextNoCopy:(BOOL)copy;
- (void)extensionService:(id)service prepareForStartPlaybackWithDestination:(int64_t)destination intent:(id)intent completion:(id)completion;
- (void)extensionService:(id)service prepareIntent:(id)intent;
- (void)extensionService:(id)service processData:(id)data usingSecurityProcedure:(int64_t)procedure completionHandler:(id)handler;
- (void)extensionService:(id)service processDataUsingSHA256WithInMemorySalt:(id)salt completionHandler:(id)handler;
- (void)extensionService:(id)service requiresHandlingCommand:(id)command completion:(id)completion;
- (void)extensionService:(id)service suspendTimeout:(BOOL)timeout;
- (void)extensionService:(id)service wantsToCacheImage:(id)image;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)resetExternalResources;
@end

@implementation ADExtensionService

- (ADCommandCenterClient)commandCenterClient
{
  WeakRetained = objc_loadWeakRetained(&self->_commandCenterClient);

  return WeakRetained;
}

- (void)_logUUFRConditionally:(id)conditionally executionContext:(id)context
{
  conditionallyCopy = conditionally;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    kdebug_trace();
    info = [contextCopy info];
    turnId = [info turnId];

    if (turnId)
    {
      v9 = objc_alloc_init(SISchemaUEIUUFRReady);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 setAceCommandClass:v11];

      v12 = [NSUUID alloc];
      aceId = [conditionallyCopy aceId];
      v14 = [v12 initWithUUIDString:aceId];

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
        encodedClassName = [conditionallyCopy encodedClassName];
        v22 = 136315650;
        v23 = "[ADExtensionService _logUUFRConditionally:executionContext:]";
        v24 = 2112;
        v25 = encodedClassName;
        v26 = 2112;
        v27 = turnId;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Logging UUFR ready for %@ with turnId: %@", &v22, 0x20u);
      }

      v18 = +[AFAnalytics sharedAnalytics];
      [v18 logInstrumentation:v9 machAbsoluteTime:mach_absolute_time() turnIdentifier:turnId];
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

- (BOOL)_intentNeedsPreparation:(id)preparation
{
  preparationCopy = preparation;
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

- (BOOL)_prepareNameComponents:(id)components meCardCache:(id *)cache
{
  componentsCopy = components;
  if (componentsCopy)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v38 = "[ADExtensionService _prepareNameComponents:meCardCache:]";
      v39 = 2112;
      v40 = componentsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v36 = 0;
    namePrefix = [componentsCopy namePrefix];
    v9 = [(ADExtensionService *)self _replacement:&v36 forString:namePrefix meCardCache:cache];
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

      [componentsCopy setNamePrefix:v10];
    }

    v35 = v10;
    givenName = [componentsCopy givenName];
    v13 = [(ADExtensionService *)self _replacement:&v35 forString:givenName meCardCache:cache];
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

      [componentsCopy setGivenName:v14];
      LOBYTE(v9) = 1;
    }

    v34 = v14;
    middleName = [componentsCopy middleName];
    v17 = [(ADExtensionService *)self _replacement:&v34 forString:middleName meCardCache:cache];
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

      [componentsCopy setMiddleName:v18];
      LOBYTE(v9) = 1;
    }

    v33 = v18;
    nameSuffix = [componentsCopy nameSuffix];
    v21 = [(ADExtensionService *)self _replacement:&v33 forString:nameSuffix meCardCache:cache];
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

      [componentsCopy setNameSuffix:v22];
      LOBYTE(v9) = 1;
    }

    v32 = v22;
    nickname = [componentsCopy nickname];
    v25 = [(ADExtensionService *)self _replacement:&v32 forString:nickname meCardCache:cache];
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

      [componentsCopy setNickname:v26];
      LOBYTE(v9) = 1;
    }

    phoneticRepresentation = [componentsCopy phoneticRepresentation];
    v29 = [(ADExtensionService *)self _prepareNameComponents:phoneticRepresentation meCardCache:cache];

    v30 = v29 | v9;
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

- (BOOL)_preparePerson:(id)person meCardCache:(id *)cache
{
  personCopy = person;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[ADExtensionService _preparePerson:meCardCache:]";
    v34 = 2112;
    v35 = personCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v30 = 0;
  contactIdentifier = [personCopy contactIdentifier];
  v9 = [(ADExtensionService *)self _replacement:&v30 forString:contactIdentifier meCardCache:cache];
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

    [personCopy setContactIdentifier:v10];
  }

  v29 = v10;
  displayName = [personCopy displayName];
  v13 = [(ADExtensionService *)self _replacement:&v29 forString:displayName meCardCache:cache];
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

    [personCopy setDisplayName:v14];
    v9 = 1;
  }

  nameComponents = [personCopy nameComponents];
  v17 = [(ADExtensionService *)self _prepareNameComponents:nameComponents meCardCache:cache];

  v18 = v17 | v9;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  siriMatches = [personCopy siriMatches];
  v20 = [siriMatches countByEnumeratingWithState:&v25 objects:v31 count:16];
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
          objc_enumerationMutation(siriMatches);
        }

        v18 |= [(ADExtensionService *)self _preparePerson:*(*(&v25 + 1) + 8 * v23) meCardCache:cache];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [siriMatches countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v21);
  }

  return v18 & 1;
}

- (BOOL)_replacement:(id *)_replacement forString:(id)string meCardCache:(id *)cache
{
  stringCopy = string;
  if ([stringCopy isEqualToString:_AFSUPRedactedUserFirstName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:cache];
    firstName = [v9 firstName];
LABEL_13:
    *_replacement = firstName;

    goto LABEL_14;
  }

  if ([stringCopy isEqualToString:_AFSUPRedactedUserMiddleName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:cache];
    firstName = [v9 middleName];
    goto LABEL_13;
  }

  if ([stringCopy isEqualToString:_AFSUPRedactedUserLastName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:cache];
    firstName = [v9 lastName];
    goto LABEL_13;
  }

  if ([stringCopy isEqualToString:_AFSUPRedactedUserFullName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:cache];
    firstName = [v9 fullName];
    goto LABEL_13;
  }

  if ([stringCopy isEqualToString:_AFSUPRedactedUserNickName])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:cache];
    firstName = [v9 nickName];
    goto LABEL_13;
  }

  if ([stringCopy isEqualToString:_AFSUPRedactedMeCardInternalGUID])
  {
    v9 = [(ADExtensionService *)self _meCardWithCache:cache];
    firstName = [v9 internalGUID];
    goto LABEL_13;
  }

  if (![stringCopy isEqualToString:_AFSUPRedactedRelationName])
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
    v17 = stringCopy;
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

- (id)_meCardWithCache:(id *)cache
{
  _meCard = *cache;
  if (!_meCard)
  {
    _meCard = [(ADExtensionService *)self _meCard];
    *cache = _meCard;
  }

  return _meCard;
}

- (void)extensionService:(id)service handleFailedStartPlaybackWithDestination:(int64_t)destination completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (destination < 3)
  {
    v10 = +[ADCommandCenter sharedCommandCenter];
    [v10 handleFailedStartPlaybackWithDestination:destination completion:completionCopy];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADExtensionService extensionService:handleFailedStartPlaybackWithDestination:completion:]";
      v13 = 2048;
      destinationCopy = destination;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unexpected value for startPlaybackType: %ld, ignoring.", &v11, 0x16u);
    }

    completionCopy[2](completionCopy);
  }
}

- (void)extensionService:(id)service prepareForStartPlaybackWithDestination:(int64_t)destination intent:(id)intent completion:(id)completion
{
  serviceCopy = service;
  intentCopy = intent;
  completionCopy = completion;
  if (destination < 3)
  {
    v13 = +[ADCommandCenter sharedCommandCenter];
    [v13 prepareForStartPlaybackWithDestination:destination intent:intentCopy completion:completionCopy];
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADExtensionService extensionService:prepareForStartPlaybackWithDestination:intent:completion:]";
      v16 = 2048;
      destinationCopy = destination;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unexpected value for startPlaybackType: %ld, ignoring.", &v14, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)extensionService:(id)service requiresHandlingCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  v8 = +[ADCommandCenter sharedCommandCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017AB50;
  v10[3] = &unk_10051CD88;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 handleCommand:commandCopy completion:v10];
}

- (id)siriLanguageCodeForExtensionService:(id)service
{
  v3 = +[AFPreferences sharedPreferences];
  languageCode = [v3 languageCode];

  return languageCode;
}

- (void)extensionService:(id)service logEventWithType:(int64_t)type context:(id)context contextNoCopy:(BOOL)copy
{
  copyCopy = copy;
  contextCopy = context;
  v9 = +[AFAnalytics sharedAnalytics];
  v11 = v9;
  if ((type - 601) >= 0x29)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  [v9 logEventWithType:typeCopy context:contextCopy contextNoCopy:copyCopy];
}

- (void)extensionService:(id)service handleIntentForwardingAction:(id)action inBackgroundAppWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  actionCopy = action;
  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 handleIntentForwardingAction:actionCopy inBackgroundApplicationWithBundleIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)extensionService:(id)service handleIntent:(id)intent inBackgroundAppWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  intentCopy = intent;
  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 handleIntent:intentCopy inBackgroundAppWithBundleId:identifierCopy reply:handlerCopy];
}

- (void)extensionService:(id)service extensionRequestDidFinishForApplication:(id)application error:(id)error
{
  errorCopy = error;
  applicationCopy = application;
  commandCenterClient = [(ADExtensionService *)self commandCenterClient];
  [commandCenterClient adExtensionRequestFinishedForApplication:applicationCopy error:errorCopy];
}

- (void)extensionService:(id)service extensionRequestWillStartForApplication:(id)application
{
  applicationCopy = application;
  commandCenterClient = [(ADExtensionService *)self commandCenterClient];
  [commandCenterClient adExtensionRequestWillStartForApplication:applicationCopy];
}

- (void)extensionService:(id)service wantsToCacheImage:(id)image
{
  imageCopy = image;
  commandCenterClient = [(ADExtensionService *)self commandCenterClient];
  [commandCenterClient adWantsToCacheImage:imageCopy];
}

- (void)extensionService:(id)service processDataUsingSHA256WithInMemorySalt:(id)salt completionHandler:(id)handler
{
  handlerCopy = handler;
  saltCopy = salt;
  v8 = +[ADSecurityService sharedService];
  [v8 processData:saltCopy usingProcedure:5 completion:handlerCopy];
}

- (void)extensionService:(id)service processData:(id)data usingSecurityProcedure:(int64_t)procedure completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v10 = +[ADSecurityService sharedService];
  [v10 processData:dataCopy usingProcedure:procedure completion:handlerCopy];
}

- (void)extensionService:(id)service suspendTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 _setIsTimeoutSuspended:timeoutCopy];
}

- (void)extensionService:(id)service prepareIntent:(id)intent
{
  serviceCopy = service;
  intentCopy = intent;
  if ([(ADExtensionService *)self _intentNeedsPreparation:intentCopy])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ADExtensionService extensionService:prepareIntent:]";
      *&buf[12] = 2112;
      *&buf[14] = intentCopy;
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
    [intentCopy _intents_enumerateObjectsOfClass:objc_opt_class() withBlock:v10];
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

- (void)cancelOperationsForRequestID:(id)d forAssistantID:(id)iD fromRemote:(BOOL)remote reason:(int64_t)reason
{
  remoteCopy = remote;
  dCopy = d;
  iDCopy = iD;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[ADExtensionService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]";
    v14 = 2112;
    v15 = dCopy;
    v16 = 1024;
    v17 = remoteCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s requestID = %@, fromRemote = %d", &v12, 0x1Cu);
  }

  if (!remoteCopy)
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

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10017B9A0;
  v50[3] = &unk_10051E088;
  v50[4] = self;
  v11 = commandCopy;
  v51 = v11;
  v37 = replyCopy;
  v52 = v37;
  contextCopy = context;
  v13 = objc_retainBlock(v50);
  [(ADExtensionService *)self _logUUFRConditionally:v11 executionContext:contextCopy];
  v14 = dispatch_group_create();
  extensionContext = [(INSExtensionService *)self->_extensionService extensionContext];
  originPeerInfo = [contextCopy originPeerInfo];

  airPlayRouteIdentifiers = [originPeerInfo airPlayRouteIdentifiers];

  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v54 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]";
    v55 = 2112;
    v56 = airPlayRouteIdentifiers;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s airPlayRouteIdentifiers = %@", buf, 0x16u);
  }

  [extensionContext _setAirPlayRouteIdentifiers:{airPlayRouteIdentifiers, airPlayRouteIdentifiers}];
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

  _speechManager = [v19 _speechManager];
  audioSessionController = [_speechManager audioSessionController];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10017BBA0;
  v45[3] = &unk_100513DF0;
  v26 = extensionContext;
  v46 = v26;
  v27 = v22;
  v47 = v27;
  [audioSessionController getAudioSessionIDWithCompletion:v45];

  _speechCapturingContext = [v19 _speechCapturingContext];
  if (_speechCapturingContext)
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
    [_speechCapturingContext getAudioRecordRouteAndDeviceIdentificationWithCompletion:v40];
  }

  v33 = +[ADCommandCenter sharedCommandCenter];
  _queue = [v33 _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017BEAC;
  block[3] = &unk_10051CF58;
  v39 = v13;
  v35 = v13;
  dispatch_group_notify(v21, _queue, block);
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  commandCopy = command;
  v7 = [(ADExtensionService *)self commandsForDomain:domain];
  LOBYTE(self) = [v7 containsObject:commandCopy];

  return self;
}

- (id)commandsForDomain:(id)domain
{
  domainCopy = domain;
  domains = [(ADExtensionService *)self domains];
  v6 = [domains containsObject:domainCopy];

  if (v6)
  {
    domains2 = [(ADExtensionService *)self domains];
    if ([domains2 containsObject:domainCopy])
    {
      commandIdentifiers = [(INSExtensionService *)self->_extensionService commandIdentifiers];
    }

    else
    {
      commandIdentifiers = 0;
    }
  }

  else
  {
    commandIdentifiers = &__NSArray0__struct;
  }

  return commandIdentifiers;
}

- (id)domains
{
  groupIdentifier = [(INSExtensionService *)self->_extensionService groupIdentifier];
  v5 = groupIdentifier;
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
@interface ADCompanionRoutingPhoneService
+ (id)_contactForCall:(id)call;
+ (id)_incomingCallTypeForService:(int)service;
+ (id)_personAttributeForCall:(id)call;
+ (id)_personForCall:(id)call;
- (ADCompanionRoutingPhoneService)init;
- (id)_hangUpCurrentCall;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)_addTimer:(id)timer;
- (void)_answerHandler:(id)handler completion:(id)completion;
- (void)_handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)_hangUpHandler:(id)handler completion:(id)completion;
- (void)_incomingCallSearchHandler:(id)handler completion:(id)completion;
- (void)_removeTimer:(id)timer;
- (void)_unhandledCommand:(id)command completion:(id)completion;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation ADCompanionRoutingPhoneService

- (id)domains
{
  v4 = SAPhoneGroupIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)_removeTimer:(id)timer
{
  timerCopy = timer;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = timerCopy;
  if (timerCopy)
  {
    [(NSMutableSet *)self->_watchdogTimers removeObject:timerCopy];
    v4 = [(NSMutableSet *)self->_watchdogTimers count];
    v5 = timerCopy;
    if (!v4)
    {
      watchdogTimers = self->_watchdogTimers;
      self->_watchdogTimers = 0;

      v5 = timerCopy;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)_addTimer:(id)timer
{
  timerCopy = timer;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = timerCopy;
  if (timerCopy)
  {
    watchdogTimers = self->_watchdogTimers;
    if (!watchdogTimers)
    {
      v7 = objc_opt_new();
      v8 = self->_watchdogTimers;
      self->_watchdogTimers = v7;

      watchdogTimers = self->_watchdogTimers;
    }

    v4 = [(NSMutableSet *)watchdogTimers addObject:timerCopy];
    v5 = timerCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = typeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, messageType = %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if ([typeCopy isEqualToString:@"phone"])
  {
    v15 = [messageCopy objectForKey:@"cmd"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = AFSiriLogContextDaemon;
    v18 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
    if ((isKindOfClass & 1) == 0)
    {
      if (v18)
      {
        *buf = 136315138;
        v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Received message with malformed command", buf, 0xCu);
        if (!completionCopy)
        {
          goto LABEL_21;
        }
      }

      else if (!completionCopy)
      {
        goto LABEL_21;
      }

      v24 = 11;
LABEL_19:
      v20 = [AFError errorWithCode:v24];
      completionCopy[2](completionCopy, 0, v20);
LABEL_20:

      goto LABEL_21;
    }

    if (v18)
    {
      *buf = 136315394;
      v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
      v30 = 2112;
      v31 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Received command: %@", buf, 0x16u);
    }

    if ([v15 isEqualToString:@"hangup"])
    {
      _hangUpCurrentCall = [(ADCompanionRoutingPhoneService *)self _hangUpCurrentCall];
      v20 = _hangUpCurrentCall;
      if (completionCopy)
      {
        dictionary = [_hangUpCurrentCall dictionary];
        v27 = dictionary;
        v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        (completionCopy)[2](completionCopy, v22, 0);
      }

      goto LABEL_20;
    }

    v25 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Received message with unrecognized command", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (completionCopy)
    {
LABEL_18:
      v24 = 1004;
      goto LABEL_19;
    }

LABEL_21:

    goto LABEL_22;
  }

  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v30 = 2112;
    v31 = typeCopy;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Received message with unknown message type: %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
LABEL_12:
    v15 = [AFError errorWithCode:1004];
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023E86C;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = messageCopy;
  v21 = typeCopy;
  v22 = identifierCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = typeCopy;
  v18 = messageCopy;
  dispatch_async(serialQueue, block);
}

- (void)_unhandledCommand:(id)command completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = [[SACommandFailed alloc] initWithReason:@"Command not supported"];
    (*(completion + 2))(completionCopy, v6, 0);
  }
}

- (void)_incomingCallSearchHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  v24 = objc_alloc_init(SAPhoneIncomingCallSearchCompleted);
  v23 = [TUCallCenter callCenterWithQueue:self->_serialQueue];
  v5 = [v23 audioAndVideoCallsWithStatus:4];
  v6 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  v26 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = objc_alloc_init(SAPhoneIncomingCallSearchResult);
        v13 = [objc_opt_class() _incomingCallTypeForService:{objc_msgSend(v11, "service")}];
        [v12 setIncomingCallType:v13];

        v14 = [objc_opt_class() _personAttributeForCall:v11];
        object = [v14 object];
        v16 = object;
        if (object)
        {
          phones = [object phones];
          firstObject = [phones firstObject];

          if (firstObject)
          {
            number = [firstObject number];
            [v14 setData:number];

            [v14 setTypedData:firstObject];
          }

          else
          {
            emails = [v16 emails];
            firstObject2 = [emails firstObject];

            if (firstObject2)
            {
              emailAddress = [firstObject2 emailAddress];
              [v14 setData:emailAddress];

              [v14 setTypedData:firstObject2];
            }

            v6 = v26;
          }
        }

        [v12 setCaller:v14];
        [v6 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  [v24 setIncomingCallSearchResults:v6];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v24, 0);
  }
}

- (id)_hangUpCurrentCall
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [TUCallCenter callCenterWithQueue:self->_serialQueue];
  v5 = [v4 audioOrVideoCallWithStatus:3];
  v6 = [v4 audioAndVideoCallsWithStatus:4];
  v7 = [v4 audioAndVideoCallsWithStatus:1];
  v8 = [v4 audioAndVideoCallsWithStatus:2];
  if (v5)
  {
    [v4 disconnectCurrentCallAndActivateHeld];
    v9 = objc_alloc_init(SAPhoneHangUpResponse);
    [v9 setPhoneHangUpCallType:SAPhoneHangUpCallTypeOUTGOINGValue];
    v10 = [v4 callsWithStatus:1];
    [v9 setActiveCallRemaining:{objc_msgSend(v10, "count") != 0}];

    v11 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v12 = v11;
    activeCallRemaining = [v9 activeCallRemaining];
    *buf = 136315394;
    v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
    v38 = 1024;
    v39 = activeCallRemaining;
    v14 = "%s Outgoing call hung up. Active call remains: %d";
    goto LABEL_22;
  }

  if ([v6 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v4 disconnectCall:*(*(&v31 + 1) + 8 * i) withReason:{2, v31}];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    v9 = objc_alloc_init(SAPhoneHangUpResponse);
    [v9 setPhoneHangUpCallType:SAPhoneHangUpCallTypeINCOMINGValue];
    v20 = [v4 callsWithStatus:1];
    [v9 setActiveCallRemaining:{objc_msgSend(v20, "count") != 0}];

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = v21;
      activeCallRemaining2 = [v9 activeCallRemaining];
      *buf = 136315394;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      v38 = 1024;
      v39 = activeCallRemaining2;
      v14 = "%s Outgoing call hung up. Active call remains: %d";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, buf, 0x12u);
    }
  }

  else
  {
    if ([v7 count])
    {
      [v4 disconnectCurrentCallAndActivateHeld];
      v9 = objc_alloc_init(SAPhoneHangUpResponse);
      [v9 setPhoneHangUpCallType:SAPhoneHangUpCallTypeACTIVEValue];
      v23 = [v4 callsWithStatus:1];
      [v9 setActiveCallRemaining:{objc_msgSend(v23, "count") != 0}];

      v24 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v12 = v24;
      activeCallRemaining3 = [v9 activeCallRemaining];
      *buf = 136315394;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      v38 = 1024;
      v39 = activeCallRemaining3;
      v14 = "%s Active call hung up. Active call remains: %d";
      goto LABEL_22;
    }

    if ([v8 count])
    {
      [v4 disconnectCurrentCallAndActivateHeld];
      v9 = objc_alloc_init(SAPhoneHangUpResponse);
      [v9 setPhoneHangUpCallType:SAPhoneHangUpCallTypeHELDValue];
      v26 = [v4 callsWithStatus:1];
      [v9 setActiveCallRemaining:{objc_msgSend(v26, "count") != 0}];

      v27 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v12 = v27;
      activeCallRemaining4 = [v9 activeCallRemaining];
      *buf = 136315394;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      v38 = 1024;
      v39 = activeCallRemaining4;
      v14 = "%s Held call hung up. Active call remains: %d";
      goto LABEL_22;
    }

    v30 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s No calls exist. Returning failure", buf, 0xCu);
    }

    v9 = [[SACommandFailed alloc] initWithReason:@"No call to hang up"];
  }

LABEL_23:

  return v9;
}

- (void)_hangUpHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  _hangUpCurrentCall = [(ADCompanionRoutingPhoneService *)self _hangUpCurrentCall];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ADCompanionRoutingPhoneService _hangUpHandler:completion:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Attempting to message Stereo Partner...", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3042000000;
    v32 = sub_10023F4C8;
    v33 = sub_10023F4D4;
    v34 = 0;
    v10 = [AFWatchdogTimer alloc];
    serialQueue = self->_serialQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10023F4DC;
    v22[3] = &unk_100517788;
    v23 = handlerCopy;
    selfCopy = self;
    p_buf = &buf;
    v12 = completionCopy;
    v26 = v12;
    v13 = _hangUpCurrentCall;
    v25 = v13;
    v14 = [v10 initWithTimeoutInterval:serialQueue onQueue:v22 timeoutHandler:10.0];
    objc_storeWeak((*(&buf + 1) + 40), v14);
    [(ADCompanionRoutingPhoneService *)self _addTimer:v14];
    [v14 start];
    v15 = +[ADCompanionService sharedInstance];
    v28 = @"cmd";
    v29 = @"hangup";
    v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10023F5E8;
    v18[3] = &unk_100517CD8;
    v18[4] = self;
    v17 = v14;
    v19 = v17;
    v20 = v13;
    v21 = v12;
    [v15 sendStereoPartnerMessage:v16 messageType:@"phone" completion:v18];

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(&v34);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, _hangUpCurrentCall, 0);
  }
}

- (void)_answerHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  v6 = [TUCallCenter callCenterWithQueue:self->_serialQueue];
  incomingCall = [v6 incomingCall];
  if (incomingCall)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADCompanionRoutingPhoneService _answerHandler:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s An incoming call exists. Answering it and returning success", &v12, 0xCu);
    }

    [v6 answerCall:incomingCall];
    v9 = objc_alloc_init(SACommandSucceeded);
    if (completionCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = objc_alloc_init(SACommandFailed);
    incomingVideoCall = [v6 incomingVideoCall];

    if (incomingVideoCall)
    {
      [v9 setErrorCode:SAPhoneAnswerVideoCallErrorCode];
      v11 = @"Unable to answer video calls";
    }

    else
    {
      v11 = @"No call to answer";
    }

    [v9 setReason:v11];
    if (completionCopy)
    {
LABEL_5:
      completionCopy[2](completionCopy, v9, 0);
    }
  }
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    encodedClassName = [commandCopy encodedClassName];
    groupIdentifier = [commandCopy groupIdentifier];
    *buf = 136315650;
    v22 = "[ADCompanionRoutingPhoneService handleCommand:forDomain:executionContext:reply:]";
    v23 = 2112;
    v24 = encodedClassName;
    v25 = 2112;
    v26 = groupIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Handling command (%@) for domain (%@)", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023FCB8;
  block[3] = &unk_10051E088;
  v18 = commandCopy;
  selfCopy = self;
  v20 = replyCopy;
  v15 = replyCopy;
  v16 = commandCopy;
  dispatch_async(serialQueue, block);
}

- (id)commandsForDomain:(id)domain
{
  if ([domain isEqualToString:SAPhoneGroupIdentifier])
  {
    v5[0] = SAPhoneAnswerClassIdentifier;
    v5[1] = SAPhoneHangUpClassIdentifier;
    v5[2] = SAPhoneIncomingCallSearchClassIdentifier;
    v3 = [NSArray arrayWithObjects:v5 count:3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ADCompanionRoutingPhoneService)init
{
  v10.receiver = self;
  v10.super_class = ADCompanionRoutingPhoneService;
  v2 = [(ADCompanionRoutingPhoneService *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Local Phone Service Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(ADService *)v2 setIdentifier:v7];

    v8 = +[ADCompanionService sharedInstance];
    [v8 setMessageHandler:v2 forMessageType:@"phone"];
  }

  return v2;
}

+ (id)_contactForCall:(id)call
{
  callCopy = call;
  v4 = callCopy;
  if (callCopy)
  {
    displayContext = [callCopy displayContext];
    personNameComponents = [displayContext personNameComponents];

    if (personNameComponents)
    {
      v7 = objc_alloc_init(CNMutableContact);
      namePrefix = [personNameComponents namePrefix];
      [v7 setNamePrefix:namePrefix];

      givenName = [personNameComponents givenName];
      [v7 setGivenName:givenName];

      middleName = [personNameComponents middleName];
      [v7 setMiddleName:middleName];

      familyName = [personNameComponents familyName];
      [v7 setFamilyName:familyName];

      nameSuffix = [personNameComponents nameSuffix];
      [v7 setNameSuffix:nameSuffix];

      nickname = [personNameComponents nickname];
      [v7 setNickname:nickname];

      phoneticRepresentation = [personNameComponents phoneticRepresentation];
      givenName2 = [phoneticRepresentation givenName];
      [v7 setPhoneticGivenName:givenName2];

      middleName2 = [phoneticRepresentation middleName];
      [v7 setPhoneticMiddleName:middleName2];

      familyName2 = [phoneticRepresentation familyName];
      [v7 setPhoneticFamilyName:familyName2];
    }

    else
    {
      v7 = 0;
    }

    displayContext2 = [v4 displayContext];
    companyName = [displayContext2 companyName];

    if ([companyName length])
    {
      if (!v7)
      {
        v7 = objc_alloc_init(CNMutableContact);
      }

      [v7 setOrganizationName:companyName];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_personForCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (callCopy)
  {
    contactIdentifier = [callCopy contactIdentifier];
    v7 = [contactIdentifier length];

    if (v7)
    {
      v8 = objc_alloc_init(SAPerson);
      contactIdentifier2 = [v5 contactIdentifier];
      [v8 setInternalGUID:contactIdentifier2];

      displayContext = [v5 displayContext];
      personNameComponents = [displayContext personNameComponents];

      namePrefix = [personNameComponents namePrefix];
      [v8 setPrefix:namePrefix];

      givenName = [personNameComponents givenName];
      [v8 setFirstName:givenName];

      middleName = [personNameComponents middleName];
      [v8 setMiddleName:middleName];

      familyName = [personNameComponents familyName];
      [v8 setLastName:familyName];

      nameSuffix = [personNameComponents nameSuffix];
      [v8 setSuffix:nameSuffix];

      nickname = [personNameComponents nickname];
      [v8 setNickName:nickname];

      phoneticRepresentation = [personNameComponents phoneticRepresentation];
      givenName2 = [phoneticRepresentation givenName];
      [v8 setFirstNamePhonetic:givenName2];

      familyName2 = [phoneticRepresentation familyName];
      [v8 setLastNamePhonetic:familyName2];

      displayContext2 = [v5 displayContext];
      companyName = [displayContext2 companyName];
      [v8 setCompany:companyName];

      v23 = [self _contactForCall:v5];
      if (v23)
      {
        v24 = [CNContactFormatter stringFromContact:v23 style:0];
        [v8 setFullName:v24];
      }
    }

    else
    {
      v8 = 0;
    }

    handle = [v5 handle];
    type = [handle type];
    value = [handle value];
    if ([value length] && (type & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (!v8)
      {
        v8 = objc_alloc_init(SAPerson);
      }

      if (type == 2)
      {
        v28 = objc_alloc_init(SAPhone);
        [v28 setNumber:value];
        v32 = v28;
        v29 = [NSArray arrayWithObjects:&v32 count:1];
        [v8 setPhones:v29];
      }

      else
      {
        v28 = objc_alloc_init(SAEmail);
        [v28 setEmailAddress:value];
        v31 = v28;
        v29 = [NSArray arrayWithObjects:&v31 count:1];
        [v8 setEmails:v29];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_personAttributeForCall:(id)call
{
  if (call)
  {
    callCopy = call;
    v4 = objc_alloc_init(SAPersonAttribute);
    v5 = [objc_opt_class() _personForCall:callCopy];
    [v4 setObject:v5];
    displayContext = [callCopy displayContext];

    name = [displayContext name];
    [v4 setDisplayText:name];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_incomingCallTypeForService:(int)service
{
  if ((service - 1) > 2)
  {
    v3 = &SAPhoneIncomingCallTypeUNKNOWNValue;
  }

  else
  {
    v3 = *(&off_1005177A8 + (service - 1));
  }

  return *v3;
}

@end
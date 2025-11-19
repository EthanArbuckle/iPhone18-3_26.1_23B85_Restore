@interface ADCompanionRoutingPhoneService
+ (id)_contactForCall:(id)a3;
+ (id)_incomingCallTypeForService:(int)a3;
+ (id)_personAttributeForCall:(id)a3;
+ (id)_personForCall:(id)a3;
- (ADCompanionRoutingPhoneService)init;
- (id)_hangUpCurrentCall;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (void)_addTimer:(id)a3;
- (void)_answerHandler:(id)a3 completion:(id)a4;
- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)_hangUpHandler:(id)a3 completion:(id)a4;
- (void)_incomingCallSearchHandler:(id)a3 completion:(id)a4;
- (void)_removeTimer:(id)a3;
- (void)_unhandledCommand:(id)a3 completion:(id)a4;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
@end

@implementation ADCompanionRoutingPhoneService

- (id)domains
{
  v4 = SAPhoneGroupIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)_removeTimer:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = v7;
  if (v7)
  {
    [(NSMutableSet *)self->_watchdogTimers removeObject:v7];
    v4 = [(NSMutableSet *)self->_watchdogTimers count];
    v5 = v7;
    if (!v4)
    {
      watchdogTimers = self->_watchdogTimers;
      self->_watchdogTimers = 0;

      v5 = v7;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)_addTimer:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = v9;
  if (v9)
  {
    watchdogTimers = self->_watchdogTimers;
    if (!watchdogTimers)
    {
      v7 = objc_opt_new();
      v8 = self->_watchdogTimers;
      self->_watchdogTimers = v7;

      watchdogTimers = self->_watchdogTimers;
    }

    v4 = [(NSMutableSet *)watchdogTimers addObject:v9];
    v5 = v9;
  }

  _objc_release_x1(v4, v5);
}

- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, messageType = %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v11 isEqualToString:@"phone"])
  {
    v15 = [v10 objectForKey:@"cmd"];
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
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      else if (!v13)
      {
        goto LABEL_21;
      }

      v24 = 11;
LABEL_19:
      v20 = [AFError errorWithCode:v24];
      v13[2](v13, 0, v20);
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
      v19 = [(ADCompanionRoutingPhoneService *)self _hangUpCurrentCall];
      v20 = v19;
      if (v13)
      {
        v21 = [v19 dictionary];
        v27 = v21;
        v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        (v13)[2](v13, v22, 0);
      }

      goto LABEL_20;
    }

    v25 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADCompanionRoutingPhoneService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Received message with unrecognized command", buf, 0xCu);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v13)
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
    v31 = v11;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Received message with unknown message type: %@", buf, 0x16u);
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (v13)
  {
LABEL_12:
    v15 = [AFError errorWithCode:1004];
    v13[2](v13, 0, v15);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023E86C;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(serialQueue, block);
}

- (void)_unhandledCommand:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [[SACommandFailed alloc] initWithReason:@"Command not supported"];
    (*(a4 + 2))(v5, v6, 0);
  }
}

- (void)_incomingCallSearchHandler:(id)a3 completion:(id)a4
{
  v25 = a4;
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
        v15 = [v14 object];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 phones];
          v18 = [v17 firstObject];

          if (v18)
          {
            v19 = [v18 number];
            [v14 setData:v19];

            [v14 setTypedData:v18];
          }

          else
          {
            v20 = [v16 emails];
            v21 = [v20 firstObject];

            if (v21)
            {
              v22 = [v21 emailAddress];
              [v14 setData:v22];

              [v14 setTypedData:v21];
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
  if (v25)
  {
    v25[2](v25, v24, 0);
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
    v13 = [v9 activeCallRemaining];
    *buf = 136315394;
    v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
    v38 = 1024;
    v39 = v13;
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
      v22 = [v9 activeCallRemaining];
      *buf = 136315394;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      v38 = 1024;
      v39 = v22;
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
      v25 = [v9 activeCallRemaining];
      *buf = 136315394;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      v38 = 1024;
      v39 = v25;
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
      v28 = [v9 activeCallRemaining];
      *buf = 136315394;
      v37 = "[ADCompanionRoutingPhoneService _hangUpCurrentCall]";
      v38 = 1024;
      v39 = v28;
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

- (void)_hangUpHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCompanionRoutingPhoneService *)self _hangUpCurrentCall];
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
    v23 = v6;
    v24 = self;
    p_buf = &buf;
    v12 = v7;
    v26 = v12;
    v13 = v8;
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

  else if (v7)
  {
    (*(v7 + 2))(v7, v8, 0);
  }
}

- (void)_answerHandler:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [TUCallCenter callCenterWithQueue:self->_serialQueue];
  v7 = [v6 incomingCall];
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADCompanionRoutingPhoneService _answerHandler:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s An incoming call exists. Answering it and returning success", &v12, 0xCu);
    }

    [v6 answerCall:v7];
    v9 = objc_alloc_init(SACommandSucceeded);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = objc_alloc_init(SACommandFailed);
    v10 = [v6 incomingVideoCall];

    if (v10)
    {
      [v9 setErrorCode:SAPhoneAnswerVideoCallErrorCode];
      v11 = @"Unable to answer video calls";
    }

    else
    {
      v11 = @"No call to answer";
    }

    [v9 setReason:v11];
    if (v5)
    {
LABEL_5:
      v5[2](v5, v9, 0);
    }
  }
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v8 encodedClassName];
    v13 = [v8 groupIdentifier];
    *buf = 136315650;
    v22 = "[ADCompanionRoutingPhoneService handleCommand:forDomain:executionContext:reply:]";
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Handling command (%@) for domain (%@)", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023FCB8;
  block[3] = &unk_10051E088;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v15 = v9;
  v16 = v8;
  dispatch_async(serialQueue, block);
}

- (id)commandsForDomain:(id)a3
{
  if ([a3 isEqualToString:SAPhoneGroupIdentifier])
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

+ (id)_contactForCall:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayContext];
    v6 = [v5 personNameComponents];

    if (v6)
    {
      v7 = objc_alloc_init(CNMutableContact);
      v8 = [v6 namePrefix];
      [v7 setNamePrefix:v8];

      v9 = [v6 givenName];
      [v7 setGivenName:v9];

      v10 = [v6 middleName];
      [v7 setMiddleName:v10];

      v11 = [v6 familyName];
      [v7 setFamilyName:v11];

      v12 = [v6 nameSuffix];
      [v7 setNameSuffix:v12];

      v13 = [v6 nickname];
      [v7 setNickname:v13];

      v14 = [v6 phoneticRepresentation];
      v15 = [v14 givenName];
      [v7 setPhoneticGivenName:v15];

      v16 = [v14 middleName];
      [v7 setPhoneticMiddleName:v16];

      v17 = [v14 familyName];
      [v7 setPhoneticFamilyName:v17];
    }

    else
    {
      v7 = 0;
    }

    v18 = [v4 displayContext];
    v19 = [v18 companyName];

    if ([v19 length])
    {
      if (!v7)
      {
        v7 = objc_alloc_init(CNMutableContact);
      }

      [v7 setOrganizationName:v19];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_personForCall:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 contactIdentifier];
    v7 = [v6 length];

    if (v7)
    {
      v8 = objc_alloc_init(SAPerson);
      v9 = [v5 contactIdentifier];
      [v8 setInternalGUID:v9];

      v10 = [v5 displayContext];
      v11 = [v10 personNameComponents];

      v12 = [v11 namePrefix];
      [v8 setPrefix:v12];

      v13 = [v11 givenName];
      [v8 setFirstName:v13];

      v14 = [v11 middleName];
      [v8 setMiddleName:v14];

      v15 = [v11 familyName];
      [v8 setLastName:v15];

      v16 = [v11 nameSuffix];
      [v8 setSuffix:v16];

      v17 = [v11 nickname];
      [v8 setNickName:v17];

      v18 = [v11 phoneticRepresentation];
      v19 = [v18 givenName];
      [v8 setFirstNamePhonetic:v19];

      v20 = [v18 familyName];
      [v8 setLastNamePhonetic:v20];

      v21 = [v5 displayContext];
      v22 = [v21 companyName];
      [v8 setCompany:v22];

      v23 = [a1 _contactForCall:v5];
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

    v25 = [v5 handle];
    v26 = [v25 type];
    v27 = [v25 value];
    if ([v27 length] && (v26 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (!v8)
      {
        v8 = objc_alloc_init(SAPerson);
      }

      if (v26 == 2)
      {
        v28 = objc_alloc_init(SAPhone);
        [v28 setNumber:v27];
        v32 = v28;
        v29 = [NSArray arrayWithObjects:&v32 count:1];
        [v8 setPhones:v29];
      }

      else
      {
        v28 = objc_alloc_init(SAEmail);
        [v28 setEmailAddress:v27];
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

+ (id)_personAttributeForCall:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SAPersonAttribute);
    v5 = [objc_opt_class() _personForCall:v3];
    [v4 setObject:v5];
    v6 = [v3 displayContext];

    v7 = [v6 name];
    [v4 setDisplayText:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_incomingCallTypeForService:(int)a3
{
  if ((a3 - 1) > 2)
  {
    v3 = &SAPhoneIncomingCallTypeUNKNOWNValue;
  }

  else
  {
    v3 = *(&off_1005177A8 + (a3 - 1));
  }

  return *v3;
}

@end
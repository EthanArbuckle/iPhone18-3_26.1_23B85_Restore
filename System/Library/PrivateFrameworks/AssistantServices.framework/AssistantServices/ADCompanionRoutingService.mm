@interface ADCompanionRoutingService
- (ADCompanionRoutingService)init;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)_callStateDidChange:(id)change;
- (void)_handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)_processPendingCallResultBlocks;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)preheatDomain:(id)domain;
@end

@implementation ADCompanionRoutingService

- (void)_processPendingCallResultBlocks
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(NSMutableArray *)self->_pendingCallResultBlocks count];
  if (v3)
  {
    v4 = v3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADCompanionRoutingService _processPendingCallResultBlocks]";
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Processing %ld pending Call result(s)", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_pendingCallResultBlocks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    pendingCallResultBlocks = self->_pendingCallResultBlocks;
    self->_pendingCallResultBlocks = 0;
  }
}

- (void)_callStateDidChange:(id)change
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA180;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)preheatDomain:(id)domain
{
  domainCopy = domain;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCompanionRoutingService preheatDomain:]";
    v18 = 2112;
    v19 = domainCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s preheating companion service domain: %@", &v16, 0x16u);
  }

  if (qword_10058FF80 == -1)
  {
    if (!domainCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&qword_10058FF80, &stru_100510470);
    if (!domainCopy)
    {
      goto LABEL_10;
    }
  }

  v5 = [qword_10058FF78 objectForKeyedSubscript:domainCopy];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(SAAceDomainSignal);
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];

    [v7 setAceId:uUIDString];
    [v7 setDomain:v6];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      encodedClassName = [v7 encodedClassName];
      groupIdentifier = [v7 groupIdentifier];
      v16 = 136315650;
      v17 = "[ADCompanionRoutingService preheatDomain:]";
      v18 = 2112;
      v19 = encodedClassName;
      v20 = 2112;
      v21 = groupIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Dispatching command (%@) for domain (%@)", &v16, 0x20u);
    }

    v14 = +[ADCommandCenter sharedCommandCenter];
    [v14 _remoteExecute_remoteDeviceExecuteCommand:v7 executionContext:0 completion:&stru_100510490];

    goto LABEL_12;
  }

LABEL_10:
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCompanionRoutingService preheatDomain:]";
    v18 = 2112;
    v19 = domainCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s unsupported preheat domain: %@", &v16, 0x16u);
  }

LABEL_12:
}

- (void)_handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    encodedClassName = [commandCopy encodedClassName];
    groupIdentifier = [commandCopy groupIdentifier];
    *buf = 136315650;
    v31 = "[ADCompanionRoutingService _handleCommand:forDomain:executionContext:reply:]";
    v32 = 2112;
    v33 = encodedClassName;
    v34 = 2112;
    v35 = groupIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Dispatching command (%@) for domain (%@)", buf, 0x20u);
  }

  encodedClassName2 = [commandCopy encodedClassName];
  v19 = [encodedClassName2 isEqualToString:SAPhoneCallClassIdentifier];
  v20 = v19;
  if (!v19)
  {
    if ([encodedClassName2 isEqualToString:SAUILParseExpressionsClassIdentifier])
    {
      targetDevice = [commandCopy targetDevice];
      assistantId = [targetDevice assistantId];

LABEL_10:
      v26 = +[ADCommandCenter sharedCommandCenter];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000AA978;
      v27[3] = &unk_100510450;
      v27[4] = self;
      v28 = replyCopy;
      v29 = v20;
      [v26 _remoteExecute_remoteDeviceExecuteCommand:commandCopy onDeviceForAssistantId:assistantId executionContext:contextCopy completion:v27];

      goto LABEL_11;
    }

LABEL_9:
    assistantId = 0;
    goto LABEL_10;
  }

  v21 = +[ADCommandCenter sharedCommandCenter];
  _hasIncomingCall = [v21 _hasIncomingCall];

  if (!_hasIncomingCall)
  {
    goto LABEL_9;
  }

  if (replyCopy)
  {
    v23 = [SACommandFailed alloc];
    assistantId = [v23 initWithErrorCode:SAPhoneCompanionHasIncomingCallErrorCode];
    (*(replyCopy + 2))(replyCopy, assistantId, 0);
LABEL_11:
  }
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAF30;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = commandCopy;
  v21 = domainCopy;
  v22 = contextCopy;
  v23 = replyCopy;
  v15 = replyCopy;
  v16 = contextCopy;
  v17 = domainCopy;
  v18 = commandCopy;
  dispatch_async(serialQueue, block);
}

- (id)commandsForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:SASmsGroupIdentifier])
  {
    v16[0] = SASmsSearchClassIdentifier;
    v16[1] = SADomainObjectCancelClassIdentifier;
    v16[2] = SADomainObjectCommitClassIdentifier;
    v16[3] = SADomainObjectCreateClassIdentifier;
    v16[4] = SADomainObjectUpdateClassIdentifier;
    v16[5] = SASmsGroupSearchClassIdentifier;
    v16[6] = SASmsRecipientSearchClassIdentifier;
    v16[7] = SADomainObjectRetrieveClassIdentifier;
    v4 = v16;
LABEL_3:
    v5 = 8;
LABEL_13:
    v6 = [NSArray arrayWithObjects:v4 count:v5];
    goto LABEL_14;
  }

  if ([domainCopy isEqualToString:SAABGroupIdentifier])
  {
    v15[0] = SADomainObjectCancelClassIdentifier;
    v15[1] = SADomainObjectCommitClassIdentifier;
    v15[2] = SADomainObjectUpdateClassIdentifier;
    v15[3] = SADomainObjectRetrieveClassIdentifier;
    v15[4] = SADomainObjectPunchOutClassIdentifier;
    v15[5] = SAABPersonSearchClassIdentifier;
    v15[6] = SAABMultiPersonSearchClassIdentifier;
    v4 = v15;
    v5 = 7;
    goto LABEL_13;
  }

  if ([domainCopy isEqualToString:SAReminderGroupIdentifier])
  {
    v14[0] = SAReminderSearchClassIdentifier;
    v14[1] = SAReminderSnoozeClassIdentifier;
    v14[2] = SAReminderListSearchClassIdentifier;
    v14[3] = SADomainObjectCommitClassIdentifier;
    v14[4] = SADomainObjectCreateClassIdentifier;
    v14[5] = SADomainObjectDeleteClassIdentifier;
    v14[6] = SADomainObjectUpdateClassIdentifier;
    v14[7] = SADomainObjectRetrieveClassIdentifier;
    v4 = v14;
    goto LABEL_3;
  }

  if ([domainCopy isEqualToString:SAUILGroupIdentifier])
  {
    v13 = SAUILParseExpressionsClassIdentifier;
    v4 = &v13;
LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  if ([domainCopy isEqualToString:SAGroupIdentifier])
  {
    v12 = SAAcknowledgeAlertClassIdentifier;
    v4 = &v12;
    goto LABEL_12;
  }

  if ([domainCopy isEqualToString:SAPhoneGroupIdentifier])
  {
    v11[0] = SAPhoneCallClassIdentifier;
    v11[1] = SAPhoneSearchClassIdentifier;
    v4 = v11;
LABEL_19:
    v5 = 2;
    goto LABEL_13;
  }

  if ([domainCopy isEqualToString:SACalendarGroupIdentifier])
  {
    v10[0] = SADomainObjectDeleteClassIdentifier;
    v10[1] = SADomainObjectCommitClassIdentifier;
    v10[2] = SADomainObjectRetrieveClassIdentifier;
    v10[3] = SACalendarEventSearchClassIdentifier;
    v10[4] = SACalendarDefaultSourceGetClassIdentifier;
    v4 = v10;
    v5 = 5;
    goto LABEL_13;
  }

  if ([domainCopy isEqualToString:SAEmailGroupIdentifier])
  {
    v9[0] = SADomainObjectCreateClassIdentifier;
    v9[1] = SADomainObjectCommitClassIdentifier;
    v9[2] = SADomainObjectRetrieveClassIdentifier;
    v9[3] = SAEmailSearchClassIdentifier;
    v4 = v9;
    v5 = 4;
    goto LABEL_13;
  }

  if ([domainCopy isEqualToString:SAStockGroupIdentifier])
  {
    v8[0] = SAStockAddClassIdentifier;
    v8[1] = SAStockSearchClassIdentifier;
    v4 = v8;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)domains
{
  v4[0] = SASmsGroupIdentifier;
  v4[1] = SAABGroupIdentifier;
  v4[2] = SAReminderGroupIdentifier;
  v4[3] = SAUILGroupIdentifier;
  v4[4] = SAGroupIdentifier;
  v4[5] = SAPhoneGroupIdentifier;
  v4[6] = SACalendarGroupIdentifier;
  v4[7] = SAEmailGroupIdentifier;
  v4[8] = SAStockGroupIdentifier;
  v2 = [NSArray arrayWithObjects:v4 count:9];

  return v2;
}

- (ADCompanionRoutingService)init
{
  v10.receiver = self;
  v10.super_class = ADCompanionRoutingService;
  v2 = [(ADCompanionRoutingService *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Companion Routing Service Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(ADService *)v2 setIdentifier:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_callStateDidChange:" name:@"ADCallStateDidChangeNotification" object:0];
  }

  return v2;
}

@end
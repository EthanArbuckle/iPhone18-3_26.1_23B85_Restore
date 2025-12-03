@interface MessagePushHandler
+ (id)commandHandlerRegistry;
+ (id)localCommandHandlerRegistry;
+ (void)addLocalLockdownCommandHandlersToRegistry:(id)registry;
+ (void)addLocalStandardCommandHandlersToRegistry:(id)registry;
+ (void)addLockdownCommandHandlersToRegistry:(id)registry;
+ (void)addStandardCommandHandlersToRegistry:(id)registry;
- (BOOL)_shouldImmediatelySendAckForMessage:(id)message command:(id)command;
- (MessagePushHandler)initWithIDSAccount:(id)account;
- (id)messageReplayObjectWithService:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d;
- (void)_service:(id)_service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context isBeingReplayed:(BOOL)replayed;
- (void)addListener:(id)listener;
- (void)dealloc;
- (void)removeListener:(id)listener;
- (void)replayMessage:(id)message;
- (void)sendManualAckForMessageWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context;
@end

@implementation MessagePushHandler

+ (id)commandHandlerRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_74400;
  block[3] = &unk_114010;
  block[4] = self;
  if (qword_124348 != -1)
  {
    dispatch_once(&qword_124348, block);
  }

  handlers = [qword_124340 handlers];

  return handlers;
}

+ (void)addStandardCommandHandlersToRegistry:(id)registry
{
  registryCopy = registry;
  v4 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDErrorMessage";
    v21 = 2112;
    v22 = &off_119440;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114050 forCommand:&off_119440];
  v5 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDDeliveryReceipt";
    v21 = 2112;
    v22 = &off_119458;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114070 forCommand:&off_119458];
  v6 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDReflectedDeliveryReceipt";
    v21 = 2112;
    v22 = &off_119470;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114090 forCommand:&off_119470];
  v7 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDReadReceipt";
    v21 = 2112;
    v22 = &off_119488;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_1140B0 forCommand:&off_119488];
  v8 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDUpdateAttachmentsMessage";
    v21 = 2112;
    v22 = &off_1194A0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_1140D0 forCommand:&off_1194A0];
  v9 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDPlayedReceipt";
    v21 = 2112;
    v22 = &off_1194B8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_1140F0 forCommand:&off_1194B8];
  v10 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDSavedReceipt";
    v21 = 2112;
    v22 = &off_1194D0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114110 forCommand:&off_1194D0];
  v11 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDTextMessage";
    v21 = 2112;
    v22 = &off_1194E8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114130 forCommand:&off_1194E8];
  v12 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDLocationShareOfferCommand";
    v21 = 2112;
    v22 = &off_119500;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114150 forCommand:&off_119500];
  v13 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDGenericCommandMessage";
    v21 = 2112;
    v22 = &off_119518;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114170 forCommand:&off_119518];
  v14 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDNicknameInformationMessage";
    v21 = 2112;
    v22 = &off_119530;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114190 forCommand:&off_119530];
  v15 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDDeleteSyncMessage";
    v21 = 2112;
    v22 = &off_119548;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_1141B0 forCommand:&off_119548];
  v16 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDRecoverSyncMessage";
    v21 = 2112;
    v22 = &off_119560;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_1141D0 forCommand:&off_119560];
  v17 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDGenericGroupMessageCommand";
    v21 = 2112;
    v22 = &off_119578;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_1141F0 forCommand:&off_119578];
  v18 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDBalloonTransportCommand";
    v21 = 2112;
    v22 = &off_119590;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114210 forCommand:&off_119590];
}

+ (void)addLockdownCommandHandlersToRegistry:(id)registry
{
  registryCopy = registry;
  [registryCopy setPassThroughLockdownHandlerForCommand:&off_119548];
  [registryCopy setPassThroughLockdownHandlerForCommand:&off_119578];
  [registryCopy setPassThroughLockdownHandlerForCommand:&off_1194E8];
}

+ (id)localCommandHandlerRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7B9A0;
  block[3] = &unk_114010;
  block[4] = self;
  if (qword_124388 != -1)
  {
    dispatch_once(&qword_124388, block);
  }

  handlers = [qword_124380 handlers];

  return handlers;
}

+ (void)addLocalStandardCommandHandlersToRegistry:(id)registry
{
  registryCopy = registry;
  v4 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "IMDRelayLocalMessageTypeRemoteFileRequest";
    v10 = 2112;
    v11 = IMDRelayLocalMessageTypeRemoteFileRequest;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114230 forCommand:IMDRelayLocalMessageTypeRemoteFileRequest];
  v5 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "IMDRelayLocalMessageTypeRemoteFileResponse";
    v10 = 2112;
    v11 = IMDRelayLocalMessageTypeRemoteFileResponse;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114250 forCommand:IMDRelayLocalMessageTypeRemoteFileResponse];
  v6 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "kLocalMessagePayloadDataRequestKey";
    v10 = 2112;
    v11 = @"payload-data-request";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114270 forCommand:@"payload-data-request"];
  v7 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "kLocalMessagePayloadDataResponseKey";
    v10 = 2112;
    v11 = @"payload-data-response";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [registryCopy setStandardHandler:&stru_114290 forCommand:@"payload-data-response"];
}

+ (void)addLocalLockdownCommandHandlersToRegistry:(id)registry
{
  v3 = IMDRelayLocalMessageTypeRemoteFileRequest;
  registryCopy = registry;
  [registryCopy setPassThroughLockdownHandlerForCommand:v3];
  [registryCopy setPassThroughLockdownHandlerForCommand:IMDRelayLocalMessageTypeRemoteFileResponse];
  [registryCopy setPassThroughLockdownHandlerForCommand:@"payload-data-request"];
  [registryCopy setPassThroughLockdownHandlerForCommand:@"payload-data-response"];
}

- (MessagePushHandler)initWithIDSAccount:(id)account
{
  accountCopy = account;
  v20.receiver = self;
  v20.super_class = MessagePushHandler;
  v6 = [(MessagePushHandler *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    commandHandlerRegistry = [objc_opt_class() commandHandlerRegistry];
    allKeys = [commandHandlerRegistry allKeys];
    v10 = [NSSet setWithArray:allKeys];

    serviceName = [(IDSAccount *)v7->_account serviceName];
    if ([serviceName isEqualToString:IDSServiceNameiMessageForBusiness])
    {
      serviceName2 = [(IDSAccount *)v7->_account serviceName];
    }

    else
    {
      serviceName2 = @"com.apple.madrid";
    }

    v13 = +[IMFeatureFlags sharedFeatureFlags];
    manuallyAckMessagesEnabled = [v13 manuallyAckMessagesEnabled];

    v15 = [IDSService alloc];
    if (manuallyAckMessagesEnabled)
    {
      v16 = [v15 initWithService:serviceName2 commands:v10 manuallyAckMessages:1];
    }

    else
    {
      v16 = [v15 initWithService:serviceName2 commands:v10];
    }

    idsService = v7->_idsService;
    v7->_idsService = v16;

    v18 = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "supports commands: %@", buf, 0xCu);
    }

    [(IDSService *)v7->_idsService addDelegate:v7 queue:&_dispatch_main_q];
    *&v7->_registeredForPush = 257;
  }

  return v7;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = MessagePushHandler;
  [(MessagePushHandler *)&v3 dealloc];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = +[NSMutableArray nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:listenerCopy];
  }
}

- (void)removeListener:(id)listener
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:listener];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (id)messageReplayObjectWithService:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d
{
  dCopy = d;
  messageCopy = message;
  accountCopy = account;
  loginID = [accountCopy loginID];
  uniqueID = [accountCopy uniqueID];
  serviceName = [accountCopy serviceName];

  v14 = [[IDSTransactionLogDictionaryMessage alloc] initWithDictionary:messageCopy accountUniqueID:uniqueID fromID:dCopy loginID:loginID serviceName:serviceName];

  return v14;
}

- (void)_service:(id)_service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context isBeingReplayed:(BOOL)replayed
{
  replayedCopy = replayed;
  _serviceCopy = _service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  oslog = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v92 = [messageCopy objectForKey:@"IDSIncomingMessageDecryptedData"];
    v58 = [v92 length];
    v62 = [messageCopy objectForKey:@"IDSIncomingMessageOriginalEncryptionType"];
    v91 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v64 = [v91 objectForKeyedSubscript:@"E"];
    v90 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v89 = [v90 objectForKeyedSubscript:@"P"];
    v57 = [v89 length];
    v88 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v87 = [v88 objectForKeyedSubscript:@"Pm"];
    v56 = [v87 length];
    v86 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v85 = [v86 objectForKeyedSubscript:@"U"];
    v55 = [v85 length];
    v84 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v83 = [v84 objectForKeyedSubscript:@"c"];
    longValue = [v83 longValue];
    v82 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v81 = [v82 objectForKeyedSubscript:@"cdr"];
    v53 = [v81 length];
    v80 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v79 = [v80 objectForKeyedSubscript:@"cdv"];
    longValue2 = [v79 longValue];
    v78 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v77 = [v78 objectForKeyedSubscript:@"di"];
    longValue3 = [v77 longValue];
    v76 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v75 = [v76 objectForKeyedSubscript:@"e"];
    unsignedLongValue = [v75 unsignedLongValue];
    v74 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v73 = [v74 objectForKeyedSubscript:@"eX"];
    longValue4 = [v73 longValue];
    v72 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v71 = [v72 objectForKeyedSubscript:@"htu"];
    longValue5 = [v71 longValue];
    v70 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v69 = [v70 objectForKeyedSubscript:@"nr"];
    longValue6 = [v69 longValue];
    v68 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v63 = [v68 objectForKeyedSubscript:@"sP"];
    v67 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v66 = [v67 objectForKeyedSubscript:@"P"];
    v46 = [v66 length];
    v65 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v13 = [v65 objectForKeyedSubscript:@"t"];
    v45 = [v13 length];
    v14 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v15 = [v14 objectForKeyedSubscript:@"tP"];
    v16 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v17 = [v16 objectForKeyedSubscript:@"v"];
    longValue7 = [v17 longValue];
    v19 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v20 = [v19 objectForKeyedSubscript:@"x-internal"];
    longValue8 = [v20 longValue];
    v61 = [messageCopy objectForKey:@"mid"];
    serviceIdentifier = [_serviceCopy serviceIdentifier];
    *buf = 134223874;
    v102 = v58;
    v103 = 2112;
    v104 = v62;
    v105 = 2112;
    v106 = v64;
    v107 = 2048;
    v108 = v57;
    v109 = 2048;
    v110 = v56;
    v111 = 2048;
    v112 = v55;
    v113 = 2048;
    v114 = longValue;
    v115 = 2048;
    v116 = v53;
    v117 = 2048;
    v118 = longValue2;
    v119 = 2048;
    v120 = longValue3;
    v121 = 2048;
    v122 = unsignedLongValue;
    v123 = 2048;
    v124 = longValue4;
    v125 = 2048;
    v126 = longValue5;
    v127 = 2048;
    v128 = longValue6;
    v129 = 2112;
    v130 = v63;
    v131 = 2048;
    v132 = v46;
    v133 = 2048;
    v134 = v45;
    v135 = 2112;
    v136 = v15;
    v137 = 2048;
    v138 = longValue7;
    v139 = 2048;
    v140 = longValue8;
    v141 = 2112;
    v142 = v61;
    v143 = 2112;
    v144 = serviceIdentifier;
    v145 = 2048;
    v146 = contextCopy;
    v147 = 2112;
    v148 = dCopy;
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Received message {\n   IDSIncomingMessageDecryptedData = <data of length %lu>\n   IDSIncomingMessageOriginalEncryptionType = %@\n   IDSIncomingMessagePushPayload = {\n       E = %@\n       P = <data of length %lu>\n       Pm = <data of length %lu>\n       U = <data of length %lu>\n       c = %ld\n       cdr = <data of length %lu>\n       cdv = %ld\n       di = %ld\n       e = %lu\n       eX = %ld\n       htu = %ld\n       nr = %lu\n       sP = %@\n       skU = <data of length %lu>\n       t = <data of length %lu>\n       tP = %@\n       v = %ld\n       x-internal = %ld\n   }\n   mid = %@\n} for service %@  context: %p  fromID: %@", buf, 0xF2u);
  }

  objc_autoreleasePoolPop(context);
  osloga = [[IMPowerAssertion alloc] initWithIdentifier:@"IncomingMessagePowerAssertion" timeout:10.0];
  v22 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
  v23 = IDSOriginalCommandKey;
  v24 = [v22 objectForKey:IDSOriginalCommandKey];
  if (!v24)
  {
    v24 = [v22 objectForKey:@"c"];
    if (!v24)
    {
      v24 = [messageCopy objectForKey:v23];
      if (!v24)
      {
        goto LABEL_28;
      }
    }
  }

  v25 = objc_opt_class();
  v26 = sub_2328(v25, messageCopy, @"mc");
  bOOLValue = [v26 BOOLValue];

  v28 = [v22 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v22 objectForKey:@"U"];
    v30 = [NSData _IDSDataFromBase64String:v29];
    v31 = JWUUIDPushObjectToString();
  }

  else
  {
    v29 = [v22 objectForKey:@"U"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v22 objectForKey:@"U"];
      v31 = JWUUIDPushObjectToString();
    }

    else
    {
      v31 = JWUUIDPushObjectToString();
    }
  }

  if (v31)
  {
    v33 = bOOLValue;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    iMWeakLinkClass() = [IMWeakLinkClass() sharedInstance];
    [iMWeakLinkClass() addMessagesID:v31];
  }

  if ([v24 integerValue] != &stru_B8.size + 3)
  {
    commandHandlerRegistry = [objc_opt_class() commandHandlerRegistry];
    v36 = [commandHandlerRegistry objectForKey:v24];

    if (v36)
    {
      (v36)[2](v36, self, messageCopy, v22, contextCopy, dCopy, replayedCopy);
    }

    goto LABEL_27;
  }

  v35 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Received IDS Nice message (Local Message) ", buf, 2u);
  }

  v36 = [_serviceCopy deviceForFromID:dCopy];
  if (v36)
  {
    v37 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 objectForKey:IMDRelayLocalMessageDictionaryDictKey];
      v40 = [v38 objectForKey:IMDRelayLocalMessageDictionaryTypeKey];
      localCommandHandlerRegistry = [objc_opt_class() localCommandHandlerRegistry];
      v42 = [localCommandHandlerRegistry objectForKey:v40];

      if (v42)
      {
        (v42)[2](v42, self, v39, v22, contextCopy, dCopy, replayedCopy);
      }
    }

LABEL_27:
LABEL_28:
    if ([(MessagePushHandler *)self _shouldImmediatelySendAckForMessage:messageCopy command:v24])
    {
      [(MessagePushHandler *)self sendManualAckForMessageWithContext:contextCopy];
    }

    goto LABEL_35;
  }

  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "We received a local message from a device that is not our own.", buf, 2u);
    }
  }

LABEL_35:
}

- (void)replayMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = messageCopy;
    if (v5)
    {
      v6 = v5;
      v7 = self->_idsService;
      v8 = self->_account;
      dictionaryValue = [v6 dictionaryValue];
      fromID = [v6 fromID];
      v11 = IMOSLoggingEnabled();
      if (v7 && v8 && dictionaryValue && fromID)
      {
        if (v11)
        {
          v12 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v15 = 138412290;
            v16 = v6;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "About to replay message dictionary after unlock %@", &v15, 0xCu);
          }
        }

        [(MessagePushHandler *)self _service:v7 account:v8 incomingTopLevelMessage:dictionaryValue fromID:fromID messageContext:0 isBeingReplayed:1];
      }

      else if (v11)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 138413058;
          v16 = v7;
          v17 = 2112;
          v18 = v8;
          v19 = 2112;
          v20 = dictionaryValue;
          v21 = 2112;
          v22 = fromID;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Got invalid input to replay message service: %@ account: %@ incomingTopLevelMessage: %@ fromID: %@ ", &v15, 0x2Au);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Got passed in null replay message", &v15, 2u);
      }
    }
  }
}

- (BOOL)_shouldImmediatelySendAckForMessage:(id)message command:(id)command
{
  messageCopy = message;
  if ([command integerValue] == &stru_20.flags)
  {
    v6 = [messageCopy objectForKey:@"IDSIncomingMessageDecryptedData"];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)sendManualAckForMessageWithContext:(id)context
{
  contextCopy = context;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  manuallyAckMessagesEnabled = [v5 manuallyAckMessagesEnabled];

  if (manuallyAckMessagesEnabled)
  {
    v7 = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = contextCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Sending manual ack for messageContext %@", &v9, 0xCu);
    }

    service = [(MessagePushHandler *)self service];
    [service sendAckForMessageWithContext:contextCopy];
  }
}

- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  if (__PAIR64__(self->_isListening, self->_registeredForPush) == 0x100000001 && self->_account == accountCopy)
  {
    [(MessagePushHandler *)self _service:serviceCopy account:accountCopy incomingTopLevelMessage:messageCopy fromID:dCopy messageContext:contextCopy isBeingReplayed:0];
  }

  else
  {
    v17 = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"NO";
      if (self->_registeredForPush)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      account = self->_account;
      if (self->_isListening)
      {
        v18 = @"YES";
      }

      v21 = 138413058;
      v22 = v19;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = accountCopy;
      v27 = 2112;
      accountCopy2 = account;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Early return receiving message, registeredForPush %@ isListening %@  account: %@   _account: %@", &v21, 0x2Au);
    }
  }
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v15 = contextCopy;
  if (__PAIR64__(self->_isListening, self->_registeredForPush) == 0x100000001 && self->_account == accountCopy && ([contextCopy messageHadEncryptedData] & 1) != 0)
  {
    v30 = serviceCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    vettedAliases = [(IDSAccount *)accountCopy vettedAliases];
    v17 = [vettedAliases countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(vettedAliases);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          _stripFZIDPrefix = [(__CFString *)dCopy _stripFZIDPrefix];
          LODWORD(v21) = [v21 isEqualToString:_stripFZIDPrefix];

          if (v21)
          {
            v28 = IMMessagePushHandlerLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = dCopy;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Early return message before first unlock, fromID %@ is from the same AppleID", buf, 0xCu);
            }

            serviceCopy = v30;
            goto LABEL_25;
          }
        }

        v18 = [vettedAliases countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v23 = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Posting notification for iMessage before first unlock", buf, 2u);
    }

    if (qword_124398 != -1)
    {
      sub_BD408();
    }

    vettedAliases = [(__CFString *)dCopy _stripFZIDPrefix];
    serviceCopy = v30;
    if (objc_opt_respondsToSelector())
    {
      uUIDString = [v15 performSelector:"originalGUID"];
    }

    else
    {
      v29 = +[NSUUID UUID];
      uUIDString = [v29 UUIDString];
    }

    off_124390(uUIDString, vettedAliases);
  }

  else
  {
    vettedAliases = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(vettedAliases, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      if (self->_registeredForPush)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      account = self->_account;
      if (self->_isListening)
      {
        v25 = @"YES";
      }

      *buf = 138413058;
      v37 = v26;
      v38 = 2112;
      v39 = v25;
      v40 = 2112;
      v41 = accountCopy;
      v42 = 2112;
      accountCopy2 = account;
      _os_log_impl(&dword_0, vettedAliases, OS_LOG_TYPE_DEFAULT, "Early return receiving message before first unlock, registeredForPush %@ isListening %@  account: %@   _account: %@", buf, 0x2Au);
    }
  }

LABEL_25:
}

@end
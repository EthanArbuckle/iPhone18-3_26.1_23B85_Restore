@interface MessagePushHandler
+ (id)commandHandlerRegistry;
+ (id)localCommandHandlerRegistry;
+ (void)addLocalLockdownCommandHandlersToRegistry:(id)a3;
+ (void)addLocalStandardCommandHandlersToRegistry:(id)a3;
+ (void)addLockdownCommandHandlersToRegistry:(id)a3;
+ (void)addStandardCommandHandlersToRegistry:(id)a3;
- (BOOL)_shouldImmediatelySendAckForMessage:(id)a3 command:(id)a4;
- (MessagePushHandler)initWithIDSAccount:(id)a3;
- (id)messageReplayObjectWithService:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6;
- (void)_service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7 isBeingReplayed:(BOOL)a8;
- (void)addListener:(id)a3;
- (void)dealloc;
- (void)removeListener:(id)a3;
- (void)replayMessage:(id)a3;
- (void)sendManualAckForMessageWithContext:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7;
@end

@implementation MessagePushHandler

+ (id)commandHandlerRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_74400;
  block[3] = &unk_114010;
  block[4] = a1;
  if (qword_124348 != -1)
  {
    dispatch_once(&qword_124348, block);
  }

  v2 = [qword_124340 handlers];

  return v2;
}

+ (void)addStandardCommandHandlersToRegistry:(id)a3
{
  v3 = a3;
  v4 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDErrorMessage";
    v21 = 2112;
    v22 = &off_119440;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114050 forCommand:&off_119440];
  v5 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDDeliveryReceipt";
    v21 = 2112;
    v22 = &off_119458;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114070 forCommand:&off_119458];
  v6 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDReflectedDeliveryReceipt";
    v21 = 2112;
    v22 = &off_119470;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114090 forCommand:&off_119470];
  v7 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDReadReceipt";
    v21 = 2112;
    v22 = &off_119488;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_1140B0 forCommand:&off_119488];
  v8 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDUpdateAttachmentsMessage";
    v21 = 2112;
    v22 = &off_1194A0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_1140D0 forCommand:&off_1194A0];
  v9 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDPlayedReceipt";
    v21 = 2112;
    v22 = &off_1194B8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_1140F0 forCommand:&off_1194B8];
  v10 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDSavedReceipt";
    v21 = 2112;
    v22 = &off_1194D0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114110 forCommand:&off_1194D0];
  v11 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDTextMessage";
    v21 = 2112;
    v22 = &off_1194E8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114130 forCommand:&off_1194E8];
  v12 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDLocationShareOfferCommand";
    v21 = 2112;
    v22 = &off_119500;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114150 forCommand:&off_119500];
  v13 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDGenericCommandMessage";
    v21 = 2112;
    v22 = &off_119518;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114170 forCommand:&off_119518];
  v14 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDNicknameInformationMessage";
    v21 = 2112;
    v22 = &off_119530;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114190 forCommand:&off_119530];
  v15 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDDeleteSyncMessage";
    v21 = 2112;
    v22 = &off_119548;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_1141B0 forCommand:&off_119548];
  v16 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDRecoverSyncMessage";
    v21 = 2112;
    v22 = &off_119560;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_1141D0 forCommand:&off_119560];
  v17 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDGenericGroupMessageCommand";
    v21 = 2112;
    v22 = &off_119578;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_1141F0 forCommand:&off_119578];
  v18 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "FTCommandIDBalloonTransportCommand";
    v21 = 2112;
    v22 = &off_119590;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Adding Handler for command: %s (%@)", &v19, 0x16u);
  }

  [v3 setStandardHandler:&stru_114210 forCommand:&off_119590];
}

+ (void)addLockdownCommandHandlersToRegistry:(id)a3
{
  v3 = a3;
  [v3 setPassThroughLockdownHandlerForCommand:&off_119548];
  [v3 setPassThroughLockdownHandlerForCommand:&off_119578];
  [v3 setPassThroughLockdownHandlerForCommand:&off_1194E8];
}

+ (id)localCommandHandlerRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7B9A0;
  block[3] = &unk_114010;
  block[4] = a1;
  if (qword_124388 != -1)
  {
    dispatch_once(&qword_124388, block);
  }

  v2 = [qword_124380 handlers];

  return v2;
}

+ (void)addLocalStandardCommandHandlersToRegistry:(id)a3
{
  v3 = a3;
  v4 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "IMDRelayLocalMessageTypeRemoteFileRequest";
    v10 = 2112;
    v11 = IMDRelayLocalMessageTypeRemoteFileRequest;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [v3 setStandardHandler:&stru_114230 forCommand:IMDRelayLocalMessageTypeRemoteFileRequest];
  v5 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "IMDRelayLocalMessageTypeRemoteFileResponse";
    v10 = 2112;
    v11 = IMDRelayLocalMessageTypeRemoteFileResponse;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [v3 setStandardHandler:&stru_114250 forCommand:IMDRelayLocalMessageTypeRemoteFileResponse];
  v6 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "kLocalMessagePayloadDataRequestKey";
    v10 = 2112;
    v11 = @"payload-data-request";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [v3 setStandardHandler:&stru_114270 forCommand:@"payload-data-request"];
  v7 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "kLocalMessagePayloadDataResponseKey";
    v10 = 2112;
    v11 = @"payload-data-response";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Adding Local Handler for command: %s (%@)", &v8, 0x16u);
  }

  [v3 setStandardHandler:&stru_114290 forCommand:@"payload-data-response"];
}

+ (void)addLocalLockdownCommandHandlersToRegistry:(id)a3
{
  v3 = IMDRelayLocalMessageTypeRemoteFileRequest;
  v4 = a3;
  [v4 setPassThroughLockdownHandlerForCommand:v3];
  [v4 setPassThroughLockdownHandlerForCommand:IMDRelayLocalMessageTypeRemoteFileResponse];
  [v4 setPassThroughLockdownHandlerForCommand:@"payload-data-request"];
  [v4 setPassThroughLockdownHandlerForCommand:@"payload-data-response"];
}

- (MessagePushHandler)initWithIDSAccount:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = MessagePushHandler;
  v6 = [(MessagePushHandler *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [objc_opt_class() commandHandlerRegistry];
    v9 = [v8 allKeys];
    v10 = [NSSet setWithArray:v9];

    v11 = [(IDSAccount *)v7->_account serviceName];
    if ([v11 isEqualToString:IDSServiceNameiMessageForBusiness])
    {
      v12 = [(IDSAccount *)v7->_account serviceName];
    }

    else
    {
      v12 = @"com.apple.madrid";
    }

    v13 = +[IMFeatureFlags sharedFeatureFlags];
    v14 = [v13 manuallyAckMessagesEnabled];

    v15 = [IDSService alloc];
    if (v14)
    {
      v16 = [v15 initWithService:v12 commands:v10 manuallyAckMessages:1];
    }

    else
    {
      v16 = [v15 initWithService:v12 commands:v10];
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

- (void)addListener:(id)a3
{
  v7 = a3;
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

    [(NSMutableArray *)handlers addObject:v7];
  }
}

- (void)removeListener:(id)a3
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:a3];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (id)messageReplayObjectWithService:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [v10 loginID];
  v12 = [v10 uniqueID];
  v13 = [v10 serviceName];

  v14 = [[IDSTransactionLogDictionaryMessage alloc] initWithDictionary:v9 accountUniqueID:v12 fromID:v8 loginID:v11 serviceName:v13];

  return v14;
}

- (void)_service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7 isBeingReplayed:(BOOL)a8
{
  v59 = a8;
  v95 = a3;
  v93 = a4;
  v12 = a5;
  v98 = a6;
  v97 = a7;
  context = objc_autoreleasePoolPush();
  oslog = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v92 = [v12 objectForKey:@"IDSIncomingMessageDecryptedData"];
    v58 = [v92 length];
    v62 = [v12 objectForKey:@"IDSIncomingMessageOriginalEncryptionType"];
    v91 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v64 = [v91 objectForKeyedSubscript:@"E"];
    v90 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v89 = [v90 objectForKeyedSubscript:@"P"];
    v57 = [v89 length];
    v88 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v87 = [v88 objectForKeyedSubscript:@"Pm"];
    v56 = [v87 length];
    v86 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v85 = [v86 objectForKeyedSubscript:@"U"];
    v55 = [v85 length];
    v84 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v83 = [v84 objectForKeyedSubscript:@"c"];
    v54 = [v83 longValue];
    v82 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v81 = [v82 objectForKeyedSubscript:@"cdr"];
    v53 = [v81 length];
    v80 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v79 = [v80 objectForKeyedSubscript:@"cdv"];
    v52 = [v79 longValue];
    v78 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v77 = [v78 objectForKeyedSubscript:@"di"];
    v51 = [v77 longValue];
    v76 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v75 = [v76 objectForKeyedSubscript:@"e"];
    v50 = [v75 unsignedLongValue];
    v74 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v73 = [v74 objectForKeyedSubscript:@"eX"];
    v49 = [v73 longValue];
    v72 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v71 = [v72 objectForKeyedSubscript:@"htu"];
    v48 = [v71 longValue];
    v70 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v69 = [v70 objectForKeyedSubscript:@"nr"];
    v47 = [v69 longValue];
    v68 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v63 = [v68 objectForKeyedSubscript:@"sP"];
    v67 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v66 = [v67 objectForKeyedSubscript:@"P"];
    v46 = [v66 length];
    v65 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v13 = [v65 objectForKeyedSubscript:@"t"];
    v45 = [v13 length];
    v14 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v15 = [v14 objectForKeyedSubscript:@"tP"];
    v16 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v17 = [v16 objectForKeyedSubscript:@"v"];
    v18 = [v17 longValue];
    v19 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v20 = [v19 objectForKeyedSubscript:@"x-internal"];
    v21 = [v20 longValue];
    v61 = [v12 objectForKey:@"mid"];
    v60 = [v95 serviceIdentifier];
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
    v114 = v54;
    v115 = 2048;
    v116 = v53;
    v117 = 2048;
    v118 = v52;
    v119 = 2048;
    v120 = v51;
    v121 = 2048;
    v122 = v50;
    v123 = 2048;
    v124 = v49;
    v125 = 2048;
    v126 = v48;
    v127 = 2048;
    v128 = v47;
    v129 = 2112;
    v130 = v63;
    v131 = 2048;
    v132 = v46;
    v133 = 2048;
    v134 = v45;
    v135 = 2112;
    v136 = v15;
    v137 = 2048;
    v138 = v18;
    v139 = 2048;
    v140 = v21;
    v141 = 2112;
    v142 = v61;
    v143 = 2112;
    v144 = v60;
    v145 = 2048;
    v146 = v97;
    v147 = 2112;
    v148 = v98;
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Received message {\n   IDSIncomingMessageDecryptedData = <data of length %lu>\n   IDSIncomingMessageOriginalEncryptionType = %@\n   IDSIncomingMessagePushPayload = {\n       E = %@\n       P = <data of length %lu>\n       Pm = <data of length %lu>\n       U = <data of length %lu>\n       c = %ld\n       cdr = <data of length %lu>\n       cdv = %ld\n       di = %ld\n       e = %lu\n       eX = %ld\n       htu = %ld\n       nr = %lu\n       sP = %@\n       skU = <data of length %lu>\n       t = <data of length %lu>\n       tP = %@\n       v = %ld\n       x-internal = %ld\n   }\n   mid = %@\n} for service %@  context: %p  fromID: %@", buf, 0xF2u);
  }

  objc_autoreleasePoolPop(context);
  osloga = [[IMPowerAssertion alloc] initWithIdentifier:@"IncomingMessagePowerAssertion" timeout:10.0];
  v22 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
  v23 = IDSOriginalCommandKey;
  v24 = [v22 objectForKey:IDSOriginalCommandKey];
  if (!v24)
  {
    v24 = [v22 objectForKey:@"c"];
    if (!v24)
    {
      v24 = [v12 objectForKey:v23];
      if (!v24)
      {
        goto LABEL_28;
      }
    }
  }

  v25 = objc_opt_class();
  v26 = sub_2328(v25, v12, @"mc");
  v27 = [v26 BOOLValue];

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
    v33 = v27;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    v34 = [IMWeakLinkClass() sharedInstance];
    [v34 addMessagesID:v31];
  }

  if ([v24 integerValue] != &stru_B8.size + 3)
  {
    v43 = [objc_opt_class() commandHandlerRegistry];
    v36 = [v43 objectForKey:v24];

    if (v36)
    {
      (v36)[2](v36, self, v12, v22, v97, v98, v59);
    }

    goto LABEL_27;
  }

  v35 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Received IDS Nice message (Local Message) ", buf, 2u);
  }

  v36 = [v95 deviceForFromID:v98];
  if (v36)
  {
    v37 = [v12 objectForKey:@"IDSIncomingMessagePushPayload"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 objectForKey:IMDRelayLocalMessageDictionaryDictKey];
      v40 = [v38 objectForKey:IMDRelayLocalMessageDictionaryTypeKey];
      v41 = [objc_opt_class() localCommandHandlerRegistry];
      v42 = [v41 objectForKey:v40];

      if (v42)
      {
        (v42)[2](v42, self, v39, v22, v97, v98, v59);
      }
    }

LABEL_27:
LABEL_28:
    if ([(MessagePushHandler *)self _shouldImmediatelySendAckForMessage:v12 command:v24])
    {
      [(MessagePushHandler *)self sendManualAckForMessageWithContext:v97];
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

- (void)replayMessage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (v5)
    {
      v6 = v5;
      v7 = self->_idsService;
      v8 = self->_account;
      v9 = [v6 dictionaryValue];
      v10 = [v6 fromID];
      v11 = IMOSLoggingEnabled();
      if (v7 && v8 && v9 && v10)
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

        [(MessagePushHandler *)self _service:v7 account:v8 incomingTopLevelMessage:v9 fromID:v10 messageContext:0 isBeingReplayed:1];
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
          v20 = v9;
          v21 = 2112;
          v22 = v10;
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

- (BOOL)_shouldImmediatelySendAckForMessage:(id)a3 command:(id)a4
{
  v5 = a3;
  if ([a4 integerValue] == &stru_20.flags)
  {
    v6 = [v5 objectForKey:@"IDSIncomingMessageDecryptedData"];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)sendManualAckForMessageWithContext:(id)a3
{
  v4 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 manuallyAckMessagesEnabled];

  if (v6)
  {
    v7 = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Sending manual ack for messageContext %@", &v9, 0xCu);
    }

    v8 = [(MessagePushHandler *)self service];
    [v8 sendAckForMessageWithContext:v4];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (__PAIR64__(self->_isListening, self->_registeredForPush) == 0x100000001 && self->_account == v13)
  {
    [(MessagePushHandler *)self _service:v12 account:v13 incomingTopLevelMessage:v14 fromID:v15 messageContext:v16 isBeingReplayed:0];
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
      v26 = v13;
      v27 = 2112;
      v28 = account;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Early return receiving message, registeredForPush %@ isListening %@  account: %@   _account: %@", &v21, 0x2Au);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (__PAIR64__(self->_isListening, self->_registeredForPush) == 0x100000001 && self->_account == v12 && ([v14 messageHadEncryptedData] & 1) != 0)
  {
    v30 = v11;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [(IDSAccount *)v12 vettedAliases];
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = [(__CFString *)v13 _stripFZIDPrefix];
          LODWORD(v21) = [v21 isEqualToString:v22];

          if (v21)
          {
            v28 = IMMessagePushHandlerLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v13;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Early return message before first unlock, fromID %@ is from the same AppleID", buf, 0xCu);
            }

            v11 = v30;
            goto LABEL_25;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

    v16 = [(__CFString *)v13 _stripFZIDPrefix];
    v11 = v30;
    if (objc_opt_respondsToSelector())
    {
      v24 = [v15 performSelector:"originalGUID"];
    }

    else
    {
      v29 = +[NSUUID UUID];
      v24 = [v29 UUIDString];
    }

    off_124390(v24, v16);
  }

  else
  {
    v16 = IMMessagePushHandlerLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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
      v41 = v12;
      v42 = 2112;
      v43 = account;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Early return receiving message before first unlock, registeredForPush %@ isListening %@  account: %@   _account: %@", buf, 0x2Au);
    }
  }

LABEL_25:
}

@end
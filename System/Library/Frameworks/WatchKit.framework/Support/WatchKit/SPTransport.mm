@interface SPTransport
+ (id)sharedInstance;
- (BOOL)_sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion;
- (BOOL)handleDataProtectionSendFailureOrRetryFailureOnService:(id)service account:(id)account identifier:(id)identifier error:(id)error;
- (BOOL)isWiFiEnabled;
- (BOOL)isWiFiRequiredForSize:(int64_t)size;
- (BOOL)saveForPossibleResend:(id)resend;
- (BOOL)sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion;
- (SPTransport)init;
- (id)serviceForTransport:(int64_t)transport;
- (void)_sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion;
- (void)_sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion;
- (void)disableWiFiIfNeededForDataOfSize:(int64_t)size;
- (void)enableWiFiIfNeededForDataOfSize:(int64_t)size;
- (void)incomingInsecureProtobuf:(id)protobuf;
- (void)incomingProtobuf:(id)protobuf;
- (void)incomingSecureProtobuf:(id)protobuf;
- (void)keepWiFiAliveIfNeeded;
- (void)killWiFiTimer;
- (void)removeOutgoingMessageBlockIfIdentiferMatches:(id)matches sendError:(id)error;
- (void)sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion;
- (void)sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)startWiFiTimer;
- (void)temporarilyRetainIDSMessageContext:(id)context;
- (void)wifiTimeOut;
@end

@implementation SPTransport

+ (id)sharedInstance
{
  if (qword_100051D78 != -1)
  {
    sub_100029F9C();
  }

  v3 = qword_100051D80;

  return v3;
}

- (SPTransport)init
{
  v20.receiver = self;
  v20.super_class = SPTransport;
  v2 = [(SPTransport *)&v20 init];
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  messages = v2->_messages;
  v2->_messages = v3;

  v5 = dispatch_queue_create("com.apple.companionappd.transportMessagesAccess", 0);
  messagesAccessQueue = v2->_messagesAccessQueue;
  v2->_messagesAccessQueue = v5;

  v7 = dispatch_queue_create("com.apple.watchkit.transportSend", 0);
  sendQueue = v2->_sendQueue;
  v2->_sendQueue = v7;

  v9 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sockpuppet"];
  [(SPTransport *)v2 setSecureRemoteService:v9];

  v10 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sockpuppet.classd"];
  [(SPTransport *)v2 setInsecureRemoteService:v10];

  secureRemoteService = [(SPTransport *)v2 secureRemoteService];
  [secureRemoteService setProtobufAction:"incomingSecureProtobuf:" forIncomingRequestsOfType:1];

  insecureRemoteService = [(SPTransport *)v2 insecureRemoteService];
  [insecureRemoteService setProtobufAction:"incomingInsecureProtobuf:" forIncomingRequestsOfType:1];

  secureRemoteService2 = [(SPTransport *)v2 secureRemoteService];
  [secureRemoteService2 addDelegate:v2 queue:&_dispatch_main_q];

  insecureRemoteService2 = [(SPTransport *)v2 insecureRemoteService];
  [insecureRemoteService2 addDelegate:v2 queue:&_dispatch_main_q];

  v15 = dispatch_queue_create("com.apple.companionappd.retainedIDSMessageContexts", 0);
  retainedIDSMessageContextsQueue = v2->_retainedIDSMessageContextsQueue;
  v2->_retainedIDSMessageContextsQueue = v15;

  v17 = +[NSMutableArray array];
  retainedIDSMessageContexts = v2->_retainedIDSMessageContexts;
  v2->_retainedIDSMessageContexts = v17;

  *&v2->_canSend = 1;
  return v2;
}

- (void)enableWiFiIfNeededForDataOfSize:(int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_wifiThresholdCount + size;
  selfCopy->_wifiThresholdCount = v5;
  if (v5 >= 5242880 && !selfCopy->_wifiEnabled)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = "[SPTransport enableWiFiIfNeededForDataOfSize:]";
      v11 = 1024;
      v12 = 106;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: we will try to use wifi", &v9, 0x12u);
    }

    secureRemoteService = [(SPTransport *)selfCopy secureRemoteService];
    [secureRemoteService setPreferInfraWiFi:1];

    insecureRemoteService = [(SPTransport *)selfCopy insecureRemoteService];
    [insecureRemoteService setPreferInfraWiFi:1];

    selfCopy->_wifiEnabled = 1;
  }

  objc_sync_exit(selfCopy);
}

- (void)disableWiFiIfNeededForDataOfSize:(int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_wifiThresholdCount - size;
  selfCopy->_wifiThresholdCount = v5 & ~(v5 >> 63);
  if (v5 < 5242880 && selfCopy->_wifiEnabled)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = "[SPTransport disableWiFiIfNeededForDataOfSize:]";
      v11 = 1024;
      v12 = 125;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: don't need wifi anymore", &v9, 0x12u);
    }

    secureRemoteService = [(SPTransport *)selfCopy secureRemoteService];
    [secureRemoteService setPreferInfraWiFi:0];

    insecureRemoteService = [(SPTransport *)selfCopy insecureRemoteService];
    [insecureRemoteService setPreferInfraWiFi:0];

    [(SPTransport *)selfCopy killWiFiTimer];
    selfCopy->_wifiEnabled = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isWiFiEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  wifiEnabled = selfCopy->_wifiEnabled;
  objc_sync_exit(selfCopy);

  return wifiEnabled;
}

- (BOOL)isWiFiRequiredForSize:(int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LOBYTE(size) = selfCopy->_wifiThresholdCount + size > 5242880;
  objc_sync_exit(selfCopy);

  return size;
}

- (void)keepWiFiAliveIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_wifiEnabled)
  {
    [(SPTransport *)obj startWiFiTimer];
  }

  objc_sync_exit(obj);
}

- (void)startWiFiTimer
{
  wifiTimer = self->_wifiTimer;
  if (wifiTimer)
  {
    dispatch_source_cancel(wifiTimer);
    v4 = self->_wifiTimer;
    self->_wifiTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v6 = self->_wifiTimer;
  self->_wifiTimer = v5;

  v7 = self->_wifiTimer;
  v8 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v9 = self->_wifiTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001E028;
  handler[3] = &unk_100044778;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_wifiTimer);
}

- (void)killWiFiTimer
{
  obj = self;
  objc_sync_enter(obj);
  wifiTimer = obj->_wifiTimer;
  if (wifiTimer)
  {
    dispatch_source_cancel(wifiTimer);
    v3 = obj->_wifiTimer;
    obj->_wifiTimer = 0;
  }

  objc_sync_exit(obj);
}

- (void)wifiTimeOut
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_wifiEnabled)
  {
    secureRemoteService = [(SPTransport *)obj secureRemoteService];
    [secureRemoteService setPreferInfraWiFi:0];

    insecureRemoteService = [(SPTransport *)obj insecureRemoteService];
    [insecureRemoteService setPreferInfraWiFi:0];

    v2 = obj;
    obj->_wifiEnabled = 0;
  }

  objc_sync_exit(v2);
}

- (void)sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion
{
  plistCopy = plist;
  completionCopy = completion;
  sendQueue = self->_sendQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E260;
  block[3] = &unk_100046030;
  block[4] = self;
  v16 = plistCopy;
  outCopy = out;
  typeCopy = type;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = plistCopy;
  dispatch_sync(sendQueue, block);
}

- (void)_sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion
{
  plistCopy = plist;
  expirationCopy = expiration;
  completionCopy = completion;
  if (spUtils_isRunningInF201DemoMode())
  {
    v110 = @"error";
    selfCopy2 = +[NSNull null];
    v111 = selfCopy2;
    v18 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    completionCopy[2](completionCopy, v18);

    goto LABEL_53;
  }

  if (generation)
  {
LABEL_4:
    if (!self->_canSend)
    {
      v28 = wk_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10002A148();
      }

      selfCopy2 = [SPError errorWithCode:14];
      v108 = @"error";
      v109 = selfCopy2;
      v19 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      completionCopy[2](completionCopy, v19);
      goto LABEL_52;
    }

    if (!plistCopy)
    {
      v29 = wk_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10002A0C4();
      }

      selfCopy2 = [SPError errorWithCode:10];
      v106 = @"error";
      v107 = selfCopy2;
      v19 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      completionCopy[2](completionCopy, v19);
      goto LABEL_52;
    }

    v72 = 0;
    v19 = [NSPropertyListSerialization dataWithPropertyList:plistCopy format:200 options:0 error:&v72];
    v20 = v72;
    if (v20)
    {
      selfCopy2 = v20;
      v21 = wk_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100029FB0();
      }

      v104 = @"error";
      v105 = selfCopy2;
      v64 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      completionCopy[2](completionCopy, v64);

      goto LABEL_52;
    }

    if (!v19)
    {
      v36 = wk_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10002A040();
      }

      selfCopy2 = [SPError errorWithCode:10];
      v102 = @"error";
      v103 = selfCopy2;
      v66 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      completionCopy[2](completionCopy, v66);

      goto LABEL_52;
    }

    v30 = [plistCopy objectForKeyedSubscript:@"i"];
    if (!v30)
    {
      v30 = @"com.apple.companionappd";
    }

    v100[0] = @"action";
    v100[1] = @"application";
    v101[0] = @"sendPlist1";
    v101[1] = v30;
    v65 = v30;
    v100[2] = @"length";
    v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 length]);
    v101[2] = v31;
    v61 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:3];

    v32 = +[SPPowerLog sharedInstance];
    [v32 logEvent:v61 withName:@"SP-transport"];

    v60 = [NSSet setWithObject:v65];
    v98[0] = IDSSendMessageOptionEncryptPayloadKey;
    v98[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v99[0] = &__kCFBooleanTrue;
    v99[1] = &__kCFBooleanFalse;
    v98[2] = IDSSendMessageOptionDuetIdentifiersOverrideKey;
    v99[2] = v60;
    v33 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:3];
    delegate = [(SPTransport *)self delegate];
    [delegate logDataSent:objc_msgSend(v19 application:{"length"), v65}];

    if (IDSMaxMessageTimeout + -1.0 == out)
    {
      v62 = [v33 mutableCopy];
      v35 = [NSNumber numberWithDouble:out];
      [v62 setObject:v35 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v62 = v33;
    }

    v37 = [(SPTransport *)self serviceForTransport:type];
    v63 = v37;
    if (v37)
    {
      accounts = [v37 accounts];
      anyObject = [accounts anyObject];
      v39 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v70 = 0;
      v71 = 0;
      [v63 sendData:v19 fromAccount:anyObject toDestinations:v39 priority:200 options:v62 identifier:&v71 error:&v70];
      v59 = v71;
      selfCopy2 = v70;

      v40 = wk_default_log();
      v41 = v40;
      if (selfCopy2)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          accounts2 = [v63 accounts];
          anyObject2 = [accounts2 anyObject];
          serviceName = [anyObject2 serviceName];
          *buf = 136447234;
          v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v88 = 1024;
          v89 = 310;
          v90 = 2114;
          v91 = serviceName;
          v92 = 2114;
          v93 = v65;
          v94 = 2114;
          v95 = selfCopy2;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s:%d: sendPlist, Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);
        }

        v84 = @"error";
        v85 = selfCopy2;
        v42 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        completionCopy[2](completionCopy, v42);
        goto LABEL_51;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        secureRemoteService = [(SPTransport *)self secureRemoteService];
        v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v88 = 1024;
        v45 = @"insecure";
        v89 = 314;
        *buf = 136447234;
        if (v63 == secureRemoteService)
        {
          v45 = @"secure";
        }

        v90 = 2114;
        v91 = v59;
        v92 = 2114;
        v93 = v65;
        v94 = 2114;
        v95 = v45;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
      }

      if ([(SPTransport *)self saveForPossibleResend:v63])
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v47 = wk_default_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v88 = 1024;
          v89 = 320;
          v90 = 2114;
          v91 = v59;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Blocking further sends until %{public}@ succeeds or fails", buf, 0x1Cu);
        }

        [(SPTransport *)selfCopy setOutgoingMessageBlockedUntil:v59];
        objc_sync_exit(selfCopy);

        if (!expirationCopy)
        {
          expirationCopy = [NSDate dateWithTimeIntervalSinceNow:20.0];
        }

        v83[0] = v59;
        v82[0] = @"id";
        v82[1] = @"completion";
        v48 = [completionCopy copy];
        v83[1] = v48;
        v83[2] = plistCopy;
        v82[2] = @"propertyList";
        v82[3] = @"timeOut";
        v58 = [NSNumber numberWithDouble:out];
        v83[3] = v58;
        v82[4] = @"securityType";
        v49 = [NSNumber numberWithInteger:type];
        v83[4] = v49;
        v83[5] = expirationCopy;
        v82[5] = @"retryExpiration";
        v82[6] = @"lastSendAttemptDate";
        v50 = +[NSDate date];
        v83[6] = v50;
        v82[7] = @"tryGeneration";
        v51 = [NSNumber numberWithUnsignedInteger:generation];
        v83[7] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:8];
      }

      else
      {
        v80[0] = @"id";
        v80[1] = @"completion";
        v81[0] = v59;
        v48 = [completionCopy copy];
        v81[1] = v48;
        v52 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
      }

      messagesAccessQueue = self->_messagesAccessQueue;
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10001F06C;
      v67[3] = &unk_100045538;
      v67[4] = self;
      v68 = v52;
      v59 = v59;
      v69 = v59;
      v42 = v52;
      dispatch_sync(messagesAccessQueue, v67);
    }

    else
    {
      v96 = @"error";
      v42 = [SPError errorWithCode:16];
      v97 = v42;
      v43 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      completionCopy[2](completionCopy, v43);

      v59 = 0;
    }

    selfCopy2 = 0;
LABEL_51:

LABEL_52:
    goto LABEL_53;
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  outgoingMessageBlockedUntil = [(SPTransport *)selfCopy2 outgoingMessageBlockedUntil];

  if (!outgoingMessageBlockedUntil)
  {
    objc_sync_exit(selfCopy2);

    goto LABEL_4;
  }

  v23 = wk_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    outgoingMessageBlockedUntil2 = [(SPTransport *)selfCopy2 outgoingMessageBlockedUntil];
    *buf = 136446722;
    v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
    v88 = 1024;
    v89 = 215;
    v90 = 2114;
    v91 = outgoingMessageBlockedUntil2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Currently blocking outgoing messages on %{public}@", buf, 0x1Cu);
  }

  blockedOutgoingMessagesQueue = selfCopy2->_blockedOutgoingMessagesQueue;
  if (!blockedOutgoingMessagesQueue)
  {
    v26 = dispatch_queue_create("com.apple.watchkit.blockedOutgoingMessage", 0);
    v27 = selfCopy2->_blockedOutgoingMessagesQueue;
    selfCopy2->_blockedOutgoingMessagesQueue = v26;

    dispatch_suspend(selfCopy2->_blockedOutgoingMessagesQueue);
    blockedOutgoingMessagesQueue = selfCopy2->_blockedOutgoingMessagesQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EF64;
  block[3] = &unk_100046058;
  block[4] = selfCopy2;
  v74 = plistCopy;
  outCopy = out;
  typeCopy = type;
  expirationCopy = expirationCopy;
  v75 = expirationCopy;
  v79 = 0;
  v76 = completionCopy;
  dispatch_async(blockedOutgoingMessagesQueue, block);

  objc_sync_exit(selfCopy2);
LABEL_53:
}

- (void)sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion
{
  dataCopy = data;
  applicationCopy = application;
  installerCopy = installer;
  completionCopy = completion;
  sendQueue = self->_sendQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F1D4;
  v21[3] = &unk_100046080;
  v21[4] = self;
  v22 = dataCopy;
  v23 = applicationCopy;
  v24 = installerCopy;
  v25 = completionCopy;
  priorityCopy = priority;
  v17 = completionCopy;
  v18 = installerCopy;
  v19 = applicationCopy;
  v20 = dataCopy;
  dispatch_sync(sendQueue, v21);
}

- (void)_sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion
{
  dataCopy = data;
  applicationCopy = application;
  completionCopy = completion;
  if (spUtils_isRunningInF201DemoMode())
  {
    v77 = @"error";
    v14 = +[NSNull null];
    v78 = v14;
    v15 = &v78;
    v16 = &v77;
LABEL_13:
    v36 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
    completionCopy[2](completionCopy, v36);

    goto LABEL_24;
  }

  if (!self->_canSend)
  {
    v35 = wk_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10002A250();
    }

    v14 = [SPError errorWithCode:14];
    v75 = @"error";
    v76 = v14;
    v15 = &v76;
    v16 = &v75;
    goto LABEL_13;
  }

  if (dataCopy)
  {
    v73[0] = @"action";
    v73[1] = @"application";
    v74[0] = @"sendData";
    v74[1] = applicationCopy;
    v73[2] = @"length";
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
    v74[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];

    v19 = +[SPPowerLog sharedInstance];
    [v19 logEvent:v18 withName:@"SP-transport"];

    v49 = [NSString stringWithFormat:@"%@.installer", @"com.apple.companionappd"];
    v20 = [NSSet setWithObject:?];
    v71[0] = IDSSendMessageOptionEncryptPayloadKey;
    v71[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v72[0] = &__kCFBooleanFalse;
    v72[1] = &__kCFBooleanFalse;
    v72[2] = &__kCFBooleanTrue;
    v71[2] = IDSSendMessageOptionBypassDuetKey;
    v71[3] = IDSSendMessageOptionTimeoutKey;
    v21 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v71[4] = IDSSendMessageOptionDuetIdentifiersOverrideKey;
    v72[3] = v21;
    v72[4] = v20;
    v48 = v20;
    v22 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:5];

    v23 = [(SPTransport *)self serviceForTransport:1];
    v24 = v23;
    if (v23)
    {
      v47 = v18;
      accounts = [v23 accounts];
      anyObject = [accounts anyObject];
      v27 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v28 = v22;
      v29 = v27;
      v53 = 0;
      v54 = 0;
      v46 = v28;
      [v24 sendData:dataCopy fromAccount:anyObject toDestinations:v27 priority:priority options:&v53 identifier:? error:?];
      v30 = v54;
      v14 = v53;

      v31 = wk_default_log();
      v32 = v31;
      if (v14)
      {
        v33 = &PLLogRegisteredEvent_ptr;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          accounts2 = [v24 accounts];
          anyObject2 = [accounts2 anyObject];
          serviceName = [anyObject2 serviceName];
          *buf = 136447234;
          v60 = "[SPTransport _sendData:forApplication:idsPriority:installer:withCompletion:]";
          v61 = 1024;
          v62 = 404;
          v63 = 2114;
          v64 = serviceName;
          v65 = 2114;
          v66 = applicationCopy;
          v67 = 2114;
          v68 = v14;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);

          v33 = &PLLogRegisteredEvent_ptr;
        }

        v57 = @"error";
        v58 = v14;
        v34 = [v33[210] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        completionCopy[2](completionCopy, v34);
      }

      else
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          secureRemoteService = [(SPTransport *)self secureRemoteService];
          *buf = 136447234;
          v60 = "[SPTransport _sendData:forApplication:idsPriority:installer:withCompletion:]";
          v39 = @"insecure";
          v61 = 1024;
          v62 = 408;
          if (v24 == secureRemoteService)
          {
            v39 = @"secure";
          }

          v63 = 2114;
          v64 = v30;
          v65 = 2114;
          v66 = applicationCopy;
          v67 = 2114;
          v68 = v39;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
        }

        v55[0] = @"id";
        v55[1] = @"completion";
        v56[0] = v30;
        v40 = [completionCopy copy];
        v56[1] = v40;
        v41 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];

        messagesAccessQueue = self->_messagesAccessQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001F8CC;
        block[3] = &unk_100045538;
        block[4] = self;
        v51 = v41;
        v30 = v30;
        v52 = v30;
        v34 = v41;
        dispatch_sync(messagesAccessQueue, block);

        v14 = 0;
      }

      v22 = v46;
      v18 = v47;
    }

    else
    {
      v69 = @"error";
      v34 = [SPError errorWithCode:16];
      v70 = v34;
      v37 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      completionCopy[2](completionCopy, v37);

      v30 = 0;
      v14 = 0;
    }
  }

  else
  {
    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002A1CC();
    }
  }

LABEL_24:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  sendQueue = self->_sendQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001FA44;
  v21[3] = &unk_1000460A8;
  successCopy = success;
  v21[4] = self;
  v22 = identifierCopy;
  v23 = serviceCopy;
  v24 = errorCopy;
  v25 = accountCopy;
  v17 = accountCopy;
  v18 = errorCopy;
  v19 = serviceCopy;
  v20 = identifierCopy;
  dispatch_async(sendQueue, v21);
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPTransport serviceSpaceDidBecomeAvailable:]";
    v7 = 1024;
    v8 = 467;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ", &v5, 0x12u);
  }

  self->_canSend = 1;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v17 = wk_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    secureRemoteService = [(SPTransport *)self secureRemoteService];
    v20 = @"insecure";
    v31 = "[SPTransport service:account:incomingData:fromID:context:]";
    v32 = 1024;
    v33 = 473;
    v30 = 136446978;
    if (secureRemoteService == serviceCopy)
    {
      v20 = @"secure";
    }

    v34 = 2114;
    v35 = outgoingResponseIdentifier;
    v36 = 2114;
    v37 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received data msg with identifier %{public}@ on %{public}@ service", &v30, 0x26u);
  }

  if (dataCopy)
  {
    secureRemoteService2 = [(SPTransport *)self secureRemoteService];
    if (secureRemoteService2 == serviceCopy && self->_delegate)
    {
      v26 = objc_opt_respondsToSelector();

      if (v26)
      {
        [(SPTransportDelegate *)self->_delegate didReceiveSecureData];
      }
    }

    else
    {
    }

    if (self->_delegate)
    {
      delegate = [(SPTransport *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        delegate2 = [(SPTransport *)self delegate];
        [delegate2 incomingData:dataCopy];

        [(SPTransport *)self temporarilyRetainIDSMessageContext:contextCopy];
      }
    }
  }

  else
  {
    v25 = wk_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      accounts = [serviceCopy accounts];
      anyObject = [accounts anyObject];
      serviceName = [anyObject serviceName];
      v30 = 136447490;
      v31 = "[SPTransport service:account:incomingData:fromID:context:]";
      v32 = 1024;
      v33 = 475;
      v34 = 2114;
      v35 = accountCopy;
      v36 = 2114;
      v37 = serviceName;
      v38 = 2114;
      v39 = dCopy;
      v40 = 2114;
      v41 = contextCopy;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s:%d: IDS incomingData == nil,  account: %{public}@, serviceName: %{public}@, fromID: %{public}@, context: %{public}@", &v30, 0x3Au);
    }
  }
}

- (BOOL)sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion
{
  protobufCopy = protobuf;
  senderCopy = sender;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  sendQueue = self->_sendQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000206BC;
  block[3] = &unk_1000460D0;
  v23 = completionCopy;
  v24 = &v27;
  block[4] = self;
  v21 = protobufCopy;
  outCopy = out;
  typeCopy = type;
  v22 = senderCopy;
  v16 = completionCopy;
  v17 = senderCopy;
  v18 = protobufCopy;
  dispatch_sync(sendQueue, block);
  LOBYTE(sendQueue) = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return sendQueue;
}

- (BOOL)_sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion
{
  protobufCopy = protobuf;
  senderCopy = sender;
  expirationCopy = expiration;
  completionCopy = completion;
  if (spUtils_isRunningInF201DemoMode())
  {
    v109 = @"error";
    selfCopy = +[NSNull null];
    v110 = selfCopy;
    v21 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    completionCopy[2](completionCopy, v21);

LABEL_3:
    v22 = 1;
    goto LABEL_50;
  }

  if (!generation)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    outgoingMessageBlockedUntil = [(SPTransport *)selfCopy outgoingMessageBlockedUntil];

    if (outgoingMessageBlockedUntil)
    {
      v26 = wk_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        outgoingMessageBlockedUntil2 = [(SPTransport *)selfCopy outgoingMessageBlockedUntil];
        *buf = 136446722;
        v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v93 = 1024;
        v94 = 512;
        v95 = 2114;
        v96 = outgoingMessageBlockedUntil2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Currently blocking outgoing messages on %{public}@", buf, 0x1Cu);
      }

      blockedOutgoingMessagesQueue = selfCopy->_blockedOutgoingMessagesQueue;
      if (!blockedOutgoingMessagesQueue)
      {
        v29 = dispatch_queue_create("com.apple.watchkit.blockedOutgoingMessage", 0);
        v30 = selfCopy->_blockedOutgoingMessagesQueue;
        selfCopy->_blockedOutgoingMessagesQueue = v29;

        dispatch_suspend(selfCopy->_blockedOutgoingMessagesQueue);
        blockedOutgoingMessagesQueue = selfCopy->_blockedOutgoingMessagesQueue;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002135C;
      block[3] = &unk_1000460F8;
      block[4] = selfCopy;
      v78 = protobufCopy;
      senderCopy = senderCopy;
      v79 = senderCopy;
      outCopy = out;
      typeCopy = type;
      expirationCopy = expirationCopy;
      v80 = expirationCopy;
      v84 = 0;
      v81 = completionCopy;
      dispatch_async(blockedOutgoingMessagesQueue, block);

      objc_sync_exit(selfCopy);
      goto LABEL_3;
    }

    objc_sync_exit(selfCopy);
  }

  if (self->_canSend)
  {
    typeCopy2 = type;
    v23 = [(__CFString *)senderCopy isEqualToString:@".XC"];
    if (v23)
    {
      v24 = wk_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v93 = 1024;
        v94 = 539;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: isXcodeCommand, setting IDSSendMessageOptionBypassDuetKey=YES", buf, 0x12u);
      }
    }

    else if (senderCopy)
    {
      goto LABEL_21;
    }

    senderCopy = @"com.apple.companionappd";
LABEL_21:
    v105[0] = @"action";
    v105[1] = @"application";
    v106[0] = @"sendPlist2";
    v106[1] = senderCopy;
    v105[2] = @"length";
    uncompressedData = [protobufCopy uncompressedData];
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [uncompressedData length]);
    v106[2] = v33;
    v71 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];

    v34 = +[SPPowerLog sharedInstance];
    [v34 logEvent:v71 withName:@"SP-transport"];

    v67 = [NSSet setWithObject:senderCopy];
    v103[0] = IDSSendMessageOptionEncryptPayloadKey;
    v103[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v104[0] = &__kCFBooleanTrue;
    v104[1] = &__kCFBooleanFalse;
    v103[2] = IDSSendMessageOptionDuetIdentifiersOverrideKey;
    v104[2] = v67;
    v35 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
    v36 = v35;
    if (v23)
    {
      v37 = [v35 mutableCopy];
      [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
    }

    else
    {
      v37 = v35;
    }

    if (IDSMaxMessageTimeout + -1.0 == out)
    {
      v68 = [v37 mutableCopy];
      v38 = [NSNumber numberWithDouble:out];
      [v68 setObject:v38 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v68 = v37;
    }

    v39 = wk_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A2D4(protobufCopy, v39);
    }

    delegate = [(SPTransport *)self delegate];
    data = [protobufCopy data];
    [delegate logDataSent:objc_msgSend(data application:{"length"), senderCopy}];

    v42 = [(SPTransport *)self serviceForTransport:typeCopy2];
    v69 = v42;
    if (v42)
    {
      accounts = [v42 accounts];
      anyObject = [accounts anyObject];
      v45 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v75 = 0;
      v76 = 0;
      [v69 sendProtobuf:protobufCopy fromAccount:anyObject toDestinations:v45 priority:200 options:v68 identifier:&v76 error:&v75];
      v66 = v76;
      selfCopy = v75;

      v46 = wk_default_log();
      v47 = v46;
      if (!selfCopy)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          secureRemoteService = [(SPTransport *)self secureRemoteService];
          v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v93 = 1024;
          v51 = @"insecure";
          v94 = 597;
          *buf = 136447234;
          if (v69 == secureRemoteService)
          {
            v51 = @"secure";
          }

          v95 = 2114;
          v96 = v66;
          v97 = 2114;
          v98 = senderCopy;
          v99 = 2114;
          v100 = v51;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
        }

        if ([(SPTransport *)self saveForPossibleResend:v69])
        {
          selfCopy2 = self;
          objc_sync_enter(selfCopy2);
          v53 = wk_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
            v93 = 1024;
            v94 = 603;
            v95 = 2114;
            v96 = v66;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Blocking further sends until %{public}@ succeeds or fails", buf, 0x1Cu);
          }

          [(SPTransport *)selfCopy2 setOutgoingMessageBlockedUntil:v66];
          objc_sync_exit(selfCopy2);

          if (!expirationCopy)
          {
            expirationCopy = [NSDate dateWithTimeIntervalSinceNow:20.0];
          }

          v88[0] = v66;
          v87[0] = @"id";
          v87[1] = @"completion";
          v54 = [completionCopy copy];
          v88[1] = v54;
          v87[2] = @"sender";
          v87[3] = @"protobuf";
          v88[2] = senderCopy;
          v88[3] = protobufCopy;
          v87[4] = @"timeOut";
          v63 = [NSNumber numberWithDouble:out];
          v88[4] = v63;
          v87[5] = @"securityType";
          v65 = [NSNumber numberWithInteger:typeCopy2];
          v88[5] = v65;
          v88[6] = expirationCopy;
          v87[6] = @"retryExpiration";
          v87[7] = @"lastSendAttemptDate";
          v55 = +[NSDate date];
          v88[7] = v55;
          v87[8] = @"tryGeneration";
          v56 = [NSNumber numberWithUnsignedInteger:generation];
          v88[8] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:9];
        }

        else
        {
          v85[0] = @"id";
          v85[1] = @"completion";
          v86[0] = v66;
          v54 = [completionCopy copy];
          v86[1] = v54;
          v57 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
        }

        messagesAccessQueue = self->_messagesAccessQueue;
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100021478;
        v72[3] = &unk_100045538;
        v72[4] = self;
        v73 = v57;
        v66 = v66;
        v74 = v66;
        v48 = v57;
        dispatch_sync(messagesAccessQueue, v72);

        selfCopy = 0;
        v22 = 1;
        goto LABEL_49;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        accounts2 = [v69 accounts];
        anyObject2 = [accounts2 anyObject];
        serviceName = [anyObject2 serviceName];
        *buf = 136447234;
        v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v93 = 1024;
        v94 = 591;
        v95 = 2114;
        v96 = serviceName;
        v97 = 2114;
        v98 = senderCopy;
        v99 = 2114;
        v100 = selfCopy;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);
      }

      v89 = @"error";
      v90 = selfCopy;
      v48 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      completionCopy[2](completionCopy, v48);
    }

    else
    {
      v101 = @"error";
      v48 = [SPError errorWithCode:16];
      v102 = v48;
      v49 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      completionCopy[2](completionCopy, v49);

      v66 = 0;
      selfCopy = 0;
    }

    v22 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v31 = wk_default_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10002A3B8();
  }

  selfCopy = [SPError errorWithCode:14];
  v107 = @"error";
  v108 = selfCopy;
  v70 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  completionCopy[2](completionCopy, v70);
  v22 = 0;

LABEL_50:
  return v22;
}

- (id)serviceForTransport:(int64_t)transport
{
  selfCopy = self;
  if (transport == 2)
  {
    insecureRemoteService = [(SPTransport *)self insecureRemoteService];

    if (!insecureRemoteService)
    {
      v6 = wk_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10002A43C();
      }

      goto LABEL_16;
    }

LABEL_17:
    self = [(SPTransport *)selfCopy insecureRemoteService];
    goto LABEL_18;
  }

  if (transport == 1)
  {
    if ([(SPTransportDelegate *)self->_delegate unlockedSinceBoot])
    {
LABEL_9:
      self = [(SPTransport *)selfCopy secureRemoteService];
      goto LABEL_18;
    }

    insecureRemoteService2 = [(SPTransport *)selfCopy insecureRemoteService];

    if (!insecureRemoteService2)
    {
      v6 = wk_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10002A4C0();
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (transport)
  {
    goto LABEL_18;
  }

  if ([(SPTransportDelegate *)self->_delegate unlockedSinceBoot])
  {
    goto LABEL_9;
  }

  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002A544();
  }

  self = 0;
LABEL_18:

  return self;
}

- (BOOL)saveForPossibleResend:(id)resend
{
  resendCopy = resend;
  secureRemoteService = [(SPTransport *)self secureRemoteService];

  if (secureRemoteService != resendCopy)
  {

    return 0;
  }

  delegate = self->_delegate;
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  dateOfFirstUnlock = [(SPTransportDelegate *)self->_delegate dateOfFirstUnlock];
  v9 = dateOfFirstUnlock;
  if (!dateOfFirstUnlock || ([dateOfFirstUnlock timeIntervalSinceNow], v11 = v10, v10 <= -20.0))
  {

    return 0;
  }

  v13 = wk_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446978;
    v15 = "[SPTransport saveForPossibleResend:]";
    v16 = 1024;
    v17 = 676;
    v18 = 2048;
    v19 = -v11;
    v20 = 2048;
    v21 = 0x4034000000000000;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: First unlock was %1.0f seconds ago (less than %1.0f seconds), so saving for possible resend upon failure", &v14, 0x26u);
  }

  return 1;
}

- (void)incomingSecureProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SPTransportDelegate *)self->_delegate didReceiveSecureData];
  }

  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    context = [protobufCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v8 = 136446722;
    v9 = "[SPTransport incomingSecureProtobuf:]";
    v10 = 1024;
    v11 = 690;
    v12 = 2114;
    v13 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received protobuf msg with identifier %{public}@ on secure service", &v8, 0x1Cu);
  }

  [(SPTransport *)self incomingProtobuf:protobufCopy];
}

- (void)incomingInsecureProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    context = [protobufCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v8 = 136446722;
    v9 = "[SPTransport incomingInsecureProtobuf:]";
    v10 = 1024;
    v11 = 696;
    v12 = 2114;
    v13 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received protobuf msg with identifier %{public}@ on insecure service", &v8, 0x1Cu);
  }

  [(SPTransport *)self incomingProtobuf:protobufCopy];
}

- (void)incomingProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A5C8(protobufCopy, v5);
  }

  if (self->_delegate)
  {
    delegate = [(SPTransport *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(SPTransport *)self delegate];
      [delegate2 incomingProtobuf:protobufCopy];

      context = [protobufCopy context];
      [(SPTransport *)self temporarilyRetainIDSMessageContext:context];
    }
  }
}

- (void)temporarilyRetainIDSMessageContext:(id)context
{
  contextCopy = context;
  retainedIDSMessageContextsQueue = self->_retainedIDSMessageContextsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021B0C;
  v7[3] = &unk_1000447A0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(retainedIDSMessageContextsQueue, v7);
}

- (BOOL)handleDataProtectionSendFailureOrRetryFailureOnService:(id)service account:(id)account identifier:(id)identifier error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100020138;
  v50 = sub_100020148;
  v51 = 0;
  messagesAccessQueue = self->_messagesAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000221C4;
  block[3] = &unk_100045A40;
  v45 = &v46;
  block[4] = self;
  v14 = identifierCopy;
  v44 = v14;
  dispatch_sync(messagesAccessQueue, block);
  v15 = v47[5];
  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"protobuf"];

    v17 = [v47[5] objectForKeyedSubscript:@"propertyList"];

    if (v16 != 0 || v17 != 0)
    {
      if ([errorCopy code] == 31)
      {
        domain = [errorCopy domain];
        v19 = [domain isEqualToString:IDSErrorDomain];
      }

      else
      {
        v19 = 0;
      }

      v21 = [v47[5] objectForKeyedSubscript:@"retryExpiration"];
      v22 = +[NSDate date];
      v35 = v21;
      v20 = [v21 compare:v22] != -1;

      if (!v20)
      {
        if (v19)
        {
          v29 = wk_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10002A7C8();
          }
        }

        else
        {
          v29 = wk_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10002A730();
          }
        }

        goto LABEL_31;
      }

      v23 = [v47[5] objectForKeyedSubscript:@"tryGeneration"];
      unsignedLongValue = [v23 unsignedLongValue];

      v25 = 2.0;
      if (unsignedLongValue == 1)
      {
        v25 = 0.25;
      }

      if (unsignedLongValue)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0.0;
      }

      v27 = self->_messagesAccessQueue;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100022230;
      v41[3] = &unk_1000447A0;
      v41[4] = self;
      v42 = v14;
      dispatch_sync(v27, v41);
      if (v19)
      {
        v28 = wk_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v53 = "[SPTransport handleDataProtectionSendFailureOrRetryFailureOnService:account:identifier:error:]";
          v54 = 1024;
          v55 = 768;
          v56 = 2048;
          v57 = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Got data protection class send failure, but we've done first unlock. Will try again in %1.0f seconds", buf, 0x1Cu);
        }
      }

      else
      {
        v28 = wk_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10002A858();
        }
      }

      if (v16)
      {
        v30 = dispatch_time(0, (v26 * 1000000000.0));
        sendQueue = self->_sendQueue;
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100022284;
        v39[3] = &unk_100046120;
        v39[4] = self;
        v40[1] = &v46;
        v32 = v40;
        v40[0] = v35;
        v40[2] = unsignedLongValue;
        v33 = v39;
      }

      else
      {
        if (!v17)
        {
LABEL_27:

LABEL_31:
          goto LABEL_32;
        }

        v30 = dispatch_time(0, (v26 * 1000000000.0));
        sendQueue = self->_sendQueue;
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_1000223CC;
        v37[3] = &unk_100046120;
        v37[4] = self;
        v38[1] = &v46;
        v32 = v38;
        v38[0] = v35;
        v38[2] = unsignedLongValue;
        v33 = v37;
      }

      dispatch_after(v30, sendQueue, v33);

      goto LABEL_27;
    }
  }

  v20 = 0;
LABEL_32:

  _Block_object_dispose(&v46, 8);
  return v20;
}

- (void)removeOutgoingMessageBlockIfIdentiferMatches:(id)matches sendError:(id)error
{
  matchesCopy = matches;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outgoingMessageBlockedUntil = [(SPTransport *)selfCopy outgoingMessageBlockedUntil];
  v10 = [outgoingMessageBlockedUntil isEqualToString:matchesCopy];

  if (v10)
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (errorCopy)
      {
        errorCopy = [NSString stringWithFormat:@"failed with error %@", errorCopy];
      }

      else
      {
        errorCopy = @"succeeded";
      }

      *buf = 136446978;
      v17 = "[SPTransport removeOutgoingMessageBlockIfIdentiferMatches:sendError:]";
      v18 = 1024;
      v19 = 791;
      v20 = 2114;
      v21 = matchesCopy;
      v22 = 2114;
      v23 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: we were blocked on %{public}@ and it %{public}@. unblocking", buf, 0x26u);
      if (errorCopy)
      {
      }
    }

    if (selfCopy->_blockedOutgoingMessagesQueue)
    {
      v13 = wk_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v17 = "[SPTransport removeOutgoingMessageBlockIfIdentiferMatches:sendError:]";
        v18 = 1024;
        v19 = 793;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: flushing _blockedOutgoingMessagesQueue", buf, 0x12u);
      }

      blockedOutgoingMessagesQueue = selfCopy->_blockedOutgoingMessagesQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002275C;
      block[3] = &unk_100044778;
      block[4] = selfCopy;
      dispatch_async(blockedOutgoingMessagesQueue, block);
      dispatch_resume(selfCopy->_blockedOutgoingMessagesQueue);
    }

    [(SPTransport *)selfCopy setOutgoingMessageBlockedUntil:0];
  }

  objc_sync_exit(selfCopy);
}

@end
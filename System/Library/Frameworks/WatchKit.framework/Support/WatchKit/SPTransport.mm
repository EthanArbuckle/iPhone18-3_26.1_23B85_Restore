@interface SPTransport
+ (id)sharedInstance;
- (BOOL)_sendProtobuf:(id)a3 sender:(id)a4 timeOut:(double)a5 securityType:(int64_t)a6 retryExpiration:(id)a7 tryGeneration:(unint64_t)a8 withCompletion:(id)a9;
- (BOOL)handleDataProtectionSendFailureOrRetryFailureOnService:(id)a3 account:(id)a4 identifier:(id)a5 error:(id)a6;
- (BOOL)isWiFiEnabled;
- (BOOL)isWiFiRequiredForSize:(int64_t)a3;
- (BOOL)saveForPossibleResend:(id)a3;
- (BOOL)sendProtobuf:(id)a3 sender:(id)a4 timeOut:(double)a5 securityType:(int64_t)a6 withCompletion:(id)a7;
- (SPTransport)init;
- (id)serviceForTransport:(int64_t)a3;
- (void)_sendData:(id)a3 forApplication:(id)a4 idsPriority:(int64_t)a5 installer:(id)a6 withCompletion:(id)a7;
- (void)_sendPlist:(id)a3 timeOut:(double)a4 securityType:(int64_t)a5 retryExpiration:(id)a6 tryGeneration:(unint64_t)a7 withCompletion:(id)a8;
- (void)disableWiFiIfNeededForDataOfSize:(int64_t)a3;
- (void)enableWiFiIfNeededForDataOfSize:(int64_t)a3;
- (void)incomingInsecureProtobuf:(id)a3;
- (void)incomingProtobuf:(id)a3;
- (void)incomingSecureProtobuf:(id)a3;
- (void)keepWiFiAliveIfNeeded;
- (void)killWiFiTimer;
- (void)removeOutgoingMessageBlockIfIdentiferMatches:(id)a3 sendError:(id)a4;
- (void)sendData:(id)a3 forApplication:(id)a4 idsPriority:(int64_t)a5 installer:(id)a6 withCompletion:(id)a7;
- (void)sendPlist:(id)a3 timeOut:(double)a4 securityType:(int64_t)a5 withCompletion:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)serviceSpaceDidBecomeAvailable:(id)a3;
- (void)startWiFiTimer;
- (void)temporarilyRetainIDSMessageContext:(id)a3;
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

  v11 = [(SPTransport *)v2 secureRemoteService];
  [v11 setProtobufAction:"incomingSecureProtobuf:" forIncomingRequestsOfType:1];

  v12 = [(SPTransport *)v2 insecureRemoteService];
  [v12 setProtobufAction:"incomingInsecureProtobuf:" forIncomingRequestsOfType:1];

  v13 = [(SPTransport *)v2 secureRemoteService];
  [v13 addDelegate:v2 queue:&_dispatch_main_q];

  v14 = [(SPTransport *)v2 insecureRemoteService];
  [v14 addDelegate:v2 queue:&_dispatch_main_q];

  v15 = dispatch_queue_create("com.apple.companionappd.retainedIDSMessageContexts", 0);
  retainedIDSMessageContextsQueue = v2->_retainedIDSMessageContextsQueue;
  v2->_retainedIDSMessageContextsQueue = v15;

  v17 = +[NSMutableArray array];
  retainedIDSMessageContexts = v2->_retainedIDSMessageContexts;
  v2->_retainedIDSMessageContexts = v17;

  *&v2->_canSend = 1;
  return v2;
}

- (void)enableWiFiIfNeededForDataOfSize:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_wifiThresholdCount + a3;
  v4->_wifiThresholdCount = v5;
  if (v5 >= 5242880 && !v4->_wifiEnabled)
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

    v7 = [(SPTransport *)v4 secureRemoteService];
    [v7 setPreferInfraWiFi:1];

    v8 = [(SPTransport *)v4 insecureRemoteService];
    [v8 setPreferInfraWiFi:1];

    v4->_wifiEnabled = 1;
  }

  objc_sync_exit(v4);
}

- (void)disableWiFiIfNeededForDataOfSize:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_wifiThresholdCount - a3;
  v4->_wifiThresholdCount = v5 & ~(v5 >> 63);
  if (v5 < 5242880 && v4->_wifiEnabled)
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

    v7 = [(SPTransport *)v4 secureRemoteService];
    [v7 setPreferInfraWiFi:0];

    v8 = [(SPTransport *)v4 insecureRemoteService];
    [v8 setPreferInfraWiFi:0];

    [(SPTransport *)v4 killWiFiTimer];
    v4->_wifiEnabled = 0;
  }

  objc_sync_exit(v4);
}

- (BOOL)isWiFiEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  wifiEnabled = v2->_wifiEnabled;
  objc_sync_exit(v2);

  return wifiEnabled;
}

- (BOOL)isWiFiRequiredForSize:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  LOBYTE(a3) = v4->_wifiThresholdCount + a3 > 5242880;
  objc_sync_exit(v4);

  return a3;
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
    v3 = [(SPTransport *)obj secureRemoteService];
    [v3 setPreferInfraWiFi:0];

    v4 = [(SPTransport *)obj insecureRemoteService];
    [v4 setPreferInfraWiFi:0];

    v2 = obj;
    obj->_wifiEnabled = 0;
  }

  objc_sync_exit(v2);
}

- (void)sendPlist:(id)a3 timeOut:(double)a4 securityType:(int64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  sendQueue = self->_sendQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E260;
  block[3] = &unk_100046030;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_sync(sendQueue, block);
}

- (void)_sendPlist:(id)a3 timeOut:(double)a4 securityType:(int64_t)a5 retryExpiration:(id)a6 tryGeneration:(unint64_t)a7 withCompletion:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  if (spUtils_isRunningInF201DemoMode())
  {
    v110 = @"error";
    v17 = +[NSNull null];
    v111 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v16[2](v16, v18);

    goto LABEL_53;
  }

  if (a7)
  {
LABEL_4:
    if (!self->_canSend)
    {
      v28 = wk_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10002A148();
      }

      v17 = [SPError errorWithCode:14];
      v108 = @"error";
      v109 = v17;
      v19 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v16[2](v16, v19);
      goto LABEL_52;
    }

    if (!v14)
    {
      v29 = wk_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10002A0C4();
      }

      v17 = [SPError errorWithCode:10];
      v106 = @"error";
      v107 = v17;
      v19 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v16[2](v16, v19);
      goto LABEL_52;
    }

    v72 = 0;
    v19 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:&v72];
    v20 = v72;
    if (v20)
    {
      v17 = v20;
      v21 = wk_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100029FB0();
      }

      v104 = @"error";
      v105 = v17;
      v64 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v16[2](v16, v64);

      goto LABEL_52;
    }

    if (!v19)
    {
      v36 = wk_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10002A040();
      }

      v17 = [SPError errorWithCode:10];
      v102 = @"error";
      v103 = v17;
      v66 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v16[2](v16, v66);

      goto LABEL_52;
    }

    v30 = [v14 objectForKeyedSubscript:@"i"];
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
    v34 = [(SPTransport *)self delegate];
    [v34 logDataSent:objc_msgSend(v19 application:{"length"), v65}];

    if (IDSMaxMessageTimeout + -1.0 == a4)
    {
      v62 = [v33 mutableCopy];
      v35 = [NSNumber numberWithDouble:a4];
      [v62 setObject:v35 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v62 = v33;
    }

    v37 = [(SPTransport *)self serviceForTransport:a5];
    v63 = v37;
    if (v37)
    {
      v57 = [v37 accounts];
      v38 = [v57 anyObject];
      v39 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v70 = 0;
      v71 = 0;
      [v63 sendData:v19 fromAccount:v38 toDestinations:v39 priority:200 options:v62 identifier:&v71 error:&v70];
      v59 = v71;
      v17 = v70;

      v40 = wk_default_log();
      v41 = v40;
      if (v17)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v54 = [v63 accounts];
          v55 = [v54 anyObject];
          v56 = [v55 serviceName];
          *buf = 136447234;
          v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v88 = 1024;
          v89 = 310;
          v90 = 2114;
          v91 = v56;
          v92 = 2114;
          v93 = v65;
          v94 = 2114;
          v95 = v17;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s:%d: sendPlist, Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);
        }

        v84 = @"error";
        v85 = v17;
        v42 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v16[2](v16, v42);
        goto LABEL_51;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(SPTransport *)self secureRemoteService];
        v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v88 = 1024;
        v45 = @"insecure";
        v89 = 314;
        *buf = 136447234;
        if (v63 == v44)
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
        v46 = self;
        objc_sync_enter(v46);
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

        [(SPTransport *)v46 setOutgoingMessageBlockedUntil:v59];
        objc_sync_exit(v46);

        if (!v15)
        {
          v15 = [NSDate dateWithTimeIntervalSinceNow:20.0];
        }

        v83[0] = v59;
        v82[0] = @"id";
        v82[1] = @"completion";
        v48 = [v16 copy];
        v83[1] = v48;
        v83[2] = v14;
        v82[2] = @"propertyList";
        v82[3] = @"timeOut";
        v58 = [NSNumber numberWithDouble:a4];
        v83[3] = v58;
        v82[4] = @"securityType";
        v49 = [NSNumber numberWithInteger:a5];
        v83[4] = v49;
        v83[5] = v15;
        v82[5] = @"retryExpiration";
        v82[6] = @"lastSendAttemptDate";
        v50 = +[NSDate date];
        v83[6] = v50;
        v82[7] = @"tryGeneration";
        v51 = [NSNumber numberWithUnsignedInteger:a7];
        v83[7] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:8];
      }

      else
      {
        v80[0] = @"id";
        v80[1] = @"completion";
        v81[0] = v59;
        v48 = [v16 copy];
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
      v16[2](v16, v43);

      v59 = 0;
    }

    v17 = 0;
LABEL_51:

LABEL_52:
    goto LABEL_53;
  }

  v17 = self;
  objc_sync_enter(v17);
  v22 = [(SPTransport *)v17 outgoingMessageBlockedUntil];

  if (!v22)
  {
    objc_sync_exit(v17);

    goto LABEL_4;
  }

  v23 = wk_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(SPTransport *)v17 outgoingMessageBlockedUntil];
    *buf = 136446722;
    v87 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
    v88 = 1024;
    v89 = 215;
    v90 = 2114;
    v91 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Currently blocking outgoing messages on %{public}@", buf, 0x1Cu);
  }

  blockedOutgoingMessagesQueue = v17->_blockedOutgoingMessagesQueue;
  if (!blockedOutgoingMessagesQueue)
  {
    v26 = dispatch_queue_create("com.apple.watchkit.blockedOutgoingMessage", 0);
    v27 = v17->_blockedOutgoingMessagesQueue;
    v17->_blockedOutgoingMessagesQueue = v26;

    dispatch_suspend(v17->_blockedOutgoingMessagesQueue);
    blockedOutgoingMessagesQueue = v17->_blockedOutgoingMessagesQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EF64;
  block[3] = &unk_100046058;
  block[4] = v17;
  v74 = v14;
  v77 = a4;
  v78 = a5;
  v15 = v15;
  v75 = v15;
  v79 = 0;
  v76 = v16;
  dispatch_async(blockedOutgoingMessagesQueue, block);

  objc_sync_exit(v17);
LABEL_53:
}

- (void)sendData:(id)a3 forApplication:(id)a4 idsPriority:(int64_t)a5 installer:(id)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  sendQueue = self->_sendQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F1D4;
  v21[3] = &unk_100046080;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_sync(sendQueue, v21);
}

- (void)_sendData:(id)a3 forApplication:(id)a4 idsPriority:(int64_t)a5 installer:(id)a6 withCompletion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if (spUtils_isRunningInF201DemoMode())
  {
    v77 = @"error";
    v14 = +[NSNull null];
    v78 = v14;
    v15 = &v78;
    v16 = &v77;
LABEL_13:
    v36 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
    v13[2](v13, v36);

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

  if (v11)
  {
    v73[0] = @"action";
    v73[1] = @"application";
    v74[0] = @"sendData";
    v74[1] = v12;
    v73[2] = @"length";
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 length]);
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
      v25 = [v23 accounts];
      v26 = [v25 anyObject];
      v27 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v28 = v22;
      v29 = v27;
      v53 = 0;
      v54 = 0;
      v46 = v28;
      [v24 sendData:v11 fromAccount:v26 toDestinations:v27 priority:a5 options:&v53 identifier:? error:?];
      v30 = v54;
      v14 = v53;

      v31 = wk_default_log();
      v32 = v31;
      if (v14)
      {
        v33 = &PLLogRegisteredEvent_ptr;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v43 = [v24 accounts];
          v44 = [v43 anyObject];
          v45 = [v44 serviceName];
          *buf = 136447234;
          v60 = "[SPTransport _sendData:forApplication:idsPriority:installer:withCompletion:]";
          v61 = 1024;
          v62 = 404;
          v63 = 2114;
          v64 = v45;
          v65 = 2114;
          v66 = v12;
          v67 = 2114;
          v68 = v14;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);

          v33 = &PLLogRegisteredEvent_ptr;
        }

        v57 = @"error";
        v58 = v14;
        v34 = [v33[210] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v13[2](v13, v34);
      }

      else
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(SPTransport *)self secureRemoteService];
          *buf = 136447234;
          v60 = "[SPTransport _sendData:forApplication:idsPriority:installer:withCompletion:]";
          v39 = @"insecure";
          v61 = 1024;
          v62 = 408;
          if (v24 == v38)
          {
            v39 = @"secure";
          }

          v63 = 2114;
          v64 = v30;
          v65 = 2114;
          v66 = v12;
          v67 = 2114;
          v68 = v39;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
        }

        v55[0] = @"id";
        v55[1] = @"completion";
        v56[0] = v30;
        v40 = [v13 copy];
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
      v13[2](v13, v37);

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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  sendQueue = self->_sendQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001FA44;
  v21[3] = &unk_1000460A8;
  v26 = a6;
  v21[4] = self;
  v22 = v14;
  v23 = v12;
  v24 = v15;
  v25 = v13;
  v17 = v13;
  v18 = v15;
  v19 = v12;
  v20 = v14;
  dispatch_async(sendQueue, v21);
}

- (void)serviceSpaceDidBecomeAvailable:(id)a3
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

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = wk_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 outgoingResponseIdentifier];
    v19 = [(SPTransport *)self secureRemoteService];
    v20 = @"insecure";
    v31 = "[SPTransport service:account:incomingData:fromID:context:]";
    v32 = 1024;
    v33 = 473;
    v30 = 136446978;
    if (v19 == v12)
    {
      v20 = @"secure";
    }

    v34 = 2114;
    v35 = v18;
    v36 = 2114;
    v37 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received data msg with identifier %{public}@ on %{public}@ service", &v30, 0x26u);
  }

  if (v14)
  {
    v21 = [(SPTransport *)self secureRemoteService];
    if (v21 == v12 && self->_delegate)
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
      v22 = [(SPTransport *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = [(SPTransport *)self delegate];
        [v24 incomingData:v14];

        [(SPTransport *)self temporarilyRetainIDSMessageContext:v16];
      }
    }
  }

  else
  {
    v25 = wk_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = [v12 accounts];
      v28 = [v27 anyObject];
      v29 = [v28 serviceName];
      v30 = 136447490;
      v31 = "[SPTransport service:account:incomingData:fromID:context:]";
      v32 = 1024;
      v33 = 475;
      v34 = 2114;
      v35 = v13;
      v36 = 2114;
      v37 = v29;
      v38 = 2114;
      v39 = v15;
      v40 = 2114;
      v41 = v16;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s:%d: IDS incomingData == nil,  account: %{public}@, serviceName: %{public}@, fromID: %{public}@, context: %{public}@", &v30, 0x3Au);
    }
  }
}

- (BOOL)sendProtobuf:(id)a3 sender:(id)a4 timeOut:(double)a5 securityType:(int64_t)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  sendQueue = self->_sendQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000206BC;
  block[3] = &unk_1000460D0;
  v23 = v14;
  v24 = &v27;
  block[4] = self;
  v21 = v12;
  v25 = a5;
  v26 = a6;
  v22 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_sync(sendQueue, block);
  LOBYTE(sendQueue) = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return sendQueue;
}

- (BOOL)_sendProtobuf:(id)a3 sender:(id)a4 timeOut:(double)a5 securityType:(int64_t)a6 retryExpiration:(id)a7 tryGeneration:(unint64_t)a8 withCompletion:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a9;
  if (spUtils_isRunningInF201DemoMode())
  {
    v109 = @"error";
    v20 = +[NSNull null];
    v110 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v19[2](v19, v21);

LABEL_3:
    v22 = 1;
    goto LABEL_50;
  }

  if (!a8)
  {
    v20 = self;
    objc_sync_enter(v20);
    v25 = [(SPTransport *)v20 outgoingMessageBlockedUntil];

    if (v25)
    {
      v26 = wk_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(SPTransport *)v20 outgoingMessageBlockedUntil];
        *buf = 136446722;
        v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v93 = 1024;
        v94 = 512;
        v95 = 2114;
        v96 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Currently blocking outgoing messages on %{public}@", buf, 0x1Cu);
      }

      blockedOutgoingMessagesQueue = v20->_blockedOutgoingMessagesQueue;
      if (!blockedOutgoingMessagesQueue)
      {
        v29 = dispatch_queue_create("com.apple.watchkit.blockedOutgoingMessage", 0);
        v30 = v20->_blockedOutgoingMessagesQueue;
        v20->_blockedOutgoingMessagesQueue = v29;

        dispatch_suspend(v20->_blockedOutgoingMessagesQueue);
        blockedOutgoingMessagesQueue = v20->_blockedOutgoingMessagesQueue;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002135C;
      block[3] = &unk_1000460F8;
      block[4] = v20;
      v78 = v16;
      v17 = v17;
      v79 = v17;
      v82 = a5;
      v83 = a6;
      v18 = v18;
      v80 = v18;
      v84 = 0;
      v81 = v19;
      dispatch_async(blockedOutgoingMessagesQueue, block);

      objc_sync_exit(v20);
      goto LABEL_3;
    }

    objc_sync_exit(v20);
  }

  if (self->_canSend)
  {
    v64 = a6;
    v23 = [(__CFString *)v17 isEqualToString:@".XC"];
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

    else if (v17)
    {
      goto LABEL_21;
    }

    v17 = @"com.apple.companionappd";
LABEL_21:
    v105[0] = @"action";
    v105[1] = @"application";
    v106[0] = @"sendPlist2";
    v106[1] = v17;
    v105[2] = @"length";
    v32 = [v16 uncompressedData];
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 length]);
    v106[2] = v33;
    v71 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];

    v34 = +[SPPowerLog sharedInstance];
    [v34 logEvent:v71 withName:@"SP-transport"];

    v67 = [NSSet setWithObject:v17];
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

    if (IDSMaxMessageTimeout + -1.0 == a5)
    {
      v68 = [v37 mutableCopy];
      v38 = [NSNumber numberWithDouble:a5];
      [v68 setObject:v38 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v68 = v37;
    }

    v39 = wk_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A2D4(v16, v39);
    }

    v40 = [(SPTransport *)self delegate];
    v41 = [v16 data];
    [v40 logDataSent:objc_msgSend(v41 application:{"length"), v17}];

    v42 = [(SPTransport *)self serviceForTransport:v64];
    v69 = v42;
    if (v42)
    {
      v43 = [v42 accounts];
      v44 = [v43 anyObject];
      v45 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v75 = 0;
      v76 = 0;
      [v69 sendProtobuf:v16 fromAccount:v44 toDestinations:v45 priority:200 options:v68 identifier:&v76 error:&v75];
      v66 = v76;
      v20 = v75;

      v46 = wk_default_log();
      v47 = v46;
      if (!v20)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [(SPTransport *)self secureRemoteService];
          v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v93 = 1024;
          v51 = @"insecure";
          v94 = 597;
          *buf = 136447234;
          if (v69 == v50)
          {
            v51 = @"secure";
          }

          v95 = 2114;
          v96 = v66;
          v97 = 2114;
          v98 = v17;
          v99 = 2114;
          v100 = v51;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
        }

        if ([(SPTransport *)self saveForPossibleResend:v69])
        {
          v52 = self;
          objc_sync_enter(v52);
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

          [(SPTransport *)v52 setOutgoingMessageBlockedUntil:v66];
          objc_sync_exit(v52);

          if (!v18)
          {
            v18 = [NSDate dateWithTimeIntervalSinceNow:20.0];
          }

          v88[0] = v66;
          v87[0] = @"id";
          v87[1] = @"completion";
          v54 = [v19 copy];
          v88[1] = v54;
          v87[2] = @"sender";
          v87[3] = @"protobuf";
          v88[2] = v17;
          v88[3] = v16;
          v87[4] = @"timeOut";
          v63 = [NSNumber numberWithDouble:a5];
          v88[4] = v63;
          v87[5] = @"securityType";
          v65 = [NSNumber numberWithInteger:v64];
          v88[5] = v65;
          v88[6] = v18;
          v87[6] = @"retryExpiration";
          v87[7] = @"lastSendAttemptDate";
          v55 = +[NSDate date];
          v88[7] = v55;
          v87[8] = @"tryGeneration";
          v56 = [NSNumber numberWithUnsignedInteger:a8];
          v88[8] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:9];
        }

        else
        {
          v85[0] = @"id";
          v85[1] = @"completion";
          v86[0] = v66;
          v54 = [v19 copy];
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

        v20 = 0;
        v22 = 1;
        goto LABEL_49;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v60 = [v69 accounts];
        v61 = [v60 anyObject];
        v62 = [v61 serviceName];
        *buf = 136447234;
        v92 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v93 = 1024;
        v94 = 591;
        v95 = 2114;
        v96 = v62;
        v97 = 2114;
        v98 = v17;
        v99 = 2114;
        v100 = v20;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);
      }

      v89 = @"error";
      v90 = v20;
      v48 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v19[2](v19, v48);
    }

    else
    {
      v101 = @"error";
      v48 = [SPError errorWithCode:16];
      v102 = v48;
      v49 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v19[2](v19, v49);

      v66 = 0;
      v20 = 0;
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

  v20 = [SPError errorWithCode:14];
  v107 = @"error";
  v108 = v20;
  v70 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  v19[2](v19, v70);
  v22 = 0;

LABEL_50:
  return v22;
}

- (id)serviceForTransport:(int64_t)a3
{
  v3 = self;
  if (a3 == 2)
  {
    v5 = [(SPTransport *)self insecureRemoteService];

    if (!v5)
    {
      v6 = wk_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10002A43C();
      }

      goto LABEL_16;
    }

LABEL_17:
    self = [(SPTransport *)v3 insecureRemoteService];
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if ([(SPTransportDelegate *)self->_delegate unlockedSinceBoot])
    {
LABEL_9:
      self = [(SPTransport *)v3 secureRemoteService];
      goto LABEL_18;
    }

    v7 = [(SPTransport *)v3 insecureRemoteService];

    if (!v7)
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

  if (a3)
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

- (BOOL)saveForPossibleResend:(id)a3
{
  v4 = a3;
  v5 = [(SPTransport *)self secureRemoteService];

  if (v5 != v4)
  {

    return 0;
  }

  delegate = self->_delegate;
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = [(SPTransportDelegate *)self->_delegate dateOfFirstUnlock];
  v9 = v8;
  if (!v8 || ([v8 timeIntervalSinceNow], v11 = v10, v10 <= -20.0))
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

- (void)incomingSecureProtobuf:(id)a3
{
  v4 = a3;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SPTransportDelegate *)self->_delegate didReceiveSecureData];
  }

  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 context];
    v7 = [v6 outgoingResponseIdentifier];
    v8 = 136446722;
    v9 = "[SPTransport incomingSecureProtobuf:]";
    v10 = 1024;
    v11 = 690;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received protobuf msg with identifier %{public}@ on secure service", &v8, 0x1Cu);
  }

  [(SPTransport *)self incomingProtobuf:v4];
}

- (void)incomingInsecureProtobuf:(id)a3
{
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 context];
    v7 = [v6 outgoingResponseIdentifier];
    v8 = 136446722;
    v9 = "[SPTransport incomingInsecureProtobuf:]";
    v10 = 1024;
    v11 = 696;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received protobuf msg with identifier %{public}@ on insecure service", &v8, 0x1Cu);
  }

  [(SPTransport *)self incomingProtobuf:v4];
}

- (void)incomingProtobuf:(id)a3
{
  v4 = a3;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A5C8(v4, v5);
  }

  if (self->_delegate)
  {
    v6 = [(SPTransport *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SPTransport *)self delegate];
      [v8 incomingProtobuf:v4];

      v9 = [v4 context];
      [(SPTransport *)self temporarilyRetainIDSMessageContext:v9];
    }
  }
}

- (void)temporarilyRetainIDSMessageContext:(id)a3
{
  v4 = a3;
  retainedIDSMessageContextsQueue = self->_retainedIDSMessageContextsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021B0C;
  v7[3] = &unk_1000447A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(retainedIDSMessageContextsQueue, v7);
}

- (BOOL)handleDataProtectionSendFailureOrRetryFailureOnService:(id)a3 account:(id)a4 identifier:(id)a5 error:(id)a6
{
  v36 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
  v14 = v11;
  v44 = v14;
  dispatch_sync(messagesAccessQueue, block);
  v15 = v47[5];
  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"protobuf"];

    v17 = [v47[5] objectForKeyedSubscript:@"propertyList"];

    if (v16 != 0 || v17 != 0)
    {
      if ([v12 code] == 31)
      {
        v18 = [v12 domain];
        v19 = [v18 isEqualToString:IDSErrorDomain];
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
      v24 = [v23 unsignedLongValue];

      v25 = 2.0;
      if (v24 == 1)
      {
        v25 = 0.25;
      }

      if (v24)
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
        v40[2] = v24;
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
        v38[2] = v24;
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

- (void)removeOutgoingMessageBlockIfIdentiferMatches:(id)a3 sendError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(SPTransport *)v8 outgoingMessageBlockedUntil];
  v10 = [v9 isEqualToString:v6];

  if (v10)
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v12 = [NSString stringWithFormat:@"failed with error %@", v7];
      }

      else
      {
        v12 = @"succeeded";
      }

      *buf = 136446978;
      v17 = "[SPTransport removeOutgoingMessageBlockIfIdentiferMatches:sendError:]";
      v18 = 1024;
      v19 = 791;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: we were blocked on %{public}@ and it %{public}@. unblocking", buf, 0x26u);
      if (v7)
      {
      }
    }

    if (v8->_blockedOutgoingMessagesQueue)
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

      blockedOutgoingMessagesQueue = v8->_blockedOutgoingMessagesQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002275C;
      block[3] = &unk_100044778;
      block[4] = v8;
      dispatch_async(blockedOutgoingMessagesQueue, block);
      dispatch_resume(v8->_blockedOutgoingMessagesQueue);
    }

    [(SPTransport *)v8 setOutgoingMessageBlockedUntil:0];
  }

  objc_sync_exit(v8);
}

@end
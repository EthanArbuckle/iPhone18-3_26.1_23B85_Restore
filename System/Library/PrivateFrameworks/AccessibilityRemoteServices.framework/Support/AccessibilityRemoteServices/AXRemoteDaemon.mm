@interface AXRemoteDaemon
+ (id)sharedInstance;
- (id)_init;
- (id)remoteReceiver:(id)receiver connectingDevice:(id)device setupConnection:(BOOL)connection withOptions:(id)options;
- (void)_cancelTransactionIfNecessary;
- (void)_notifyUserEventOccured;
- (void)_sendScrollEventWithScrollAmount:(int64_t)amount;
- (void)remoteReceiver:(id)receiver didActivateWithError:(id)error;
- (void)remoteReceiver:(id)receiver didReceivePayload:(id)payload withOptions:(id)options;
- (void)remoteReceiverDidDisconnect:(id)disconnect;
- (void)run;
- (void)scrollAccumulator:(id)accumulator didAccumulateScrollInDirection:(int64_t)direction;
- (void)startXPCService;
@end

@implementation AXRemoteDaemon

+ (id)sharedInstance
{
  if (qword_10000CB08 != -1)
  {
    sub_100003C1C();
  }

  v3 = qword_10000CB00;

  return v3;
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = AXRemoteDaemon;
  v2 = [(AXRemoteDaemon *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("com.apple.accessibility.axremoted.eventReceiverQueue", v4);
    receiverQueue = v2->_receiverQueue;
    v2->_receiverQueue = v5;

    v7 = [AXRemoteReceiver alloc];
    v8 = [v7 initWithEventID:AXDefaultRemoteEventID delegate:v2];
    [(AXRemoteDaemon *)v2 setReceiver:v8];

    v9 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(AXRemoteDaemon *)v2 setTransactionTimeoutTimer:v9];

    transactionTimeoutTimer = [(AXRemoteDaemon *)v2 transactionTimeoutTimer];
    [transactionTimeoutTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    v11 = objc_opt_new();
    [(AXRemoteDaemon *)v2 setScrollAccumulator:v11];

    scrollAccumulator = [(AXRemoteDaemon *)v2 scrollAccumulator];
    [scrollAccumulator setDelegate:v2];
  }

  return v2;
}

- (void)run
{
  v3 = ax_remote_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running AXRemoteDaemon", v4, 2u);
  }

  [(AXRemoteDaemon *)self startXPCService];
}

- (void)startXPCService
{
  v3 = ax_remote_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting up Rapport XPC event listener", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001344;
  handler[3] = &unk_1000085C0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.rapport.matching", &_dispatch_main_q, handler);
}

- (void)_cancelTransactionIfNecessary
{
  transaction = [(AXRemoteDaemon *)self transaction];

  if (transaction)
  {
    v4 = ax_remote_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "clearing os_transaction", buf, 2u);
    }

    [(AXRemoteDaemon *)self setTransaction:0];
  }

  previousVoiceOverEnabledState = [(AXRemoteDaemon *)self previousVoiceOverEnabledState];

  if (previousVoiceOverEnabledState)
  {
    v6 = ax_remote_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "resetting VoiceOver state", v8, 2u);
    }

    previousVoiceOverEnabledState2 = [(AXRemoteDaemon *)self previousVoiceOverEnabledState];
    [previousVoiceOverEnabledState2 BOOLValue];
    _AXSVoiceOverTouchSetEnabled();

    [(AXRemoteDaemon *)self setPreviousVoiceOverEnabledState:0];
  }
}

- (void)_notifyUserEventOccured
{
  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v2 = +[AXUserEventTimer sharedInstance];
    [v2 userEventOccurred];
  }
}

- (void)_sendScrollEventWithScrollAmount:(int64_t)amount
{
  v5 = objc_alloc_init(AXEventRepresentation);
  [v5 setType:1100];
  [v5 setScrollAmount:amount];
  v4 = +[AXEventTapManager sharedManager];
  [v4 sendHIDSystemEvent:v5 senderID:0x8000000817319384];
}

- (void)scrollAccumulator:(id)accumulator didAccumulateScrollInDirection:(int64_t)direction
{
  accumulatorCopy = accumulator;
  if (direction == 2)
  {
    v12 = accumulatorCopy;
    if (AXDeviceIsTV())
    {
      selfCopy2 = self;
      v8 = -1;
      goto LABEL_7;
    }

    v9 = +[AXRDeviceRemoteActionHelper sharedInstance];
    v10 = v9;
    v11 = &AXRDeviceRemoteActionMediaVolumeDown;
LABEL_10:
    [v9 performAction:*v11];

    goto LABEL_11;
  }

  if (direction != 1)
  {
    goto LABEL_12;
  }

  v12 = accumulatorCopy;
  if (!AXDeviceIsTV())
  {
    v9 = +[AXRDeviceRemoteActionHelper sharedInstance];
    v10 = v9;
    v11 = &AXRDeviceRemoteActionMediaVolumeUp;
    goto LABEL_10;
  }

  selfCopy2 = self;
  v8 = 1;
LABEL_7:
  [(AXRemoteDaemon *)selfCopy2 _sendScrollEventWithScrollAmount:v8];
LABEL_11:
  accumulatorCopy = v12;
LABEL_12:
}

- (void)remoteReceiver:(id)receiver didActivateWithError:(id)error
{
  errorCopy = error;
  v6 = ax_remote_daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "remote receiver did activate with error: %@", &v7, 0xCu);
  }

  [(AXRemoteDaemon *)self _resetTransactionTimer];
}

- (id)remoteReceiver:(id)receiver connectingDevice:(id)device setupConnection:(BOOL)connection withOptions:(id)options
{
  connectionCopy = connection;
  optionsCopy = options;
  deviceCopy = device;
  if (connectionCopy)
  {
    v11 = AXRLocalizedStringForKey();
    v12 = [optionsCopy objectForKeyedSubscript:AXRDeviceRequestsVoiceOverEnabledKey];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue && !_AXSVoiceOverTouchEnabled())
    {
      v14 = ax_remote_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "enabling VoiceOver due to remote request", buf, 2u);
      }

      v15 = [NSNumber numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
      [(AXRemoteDaemon *)self setPreviousVoiceOverEnabledState:v15];

      _AXSVoiceOverTouchSetEnabled();
      _AXSVoiceOverTouchSetUsageConfirmed();
      v16 = AXRLocalizedStringForKey();

      v11 = v16;
    }

    if (_AXSVoiceOverTouchEnabled())
    {
      v17 = 1;
    }

    else
    {
      v17 = 2 * (_AXSAssistiveTouchScannerEnabled() != 0);
    }

    v28[0] = AXRDeviceRemoteActionsPayloadKey;
    v19 = AXRDeviceRemoteActionsPayloadForCurrentDevice();
    v29[0] = v19;
    v28[1] = AXRDeviceRemoteActionsDeviceTypeKey;
    v20 = [NSNumber numberWithLong:AXDeviceGetType()];
    v29[1] = v20;
    v28[2] = AXRDeviceContextTypeKey;
    v21 = [NSNumber numberWithInteger:v17];
    v29[2] = v21;
    v28[3] = AXRHandGestureCustomizedActionsKey;
    v22 = +[AXSettings sharedInstance];
    remoteHandGestureCustomizedActions = [v22 remoteHandGestureCustomizedActions];
    v29[3] = remoteHandGestureCustomizedActions;
    v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];

    v24 = +[AXSystemAppServer server];
    [v24 wakeUpDeviceIfNecessary];

    [(AXRemoteDaemon *)self _notifyUserEventOccured];
  }

  else
  {
    v11 = AXRLocalizedStringForKey();
    AXPerformBlockOnMainThread();
    v18 = 0;
  }

  v25 = +[AXBannerServices sharedInstance];
  [v25 presentBannerWithTitle:deviceCopy message:v11 duration:3.0];

  return v18;
}

- (void)remoteReceiverDidDisconnect:(id)disconnect
{
  v3 = ax_remote_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "remote receiver did disconnect", buf, 2u);
  }

  AXPerformBlockOnMainThread();
}

- (void)remoteReceiver:(id)receiver didReceivePayload:(id)payload withOptions:(id)options
{
  payloadCopy = payload;
  optionsCopy = options;
  v9 = ax_remote_daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100003C30(payloadCopy, optionsCopy, v9);
  }

  receiverQueue = self->_receiverQueue;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100001EF8;
  v15 = &unk_100008658;
  v16 = payloadCopy;
  selfCopy = self;
  v11 = payloadCopy;
  dispatch_async(receiverQueue, &v12);
  [(AXRemoteDaemon *)self _resetTransactionTimer:v12];
}

@end
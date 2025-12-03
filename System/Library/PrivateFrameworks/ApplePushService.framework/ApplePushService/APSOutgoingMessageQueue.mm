@interface APSOutgoingMessageQueue
- (APSOutgoingMessageQueue)initWithDelegate:(id)delegate environment:(id)environment;
- (BOOL)_outgoingMessageIsLateCriticalMessage:(id)message;
- (BOOL)hasEagerMessages;
- (BOOL)shouldReportLastReversePushRTTOnInterface:(id)interface;
- (id)lastReversePushRTTMillisecondsOnInterface:(id)interface;
- (id)outgoingMessagesToSend;
- (void)_clearCriticalMessageKeepAliveTimer;
- (void)_clearCriticalMessageKeepAliveTimerIfAppropriate;
- (void)_criticalMessageKeepAliveTimerFired;
- (void)_deliverResult:(id)result forMessage:(id)message;
- (void)_queueChanged;
- (void)_recalculateDisableFastDormancy;
- (void)_recalculatePowerAssertion;
- (void)_recalculateTimer;
- (void)_startCriticalMessageFlushTimerSendingFlush;
- (void)_timerFired:(id)fired;
- (void)appendPrettyStatusToStatusPrinter:(id)printer;
- (void)cancelOutgoingMessageWithID:(unint64_t)d;
- (void)dealloc;
- (void)enqueueOutgoingMessage:(id)message forOriginator:(id)originator;
- (void)handleConnectionClosedOnInterface:(id)interface;
- (void)handleConnectionOpenedOnInterface:(id)interface;
- (void)handleErrorSendingOutgoingMessage:(id)message error:(id)error;
- (void)handleSentOutgoingMessage:(id)message onInterface:(id)interface;
- (void)setCriticalMessageKeepAliveTimerDuration:(id)duration;
- (void)setCriticalMessageTimeout:(id)timeout;
- (void)setForcedShortTimeoutInterval:(id)interval;
- (void)setNumberOfCriticalMessageFlushesBeforeDisconnecting:(id)disconnecting;
- (void)transferOwnershipOfPendingMessagesToHandler:(id)handler;
@end

@implementation APSOutgoingMessageQueue

- (void)_recalculatePowerAssertion
{
  hasEagerMessages = [(APSOutgoingMessageQueue *)self hasEagerMessages];
  powerAssertion = self->_powerAssertion;
  if (hasEagerMessages)
  {
    if (!powerAssertion)
    {
      if (self->_powerOptimizationsForExpensiveNetworkingDisabled || !+[PCInterfaceMonitor isNetworkingPowerExpensiveToUse])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(NSMutableArray *)self->_queue count];
          *buf = 138412546;
          selfCopy3 = self;
          v13 = 2048;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Creating power assertion - pending message count %lu", buf, 0x16u);
        }

        aPSBundleIdentifier = [NSString stringWithFormat:@"%@-outgoingmessage", APSBundleIdentifier];
        v9 = [[APSPowerAssertion alloc] initWithName:aPSBundleIdentifier category:206 holdDuration:300.0];
        v10 = self->_powerAssertion;
        self->_powerAssertion = v9;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Not taking power assertion for eager outgoing message, interfaces are expensive to use", buf, 0xCu);
      }
    }
  }

  else if (powerAssertion)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableArray *)self->_queue count];
      *buf = 138412546;
      selfCopy3 = self;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Releasing power assertion - pending message count %lu", buf, 0x16u);
    }

    v6 = self->_powerAssertion;
    self->_powerAssertion = 0;
  }
}

- (void)_clearCriticalMessageKeepAliveTimer
{
  if (self->_criticalMessageKeepAliveTimer)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      criticalMessageKeepAliveTimer = self->_criticalMessageKeepAliveTimer;
      v5 = 138412546;
      selfCopy = self;
      v7 = 2112;
      v8 = criticalMessageKeepAliveTimer;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ clearingCriticalMessageKeepAliveTimer %@", &v5, 0x16u);
    }

    [(NSTimer *)self->_criticalMessageKeepAliveTimer invalidate];
    v4 = self->_criticalMessageKeepAliveTimer;
    self->_criticalMessageKeepAliveTimer = 0;
  }
}

- (BOOL)hasEagerMessages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018690;
  v5[3] = &unk_100187CB8;
  v5[4] = &v6;
  [(NSMutableArray *)queue enumerateObjectsWithOptions:2 usingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_recalculateDisableFastDormancy
{
  hasEagerMessages = [(APSOutgoingMessageQueue *)self hasEagerMessages];
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (hasEagerMessages)
  {
    if (v4)
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: disabling fast dormancy.", &v6, 0xCu);
    }

    v5 = +[CUTTelephonyManager sharedInstance];
    [v5 addFastDormancyDisableToken:@"APSDFastDormancyDisableToken"];
  }

  else
  {
    if (v4)
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: un-disabling fast dormancy.", &v6, 0xCu);
    }

    v5 = +[CUTTelephonyManager sharedInstance];
    [v5 removeFastDormancyDisableToken:@"APSDFastDormancyDisableToken"];
  }
}

- (void)_queueChanged
{
  if (![(NSMutableArray *)self->_queue count])
  {
    queue = self->_queue;
    self->_queue = 0;
  }

  [(APSOutgoingMessageQueue *)self _clearCriticalMessageKeepAliveTimerIfAppropriate];
  [(APSOutgoingMessageQueue *)self _recalculateTimer];
  [(APSOutgoingMessageQueue *)self _recalculatePowerAssertion];

  [(APSOutgoingMessageQueue *)self _recalculateDisableFastDormancy];
}

- (void)_clearCriticalMessageKeepAliveTimerIfAppropriate
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_queue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(APSOutgoingMessageQueue *)self _outgoingMessageIsLateCriticalMessage:*(*(&v8 + 1) + 8 * v7), v8])
        {

          return;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [(APSOutgoingMessageQueue *)self _clearCriticalMessageKeepAliveTimer];
  self->_criticalMessageFlushCount = 0;
  self->_criticalMessageFlushSize = 0;
}

- (void)_recalculateTimer
{
  selfCopy2 = self;
  if ([(APSOutgoingMessageQueueDelegate *)self->_delegate shouldForceShortTimeouts]&& [(NSMutableArray *)selfCopy2->_queue count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      forcedShortTimeoutDuration = selfCopy2->_forcedShortTimeoutDuration;
      *buf = 138412546;
      v32 = selfCopy2;
      v33 = 2048;
      v34 = forcedShortTimeoutDuration;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ shouldForceShortTimeouts, enforcing maximum %f pending outgoing message duration", buf, 0x16u);
    }

    v4 = [NSDate dateWithTimeIntervalSinceNow:selfCopy2->_forcedShortTimeoutDuration];
    selfCopy2 = self;
  }

  else
  {
    v4 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = selfCopy2->_queue;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if (([v9 wasCancelled] & 1) == 0 && (objc_msgSend(v9, "hasTimedOut") & 1) == 0)
        {
          if (!self->_criticalMessageKeepAliveTimer && [v9 wasSent] && objc_msgSend(v9, "isCritical"))
          {
            criticalMessageTimeout = self->_criticalMessageTimeout;
            criticalMessageTimeout = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_lastReceivedAckOrReconnect + criticalMessageTimeout];
            timestamp = [v9 timestamp];
            sendTimeoutTime = [timestamp dateByAddingTimeInterval:criticalMessageTimeout];

            if ([criticalMessageTimeout compare:sendTimeoutTime] == -1)
            {
              sendTimeoutTime = sendTimeoutTime;

              criticalMessageTimeout = sendTimeoutTime;
            }

LABEL_23:
          }

          else
          {
            sendTimeoutTime = [v9 sendTimeoutTime];
            if ([v9 isEager])
            {
              eagernessTimeoutTime = [v9 eagernessTimeoutTime];
              v16 = [eagernessTimeoutTime compare:sendTimeoutTime] == -1;

              if (v16)
              {
                criticalMessageTimeout = [v9 eagernessTimeoutTime];
                goto LABEL_23;
              }
            }

            criticalMessageTimeout = sendTimeoutTime;
          }

          if (v4)
          {
            if ([criticalMessageTimeout compare:v4] != -1 || v4 == criticalMessageTimeout)
            {
              goto LABEL_31;
            }

LABEL_29:
            v17 = criticalMessageTimeout;

            v4 = v17;
          }

          else
          {
            if (criticalMessageTimeout)
            {
              goto LABEL_29;
            }

            v4 = 0;
          }

LABEL_31:
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  selfCopy3 = self;
  objc_sync_enter(selfCopy3);
  if (v4)
  {
    v19 = [v4 dateByAddingTimeInterval:1.0];
    timer = selfCopy3->_timer;
    v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (timer)
    {
      if (v21)
      {
        *buf = 138412546;
        v32 = selfCopy3;
        v33 = 2112;
        v34 = *&v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Setting outgoing message timer fire date %@", buf, 0x16u);
      }

      [(NSTimer *)selfCopy3->_timer setFireDate:v19];
    }

    else
    {
      if (v21)
      {
        *buf = 138412546;
        v32 = selfCopy3;
        v33 = 2112;
        v34 = *&v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Creating outgoing message timer with fire date %@", buf, 0x16u);
      }

      v22 = [[NSTimer alloc] initWithFireDate:v19 interval:selfCopy3 target:"_timerFired:" selector:0 userInfo:0 repeats:0.0];
      v23 = selfCopy3->_timer;
      selfCopy3->_timer = v22;

      v24 = +[NSRunLoop currentRunLoop];
      [v24 addTimer:selfCopy3->_timer forMode:NSDefaultRunLoopMode];
    }

LABEL_46:

    goto LABEL_47;
  }

  if (selfCopy3->_timer)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = selfCopy3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Invalidating outgoing message timer", buf, 0xCu);
    }

    [(NSTimer *)selfCopy3->_timer invalidate];
    v19 = selfCopy3->_timer;
    selfCopy3->_timer = 0;
    goto LABEL_46;
  }

LABEL_47:
  objc_sync_exit(selfCopy3);
}

- (id)outgoingMessagesToSend
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_queue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 wasSent] & 1) == 0 && (objc_msgSend(v9, "wasCancelled") & 1) == 0 && (objc_msgSend(v9, "hasTimedOut") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (APSOutgoingMessageQueue)initWithDelegate:(id)delegate environment:(id)environment
{
  delegateCopy = delegate;
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = APSOutgoingMessageQueue;
  v9 = [(APSOutgoingMessageQueue *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
    objc_storeStrong(&v10->_environment, environment);
    v10->_criticalMessageTimeout = 10.0;
    v10->_criticalMessageKeepAliveTimerDuration = 10.0;
    *&v10->_criticalMessageFlushCount = xmmword_10015CD80;
    v10->_criticalMessageFlushSize = 0;
    v10->_forcedShortTimeoutDuration = 2.0;
    v11 = objc_alloc_init(NSMutableDictionary);
    lastReversePushRTTMilliseconds = v10->_lastReversePushRTTMilliseconds;
    v10->_lastReversePushRTTMilliseconds = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    shouldReportLastReversePushRTT = v10->_shouldReportLastReversePushRTT;
    v10->_shouldReportLastReversePushRTT = v13;
  }

  return v10;
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSTimer *)selfCopy->_timer invalidate];
  objc_sync_exit(selfCopy);

  [(APSOutgoingMessageQueue *)selfCopy _clearCriticalMessageKeepAliveTimer];
  selfCopy->_criticalMessageFlushCount = 0;
  selfCopy->_criticalMessageFlushSize = 0;
  v3.receiver = selfCopy;
  v3.super_class = APSOutgoingMessageQueue;
  [(APSOutgoingMessageQueue *)&v3 dealloc];
}

- (void)enqueueOutgoingMessage:(id)message forOriginator:(id)originator
{
  messageCopy = message;
  originatorCopy = originator;
  if ([(NSMutableArray *)self->_queue count]> 0x63)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10010A6F8(self, messageCopy);
    }

    v12 = APSError();
    [originatorCopy handleResult:v12 forSendingOutgoingMessage:messageCopy];
  }

  else
  {
    queue = self->_queue;
    if (!queue)
    {
      v9 = objc_alloc_init(NSMutableArray);
      v10 = self->_queue;
      self->_queue = v9;

      queue = self->_queue;
    }

    [(NSMutableArray *)queue addObject:messageCopy];
    ++self->_numberQueued;
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastNotificationQueued = v11;
    [(APSOutgoingMessageQueue *)self _queueChanged];
  }
}

- (void)cancelOutgoingMessageWithID:(unint64_t)d
{
  v5 = [(NSMutableArray *)self->_queue count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_queue objectAtIndex:v7];
      if ([v8 messageID] == d)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    if (([v8 wasCancelled] & 1) != 0 || objc_msgSend(v8, "hasTimedOut"))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        selfCopy4 = self;
        v14 = 2048;
        dCopy4 = d;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Cancelled outgoing message %lu was already cancelled or timed out", &v12, 0x16u);
      }
    }

    else
    {
      v9 = APSError();
      [(APSOutgoingMessageQueue *)self _deliverResult:v9 forMessage:v8];
    }

    wasSent = [v8 wasSent];
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (wasSent)
    {
      if (v11)
      {
        v12 = 138412546;
        selfCopy4 = self;
        v14 = 2048;
        dCopy4 = d;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Cancelled outgoing message %lu was already sent", &v12, 0x16u);
      }

      [v8 setCancelled:1];
    }

    else
    {
      if (v11)
      {
        v12 = 138412546;
        selfCopy4 = self;
        v14 = 2048;
        dCopy4 = d;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Removing cancelled outgoing message %lu from queue", &v12, 0x16u);
      }

      [(NSMutableArray *)self->_queue removeObjectAtIndex:v7];
    }
  }

  else
  {
LABEL_5:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      selfCopy4 = self;
      v14 = 2048;
      dCopy4 = d;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Cancelled outgoing message %lu not found in queue", &v12, 0x16u);
    }
  }

  [(APSOutgoingMessageQueue *)self _queueChanged];
}

- (void)transferOwnershipOfPendingMessagesToHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_queue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          originator = [v10 originator];
          handlerCopy[2](handlerCopy, v10, originator);
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    queue = self->_queue;
    self->_queue = 0;

    [(APSOutgoingMessageQueue *)self _queueChanged];
  }
}

- (void)handleSentOutgoingMessage:(id)message onInterface:(id)interface
{
  messageCopy = message;
  interfaceCopy = interface;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v12 = 2112;
    v13 = messageCopy;
    v14 = 2112;
    v15 = interfaceCopy;
    v16 = 2048;
    identifier = [messageCopy identifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ handleSentOutgoingMessage: %@ onInterface %@ identifier %lu", buf, 0x2Au);
  }

  if ([messageCopy wasSent] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10010A798(self);
  }

  [messageCopy setSent:1];
  v8 = +[NSDate date];
  [messageCopy setSentTimestamp:v8];

  [messageCopy setSendInterfaceIdentifier:interfaceCopy];
  messageID = [messageCopy messageID];
  APSAlert();
  [(APSOutgoingMessageQueue *)self _queueChanged];
}

- (void)handleErrorSendingOutgoingMessage:(id)message error:(id)error
{
  errorCopy = error;
  messageID = [message messageID];
  v8 = [(NSMutableArray *)self->_queue count];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    *&v9 = 138412546;
    v14 = v9;
    while (1)
    {
      v12 = [(NSMutableArray *)self->_queue objectAtIndex:v11, v14];
      if ([v12 messageID] == messageID && !objc_msgSend(v12, "wasSent"))
      {
        break;
      }

      if ([v12 messageID] == messageID && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v14;
        selfCopy = self;
        v17 = 2048;
        v18 = messageID;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Message %lu may have already been sent, not removing message...", buf, 0x16u);
      }

      if (v10 == ++v11)
      {
        goto LABEL_9;
      }
    }

    originator = [v12 originator];
    [originator handleResult:errorCopy forSendingOutgoingMessage:v12];
    [(NSMutableArray *)self->_queue removeObjectAtIndex:v11];
  }

  else
  {
LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10010A848(self, messageID);
    }
  }

  [(APSOutgoingMessageQueue *)self _queueChanged];
}

- (BOOL)shouldReportLastReversePushRTTOnInterface:(id)interface
{
  interfaceCopy = interface;
  if (!interfaceCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to return shouldReportLastReversePushRTT on invalid interface %@", &v8, 0x16u);
  }

  v5 = [(NSMutableDictionary *)self->_shouldReportLastReversePushRTT objectForKeyedSubscript:interfaceCopy];
  v6 = v5 != 0;

  return v6;
}

- (id)lastReversePushRTTMillisecondsOnInterface:(id)interface
{
  interfaceCopy = interface;
  if (!interfaceCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      selfCopy2 = self;
      v11 = 2112;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get  _lastReversePushRTTMilliseconds on invalid interface %@", &v9, 0x16u);
    }

    goto LABEL_8;
  }

  v5 = [(NSMutableDictionary *)self->_shouldReportLastReversePushRTT objectForKeyedSubscript:interfaceCopy];

  if (!v5)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_lastReversePushRTTMilliseconds objectForKeyedSubscript:interfaceCopy];
    v9 = 138412802;
    selfCopy2 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = interfaceCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get  _lastReversePushRTTMilliseconds %@ on interface %@", &v9, 0x20u);
  }

  v7 = [(NSMutableDictionary *)self->_lastReversePushRTTMilliseconds objectForKeyedSubscript:interfaceCopy];
LABEL_9:

  return v7;
}

- (void)handleConnectionOpenedOnInterface:(id)interface
{
  interfaceCopy = interface;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastReceivedAckOrReconnect = v5;
  v6 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_queue;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138412546;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (([v13 wasCancelled] & 1) == 0 && (objc_msgSend(v13, "hasTimedOut") & 1) == 0)
        {
          if ([v13 isCritical])
          {
            timestamp = [v13 timestamp];
            [timestamp timeIntervalSinceNow];
            v16 = v15 + self->_criticalMessageTimeout;

            if (v16 < 0.0 && ([v13 sendRetried] & 1) == 0)
            {
              sendInterfaceIdentifier = [v13 sendInterfaceIdentifier];
              v18 = [sendInterfaceIdentifier isEqualToString:interfaceCopy];

              if ((v18 & 1) == 0)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  guid = [v13 guid];
                  *buf = v20;
                  selfCopy = self;
                  v27 = 2112;
                  v28 = guid;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ informed of reconnect, retry late critical message %@ sent on another interface", buf, 0x16u);
                }

                [v13 setSent:0];
                [v13 setSendRetried:1];
                [v13 setSendInterfaceIdentifier:0];
                [v6 addObject:v13];
              }
            }
          }
        }
      }

      v10 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_queue removeObjectsInArray:v6];
  [(NSMutableArray *)self->_queue addObjectsFromArray:v6];
}

- (void)handleConnectionClosedOnInterface:(id)interface
{
  interfaceCopy = interface;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(NSMutableArray *)self->_queue count];
  if (v6 >= 1)
  {
    v8 = v6;
    v9 = 0;
    *&v7 = 138412802;
    v16 = v7;
    do
    {
      v10 = [(NSMutableArray *)self->_queue objectAtIndex:v9, v16];
      sendInterfaceIdentifier = [v10 sendInterfaceIdentifier];
      v12 = [sendInterfaceIdentifier isEqualToString:interfaceCopy];

      if (v12)
      {
        if (([v10 wasCancelled] & 1) != 0 || objc_msgSend(v10, "hasTimedOut"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            messageID = [v10 messageID];
            *buf = 138412546;
            selfCopy3 = self;
            v19 = 2048;
            v20 = messageID;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Removing cancelled or timed out outgoing message %lu from queue", buf, 0x16u);
          }

LABEL_12:
          [(NSMutableArray *)self->_queue removeObjectAtIndex:v9--];
          --v8;
          goto LABEL_13;
        }

        if ([v10 wasSent])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            messageID2 = [v10 messageID];
            *buf = v16;
            selfCopy3 = self;
            v19 = 2048;
            v20 = messageID2;
            v21 = 2112;
            v22 = interfaceCopy;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Clearing sent flag for outgoing message %lu that had been sent on %@", buf, 0x20u);
          }

          [v10 setSent:0];
          [v10 setSendInterfaceIdentifier:0];
          [v5 addObject:v10];
          goto LABEL_12;
        }
      }

LABEL_13:

      ++v9;
    }

    while (v9 < v8);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 count];
    *buf = 138412546;
    selfCopy3 = self;
    v19 = 2048;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Moving %lu unsent messages to the end of queue", buf, 0x16u);
  }

  [(NSMutableArray *)self->_queue addObjectsFromArray:v5];
  [(APSOutgoingMessageQueue *)self _queueChanged];
}

- (void)_deliverResult:(id)result forMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138413058;
    selfCopy = self;
    v11 = 2112;
    v12 = resultCopy;
    v13 = 2112;
    v14 = messageCopy;
    v15 = 1024;
    priority = [messageCopy priority];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to deliver result %@ for message %@ with priority %d", &v9, 0x26u);
  }

  originator = [messageCopy originator];
  [originator handleResult:resultCopy forSendingOutgoingMessage:messageCopy];
}

- (void)_timerFired:(id)fired
{
  firedCopy = fired;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Outgoing message timer fired", buf, 0xCu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  timer = selfCopy2->_timer;
  selfCopy2->_timer = 0;

  objc_sync_exit(selfCopy2);
  v7 = [NSArray arrayWithArray:selfCopy2->_queue];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v32 = firedCopy;
    v33 = 0;
    v10 = &fputc_ptr;
    v11 = *v36;
    while (1)
    {
      v12 = 0;
      v34 = v9;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        sentTimestamp = [v13 sentTimestamp];
        date = [v10[474] date];
        [date timeIntervalSinceDate:sentTimestamp];
        v17 = v16;

        if (([v13 wasCancelled] & 1) == 0 && (objc_msgSend(v13, "hasTimedOut") & 1) == 0)
        {
          v18 = v11;
          v19 = selfCopy2;
          v20 = v10;
          v21 = v7;
          sendTimeoutTime = [v13 sendTimeoutTime];
          v23 = v20;
          date2 = [v20[474] date];
          v25 = [sendTimeoutTime compare:date2];

          if (v25 == -1)
          {
            APSAlert();
            selfCopy2 = v19;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              messageID = [v13 messageID];
              *buf = 138412546;
              selfCopy = v19;
              v41 = 2048;
              v42 = messageID;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Outgoing message %lu timed out", buf, 0x16u);
            }

            [v13 setTimedOut:1];
            [v13 wasSent];
            v28 = APSError();
            [(APSOutgoingMessageQueue *)v19 _deliverResult:v28 forMessage:v13];
            v7 = v21;
            v10 = v23;
            v11 = v18;
            v9 = v34;
            if (([v13 wasSent] & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                messageID2 = [v13 messageID];
                *buf = 138412546;
                selfCopy = selfCopy2;
                v41 = 2048;
                v42 = messageID2;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Removing unsent timed out message %lu from queue", buf, 0x16u);
              }

              [(NSMutableArray *)selfCopy2->_queue removeObject:v13];
            }

            if ([v13 isCritical] && objc_msgSend(v13, "timeout") >= 0x14)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                timeout = [v13 timeout];
                *buf = 138412546;
                selfCopy = selfCopy2;
                v41 = 2048;
                v42 = timeout;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Critical message has timed out. Timeout = %lu. Alerting the delegate.", buf, 0x16u);
              }

              [(APSOutgoingMessageQueueDelegate *)selfCopy2->_delegate outgoingMessageQueue:selfCopy2 lateAcknowledgmentForCriticalOutgoingMessage:v13];
            }
          }

          else
          {
            selfCopy2 = v19;
            if ([(APSOutgoingMessageQueue *)v19 _outgoingMessageIsLateCriticalMessage:v13])
            {
              APSAlert();
              v7 = v21;
              v11 = v18;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                messageID3 = [v13 messageID];
                *buf = 138412546;
                selfCopy = selfCopy2;
                v41 = 2048;
                v42 = messageID3;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Acknowledgment for critical outgoing message %lu is late", buf, 0x16u);
              }

              [(APSOutgoingMessageQueue *)selfCopy2 _startCriticalMessageFlushTimerSendingFlush];
LABEL_33:
              v10 = v23;
              v9 = v34;
              goto LABEL_34;
            }

            v7 = v21;
            v11 = v18;
            if (!sentTimestamp)
            {
              goto LABEL_33;
            }

            v10 = v23;
            v9 = v34;
            if (v17 > selfCopy2->_forcedShortTimeoutDuration && [(APSOutgoingMessageQueueDelegate *)selfCopy2->_delegate shouldForceShortTimeouts])
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                forcedShortTimeoutDuration = selfCopy2->_forcedShortTimeoutDuration;
                *buf = 138413314;
                selfCopy = selfCopy2;
                v41 = 2112;
                v42 = v13;
                v43 = 2112;
                v44 = sentTimestamp;
                v45 = 2048;
                v46 = v17;
                v47 = 2048;
                v48 = forcedShortTimeoutDuration;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: %@ sent at %@ (%f ago) has exceeded the forcedShortTimeoutDuration %f and we're enforcing short timeouts!", buf, 0x34u);
              }

              v33 = 1;
            }
          }
        }

LABEL_34:

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v35 objects:v49 count:16];
      if (!v9)
      {
        firedCopy = v32;
        if (v33)
        {
          [(APSOutgoingMessageQueueDelegate *)selfCopy2->_delegate outgoingMessageQueueShortMessageTimeoutExceeded:selfCopy2];
        }

        break;
      }
    }
  }

  [(APSOutgoingMessageQueue *)selfCopy2 _queueChanged];
}

- (BOOL)_outgoingMessageIsLateCriticalMessage:(id)message
{
  messageCopy = message;
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_lastReceivedAckOrReconnect];
  [v5 timeIntervalSinceNow];
  v7 = v6;
  criticalMessageTimeout = self->_criticalMessageTimeout;

  if (([(__CFString *)messageCopy wasCancelled]& 1) != 0 || ([(__CFString *)messageCopy hasTimedOut]& 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if ([(__CFString *)messageCopy isCritical]&& v7 + criticalMessageTimeout < 0.0)
  {
    timestamp = [(__CFString *)messageCopy timestamp];
    [timestamp timeIntervalSinceNow];
    v13 = v12 + self->_criticalMessageTimeout;

    if (v13 >= 0.0)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_4;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = messageCopy;
      v18 = 2112;
      v19 = @"YES";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ isLateCriticalMessage ? %@", &v16, 0x16u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      lastReceivedAckOrReconnect = self->_lastReceivedAckOrReconnect;
      +[NSDate timeIntervalSinceReferenceDate];
      v16 = 138412802;
      v17 = @"YES";
      v18 = 2048;
      v19 = *&lastReceivedAckOrReconnect;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "lastAckIsTooOld: %@  lastReceivedAck: %f now: %f", &v16, 0x20u);
    }

    v9 = 1;
  }

LABEL_4:

  return v9;
}

- (void)_startCriticalMessageFlushTimerSendingFlush
{
  if (!self->_criticalMessageKeepAliveTimer)
  {
    criticalMessageFlushSize = self->_criticalMessageFlushSize;
    v4 = 2 * criticalMessageFlushSize;
    if (criticalMessageFlushSize == 512)
    {
      v4 = 512;
    }

    if (criticalMessageFlushSize)
    {
      v5 = v4;
    }

    else
    {
      v5 = 128;
    }

    self->_criticalMessageFlushSize = v5;
    [(APSOutgoingMessageQueueDelegate *)self->_delegate outgoingMessageQueue:self requestCriticalMessageFlushWithPaddingLength:?];
    v6 = self->_criticalMessageFlushCount + 1;
    self->_criticalMessageFlushCount = v6;
    v10 = v6;
    APSAlert();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      criticalMessageFlushCount = self->_criticalMessageFlushCount;
      *buf = 138412546;
      selfCopy = self;
      v13 = 2048;
      v14 = criticalMessageFlushCount;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _criticalMessageFlushCount is now %lu", buf, 0x16u);
    }

    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_criticalMessageKeepAliveTimerFired" selector:0 userInfo:0 repeats:self->_criticalMessageKeepAliveTimerDuration, v10];
    criticalMessageKeepAliveTimer = self->_criticalMessageKeepAliveTimer;
    self->_criticalMessageKeepAliveTimer = v8;
  }
}

- (void)_criticalMessageKeepAliveTimerFired
{
  [(APSOutgoingMessageQueue *)self _clearCriticalMessageKeepAliveTimer];
  if (self->_criticalMessageFlushCount >= self->_numberOfCriticalMessageFlushesBeforeDisconnecting)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_queue;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([(APSOutgoingMessageQueue *)self _outgoingMessageIsLateCriticalMessage:v8, v10])
          {
            v9 = v8;

            self->_criticalMessageFlushCount = 0;
            self->_criticalMessageFlushSize = 0;
            if (v9)
            {
              [(APSOutgoingMessageQueueDelegate *)self->_delegate outgoingMessageQueue:self lateAcknowledgmentForCriticalOutgoingMessage:v9];
            }

            return;
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    self->_criticalMessageFlushCount = 0;
    self->_criticalMessageFlushSize = 0;
  }

  else
  {

    [(APSOutgoingMessageQueue *)self _startCriticalMessageFlushTimerSendingFlush];
  }
}

- (void)setNumberOfCriticalMessageFlushesBeforeDisconnecting:(id)disconnecting
{
  disconnectingCopy = disconnecting;
  v5 = disconnectingCopy;
  if (disconnectingCopy)
  {
    unsignedIntegerValue = [disconnectingCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    numberOfCriticalMessageFlushesBeforeDisconnecting = self->_numberOfCriticalMessageFlushesBeforeDisconnecting;
    v8 = 138413058;
    selfCopy = self;
    v10 = 2048;
    v11 = numberOfCriticalMessageFlushesBeforeDisconnecting;
    v12 = 2048;
    v13 = unsignedIntegerValue;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setNumberOfCriticalMessageFlushesBeforeDisconnecting: changing from %lu to %lu (got number %@)", &v8, 0x2Au);
  }

  self->_numberOfCriticalMessageFlushesBeforeDisconnecting = unsignedIntegerValue;
}

- (void)setCriticalMessageKeepAliveTimerDuration:(id)duration
{
  durationCopy = duration;
  v5 = durationCopy;
  if (durationCopy)
  {
    [durationCopy doubleValue];
    if (v6 < 2.0)
    {
      v7 = 2.0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 10.0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    criticalMessageKeepAliveTimerDuration = self->_criticalMessageKeepAliveTimerDuration;
    v9 = 138413058;
    selfCopy = self;
    v11 = 2048;
    v12 = criticalMessageKeepAliveTimerDuration;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setCriticalMessageKeepAliveTimerDuration: changing from %f to %f (got number %@)", &v9, 0x2Au);
  }

  self->_criticalMessageKeepAliveTimerDuration = v7;
}

- (void)setCriticalMessageTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v5 = timeoutCopy;
  if (timeoutCopy)
  {
    [timeoutCopy doubleValue];
    if (v6 < 2.0)
    {
      v7 = 2.0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 10.0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    criticalMessageTimeout = self->_criticalMessageTimeout;
    v9 = 138413058;
    selfCopy = self;
    v11 = 2048;
    v12 = criticalMessageTimeout;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setCriticalMessageTimeout: changing from %f to %f (got number %@)", &v9, 0x2Au);
  }

  self->_criticalMessageTimeout = v7;
}

- (void)setForcedShortTimeoutInterval:(id)interval
{
  intervalCopy = interval;
  v5 = intervalCopy;
  if (intervalCopy)
  {
    [intervalCopy doubleValue];
    if (v6 < 2.0)
    {
      v7 = 2.0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 2.0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    forcedShortTimeoutDuration = self->_forcedShortTimeoutDuration;
    v9 = 138413058;
    selfCopy = self;
    v11 = 2048;
    v12 = forcedShortTimeoutDuration;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setForcedShortTimeoutInterval: changing from %f to %f (got number %@)", &v9, 0x2Au);
  }

  self->_forcedShortTimeoutDuration = v7;
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer
{
  printerCopy = printer;
  if ([(NSMutableArray *)self->_queue count]|| self->_numberQueued || self->_numberAcked)
  {
    numberQueued = self->_numberQueued;
    numberAcked = self->_numberAcked;
    v6 = @"Some reverse pushes not acknowledged";
    if (numberAcked == numberQueued)
    {
      v6 = @"Ok";
    }

    if (numberAcked)
    {
      v7 = 1;
    }

    else
    {
      v7 = numberQueued == 0;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"Unable to send reverse pushes";
    }

    [printerCopy appendDescription:@"reverse push send queue status" stringValue:v8];
    [printerCopy pushIndent];
    [printerCopy appendDescription:@"last reverse push queued" timeIntervalValue:self->_lastNotificationQueued];
    v9 = self->_numberQueued;
    if (v9)
    {
      [printerCopy appendDescription:@"send success rate" successRateWithSuccessCount:self->_numberAcked failureCount:v9 - self->_numberAcked];
    }

    if (self->_numberAcked)
    {
      [printerCopy appendDescription:@"last reverse push acknowledged" timeIntervalValue:self->_lastNotificationAcked];
    }

    [printerCopy popIndent];
  }
}

@end
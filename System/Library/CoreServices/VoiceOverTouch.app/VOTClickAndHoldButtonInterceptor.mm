@interface VOTClickAndHoldButtonInterceptor
- (VOTClickAndHoldButtonInterceptor)initWithThreadKey:(id)key;
- (void)_drainQueueAndSendEventsToSystem:(BOOL)system;
- (void)_holdTimerFired;
- (void)_processStateChangeWithEvent:(int64_t)event axEvent:(id)axEvent;
- (void)_releaseTimerFired;
- (void)_resetStateAndSendPendingEventsToSystem:(BOOL)system;
- (void)buttonDownOccurred:(id)occurred;
- (void)buttonUpOccurred:(id)occurred;
- (void)dealloc;
@end

@implementation VOTClickAndHoldButtonInterceptor

- (VOTClickAndHoldButtonInterceptor)initWithThreadKey:(id)key
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = VOTClickAndHoldButtonInterceptor;
  v5 = [(VOTClickAndHoldButtonInterceptor *)&v16 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("VOTClickAndHoldButtonInterceptor", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v5->_state = 0;
    v5->_holdDuration = 1.0;
    v5->_releaseDuration = 0.5;
    v9 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v5 selector:"_holdTimerFired" threadKey:keyCopy];
    holdTimer = v5->_holdTimer;
    v5->_holdTimer = v9;

    v11 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v5 selector:"_releaseTimerFired" threadKey:keyCopy];
    releaseTimer = v5->_releaseTimer;
    v5->_releaseTimer = v11;

    v13 = +[NSMutableArray array];
    eventQueue = v5->_eventQueue;
    v5->_eventQueue = v13;
  }

  return v5;
}

- (void)dealloc
{
  holdTimer = self->_holdTimer;
  if (holdTimer)
  {
    [(SCRCTargetSelectorTimer *)holdTimer invalidate];
    v4 = self->_holdTimer;
    self->_holdTimer = 0;
  }

  releaseTimer = self->_releaseTimer;
  if (releaseTimer)
  {
    [(SCRCTargetSelectorTimer *)releaseTimer invalidate];
    v6 = self->_releaseTimer;
    self->_releaseTimer = 0;
  }

  v7.receiver = self;
  v7.super_class = VOTClickAndHoldButtonInterceptor;
  [(VOTClickAndHoldButtonInterceptor *)&v7 dealloc];
}

- (void)buttonDownOccurred:(id)occurred
{
  occurredCopy = occurred;
  v9.receiver = self;
  v9.super_class = VOTClickAndHoldButtonInterceptor;
  [(VOTButtonInterceptor *)&v9 buttonDownOccurred:occurredCopy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100114CAC;
  v7[3] = &unk_1001C7778;
  v7[4] = self;
  v8 = occurredCopy;
  v6 = occurredCopy;
  dispatch_async(queue, v7);
}

- (void)buttonUpOccurred:(id)occurred
{
  occurredCopy = occurred;
  v9.receiver = self;
  v9.super_class = VOTClickAndHoldButtonInterceptor;
  [(VOTButtonInterceptor *)&v9 buttonUpOccurred:occurredCopy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100114D88;
  v7[3] = &unk_1001C7778;
  v7[4] = self;
  v8 = occurredCopy;
  v6 = occurredCopy;
  dispatch_async(queue, v7);
}

- (void)_processStateChangeWithEvent:(int64_t)event axEvent:(id)axEvent
{
  axEventCopy = axEvent;
  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      if (event != 1)
      {
        if (event != 2)
        {
          goto LABEL_37;
        }

        clickAndHoldHandler = [(VOTClickAndHoldButtonInterceptor *)self clickAndHoldHandler];

        if (clickAndHoldHandler)
        {
          clickAndHoldHandler2 = [(VOTClickAndHoldButtonInterceptor *)self clickAndHoldHandler];
          clickAndHoldHandler2[2]();
        }

        if ([(NSMutableArray *)self->_eventQueue count]!= 3)
        {
          goto LABEL_37;
        }

        [(NSMutableArray *)self->_eventQueue removeObjectsInRange:0, 2];
        [(VOTClickAndHoldButtonInterceptor *)self _drainQueueAndSendEventsToSystem:1];
        v13 = 5;
        goto LABEL_36;
      }
    }

    else
    {
      if (state == 4)
      {
        if (event == 1)
        {
LABEL_40:
          selfCopy3 = self;
          v11 = 0;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (state != 5 || event != 1)
      {
        goto LABEL_37;
      }
    }

    [(NSMutableArray *)self->_eventQueue addObject:axEventCopy];
    selfCopy3 = self;
    v11 = 1;
LABEL_41:
    [(VOTClickAndHoldButtonInterceptor *)selfCopy3 _resetStateAndSendPendingEventsToSystem:v11];
    goto LABEL_42;
  }

  if (!state)
  {
    if (event)
    {
      goto LABEL_37;
    }

    [(NSMutableArray *)self->_eventQueue addObject:axEventCopy];
    [(SCRCTargetSelectorTimer *)self->_holdTimer dispatchAfterDelay:self->_holdDuration];
    v13 = 1;
LABEL_36:
    self->_state = v13;
    goto LABEL_42;
  }

  if (state != 1)
  {
    if (state == 2)
    {
      if (event)
      {
        if (event == 3)
        {
          clickHandler = [(VOTClickAndHoldButtonInterceptor *)self clickHandler];

          if (clickHandler)
          {
            clickHandler2 = [(VOTClickAndHoldButtonInterceptor *)self clickHandler];
            v10 = clickHandler2[2]();

            v11 = v10 ^ 1u;
          }

          else
          {
            v11 = 1;
          }

          selfCopy3 = self;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      [(NSMutableArray *)self->_eventQueue addObject:axEventCopy];
      [(SCRCTargetSelectorTimer *)self->_releaseTimer cancel];
      [(SCRCTargetSelectorTimer *)self->_holdTimer dispatchAfterDelay:self->_holdDuration];
      v13 = 3;
      goto LABEL_36;
    }

LABEL_37:
    v19 = VOTLogEvent();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001315B8(&self->_state, event, v19);
    }

    goto LABEL_40;
  }

  if (event)
  {
    if (event == 1)
    {
      [(NSMutableArray *)self->_eventQueue addObject:axEventCopy];
      [(SCRCTargetSelectorTimer *)self->_holdTimer cancel];
      [(SCRCTargetSelectorTimer *)self->_releaseTimer dispatchAfterDelay:self->_releaseDuration];
      v13 = 2;
    }

    else
    {
      if (event != 2)
      {
        goto LABEL_37;
      }

      holdHandler = [(VOTClickAndHoldButtonInterceptor *)self holdHandler];

      if (holdHandler)
      {
        holdHandler2 = [(VOTClickAndHoldButtonInterceptor *)self holdHandler];
        holdHandler2[2]();
      }

      v13 = 4;
    }

    goto LABEL_36;
  }

LABEL_42:
}

- (void)_resetStateAndSendPendingEventsToSystem:(BOOL)system
{
  systemCopy = system;
  self->_state = 0;
  [(SCRCTargetSelectorTimer *)self->_holdTimer cancel];
  [(SCRCTargetSelectorTimer *)self->_releaseTimer cancel];

  [(VOTClickAndHoldButtonInterceptor *)self _drainQueueAndSendEventsToSystem:systemCopy];
}

- (void)_holdTimerFired
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115170;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_releaseTimerFired
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001151FC;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_drainQueueAndSendEventsToSystem:(BOOL)system
{
  if (system)
  {
    v4 = +[AXEventTapManager sharedManager];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_eventQueue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 sendHIDSystemEvent:*(*(&v10 + 1) + 8 * v9) repostCreatorHIDEvent:1 senderID:{0x8000000817319373, v10}];
          usleep(0x3E8u);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  [(NSMutableArray *)self->_eventQueue removeAllObjects];
}

@end
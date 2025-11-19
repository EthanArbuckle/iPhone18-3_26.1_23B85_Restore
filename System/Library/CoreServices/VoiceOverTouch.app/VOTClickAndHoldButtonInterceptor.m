@interface VOTClickAndHoldButtonInterceptor
- (VOTClickAndHoldButtonInterceptor)initWithThreadKey:(id)a3;
- (void)_drainQueueAndSendEventsToSystem:(BOOL)a3;
- (void)_holdTimerFired;
- (void)_processStateChangeWithEvent:(int64_t)a3 axEvent:(id)a4;
- (void)_releaseTimerFired;
- (void)_resetStateAndSendPendingEventsToSystem:(BOOL)a3;
- (void)buttonDownOccurred:(id)a3;
- (void)buttonUpOccurred:(id)a3;
- (void)dealloc;
@end

@implementation VOTClickAndHoldButtonInterceptor

- (VOTClickAndHoldButtonInterceptor)initWithThreadKey:(id)a3
{
  v4 = a3;
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
    v9 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v5 selector:"_holdTimerFired" threadKey:v4];
    holdTimer = v5->_holdTimer;
    v5->_holdTimer = v9;

    v11 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v5 selector:"_releaseTimerFired" threadKey:v4];
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

- (void)buttonDownOccurred:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VOTClickAndHoldButtonInterceptor;
  [(VOTButtonInterceptor *)&v9 buttonDownOccurred:v4];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100114CAC;
  v7[3] = &unk_1001C7778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)buttonUpOccurred:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VOTClickAndHoldButtonInterceptor;
  [(VOTButtonInterceptor *)&v9 buttonUpOccurred:v4];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100114D88;
  v7[3] = &unk_1001C7778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_processStateChangeWithEvent:(int64_t)a3 axEvent:(id)a4
{
  v6 = a4;
  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_37;
        }

        v15 = [(VOTClickAndHoldButtonInterceptor *)self clickAndHoldHandler];

        if (v15)
        {
          v16 = [(VOTClickAndHoldButtonInterceptor *)self clickAndHoldHandler];
          v16[2]();
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
        if (a3 == 1)
        {
LABEL_40:
          v14 = self;
          v11 = 0;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (state != 5 || a3 != 1)
      {
        goto LABEL_37;
      }
    }

    [(NSMutableArray *)self->_eventQueue addObject:v6];
    v14 = self;
    v11 = 1;
LABEL_41:
    [(VOTClickAndHoldButtonInterceptor *)v14 _resetStateAndSendPendingEventsToSystem:v11];
    goto LABEL_42;
  }

  if (!state)
  {
    if (a3)
    {
      goto LABEL_37;
    }

    [(NSMutableArray *)self->_eventQueue addObject:v6];
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
      if (a3)
      {
        if (a3 == 3)
        {
          v8 = [(VOTClickAndHoldButtonInterceptor *)self clickHandler];

          if (v8)
          {
            v9 = [(VOTClickAndHoldButtonInterceptor *)self clickHandler];
            v10 = v9[2]();

            v11 = v10 ^ 1u;
          }

          else
          {
            v11 = 1;
          }

          v14 = self;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      [(NSMutableArray *)self->_eventQueue addObject:v6];
      [(SCRCTargetSelectorTimer *)self->_releaseTimer cancel];
      [(SCRCTargetSelectorTimer *)self->_holdTimer dispatchAfterDelay:self->_holdDuration];
      v13 = 3;
      goto LABEL_36;
    }

LABEL_37:
    v19 = VOTLogEvent();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001315B8(&self->_state, a3, v19);
    }

    goto LABEL_40;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      [(NSMutableArray *)self->_eventQueue addObject:v6];
      [(SCRCTargetSelectorTimer *)self->_holdTimer cancel];
      [(SCRCTargetSelectorTimer *)self->_releaseTimer dispatchAfterDelay:self->_releaseDuration];
      v13 = 2;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_37;
      }

      v17 = [(VOTClickAndHoldButtonInterceptor *)self holdHandler];

      if (v17)
      {
        v18 = [(VOTClickAndHoldButtonInterceptor *)self holdHandler];
        v18[2]();
      }

      v13 = 4;
    }

    goto LABEL_36;
  }

LABEL_42:
}

- (void)_resetStateAndSendPendingEventsToSystem:(BOOL)a3
{
  v3 = a3;
  self->_state = 0;
  [(SCRCTargetSelectorTimer *)self->_holdTimer cancel];
  [(SCRCTargetSelectorTimer *)self->_releaseTimer cancel];

  [(VOTClickAndHoldButtonInterceptor *)self _drainQueueAndSendEventsToSystem:v3];
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

- (void)_drainQueueAndSendEventsToSystem:(BOOL)a3
{
  if (a3)
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
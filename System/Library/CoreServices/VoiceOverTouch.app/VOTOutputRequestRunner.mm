@interface VOTOutputRequestRunner
- (VOTOutputRequestRunner)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_handleNotifications:(id)notifications;
- (void)_handleProcessActions:(id)actions;
- (void)_initializeThread;
- (void)_performAction:(id)action withComponent:(id)component;
- (void)_processActions;
- (void)dealloc;
- (void)handleEvent:(id)event;
- (void)resume;
- (void)runOutputRequest:(id)request;
- (void)sendNotification:(unsigned int)notification;
@end

@implementation VOTOutputRequestRunner

- (VOTOutputRequestRunner)init
{
  v7.receiver = self;
  v7.super_class = VOTOutputRequestRunner;
  v2 = [(VOTOutputRequestRunner *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCRCThread);
    runnerThread = v2->_runnerThread;
    v2->_runnerThread = v3;

    [(SCRCThread *)v2->_runnerThread performSelector:"_initializeThread" onTarget:v2 count:0 objects:0];
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(SCRCThread *)self->_runnerThread setIsInvalid:1];
  [(SCRCThread *)self->_runnerThread setIsInvalid:1];
  v3.receiver = self;
  v3.super_class = VOTOutputRequestRunner;
  [(VOTOutputRequestRunner *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v4[3] = self->_currentActionIndex;
  v5 = [(NSArray *)self->_currentActions copy];
  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  *(v4 + 24) = self->_didProcessNoSyncActions;
  *(v4 + 2) = self->_currentRange;
  return v4;
}

- (void)_initializeThread
{
  AXSetThreadPriority();
  v4 = +[NSThread currentThread];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 setName:v3];
}

- (void)runOutputRequest:(id)request
{
  requestCopy = request;
  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:4];
  v5 = [objc_allocWithZone(AXIndexMap) init];
  [v5 setObject:v6 forIndex:1];
  [v5 setObject:requestCopy forIndex:14];

  [(SCRCThread *)self->_runnerThread performSelector:"handleEvent:" onTarget:self cancelMask:0xFFFFFFFFLL count:1 objects:v5];
}

- (void)sendNotification:(unsigned int)notification
{
  v3 = *&notification;
  v7 = [objc_allocWithZone(AXIndexMap) init];
  v5 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v3];
  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:5];
  [v7 setObject:v5 forIndex:10];
  [v7 setObject:v6 forIndex:1];
  [(SCRCThread *)self->_runnerThread performSelector:"handleEvent:" onTarget:self count:1 objects:v7];
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  if (![(VOTOutputRequestRunner *)self onHold])
  {
    v4 = [eventCopy objectForIndex:1];
    unsignedIntValue = [v4 unsignedIntValue];

    if (unsignedIntValue == 5)
    {
      [(VOTOutputRequestRunner *)self _handleNotifications:eventCopy];
    }

    else if (unsignedIntValue == 4)
    {
      [(VOTOutputRequestRunner *)self _handleProcessActions:eventCopy];
    }
  }

  _objc_release_x1();
}

- (void)resume
{
  [(VOTOutputRequestRunner *)self setOnHold:0];
  v6 = [(NSArray *)self->_currentActions objectAtIndex:self->_currentActionIndex];
  originalString = [v6 originalString];
  location = self->_currentRange.location;
  if (location < [originalString length])
  {
    v5 = [originalString substringFromIndex:self->_currentRange.location];
    [v6 setString:v5];
  }

  [v6 setHasBeenDispatched:0];
  [(VOTOutputRequestRunner *)self _processActions];
}

- (void)_handleNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if (self->_currentActions)
  {
    v19 = notificationsCopy;
    v5 = [notificationsCopy objectForIndex:10];
    unsignedIntValue = [v5 unsignedIntValue];

    if (unsignedIntValue == 22)
    {
      v7 = [v19 objectForIndex:14];
      self->_currentRange.location = [v7 rangeValue];
      self->_currentRange.length = v11;
    }

    else
    {
      notificationsCopy = v19;
      if (unsignedIntValue == 21)
      {
        currentActions = self->_currentActions;
        self->_currentActions = 0;

        [(VOTOutputRequest *)self->_currentRequest setFinishedSuccessfully:0];
        v7 = +[VOTOutputManager outputManager];
        [v7 finishedOutputRequest:self->_currentRequest];
      }

      else
      {
        if (unsignedIntValue != 19)
        {
          goto LABEL_17;
        }

        v7 = [v19 objectForIndex:14];
        outputRequest = [v7 outputRequest];
        if ([(NSArray *)self->_currentActions indexOfObject:v7]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [outputRequest setFinishedSuccessfully:0];
          v9 = +[VOTOutputManager outputManager];
          [v9 finishedOutputRequest:outputRequest];
        }

        else
        {
          v12 = [v19 objectForIndex:20];
          bOOLValue = [v12 BOOLValue];

          v14 = self->_currentActions;
          if (bOOLValue)
          {
            v15 = [(NSArray *)v14 objectAtIndex:self->_currentActionIndex];

            if (v15 == v7)
            {
              actionCompletionBlock = [outputRequest actionCompletionBlock];

              if (actionCompletionBlock)
              {
                actionCompletionBlock2 = [outputRequest actionCompletionBlock];
                (actionCompletionBlock2)[2](actionCompletionBlock2, outputRequest, v7);
              }

              [(VOTOutputRequestRunner *)self _processActions];
            }
          }

          else
          {
            self->_currentActions = 0;

            self->_isActive = 0;
            [(VOTOutputRequest *)self->_currentRequest setFinishedSuccessfully:0];
            v18 = +[VOTOutputManager outputManager];
            [v18 finishedOutputRequest:self->_currentRequest];
          }
        }
      }
    }

    notificationsCopy = v19;
  }

LABEL_17:
}

- (void)_handleProcessActions:(id)actions
{
  v4 = [actions objectForIndex:14];
  outputActions = [(VOTOutputRequest *)v4 outputActions];
  self->_didProcessNoSyncActions = 0;
  self->_currentActionIndex = 0;
  currentActions = self->_currentActions;
  self->_currentActions = outputActions;
  v7 = outputActions;

  currentRequest = self->_currentRequest;
  self->_currentRequest = v4;

  [(VOTOutputRequestRunner *)self _processActions];
}

- (void)_performAction:(id)action withComponent:(id)component
{
  actionCopy = action;
  componentCopy = component;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  outputEvents = [actionCopy outputEvents];
  v9 = [outputEvents countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(outputEvents);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = +[VOTOutputManager outputManager];
        [v14 sendEvent:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [outputEvents countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [actionCopy setHasBeenDispatched:1];
  [componentCopy performAction:actionCopy owner:self];
}

- (void)_processActions
{
  v3 = [(NSArray *)self->_currentActions count];
  v4 = v3;
  if (!self->_didProcessNoSyncActions)
  {
    v27 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_currentActions;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          if ([v10 hasBeenDispatched] & 1) == 0 && (objc_msgSend(v10, "synchronization"))
          {
            v11 = +[VOTOutputManager outputManager];
            v12 = [v11 componentForType:{objc_msgSend(v10, "component")}];

            if (v12)
            {
              v13 = +[NSNull null];
              v14 = [v12 isEqual:v13];

              if ((v14 & 1) == 0)
              {
                [(VOTOutputRequestRunner *)self _performAction:v10 withComponent:v12];
              }
            }
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }

    self->_didProcessNoSyncActions = 1;
    v4 = v27;
  }

  if (v4 > self->_currentActionIndex)
  {
    v15 = 0;
    while (1)
    {
      v16 = [(NSArray *)self->_currentActions objectAtIndex:?];
      v17 = [v16 objectForVariant:61];
      bOOLValue = [v17 BOOLValue];

      if (([v16 hasBeenDispatched] & 1) == 0)
      {
        v19 = +[VOTOutputManager outputManager];
        v20 = [v19 componentForType:{objc_msgSend(v16, "component")}];

        if (v20)
        {
          v21 = +[NSNull null];
          v22 = [v20 isEqual:v21];

          if ((v22 & 1) == 0)
          {
            [(VOTOutputRequestRunner *)self _performAction:v16 withComponent:v20];
            if (([v16 synchronization] & 2) != 0)
            {

              return;
            }
          }
        }
      }

      v15 |= bOOLValue;
      ++self->_currentActionIndex;

      if (v4 <= self->_currentActionIndex)
      {
        goto LABEL_26;
      }
    }
  }

  v15 = 0;
LABEL_26:
  currentActions = self->_currentActions;
  self->_currentActions = 0;

  self->_isActive = 0;
  self->_didProcessNoSyncActions = 0;
  [(VOTOutputRequest *)self->_currentRequest setFinishedSuccessfully:1];
  v24 = +[VOTOutputManager outputManager];
  [v24 finishedOutputRequest:self->_currentRequest];

  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;

  if (v15)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXDidFinishSpeakingAssistantNotification, 0, 0, 1u);
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = VOTOutputRequestRunner;
  v3 = [(VOTOutputRequestRunner *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ - %@", v3, self->_currentRequest];

  return v4;
}

@end
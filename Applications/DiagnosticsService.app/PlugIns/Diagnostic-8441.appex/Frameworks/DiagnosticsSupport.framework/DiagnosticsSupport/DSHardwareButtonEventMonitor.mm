@interface DSHardwareButtonEventMonitor
- (BOOL)_triggerHandlers:(id)handlers event:(unint64_t)event;
- (BOOL)hasTarget:(id)target;
- (DSHardwareButtonEventMonitor)init;
- (id)_handlersForEvent:(unint64_t)event;
- (id)_handlersForTarget:(id)target;
- (void)addTarget:(id)target action:(SEL)action forButtonEvents:(unint64_t)events propagate:(BOOL)propagate;
- (void)removeTarget:(id)target;
- (void)removeTarget:(id)target action:(SEL)action forButtonEvents:(unint64_t)events propagate:(BOOL)propagate;
- (void)startWithPriority:(int64_t)priority completion:(id)completion;
- (void)stopWithCompletion:(id)completion;
@end

@implementation DSHardwareButtonEventMonitor

- (DSHardwareButtonEventMonitor)init
{
  if ([DSEntitlementUtilities currentProcessHasEntitlement:@"com.apple.DiagnosticsSupport.HardwareButtonAccess"])
  {
    v17.receiver = self;
    v17.super_class = DSHardwareButtonEventMonitor;
    v3 = [(DSHardwareButtonEventMonitor *)&v17 init];
    v4 = v3;
    if (v3)
    {
      v3->_allowEvents = 1;
      v5 = +[NSMutableSet set];
      buttonEventHandlers = v4->_buttonEventHandlers;
      v4->_buttonEventHandlers = v5;

      v7 = objc_alloc_init(NSLock);
      eventHandlerChangeLock = v4->_eventHandlerChangeLock;
      v4->_eventHandlerChangeLock = v7;

      v9 = +[DSTestAutomation sharedInstance];
      testAutomation = v4->_testAutomation;
      v4->_testAutomation = v9;

      v11 = dispatch_queue_create("com.apple.DiagnosticsSupport.buttonEventMonitor.targetQueue", 0);
      targetQueue = v4->_targetQueue;
      v4->_targetQueue = v11;

      v13 = dispatch_queue_create("com.apple.DiagnosticsSupport.buttonEventMonitor.systemClientCreationQueue", 0);
      systemClientCreationQueue = v4->_systemClientCreationQueue;
      v4->_systemClientCreationQueue = v13;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)startWithPriority:(int64_t)priority completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  systemClientCreationQueue = [(DSHardwareButtonEventMonitor *)self systemClientCreationQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __61__DSHardwareButtonEventMonitor_startWithPriority_completion___block_invoke;
  v9[3] = &unk_182D0;
  objc_copyWeak(v11, &location);
  v11[1] = priority;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(systemClientCreationQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __61__DSHardwareButtonEventMonitor_startWithPriority_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && !WeakRetained[1])
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.DiagnosticsSupport.buttonEventMonitor.buttonEventQueue", v4);
    v6 = v3[6];
    v3[6] = v5;

    v3[1] = IOHIDEventSystemClientCreateWithType();
    v19[0] = @"PrimaryUsagePage";
    v19[1] = @"PrimaryUsage";
    v20[0] = &off_1EE00;
    v20[1] = &off_1EE18;
    v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17[0] = @"PrimaryUsagePage";
    v17[1] = @"PrimaryUsage";
    v18[0] = &off_1EE30;
    v18[1] = &off_1EE48;
    v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v9 = v3[1];
    v16[0] = v7;
    v16[1] = v8;
    v10 = [NSArray arrayWithObjects:v16 count:2];
    IOHIDEventSystemClientSetMatchingMultiple();

    v11 = v3[1];
    v12 = v3[6];
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    v13 = v3[1];
    v14 = *(a1 + 48);
    IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))();
  }
}

- (void)stopWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  systemClientCreationQueue = [(DSHardwareButtonEventMonitor *)self systemClientCreationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke;
  block[3] = &unk_18320;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(systemClientCreationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[6];
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke_2;
      block[3] = &unk_182F8;
      objc_copyWeak(&v7, (a1 + 40));
      dispatch_sync(v4, block);
      objc_destroyWeak(&v7);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __51__DSHardwareButtonEventMonitor_stopWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1])
  {
    v2 = WeakRetained[6];
    v5 = WeakRetained;
    IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    v3 = v5[1];
    IOHIDEventSystemClientUnregisterEventFilterCallback();
    CFRelease(v5[1]);
    v5[1] = 0;
  }

  return _objc_release_x2();
}

- (void)addTarget:(id)target action:(SEL)action forButtonEvents:(unint64_t)events propagate:(BOOL)propagate
{
  targetCopy = target;
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__DSHardwareButtonEventMonitor_addTarget_action_forButtonEvents_propagate___block_invoke;
  block[3] = &unk_18348;
  propagateCopy = propagate;
  actionCopy = action;
  eventsCopy = events;
  v14 = targetCopy;
  selfCopy = self;
  v12 = targetCopy;
  dispatch_async(v11, block);
}

void __75__DSHardwareButtonEventMonitor_addTarget_action_forButtonEvents_propagate___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(DSHardwareButtonEventHandler);
  [(DSHardwareButtonEventHandler *)v5 setTarget:*(a1 + 32)];
  [(DSHardwareButtonEventHandler *)v5 setAction:*(a1 + 48)];
  [(DSHardwareButtonEventHandler *)v5 setPreventPropagation:(*(a1 + 64) & 1) == 0];
  [(DSHardwareButtonEventHandler *)v5 setEvents:*(a1 + 56)];
  v2 = [*(a1 + 40) eventHandlerChangeLock];
  [v2 lock];

  v3 = [*(a1 + 40) buttonEventHandlers];
  [v3 addObject:v5];

  v4 = [*(a1 + 40) eventHandlerChangeLock];
  [v4 unlock];
}

- (void)removeTarget:(id)target
{
  targetCopy = target;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__DSHardwareButtonEventMonitor_removeTarget___block_invoke;
  v7[3] = &unk_18370;
  v7[4] = self;
  v8 = targetCopy;
  v6 = targetCopy;
  dispatch_async(v5, v7);
}

void __45__DSHardwareButtonEventMonitor_removeTarget___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _handlersForTarget:*(a1 + 40)];
  v2 = [*(a1 + 32) eventHandlerChangeLock];
  [v2 lock];

  v3 = [*(a1 + 32) buttonEventHandlers];
  [v3 minusSet:v5];

  v4 = [*(a1 + 32) eventHandlerChangeLock];
  [v4 unlock];
}

- (void)removeTarget:(id)target action:(SEL)action forButtonEvents:(unint64_t)events propagate:(BOOL)propagate
{
  targetCopy = target;
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__DSHardwareButtonEventMonitor_removeTarget_action_forButtonEvents_propagate___block_invoke;
  block[3] = &unk_18348;
  propagateCopy = propagate;
  actionCopy = action;
  eventsCopy = events;
  v14 = targetCopy;
  selfCopy = self;
  v12 = targetCopy;
  dispatch_async(v11, block);
}

void __78__DSHardwareButtonEventMonitor_removeTarget_action_forButtonEvents_propagate___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(DSHardwareButtonEventHandler);
  [(DSHardwareButtonEventHandler *)v5 setTarget:*(a1 + 32)];
  [(DSHardwareButtonEventHandler *)v5 setAction:*(a1 + 48)];
  [(DSHardwareButtonEventHandler *)v5 setPreventPropagation:(*(a1 + 64) & 1) == 0];
  [(DSHardwareButtonEventHandler *)v5 setEvents:*(a1 + 56)];
  v2 = [*(a1 + 40) eventHandlerChangeLock];
  [v2 lock];

  v3 = [*(a1 + 40) buttonEventHandlers];
  [v3 removeObject:v5];

  v4 = [*(a1 + 40) eventHandlerChangeLock];
  [v4 unlock];
}

- (BOOL)hasTarget:(id)target
{
  v3 = [(DSHardwareButtonEventMonitor *)self _handlersForTarget:target];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_handlersForTarget:(id)target
{
  targetCopy = target;
  v5 = +[NSMutableSet set];
  eventHandlerChangeLock = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [eventHandlerChangeLock lock];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  buttonEventHandlers = [(DSHardwareButtonEventMonitor *)self buttonEventHandlers];
  v8 = [buttonEventHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(buttonEventHandlers);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        target = [v12 target];

        if (target == targetCopy)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [buttonEventHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  eventHandlerChangeLock2 = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [eventHandlerChangeLock2 unlock];

  return v5;
}

- (id)_handlersForEvent:(unint64_t)event
{
  v5 = +[NSMutableSet set];
  eventHandlerChangeLock = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [eventHandlerChangeLock lock];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  buttonEventHandlers = [(DSHardwareButtonEventMonitor *)self buttonEventHandlers];
  v8 = [buttonEventHandlers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(buttonEventHandlers);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 events] & event) != 0)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [buttonEventHandlers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  eventHandlerChangeLock2 = [(DSHardwareButtonEventMonitor *)self eventHandlerChangeLock];
  [eventHandlerChangeLock2 unlock];

  return v5;
}

- (BOOL)_triggerHandlers:(id)handlers event:(unint64_t)event
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = handlers;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    preventPropagation = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        targetQueue = [(DSHardwareButtonEventMonitor *)self targetQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __55__DSHardwareButtonEventMonitor__triggerHandlers_event___block_invoke;
        block[3] = &unk_18398;
        block[4] = v11;
        block[5] = event;
        dispatch_async(targetQueue, block);

        if (preventPropagation)
        {
          preventPropagation = 1;
        }

        else
        {
          preventPropagation = [v11 preventPropagation];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    preventPropagation = 0;
  }

  return preventPropagation;
}

void __55__DSHardwareButtonEventMonitor__triggerHandlers_event___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) target];
  v3 = [v2 methodForSelector:{objc_msgSend(*(a1 + 32), "action")}];

  v4 = [*(a1 + 32) target];
  v3(v4, [*(a1 + 32) action], *(a1 + 40));
}

@end
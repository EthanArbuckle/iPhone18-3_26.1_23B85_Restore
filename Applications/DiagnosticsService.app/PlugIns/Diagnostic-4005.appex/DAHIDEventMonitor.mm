@interface DAHIDEventMonitor
+ (id)sharedInstance;
- (BOOL)findServiceClientForHIDEvent:(id)event;
- (BOOL)serviceClientSetPropertyValue:(void *)value forKey:(__CFString *)key forHIDEvent:(unint64_t)event;
- (BOOL)startMonitoringWithHIDEvents:(id)events;
- (BOOL)systemClientSetupWithHIDEvents:(id)events;
- (DAHIDEventMonitor)init;
- (DAHIDEventMonitorDelegate)delegate;
- (void)cleanUpSystemClient;
- (void)stopMonitoring;
@end

@implementation DAHIDEventMonitor

- (DAHIDEventMonitor)init
{
  v22.receiver = self;
  v22.super_class = DAHIDEventMonitor;
  v2 = [(DAHIDEventMonitor *)&v22 init];
  if (v2)
  {
    v3 = [NSMutableArray arrayWithCapacity:8];
    HIDEvents = v2->_HIDEvents;
    v2->_HIDEvents = v3;

    v37[0] = @"usagePage";
    v37[1] = @"usage";
    v38[0] = &off_1000043C8;
    v38[1] = &off_1000043E0;
    v37[2] = @"needServiceClient";
    v38[2] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
    v6 = [v5 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v6 atIndexedSubscript:0];

    v35[0] = @"usagePage";
    v35[1] = @"usage";
    v36[0] = &off_1000043C8;
    v36[1] = &off_1000043F8;
    v35[2] = @"needServiceClient";
    v36[2] = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    v8 = [v7 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v8 atIndexedSubscript:1];

    v33[0] = @"usagePage";
    v33[1] = @"usage";
    v34[0] = &off_100004410;
    v34[1] = &off_100004428;
    v33[2] = @"needServiceClient";
    v34[2] = &__kCFBooleanFalse;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v10 = [v9 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v10 atIndexedSubscript:2];

    v31[0] = @"usagePage";
    v31[1] = @"usage";
    v32[0] = &off_100004440;
    v32[1] = &off_100004458;
    v31[2] = @"needServiceClient";
    v32[2] = &__kCFBooleanFalse;
    v11 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
    v12 = [v11 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v12 atIndexedSubscript:3];

    v29[0] = @"usagePage";
    v29[1] = @"usage";
    v30[0] = &off_1000043C8;
    v30[1] = &off_100004470;
    v29[2] = @"needServiceClient";
    v30[2] = &__kCFBooleanTrue;
    v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    v14 = [v13 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v14 atIndexedSubscript:4];

    v27[0] = @"usagePage";
    v27[1] = @"usage";
    v28[0] = &off_100004488;
    v28[1] = &off_1000044A0;
    v27[2] = @"needServiceClient";
    v28[2] = &__kCFBooleanTrue;
    v15 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
    v16 = [v15 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v16 atIndexedSubscript:5];

    v25[0] = @"usagePage";
    v25[1] = @"usage";
    v26[0] = &off_1000043C8;
    v26[1] = &off_100004428;
    v25[2] = @"needServiceClient";
    v26[2] = &__kCFBooleanTrue;
    v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v18 = [v17 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v18 atIndexedSubscript:6];

    v23[0] = @"usagePage";
    v23[1] = @"usage";
    v24[0] = &off_1000043C8;
    v24[1] = &off_1000044B8;
    v23[2] = @"needServiceClient";
    v24[2] = &__kCFBooleanFalse;
    v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
    v20 = [v19 mutableCopy];
    [(NSMutableArray *)v2->_HIDEvents setObject:v20 atIndexedSubscript:7];

    v2->_currentlyMonitoring = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000087A0 != -1)
  {
    sub_100002488();
  }

  v3 = qword_100008798;

  return v3;
}

- (BOOL)systemClientSetupWithHIDEvents:(id)events
{
  eventsCopy = events;
  if ([(DAHIDEventMonitor *)self HIDSystemClient])
  {
    v5 = +[NSMutableArray array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = eventsCopy;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = eventsCopy;
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          hIDEvents = [(DAHIDEventMonitor *)self HIDEvents];
          v14 = [hIDEvents count];

          if (unsignedIntegerValue >= v14)
          {
            v21 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10000249C();
            }

            eventsCopy = v23;
            goto LABEL_14;
          }

          hIDEvents2 = [(DAHIDEventMonitor *)self HIDEvents];
          v16 = [hIDEvents2 objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];

          v28[0] = @"PrimaryUsagePage";
          v17 = [v16 objectForKeyedSubscript:@"usagePage"];
          v28[1] = @"PrimaryUsage";
          v29[0] = v17;
          v18 = [v16 objectForKeyedSubscript:@"usage"];
          v29[1] = v18;
          v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
          [v5 addObject:v19];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      [(DAHIDEventMonitor *)self HIDSystemClient];
      IOHIDEventSystemClientSetMatchingMultiple();
      v20 = 1;
      eventsCopy = v23;
    }

    else
    {
LABEL_14:

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)findServiceClientForHIDEvent:(id)event
{
  eventCopy = event;
  v5 = IOHIDEventSystemClientCopyServices([(DAHIDEventMonitor *)self HIDSystemClient]);
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) < 1)
    {
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
      v18 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        v9 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"PrimaryUsage");
        hIDEvents = [(DAHIDEventMonitor *)self HIDEvents];
        v11 = [hIDEvents objectAtIndexedSubscript:{objc_msgSend(eventCopy, "unsignedIntegerValue")}];

        v12 = [v11 objectForKeyedSubscript:@"usage"];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        if (v9 && [v9 unsignedIntegerValue] == unsignedIntegerValue)
        {
          v14 = [NSValue valueWithPointer:ValueAtIndex];
          [v11 setObject:v14 forKeyedSubscript:@"HIDServiceClient"];

          v18 = 1;
        }

        ++v7;
      }

      while (CFArrayGetCount(v6) > v7);
      CFRelease(v6);
      if (v18)
      {
        v15 = 1;
        goto LABEL_14;
      }
    }
  }

  v16 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000024D0();
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (BOOL)serviceClientSetPropertyValue:(void *)value forKey:(__CFString *)key forHIDEvent:(unint64_t)event
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  mHIDEventQueue = [(DAHIDEventMonitor *)self mHIDEventQueue];

  if (mHIDEventQueue)
  {
    mHIDEventQueue2 = [(DAHIDEventMonitor *)self mHIDEventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000177C;
    block[3] = &unk_100004270;
    block[4] = self;
    block[5] = &v14;
    block[6] = event;
    block[7] = key;
    block[8] = value;
    dispatch_sync(mHIDEventQueue2, block);
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (BOOL)startMonitoringWithHIDEvents:(id)events
{
  eventsCopy = events;
  [(DAHIDEventMonitor *)self setHIDSystemClient:IOHIDEventSystemClientCreateWithType()];
  if (![(DAHIDEventMonitor *)self HIDSystemClient])
  {
    v17 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000025EC();
    }

    CFRelease([(DAHIDEventMonitor *)self HIDSystemClient]);
    goto LABEL_25;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentlyMonitoring = [(DAHIDEventMonitor *)selfCopy currentlyMonitoring];
  objc_sync_exit(selfCopy);

  if (currentlyMonitoring)
  {
LABEL_25:
    v18 = 0;
    goto LABEL_35;
  }

  v25 = eventsCopy;
  if (![(DAHIDEventMonitor *)selfCopy systemClientSetupWithHIDEvents:eventsCopy])
  {
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100002538();
    }

    goto LABEL_29;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v8)
  {

    goto LABEL_33;
  }

  v9 = *v30;
  v26 = 1;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      hIDEvents = [(DAHIDEventMonitor *)selfCopy HIDEvents];
      v13 = [hIDEvents objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];

      v14 = [v13 objectForKeyedSubscript:@"needServiceClient"];
      if ([v14 BOOLValue])
      {
        v15 = [v13 objectForKeyedSubscript:@"HIDServiceClient"];
        v16 = v15 == 0;

        if (!v16)
        {
          goto LABEL_18;
        }

        if ((v26 & 1) != 0 && [(DAHIDEventMonitor *)selfCopy findServiceClientForHIDEvent:v11])
        {
          v26 = 1;
          goto LABEL_18;
        }

        v14 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10000256C(&buf, v28, v14);
        }

        v26 = 0;
      }

LABEL_18:
    }

    v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v8);

  if (v26)
  {
LABEL_33:
    v21 = dispatch_queue_create("com.apple.Diagnostics.hideventmonitor", 0);
    [(DAHIDEventMonitor *)selfCopy setMHIDEventQueue:v21];

    [(DAHIDEventMonitor *)selfCopy HIDSystemClient];
    mHIDEventQueue = [(DAHIDEventMonitor *)selfCopy mHIDEventQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    [(DAHIDEventMonitor *)selfCopy HIDSystemClient];
    IOHIDEventSystemClientRegisterEventFilterCallback();
    v23 = selfCopy;
    objc_sync_enter(v23);
    [(DAHIDEventMonitor *)v23 setCurrentlyMonitoring:1];
    objc_sync_exit(v23);

    v18 = 1;
    goto LABEL_34;
  }

LABEL_29:
  v20 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000025AC();
  }

  [(DAHIDEventMonitor *)selfCopy cleanUpSystemClient];
  v18 = 0;
LABEL_34:
  eventsCopy = v25;
LABEL_35:

  return v18;
}

- (void)stopMonitoring
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DAHIDEventMonitor *)selfCopy setCurrentlyMonitoring:0];
  objc_sync_exit(selfCopy);

  mHIDEventQueue = [(DAHIDEventMonitor *)selfCopy mHIDEventQueue];

  if (mHIDEventQueue)
  {
    mHIDEventQueue2 = [(DAHIDEventMonitor *)selfCopy mHIDEventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001E0C;
    block[3] = &unk_100004298;
    block[4] = selfCopy;
    dispatch_sync(mHIDEventQueue2, block);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  hIDEvents = [(DAHIDEventMonitor *)selfCopy HIDEvents];
  v6 = [hIDEvents countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(hIDEvents);
        }

        [*(*(&v9 + 1) + 8 * v8) removeObjectForKey:@"HIDServiceClient"];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [hIDEvents countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)cleanUpSystemClient
{
  hIDSystemClient = [(DAHIDEventMonitor *)self HIDSystemClient];
  if (hIDSystemClient)
  {
    v4 = hIDSystemClient;
    mHIDEventQueue = [(DAHIDEventMonitor *)self mHIDEventQueue];

    if (mHIDEventQueue)
    {
      mHIDEventQueue2 = [(DAHIDEventMonitor *)self mHIDEventQueue];
      IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    }

    IOHIDEventSystemClientUnregisterEventFilterCallback();
    CFRelease(v4);

    [(DAHIDEventMonitor *)self setHIDSystemClient:0];
  }
}

- (DAHIDEventMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
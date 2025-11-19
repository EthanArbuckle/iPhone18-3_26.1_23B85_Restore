@interface AXNotificationObserver
- (AXNotificationObserver)initWithNotifications:(id)a3 registrationQueue:(id)a4;
- (AXNotificationObserverDelegate)delegate;
- (void)_didObserveNotification:(int)a3 notificationData:(void *)a4;
- (void)_registerForAXNotifications:(BOOL)a3;
- (void)dealloc;
@end

@implementation AXNotificationObserver

- (AXNotificationObserver)initWithNotifications:(id)a3 registrationQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AXNotificationObserver;
  v8 = [(AXNotificationObserver *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  if (_AXSApplicationAccessibilityEnabled() || _AXSAccessibilityNeedsMiniServer())
  {
    [(AXNotificationObserver *)v8 setNotifications:v6];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__AXNotificationObserver_initWithNotifications_registrationQueue___block_invoke;
    v12[3] = &unk_1E80D3DA8;
    v13 = v8;
    v14 = v6;
    dispatch_async(v7, v12);

LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v11 = AXLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [AXNotificationObserver initWithNotifications:v11 registrationQueue:?];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

void __66__AXNotificationObserver_initWithNotifications_registrationQueue___block_invoke(uint64_t a1)
{
  v2 = +[AXElement systemWideElement];
  v3 = AXObserverCreateWithPidObserver([v2 pid], _accessibilityNotificationCallback, (*(a1 + 32) + 8), *(a1 + 32));

  if (v3)
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AXNotificationObserver_initWithNotifications_registrationQueue___block_invoke_cold_1(v3, v4);
    }

LABEL_4:

    return;
  }

  RunLoopSource = AXObserverGetRunLoopSource(*(*(a1 + 32) + 8));
  if (!RunLoopSource)
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AXNotificationObserver_initWithNotifications_registrationQueue___block_invoke_cold_2(v4);
    }

    goto LABEL_4;
  }

  v6 = RunLoopSource;
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v6, *MEMORY[0x1E695E8E0]);
  v8 = *(a1 + 32);

  [v8 _registerForAXNotifications:1];
}

- (void)_registerForAXNotifications:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(AXNotificationObserver *)self notifications];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *v20;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [*(*(&v19 + 1) + 8 * i) intValue];
      observer = self->_observer;
      v11 = +[AXElement systemWideElement];
      v12 = [v11 uiElement];
      v13 = [v12 axElement];
      if (v3)
      {
        v14 = AXObserverAddNotification(observer, v13, v9, self);

        if (v14)
        {
          v16 = AXLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [AXNotificationObserver _registerForAXNotifications:];
          }

LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v15 = AXObserverRemoveNotification(observer, v13, v9);

        if (v15)
        {
          v16 = AXLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [AXNotificationObserver _registerForAXNotifications:];
          }

          goto LABEL_17;
        }
      }
    }

    v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_18:
}

- (void)_didObserveNotification:(int)a3 notificationData:(void *)a4
{
  v5 = *&a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [AXNotificationObserver _didObserveNotification:a2 notificationData:self];
  }

  v8 = [(AXNotificationObserver *)self notifications];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = [(AXNotificationObserver *)self delegate];
    [v11 observer:self didObserveNotification:v5 notificationData:a4];
  }
}

- (void)dealloc
{
  if (self->_observer)
  {
    [(AXNotificationObserver *)self _registerForAXNotifications:0];
    CFRelease(self->_observer);
  }

  v3.receiver = self;
  v3.super_class = AXNotificationObserver;
  [(AXNotificationObserver *)&v3 dealloc];
}

- (AXNotificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __66__AXNotificationObserver_initWithNotifications_registrationQueue___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Error creating AXObserver: %ld", &v2, 0xCu);
}

- (void)_didObserveNotification:(uint64_t)a1 notificationData:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AXNotificationObserver.m" lineNumber:100 description:@"Expected notification callback on the main thread"];
}

@end
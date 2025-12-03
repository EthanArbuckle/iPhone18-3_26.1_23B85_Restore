@interface PFCloudKitThrottledNotificationObserver
- (PFCloudKitThrottledNotificationObserver)initWithLabel:(id)label handlerBlock:(id)block;
- (void)dealloc;
- (void)noteRecievedNotification:(uint64_t)notification;
@end

@implementation PFCloudKitThrottledNotificationObserver

- (void)dealloc
{
  self->_notificationHandlerBlock = 0;

  self->_assertionLabel = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitThrottledNotificationObserver;
  [(PFCloudKitThrottledNotificationObserver *)&v3 dealloc];
}

- (PFCloudKitThrottledNotificationObserver)initWithLabel:(id)label handlerBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = PFCloudKitThrottledNotificationObserver;
  v6 = [(PFCloudKitThrottledNotificationObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_notificationStalenessInterval = 10;
    atomic_store(0, &v6->_notificationIteration);
    v6->_label = label;
    v7->_assertionLabel = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CoreData: %@", v7->_label];
    v7->_notificationHandlerBlock = [block copy];
  }

  return v7;
}

- (void)noteRecievedNotification:(uint64_t)notification
{
  v32 = *MEMORY[0x1E69E9840];
  if (notification)
  {
    name = [a2 name];
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = 17;
    }

    else
    {
      v7 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v7 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v8 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v10 = atomic_load((notification + 8));
      *buf = 136316162;
      v23 = "[PFCloudKitThrottledNotificationObserver noteRecievedNotification:]";
      v24 = 1024;
      v25 = 50;
      v26 = 2112;
      notificationCopy2 = notification;
      v28 = 2112;
      v29 = name;
      v30 = 1024;
      v31 = v10;
      _os_log_impl(&dword_18565F000, v6, v9, "CoreData+CloudKit: %s(%d): %@: Got: %@ - %d", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v4);
    if (atomic_fetch_add((notification + 8), 1u))
    {
      v11 = objc_autoreleasePoolPush();
      v12 = __PFCloudKitLoggingGetStream();
      v13 = v12;
      if (__ckLoggingOverride == 17)
      {
        v14 = 17;
      }

      else
      {
        v14 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v14 = 16;
      }

      if (__ckLoggingOverride)
      {
        v15 = v14;
      }

      else
      {
        v15 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(v12, v15))
      {
        v16 = atomic_load((notification + 8));
        *buf = 136316162;
        v23 = "[PFCloudKitThrottledNotificationObserver noteRecievedNotification:]";
        v24 = 1024;
        v25 = 68;
        v26 = 2112;
        notificationCopy2 = notification;
        v28 = 2112;
        v29 = name;
        v30 = 1024;
        v31 = v16;
        _os_log_impl(&dword_18565F000, v13, v15, "CoreData+CloudKit: %s(%d): %@ - Already scheduled a block to respond to '%@', %d notifications since.", buf, 0x2Cu);
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v17 = [_PFClassicBackgroundRuntimeVoucher _beginPowerAssertionNamed:*(notification + 16)];
      v18 = dispatch_time(0, 1000000000 * *(notification + 32));
      global_queue = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__PFCloudKitThrottledNotificationObserver_noteRecievedNotification___block_invoke;
      block[3] = &unk_1E6EC19D8;
      block[4] = notification;
      block[5] = name;
      block[6] = v17;
      dispatch_after(v18, global_queue, block);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __68__PFCloudKitThrottledNotificationObserver_noteRecievedNotification___block_invoke(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = atomic_exchange((a1[4] + 8), 0);
  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = 17;
  }

  else
  {
    v6 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v6 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v7 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(v9 + 24);
    v19 = 136316418;
    v20 = "[PFCloudKitThrottledNotificationObserver noteRecievedNotification:]_block_invoke";
    v21 = 1024;
    v22 = 56;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v10;
    v29 = 1024;
    v30 = v2;
    _os_log_impl(&dword_18565F000, v5, v8, "CoreData+CloudKit: %s(%d): %@: Executing '%@' block for '%@' clearing %d iterations.", &v19, 0x36u);
  }

  objc_autoreleasePoolPop(v3);
  v12 = *(a1[4] + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a1[5]);
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[5];
      v19 = 138412290;
      v20 = v17;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: No notification handler block specified. Dropping: %@\n", &v19, 0xCu);
    }

    v14 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v18 = a1[5];
      v19 = 138412290;
      v20 = v18;
      _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: No notification handler block specified. Dropping: %@", &v19, 0xCu);
    }
  }

  result = [_PFClassicBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:a1[6]];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end
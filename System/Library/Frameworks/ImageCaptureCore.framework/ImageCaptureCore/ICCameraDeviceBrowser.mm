@interface ICCameraDeviceBrowser
+ (id)defaultBrowser;
- (BOOL)startMSCameraBrowser;
- (BOOL)startPTPCameraBrowser;
- (ICCameraDeviceBrowser)init;
- (id)deviceWithDelegate:(id)a3;
- (void)dealloc;
- (void)handleCommandCompletionNotification:(id)a3;
- (void)handleImageCaptureEventNotification:(id)a3;
- (void)notifySuspension:(unint64_t)a3;
- (void)runSuspensionTimer:(BOOL)a3;
- (void)start:(id)a3;
- (void)stop:(id)a3;
@end

@implementation ICCameraDeviceBrowser

+ (id)defaultBrowser
{
  v2 = _sCameraDeviceBrowser;
  if (!_sCameraDeviceBrowser)
  {
    v3 = objc_alloc_init(ICCameraDeviceBrowser);
    v4 = _sCameraDeviceBrowser;
    _sCameraDeviceBrowser = v3;

    v2 = _sCameraDeviceBrowser;
  }

  return v2;
}

- (ICCameraDeviceBrowser)init
{
  v31.receiver = self;
  v31.super_class = ICCameraDeviceBrowser;
  v2 = [(ICCameraDeviceBrowser *)&v31 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    devices = v2->_devices;
    v2->_devices = v3;

    v2->_numberOfBrowsingBrowsers = 0;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    browsers = v2->_browsers;
    v2->_browsers = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    suspendedBrowsers = v2->_suspendedBrowsers;
    v2->_suspendedBrowsers = v7;

    v9 = dispatch_queue_create("ic.suspensionQueue", 0);
    [(ICCameraDeviceBrowser *)v2 setSuspensionTimerQueue:v9];

    [(ICCameraDeviceBrowser *)v2 setSuspensionTimer:0];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel_handleCommandCompletionNotification_ name:@"ICCommandCompletionNotification" object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel_handleImageCaptureEventNotification_ name:@"ICEventNotification" object:0];

    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];

    if (([v13 isEqualToString:@"com.apple.mobileslideshow"] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.camera") & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __29__ICCameraDeviceBrowser_init__block_invoke;
      v29[3] = &unk_1E829C910;
      v15 = v2;
      v30 = v15;
      v16 = [v14 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v29];

      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __29__ICCameraDeviceBrowser_init__block_invoke_2;
      v27[3] = &unk_1E829C910;
      v28 = v15;
      v18 = [v17 addObserverForName:@"UIApplicationDidBecomeActiveNotification" object:0 queue:0 usingBlock:v27];
    }

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __29__ICCameraDeviceBrowser_init__block_invoke_3;
    v25[3] = &unk_1E829C910;
    v26 = v2;
    v20 = [v19 addObserverForName:@"UIApplicationWillTerminateNotification" object:0 queue:0 usingBlock:v25];

    __ICReadPrefs();
    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSince1970];
    v23 = v22;

    srand48(v23);
  }

  return v2;
}

void __29__ICCameraDeviceBrowser_init__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) msDevManager];
  [v2 stopRunning];

  v3 = [*(a1 + 32) ptpDevManager];
  [v3 stopRunning];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) browsers];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) stop:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)runSuspensionTimer:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke;
  v3[3] = &unk_1E829C938;
  v4 = a3;
  v3[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 suspensionTimer];

    if (!v4)
    {
      [*(a1 + 32) notifySuspension:2];
      __ICOSLogCreate();
      v5 = @"[**-> Notify]";
      if ([@"[**-> Notify]" length] >= 0x15)
      {
        v6 = [@"[**-> Notify]" substringWithRange:{0, 18}];
        v5 = [v6 stringByAppendingString:@".."];
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cleanup timer start, notify suspension pending."];
      v8 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v5;
        v10 = v8;
        *buf = 136446466;
        v21 = [(__CFString *)v5 UTF8String];
        v22 = 2114;
        v23 = v7;
        _os_log_impl(&dword_1C6F19000, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v11 = [*(a1 + 32) suspensionTimerQueue];
      v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
      [*(a1 + 32) setSuspensionTimer:v12];
    }

    v13 = [*(a1 + 32) suspensionTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke_39;
    handler[3] = &unk_1E829C848;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v13, handler);

    v14 = [*(a1 + 32) suspensionTimer];
    v15 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    v16 = [*(a1 + 32) suspensionTimer];
    dispatch_activate(v16);
  }

  else
  {
    v16 = [v3 suspensionTimerQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke_47;
    v18[3] = &unk_1E829C848;
    v18[4] = *(a1 + 32);
    dispatch_sync(v16, v18);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke_39(uint64_t a1)
{
  v2 = [*(a1 + 32) suspensionTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setSuspensionTimer:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke_2;
  block[3] = &unk_1E829C848;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v2 = @"[**-> Suspend]";
  if ([@"[**-> Suspend]" length] >= 0x15)
  {
    v3 = [@"[**-> Suspend]" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cleanup time limit reached, hard suspending queues."];
  v5 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v11 = 136446466;
    v12 = [(__CFString *)v2 UTF8String];
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1C6F19000, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v11, 0x16u);
  }

  [*(a1 + 32) notifySuspension:3];
  v8 = [*(a1 + 32) msDevManager];
  [v8 suspendOperations];

  v9 = [*(a1 + 32) ptpDevManager];
  [v9 suspendOperations];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __44__ICCameraDeviceBrowser_runSuspensionTimer___block_invoke_47(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) suspensionTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) suspensionTimer];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setSuspensionTimer:0];
    __ICOSLogCreate();
    v4 = @"[**-> Cancel]";
    if ([@"[**-> Cancel]" length] >= 0x15)
    {
      v5 = [@"[**-> Cancel]" substringWithRange:{0, 18}];
      v4 = [v5 stringByAppendingString:@".."];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Foregrounded before time limit reached, cancel suspension."];
    v7 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v4;
      v9 = v7;
      v20 = 136446466;
      v21 = [(__CFString *)v4 UTF8String];
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v20, 0x16u);
    }

    v10 = 1;
  }

  else
  {
    __ICOSLogCreate();
    v11 = @"[**-> Resume]";
    if ([@"[**-> Resume]" length] >= 0x15)
    {
      v12 = [@"[**-> Resume]" substringWithRange:{0, 18}];
      v11 = [v12 stringByAppendingString:@".."];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Foregrounded application, resuming queues."];
    v14 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v11;
      v16 = v14;
      v20 = 136446466;
      v21 = [(__CFString *)v11 UTF8String];
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_1C6F19000, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v20, 0x16u);
    }

    v17 = [*(a1 + 32) ptpDevManager];
    [v17 resumeOperations];

    v4 = [*(a1 + 32) msDevManager];
    [(__CFString *)v4 resumeOperations];
    v10 = 4;
  }

  result = [*(a1 + 32) notifySuspension:v10];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICCameraDeviceBrowser;
  [(ICCameraDeviceBrowser *)&v4 dealloc];
}

- (BOOL)startPTPCameraBrowser
{
  if (self->_ptpDevManager)
  {
    return 1;
  }

  v4 = objc_alloc_init(PTPCameraDeviceManager);
  ptpDevManager = self->_ptpDevManager;
  self->_ptpDevManager = v4;

  [(ICDeviceManager *)self->_ptpDevManager startRunning];
  return self->_ptpDevManager != 0;
}

- (BOOL)startMSCameraBrowser
{
  if (self->_msDevManager)
  {
    return 1;
  }

  v4 = objc_alloc_init(MSCameraDeviceManager);
  msDevManager = self->_msDevManager;
  self->_msDevManager = v4;

  [(ICDeviceManager *)self->_msDevManager startRunning];
  return self->_msDevManager != 0;
}

- (void)start:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(ICCameraDeviceBrowser *)self addBrowser:v4];
  if (self->_numberOfBrowsingBrowsers)
  {
    v5 = [(ICCameraDeviceBrowser *)self devices];
    v6 = [v5 count];

    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(ICCameraDeviceBrowser *)self devices];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v4 addDevice:*(*(&v19 + 1) + 8 * i) moreComing:v6 - 1 != i];
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v6 -= i;
        }

        while (v9);
      }
    }
  }

  else
  {
    __ICOSLogCreate();
    v12 = @"CameraBrowser";
    if ([@"CameraBrowser" length] >= 0x15)
    {
      v13 = [@"CameraBrowser" substringWithRange:{0, 18}];
      v12 = [v13 stringByAppendingString:@".."];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start Browsing"];
    v15 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v12;
      v17 = v15;
      *buf = 136446466;
      v25 = [(__CFString *)v12 UTF8String];
      v26 = 2114;
      v27 = v14;
      _os_log_impl(&dword_1C6F19000, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(ICCameraDeviceBrowser *)self startPXCameraBrowser];
    [(ICCameraDeviceBrowser *)self startMSCameraBrowser];
    [(ICCameraDeviceBrowser *)self startPTPCameraBrowser];
  }

  ++self->_numberOfBrowsingBrowsers;

  v18 = *MEMORY[0x1E69E9840];
}

- (void)notifySuspension:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = &selRef_deviceBrowserDidSuspendOperations_;
      v4 = 1;
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_22;
      }

      v4 = 0;
      v5 = &selRef_deviceBrowserDidResumeOperations_;
    }
  }

  else if (a3 == 1)
  {
    v4 = 0;
    v5 = &selRef_deviceBrowserDidCancelSuspendOperations_;
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_22;
    }

    v4 = 0;
    v5 = &selRef_deviceBrowserWillSuspendOperations_;
  }

  v6 = *v5;
  if (*v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(ICCameraDeviceBrowser *)self browsers];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          [v12 setSuspended:v4];
          v13 = [v12 delegate];
          if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v13 performSelector:v6 withObject:self];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)stop:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableArray *)self->_browsers containsObject:v4])
  {
    numberOfBrowsingBrowsers = self->_numberOfBrowsingBrowsers;
    if (numberOfBrowsingBrowsers)
    {
      self->_numberOfBrowsingBrowsers = numberOfBrowsingBrowsers - 1;
      v6 = MEMORY[0x1E695DEC8];
      v7 = [v4 devices];
      v8 = [v6 arrayWithArray:v7];

      v9 = [v8 count];
      if (v9)
      {
        v10 = v9;
        v27 = v8;
        v28 = self;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = v8;
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v34;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v34 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v33 + 1) + 8 * i);
              [v16 willChangeValueForKey:{@"hasOpenSession", v27, v28}];
              [v16 didChangeValueForKey:@"hasOpenSession"];
              v17 = [v16 delegate];

              if (v17)
              {
                v18 = [v16 delegate];
                [v18 didRemoveDevice:v16];
              }

              [v4 removeDevice:v16 moreGoing:v10 - 1 != i];
            }

            v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
            v10 -= i;
          }

          while (v13);
        }

        v8 = v27;
        self = v28;
      }

      if (!self->_numberOfBrowsingBrowsers)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v19 = self->_devices;
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v30;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v30 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v29 + 1) + 8 * j);
              v25 = [v24 deviceManager];
              [v25 closeDevice:v24 contextInfo:0];
            }

            v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v21);
        }

        [(NSMutableArray *)self->_devices removeAllObjects];
      }

      [(ICCameraDeviceBrowser *)self removeBrowser:v4, v27, v28];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleCommandCompletionNotification:(id)a3
{
  v6 = a3;
  v3 = [v6 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"device"];
  v5 = v4;
  if (v4)
  {
    [v4 performSelector:sel_handleCommandCompletionNotification_ withObject:v6];
  }
}

- (void)handleImageCaptureEventNotification:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"type"];
  if ([v6 isEqualToString:@"ICDeviceAdded"])
  {
    v7 = [v5 objectForKeyedSubscript:@"device"];
    if (v7)
    {
      [(NSMutableArray *)self->_devices addObject:v7];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = self->_browsers;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v33 + 1) + 8 * i);
            if ([v13 isBrowsing])
            {
              [v13 addDevice:v7 moreComing:0];
            }
          }

          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v10);
      }

LABEL_31:
    }
  }

  else
  {
    v14 = [v6 isEqualToString:@"ICDeviceRemoved"];
    v15 = [v5 objectForKeyedSubscript:@"device"];
    v7 = v15;
    if (v14)
    {
      if (v15)
      {
        [v15 willChangeValueForKey:@"hasOpenSession"];
        [v7 didChangeValueForKey:@"hasOpenSession"];
        [(NSMutableArray *)self->_devices removeObject:v7];
        __ICOSLogCreate();
        v16 = MEMORY[0x1E696AEC0];
        v17 = [v7 name];
        v18 = [v16 stringWithFormat:@" ------ [1]didRemoveDevice: %@\n", v17];
        v19 = [v16 stringWithFormat:@"%@", v18];

        v20 = __ICLogTypeEnabled();
        v21 = *MEMORY[0x1E69A8B08];
        if (v20)
        {
          if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v19;
            _os_log_impl(&dword_1C6F19000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEBUG))
        {
          [(ICCameraDeviceBrowser *)v19 handleImageCaptureEventNotification:v21];
        }

        v22 = [v7 delegate];

        if (v22)
        {
          v23 = [v7 delegate];
          [v23 didRemoveDevice:v7];
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = self->_browsers;
        v24 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v30;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v30 != v26)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v29 + 1) + 8 * j) removeDevice:v7 moreGoing:0];
            }

            v25 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v25);
        }

        goto LABEL_31;
      }
    }

    else if (v15)
    {
      [v15 performSelector:sel_handleImageCaptureEventNotification_ withObject:v4];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)deviceWithDelegate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v15 + 1) + 8 * v10);

      v12 = [v8 delegate];

      if (v12 == v4)
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)handleImageCaptureEventNotification:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1C6F19000, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
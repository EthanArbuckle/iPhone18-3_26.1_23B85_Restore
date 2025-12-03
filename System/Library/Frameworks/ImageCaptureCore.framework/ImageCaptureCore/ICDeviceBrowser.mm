@interface ICDeviceBrowser
- (BOOL)containsDevice:(id)device;
- (ICAuthorizationStatus)contentsAuthorizationStatus;
- (ICAuthorizationStatus)controlAuthorizationStatus;
- (ICDevice)preferredDevice;
- (NSArray)devices;
- (id)deviceWithRef:(id)ref;
- (id)init;
- (void)addDevice:(id)device moreComing:(BOOL)coming;
- (void)removeDevice:(id)device moreGoing:(BOOL)going;
- (void)requestContentsAuthorizationWithCompletion:(void *)completion;
- (void)requestControlAuthorizationWithCompletion:(void *)completion;
- (void)resetContentsAuthorizationWithCompletion:(void *)completion;
- (void)resetControlAuthorizationWithCompletion:(void *)completion;
- (void)setBrowsedDeviceTypeMask:(ICDeviceTypeMask)browsedDeviceTypeMask;
- (void)start;
- (void)stop;
@end

@implementation ICDeviceBrowser

- (id)init
{
  v6.receiver = self;
  v6.super_class = ICDeviceBrowser;
  v2 = [(ICDeviceBrowser *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICDeviceBrowser *)v2 setInternalDevices:v3];

    [(ICDeviceBrowser *)v2 setBrowsedDeviceTypeMask:257];
    v2->_devicesLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v2;
}

- (void)setBrowsedDeviceTypeMask:(ICDeviceTypeMask)browsedDeviceTypeMask
{
  if (self->_internalBrowsedDeviceTypeMask != browsedDeviceTypeMask)
  {
    self->_internalBrowsedDeviceTypeMask = browsedDeviceTypeMask;
  }
}

- (void)start
{
  v40 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v3 = @"ICDeviceBrowser";
  if ([@"ICDeviceBrowser" length] >= 0x15)
  {
    v4 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🔵 browser start"];
  v6 = MEMORY[0x1E69A8B08];
  v7 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    v36 = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v38 = 2114;
    v39 = v5;
    _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v36, 0x16u);
  }

  delegate = [(ICDeviceBrowser *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    isBrowsing = [(ICDeviceBrowser *)self isBrowsing];

    if (!isBrowsing)
    {
      __ICOSLogCreate();
      v28 = @"ICDeviceBrowser";
      if ([@"ICDeviceBrowser" length] >= 0x15)
      {
        v29 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
        v28 = [v29 stringByAppendingString:@".."];
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🟢 browser started"];
      v31 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v28;
        v33 = v31;
        uTF8String2 = [(__CFString *)v28 UTF8String];
        v36 = 136446466;
        uTF8String = uTF8String2;
        v38 = 2114;
        v39 = v30;
        _os_log_impl(&dword_1C6F19000, v33, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v36, 0x16u);
      }

      [(ICDeviceBrowser *)self setBrowsing:1];
      v21 = +[ICCameraDeviceBrowser defaultBrowser];
      [(__CFString *)v21 start:self];
      goto LABEL_24;
    }
  }

  if ([(ICDeviceBrowser *)self isBrowsing])
  {
    __ICOSLogCreate();
    v13 = @"ICDeviceBrowser";
    if ([@"ICDeviceBrowser" length] >= 0x15)
    {
      v14 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
      v13 = [v14 stringByAppendingString:@".."];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🟢 browser already started"];
    v16 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v13;
      v18 = v16;
      uTF8String3 = [(__CFString *)v13 UTF8String];
      v36 = 136446466;
      uTF8String = uTF8String3;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&dword_1C6F19000, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v36, 0x16u);
    }
  }

  delegate2 = [(ICDeviceBrowser *)self delegate];

  if (!delegate2)
  {
    __ICOSLogCreate();
    v21 = @"ICDeviceBrowser";
    if ([@"ICDeviceBrowser" length] >= 0x15)
    {
      v22 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
      v21 = [v22 stringByAppendingString:@".."];
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🔴 browser delegate nil"];
    v24 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v21;
      v26 = v24;
      uTF8String4 = [(__CFString *)v21 UTF8String];
      v36 = 136446466;
      uTF8String = uTF8String4;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&dword_1C6F19000, v26, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v36, 0x16u);
    }

LABEL_24:
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v33 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v3 = @"ICDeviceBrowser";
  if ([@"ICDeviceBrowser" length] >= 0x15)
  {
    v4 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🔵 browser stop"];
  v6 = MEMORY[0x1E69A8B08];
  v7 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    v29 = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v29, 0x16u);
  }

  isBrowsing = [(ICDeviceBrowser *)self isBrowsing];
  __ICOSLogCreate();
  v11 = [@"ICDeviceBrowser" length];
  if (isBrowsing)
  {
    if (v11 >= 0x15)
    {
      v12 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
      v14 = [v12 stringByAppendingString:@".."];
    }

    else
    {
      v14 = @"ICDeviceBrowser";
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🟢 browser stopped"];
    v16 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v14;
      v18 = v16;
      uTF8String2 = [(__CFString *)v14 UTF8String];
      v29 = 136446466;
      uTF8String = uTF8String2;
      v31 = 2114;
      v32 = v15;
      _os_log_impl(&dword_1C6F19000, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v29, 0x16u);
    }

    [(ICDeviceBrowser *)self setBrowsing:0];
    browsedDeviceTypeMask = [(ICDeviceBrowser *)self browsedDeviceTypeMask];
    [(ICDeviceBrowser *)self setBrowsedDeviceTypeMask:0];
    v21 = +[ICCameraDeviceBrowser defaultBrowser];
    [v21 stop:self];

    [(ICDeviceBrowser *)self setBrowsedDeviceTypeMask:browsedDeviceTypeMask];
  }

  else
  {
    if (v11 >= 0x15)
    {
      v13 = [@"ICDeviceBrowser" substringWithRange:{0, 18}];
      v22 = [v13 stringByAppendingString:@".."];
    }

    else
    {
      v22 = @"ICDeviceBrowser";
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🟢 browser already stopped"];
    v24 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v22;
      v26 = v24;
      uTF8String3 = [(__CFString *)v22 UTF8String];
      v29 = 136446466;
      uTF8String = uTF8String3;
      v31 = 2114;
      v32 = v23;
      _os_log_impl(&dword_1C6F19000, v26, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v29, 0x16u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (NSArray)devices
{
  os_unfair_lock_lock(&self->_devicesLock);
  v3 = MEMORY[0x1E695DEC8];
  internalDevices = [(ICDeviceBrowser *)self internalDevices];
  v5 = [v3 arrayWithArray:internalDevices];

  os_unfair_lock_unlock(&self->_devicesLock);

  return v5;
}

- (ICDevice)preferredDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  devices = [(ICDeviceBrowser *)self devices];
  v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 preferred])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)addDevice:(id)device moreComing:(BOOL)coming
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_devicesLock);
  internalDevices = [(ICDeviceBrowser *)self internalDevices];
  [internalDevices addObject:deviceCopy];

  os_unfair_lock_unlock(&self->_devicesLock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ICDeviceBrowser_addDevice_moreComing___block_invoke;
  block[3] = &unk_1E829CB08;
  block[4] = self;
  v10 = deviceCopy;
  comingCopy = coming;
  v8 = deviceCopy;
  ICPerformBlockOnMainThread(block);
}

void __40__ICDeviceBrowser_addDevice_moreComing___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) willChangeValueForKey:@"devices"];
  [*(a1 + 32) didChangeValueForKey:@"devices"];
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 deviceBrowser:*(a1 + 32) didAddDevice:*(a1 + 40) moreComing:*(a1 + 48)];
  }

  __ICOSLogCreate();
  v4 = @"Dev Browser";
  if ([@"Dev Browser" length] >= 0x15)
  {
    v5 = [@"Dev Browser" substringWithRange:{0, 18}];
    v4 = [v5 stringByAppendingString:@".."];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 40) name];
  v8 = [v6 stringWithFormat:@"Added: %@", v7];

  v9 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v4;
    v11 = v9;
    *buf = 136446466;
    v14 = [(__CFString *)v4 UTF8String];
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeDevice:(id)device moreGoing:(BOOL)going
{
  deviceCopy = device;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ICDeviceBrowser_removeDevice_moreGoing___block_invoke;
  block[3] = &unk_1E829CB08;
  block[4] = self;
  v9 = deviceCopy;
  goingCopy = going;
  v7 = deviceCopy;
  ICPerformBlockOnMainThread(block);
}

void __42__ICDeviceBrowser_removeDevice_moreGoing___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isBrowsing])
  {
    v2 = [*(a1 + 32) internalDevices];
    v3 = [v2 containsObject:*(a1 + 40)];

    if (v3)
    {
      [*(a1 + 40) cleanupDeviceWithErrorCode:&unk_1F46971F8 completionBlock:0];
      v4 = [*(a1 + 32) delegate];

      if (v4)
      {
        v5 = [*(a1 + 32) delegate];
        [v5 deviceBrowser:*(a1 + 32) didRemoveDevice:*(a1 + 40) moreGoing:*(a1 + 48)];
      }

      lock._os_unfair_lock_opaque = [*(a1 + 32) devicesLock];
      os_unfair_lock_lock(&lock);
      [*(a1 + 32) willChangeValueForKey:@"devices"];
      v6 = [*(a1 + 32) internalDevices];
      [v6 removeObject:*(a1 + 40)];

      [*(a1 + 32) didChangeValueForKey:@"devices"];
      os_unfair_lock_unlock(&lock);
      __ICOSLogCreate();
      v7 = @"Dev Browser";
      if ([@"Dev Browser" length] >= 0x15)
      {
        v8 = [@"Dev Browser" substringWithRange:{0, 18}];
        v7 = [v8 stringByAppendingString:@".."];
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = [*(a1 + 40) name];
      v11 = [v9 stringWithFormat:@"Removed: %@", v10];

      v12 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v7;
        v14 = v12;
        v15 = [(__CFString *)v7 UTF8String];
        *buf = 136446466;
        v19 = v15;
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&dword_1C6F19000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_devicesLock);
  internalDevices = [(ICDeviceBrowser *)self internalDevices];
  v6 = [internalDevices containsObject:deviceCopy];

  os_unfair_lock_unlock(&self->_devicesLock);
  return v6;
}

- (id)deviceWithRef:(id)ref
{
  v20 = *MEMORY[0x1E69E9840];
  refCopy = ref;
  os_unfair_lock_lock(&self->_devicesLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  internalDevices = [(ICDeviceBrowser *)self internalDevices];
  v6 = [internalDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(internalDevices);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        deviceRef = [v9 deviceRef];
        intValue = [deviceRef intValue];
        intValue2 = [refCopy intValue];

        if (intValue == intValue2)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [internalDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_devicesLock);
  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (ICAuthorizationStatus)contentsAuthorizationStatus
{
  v2 = +[ICPrefManager defaultAuthManager];
  getContentsAuthorizationStatus = [v2 getContentsAuthorizationStatus];

  return getContentsAuthorizationStatus;
}

- (void)requestContentsAuthorizationWithCompletion:(void *)completion
{
  v3 = completion;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ICDeviceBrowser_requestContentsAuthorizationWithCompletion___block_invoke;
  block[3] = &unk_1E829CB58;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __62__ICDeviceBrowser_requestContentsAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[ICPrefManager defaultAuthManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__ICDeviceBrowser_requestContentsAuthorizationWithCompletion___block_invoke_2;
  v3[3] = &unk_1E829CB30;
  v4 = *(a1 + 32);
  [v2 requestContentsAuthorizationShouldPrompt:1 completion:v3];
}

void __62__ICDeviceBrowser_requestContentsAuthorizationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  (*(*(a1 + 32) + 16))();
}

- (ICAuthorizationStatus)controlAuthorizationStatus
{
  v2 = +[ICPrefManager defaultAuthManager];
  getControlAuthorizationStatus = [v2 getControlAuthorizationStatus];

  return getControlAuthorizationStatus;
}

- (void)requestControlAuthorizationWithCompletion:(void *)completion
{
  v3 = completion;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ICDeviceBrowser_requestControlAuthorizationWithCompletion___block_invoke;
  block[3] = &unk_1E829CB58;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __61__ICDeviceBrowser_requestControlAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[ICPrefManager defaultAuthManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__ICDeviceBrowser_requestControlAuthorizationWithCompletion___block_invoke_2;
  v3[3] = &unk_1E829CB30;
  v4 = *(a1 + 32);
  [v2 requestControlAuthorizationShouldPrompt:1 completion:v3];
}

void __61__ICDeviceBrowser_requestControlAuthorizationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  (*(*(a1 + 32) + 16))();
}

- (void)resetContentsAuthorizationWithCompletion:(void *)completion
{
  v3 = completion;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICDeviceBrowser_resetContentsAuthorizationWithCompletion___block_invoke;
  block[3] = &unk_1E829CB58;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __60__ICDeviceBrowser_resetContentsAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[ICPrefManager defaultAuthManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__ICDeviceBrowser_resetContentsAuthorizationWithCompletion___block_invoke_2;
  v3[3] = &unk_1E829CB30;
  v4 = *(a1 + 32);
  [v2 resetContentsAuthorizationWithCompletion:v3];
}

void __60__ICDeviceBrowser_resetContentsAuthorizationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  (*(*(a1 + 32) + 16))();
}

- (void)resetControlAuthorizationWithCompletion:(void *)completion
{
  v3 = completion;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICDeviceBrowser_resetControlAuthorizationWithCompletion___block_invoke;
  block[3] = &unk_1E829CB58;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v5[2](v5, @"ICAuthorizationStatusNotDetermined");
}

void __59__ICDeviceBrowser_resetControlAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[ICPrefManager defaultAuthManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__ICDeviceBrowser_resetControlAuthorizationWithCompletion___block_invoke_2;
  v3[3] = &unk_1E829CB30;
  v4 = *(a1 + 32);
  [v2 resetControlAuthorizationWithCompletion:v3];
}

void __59__ICDeviceBrowser_resetControlAuthorizationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  (*(*(a1 + 32) + 16))();
}

@end
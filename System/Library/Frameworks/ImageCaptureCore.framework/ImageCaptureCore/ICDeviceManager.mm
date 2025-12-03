@interface ICDeviceManager
- (BOOL)openRemoteDeviceManager;
- (ICDeviceManager)init;
- (id)deviceForConnection:(id)connection;
- (id)deviceForUUID:(id)d;
- (id)remoteManager;
- (int64_t)closeDevice:(id)device contextInfo:(void *)info;
- (int64_t)closeSession:(id)session withOptions:(id)options completion:(id)completion;
- (int64_t)deleteFile:(id)file fromDevice:(id)device completion:(id)completion;
- (int64_t)downloadFile:(id)file fromDevice:(id)device withOptions:(id)options completion:(id)completion;
- (int64_t)ejectDevice:(id)device completion:(id)completion;
- (int64_t)enumerateContent:(id)content withOptions:(id)options completion:(id)completion;
- (int64_t)getFileData:(id)data fromDevice:(id)device withOptions:(id)options completion:(id)completion;
- (int64_t)getFileMetadata:(id)metadata fromDevice:(id)device withOptions:(id)options completion:(id)completion;
- (int64_t)getFileThumbnail:(id)thumbnail fromDevice:(id)device withOptions:(id)options completion:(id)completion;
- (int64_t)getFingerprint:(id)fingerprint fromDevice:(id)device completion:(id)completion;
- (int64_t)getSecurityScopedURL:(id)l fromDevice:(id)device completion:(id)completion;
- (int64_t)openDevice:(id)device contextInfo:(void *)info;
- (int64_t)openSession:(id)session withOptions:(id)options completion:(id)completion;
- (int64_t)refreshObjectHandleInfo:(id)info fromDevice:(id)device completion:(id)completion;
- (int64_t)registerDevice:(id)device forImageCaptureEventNotifications:(id)notifications;
- (int64_t)sendDevice:(id)device ptpCommand:(id)command andPayload:(id)payload completion:(id)completion;
- (int64_t)syncClock:(id)clock completion:(id)completion;
- (int64_t)unregisterDevice:(id)device forImageCaptureEventNotifications:(id)notifications;
- (void)addInitiatedOperation:(id)operation;
- (void)addInteractiveOperation:(id)operation;
- (void)closeDeviceHandle:(id)handle;
- (void)closeDeviceImp:(id)imp;
- (void)closeSessionImp:(id)imp;
- (void)dealloc;
- (void)enumerateContentImp:(id)imp;
- (void)getDeviceList;
- (void)notifyAddedDevice:(id)device;
- (void)notifyRemovedDevice:(id)device;
- (void)openDeviceHandle:(id)handle;
- (void)openSessionImp:(id)imp;
- (void)postCommandCompletionNotification:(id)notification;
- (void)postNotification:(id)notification;
- (void)restartRunning;
- (void)resumeOperations;
- (void)startRunning;
- (void)stopRunning;
- (void)suspendOperations;
@end

@implementation ICDeviceManager

- (ICDeviceManager)init
{
  v20.receiver = self;
  v20.super_class = ICDeviceManager;
  v2 = [(ICDeviceManager *)&v20 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    v2[9] = 0;
    *(v2 + 5) = 0;
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/Frameworks/ImageCaptureCore.framework/DeviceMatchingInfo.plist"];
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    [*(v2 + 5) setMaxConcurrentOperationCount:1];
    [*(v2 + 5) setQualityOfService:25];
    [*(v2 + 5) setName:@"ICDeviceOperationQueue"];
    *(v2 + 12) = 0;
    v2[8] = 0;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(v2 + 8);
    *(v2 + 8) = v9;

    v11 = dispatch_queue_create("ICDeviceListQueue", 0);
    v12 = *(v2 + 4);
    *(v2 + 4) = v11;

    v2[10] = 0;
    if (!_gImageIOSupportedFileExtensions)
    {
      v13 = CGImageSourceCopyTypeExtensions();
      v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
      v15 = _gImageIOSupportedFileExtensions;
      _gImageIOSupportedFileExtensions = v14;
    }

    if (!_gKnownRawExtensions)
    {
      v16 = CGImageSourceCopyTypeExtensions();
      v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v16];
      v18 = _gKnownRawExtensions;
      _gKnownRawExtensions = v17;

      [_gKnownRawExtensions removeObject:@"tif"];
    }
  }

  return v2;
}

- (void)startRunning
{
  if (!self->_managerIsRunning)
  {
    self->_managerIsRunning = 1;
    if ([(ICDeviceManager *)self openRemoteDeviceManager])
    {

      [(ICDeviceManager *)self getDeviceList];
    }
  }
}

- (void)stopRunning
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_managerIsRunning)
  {
    self->_managerIsRunning = 0;
    v3 = [(NSMutableDictionary *)self->_devices copy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [v3 allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v8)];
          internalUUID = [v9 internalUUID];
          [(ICDeviceManager *)self closeDeviceHandle:internalUUID];

          ++v8;
        }

        while (v6 != v8);
        v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)restartRunning
{
  [(ICDeviceManager *)self stopRunning];

  [(ICDeviceManager *)self startRunning];
}

uint64_t __64__ICDeviceManager_addSelectorToInterface_selectorString_origin___block_invoke()
{
  v13 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  addSelectorToInterface_selectorString_origin__incomingClasses_1 = [v13 initWithObjects:{v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)openDeviceHandle:(id)handle
{
  handleCopy = handle;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__ICDeviceManager_openDeviceHandle___block_invoke;
  v11[3] = &unk_1E829C870;
  v5 = handleCopy;
  v12 = v5;
  selfCopy = self;
  v6 = MEMORY[0x1CCA59970](v11);
  v7 = +[ICPrefManager defaultAuthManager];
  getContentsAuthorizationStatus = [v7 getContentsAuthorizationStatus];
  if (getContentsAuthorizationStatus == @"ICAuthorizationStatusAuthorized")
  {
    v6[2](v6);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__ICDeviceManager_openDeviceHandle___block_invoke_2;
    v9[3] = &unk_1E829CB30;
    v10 = v6;
    [v7 requestContentsAuthorizationShouldPrompt:1 completion:v9];
  }
}

void __36__ICDeviceManager_openDeviceHandle___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v2 = @"device";
  if ([@"device" length] >= 0x15)
  {
    v3 = [@"device" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%12s : %@", "authorized", *(a1 + 32)];
  v5 = MEMORY[0x1E69A8B08];
  v6 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v2;
    v8 = v6;
    *buf = 136446466;
    v23 = [(__CFString *)v2 UTF8String];
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_1C6F19000, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v9 = [*(a1 + 40) devices];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];

  if (!v10)
  {
    v11 = [*(a1 + 40) remoteManager];
    if (v11)
    {
      __ICOSLogCreate();
      v12 = @"device";
      if ([@"device" length] >= 0x15)
      {
        v13 = [@"device" substringWithRange:{0, 18}];
        v12 = [v13 stringByAppendingString:@".."];
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%12s : %@", "opening", *(a1 + 32)];
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v12;
        v17 = v15;
        v18 = [(__CFString *)v12 UTF8String];
        *buf = 136446466;
        v23 = v18;
        v24 = 2114;
        v25 = v14;
        _os_log_impl(&dword_1C6F19000, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __36__ICDeviceManager_openDeviceHandle___block_invoke_45;
      v21[3] = &unk_1E829D440;
      v19 = *(a1 + 32);
      v21[4] = *(a1 + 40);
      [v11 openDevice:v19 withReply:v21];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __36__ICDeviceManager_openDeviceHandle___block_invoke_45(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"ICDeviceEndpoint"];
  if (v4)
  {
    __ICOSLogCreate();
    v5 = @"devEndpoint";
    if ([@"devEndpoint" length] >= 0x15)
    {
      v6 = [@"devEndpoint" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];
    v8 = MEMORY[0x1E69A8B08];
    v9 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v5;
      v11 = v9;
      *buf = 136446466;
      *&buf[4] = [(__CFString *)v5 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy__3;
    v39 = __Block_byref_object_dispose__3;
    v40 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
    if (*(*&buf[8] + 40))
    {
      __ICOSLogCreate();
      if ([@"devConnection" length] < 0x15)
      {
        v13 = @"devConnection";
      }

      else
      {
        v12 = [@"devConnection" substringWithRange:{0, 18}];
        v13 = [v12 stringByAppendingString:@".."];
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*&buf[8] + 40)];
      v15 = *v8;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v13;
        *v33 = 136446466;
        v34 = [(__CFString *)v13 UTF8String];
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&dword_1C6F19000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v33, 0x16u);
      }

      v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46A0478];
      v18 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46A0478];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"imageCaptureEventNotification:completion:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"openDeviceSessionWithReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"postNotification:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"notifyAddedItems:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"notifyRemovedItems:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"notifyUpdatedItems:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"notifyStatus:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"notifyPtpEvent:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"registerInterestedEventNotifications:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"unregisterInterestedEventNotifications:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestReadDataFromObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestThumbnailDataForObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestMetadataForObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestStartUsingDeviceWithReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestDownloadObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestDeleteObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"sendPTPCommand:andPayload:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestSecurityScopedURLForObjectHandle:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestFingerprintForObjectHandle:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v17 selectorString:@"requestRefreshObjectHandleInfo:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"imageCaptureEventNotification:completion:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"openDeviceSessionWithReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"postNotification:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"notifyAddedItems:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"notifyRemovedItems:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"notifyUpdatedItems:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"notifyStatus:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"notifyPtpEvent:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"registerInterestedEventNotifications:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"unregisterInterestedEventNotifications:" origin:0];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestThumbnailDataForObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestMetadataForObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestDownloadObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestStartUsingDeviceWithReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestDeleteObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestReadDataFromObjectHandle:options:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"sendPTPCommand:andPayload:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestSecurityScopedURLForObjectHandle:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestFingerprintForObjectHandle:withReply:" origin:1];
      [*(a1 + 32) addSelectorToInterface:v18 selectorString:@"requestRefreshObjectHandleInfo:withReply:" origin:1];
      v19 = [v3 objectForKeyedSubscript:@"ICInternalDeviceUUID"];
      v20 = [MEMORY[0x1E695DF90] dictionary];
      atomic_fetch_add(NextDeviceHandle__sLastDeviceHandle, 1u);
      v21 = atomic_load(NextDeviceHandle__sLastDeviceHandle);
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21];
      [v20 setObject:v22 forKeyedSubscript:@"ICADeviceBrowserDeviceRefKey"];

      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21];
      [v20 setObject:v23 forKeyedSubscript:@"ICAConnectionIDKey"];

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21];
      [v20 setObject:v24 forKeyedSubscript:@"objectID"];

      [v20 setObject:v19 forKeyedSubscript:@"UUIDString"];
      [v20 setObject:v19 forKeyedSubscript:@"persistentIDString"];
      v25 = [[ICCameraDevice alloc] initWithDictionary:v20];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __36__ICDeviceManager_openDeviceHandle___block_invoke_175;
      v32[3] = &unk_1E829D220;
      v32[4] = buf;
      [*(*&buf[8] + 40) setInvalidationHandler:v32];
      v26 = [*(*&buf[8] + 40) invalidationHandler];
      [*(*&buf[8] + 40) setInterruptionHandler:v26];

      [*(*&buf[8] + 40) setExportedInterface:v17];
      [*(*&buf[8] + 40) setRemoteObjectInterface:v18];
      [*(*&buf[8] + 40) setExportedObject:*(a1 + 32)];
      [(ICCameraDevice *)v25 setDevConnection:*(*&buf[8] + 40)];
      [(ICCameraDevice *)v25 setDevEndpoint:v4];
      [(ICDevice *)v25 setDeviceManager:*(a1 + 32)];
      [(ICDevice *)v25 setInternalUUID:v19];
      v27 = [*(a1 + 32) devices];
      [v27 setObject:v25 forKeyedSubscript:v19];

      v28 = [(ICCameraDevice *)v25 devConnection];
      [v28 resume];

      v29 = *(a1 + 32);
      v30 = [(ICDevice *)v25 internalUUID];
      [v29 startDeviceWithHandle:v30];
    }

    _Block_object_dispose(buf, 8);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __36__ICDeviceManager_openDeviceHandle___block_invoke_175(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setInvalidationHandler:0];
  [*(*(*(a1 + 32) + 8) + 40) setInterruptionHandler:0];
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __36__ICDeviceManager_openDeviceHandle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  if ([v3 isEqualToString:@"ICAuthorizationStatusAuthorized"])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getDeviceList
{
  deviceListQueue = self->_deviceListQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__ICDeviceManager_getDeviceList__block_invoke;
  block[3] = &unk_1E829C848;
  block[4] = self;
  dispatch_async(deviceListQueue, block);
}

void __32__ICDeviceManager_getDeviceList__block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [*(a1 + 32) remoteManager];
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__ICDeviceManager_getDeviceList__block_invoke_2;
    v5[3] = &unk_1E829C960;
    v5[4] = *(a1 + 32);
    v6 = v2;
    [v3 requestDeviceListWithOptions:&unk_1F4697188 reply:v5];
  }

  v4 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v4);
}

intptr_t __32__ICDeviceManager_getDeviceList__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:@"ICDeviceContexts"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__ICDeviceManager_getDeviceList__block_invoke_3;
    v7[3] = &unk_1E829C870;
    v4 = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __32__ICDeviceManager_getDeviceList__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) notifyAddedDevice:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)notifyAddedDevice:(id)device
{
  v32 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  __ICOSLogCreate();
  v5 = @"notifyAddedDevice";
  if ([@"notifyAddedDevice" length] >= 0x15)
  {
    v6 = [@"notifyAddedDevice" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  deviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", deviceCopy];
  v8 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v30 = 2114;
    v31 = deviceCopy;
    _os_log_impl(&dword_1C6F19000, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_deviceHandlesLock);
  v11 = [(NSMutableArray *)self->_deviceHandles copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v23 + 1) + 8 * v16) objectForKeyedSubscript:@"ICDeviceHandle"];
        v18 = [deviceCopy objectForKeyedSubscript:@"ICDeviceHandle"];
        v19 = [v17 isEqualToString:v18];

        if (v19)
        {
          v20 = v12;
          goto LABEL_15;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableArray *)self->_deviceHandles addObject:deviceCopy];
  v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:deviceCopy];
  [v20 setObject:self forKeyedSubscript:@"ICDeviceDelegate"];
  v21 = SharedICDeviceHardwareHandler();
  [v21 addDeviceContext:v20];

LABEL_15:
  os_unfair_lock_unlock(&self->_deviceHandlesLock);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)notifyRemovedDevice:(id)device
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  os_unfair_lock_lock(&self->_deviceHandlesLock);
  selfCopy = self;
  v5 = [(NSMutableArray *)self->_deviceHandles copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"ICDeviceHandle"];
        v13 = [deviceCopy objectForKeyedSubscript:@"ICDeviceHandle"];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          [(NSMutableArray *)selfCopy->_deviceHandles removeObject:v11];

          os_unfair_lock_unlock(&selfCopy->_deviceHandlesLock);
          v15 = SharedICDeviceHardwareHandler();
          [v15 removeDeviceContext:deviceCopy];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&selfCopy->_deviceHandlesLock);
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)closeDeviceHandle:(id)handle
{
  v21 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:handleCopy];
  if (v6)
  {
    __ICOSLogCreate();
    v7 = @"device";
    if ([@"device" length] >= 0x15)
    {
      v8 = [@"device" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    handleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"removing device: %@", handleCopy];
    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      uTF8String = [(__CFString *)v7 UTF8String];
      v19 = 2114;
      v20 = handleCopy;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:handleCopy];
    v15[0] = @"device";
    v15[1] = @"type";
    v16[0] = v6;
    v16[1] = @"ICDeviceRemoved";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(ICDeviceManager *)self performSelectorOnMainThread:sel_postNotification_ withObject:v13 waitUntilDone:0];
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)closeDeviceImp:(id)imp
{
  v4 = [imp objectForKeyedSubscript:@"device"];
  if (v4)
  {
    v6 = v4;
    internalUUID = [v4 internalUUID];
    [(ICDeviceManager *)self closeDeviceHandle:internalUUID];

    v4 = v6;
  }
}

- (void)openSessionImp:(id)imp
{
  impCopy = imp;
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"options"];
  v7 = [impCopy objectForKeyedSubscript:@"info"];
  v8 = [impCopy objectForKeyedSubscript:@"cbBlock"];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  if ([v5 isAccessRestrictedAppleDevice])
  {
    v10 = -9943;
  }

  else
  {
    v10 = 0;
  }

  if ([v5 hasOpenSession])
  {
    v10 = -21347;
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"ICEnumerationPrioritizeTethering"];
    if (!v11 || (v12 = v11, [v6 objectForKeyedSubscript:@"ICEnumerationPrioritizeTethering"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, v12, (v14 & 1) == 0))
    {
      v15 = MEMORY[0x1E696AAE0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __34__ICDeviceManager_openSessionImp___block_invoke;
      v18[3] = &unk_1E829C870;
      v19 = v5;
      v20 = v6;
      v16 = [v15 blockOperationWithBlock:v18];
      [(ICDeviceManager *)self addInteractiveOperation:v16];
    }
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:@"info"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [v9 setObject:v17 forKeyedSubscript:@"errCode"];

  if (v8)
  {
    (v8)[2](v8, v5, v9);
  }
}

void __34__ICDeviceManager_openSessionImp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteCamera];
  [v2 enumerateContentWithOptions:*(a1 + 40)];
}

- (void)enumerateContentImp:(id)imp
{
  impCopy = imp;
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"options"];
  v7 = [impCopy objectForKeyedSubscript:@"info"];
  v8 = [impCopy objectForKeyedSubscript:@"cbBlock"];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  if (![v5 hasOpenSession])
  {
    v12 = -9927;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = MEMORY[0x1E696AAE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__ICDeviceManager_enumerateContentImp___block_invoke;
  v14[3] = &unk_1E829C870;
  v15 = v5;
  v16 = v6;
  v11 = [v10 blockOperationWithBlock:v14];
  [(ICDeviceManager *)self addInteractiveOperation:v11];

  v12 = 0;
  if (v7)
  {
LABEL_5:
    [v9 setObject:v7 forKeyedSubscript:@"info"];
  }

LABEL_6:
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  [v9 setObject:v13 forKeyedSubscript:@"errCode"];

  if (v8)
  {
    (v8)[2](v8, v5, v9);
  }
}

void __39__ICDeviceManager_enumerateContentImp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteCamera];
  [v2 enumerateContentWithOptions:*(a1 + 40)];
}

- (void)closeSessionImp:(id)imp
{
  impCopy = imp;
  v9 = [impCopy objectForKeyedSubscript:@"device"];
  v4 = [impCopy objectForKeyedSubscript:@"info"];
  v5 = [impCopy objectForKeyedSubscript:@"cbBlock"];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v9, @"device", 0}];
  if ([v9 hasOpenSession])
  {
    v7 = 0;
  }

  else
  {
    v7 = -9928;
  }

  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"info"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  [v6 setObject:v8 forKeyedSubscript:@"errCode"];

  if (v5)
  {
    (v5)[2](v5, v9, v6);
  }
}

- (id)remoteManager
{
  managerConnection = [(ICDeviceManager *)self managerConnection];
  if (managerConnection && (v4 = managerConnection, v5 = [(ICDeviceManager *)self managerInvalidationCount], v4, v5 <= 4))
  {
    managerConnection2 = [(ICDeviceManager *)self managerConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__ICDeviceManager_remoteManager__block_invoke;
    v9[3] = &unk_1E829C820;
    v9[4] = self;
    v7 = [managerConnection2 remoteObjectProxyWithErrorHandler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __32__ICDeviceManager_remoteManager__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    __ICOSLogCreate();
    v4 = @"remoteManager";
    if ([@"remoteManager" length] >= 0x15)
    {
      v5 = [@"remoteManager" substringWithRange:{0, 18}];
      v4 = [v5 stringByAppendingString:@".."];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];
    v7 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v4;
      v9 = v7;
      *buf = 136446466;
      v12 = [(__CFString *)v4 UTF8String];
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if ([v3 code] == 4099)
    {
      [*(a1 + 32) setManagerInvalidationCount:{objc_msgSend(*(a1 + 32), "managerInvalidationCount") + 1}];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)openRemoteDeviceManager
{
  deviceManagerConnection = [(ICDeviceManager *)self deviceManagerConnection];
  if (deviceManagerConnection)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46A04D8];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46A04D8];
    [(ICDeviceManager *)self addSelectorToInterface:v4 selectorString:@"notifyAddedDevice:" origin:0];
    [(ICDeviceManager *)self addSelectorToInterface:v4 selectorString:@"notifyRemovedDevice:" origin:0];
    [(ICDeviceManager *)self addSelectorToInterface:v5 selectorString:@"requestDeviceListWithOptions:reply:" origin:1];
    [(ICDeviceManager *)self addSelectorToInterface:v5 selectorString:@"openDevice:withReply:" origin:1];
    [(ICDeviceManager *)self addSelectorToInterface:v5 selectorString:@"closeDevice:withReply:" origin:1];
    [deviceManagerConnection setExportedInterface:v4];
    [deviceManagerConnection setRemoteObjectInterface:v5];
    [deviceManagerConnection setExportedObject:self];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__ICDeviceManager_openRemoteDeviceManager__block_invoke;
    v12 = &unk_1E829C870;
    selfCopy = self;
    selfCopy2 = self;
    selfCopy3 = self;
    [deviceManagerConnection setInvalidationHandler:&v9];
    invalidationHandler = [deviceManagerConnection invalidationHandler];
    [deviceManagerConnection setInterruptionHandler:invalidationHandler];

    [(ICDeviceManager *)selfCopy3 setManagerConnection:deviceManagerConnection];
    [deviceManagerConnection resume];
  }

  return deviceManagerConnection != 0;
}

void __42__ICDeviceManager_openRemoteDeviceManager__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) devices];
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        __ICOSLogCreate();
        v11 = @"Device ▼";
        if ([@"Device ▼" length] >= 0x15)
        {
          v12 = [@"Device ▼" substringWithRange:{0, 18}];
          v11 = [v12 stringByAppendingString:@".."];
        }

        v13 = MEMORY[0x1E696AEC0];
        v14 = *(a1 + 40);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v13 stringWithFormat:@"%@ - %@", v16, v10];

        v18 = *MEMORY[0x1E69A8B08];
        if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
        {
          v19 = v11;
          v20 = v18;
          v21 = [(__CFString *)v11 UTF8String];
          *buf = 136446466;
          v37 = v21;
          v38 = 2114;
          v39 = v17;
          _os_log_impl(&dword_1C6F19000, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v34 = @"ICDeviceHandle";
        v35 = v10;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        [v2 notifyRemovedDevice:v22];
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v7);
  }

  v23 = [v2 deviceListQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ICDeviceManager_openRemoteDeviceManager__block_invoke_258;
  block[3] = &unk_1E829C848;
  block[4] = v2;
  dispatch_sync(v23, block);

  v24 = drand48();
  v25 = dispatch_time(0, (v24 + 1000000000.0));
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __42__ICDeviceManager_openRemoteDeviceManager__block_invoke_2;
  v28[3] = &unk_1E829C848;
  v28[4] = v2;
  dispatch_after(v25, MEMORY[0x1E69E96A0], v28);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(ICDeviceManager *)self resumeOperations];
  [(NSOperationQueue *)self->_deviceOperationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_deviceOperationQueue waitUntilAllOperationsAreFinished];
  v3.receiver = self;
  v3.super_class = ICDeviceManager;
  [(ICDeviceManager *)&v3 dealloc];
}

- (id)deviceForConnection:(id)connection
{
  v22 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_devices allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v10];
        devConnection = [v11 devConnection];
        v13 = [devConnection isEqual:connectionCopy];

        if (v13)
        {
          v14 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v10];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)deviceForUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_devices allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v10];
        internalUUID = [v11 internalUUID];
        v13 = [internalUUID isEqual:dCopy];

        if (v13)
        {
          v14 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v10];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (int64_t)openDevice:(id)device contextInfo:(void *)info
{
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = device;
  v17[0] = @"params";
  v17[1] = @"info";
  v6 = MEMORY[0x1E696AD98];
  deviceCopy = device;
  v8 = [v6 numberWithUnsignedLong:info];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v10 = MEMORY[0x1E696AAE0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__ICDeviceManager_openDevice_contextInfo___block_invoke;
  v15[3] = &unk_1E829C870;
  v15[4] = self;
  v16 = v9;
  v11 = v9;
  v12 = [v10 blockOperationWithBlock:v15];
  [(ICDeviceManager *)self addInteractiveOperation:v12];

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)closeDevice:(id)device contextInfo:(void *)info
{
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = device;
  v17[0] = @"device";
  v17[1] = @"info";
  v6 = MEMORY[0x1E696AD98];
  deviceCopy = device;
  v8 = [v6 numberWithUnsignedLong:info];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v10 = MEMORY[0x1E696AAE0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__ICDeviceManager_closeDevice_contextInfo___block_invoke;
  v15[3] = &unk_1E829C870;
  v15[4] = self;
  v16 = v9;
  v11 = v9;
  v12 = [v10 blockOperationWithBlock:v15];
  [(ICDeviceManager *)self addInteractiveOperation:v12];

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)getFileThumbnail:(id)thumbnail fromDevice:(id)device withOptions:(id)options completion:(id)completion
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22[0] = @"file";
  v22[1] = @"device";
  v23[0] = thumbnail;
  v23[1] = device;
  v22[2] = @"cbBlock";
  optionsCopy = options;
  deviceCopy = device;
  thumbnailCopy = thumbnail;
  v13 = [completion copy];
  v22[3] = @"options";
  v23[2] = v13;
  v23[3] = optionsCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v15 = MEMORY[0x1E696AAE0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__ICDeviceManager_getFileThumbnail_fromDevice_withOptions_completion___block_invoke;
  v20[3] = &unk_1E829C870;
  v20[4] = self;
  v21 = v14;
  v16 = v14;
  v17 = [v15 blockOperationWithBlock:v20];
  [(ICDeviceManager *)self addInteractiveOperation:v17];

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)getFileMetadata:(id)metadata fromDevice:(id)device withOptions:(id)options completion:(id)completion
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = @"file";
  v20[1] = @"device";
  v21[0] = metadata;
  v21[1] = device;
  v20[2] = @"cbBlock";
  deviceCopy = device;
  metadataCopy = metadata;
  v11 = [completion copy];
  v21[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v13 = MEMORY[0x1E696AAE0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__ICDeviceManager_getFileMetadata_fromDevice_withOptions_completion___block_invoke;
  v18[3] = &unk_1E829C870;
  v18[4] = self;
  v19 = v12;
  v14 = v12;
  v15 = [v13 blockOperationWithBlock:v18];
  [(ICDeviceManager *)self addInteractiveOperation:v15];

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)getFileData:(id)data fromDevice:(id)device withOptions:(id)options completion:(id)completion
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22[0] = @"file";
  v22[1] = @"device";
  v23[0] = data;
  v23[1] = device;
  v22[2] = @"cbBlock";
  optionsCopy = options;
  deviceCopy = device;
  dataCopy = data;
  v13 = [completion copy];
  v22[3] = @"options";
  v23[2] = v13;
  v23[3] = optionsCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v15 = MEMORY[0x1E696AAE0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__ICDeviceManager_getFileData_fromDevice_withOptions_completion___block_invoke;
  v20[3] = &unk_1E829C870;
  v20[4] = self;
  v21 = v14;
  v16 = v14;
  v17 = [v15 blockOperationWithBlock:v20];
  [(ICDeviceManager *)self addInteractiveOperation:v17];

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)openSession:(id)session withOptions:(id)options completion:(id)completion
{
  v23[3] = *MEMORY[0x1E69E9840];
  optionsCopy = MEMORY[0x1E695E0F8];
  if (options)
  {
    optionsCopy = options;
  }

  v22[0] = @"device";
  v22[1] = @"options";
  v23[0] = session;
  v23[1] = optionsCopy;
  v22[2] = @"cbBlock";
  v10 = optionsCopy;
  optionsCopy2 = options;
  sessionCopy = session;
  v13 = [completion copy];
  v23[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v15 = MEMORY[0x1E696AAE0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__ICDeviceManager_openSession_withOptions_completion___block_invoke;
  v20[3] = &unk_1E829C870;
  v20[4] = self;
  v21 = v14;
  v16 = v14;
  v17 = [v15 blockOperationWithBlock:v20];
  [(ICDeviceManager *)self addInteractiveOperation:v17];

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)enumerateContent:(id)content withOptions:(id)options completion:(id)completion
{
  v23[3] = *MEMORY[0x1E69E9840];
  optionsCopy = MEMORY[0x1E695E0F8];
  if (options)
  {
    optionsCopy = options;
  }

  v22[0] = @"device";
  v22[1] = @"options";
  v23[0] = content;
  v23[1] = optionsCopy;
  v22[2] = @"cbBlock";
  v10 = optionsCopy;
  optionsCopy2 = options;
  contentCopy = content;
  v13 = [completion copy];
  v23[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v15 = MEMORY[0x1E696AAE0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__ICDeviceManager_enumerateContent_withOptions_completion___block_invoke;
  v20[3] = &unk_1E829C870;
  v20[4] = self;
  v21 = v14;
  v16 = v14;
  v17 = [v15 blockOperationWithBlock:v20];
  [(ICDeviceManager *)self addInteractiveOperation:v17];

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)closeSession:(id)session withOptions:(id)options completion:(id)completion
{
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = session;
  v17[0] = @"device";
  v17[1] = @"cbBlock";
  sessionCopy = session;
  v8 = [completion copy];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v10 = MEMORY[0x1E696AAE0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__ICDeviceManager_closeSession_withOptions_completion___block_invoke;
  v15[3] = &unk_1E829C870;
  v15[4] = self;
  v16 = v9;
  v11 = v9;
  v12 = [v10 blockOperationWithBlock:v15];
  [(ICDeviceManager *)self addInteractiveOperation:v12];

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)syncClock:(id)clock completion:(id)completion
{
  v17[2] = *MEMORY[0x1E69E9840];
  v17[0] = clock;
  v16[0] = @"device";
  v16[1] = @"cbBlock";
  clockCopy = clock;
  v7 = [completion copy];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = MEMORY[0x1E696AAE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__ICDeviceManager_syncClock_completion___block_invoke;
  v14[3] = &unk_1E829C870;
  v14[4] = self;
  v15 = v8;
  v10 = v8;
  v11 = [v9 blockOperationWithBlock:v14];
  [(ICDeviceManager *)self addInitiatedOperation:v11];

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)deleteFile:(id)file fromDevice:(id)device completion:(id)completion
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"file";
  v19[1] = @"device";
  v20[0] = file;
  v20[1] = device;
  v19[2] = @"cbBlock";
  deviceCopy = device;
  fileCopy = file;
  v10 = [completion copy];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = MEMORY[0x1E696AAE0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__ICDeviceManager_deleteFile_fromDevice_completion___block_invoke;
  v17[3] = &unk_1E829C870;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  v14 = [v12 blockOperationWithBlock:v17];
  [(ICDeviceManager *)self addInteractiveOperation:v14];

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)downloadFile:(id)file fromDevice:(id)device withOptions:(id)options completion:(id)completion
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22[0] = @"file";
  v22[1] = @"device";
  v23[0] = file;
  v23[1] = device;
  v23[2] = options;
  v22[2] = @"opts";
  v22[3] = @"cbBlock";
  optionsCopy = options;
  deviceCopy = device;
  fileCopy = file;
  v13 = [completion copy];
  v23[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v15 = MEMORY[0x1E696AAE0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__ICDeviceManager_downloadFile_fromDevice_withOptions_completion___block_invoke;
  v20[3] = &unk_1E829C870;
  v20[4] = self;
  v21 = v14;
  v16 = v14;
  v17 = [v15 blockOperationWithBlock:v20];
  [(ICDeviceManager *)self addInteractiveOperation:v17];

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)sendDevice:(id)device ptpCommand:(id)command andPayload:(id)payload completion:(id)completion
{
  deviceCopy = device;
  commandCopy = command;
  payloadCopy = payload;
  completionCopy = completion;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__ICDeviceManager_sendDevice_ptpCommand_andPayload_completion___block_invoke;
  v26[3] = &unk_1E829D468;
  v14 = deviceCopy;
  v27 = v14;
  v15 = commandCopy;
  v28 = v15;
  v16 = completionCopy;
  v31 = v16;
  v17 = payloadCopy;
  v29 = v17;
  selfCopy = self;
  v18 = MEMORY[0x1CCA59970](v26);
  v19 = v18;
  if (self->_controlAuthorizedOnce)
  {
    (*(v18 + 16))(v18);
  }

  else
  {
    v20 = +[ICPrefManager defaultAuthManager];
    getControlAuthorizationStatus = [v20 getControlAuthorizationStatus];
    v22 = [getControlAuthorizationStatus isEqualToString:@"ICAuthorizationStatusAuthorized"];

    if (v22)
    {
      v19[2](v19);
      [(ICDeviceManager *)self setControlAuthorizedOnce:1];
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __63__ICDeviceManager_sendDevice_ptpCommand_andPayload_completion___block_invoke_3;
      v24[3] = &unk_1E829D490;
      v24[4] = self;
      v25 = v19;
      [v20 requestControlAuthorizationShouldPrompt:1 completion:v24];
    }
  }

  return 0;
}

void __63__ICDeviceManager_sendDevice_ptpCommand_andPayload_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 64) copy];
  v6 = [v2 dictionaryWithObjectsAndKeys:{v3, @"device", v4, @"ICPTPCommandBuffer", v5, @"cbBlock", 0}];

  v7 = *(a1 + 48);
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"ICPTPDataBuffer"];
  }

  v8 = *(a1 + 56);
  v9 = MEMORY[0x1E696AAE0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__ICDeviceManager_sendDevice_ptpCommand_andPayload_completion___block_invoke_2;
  v12[3] = &unk_1E829C870;
  v12[4] = v8;
  v13 = v6;
  v10 = v6;
  v11 = [v9 blockOperationWithBlock:v12];
  [v8 addInteractiveOperation:v11];
}

void __63__ICDeviceManager_sendDevice_ptpCommand_andPayload_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  if ([v3 isEqualToString:@"ICAuthorizationStatusAuthorized"])
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setControlAuthorizedOnce:1];
  }
}

- (int64_t)registerDevice:(id)device forImageCaptureEventNotifications:(id)notifications
{
  deviceCopy = device;
  notificationsCopy = notifications;
  v8 = MEMORY[0x1E696AAE0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__ICDeviceManager_registerDevice_forImageCaptureEventNotifications___block_invoke;
  v13[3] = &unk_1E829CC30;
  v13[4] = self;
  v14 = deviceCopy;
  v15 = notificationsCopy;
  v9 = notificationsCopy;
  v10 = deviceCopy;
  v11 = [v8 blockOperationWithBlock:v13];
  [(ICDeviceManager *)self addInteractiveOperation:v11];

  return 0;
}

- (int64_t)unregisterDevice:(id)device forImageCaptureEventNotifications:(id)notifications
{
  deviceCopy = device;
  notificationsCopy = notifications;
  v8 = MEMORY[0x1E696AAE0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__ICDeviceManager_unregisterDevice_forImageCaptureEventNotifications___block_invoke;
  v13[3] = &unk_1E829CC30;
  v13[4] = self;
  v14 = deviceCopy;
  v15 = notificationsCopy;
  v9 = notificationsCopy;
  v10 = deviceCopy;
  v11 = [v8 blockOperationWithBlock:v13];
  [(ICDeviceManager *)self addInteractiveOperation:v11];

  return 0;
}

- (int64_t)ejectDevice:(id)device completion:(id)completion
{
  v17[2] = *MEMORY[0x1E69E9840];
  v17[0] = device;
  v16[0] = @"device";
  v16[1] = @"cbBlock";
  deviceCopy = device;
  v7 = [completion copy];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = MEMORY[0x1E696AAE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__ICDeviceManager_ejectDevice_completion___block_invoke;
  v14[3] = &unk_1E829C870;
  v14[4] = self;
  v15 = v8;
  v10 = v8;
  v11 = [v9 blockOperationWithBlock:v14];
  [(ICDeviceManager *)self addInteractiveOperation:v11];

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)getSecurityScopedURL:(id)l fromDevice:(id)device completion:(id)completion
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"file";
  v19[1] = @"device";
  v20[0] = l;
  v20[1] = device;
  v19[2] = @"cbBlock";
  deviceCopy = device;
  lCopy = l;
  v10 = [completion copy];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = MEMORY[0x1E696AAE0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__ICDeviceManager_getSecurityScopedURL_fromDevice_completion___block_invoke;
  v17[3] = &unk_1E829C870;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  v14 = [v12 blockOperationWithBlock:v17];
  [(ICDeviceManager *)self addInteractiveOperation:v14];

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)refreshObjectHandleInfo:(id)info fromDevice:(id)device completion:(id)completion
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"file";
  v19[1] = @"device";
  v20[0] = info;
  v20[1] = device;
  v19[2] = @"cbBlock";
  deviceCopy = device;
  infoCopy = info;
  v10 = [completion copy];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = MEMORY[0x1E696AAE0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__ICDeviceManager_refreshObjectHandleInfo_fromDevice_completion___block_invoke;
  v17[3] = &unk_1E829C870;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  v14 = [v12 blockOperationWithBlock:v17];
  [(ICDeviceManager *)self addInteractiveOperation:v14];

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)getFingerprint:(id)fingerprint fromDevice:(id)device completion:(id)completion
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"file";
  v19[1] = @"device";
  v20[0] = fingerprint;
  v20[1] = device;
  v19[2] = @"cbBlock";
  deviceCopy = device;
  fingerprintCopy = fingerprint;
  v10 = [completion copy];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = MEMORY[0x1E696AAE0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__ICDeviceManager_getFingerprint_fromDevice_completion___block_invoke;
  v17[3] = &unk_1E829C870;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  v14 = [v12 blockOperationWithBlock:v17];
  [(ICDeviceManager *)self addInteractiveOperation:v14];

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)postCommandCompletionNotification:(id)notification
{
  notificationCopy = notification;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICDeviceManager_postCommandCompletionNotification___block_invoke;
  block[3] = &unk_1E829C848;
  v6 = notificationCopy;
  v4 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__ICDeviceManager_postCommandCompletionNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICCommandCompletionNotification" object:0 userInfo:*(a1 + 32)];
}

- (void)postNotification:(id)notification
{
  v23 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  __ICOSLogCreate();
  v5 = @"post";
  if ([@"post" length] >= 0x15)
  {
    v6 = [@"post" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  notificationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Device Posted: %@", notificationCopy];
  v8 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v21 = 2114;
    v22 = notificationCopy;
    _os_log_impl(&dword_1C6F19000, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [notificationCopy mutableCopy];
  v12 = [v11 objectForKeyedSubscript:@"ICInternalDeviceUUID"];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v12];
      [v11 setObject:v14 forKeyedSubscript:@"device"];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ICDeviceManager_postNotification___block_invoke;
  block[3] = &unk_1E829C848;
  v18 = v11;
  v15 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v16 = *MEMORY[0x1E69E9840];
}

void __36__ICDeviceManager_postNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICEventNotification" object:0 userInfo:*(a1 + 32)];
}

- (void)addInitiatedOperation:(id)operation
{
  operationCopy = operation;
  [operationCopy setQueuePriority:0];
  [operationCopy setQualityOfService:25];
  [(NSOperationQueue *)self->_deviceOperationQueue addOperation:operationCopy];
}

- (void)addInteractiveOperation:(id)operation
{
  operationCopy = operation;
  [operationCopy setQueuePriority:4];
  [operationCopy setQualityOfService:33];
  [(NSOperationQueue *)self->_deviceOperationQueue addOperation:operationCopy];
}

- (void)suspendOperations
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_deviceOperationQueueLock);
  if (!self->_deviceOperationQueueSuspended)
  {
    __ICOSLogCreate();
    v3 = @"Restriction";
    if ([@"Restriction" length] >= 0x15)
    {
      v4 = [@"Restriction" substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Removing device access: backgrounded"];
    v6 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      v8 = v6;
      v10 = 136446466;
      uTF8String = [(__CFString *)v3 UTF8String];
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1C6F19000, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v10, 0x16u);
    }

    self->_deviceOperationQueueSuspended = 1;
    [(NSOperationQueue *)self->_deviceOperationQueue setSuspended:1];
  }

  os_unfair_lock_unlock(&self->_deviceOperationQueueLock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)resumeOperations
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_deviceOperationQueueLock);
  if (self->_deviceOperationQueueSuspended)
  {
    __ICOSLogCreate();
    v3 = @"Restriction";
    if ([@"Restriction" length] >= 0x15)
    {
      v4 = [@"Restriction" substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Device access allowed: foreground"];
    v6 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      v8 = v6;
      v10 = 136446466;
      uTF8String = [(__CFString *)v3 UTF8String];
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1C6F19000, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v10, 0x16u);
    }

    self->_deviceOperationQueueSuspended = 0;
    [(NSOperationQueue *)self->_deviceOperationQueue setSuspended:0];
  }

  os_unfair_lock_unlock(&self->_deviceOperationQueueLock);
  v9 = *MEMORY[0x1E69E9840];
}

@end
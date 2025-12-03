@interface PTPCameraDeviceManager
- (PTPCameraDeviceManager)init;
- (id)deviceManagerConnection;
- (int64_t)checkFile:(id)file andDevice:(id)device;
- (void)deleteFileImp:(id)imp;
- (void)downloadFileImp:(id)imp;
- (void)ejectImp:(id)imp;
- (void)executeCompletionBlockWithErrorCode:(int64_t)code info:(id)info file:(id)file completionDict:(id)dict completionBlk:(id)blk;
- (void)getFileDataImp:(id)imp;
- (void)getFileMetadataImp:(id)imp;
- (void)getFileThumbnailImp:(id)imp;
- (void)getFingerprintImp:(id)imp;
- (void)getSecurityScopedURLImp:(id)imp;
- (void)handleEventImp:(id)imp;
- (void)notifyAddedItems:(id)items;
- (void)notifyPtpEvent:(id)event;
- (void)notifyRemovedItems:(id)items;
- (void)notifyStatus:(id)status;
- (void)notifyUpdatedItems:(id)items;
- (void)refreshObjectHandleInfoImp:(id)imp;
- (void)registerDevice:(id)device forImageCaptureEventNotificationsImp:(id)imp;
- (void)sendDevicePTPCommandImp:(id)imp;
- (void)startDeviceWithHandle:(id)handle;
- (void)syncClockImp:(id)imp;
- (void)unregisterDevice:(id)device forImageCaptureEventNotificationsImp:(id)imp;
@end

@implementation PTPCameraDeviceManager

- (PTPCameraDeviceManager)init
{
  v3.receiver = self;
  v3.super_class = PTPCameraDeviceManager;
  return [(ICDeviceManager *)&v3 init];
}

- (void)notifyAddedItems:(id)items
{
  v32 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = [(ICDeviceManager *)self deviceForConnection:currentConnection];
  v6 = v23[5];
  if (!v6)
  {
    __ICOSLogCreate();
    if ([@"error" length] < 0x15)
    {
      v9 = @"error";
    }

    else
    {
      v10 = [@"error" substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the device is nil? how?"];
    v12 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      uTF8String = [(__CFString *)v9 UTF8String];
      *buf = 136446466;
      v29 = uTF8String;
      v30 = 2114;
      v31 = v11;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if ([v6 hasOpenSession])
  {
    v7 = MEMORY[0x1E696AAE0];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __43__PTPCameraDeviceManager_notifyAddedItems___block_invoke;
    v19 = &unk_1E829CAC0;
    v20 = itemsCopy;
    v21 = &v22;
    v8 = [v7 blockOperationWithBlock:&v16];
    [(ICDeviceManager *)self addInteractiveOperation:v8, v16, v17, v18, v19];

    v9 = v20;
LABEL_10:
  }

  _Block_object_dispose(&v22, 8);

  v15 = *MEMORY[0x1E69E9840];
}

void __43__PTPCameraDeviceManager_notifyAddedItems___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICCameraItemProxyArray"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = *MEMORY[0x1E69A8AD0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [*(*(*(a1 + 40) + 8) + 40) cameraFolderWithObjectID:{objc_msgSend(v8, "parentObjectHandle")}];
        v10 = [v8 type];
        v11 = *(*(*(a1 + 40) + 8) + 40);
        v12 = [v8 objectHandle];
        if (v10 == v6)
        {
          v13 = [v11 cameraFolderWithObjectID:v12];

          if (v13)
          {
            goto LABEL_11;
          }

          v14 = [[ICCameraFolder alloc] initWithProxy:v8 parentFolder:v9 device:*(*(*(a1 + 40) + 8) + 40)];
          if (v9)
          {
            v15 = v9;
            goto LABEL_17;
          }

          if ([v8 topLevel])
          {
            v15 = *(*(*(a1 + 40) + 8) + 40);
LABEL_17:
            [v15 addFolder:v14];
          }

          [*(*(*(a1 + 40) + 8) + 40) addCameraFolderToIndex:v14];

          goto LABEL_19;
        }

        v16 = [v11 cameraFileWithObjectID:v12];

        if (v16)
        {
LABEL_11:
          [*(*(*(a1 + 40) + 8) + 40) setPreviouslyIndexed:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "previouslyIndexed") + 1}];
          goto LABEL_19;
        }

        v17 = [[ICCameraFile alloc] initWithProxy:v8 parentFolder:v9 device:*(*(*(a1 + 40) + 8) + 40)];
        if (v9)
        {
          [v9 addFile:v17];
        }

        [*(*(*(a1 + 40) + 8) + 40) addCameraFileToIndex:v17];
        [v19 addObject:v17];

LABEL_19:
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  [*(*(*(a1 + 40) + 8) + 40) addItems:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)notifyRemovedItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = [(ICDeviceManager *)self deviceForConnection:currentConnection];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __45__PTPCameraDeviceManager_notifyRemovedItems___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = itemsCopy;
    v20 = &v21;
    v7 = [v6 blockOperationWithBlock:&v15];
    [(ICDeviceManager *)self addInteractiveOperation:v7, v15, v16, v17, v18];

    v8 = v19;
  }

  else
  {
    __ICOSLogCreate();
    if ([@"error" length] < 0x15)
    {
      v8 = @"error";
    }

    else
    {
      v9 = [@"error" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the device is nil? how?"];
    v11 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      uTF8String = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = uTF8String;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __45__PTPCameraDeviceManager_notifyRemovedItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICObjectIDArray"];
  if (v2)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeItems:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)notifyUpdatedItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = [(ICDeviceManager *)self deviceForConnection:currentConnection];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __45__PTPCameraDeviceManager_notifyUpdatedItems___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = itemsCopy;
    v20 = &v21;
    v7 = [v6 blockOperationWithBlock:&v15];
    [(ICDeviceManager *)self addInteractiveOperation:v7, v15, v16, v17, v18];

    v8 = v19;
  }

  else
  {
    __ICOSLogCreate();
    if ([@"error" length] < 0x15)
    {
      v8 = @"error";
    }

    else
    {
      v9 = [@"error" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the device is nil? how?"];
    v11 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      uTF8String = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = uTF8String;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __45__PTPCameraDeviceManager_notifyUpdatedItems___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICObjectInfoUpdate"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v2 objectForKeyedSubscript:v7];
        v9 = [*(*(*(a1 + 40) + 8) + 40) cameraFileWithObjectID:{objc_msgSend(v7, "unsignedLongValue")}];
        v10 = v9;
        if (v9)
        {
          [v9 handleObjectInfoUpdate:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyPtpEvent:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = [(ICDeviceManager *)self deviceForConnection:currentConnection];
  if (!v23[5])
  {
    __ICOSLogCreate();
    if ([@"error" length] < 0x15)
    {
      v7 = @"error";
    }

    else
    {
      v11 = [@"error" substringWithRange:{0, 18}];
      v7 = [v11 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the device is nil? how?"];
    v12 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v7;
      uTF8String = [(__CFString *)v7 UTF8String];
      *buf = 136446466;
      v29 = uTF8String;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = [eventCopy objectForKeyedSubscript:@"ICPTPEvent"];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696AAE0];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __41__PTPCameraDeviceManager_notifyPtpEvent___block_invoke;
    v19 = &unk_1E829CB80;
    v21 = &v22;
    v7 = v6;
    v20 = v7;
    v9 = [v8 blockOperationWithBlock:&v16];
    [(ICDeviceManager *)self addInteractiveOperation:v9, v16, v17, v18, v19];

    v10 = v20;
LABEL_10:
  }

  _Block_object_dispose(&v22, 8);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)notifyStatus:(id)status
{
  v31 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = [(ICDeviceManager *)self deviceForConnection:currentConnection];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __39__PTPCameraDeviceManager_notifyStatus___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = statusCopy;
    v20 = &v21;
    v7 = [v6 blockOperationWithBlock:&v15];
    [(ICDeviceManager *)self addInteractiveOperation:v7, v15, v16, v17, v18];

    v8 = v19;
  }

  else
  {
    __ICOSLogCreate();
    if ([@"error" length] < 0x15)
    {
      v8 = @"error";
    }

    else
    {
      v9 = [@"error" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the device is nil? how?"];
    v11 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      uTF8String = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = uTF8String;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __39__PTPCameraDeviceManager_notifyStatus___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(*(*(result + 40) + 8) + 40) handleStatusNotification:?];
  }

  return result;
}

uint64_t __71__PTPCameraDeviceManager_addSelectorToInterface_selectorString_origin___block_invoke()
{
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
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
  addSelectorToInterface_selectorString_origin__incomingClasses_0 = [v12 initWithObjects:{v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)deviceManagerConnection
{
  managerConnection = [(ICDeviceManager *)self managerConnection];

  if (!managerConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ptpcamerad" options:0];
    [(ICDeviceManager *)self setManagerConnection:v4];
  }

  return [(ICDeviceManager *)self managerConnection];
}

- (void)startDeviceWithHandle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  devices = [(ICDeviceManager *)self devices];
  v6 = [devices objectForKeyedSubscript:handleCopy];

  if (v6)
  {
    __ICOSLogCreate();
    v7 = @"device";
    if ([@"device" length] >= 0x15)
    {
      v8 = [@"device" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    handleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%12s : %@", "starting", handleCopy];
    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      uTF8String = [(__CFString *)v7 UTF8String];
      v21 = 2114;
      v22 = handleCopy;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    remoteCamera = [v6 remoteCamera];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__PTPCameraDeviceManager_startDeviceWithHandle___block_invoke;
    v15[3] = &unk_1E829CBA8;
    v16 = v6;
    selfCopy = self;
    v18 = handleCopy;
    [remoteCamera requestStartUsingDeviceWithReply:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __48__PTPCameraDeviceManager_startDeviceWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"ICDeviceName"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"ICDeviceAccessRestrictedAppleDevice"];
    [*(a1 + 32) setAccessRestrictedAppleDevice:{objc_msgSend(v5, "BOOLValue")}];

    v6 = [v3 objectForKeyedSubscript:@"ICDeviceLocked"];
    [*(a1 + 32) setLocked:{objc_msgSend(v6, "BOOLValue")}];

    v7 = [v3 objectForKeyedSubscript:@"ICDeviceAllowsSyncingClock"];
    [*(a1 + 32) setAllowsSyncingClock:{objc_msgSend(v7, "BOOLValue")}];

    v8 = [v3 objectForKeyedSubscript:@"ICDeviceEjectable"];
    [*(a1 + 32) setEjectable:{objc_msgSend(v8, "BOOLValue")}];

    v9 = [v3 objectForKeyedSubscript:@"ICDeviceName"];
    [*(a1 + 32) setName:v9];

    v10 = [v3 objectForKeyedSubscript:@"ICDeviceType"];
    [*(a1 + 32) setProductType:v10];

    v11 = [v3 objectForKeyedSubscript:@"ICDeviceProductKind"];
    [*(a1 + 32) setProductKind:v11];

    v12 = [v3 objectForKeyedSubscript:@"ICDeviceTransportType"];
    [*(a1 + 32) setTransportType:v12];

    v13 = [v3 objectForKeyedSubscript:@"ICDeviceUSBLocationID"];
    [*(a1 + 32) setUsbLocationID:{objc_msgSend(v13, "intValue")}];

    v14 = [v3 objectForKeyedSubscript:@"ICDeviceUSBProductID"];
    [*(a1 + 32) setUsbProductID:{objc_msgSend(v14, "intValue")}];

    v15 = [v3 objectForKeyedSubscript:@"ICDeviceUSBVendorID"];
    [*(a1 + 32) setUsbVendorID:{objc_msgSend(v15, "intValue")}];

    v16 = [v3 objectForKeyedSubscript:@"ICInternalDeviceUUID"];
    [*(a1 + 32) setUUIDString:v16];

    v17 = [v3 objectForKeyedSubscript:@"ICInternalDeviceUUID"];
    [*(a1 + 32) setPersistentIDString:v17];

    v18 = [v3 objectForKeyedSubscript:@"ICDeviceSerialNumberString"];
    [*(a1 + 32) setSerialNumberString:v18];

    v19 = [v3 objectForKeyedSubscript:@"ICDeviceSystemSymbolName"];
    [*(a1 + 32) setSystemSymbolName:v19];

    [*(a1 + 32) setLocationDescription:@"ICDeviceLocationDescriptionUSB"];
    v20 = *(a1 + 32);
    v21 = [v3 objectForKeyedSubscript:@"ICDeviceiCloudPhotosEnabled"];
    [v20 setICloudPhotosEnabled:{objc_msgSend(v21, "BOOLValue")}];

    v22 = *(a1 + 32);
    v23 = [v3 objectForKeyedSubscript:@"ICDeviceiCloudOptimizeStorageState"];
    [v22 setICloudPhotosOptimizeStorageState:{objc_msgSend(v23, "unsignedIntValue")}];

    v24 = [v3 objectForKeyedSubscript:@"ICDeviceSerialNumberString"];

    if (v24)
    {
      v25 = [v3 objectForKeyedSubscript:@"ICDeviceSerialNumberString"];
      [*(a1 + 32) setSerialNumberString:v25];
    }

    v26 = [v3 objectForKeyedSubscript:@"ICDeviceCapabilities"];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = [(__CFString *)v26 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        v30 = 0;
        do
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(a1 + 32) addCapability:*(*(&v46 + 1) + 8 * v30++)];
        }

        while (v28 != v30);
        v28 = [(__CFString *)v26 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v28);
    }

    v31 = [v3 objectForKeyedSubscript:@"ICMobileDeviceProperties"];
    v32 = v31;
    if (v31)
    {
      v33 = *(a1 + 32);
      v56 = @"mobdevProps";
      v57 = v31;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      [v33 updateAppleProperties:v34];
    }

    [*(a1 + 32) resetAccessRestriction];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PTPCameraDeviceManager_startDeviceWithHandle___block_invoke_2;
    block[3] = &unk_1E829C848;
    v45 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v35 = *(a1 + 40);
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:0x%x@", @"ICDeviceOperationQueue", objc_msgSend(*(a1 + 32), "usbLocationID")];
    [v35 setDeviceOperationQueueName:v36];

    v37 = *(a1 + 32);
    v54[0] = @"device";
    v54[1] = @"type";
    v55[0] = v37;
    v55[1] = @"ICDeviceAdded";
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [*(a1 + 40) performSelectorOnMainThread:sel_postNotification_ withObject:v38 waitUntilDone:0];
  }

  else
  {
    __ICOSLogCreate();
    v26 = @"device";
    if ([@"device" length] >= 0x15)
    {
      v39 = [@"device" substringWithRange:{0, 18}];
      v26 = [v39 stringByAppendingString:@".."];
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%12s : %@", "failed to start", *(a1 + 48)];
    v40 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v41 = v26;
      v42 = v40;
      *buf = 136446466;
      v51 = [(__CFString *)v26 UTF8String];
      v52 = 2114;
      v53 = v32;
      _os_log_impl(&dword_1C6F19000, v42, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)syncClockImp:(id)imp
{
  impCopy = imp;
  v9 = [impCopy objectForKeyedSubscript:@"device"];
  v4 = [impCopy objectForKeyedSubscript:@"info"];
  v5 = [impCopy objectForKeyedSubscript:@"cbBlock"];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v9, @"device", 0}];
  v7 = v6;
  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"info"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:-9922];
  [v7 setObject:v8 forKeyedSubscript:@"errCode"];

  if (v5)
  {
    (v5)[2](v5, v9, v7);
  }
}

- (void)getFileThumbnailImp:(id)imp
{
  impCopy = imp;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -9922;
  v5 = [impCopy objectForKeyedSubscript:@"file"];
  v6 = [impCopy objectForKeyedSubscript:@"info"];
  v7 = [impCopy objectForKeyedSubscript:@"device"];
  v8 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v9 = [impCopy objectForKeyedSubscript:@"options"];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696E100]];

  v11 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v7, @"device", v5, @"file", 0}];
  v12 = &unk_1F4697210;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [(PTPCameraDeviceManager *)self checkFile:v5 andDevice:v7];
  v26[3] = v14;
  if (v14)
  {
    [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v14 info:v6 file:v5 completionDict:v11 completionBlk:v8];
  }

  else
  {
    v15 = MEMORY[0x1E696AAE0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__PTPCameraDeviceManager_getFileThumbnailImp___block_invoke;
    v17[3] = &unk_1E829C9F8;
    v24 = &v25;
    v17[4] = self;
    v18 = v6;
    v19 = v5;
    v20 = v11;
    v23 = v8;
    v21 = v7;
    v22 = v13;
    v16 = [v15 blockOperationWithBlock:v17];
    [(ICDeviceManager *)self addInteractiveOperation:v16];
  }

  _Block_object_dispose(&v25, 8);
}

void __46__PTPCameraDeviceManager_getFileThumbnailImp___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__PTPCameraDeviceManager_getFileThumbnailImp___block_invoke_2;
  v22[3] = &unk_1E829C9A8;
  v26 = *(a1 + 88);
  v16 = *(a1 + 32);
  v2 = *(&v16 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v23 = v16;
  v24 = v5;
  v25 = *(a1 + 80);
  v6 = MEMORY[0x1CCA59970](v22);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v9 = *(a1 + 72);
    v27 = *MEMORY[0x1E696E100];
    v28[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__PTPCameraDeviceManager_getFileThumbnailImp___block_invoke_3;
    v18[3] = &unk_1E829C9D0;
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    v17 = *(a1 + 32);
    v13 = *(&v17 + 1);
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v19 = v14;
    v20 = v17;
    v21 = *(a1 + 80);
    [v7 requestThumbnailDataForObjectHandle:v8 options:v10 withReply:v18];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __46__PTPCameraDeviceManager_getFileThumbnailImp___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"thumb"];
    if (v5)
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:@"thumb"];
      v6 = 0;
    }

    else
    {
      v6 = -20097;
    }

    v7 = [v4 objectForKeyedSubscript:@"metadata"];
    v8 = [*(a1 + 40) metadata];
    if (v8)
    {
    }

    else if ([v7 count])
    {
      __ICOSLogCreate();
      if (__ICLogTypeEnabled())
      {
        v9 = @"meta";
        if ([@"meta" length] >= 0x15)
        {
          v10 = [@"meta" substringWithRange:{0, 18}];
          v9 = [v10 stringByAppendingString:@".."];
        }

        v11 = MEMORY[0x1E696AEC0];
        v12 = [*(a1 + 40) name];
        v13 = [v11 stringWithFormat:@"Set Metadata ---> thumbnail %@", v12];

        v14 = *MEMORY[0x1E69A8B08];
        if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
        {
          v15 = v9;
          v16 = v14;
          *buf = 136446466;
          v22 = [(__CFString *)v9 UTF8String];
          v23 = 2114;
          v24 = v13;
          _os_log_impl(&dword_1C6F19000, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      [*(a1 + 40) setMetadata:v7];
    }

    v17 = [*(a1 + 40) metadata];
    v18 = *MEMORY[0x1E696DE78];
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];

    if (v19)
    {
      [*(a1 + 32) setObject:v19 forKeyedSubscript:v18];
    }
  }

  else
  {
    v6 = -20097;
  }

  [*(a1 + 48) executeCompletionBlockWithErrorCode:v6 info:*(a1 + 56) file:*(a1 + 40) completionDict:*(a1 + 32) completionBlk:*(a1 + 64)];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)getFileMetadataImp:(id)imp
{
  impCopy = imp;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"info"];
  v7 = [impCopy objectForKeyedSubscript:@"file"];
  v8 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", v7, @"file", 0}];
  v10 = [(PTPCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v21[3] = v10;
  if (v10)
  {
    [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v6 file:v7 completionDict:v9 completionBlk:v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AAE0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PTPCameraDeviceManager_getFileMetadataImp___block_invoke;
    v13[3] = &unk_1E829CA20;
    v19 = &v20;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    v16 = v9;
    v18 = v8;
    v17 = v5;
    v12 = [v11 blockOperationWithBlock:v13];
    [(ICDeviceManager *)self addInteractiveOperation:v12];
  }

  _Block_object_dispose(&v20, 8);
}

void __45__PTPCameraDeviceManager_getFileMetadataImp___block_invoke(uint64_t a1)
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__PTPCameraDeviceManager_getFileMetadataImp___block_invoke_2;
  v18[3] = &unk_1E829C9A8;
  v22 = *(a1 + 80);
  v12 = *(a1 + 32);
  v2 = v12.i64[1];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v19 = v12;
  v20 = v5;
  v21 = *(a1 + 72);
  v6 = MEMORY[0x1CCA59970](v18);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__PTPCameraDeviceManager_getFileMetadataImp___block_invoke_3;
    v14[3] = &unk_1E829C9D0;
    v9 = *(a1 + 56);
    v13 = *(a1 + 32);
    v10 = v13.i64[1];
    v11.i64[0] = *(a1 + 48);
    v11.i64[1] = v9;
    v16 = vextq_s8(v13, v11, 8uLL);
    v15 = vextq_s8(v11, v13, 8uLL);
    v17 = *(a1 + 72);
    [v7 requestMetadataForObjectHandle:v8 options:0 withReply:v14];
  }
}

uint64_t __45__PTPCameraDeviceManager_getFileMetadataImp___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:@"metadata"];
    v3 = 0;
  }

  else
  {
    v3 = -20147;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 64);

  return [v6 executeCompletionBlockWithErrorCode:v3 info:v4 file:v5 completionDict:v7 completionBlk:v8];
}

- (void)getFileDataImp:(id)imp
{
  impCopy = imp;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v21 = [impCopy objectForKeyedSubscript:@"info"];
  v5 = [impCopy objectForKeyedSubscript:@"file"];
  v6 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v7 = [impCopy objectForKeyedSubscript:@"device"];
  v8 = [impCopy objectForKeyedSubscript:@"options"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v7, @"device", 0}];
  v10 = [(PTPCameraDeviceManager *)self checkFile:v5 andDevice:v7];
  v31[3] = v10;
  if (v10)
  {
    [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v21 file:v5 completionDict:v9 completionBlk:v6];
  }

  else
  {
    v11 = [v8 objectForKeyedSubscript:@"ICReadOffset"];
    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:@"ICReadOffset"];
      unsignedLongLongValue = [v12 unsignedLongLongValue];

      v20 = unsignedLongLongValue != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = 0;
    }

    v14 = [v8 objectForKeyedSubscript:@"ICReadLength"];
    if (v14 && (([v8 objectForKeyedSubscript:@"ICReadLength"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "unsignedLongLongValue"), v15, v14, v16 != 0x7FFFFFFFFFFFFFFFLL) ? (v17 = v20) : (v17 = 0), v17))
    {
      v18 = MEMORY[0x1E696AAE0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __41__PTPCameraDeviceManager_getFileDataImp___block_invoke;
      v22[3] = &unk_1E829C9F8;
      v29 = &v30;
      v22[4] = self;
      v23 = v21;
      v24 = v5;
      v25 = v9;
      v28 = v6;
      v26 = v7;
      v27 = v8;
      v19 = [v18 blockOperationWithBlock:v22];
      [(ICDeviceManager *)self addInteractiveOperation:v19];
    }

    else
    {
      [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:-21449 info:v21 file:v5 completionDict:v9 completionBlk:v6];
    }
  }

  _Block_object_dispose(&v30, 8);
}

void __41__PTPCameraDeviceManager_getFileDataImp___block_invoke(uint64_t a1)
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__PTPCameraDeviceManager_getFileDataImp___block_invoke_2;
  v18[3] = &unk_1E829C9A8;
  v22 = *(a1 + 88);
  v12 = *(a1 + 32);
  v2 = *(&v12 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v19 = v12;
  v20 = v5;
  v21 = *(a1 + 80);
  v6 = MEMORY[0x1CCA59970](v18);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v9 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__PTPCameraDeviceManager_getFileDataImp___block_invoke_3;
    v13[3] = &unk_1E829CA48;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v17 = *(a1 + 88);
    v13[4] = v10;
    v14 = v11;
    v15 = *(a1 + 48);
    v16 = *(a1 + 80);
    [v7 requestReadDataFromObjectHandle:v8 options:v9 withReply:v13];
  }
}

void __41__PTPCameraDeviceManager_getFileDataImp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"rc"];
    *(*(*(a1 + 64) + 8) + 24) = [v4 intValue];

    v5 = [v7 objectForKeyedSubscript:@"ICReadData"];
    v6 = -21448;
    if (v5)
    {
      v6 = 0;
    }

    *(*(*(a1 + 64) + 8) + 24) = v6;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = -21447;
  }

  [*(a1 + 32) executeCompletionBlockWithErrorCode:*(*(*(a1 + 64) + 8) + 24) info:*(a1 + 40) file:*(a1 + 48) completionDict:v7 completionBlk:*(a1 + 56)];
}

- (void)downloadFileImp:(id)imp
{
  impCopy = imp;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"info"];
  v7 = [impCopy objectForKeyedSubscript:@"file"];
  v8 = MEMORY[0x1E695DF90];
  v9 = [impCopy objectForKeyedSubscript:@"opts"];
  v10 = [v8 dictionaryWithDictionary:v9];

  v11 = [v10 objectForKeyedSubscript:@"ICDownloadsDirectoryURL"];
  path = [v11 path];

  v13 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  v15 = [(PTPCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v16 = v28;
  v28[3] = v15;
  if (!v15)
  {
    if (path)
    {
      [v10 setObject:path forKeyedSubscript:@"ICDownloadsDirectoryURL"];
      v17 = MEMORY[0x1E696AAE0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __42__PTPCameraDeviceManager_downloadFileImp___block_invoke;
      v19[3] = &unk_1E829C9F8;
      v26 = &v27;
      v19[4] = self;
      v20 = v6;
      v21 = v7;
      v22 = v14;
      v25 = v13;
      v23 = v5;
      v24 = v10;
      v18 = [v17 blockOperationWithBlock:v19];
      [(ICDeviceManager *)self addInteractiveOperation:v18];

      goto LABEL_5;
    }

    v15 = -21100;
    v16[3] = -21100;
  }

  [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v15 info:v6 file:v7 completionDict:v14 completionBlk:v13];
LABEL_5:

  _Block_object_dispose(&v27, 8);
}

void __42__PTPCameraDeviceManager_downloadFileImp___block_invoke(uint64_t a1)
{
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__PTPCameraDeviceManager_downloadFileImp___block_invoke_2;
  v20[3] = &unk_1E829C9A8;
  v24 = *(a1 + 88);
  v14 = *(a1 + 32);
  v2 = *(&v14 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v21 = v14;
  v22 = v5;
  v23 = *(a1 + 80);
  v6 = MEMORY[0x1CCA59970](v20);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v9 = *(a1 + 72);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42__PTPCameraDeviceManager_downloadFileImp___block_invoke_3;
    v16[3] = &unk_1E829C9D0;
    v15 = *(a1 + 32);
    v10 = *(&v15 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v17 = v15;
    v18 = v13;
    v19 = *(a1 + 80);
    [v7 requestDownloadObjectHandle:v8 options:v9 withReply:v16];
  }
}

uint64_t __42__PTPCameraDeviceManager_downloadFileImp___block_invoke_3(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"rc"];
  v4 = [v3 intValue];

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];

  return [v5 executeCompletionBlockWithErrorCode:v4 info:v6 file:v7 completionDict:v8 completionBlk:v9];
}

- (void)deleteFileImp:(id)imp
{
  impCopy = imp;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -9922;
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"info"];
  v7 = [impCopy objectForKeyedSubscript:@"file"];
  v8 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v9 = MEMORY[0x1E695DF90];
  v10 = [impCopy objectForKeyedSubscript:@"opts"];
  v11 = [v9 dictionaryWithDictionary:v10];

  v12 = v5;
  v13 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", v7, @"file", 0}];
  v14 = [(PTPCameraDeviceManager *)self checkFile:v7 andDevice:v12];
  v27[3] = v14;
  if (v14)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    [v13 setObject:v15 forKeyedSubscript:@"errCode"];

    [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v27[3] info:v6 file:v7 completionDict:v13 completionBlk:v8];
  }

  else
  {
    v16 = MEMORY[0x1E696AAE0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__PTPCameraDeviceManager_deleteFileImp___block_invoke;
    v18[3] = &unk_1E829C9F8;
    v25 = &v26;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    v21 = v13;
    v24 = v8;
    v22 = v12;
    v23 = v11;
    v17 = [v16 blockOperationWithBlock:v18];
    [(ICDeviceManager *)self addInteractiveOperation:v17];
  }

  _Block_object_dispose(&v26, 8);
}

void __40__PTPCameraDeviceManager_deleteFileImp___block_invoke(uint64_t a1)
{
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__PTPCameraDeviceManager_deleteFileImp___block_invoke_2;
  v20[3] = &unk_1E829C9A8;
  v24 = *(a1 + 88);
  v14 = *(a1 + 32);
  v2 = *(&v14 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v21 = v14;
  v22 = v5;
  v23 = *(a1 + 80);
  v6 = MEMORY[0x1CCA59970](v20);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v9 = *(a1 + 72);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__PTPCameraDeviceManager_deleteFileImp___block_invoke_3;
    v16[3] = &unk_1E829C9D0;
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = *(a1 + 32);
    v15 = v10;
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v17 = v15;
    v18 = v13;
    v19 = *(a1 + 80);
    [v7 requestDeleteObjectHandle:v8 options:v9 withReply:v16];
  }
}

uint64_t __40__PTPCameraDeviceManager_deleteFileImp___block_invoke_3(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"errCode"];
  v4 = [v3 intValue];

  if (!v4)
  {
    v12 = @"ICObjectIDArray";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "objectID")}];
    v11 = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v13[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    [*(a1 + 40) notifyRemovedItems:v7];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [*(a1 + 48) setObject:v8 forKeyedSubscript:@"errCode"];

  result = [*(a1 + 40) executeCompletionBlockWithErrorCode:v4 info:*(a1 + 56) file:*(a1 + 32) completionDict:*(a1 + 48) completionBlk:*(a1 + 64)];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendDevicePTPCommandImp:(id)imp
{
  impCopy = imp;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -9922;
  v5 = [impCopy objectForKeyedSubscript:@"info"];
  v6 = [impCopy objectForKeyedSubscript:@"device"];
  v7 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v6, @"device", 0}];
  v9 = [impCopy objectForKeyedSubscript:@"ICPTPCommandBuffer"];
  v10 = [impCopy objectForKeyedSubscript:@"ICPTPDataBuffer"];
  if (v9)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__PTPCameraDeviceManager_sendDevicePTPCommandImp___block_invoke;
    v22[3] = &unk_1E829CBD0;
    v26 = &v27;
    selfCopy = self;
    v22[4] = self;
    v17 = v5;
    v12 = v5;
    v23 = v12;
    v24 = v8;
    v16 = v7;
    v13 = v7;
    v25 = v13;
    v14 = MEMORY[0x1CCA59970](v22);
    v15 = [v6 remoteCameraWithFailureBlock:v14];
    if (v15)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __50__PTPCameraDeviceManager_sendDevicePTPCommandImp___block_invoke_2;
      v18[3] = &unk_1E829CBF8;
      v21 = &v27;
      v18[4] = selfCopy;
      v19 = v12;
      v20 = v13;
      [v15 sendPTPCommand:v9 andPayload:v10 withReply:v18];
    }

    v7 = v16;
    v5 = v17;
  }

  else
  {
    v28[3] = -21250;
    [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:-21250 info:v5 file:0 completionDict:v8 completionBlk:v7];
  }

  _Block_object_dispose(&v27, 8);
}

void __50__PTPCameraDeviceManager_sendDevicePTPCommandImp___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"errCode"];
  *(*(*(a1 + 56) + 8) + 24) = [v3 intValue];

  [*(a1 + 32) executeCompletionBlockWithErrorCode:*(*(*(a1 + 56) + 8) + 24) info:*(a1 + 40) file:0 completionDict:v4 completionBlk:*(a1 + 48)];
}

- (void)ejectImp:(id)imp
{
  v14 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v3 = @"DeviceManager";
  if ([@"DeviceManager" length] >= 0x15)
  {
    v4 = [@"DeviceManager" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PTPCameraDeviceManager ejectImp] (iOS unimplemented)"];
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

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSecurityScopedURLImp:(id)imp
{
  impCopy = imp;
  v9 = [impCopy objectForKeyedSubscript:@"file"];
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v7 = [impCopy objectForKeyedSubscript:@"info"];

  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:-9922 info:v7 file:v9 completionDict:v8 completionBlk:v6];
}

- (void)refreshObjectHandleInfoImp:(id)imp
{
  impCopy = imp;
  v9 = [impCopy objectForKeyedSubscript:@"file"];
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v7 = [impCopy objectForKeyedSubscript:@"info"];

  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:-9922 info:v7 file:v9 completionDict:v8 completionBlk:v6];
}

- (void)getFingerprintImp:(id)imp
{
  impCopy = imp;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [impCopy objectForKeyedSubscript:@"device"];
  v6 = [impCopy objectForKeyedSubscript:@"info"];
  v7 = [impCopy objectForKeyedSubscript:@"file"];
  v8 = [impCopy objectForKeyedSubscript:@"cbBlock"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  v10 = [(PTPCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v21[3] = v10;
  if (v10)
  {
    [(PTPCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v6 file:v7 completionDict:v9 completionBlk:v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AAE0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PTPCameraDeviceManager_getFingerprintImp___block_invoke;
    v13[3] = &unk_1E829CA20;
    v19 = &v20;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    v16 = v9;
    v18 = v8;
    v17 = v5;
    v12 = [v11 blockOperationWithBlock:v13];
    [(ICDeviceManager *)self addInteractiveOperation:v12];
  }

  _Block_object_dispose(&v20, 8);
}

void __44__PTPCameraDeviceManager_getFingerprintImp___block_invoke(uint64_t a1)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__PTPCameraDeviceManager_getFingerprintImp___block_invoke_2;
  v15[3] = &unk_1E829C9A8;
  v19 = *(a1 + 80);
  v10 = *(a1 + 32);
  v2 = *(&v10 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v16 = v10;
  v17 = v5;
  v18 = *(a1 + 72);
  v6 = MEMORY[0x1CCA59970](v15);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__PTPCameraDeviceManager_getFingerprintImp___block_invoke_3;
    v11[3] = &unk_1E829CA70;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    v13 = *(a1 + 48);
    v14 = *(a1 + 72);
    [v7 requestFingerprintForObjectHandle:v8 withReply:v11];
  }
}

void __44__PTPCameraDeviceManager_getFingerprintImp___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"rc"];
  v4 = [v3 intValue];

  [*(a1 + 32) executeCompletionBlockWithErrorCode:v4 info:*(a1 + 40) file:*(a1 + 48) completionDict:v5 completionBlk:*(a1 + 56)];
}

- (void)registerDevice:(id)device forImageCaptureEventNotificationsImp:(id)imp
{
  impCopy = imp;
  remoteCamera = [device remoteCamera];
  v6 = remoteCamera;
  if (remoteCamera)
  {
    [remoteCamera registerInterestedEventNotifications:impCopy];
  }
}

- (void)unregisterDevice:(id)device forImageCaptureEventNotificationsImp:(id)imp
{
  impCopy = imp;
  remoteCamera = [device remoteCamera];
  v6 = remoteCamera;
  if (remoteCamera)
  {
    [remoteCamera unregisterInterestedEventNotifications:impCopy];
  }
}

- (void)handleEventImp:(id)imp
{
  v13 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"---> handleEventImp\n"];
  v4 = __ICLogTypeEnabled();
  v5 = MEMORY[0x1E69A8B08];
  v6 = *MEMORY[0x1E69A8B08];
  if (v4)
  {
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1C6F19000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEBUG))
  {
    [(ICCameraDeviceBrowser *)v3 handleImageCaptureEventNotification:v6];
  }

  __ICOSLogCreate();
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<--- handleEventImp\n"];
  v8 = __ICLogTypeEnabled();
  v9 = *v5;
  if (v8)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICCameraDeviceBrowser *)v7 handleImageCaptureEventNotification:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)checkFile:(id)file andDevice:(id)device
{
  if (file)
  {
    v4 = 0;
  }

  else
  {
    v4 = -21450;
  }

  if ([device hasOpenSession])
  {
    return v4;
  }

  else
  {
    return -9927;
  }
}

- (void)executeCompletionBlockWithErrorCode:(int64_t)code info:(id)info file:(id)file completionDict:(id)dict completionBlk:(id)blk
{
  infoCopy = info;
  fileCopy = file;
  dictCopy = dict;
  blkCopy = blk;
  if (infoCopy)
  {
    [dictCopy setObject:infoCopy forKeyedSubscript:@"info"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [dictCopy setObject:v14 forKeyedSubscript:@"errCode"];

  if (blkCopy)
  {
    blkCopy[2](blkCopy, fileCopy, dictCopy);
  }
}

@end
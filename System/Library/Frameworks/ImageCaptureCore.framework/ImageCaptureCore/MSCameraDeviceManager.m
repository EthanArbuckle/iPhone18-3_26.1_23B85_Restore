@interface MSCameraDeviceManager
- (CGSize)cropThumbSize:(CGSize)a3 fullSize:(CGSize)a4 finalSize:(CGSize)a5;
- (id)deviceManagerConnection;
- (int64_t)checkFile:(id)a3 andDevice:(id)a4;
- (void)deleteFileImp:(id)a3;
- (void)downloadFileImp:(id)a3;
- (void)ejectImp:(id)a3;
- (void)executeCompletionBlockWithErrorCode:(int64_t)a3 info:(id)a4 file:(id)a5 completionDict:(id)a6 completionBlk:(id)a7;
- (void)getFileDataImp:(id)a3;
- (void)getFileMetadataImp:(id)a3;
- (void)getFileThumbnailImp:(id)a3;
- (void)getFingerprintImp:(id)a3;
- (void)getSecurityScopedURLImp:(id)a3;
- (void)notifyAddedItems:(id)a3;
- (void)notifyRemovedItems:(id)a3;
- (void)notifyStatus:(id)a3;
- (void)notifyUpdatedItems:(id)a3;
- (void)refreshObjectHandleInfoImp:(id)a3;
- (void)startDeviceWithHandle:(id)a3;
- (void)syncClockImp:(id)a3;
@end

@implementation MSCameraDeviceManager

- (id)deviceManagerConnection
{
  v3 = [(ICDeviceManager *)self managerConnection];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.mscamerad-xpc"];
    [(ICDeviceManager *)self setManagerConnection:v4];
  }

  return [(ICDeviceManager *)self managerConnection];
}

- (void)startDeviceWithHandle:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICDeviceManager *)self devices];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    __ICOSLogCreate();
    v7 = @"device";
    if ([@"device" length] >= 0x15)
    {
      v8 = [@"device" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%12s : %@", "starting", v4];
    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      v19 = [(__CFString *)v7 UTF8String];
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v13 = [v6 remoteCamera];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__MSCameraDeviceManager_startDeviceWithHandle___block_invoke;
    v15[3] = &unk_1E829C960;
    v16 = v6;
    v17 = self;
    [v13 requestStartUsingDeviceWithReply:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __47__MSCameraDeviceManager_startDeviceWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"ICDeviceName"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"ICDeviceName"];
    [*(a1 + 32) setName:v5];

    v6 = [v3 objectForKeyedSubscript:@"ICDeviceEjectable"];
    [*(a1 + 32) setEjectable:{objc_msgSend(v6, "BOOLValue")}];

    v7 = [v3 objectForKeyedSubscript:@"ICDeviceType"];
    [*(a1 + 32) setProductType:v7];

    v8 = [v3 objectForKeyedSubscript:@"ICDeviceProductKind"];
    [*(a1 + 32) setProductKind:v8];

    v9 = [v3 objectForKeyedSubscript:@"ICDeviceLocked"];
    [*(a1 + 32) setLocked:{objc_msgSend(v9, "BOOLValue")}];

    v10 = [v3 objectForKeyedSubscript:@"ICInternalDeviceUUID"];
    [*(a1 + 32) setUUIDString:v10];

    v11 = [v3 objectForKeyedSubscript:@"ICInternalDeviceUUID"];
    [*(a1 + 32) setPersistentIDString:v11];

    v12 = [v3 objectForKeyedSubscript:@"ICDeviceVolumePath"];
    [*(a1 + 32) setVolumePath:v12];

    v13 = [v3 objectForKeyedSubscript:@"ICDeviceTransportType"];
    [*(a1 + 32) setTransportType:v13];

    [*(a1 + 32) setLocationDescription:@"ICDeviceLocationDescriptionMassStorage"];
    v14 = [v3 objectForKeyedSubscript:@"ICDeviceSystemSymbolName"];
    [*(a1 + 32) setSystemSymbolName:v14];

    v15 = [v3 objectForKeyedSubscript:@"ICDeviceCapabilities"];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        v19 = 0;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(a1 + 32) addCapability:*(*(&v29 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MSCameraDeviceManager_startDeviceWithHandle___block_invoke_2;
    block[3] = &unk_1E829C848;
    v28 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v20 = MEMORY[0x1E696AEC0];
    v21 = *(a1 + 40);
    v22 = [*(a1 + 32) name];
    v23 = [v20 stringWithFormat:@"%@:%@", @"ICDeviceOperationQueue", v22];
    [v21 setDeviceOperationQueueName:v23];

    [*(a1 + 40) setDeviceOperationQueueMaxConcurrentOperationCount:1];
    v24 = *(a1 + 32);
    v33[0] = @"device";
    v33[1] = @"type";
    v34[0] = v24;
    v34[1] = @"ICDeviceAdded";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [*(a1 + 40) performSelectorOnMainThread:sel_postNotification_ withObject:v25 waitUntilDone:0];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)ejectImp:(id)a3
{
  v4 = a3;
  v9 = [v4 objectForKeyedSubscript:@"device"];
  v5 = [v4 objectForKeyedSubscript:@"cbBlock"];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v9, @"device", 0}];
  v7 = [(ICDeviceManager *)self remoteManager];
  if (v7)
  {
    v8 = [v9 internalUUID];
    [v7 ejectDevice:v8 withReply:&__block_literal_global_0];
  }

  [v6 setObject:&unk_1F46971B0 forKeyedSubscript:@"errCode"];
  if (v5)
  {
    (v5)[2](v5, v9, v6);
  }
}

- (void)syncClockImp:(id)a3
{
  v3 = a3;
  v9 = [v3 objectForKeyedSubscript:@"device"];
  v4 = [v3 objectForKeyedSubscript:@"info"];
  v5 = [v3 objectForKeyedSubscript:@"cbBlock"];

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

- (void)getFileThumbnailImp:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -9922;
  v5 = [v4 objectForKeyedSubscript:@"file"];
  v6 = [v4 objectForKeyedSubscript:@"info"];
  v7 = [v4 objectForKeyedSubscript:@"device"];
  v8 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v9 = [v4 objectForKeyedSubscript:@"options"];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696E100]];

  v11 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v7, @"device", v5, @"file", 0}];
  v12 = &unk_1F46971C8;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [(MSCameraDeviceManager *)self checkFile:v5 andDevice:v7];
  v26[3] = v14;
  if (v14)
  {
    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v14 info:v6 file:v5 completionDict:v11 completionBlk:v8];
  }

  else
  {
    v15 = MEMORY[0x1E696AAE0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__MSCameraDeviceManager_getFileThumbnailImp___block_invoke;
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

void __45__MSCameraDeviceManager_getFileThumbnailImp___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __45__MSCameraDeviceManager_getFileThumbnailImp___block_invoke_2;
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
    v18[2] = __45__MSCameraDeviceManager_getFileThumbnailImp___block_invoke_3;
    v18[3] = &unk_1E829C9D0;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
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

void __45__MSCameraDeviceManager_getFileThumbnailImp___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"thumb"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"metadata"];
      v7 = [*(a1 + 32) metadata];
      if (v7)
      {
      }

      else if ([v6 count])
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
          v12 = [*(a1 + 32) name];
          v13 = [v11 stringWithFormat:@"Set Metadata ---> thumbnail %@", v12];

          v14 = *MEMORY[0x1E69A8B08];
          if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
          {
            v15 = v9;
            v16 = v14;
            *buf = 136446466;
            v24 = [(__CFString *)v9 UTF8String];
            v25 = 2114;
            v26 = v13;
            _os_log_impl(&dword_1C6F19000, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }
        }

        [*(a1 + 32) setMetadata:v6];
      }

      v17 = [*(a1 + 32) metadata];
      v18 = *MEMORY[0x1E696DE78];
      v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];

      if (v19)
      {
        [*(a1 + 40) setObject:v19 forKeyedSubscript:v18];
      }

      [*(a1 + 40) setObject:v5 forKeyedSubscript:@"thumb"];
      v20 = [v4 objectForKeyedSubscript:@"ICThumbnailRotated"];

      if (v20)
      {
        v21 = [v4 objectForKeyedSubscript:@"ICThumbnailRotated"];
        [*(a1 + 40) setObject:v21 forKeyedSubscript:@"ICThumbnailRotated"];
      }

      v8 = 0;
    }

    else
    {
      v8 = -20097;
    }
  }

  else
  {
    v8 = -20097;
  }

  [*(a1 + 48) executeCompletionBlockWithErrorCode:v8 info:*(a1 + 56) file:*(a1 + 32) completionDict:*(a1 + 40) completionBlk:*(a1 + 64)];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)getFileMetadataImp:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v4 objectForKeyedSubscript:@"info"];
  v7 = [v4 objectForKeyedSubscript:@"file"];
  v8 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", v7, @"file", 0}];
  v10 = [(MSCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v21[3] = v10;
  if (v10)
  {
    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v6 file:v7 completionDict:v9 completionBlk:v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AAE0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__MSCameraDeviceManager_getFileMetadataImp___block_invoke;
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

void __44__MSCameraDeviceManager_getFileMetadataImp___block_invoke(uint64_t a1)
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__MSCameraDeviceManager_getFileMetadataImp___block_invoke_2;
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
    v14[2] = __44__MSCameraDeviceManager_getFileMetadataImp___block_invoke_3;
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

void __44__MSCameraDeviceManager_getFileMetadataImp___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"kCGImagePropertyOrientation"];

  if (!v3)
  {
    [*(a1 + 32) setObject:&unk_1F46971E0 forKeyedSubscript:@"kCGImagePropertyOrientation"];
  }

  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"metadata"];
    v4 = 0;
  }

  else
  {
    v4 = -20147;
  }

  [*(a1 + 40) executeCompletionBlockWithErrorCode:v4 info:*(a1 + 48) file:*(a1 + 56) completionDict:*(a1 + 32) completionBlk:*(a1 + 64)];
}

- (void)getFileDataImp:(id)a3
{
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v21 = [v4 objectForKeyedSubscript:@"info"];
  v5 = [v4 objectForKeyedSubscript:@"file"];
  v6 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v7 = [v4 objectForKeyedSubscript:@"device"];
  v8 = [v4 objectForKeyedSubscript:@"options"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v7, @"device", 0}];
  v10 = [(MSCameraDeviceManager *)self checkFile:v5 andDevice:v7];
  v31[3] = v10;
  if (v10)
  {
    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v21 file:v5 completionDict:v9 completionBlk:v6];
  }

  else
  {
    v11 = [v8 objectForKeyedSubscript:@"ICReadOffset"];
    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:@"ICReadOffset"];
      v13 = [v12 unsignedLongLongValue];

      v20 = v13 != 0x7FFFFFFFFFFFFFFFLL;
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
      v22[2] = __40__MSCameraDeviceManager_getFileDataImp___block_invoke;
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
      [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:-21449 info:v21 file:v5 completionDict:v9 completionBlk:v6];
    }
  }

  _Block_object_dispose(&v30, 8);
}

void __40__MSCameraDeviceManager_getFileDataImp___block_invoke(uint64_t a1)
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__MSCameraDeviceManager_getFileDataImp___block_invoke_2;
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
    v13[2] = __40__MSCameraDeviceManager_getFileDataImp___block_invoke_3;
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

void __40__MSCameraDeviceManager_getFileDataImp___block_invoke_3(uint64_t a1, void *a2)
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

- (void)deleteFileImp:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = -9922;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v34 = [v4 objectForKeyedSubscript:@"info"];
  v6 = [v4 objectForKeyedSubscript:@"file"];
  v33 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v7 = MEMORY[0x1E695DF90];
  v8 = [v4 objectForKeyedSubscript:@"opts"];
  v32 = [v7 dictionaryWithDictionary:v8];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", v6, @"file", 0}];
  __ICOSLogCreate();
  if ([@"delete" length] < 0x15)
  {
    v11 = @"delete";
  }

  else
  {
    v10 = [@"delete" substringWithRange:{0, 18}];
    v11 = [v10 stringByAppendingString:@".."];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 name];
  v14 = [v12 stringWithFormat:@"MSCameraDeviceManager - %@", v13];

  v15 = MEMORY[0x1E69A8B08];
  v16 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v11;
    v18 = [(__CFString *)v11 UTF8String];
    *buf = 136446466;
    v48 = v18;
    v49 = 2114;
    v50 = v14;
    _os_log_impl(&dword_1C6F19000, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v19 = [(MSCameraDeviceManager *)self checkFile:v6 andDevice:v5];
  v44[3] = v19;
  if (v19)
  {
    __ICOSLogCreate();
    if ([@"delete" length] < 0x15)
    {
      v21 = @"delete";
    }

    else
    {
      v20 = [@"delete" substringWithRange:{0, 18}];
      v21 = [v20 stringByAppendingString:@".."];
    }

    v24 = MEMORY[0x1E696AEC0];
    v25 = [v6 name];
    v26 = [v24 stringWithFormat:@"File Check Failed - %@", v25];

    v27 = *v15;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v21;
      v29 = [(__CFString *)v21 UTF8String];
      *buf = 136446466;
      v48 = v29;
      v49 = 2114;
      v50 = v26;
      _os_log_impl(&dword_1C6F19000, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v44[3]];
    [v9 setObject:v30 forKeyedSubscript:@"errCode"];

    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v44[3] info:v34 file:v6 completionDict:v9 completionBlk:v33];
  }

  else
  {
    v22 = MEMORY[0x1E696AAE0];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __39__MSCameraDeviceManager_deleteFileImp___block_invoke;
    v35[3] = &unk_1E829C9F8;
    v42 = &v43;
    v35[4] = self;
    v36 = v34;
    v37 = v6;
    v38 = v9;
    v41 = v33;
    v39 = v5;
    v40 = v32;
    v23 = [v22 blockOperationWithBlock:v35];
    [(ICDeviceManager *)self addInteractiveOperation:v23];
  }

  _Block_object_dispose(&v43, 8);
  v31 = *MEMORY[0x1E69E9840];
}

void __39__MSCameraDeviceManager_deleteFileImp___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__MSCameraDeviceManager_deleteFileImp___block_invoke_2;
  v30[3] = &unk_1E829C9A8;
  v34 = *(a1 + 88);
  v24 = *(a1 + 32);
  v2 = *(&v24 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v31 = v24;
  v32 = v5;
  v33 = *(a1 + 80);
  v6 = MEMORY[0x1CCA59970](v30);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    __ICOSLogCreate();
    v8 = @"delete";
    if ([@"delete" length] >= 0x15)
    {
      v9 = [@"delete" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = [*(a1 + 48) name];
    v12 = [v10 stringWithFormat:@"Remote Camera Good - %@", v11];

    v13 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v8;
      v15 = v13;
      v16 = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v36 = v16;
      v37 = 2114;
      v38 = v12;
      _os_log_impl(&dword_1C6F19000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v18 = *(a1 + 72);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __39__MSCameraDeviceManager_deleteFileImp___block_invoke_123;
    v26[3] = &unk_1E829C9D0;
    *&v19 = *(a1 + 48);
    *(&v19 + 1) = *(a1 + 32);
    v25 = v19;
    v20 = *(a1 + 56);
    v21 = *(a1 + 40);
    *&v22 = v20;
    *(&v22 + 1) = v21;
    v27 = v25;
    v28 = v22;
    v29 = *(a1 + 80);
    [v7 requestDeleteObjectHandle:v17 options:v18 withReply:v26];
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __39__MSCameraDeviceManager_deleteFileImp___block_invoke_123(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"errCode"];
  v4 = [v3 intValue];

  if (!v4)
  {
    v24 = @"ICObjectIDArray";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "objectID")}];
    v23 = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v25[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    [*(a1 + 40) notifyRemovedItems:v7];
  }

  __ICOSLogCreate();
  v8 = @"delete";
  if ([@"delete" length] >= 0x15)
  {
    v9 = [@"delete" substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [*(a1 + 32) name];
  v12 = [v10 stringWithFormat:@"Request->Reply - %@", v11];

  v13 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v8;
    v15 = v13;
    *buf = 136446466;
    v20 = [(__CFString *)v8 UTF8String];
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_1C6F19000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [*(a1 + 48) setObject:v16 forKeyedSubscript:@"errCode"];

  result = [*(a1 + 40) executeCompletionBlockWithErrorCode:v4 info:*(a1 + 56) file:*(a1 + 32) completionDict:*(a1 + 48) completionBlk:*(a1 + 64)];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)downloadFileImp:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v4 objectForKeyedSubscript:@"info"];
  v7 = [v4 objectForKeyedSubscript:@"file"];
  v8 = MEMORY[0x1E695DF90];
  v9 = [v4 objectForKeyedSubscript:@"opts"];
  v10 = [v8 dictionaryWithDictionary:v9];

  v11 = [v10 objectForKeyedSubscript:@"ICDownloadsDirectoryURL"];
  v12 = [v11 path];

  v13 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  v15 = [(MSCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v16 = v28;
  v28[3] = v15;
  if (!v15)
  {
    if (v12)
    {
      [v10 setObject:v12 forKeyedSubscript:@"ICDownloadsDirectoryURL"];
      v17 = MEMORY[0x1E696AAE0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __41__MSCameraDeviceManager_downloadFileImp___block_invoke;
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

  [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v15 info:v6 file:v7 completionDict:v14 completionBlk:v13];
LABEL_5:

  _Block_object_dispose(&v27, 8);
}

void __41__MSCameraDeviceManager_downloadFileImp___block_invoke(uint64_t a1)
{
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __41__MSCameraDeviceManager_downloadFileImp___block_invoke_2;
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
    v16[2] = __41__MSCameraDeviceManager_downloadFileImp___block_invoke_3;
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

uint64_t __41__MSCameraDeviceManager_downloadFileImp___block_invoke_3(void *a1, void *a2)
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

- (void)getSecurityScopedURLImp:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v4 objectForKeyedSubscript:@"info"];
  v7 = [v4 objectForKeyedSubscript:@"file"];
  v8 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  v10 = [(MSCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v21[3] = v10;
  if (v10)
  {
    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v6 file:v7 completionDict:v9 completionBlk:v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AAE0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__MSCameraDeviceManager_getSecurityScopedURLImp___block_invoke;
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

void __49__MSCameraDeviceManager_getSecurityScopedURLImp___block_invoke(uint64_t a1)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__MSCameraDeviceManager_getSecurityScopedURLImp___block_invoke_2;
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
    v11[2] = __49__MSCameraDeviceManager_getSecurityScopedURLImp___block_invoke_3;
    v11[3] = &unk_1E829CA70;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    v13 = *(a1 + 48);
    v14 = *(a1 + 72);
    [v7 requestSecurityScopedURLForObjectHandle:v8 withReply:v11];
  }
}

void __49__MSCameraDeviceManager_getSecurityScopedURLImp___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"rc"];
  v4 = [v3 intValue];

  v5 = [v7 objectForKeyedSubscript:@"ICSecurityScopedWrappedURL"];
  v6 = [v5 url];
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:@"ICSecurityScopedURL"];
  }

  [*(a1 + 32) executeCompletionBlockWithErrorCode:v4 info:*(a1 + 40) file:*(a1 + 48) completionDict:v7 completionBlk:*(a1 + 56)];
}

- (void)refreshObjectHandleInfoImp:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v4 objectForKeyedSubscript:@"info"];
  v7 = [v4 objectForKeyedSubscript:@"file"];
  v8 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  v10 = [(MSCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v21[3] = v10;
  if (v10)
  {
    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v6 file:v7 completionDict:v9 completionBlk:v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AAE0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__MSCameraDeviceManager_refreshObjectHandleInfoImp___block_invoke;
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

void __52__MSCameraDeviceManager_refreshObjectHandleInfoImp___block_invoke(uint64_t a1)
{
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__MSCameraDeviceManager_refreshObjectHandleInfoImp___block_invoke_2;
  v19[3] = &unk_1E829C9A8;
  v23 = *(a1 + 80);
  v12 = *(a1 + 32);
  v2 = *(&v12 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v20 = v12;
  v21 = v5;
  v22 = *(a1 + 72);
  v6 = MEMORY[0x1CCA59970](v19);
  v7 = [*(a1 + 64) remoteCameraWithFailureBlock:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "objectID")}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__MSCameraDeviceManager_refreshObjectHandleInfoImp___block_invoke_3;
    v13[3] = &unk_1E829CA98;
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = v9;
    v15 = v10;
    v18 = *(a1 + 80);
    v16 = v11;
    v17 = *(a1 + 72);
    [v7 requestRefreshObjectHandleInfo:v8 withReply:v13];
  }
}

void __52__MSCameraDeviceManager_refreshObjectHandleInfoImp___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"errCode"];
  v4 = [v3 integerValue];

  if (!v4)
  {
    v5 = [v8 objectForKeyedSubscript:@"ICObjectInfoUpdate"];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "objectID")}];
    v7 = [v5 objectForKeyedSubscript:v6];

    [*(a1 + 32) handleObjectInfoUpdate:v7];
  }

  [*(a1 + 40) executeCompletionBlockWithErrorCode:*(*(*(a1 + 64) + 8) + 24) info:*(a1 + 48) file:*(a1 + 32) completionDict:v8 completionBlk:*(a1 + 56)];
}

- (void)getFingerprintImp:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v4 objectForKeyedSubscript:@"info"];
  v7 = [v4 objectForKeyedSubscript:@"file"];
  v8 = [v4 objectForKeyedSubscript:@"cbBlock"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"device", 0}];
  v10 = [(MSCameraDeviceManager *)self checkFile:v7 andDevice:v5];
  v21[3] = v10;
  if (v10)
  {
    [(MSCameraDeviceManager *)self executeCompletionBlockWithErrorCode:v10 info:v6 file:v7 completionDict:v9 completionBlk:v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AAE0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__MSCameraDeviceManager_getFingerprintImp___block_invoke;
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

void __43__MSCameraDeviceManager_getFingerprintImp___block_invoke(uint64_t a1)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__MSCameraDeviceManager_getFingerprintImp___block_invoke_2;
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
    v11[2] = __43__MSCameraDeviceManager_getFingerprintImp___block_invoke_3;
    v11[3] = &unk_1E829CA70;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    v13 = *(a1 + 48);
    v14 = *(a1 + 72);
    [v7 requestFingerprintForObjectHandle:v8 withReply:v11];
  }
}

void __43__MSCameraDeviceManager_getFingerprintImp___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"rc"];
  v4 = [v3 intValue];

  [*(a1 + 32) executeCompletionBlockWithErrorCode:v4 info:*(a1 + 40) file:*(a1 + 48) completionDict:v5 completionBlk:*(a1 + 56)];
}

- (int64_t)checkFile:(id)a3 andDevice:(id)a4
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -21450;
  }

  if ([a4 hasOpenSession])
  {
    return v4;
  }

  else
  {
    return -9927;
  }
}

- (void)executeCompletionBlockWithErrorCode:(int64_t)a3 info:(id)a4 file:(id)a5 completionDict:(id)a6 completionBlk:(id)a7
{
  v15 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (v15)
  {
    [v12 setObject:v15 forKeyedSubscript:@"info"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v12 setObject:v14 forKeyedSubscript:@"errCode"];

  if (v13)
  {
    v13[2](v13, v11, v12);
  }
}

- (void)notifyAddedItems:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = [(ICDeviceManager *)self deviceForConnection:v5];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __42__MSCameraDeviceManager_notifyAddedItems___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = v4;
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
      v13 = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = v13;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __42__MSCameraDeviceManager_notifyAddedItems___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICCameraItemProxyArray"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v6 = *MEMORY[0x1E69A8AD0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [*(*(*(a1 + 40) + 8) + 40) cameraFolderWithObjectID:{objc_msgSend(v8, "parentObjectHandle")}];
        v10 = [v8 type];
        v11 = *(*(*(a1 + 40) + 8) + 40);
        v12 = [v8 objectHandle];
        if (v10 != v6)
        {
          v16 = [v11 cameraFileWithObjectID:v12];

          if (v16)
          {
            v17 = 1;
          }

          else
          {
            v17 = v9 == 0;
          }

          if (!v17)
          {
            v18 = [[ICCameraFile alloc] initWithProxy:v8 parentFolder:v9 device:*(*(*(a1 + 40) + 8) + 40)];
            [v9 addFile:v18];
            [*(*(*(a1 + 40) + 8) + 40) addCameraFileToIndex:v18];
            [v20 addObject:v18];

            goto LABEL_20;
          }

LABEL_15:
          [*(*(*(a1 + 40) + 8) + 40) setPreviouslyIndexed:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "previouslyIndexed") + 1}];
          goto LABEL_20;
        }

        v13 = [v11 cameraFolderWithObjectID:v12];

        if (v13)
        {
          goto LABEL_15;
        }

        v14 = [[ICCameraFolder alloc] initWithProxy:v8 parentFolder:v9 device:*(*(*(a1 + 40) + 8) + 40)];
        if (v9)
        {
          v15 = v9;
LABEL_18:
          [v15 addFolder:v14];
          goto LABEL_19;
        }

        if ([v8 topLevel])
        {
          v15 = *(*(*(a1 + 40) + 8) + 40);
          goto LABEL_18;
        }

LABEL_19:
        [*(*(*(a1 + 40) + 8) + 40) addCameraFolderToIndex:v14];

LABEL_20:
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  [*(*(*(a1 + 40) + 8) + 40) addItems:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)notifyRemovedItems:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = [(ICDeviceManager *)self deviceForConnection:v5];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __44__MSCameraDeviceManager_notifyRemovedItems___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = v4;
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
      v13 = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = v13;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __44__MSCameraDeviceManager_notifyRemovedItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICObjectIDArray"];
  if (v2)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeItems:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)notifyUpdatedItems:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = [(ICDeviceManager *)self deviceForConnection:v5];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __44__MSCameraDeviceManager_notifyUpdatedItems___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = v4;
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
      v13 = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = v13;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __44__MSCameraDeviceManager_notifyUpdatedItems___block_invoke(uint64_t a1)
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

- (void)notifyStatus:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = [(ICDeviceManager *)self deviceForConnection:v5];
  if (v22[5])
  {
    v6 = MEMORY[0x1E696AAE0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __38__MSCameraDeviceManager_notifyStatus___block_invoke;
    v18 = &unk_1E829CAC0;
    v19 = v4;
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
      v13 = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = v13;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __38__MSCameraDeviceManager_notifyStatus___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(*(*(result + 40) + 8) + 40) handleStatusNotification:?];
  }

  return result;
}

- (CGSize)cropThumbSize:(CGSize)a3 fullSize:(CGSize)a4 finalSize:(CGSize)a5
{
  v5 = a3.width / a3.height;
  v6 = a4.width / a4.height;
  v7 = vabdd_f64(v6, a3.width / a3.height);
  v8 = 1.0;
  if (a3.width / a3.height <= 1.0 || v6 <= 1.0)
  {
    if (v5 < 1.0 && v6 < 1.0)
    {
      if (v7 > 0.0001)
      {
        a3.width = floor(a3.height * v6);
        v8 = a5.height / a3.height;
      }
    }

    else if (v5 >= 1.0 || v6 <= 1.0)
    {
      if (v5 > 1.0 && v6 < 1.0)
      {
        if (v7 > 0.0001)
        {
          a3.height = floor(a3.width * v6);
          v8 = a5.width / a3.width;
        }
      }

      else
      {
        v13 = v5 > 1.0 && v6 == 1.0;
        if (v13)
        {
          v8 = a5.width / a3.width;
          a3.width = a3.height;
        }

        else if (v5 <= 1.0 && v6 == 1.0)
        {
          v8 = a5.height / a3.height;
          a3.height = a3.width;
        }
      }
    }

    else if (v7 > 0.0001)
    {
      v8 = a5.height / a3.height;
      a3.width = floor(a3.height / v6);
    }
  }

  else if (v7 > 0.0001)
  {
    v8 = a5.width / a3.width;
    a3.height = floor(a3.width / v6);
  }

  v15 = a3.height * v8;
  v16 = floor(v15);
  v17 = v8 * a3.width;
  v18 = vcvtmd_s64_f64(v15);
  v19 = floor(v17);
  v20 = v16 + -1.0;
  v13 = (v18 & 1) == 0;
  v21 = vcvtmd_s64_f64(v17);
  if (v13)
  {
    v20 = v16;
  }

  v22 = v19 + -1.0;
  if ((v21 & 1) == 0)
  {
    v22 = v19;
  }

  result.height = v20;
  result.width = v22;
  return result;
}

@end
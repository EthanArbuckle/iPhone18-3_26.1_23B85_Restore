@interface AVAssetDownloadStorageManager
+ (AVAssetDownloadStorageManager)sharedDownloadStorageManager;
- (AVAssetDownloadStorageManagementPolicy)storageManagementPolicyForURL:(NSURL *)downloadStorageURL;
- (AVAssetDownloadStorageManager)init;
- (void)dealloc;
- (void)setStorageManagementPolicy:(AVAssetDownloadStorageManagementPolicy *)storageManagementPolicy forURL:(NSURL *)downloadStorageURL;
@end

@implementation AVAssetDownloadStorageManager

- (AVAssetDownloadStorageManager)init
{
  v4.receiver = self;
  v4.super_class = AVAssetDownloadStorageManager;
  v2 = [(AVAssetDownloadStorageManager *)&v4 init];
  if (v2)
  {
    v2->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avassetdownloadstoragemanager.ivars");
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_ivarAccessQueue);
  v3.receiver = self;
  v3.super_class = AVAssetDownloadStorageManager;
  [(AVAssetDownloadStorageManager *)&v3 dealloc];
}

+ (AVAssetDownloadStorageManager)sharedDownloadStorageManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AVAssetDownloadStorageManager_sharedDownloadStorageManager__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  if (sharedDownloadStorageManager_sAVAssetDownloadStorageManager_Once != -1)
  {
    dispatch_once(&sharedDownloadStorageManager_sAVAssetDownloadStorageManager_Once, block);
  }

  return sharedDownloadStorageManager_sDownloadStorageManager;
}

id __61__AVAssetDownloadStorageManager_sharedDownloadStorageManager__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedDownloadStorageManager_sDownloadStorageManager = result;
  return result;
}

- (void)setStorageManagementPolicy:(AVAssetDownloadStorageManagementPolicy *)storageManagementPolicy forURL:(NSURL *)downloadStorageURL
{
  v8 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (!storageManagementPolicy)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = "storageManagementPolicy != nil";
LABEL_10:
    v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, v31);
    v33 = v29;
    v34 = v30;
    goto LABEL_14;
  }

  if (!downloadStorageURL)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = "downloadStorageURL != nil";
    goto LABEL_10;
  }

  if (!v8)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = "bundleIdentifier != nil";
    goto LABEL_10;
  }

  v15 = defaultManager;
  if (![(NSURL *)downloadStorageURL isFileURL])
  {
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D930];
    v37 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Not a fileURL %@", v16, v17, v18, v19, v20, downloadStorageURL);
LABEL_13:
    v32 = v37;
    v33 = v35;
    v34 = v36;
LABEL_14:
    objc_exception_throw([v33 exceptionWithName:v34 reason:v32 userInfo:0]);
  }

  if (([v15 fileExistsAtPath:{-[NSURL path](downloadStorageURL, "path")}] & 1) == 0)
  {
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D930];
    v37 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"No file at %@", v21, v22, v23, v24, v25, downloadStorageURL);
    goto LABEL_13;
  }

  expirationDate = [(AVAssetDownloadStorageManagementPolicy *)storageManagementPolicy expirationDate];
  priority = [(AVAssetDownloadStorageManagementPolicy *)storageManagementPolicy priority];
  ivarAccessQueue = self->_ivarAccessQueue;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __67__AVAssetDownloadStorageManager_setStorageManagementPolicy_forURL___block_invoke;
  v38[3] = &unk_1E7462140;
  v38[4] = expirationDate;
  v38[5] = downloadStorageURL;
  v38[6] = v8;
  v38[7] = priority;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v38);
}

- (AVAssetDownloadStorageManagementPolicy)storageManagementPolicyForURL:(NSURL *)downloadStorageURL
{
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v7 = objc_alloc_init(AVMutableAssetDownloadStorageManagementPolicy);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (!downloadStorageURL)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = "downloadStorageURL != nil";
LABEL_8:
    v30 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, v29);
    v31 = v27;
    v32 = v28;
    goto LABEL_12;
  }

  if (!v6)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = "bundleIdentifier != nil";
    goto LABEL_8;
  }

  v14 = defaultManager;
  if (![(NSURL *)downloadStorageURL isFileURL])
  {
    v33 = MEMORY[0x1E695DF30];
    v34 = *MEMORY[0x1E695D930];
    v35 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Not a fileURL %@", v15, v16, v17, v18, v19, downloadStorageURL);
LABEL_11:
    v30 = v35;
    v31 = v33;
    v32 = v34;
LABEL_12:
    objc_exception_throw([v31 exceptionWithName:v32 reason:v30 userInfo:0]);
  }

  if (([v14 fileExistsAtPath:{-[NSURL path](downloadStorageURL, "path")}] & 1) == 0)
  {
    v33 = MEMORY[0x1E695DF30];
    v34 = *MEMORY[0x1E695D930];
    v35 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"No file at %@", v20, v21, v22, v23, v24, downloadStorageURL);
    goto LABEL_11;
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVAssetDownloadStorageManager_storageManagementPolicyForURL___block_invoke;
  block[3] = &unk_1E7462140;
  block[4] = downloadStorageURL;
  block[5] = v6;
  block[6] = 0;
  block[7] = v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  return v7;
}

void *__67__AVAssetDownloadStorageManager_setStorageManagementPolicy_forURL___block_invoke(void *a1)
{
  if (!a1[4] || (result = FigAssetDownloadStorageManagementSetExpirationDateForAssetAtURL(), !result))
  {
    result = a1[7];
    if (result)
    {
      v3 = [result isEqualToString:@"important"];
      v4 = a1[5];
      v5 = a1[6];

      return MEMORY[0x1EEDCD0C8](v4, v5, v3);
    }
  }

  return result;
}

uint64_t __63__AVAssetDownloadStorageManager_storageManagementPolicyForURL___block_invoke(uint64_t a1)
{
  result = FigAssetDownloadStorageManagementCopyExpirationDateForAssetAtURL();
  if (!result)
  {
    result = FigAssetDownloadStorageManagementCopyPriorityForAssetAtURL();
    if (!result)
    {
      if (*(a1 + 48))
      {
        [*(a1 + 56) setExpirationDate:?];
      }

      return [*(a1 + 56) setPriority:@"default"];
    }
  }

  return result;
}

@end
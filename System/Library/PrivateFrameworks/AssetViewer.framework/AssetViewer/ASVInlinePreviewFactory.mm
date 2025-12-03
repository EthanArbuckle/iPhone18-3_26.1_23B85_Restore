@interface ASVInlinePreviewFactory
+ (id)shared;
- (ASVInlinePreviewFactory)init;
- (void)_getSharedInlineServiceWithCompletionHandler:(id)handler;
- (void)createFullscreenInstanceWithUUID:(id)d initialFrame:(CGRect)frame previewOptions:(id)options completionHandler:(id)handler;
- (void)getSharedInlineServiceWithCompletionHandler:(id)handler;
- (void)handleInterruptionOrInvalidation;
@end

@implementation ASVInlinePreviewFactory

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[ASVInlinePreviewFactory shared];
  }

  v3 = shared__shared;

  return v3;
}

void __33__ASVInlinePreviewFactory_shared__block_invoke()
{
  v0 = objc_alloc_init(ASVInlinePreviewFactory);
  v1 = shared__shared;
  shared__shared = v0;
}

- (ASVInlinePreviewFactory)init
{
  v7.receiver = self;
  v7.super_class = ASVInlinePreviewFactory;
  v2 = [(ASVInlinePreviewFactory *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AssetViewer.ASVInlinePreviewFactory.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)getSharedInlineServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ASVInlinePreviewFactory_getSharedInlineServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CCB060;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(accessQueue, v7);
}

- (void)_getSharedInlineServiceWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_extension)
  {
    goto LABEL_2;
  }

  v6 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v6 = _asvLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v6, OS_LOG_TYPE_INFO, "#Inline: Retrieving extension", buf, 2u);
  }

  v17 = 0;
  v7 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.AssetViewer.ASVAssetViewer" error:&v17];
  v8 = v17;
  if (!v8)
  {
    extension = self->_extension;
    self->_extension = v7;

LABEL_2:
    if (self->_sharedInlineService)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v12 = self->_extension;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke;
      v14[3] = &unk_278CCB100;
      v16 = a2;
      v14[4] = self;
      v15 = handlerCopy;
      [(NSExtension *)v12 instantiateViewControllerWithInputItems:0 connectionHandler:v14];
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ASVInlinePreview" code:2 userInfo:0];
  v11 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v11 = _asvLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_241215000, v11, OS_LOG_TYPE_ERROR, "#Inline: Couldn't retrieve extension, error: %@", buf, 0xCu);
  }

  (handlerCopy)[2](handlerCopy, v10);

LABEL_15:
}

void __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v10 = _asvLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_ERROR, "#Inline: Error instantiating view controller: %@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"ASVInlinePreviewFactory.m" lineNumber:95 description:{@"Error instantiating view controller: %@", v9}];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 24), a3);
    v11 = [*(*(a1 + 32) + 16) _extensionContextForUUID:v7];
    v12 = [v11 _auxiliaryConnection];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_12;
    v24[3] = &unk_278CCB088;
    v24[4] = *(a1 + 32);
    v18 = *(a1 + 40);
    v13 = v18;
    v25 = v18;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v24];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_17;
    v23[3] = &unk_278CCADC0;
    v23[4] = *(a1 + 32);
    v15 = [v11 _auxiliaryConnection];
    [v15 setInterruptionHandler:v23];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_18;
    v22[3] = &unk_278CCADC0;
    v22[4] = *(a1 + 32);
    v16 = [v11 _auxiliaryConnection];
    [v16 setInvalidationHandler:v22];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_19;
    v20[3] = &unk_278CCB0D8;
    v20[4] = *(a1 + 32);
    v19 = *(a1 + 40);
    v17 = v19;
    v21 = v19;
    [v14 getARQLInlineProxy3WithCompletionHandler:v20];
  }
}

void __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_12(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v4 = _asvLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_ERROR, "#Inline: Failed to get protocol service, error: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a1[6] object:a1[4] file:@"ASVInlinePreviewFactory.m" lineNumber:105 description:{@"Failed to get protocol service, error: %@", v3}];

  (*(a1[5] + 16))();
}

uint64_t __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_17(uint64_t a1)
{
  v2 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v2 = _asvLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_241215000, v2, OS_LOG_TYPE_ERROR, "#Inline: Connection interrupted @@@", v4, 2u);
  }

  return [*(a1 + 32) handleInterruptionOrInvalidation];
}

uint64_t __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_18(uint64_t a1)
{
  v2 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v2 = _asvLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_241215000, v2, OS_LOG_TYPE_ERROR, "#Inline: Connection invalidated @@@", v4, 2u);
  }

  return [*(a1 + 32) handleInterruptionOrInvalidation];
}

void __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278CCB0B0;
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v7 = *(a1 + 40);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_2_cold_1(a1, a1 + 4, &v5);
    v2 = v5;
  }

  objc_storeStrong((a1[5] + 32), v2);
  v3 = *(a1[6] + 16);

  return v3();
}

- (void)createFullscreenInstanceWithUUID:(id)d initialFrame:(CGRect)frame previewOptions:(id)options completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  extension = self->_extension;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke;
  v21[3] = &unk_278CCB178;
  v24 = handlerCopy;
  v25 = a2;
  v21[4] = self;
  v22 = dCopy;
  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  v23 = optionsCopy;
  v18 = optionsCopy;
  v19 = dCopy;
  v20 = handlerCopy;
  [(NSExtension *)extension instantiateViewControllerWithInputItems:0 connectionHandler:v21];
}

void __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"ASVInlinePreviewFactory.m" lineNumber:138 description:{@"Error instantiating view controller: %@", v8}];
  }

  else
  {
    v9 = [*(*(a1 + 32) + 16) _extensionContextForUUID:a2];
    v10 = [v9 _auxiliaryConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke_2;
    v22[3] = &unk_278CCB088;
    v22[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v11 = v14;
    v23 = v14;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v22];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke_28;
    v15[3] = &unk_278CCB150;
    v16 = *(a1 + 40);
    v13 = *(a1 + 88);
    v20 = *(a1 + 72);
    v21 = v13;
    v17 = *(a1 + 48);
    v19 = *(a1 + 56);
    v18 = v7;
    [v12 getARQLInlineProxy3WithCompletionHandler:v15];
  }
}

void __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v4 = _asvLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_ERROR, "#Inline: Failed to get protocol service, error: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a1[6] object:a1[4] file:@"ASVInlinePreviewFactory.m" lineNumber:146 description:{@"Failed to get protocol service: %@", v3}];

  (*(a1[5] + 16))();
}

void __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__ASVInlinePreviewFactory_createFullscreenInstanceWithUUID_initialFrame_previewOptions_completionHandler___block_invoke_2_29;
  v11[3] = &unk_278CCB128;
  v14 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v3;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = v3;
  [v10 prepareFullscreenPreview:v4 initialFrame:v5 previewOptions:v11 fenceHandleCompletion:{v6, v7, v8, v9}];
}

- (void)handleInterruptionOrInvalidation
{
  extension = self->_extension;
  self->_extension = 0;

  sharedInlineService = self->_sharedInlineService;
  self->_sharedInlineService = 0;

  v6 = [MEMORY[0x277CCAB88] notificationWithName:@"ASVConnectionInterrupted" object:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v6];
}

void __72__ASVInlinePreviewFactory__getSharedInlineServiceWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];

  *a3 = *a2;
}

@end
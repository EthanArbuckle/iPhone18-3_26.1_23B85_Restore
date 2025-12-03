@interface RPBroadcastMP4ClipHandler
- (void)beginRequestWithExtensionContext:(id)context;
- (void)finishedProcessingMP4ClipWithUpdatedBroadcastConfiguration:(RPBroadcastConfiguration *)broadcastConfiguration error:(NSError *)error;
@end

@implementation RPBroadcastMP4ClipHandler

- (void)finishedProcessingMP4ClipWithUpdatedBroadcastConfiguration:(RPBroadcastConfiguration *)broadcastConfiguration error:(NSError *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = broadcastConfiguration;
  v7 = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "broadcast configuration = %p", buf, 0xCu);
  }

  if (v7)
  {
    extensionContext = [(RPBroadcastHandler *)self extensionContext];
    [extensionContext cancelRequestWithError:v7];
  }

  else
  {
    extensionContext = [MEMORY[0x277CBEB18] array];
    if (v6)
    {
      v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6];
      v10 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v11 = objc_alloc(MEMORY[0x277CCA898]);
      v12 = [MEMORY[0x277CCACA8] _rpLocalizationNotNeeded:@"RPBroadcastExtensionKeyBroadcastConfiguration"];
      v13 = [v11 initWithString:v12];
      [v10 setAttributedTitle:v13];

      v14 = objc_alloc(MEMORY[0x277CCAA88]);
      v15 = [v14 initWithItem:v9 typeIdentifier:*MEMORY[0x277CC2050]];
      v19 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [v10 setAttachments:v16];

      [extensionContext addObject:v10];
    }

    v18.receiver = self;
    v18.super_class = RPBroadcastMP4ClipHandler;
    [(RPBroadcastHandler *)&v18 _completeRequestWithReturnItems:extensionContext];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "beginRequestWithExtensionContext", buf, 2u);
  }

  [(RPBroadcastHandler *)self setExtensionContext:contextCopy];
  v5 = *MEMORY[0x277CC2050];
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy_;
  v26[4] = __Block_byref_object_dispose_;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  v23 = 0;
  extensionContext = [(RPBroadcastHandler *)self extensionContext];
  inputItems = [extensionContext inputItems];
  v8 = [inputItems count];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  extensionContext2 = [(RPBroadcastHandler *)self extensionContext];
  inputItems2 = [extensionContext2 inputItems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__RPBroadcastMP4ClipHandler_beginRequestWithExtensionContext___block_invoke;
  v12[3] = &unk_278B62030;
  v11 = v5;
  v15 = buf;
  v16 = v26;
  v17 = v24;
  v18 = v22;
  v19 = v21;
  v20 = v8;
  v13 = v11;
  selfCopy = self;
  [inputItems2 enumerateObjectsUsingBlock:v12];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(buf, 8);
}

void __62__RPBroadcastMP4ClipHandler_beginRequestWithExtensionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachments];
  v5 = [v4 objectAtIndexedSubscript:0];

  if ([v5 hasItemConformingToTypeIdentifier:*(a1 + 32)])
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__RPBroadcastMP4ClipHandler_beginRequestWithExtensionContext___block_invoke_2;
    v7[3] = &unk_278B62008;
    v8 = v3;
    v10 = *(a1 + 56);
    v11 = *(a1 + 72);
    v12 = *(a1 + 88);
    v9 = *(a1 + 40);
    [v5 loadItemForTypeIdentifier:v6 options:0 completionHandler:v7];
  }
}

void __62__RPBroadcastMP4ClipHandler_beginRequestWithExtensionContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __62__RPBroadcastMP4ClipHandler_beginRequestWithExtensionContext___block_invoke_2_cold_1();
    }

    goto LABEL_19;
  }

  v8 = [*(a1 + 32) attributedTitle];
  v9 = [v8 string];
  v10 = [v9 isEqualToString:@"RPBroadcastExtensionKeyMovieClipURL"];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received movie clip URL", &v25, 2u);
    }

    v11 = *(a1 + 48);
LABEL_12:
    objc_storeStrong((*(v11 + 8) + 40), a2);
    goto LABEL_13;
  }

  v12 = [*(a1 + 32) attributedTitle];
  v13 = [v12 string];
  v14 = [v13 isEqualToString:@"RPBroadcastExtensionKeyExtensionUserInfo"];

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received user info", &v25, 2u);
    }

    v11 = *(a1 + 56);
    goto LABEL_12;
  }

  v19 = [*(a1 + 32) attributedTitle];
  v20 = [v19 string];
  v21 = [v20 isEqualToString:@"RPBroadcastExtensionKeyRequestedFinish"];

  if (v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request finished", &v25, 2u);
    }

    *(*(*(a1 + 64) + 8) + 24) = [v6 BOOLValue];
    goto LABEL_13;
  }

  v22 = [*(a1 + 32) attributedTitle];
  v23 = [v22 string];
  v24 = [v23 isEqualToString:@"RPBroadcastExtensionKeyExtensionSandboxToken"];

  if (v24)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received sandbox token", &v25, 2u);
    }

    v11 = *(a1 + 72);
    goto LABEL_12;
  }

LABEL_13:
  if (*(a1 + 88) == ++*(*(*(a1 + 80) + 8) + 24))
  {
    [*(*(*(a1 + 72) + 8) + 40) UTF8String];
    v15 = sandbox_extension_consume();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = v15;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received all data, consumed sandbox token ret=%llu", &v25, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "calling subclass method", &v25, 2u);
    }

    v16 = *(a1 + 40);
    v17 = [MEMORY[0x277CBEBC0] URLWithString:*(*(*(a1 + 48) + 8) + 40)];
    [v16 processMP4ClipWithURL:v17 setupInfo:*(*(*(a1 + 56) + 8) + 40) finished:*(*(*(a1 + 64) + 8) + 24)];
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

@end
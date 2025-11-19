@interface DiagnosticExtensionCaller
+ (BOOL)getAttachmentsFrom:(id)a3 forBundleID:(id)a4 withParameters:(id)a5 queue:(id)a6 reply:(id)a7;
+ (id)sharedInstance;
- (BOOL)_getAttachmentsFrom:(id)a3 forBundleID:(id)a4 withParameters:(id)a5 queue:(id)a6 reply:(id)a7;
- (DiagnosticExtensionCaller)init;
- (id)_getDEExtensionWithIdentifier:(id)a3;
@end

@implementation DiagnosticExtensionCaller

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DiagnosticExtensionCaller_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_0 != -1)
  {
    dispatch_once(&sharedInstance_pred_0, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __43__DiagnosticExtensionCaller_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (DiagnosticExtensionCaller)init
{
  v6.receiver = self;
  v6.super_class = DiagnosticExtensionCaller;
  v2 = [(DiagnosticExtensionCaller *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    liveDEs = v2->_liveDEs;
    v2->_liveDEs = v3;
  }

  return v2;
}

- (id)_getDEExtensionWithIdentifier:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = *MEMORY[0x277CCA0E0];
    v23[0] = *MEMORY[0x277CCA0F8];
    v23[1] = v5;
    v24[0] = @"com.apple.diagnosticextensions-service";
    v24[1] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v7 = MEMORY[0x277CCA9C8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__DiagnosticExtensionCaller__getDEExtensionWithIdentifier___block_invoke;
    v13[3] = &unk_278CF07E8;
    v16 = &v17;
    v14 = v3;
    v8 = v4;
    v15 = v8;
    [v7 extensionsWithMatchingAttributes:v6 completion:v13];
    v9 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v8, v9);
    v10 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __59__DiagnosticExtensionCaller__getDEExtensionWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277D051C8]);
          v15 = [v14 initWithNSExtension:{v13, v28}];
          [v7 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v10);
    }

    v16 = [v7 sortedArrayUsingComparator:&__block_literal_global_4];
    if ([v7 count])
    {
      v17 = [v7 firstObject];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if ([v7 count]< 2)
      {
LABEL_19:
        dispatch_semaphore_signal(*(a1 + 40));
        goto LABEL_20;
      }

      v20 = diagextLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v7 count];
        v22 = *(a1 + 32);
        *buf = 134218242;
        v33 = v21;
        v34 = 2112;
        v35 = v22;
        v23 = "Found %ld DEs that matched with the identifier %@.";
        v24 = v20;
        v25 = 22;
LABEL_17:
        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }

    else
    {
      v20 = diagextLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        *buf = 138412290;
        v33 = v26;
        v23 = "Did not find DE that matched with the identifier %@.";
        v24 = v20;
        v25 = 12;
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v7 = diagextLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Error discovering extensions: %@", buf, 0xCu);
  }

LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __59__DiagnosticExtensionCaller__getDEExtensionWithIdentifier___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attachmentsName];
  v6 = [v4 attachmentsName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)_getAttachmentsFrom:(id)a3 forBundleID:(id)a4 withParameters:(id)a5 queue:(id)a6 reply:(id)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v34 = a4;
  v36 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v12 && v14)
  {
    v16 = [(DiagnosticExtensionCaller *)self _getDEExtensionWithIdentifier:v12];
    v35 = v16 != 0;
    if (v16)
    {
      [(NSMutableArray *)self->_liveDEs addObject:v16];
      v33 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v36];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v58 = 0;
      objc_initWeak(&location, v16);
      v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
      if (v17)
      {
        v18 = dispatch_time(0, 900000000000);
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke;
        handler[3] = &unk_278CF0810;
        objc_copyWeak(&v52, &location);
        v51 = buf;
        v48 = v12;
        v49 = self;
        v50 = v15;
        dispatch_source_set_event_handler(v17, handler);
        dispatch_resume(v17);

        objc_destroyWeak(&v52);
      }

      else
      {
        v22 = diagextLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v54 = 0;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "Failed to create a timer.", v54, 2u);
        }
      }

      v23 = qos_class_self();
      v24 = v23;
      if (v23 <= QOS_CLASS_DEFAULT)
      {
        v25 = QOS_CLASS_DEFAULT;
      }

      else
      {
        v25 = v23;
      }

      if (v23 <= 0x14)
      {
        v26 = diagextLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v54 = 67109376;
          *v55 = v25;
          *&v55[4] = 1024;
          *&v55[6] = v24;
          _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_INFO, "Enforcing QoS %u over requested QoS %u to ensure timely launch of the diagnostic extension", v54, 0xEu);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_79;
      block[3] = &unk_278CF0888;
      v38 = v16;
      v21 = v33;
      v39 = v21;
      v27 = v17;
      v40 = v27;
      v41 = v13;
      objc_copyWeak(&v46, &location);
      v28 = v12;
      v42 = v28;
      v45 = buf;
      v43 = self;
      v44 = v15;
      v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
      v30 = diagextLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v54 = 138412546;
        *v55 = v28;
        *&v55[8] = 2112;
        v56 = v21;
        _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_INFO, "Calling DE %@ with parameters: %@", v54, 0x16u);
      }

      v29[2](v29);
      objc_destroyWeak(&v46);

      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = diagextLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, "DECaller failing to find extension with name: %@", buf, 0xCu);
      }

      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
      (v15)[2](v15, 0, v21);
    }
  }

  else
  {
    v16 = diagextLogHandle();
    v35 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = _Block_copy(v15);
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DECaller given a nil name (%@) or nil reply block (%p)", buf, 0x16u);

      v35 = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v35;
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = diagextLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Diagnostic Extension %@ timed out. Moving on.", &v8, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);

    if (WeakRetained)
    {
      [*(*(a1 + 40) + 16) removeObject:WeakRetained];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_79(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_2;
  v6[3] = &unk_278CF0860;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  objc_copyWeak(&v12, (a1 + 96));
  v9 = *(a1 + 64);
  v5 = *(a1 + 80);
  v4 = v5;
  v11 = v5;
  v10 = *(a1 + 72);
  [v2 attachmentsForParameters:v3 andHandler:v6];

  objc_destroyWeak(&v12);
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_source_cancel(v4);
  }

  v5 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_3;
  block[3] = &unk_278CF0838;
  objc_copyWeak(&v14, (a1 + 80));
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = *(a1 + 64);
  v6 = v8;
  v13 = v8;
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v14);
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = diagextLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v26 = v4;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Diagnostic Extension %@ returned with attachments: %@", buf, 0x16u);
  }

  v19 = WeakRetained;

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = a1;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * v12);
        v10 = [v14 attachmentType];

        if ([v10 isEqualToString:@"DEAttachmentTypeItem"])
        {
          [v6 addObject:v14];
        }

        else
        {
          v15 = diagextLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v10;
            _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "Attachment type (%@) is not DEAttachmentTypeItem", buf, 0xCu);
          }
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v16 = *(v18[8] + 8);
  if ((*(v16 + 24) & 1) == 0)
  {
    *(v16 + 24) = 1;
    (*(v18[7] + 16))();
    if (v19)
    {
      [*(v18[6] + 16) removeObject:v19];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (BOOL)getAttachmentsFrom:(id)a3 forBundleID:(id)a4 withParameters:(id)a5 queue:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[DiagnosticExtensionCaller sharedInstance];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 _getAttachmentsFrom:v11 forBundleID:v12 withParameters:v13 queue:v14 reply:v15];
  }

  else
  {
    v19 = diagextLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "DECaller: Failed to use DiagnosticExtensionCaller", v21, 2u);
    }

    v18 = 0;
  }

  return v18;
}

@end
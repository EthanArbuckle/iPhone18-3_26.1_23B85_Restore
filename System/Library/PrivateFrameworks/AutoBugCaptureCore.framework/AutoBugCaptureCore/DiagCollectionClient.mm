@interface DiagCollectionClient
- (DiagCollectionClient)init;
- (DiagCollectionClient)initWithDestinationDirectory:(id)directory;
- (id)setupXPCInterface;
- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply;
- (void)moveDiagnosticFilesToDestination:(id)destination reply:(id)reply;
@end

@implementation DiagCollectionClient

- (DiagCollectionClient)init
{
  v3 = NSTemporaryDirectory();
  v4 = [(DiagCollectionClient *)self initWithDestinationDirectory:v3];

  return v4;
}

- (DiagCollectionClient)initWithDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = DiagCollectionClient;
  v6 = [(DiagCollectionClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->destinationDirectory, directory);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.autobugcapture.diagcollectionclient.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (id)setupXPCInterface
{
  currentLoginUserID = [(DiagCollectionClient *)self currentLoginUserID];
  if (currentLoginUserID)
  {
    v3 = currentLoginUserID;
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptom_diagnostics_collection" options:0];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28538CC28];
    [v4 setRemoteObjectInterface:v5];

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    remoteObjectInterface = [v4 remoteObjectInterface];
    [remoteObjectInterface setClasses:v11 forSelector:sel_collectPayloadsWithIdentifier_diagnosticExtensions_reply_ argumentIndex:0 ofReply:1];

    [v4 setInvalidationHandler:&__block_literal_global_7];
    [v4 setInterruptionHandler:&__block_literal_global_65];
    [v4 _setTargetUserIdentifier:v3];
    [v4 resume];
    v13 = diagcollectLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagCollectionClient: XPC interface ready.", buf, 2u);
    }
  }

  else
  {
    v11 = diagcollectLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Could not ready the XPC interface (missing target user id)", v15, 2u);
    }

    v4 = 0;
  }

  return v4;
}

void __41__DiagCollectionClient_setupXPCInterface__block_invoke()
{
  v0 = diagcollectLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_241804000, v0, OS_LOG_TYPE_INFO, "DiagCollectionClient: Connection invalidated.", v1, 2u);
  }
}

void __41__DiagCollectionClient_setupXPCInterface__block_invoke_63()
{
  v0 = diagcollectLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_241804000, v0, OS_LOG_TYPE_INFO, "DiagCollectionClient: Connection interrupted.", v1, 2u);
  }
}

- (void)moveDiagnosticFilesToDestination:(id)destination reply:(id)reply
{
  replyCopy = reply;
  v7 = MEMORY[0x277CCAA00];
  destinationCopy = destination;
  defaultManager = [v7 defaultManager];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke;
  v15[3] = &unk_278CF0A30;
  v15[4] = self;
  v16 = defaultManager;
  v11 = dictionary;
  v17 = v11;
  v12 = defaultManager;
  [destinationCopy enumerateKeysAndObjectsUsingBlock:v15];

  v13 = diagcollectLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "DiagCollectionClient: Finished moving all DiagnosticExtension files", v14, 2u);
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v11);
  }
}

void __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = diagcollectLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "DiagCollectionClient: Processing files for %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke_69;
    v20 = &unk_278CF0A08;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v8;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:&v17];
    [*(a1 + 48) setObject:v12 forKeyedSubscript:{v9, v17, v18, v19, v20}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 48) setObject:v6 forKeyedSubscript:v5];
    }

    else
    {
      v13 = diagcollectLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Found unexpected object %@ with value %@ in DE filepaths dictionary (expected NSArray)", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke_69(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 lastPathComponent];
    if (([v4 containsString:*(a1 + 32)]& 1) == 0)
    {
      v5 = diagcollectLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138412546;
        v18 = v4;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagCollectionClient: WARNING - File %@ does not contain this DiagnosticExtention's identifier (%@) in the filename", buf, 0x16u);
      }
    }

    v7 = [*(*(a1 + 40) + 16) stringByAppendingPathComponent:v4];
    v8 = *(a1 + 48);
    v16 = 0;
    v9 = [v8 moveItemAtPath:v3 toPath:v7 error:&v16];
    v10 = v16;
    v11 = diagcollectLogHandle();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v18 = v3;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "DiagCollectionClient: Moved file from %@ to %@", buf, 0x16u);
      }

      [*(a1 + 56) addObject:v7];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v3;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Unable to move file at %@ to %@ (%@)", buf, 0x20u);
      }
    }
  }

  else
  {
    v4 = diagcollectLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Found unexpected object %@ with value %@ in DE filepaths array (expected NSString)", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply
{
  v56 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  queueCopy = queue;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([identifierCopy length])
    {
      setupXPCInterface = [(DiagCollectionClient *)self setupXPCInterface];
      v15 = setupXPCInterface;
      if (setupXPCInterface)
      {
        *v48 = 0;
        v49 = v48;
        v50 = 0x2020000000;
        v51 = 0;
        _queue = [setupXPCInterface _queue];
        v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, _queue);

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_2;
        v43[3] = &unk_278CF0A80;
        v18 = v17;
        v44 = v18;
        v47 = v48;
        v19 = queueCopy;
        v45 = v19;
        v20 = replyCopy;
        v46 = v20;
        v29 = [v15 remoteObjectProxyWithErrorHandler:v43];
        if (v29)
        {
          v21 = diagcollectLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v55 = 600;
            _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "DiagCollectionClient: calling remote service (collectPayloadsWithIdentifier:diagnosticExtensionsWithParameters:) with timeout = %d", buf, 8u);
          }

          if (v18)
          {
            v22 = dispatch_time(0, 600000000000);
            dispatch_source_set_timer(v18, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_75;
            handler[3] = &unk_278CF0AA8;
            v42 = v48;
            v40 = v19;
            v41 = v20;
            dispatch_source_set_event_handler(v18, handler);
            v23 = diagcollectLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "DiagCollectionClient: Starting safeguard timer", buf, 2u);
            }

            dispatch_resume(v18);
            v24 = v40;
          }

          else
          {
            v24 = diagcollectLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "DiagCollectionClient: Failed to create a safeguard timer.", buf, 2u);
            }
          }

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_77;
          v34[3] = &unk_278CF0AF8;
          v38 = v48;
          v35[0] = v18;
          v35[1] = self;
          v36 = v19;
          v37 = v20;
          [v29 collectPayloadsWithIdentifier:identifierCopy diagnosticExtensionsWithParameters:parametersCopy reply:v34];

          v27 = v35;
        }

        else
        {
          v26 = diagcollectLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_INFO, "DiagCollectionClient: remote service not initialized", buf, 2u);
          }

          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_82;
          v32[3] = &unk_278CF0A58;
          v27 = &v33;
          v33 = v20;
          dispatch_async(v19, v32);
        }

        _Block_object_dispose(v48, 8);
      }

      else
      {
        v25 = diagcollectLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v48 = 0;
          _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Unable to establish XPC connection to DiagnosticExtension collection service", v48, 2u);
        }

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_83;
        v30[3] = &unk_278CF0A58;
        v31 = replyCopy;
        dispatch_async(queueCopy, v30);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke;
      block[3] = &unk_278CF0A58;
      v53 = replyCopy;
      dispatch_async(queueCopy, block);
      v15 = v53;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = diagcollectLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    *buf = 136315138;
    v15 = [v5 UTF8String];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "DiagCollectionClient: remote object proxy error %s", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_73;
  v11[3] = &unk_278CEFF50;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_75(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v9 = v1;
    v10 = v2;
    v4 = diagcollectLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "DiagCollectionClient: calling remote service (collectPayloadsWithIdentifier:diagnosticExtensionsWithParameters:) timedout", v8, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_76;
    block[3] = &unk_278CF0A58;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_76(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_77(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (!v9)
  {
    if (v8)
    {
      [v8 UTF8String];
      v11 = sandbox_extension_consume();
      if (v11 != -1)
      {
LABEL_12:
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_78;
        v21[3] = &unk_278CF0AD0;
        v18 = *(a1 + 40);
        v22 = *(a1 + 48);
        v19 = *(a1 + 56);
        v23 = 0;
        v24 = v19;
        [v18 moveDiagnosticFilesToDestination:v7 reply:v21];
        if (v11 != -1)
        {
          sandbox_extension_release();
        }

        goto LABEL_15;
      }

      v12 = diagcollectLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = __error();
        v14 = strerror(*v13);
        *buf = 136315138;
        v26 = v14;
        v15 = "Failed to consume sandbox extension due to error: %s";
        v16 = v12;
        v17 = 12;
LABEL_10:
        _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      }
    }

    else
    {
      v12 = diagcollectLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = "No sandbox extension provided";
        v16 = v12;
        v17 = 2;
        goto LABEL_10;
      }
    }

    v11 = -1;
    goto LABEL_12;
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_2_79;
  block[3] = &unk_278CF0478;
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_82(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_83(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

@end
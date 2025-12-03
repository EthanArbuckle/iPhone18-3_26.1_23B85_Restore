@interface DiagCollectionServiceImpl
- (ABCAdministrator)administrator;
- (BOOL)assertEntitlement:(id)entitlement entitlement:(id)a4;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DiagCollectionServiceImpl)initWithQueue:(id)queue;
- (id)diagnosticExtensionController;
- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions reply:(id)reply;
- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters reply:(id)reply;
- (void)shutdown;
@end

@implementation DiagCollectionServiceImpl

- (DiagCollectionServiceImpl)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = DiagCollectionServiceImpl;
  v6 = [(DiagCollectionServiceImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->queue, queue);
  }

  return v7;
}

- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  extensionsCopy = extensions;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = extensionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        null = [MEMORY[0x277CBEB68] null];
        [dictionary setObject:null forKeyedSubscript:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(DiagCollectionServiceImpl *)self collectPayloadsWithIdentifier:identifierCopy diagnosticExtensionsWithParameters:dictionary reply:replyCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)collectPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters reply:(id)reply
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  replyCopy = reply;
  queue = self->queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke;
  v15[3] = &unk_278CF0DD0;
  v16 = parametersCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = identifierCopy;
  v14 = parametersCopy;
  dispatch_async(queue, v15);
}

void __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = xpcLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) allKeys];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "DiagCollectionService: collectPayloadsForDiagnosticExtensions:%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) diagnosticExtensionController];
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke_5;
  v10[3] = &unk_278CF0D08;
  v8 = *(a1 + 56);
  v10[4] = *(a1 + 40);
  v11 = v8;
  [v4 collectDEPayloadsWithIdentifier:v5 diagnosticExtensionsWithParameters:v6 queue:v7 reply:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __100__DiagCollectionServiceImpl_collectPayloadsWithIdentifier_diagnosticExtensionsWithParameters_reply___block_invoke_5(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpcLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v3;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "DiagCollectionService: collected DE payloads:%@", &v18, 0xCu);
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) diagnosticExtensionController];
    v6 = [v5 destinationRootDirectory];
    [v6 UTF8String];
    v7 = sandbox_extension_issue_file();

    v8 = xpcLogHandle();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) diagnosticExtensionController];
        v11 = [v10 destinationRootDirectory];
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "DiagCollectionService: Issued RW sandbox extension for: %@", &v18, 0xCu);
      }

      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      free(v7);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 32) diagnosticExtensionController];
        v14 = [v13 destinationRootDirectory];
        v15 = __error();
        v16 = strerror(*v15);
        v18 = 138412546;
        v19 = v14;
        v20 = 2080;
        v21 = v16;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "DiagCollectionService: Failed to issue RW sandbox extension for: %@ due to error: %s", &v18, 0x16u);
      }

      v12 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)assertEntitlement:(id)entitlement entitlement:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  v6 = a4;
  v7 = [entitlementCopy valueForEntitlement:v6];
  v8 = v7;
  if (v7 && ([v7 BOOLValue] & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = xpcLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109378;
      v13[1] = [entitlementCopy processIdentifier];
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "DiagCollectionService: connection %d is missing entitlement %@", v13, 0x12u);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)shutdown
{
  deController = self->deController;
  self->deController = 0;
  MEMORY[0x2821F96F8]();
}

- (id)diagnosticExtensionController
{
  v12 = *MEMORY[0x277D85DE8];
  deController = self->deController;
  if (!deController)
  {
    v4 = NSTemporaryDirectory();
    v5 = xpcLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "DiagCollectionService: creating DiagnosticExtensionsController with destination %@", &v10, 0xCu);
    }

    v6 = [[DiagnosticExtensionController alloc] initWithDestinationDirectory:v4];
    v7 = self->deController;
    self->deController = v6;

    deController = self->deController;
  }

  v8 = *MEMORY[0x277D85DE8];

  return deController;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [(DiagCollectionServiceImpl *)self assertEntitlement:connectionCopy entitlement:@"com.apple.symptom_diagnostics.collect"];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28538CC28];
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:self];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    exportedInterface = [connectionCopy exportedInterface];
    [exportedInterface setClasses:v13 forSelector:sel_collectPayloadsWithIdentifier_diagnosticExtensions_reply_ argumentIndex:0 ofReply:1];

    [connectionCopy resume];
  }

  else
  {
    v13 = xpcLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = connectionCopy;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "DiagCollectionService: connection (%@) lacks proper entitlements", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (ABCAdministrator)administrator
{
  WeakRetained = objc_loadWeakRetained(&self->_administrator);

  return WeakRetained;
}

@end
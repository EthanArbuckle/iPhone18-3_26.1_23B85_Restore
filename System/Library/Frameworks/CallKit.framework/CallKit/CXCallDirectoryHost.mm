@interface CXCallDirectoryHost
- (BOOL)_connectionContainsCallDirectoryHostEntitlementCapability:(id)capability;
- (CXCallDirectoryHost)init;
- (CXCallDirectoryHostDelegate)delegate;
- (void)_nsExtensionWithIdentifier:(id)identifier completion:(id)completion;
- (void)cleanUpLiveLookupDataWithReply:(id)reply;
- (void)compactStoreWithReply:(id)reply;
- (void)fetchLiveBlockingInfoForHandle:(id)handle reply:(id)reply;
- (void)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number reply:(id)reply;
- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only reply:(id)reply;
- (void)getEnabledForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)getEnabledStatusForExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)getExtensionsWithReply:(id)reply;
- (void)getLastUpdatedCallDirectoryInfoWithReply:(id)reply;
- (void)launchCallDirectorySettingsWithReply:(id)reply;
- (void)performDelegateCallback:(id)callback;
- (void)prepareStoreIfNecessary;
- (void)refreshExtensionContextForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)refreshPIRParametersForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)reloadExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)resetLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setEnabled:(BOOL)enabled forExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)setEnabled:(BOOL)enabled forLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)setPrioritizedExtensionIdentifiers:(id)identifiers reply:(id)reply;
- (void)synchronizeExtensionsWithReply:(id)reply;
@end

@implementation CXCallDirectoryHost

- (CXCallDirectoryHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXCallDirectoryHost)init
{
  v6.receiver = self;
  v6.super_class = CXCallDirectoryHost;
  v2 = [(CXCallDirectoryHost *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectoryhost", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CXCallDirectoryHost *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CXCallDirectoryHost_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

uint64_t __41__CXCallDirectoryHost_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)performDelegateCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(CXCallDirectoryHost *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CXCallDirectoryHost_performDelegateCallback___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(queue, v7);
}

void __47__CXCallDirectoryHost_performDelegateCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegateQueue];

    if (v4)
    {
      v5 = [*(a1 + 32) delegateQueue];
      dispatch_async(v5, *(a1 + 40));
    }
  }
}

- (BOOL)_connectionContainsCallDirectoryHostEntitlementCapability:(id)capability
{
  v14 = *MEMORY[0x1E69E9840];
  capabilityCopy = capability;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = [currentConnection valueForEntitlement:@"com.apple.CallKit.call-directory"];
  if (!v5)
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = currentConnection;
      v12 = 2112;
      v13 = @"com.apple.CallKit.call-directory";
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] XPC connection %@ does not contain entitlement '%@'", &v10, 0x16u);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)currentConnection _connectionContainsCallDirectoryHostEntitlementCapability:v5, v7];
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = [v5 containsObject:capabilityCopy];
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)reloadExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "identifier %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke;
  v12[3] = &unk_1E7C06D48;
  v13 = identifierCopy;
  v14 = replyCopy;
  v12[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_2;
    v9[3] = &unk_1E7C06D20;
    v9[4] = v5;
    v10 = v3;
    v11 = *(a1 + 48);
    [v5 performDelegateCallback:v9];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1(a1);
    }

    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v7 + 16))(v7, v8);
  }
}

void __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedReloadForExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)resetLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "resetLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v12[3] = &unk_1E7C06D48;
  v13 = identifierCopy;
  v14 = replyCopy;
  v12[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_2;
    v11[3] = &unk_1E7C06D20;
    v11[4] = v7;
    v12 = v5;
    v13 = *(a1 + 48);
    [v7 performDelegateCallback:v11];
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1(a1);
    }

    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v9 + 16))(v9, v10);
  }
}

void __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedResetForLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)refreshPIRParametersForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "refreshPIRParametersForLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v12[3] = &unk_1E7C06D48;
  v13 = identifierCopy;
  v14 = replyCopy;
  v12[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke_2;
    v11[3] = &unk_1E7C06D20;
    v11[4] = v7;
    v12 = v5;
    v13 = *(a1 + 48);
    [v7 performDelegateCallback:v11];
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1(a1);
    }

    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v9 + 16))(v9, v10);
  }
}

void __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedRefreshPIRParametersForLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)refreshExtensionContextForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "refreshExtensionContextForLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v12[3] = &unk_1E7C06D48;
  v13 = identifierCopy;
  v14 = replyCopy;
  v12[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke_2;
    v11[3] = &unk_1E7C06D20;
    v11[4] = v7;
    v12 = v5;
    v13 = *(a1 + 48);
    [v7 performDelegateCallback:v11];
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1(a1);
    }

    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v9 + 16))(v9, v10);
  }
}

void __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedRefreshExtensionContextForLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getEnabledStatusForExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "getEnabledStatusForExtensionWithIdentifieridentifier %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke;
  v12[3] = &unk_1E7C06D48;
  v13 = identifierCopy;
  v14 = replyCopy;
  v12[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke_2;
    v9[3] = &unk_1E7C06D20;
    v9[4] = v5;
    v10 = v3;
    v11 = *(a1 + 48);
    [v5 performDelegateCallback:v9];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1(a1);
    }

    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedEnabledStatusForExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getEnabledForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "getEnabledForLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CXCallDirectoryHost_getEnabledForLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v12[3] = &unk_1E7C06D48;
  v13 = identifierCopy;
  v14 = replyCopy;
  v12[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __76__CXCallDirectoryHost_getEnabledForLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 callDirectoryHost:*(a1 + 32) requestedEnabledForLiveLookupExtension:v3 completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = CXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1(a1);
    }

    v6 = *(a1 + 48);
    v4 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v6 + 16))(v6, 0, v4);
  }
}

- (void)setEnabled:(BOOL)enabled forLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  enabledCopy = enabled;
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = CXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v34 = enabledCopy;
    v35 = 2112;
    v36 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "enabled %d identifier %@", buf, 0x12u);
  }

  if (![(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"modify-any-extension"])
  {
    v13 = CXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v13 setEnabled:v14 forLiveLookupExtensionWithIdentifier:v15 reply:v16, v17, v18, v19, v20];
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"modify-any-extension"];
    v21 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v22 = [v21 cx_callDirectoryManagerErrorWithCode:100 userInfo:v11];
    goto LABEL_12;
  }

  v30 = 0;
  v11 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifierCopy error:&v30];
  v12 = v30;
  if (!v11)
  {
    v23 = CXDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CXCallDirectoryHost setEnabled:forLiveLookupExtensionWithIdentifier:reply:];
    }

    v22 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
LABEL_12:
    v24 = v22;
    replyCopy[2](replyCopy, v22);

    goto LABEL_13;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__CXCallDirectoryHost_setEnabled_forLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v26[3] = &unk_1E7C06D70;
  v26[4] = self;
  v29 = enabledCopy;
  v11 = v11;
  v27 = v11;
  v28 = replyCopy;
  [(CXCallDirectoryHost *)self performDelegateCallback:v26];

LABEL_13:
  v25 = *MEMORY[0x1E69E9840];
}

void __77__CXCallDirectoryHost_setEnabled_forLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedSetEnabled:*(a1 + 56) forLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)_nsExtensionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    v7 = objc_alloc_init(CXCallDirectoryNSExtensionManager);
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    processIdentifier = [currentConnection processIdentifier];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke;
    v12[3] = &unk_1E7C06D98;
    v14 = completionCopy;
    v13 = identifierCopy;
    v15 = processIdentifier;
    [(CXCallDirectoryNSExtensionManager *)v7 extensionWithIdentifier:v13 inContainingAppWithProcessIdentifier:processIdentifier completion:v12];
  }

  else
  {
    v10 = CXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] identifier is nil", v11, 2u);
    }

    v7 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

void __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = CXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke_cold_1(a1);
    }

    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (void)setEnabled:(BOOL)enabled forExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  enabledCopy = enabled;
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = CXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v34 = enabledCopy;
    v35 = 2112;
    v36 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "enabled %d identifier %@", buf, 0x12u);
  }

  if (![(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"modify-any-extension"])
  {
    v13 = CXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v13 setEnabled:v14 forLiveLookupExtensionWithIdentifier:v15 reply:v16, v17, v18, v19, v20];
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"modify-any-extension"];
    v21 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v22 = [v21 cx_callDirectoryManagerErrorWithCode:100 userInfo:v11];
    goto LABEL_12;
  }

  v30 = 0;
  v11 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifierCopy error:&v30];
  v12 = v30;
  if (!v11)
  {
    v23 = CXDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CXCallDirectoryHost setEnabled:forLiveLookupExtensionWithIdentifier:reply:];
    }

    v22 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
LABEL_12:
    v24 = v22;
    replyCopy[2](replyCopy, v22);

    goto LABEL_13;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__CXCallDirectoryHost_setEnabled_forExtensionWithIdentifier_reply___block_invoke;
  v26[3] = &unk_1E7C06D70;
  v26[4] = self;
  v29 = enabledCopy;
  v11 = v11;
  v27 = v11;
  v28 = replyCopy;
  [(CXCallDirectoryHost *)self performDelegateCallback:v26];

LABEL_13:
  v25 = *MEMORY[0x1E69E9840];
}

void __67__CXCallDirectoryHost_setEnabled_forExtensionWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToSetEnabled:*(a1 + 56) forExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getLastUpdatedCallDirectoryInfoWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "getLastUpdatedCallDirectoryInfoWithReply", buf, 2u);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__CXCallDirectoryHost_getLastUpdatedCallDirectoryInfoWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v6 getLastUpdatedCallDirectoryInfoWithReply:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v15 cx_callDirectoryManagerErrorWithCode:100 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __64__CXCallDirectoryHost_getLastUpdatedCallDirectoryInfoWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedLastUpdatedInfoWithCompletionHandler:*(a1 + 40)];
}

- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only reply:(id)reply
{
  v32 = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
  replyCopy = reply;
  v10 = CXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = numbersCopy;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "phoneNumbers %@", buf, 0xCu);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__CXCallDirectoryHost_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_reply___block_invoke;
    v24[3] = &unk_1E7C06D70;
    v24[4] = self;
    v25 = numbersCopy;
    onlyCopy = only;
    v26 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v24];
  }

  else
  {
    v11 = CXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v11 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v12 cacheOnly:v13 reply:v14, v15, v16, v17, v18];
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v20 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = v19;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v22 = [v20 cx_callDirectoryManagerErrorWithCode:100 userInfo:v21];
    (*(replyCopy + 2))(replyCopy, 0, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __102__CXCallDirectoryHost_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedFirstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:*(a1 + 40) cacheOnly:*(a1 + 56) completionHandler:*(a1 + 48)];
}

- (void)fetchLiveBlockingInfoForHandle:(id)handle reply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = handleCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "blockingInfoFor handle=%@", buf, 0xCu);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__CXCallDirectoryHost_fetchLiveBlockingInfoForHandle_reply___block_invoke;
    v22[3] = &unk_1E7C06D20;
    v22[4] = self;
    v23 = handleCopy;
    v24 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v22];
  }

  else
  {
    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v9 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v10 cacheOnly:v11 reply:v12, v13, v14, v15, v16];
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v18 cx_callDirectoryManagerErrorWithCode:100 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, 0, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __60__CXCallDirectoryHost_fetchLiveBlockingInfoForHandle_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedLiveBlockingInfoFor:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number reply:(id)reply
{
  v25[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  replyCopy = reply;
  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__CXCallDirectoryHost_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_reply___block_invoke;
    v21[3] = &unk_1E7C06D20;
    v21[4] = self;
    v22 = numberCopy;
    v23 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v21];
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v8 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v9 cacheOnly:v10 reply:v11, v12, v13, v14, v15];
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v17 cx_callDirectoryManagerErrorWithCode:100 userInfo:v18];
    (*(replyCopy + 2))(replyCopy, 0, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __87__CXCallDirectoryHost_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getExtensionsWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-extension-priorities"])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__CXCallDirectoryHost_getExtensionsWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v6 getExtensionsWithReply:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-extension-priorities"];
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v15 cx_callDirectoryManagerErrorWithCode:100 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __46__CXCallDirectoryHost_getExtensionsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedExtensionsWithCompletionHandler:*(a1 + 40)];
}

- (void)setPrioritizedExtensionIdentifiers:(id)identifiers reply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = identifiersCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers %@", buf, 0xCu);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"modify-extension-priorities"])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__CXCallDirectoryHost_setPrioritizedExtensionIdentifiers_reply___block_invoke;
    v22[3] = &unk_1E7C06D20;
    v22[4] = self;
    v23 = identifiersCopy;
    v24 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v22];
  }

  else
  {
    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v9 setPrioritizedExtensionIdentifiers:v10 reply:v11, v12, v13, v14, v15, v16];
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"modify-extension-priorities"];
    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = [v18 cx_callDirectoryManagerErrorWithCode:100 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __64__CXCallDirectoryHost_setPrioritizedExtensionIdentifiers_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToSetPrioritizedExtensionIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)synchronizeExtensionsWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"synchronize-extensions"])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__CXCallDirectoryHost_synchronizeExtensionsWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v6 synchronizeExtensionsWithReply:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"synchronize-extensions"];
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v15 cx_callDirectoryManagerErrorWithCode:100 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __54__CXCallDirectoryHost_synchronizeExtensionsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToSynchronizeExtensionsWithCompletionHandler:*(a1 + 40)];
}

- (void)compactStoreWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"compact-store"])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__CXCallDirectoryHost_compactStoreWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v6 compactStoreWithReply:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"compact-store"];
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v15 cx_callDirectoryManagerErrorWithCode:100 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __45__CXCallDirectoryHost_compactStoreWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToCompactStoreWithCompletionHandler:*(a1 + 40)];
}

- (void)cleanUpLiveLookupDataWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "cleanUpLiveLookupDataWithReply", buf, 2u);
  }

  if ([(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"compact-store"])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__CXCallDirectoryHost_cleanUpLiveLookupDataWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v6 compactStoreWithReply:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"compact-store"];
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v15 cx_callDirectoryManagerErrorWithCode:100 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __54__CXCallDirectoryHost_cleanUpLiveLookupDataWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHostRequestedToCleanupLiveLookupData:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)launchCallDirectorySettingsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CXCallDirectoryHost_launchCallDirectorySettingsWithReply___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  [(CXCallDirectoryHost *)self performDelegateCallback:v7];
}

void __60__CXCallDirectoryHost_launchCallDirectorySettingsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToLaunchCallDirectorySettingsWithCompletionHandler:*(a1 + 40)];
}

- (void)prepareStoreIfNecessary
{
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "prepareStoreIfNecessary", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CXCallDirectoryHost_prepareStoreIfNecessary__block_invoke;
  v4[3] = &unk_1E7C06CA8;
  v4[4] = self;
  [(CXCallDirectoryHost *)self performDelegateCallback:v4];
}

void __46__CXCallDirectoryHost_prepareStoreIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToPrepareStoreWithCompletionHandler:0];
}

- (void)_connectionContainsCallDirectoryHostEntitlementCapability:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 138412802;
  v7 = a1;
  v8 = 2112;
  v9 = @"com.apple.CallKit.call-directory";
  v10 = 2112;
  v11 = objc_opt_class();
  v4 = v11;
  _os_log_error_impl(&dword_1B47F3000, a3, OS_LOG_TYPE_ERROR, "XPC connection %@ contains entitlement '%@' but it is of unexpected class %@, should be NSArray", &v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

void __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v1, v2, "No extension returned with identifier %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1B47F3000, v1, v2, "No extension returned with identifier %@ error %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(uint64_t)a3 forLiveLookupExtensionWithIdentifier:(uint64_t)a4 reply:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:forLiveLookupExtensionWithIdentifier:reply:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(&dword_1B47F3000, v0, v1, "Error locating extension with identifier %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_3();
  v7 = 1024;
  v8 = v3;
  _os_log_error_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_ERROR, "No extension found with identifier %@ containingAppPID %d", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getLastUpdatedCallDirectoryInfoWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requester does not contain entititlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(uint64_t)a3 cacheOnly:(uint64_t)a4 reply:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)getExtensionsWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPrioritizedExtensionIdentifiers:(uint64_t)a3 reply:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeExtensionsWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)compactStoreWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end
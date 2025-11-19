@interface AFUIServiceSession
- (AFUIServiceSession)initWithSessionQueue:(id)a3 connection:(id)a4 remoteProcess:(id)a5;
- (id)_applicationIdentifierFromConnection:(id)a3;
- (id)_documentTraitsByAddingClientPropertiesFromConnection:(id)a3 toDocumentTraits:(id)a4;
- (void)dealloc;
- (void)displayForDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5;
- (void)documentStateChanged:(id)a3;
- (void)hide;
@end

@implementation AFUIServiceSession

- (AFUIServiceSession)initWithSessionQueue:(id)a3 connection:(id)a4 remoteProcess:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = AFUIServiceSession;
  v12 = [(AFUIServiceSession *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionQueue, a3);
    objc_storeStrong(&v13->_connection, a4);
    objc_storeStrong(&v13->_remoteProcess, a5);
    v14 = objc_alloc_init(AFUIPanel);
    panel = v13->_panel;
    v13->_panel = v14;

    [(AFUIPanel *)v13->_panel setDelegate:v13];
    [v10 setExportedObject:v13];
    v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EAF8E8];
    [v10 setExportedInterface:v16];

    objc_initWeak(&location, v13);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__AFUIServiceSession_initWithSessionQueue_connection_remoteProcess___block_invoke;
    v20[3] = &unk_1E8424940;
    objc_copyWeak(&v21, &location);
    [v10 setInterruptionHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__AFUIServiceSession_initWithSessionQueue_connection_remoteProcess___block_invoke_2;
    v18[3] = &unk_1E8424940;
    objc_copyWeak(&v19, &location);
    [v10 setInvalidationHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __68__AFUIServiceSession_initWithSessionQueue_connection_remoteProcess___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained hide];
    WeakRetained = v2;
  }
}

void __68__AFUIServiceSession_initWithSessionQueue_connection_remoteProcess___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained hide];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  v3 = [(AFUIServiceSession *)self panel];
  [v3 hide];

  [(NSXPCConnection *)self->_connection invalidate];
  v4.receiver = self;
  v4.super_class = AFUIServiceSession;
  [(AFUIServiceSession *)&v4 dealloc];
}

- (void)displayForDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696B0B8];
  v11 = a3;
  v12 = [v10 currentConnection];
  v13 = [(AFUIServiceSession *)self _documentTraitsByAddingClientPropertiesFromConnection:v12 toDocumentTraits:v11];

  v14 = [(AFUIServiceSession *)self sessionQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__AFUIServiceSession_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke;
  v18[3] = &unk_1E8424968;
  v18[4] = self;
  v19 = v13;
  v20 = v8;
  v21 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v13;
  dispatch_async(v14, v18);
}

void __83__AFUIServiceSession_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AFUIServiceSession_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke_2;
  block[3] = &unk_1E8424968;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__AFUIServiceSession_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) panel];
  [v2 displayForDocumentTraits:*(a1 + 40) documentState:*(a1 + 48) textOperationsHandler:*(a1 + 56)];
}

- (void)documentStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(AFUIServiceSession *)self sessionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AFUIServiceSession_documentStateChanged___block_invoke;
  v7[3] = &unk_1E8424990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__AFUIServiceSession_documentStateChanged___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__AFUIServiceSession_documentStateChanged___block_invoke_2;
  v2[3] = &unk_1E8424990;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __43__AFUIServiceSession_documentStateChanged___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) panel];
  [v2 documentStateChanged:*(a1 + 40)];
}

- (void)hide
{
  v3 = [(AFUIServiceSession *)self sessionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__AFUIServiceSession_hide__block_invoke;
  block[3] = &unk_1E84247B0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __26__AFUIServiceSession_hide__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__AFUIServiceSession_hide__block_invoke_2;
  block[3] = &unk_1E84247B0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __26__AFUIServiceSession_hide__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) panel];
  [v1 hide];
}

- (id)_documentTraitsByAddingClientPropertiesFromConnection:(id)a3 toDocumentTraits:(id)a4
{
  v6 = a4;
  v7 = [(AFUIServiceSession *)self _applicationIdentifierFromConnection:a3];
  if ([v7 length])
  {
    v8 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v7 error:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 infoDictionary];
      v11 = *MEMORY[0x1E695E120];
      v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E695E120], 0}];
      v13 = [v10 objectsForKeys:v12];

      v14 = [v6 copy];
      v15 = [v9 applicationIdentifier];
      [v14 setAppId:v15];

      v16 = [v9 bundleIdentifier];
      [v14 setBundleId:v16];

      v17 = [v9 localizedName];
      [v14 setLocalizedAppName:v17];

      v18 = [v13 objectForKey:v11 ofClass:objc_opt_class()];
      [v14 setAppName:v18];
    }

    else
    {
      v14 = v6;
    }
  }

  else
  {
    v14 = v6;
  }

  return v14;
}

- (id)_applicationIdentifierFromConnection:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = *MEMORY[0x1E695E480];
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  v6 = SecTaskCreateWithAuditToken(v5, &v10);
  v7 = v6;
  if (v6)
  {
    v8 = SecTaskCopyValueForEntitlement(v6, @"application-identifier", 0);
    CFRelease(v7);
    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v7 = v8;
    }
  }

  return v7;
}

@end
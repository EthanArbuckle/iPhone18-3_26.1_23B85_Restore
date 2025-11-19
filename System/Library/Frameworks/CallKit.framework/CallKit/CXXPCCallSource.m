@interface CXXPCCallSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isConnected;
- (BOOL)isPermittedToUseBluetoothAccessories;
- (BOOL)isPermittedToUsePrivateAPI;
- (BOOL)isPermittedToUsePublicAPI;
- (CXXPCCallSource)initWithConnection:(id)a3;
- (NSXPCConnection)connection;
- (id)vendorProtocolDelegate;
- (int)processIdentifier;
- (void)dealloc;
- (void)setConnection:(id)a3;
@end

@implementation CXXPCCallSource

- (BOOL)isConnected
{
  v2 = [(CXXPCCallSource *)self connection];
  v3 = v2 != 0;

  return v3;
}

- (NSXPCConnection)connection
{
  os_unfair_lock_lock_with_options();
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (int)processIdentifier
{
  v2 = [(CXXPCCallSource *)self connection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (id)vendorProtocolDelegate
{
  v2 = [(CXXPCCallSource *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (BOOL)isPermittedToUsePrivateAPI
{
  v2 = [(CXXPCCallSource *)self capabilities];
  v3 = [v2 containsObject:@"private-provider-api"];

  return v3;
}

- (BOOL)isPermittedToUsePublicAPI
{
  if ([(CXXPCCallSource *)self isPermittedToUsePrivateAPI])
  {
    return 1;
  }

  return [(CXXPCCallSource *)self hasVoIPBackgroundMode];
}

- (CXXPCCallSource)initWithConnection:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 cx_applicationIdentifier];
  v42.receiver = self;
  v42.super_class = CXXPCCallSource;
  v7 = [(CXCallSource *)&v42 initWithIdentifier:v6];

  if (v7)
  {
    v7->_accessorLock._os_unfair_lock_opaque = 0;
    v8 = [v5 cx_capabilities];
    capabilities = v7->_capabilities;
    v7->_capabilities = v8;

    v10 = [MEMORY[0x1E69635F8] cx_applicationRecordForConnection:v5];
    v11 = [v10 bundleIdentifier];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v11;

    v13 = [v10 URL];
    bundleURL = v7->_bundleURL;
    v7->_bundleURL = v13;

    v7->_hasVoIPBackgroundMode = [v10 containsBackgroundModeOptions:1];
    v15 = [v10 localizedName];
    v16 = [v15 copy];
    localizedName = v7->_localizedName;
    v7->_localizedName = v16;

    if (v7->_hasVoIPBackgroundMode || [(CXXPCCallSource *)v7 isPermittedToUsePrivateAPI])
    {
      objc_storeStrong(&v7->_connection, a3);
      [(NSXPCConnection *)v7->_connection setExportedObject:v7];
      v18 = [MEMORY[0x1E696B0D0] cx_providerHostInterface];
      [(NSXPCConnection *)v7->_connection setExportedInterface:v18];

      v19 = [MEMORY[0x1E696B0D0] cx_providerVendorInterface];
      [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v19];

      objc_initWeak(&location, v7);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __38__CXXPCCallSource_initWithConnection___block_invoke;
      v39[3] = &unk_1E7C06E50;
      objc_copyWeak(&v40, &location);
      [(NSXPCConnection *)v7->_connection setInterruptionHandler:v39];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __38__CXXPCCallSource_initWithConnection___block_invoke_3;
      v37[3] = &unk_1E7C06E50;
      objc_copyWeak(&v38, &location);
      [(NSXPCConnection *)v7->_connection setInvalidationHandler:v37];
      [(NSXPCConnection *)v7->_connection resume];
      v20 = CXDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = [(CXCallSource *)v7 identifier];
        v23 = v7->_bundleIdentifier;
        v24 = v7->_bundleURL;
        hasVoIPBackgroundMode = v7->_hasVoIPBackgroundMode;
        v26 = v7->_capabilities;
        *buf = 138413826;
        v44 = v21;
        v45 = 2112;
        v46 = v22;
        v47 = 2112;
        v48 = v23;
        v49 = 2112;
        v50 = v24;
        v51 = 1024;
        v52 = hasVoIPBackgroundMode;
        v53 = 2112;
        v54 = v26;
        v55 = 2112;
        v56 = v5;
        _os_log_impl(&dword_1B47F3000, v20, OS_LOG_TYPE_DEFAULT, "Created %@ with identifier: %@ bundleIdentifier: %@ bundleURL: %@ hasVoIPBackgroundMode: %d capabilities: %@ connection: %@", buf, 0x44u);
      }

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      v27 = CXDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = v30;
        v32 = [(CXCallSource *)v7 identifier];
        v33 = v7->_bundleIdentifier;
        v34 = v7->_bundleURL;
        v35 = v7->_hasVoIPBackgroundMode;
        v36 = v7->_capabilities;
        *buf = 138413826;
        v44 = v30;
        v45 = 2112;
        v46 = v32;
        v47 = 2112;
        v48 = v33;
        v49 = 2112;
        v50 = v34;
        v51 = 1024;
        v52 = v35;
        v53 = 2112;
        v54 = v36;
        v55 = 2112;
        v56 = v5;
        _os_log_error_impl(&dword_1B47F3000, v27, OS_LOG_TYPE_ERROR, "Denying creation of %@ with identifier: %@ bundleIdentifier: %@ bundleURL: %@ hasVoIPBackgroundMode: %d capabilities: %@ connection: %@", buf, 0x44u);
      }

      v7 = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

void __38__CXXPCCallSource_initWithConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for XPC call source %@", &v5, 0xCu);
    }

    v3 = [WeakRetained connection];
    [v3 invalidate];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __38__CXXPCCallSource_initWithConnection___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for XPC call source %@", buf, 0xCu);
    }

    [WeakRetained setConnection:0];
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CXXPCCallSource_initWithConnection___block_invoke_4;
    block[3] = &unk_1E7C06CA8;
    v6 = WeakRetained;
    dispatch_async(v3, block);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __38__CXXPCCallSource_initWithConnection___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSourceInvalidated:*(a1 + 32)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXXPCCallSource;
  [(CXXPCCallSource *)&v3 dealloc];
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_connection != v5)
  {
    objc_storeStrong(&self->_connection, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(CXXPCCallSource *)self connection];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (BOOL)isPermittedToUseBluetoothAccessories
{
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69D54D0], *MEMORY[0x1E695E4C0]);
  v4 = *MEMORY[0x1E69D5508];
  v5 = [(CXXPCCallSource *)self connection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  v7 = TCCAccessCheckAuditToken() != 0;

  CFRelease(Mutable);
  return v7;
}

@end
@interface ACRemoteAccountStoreSession
- (ACRemoteAccountStoreSession)initWithListenerEndpoint:(id)a3;
- (id)_connection;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_locked_configureRemoteAccountStoreWithConnection:(id)a3;
- (void)_locked_connection:(id)a3 setEffectiveBundleID:(id)a4;
- (void)_locked_connection:(id)a3 setNotificationsEnabled:(BOOL)a4;
- (void)_setConnectionInterrupted;
- (void)_setConnectionInvalidated;
- (void)dealloc;
- (void)setEffectiveBundleID:(id)a3;
- (void)setNotificationsEnabled:(BOOL)a3;
@end

@implementation ACRemoteAccountStoreSession

- (id)_connection
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __42__ACRemoteAccountStoreSession__connection__block_invoke;
  v8 = &unk_1E79771F8;
  v9 = self;
  v3 = v6;
  os_unfair_lock_lock(&self->_connectionLock);
  v4 = v7(v3);
  os_unfair_lock_unlock(&self->_connectionLock);

  return v4;
}

id __42__ACRemoteAccountStoreSession__connection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__ACRemoteAccountStoreSession__connection__block_invoke_2;
    v19[3] = &unk_1E79771D0;
    v19[4] = v2;
    v4 = MEMORY[0x1AC5B3C70](v19);
    v5 = v4[2]();
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = +[ACRemoteAccountStoreInterface XPCInterface];
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2124588];
    [*(*(a1 + 32) + 8) setExportedInterface:v9];

    [*(*(a1 + 32) + 8) setExportedObject:*(*(a1 + 32) + 24)];
    objc_initWeak(&location, *(a1 + 32));
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42__ACRemoteAccountStoreSession__connection__block_invoke_3;
    v16[3] = &unk_1E7975B00;
    objc_copyWeak(&v17, &location);
    [*(*(a1 + 32) + 8) setInterruptionHandler:v16];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __42__ACRemoteAccountStoreSession__connection__block_invoke_52;
    v14 = &unk_1E7975B00;
    objc_copyWeak(&v15, &location);
    [*(*(a1 + 32) + 8) setInvalidationHandler:&v11];
    [*(*(a1 + 32) + 8) resume];
    [*(a1 + 32) _locked_configureRemoteAccountStoreWithConnection:*(*(a1 + 32) + 8)];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    v3 = *(*(a1 + 32) + 8);
  }

  return v3;
}

ACTrackedXPCConnection *__42__ACRemoteAccountStoreSession__connection__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [ACTrackedXPCConnection alloc];
  if (v2)
  {
    v4 = [(ACTrackedXPCConnection *)v3 initWithListenerEndpoint:*(*(a1 + 32) + 40)];
  }

  else
  {
    v4 = [(ACTrackedXPCConnection *)v3 initWithMachServiceName:@"com.apple.accountsd.accountmanager" options:0];
  }

  return v4;
}

- (void)dealloc
{
  clientSideListener = self->_clientSideListener;
  self->_clientSideListener = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  v4.receiver = self;
  v4.super_class = ACRemoteAccountStoreSession;
  [(ACRemoteAccountStoreSession *)&v4 dealloc];
}

void __42__ACRemoteAccountStoreSession__connection__block_invoke_52(uint64_t a1)
{
  v2 = _ACLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC3CD000, v2, OS_LOG_TYPE_DEFAULT, "The connection to ACDAccountStore was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setConnectionInvalidated];
}

- (ACRemoteAccountStoreSession)initWithListenerEndpoint:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ACRemoteAccountStoreSession;
  v6 = [(ACRemoteAccountStoreSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_connectionLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_listenerEndpoint, a3);
    v7->_notificationsEnabled = 1;
    v8 = objc_alloc_init(ACAccountStoreClientSideListener);
    clientSideListener = v7->_clientSideListener;
    v7->_clientSideListener = v8;
  }

  return v7;
}

void __42__ACRemoteAccountStoreSession__connection__block_invoke_3(uint64_t a1)
{
  v2 = _ACLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC3CD000, v2, OS_LOG_TYPE_DEFAULT, "The connection to ACDAccountStore was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setConnectionInterrupted];
}

- (void)_locked_configureRemoteAccountStoreWithConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(ACRemoteAccountStoreSession *)a2 _locked_configureRemoteAccountStoreWithConnection:?];
  }

  os_unfair_lock_assert_owner(&self->_connectionLock);
  v5 = self->_effectiveBundleID;
  if (v5)
  {
    [(ACRemoteAccountStoreSession *)self _locked_connection:v6 setEffectiveBundleID:v5];
  }

  if (!self->_notificationsEnabled)
  {
    [(ACRemoteAccountStoreSession *)self _locked_connection:v6 setNotificationsEnabled:0];
  }
}

- (void)setEffectiveBundleID:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_effectiveBundleID isEqualToString:v4])
  {
    v5 = [v4 copy];
    effectiveBundleID = self->_effectiveBundleID;
    self->_effectiveBundleID = v5;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __52__ACRemoteAccountStoreSession_setEffectiveBundleID___block_invoke;
    v10 = &unk_1E7975590;
    v11 = self;
    v12 = v4;
    v7 = v8;
    os_unfair_lock_lock(&self->_connectionLock);
    v9(v7);
    os_unfair_lock_unlock(&self->_connectionLock);
  }
}

void *__52__ACRemoteAccountStoreSession_setEffectiveBundleID___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[1];
  if (v3)
  {
    return [result _locked_connection:v3 setEffectiveBundleID:*(a1 + 40)];
  }

  return result;
}

- (void)setNotificationsEnabled:(BOOL)a3
{
  if (self->_notificationsEnabled != a3)
  {
    self->_notificationsEnabled = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v6 = __55__ACRemoteAccountStoreSession_setNotificationsEnabled___block_invoke;
    v7 = &unk_1E7977220;
    v8 = self;
    v9 = a3;
    v4 = v5;
    os_unfair_lock_lock(&self->_connectionLock);
    v6(v4);
    os_unfair_lock_unlock(&self->_connectionLock);
  }
}

void *__55__ACRemoteAccountStoreSession_setNotificationsEnabled___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[1];
  if (v3)
  {
    return [result _locked_connection:v3 setNotificationsEnabled:*(a1 + 40)];
  }

  return result;
}

- (void)_setConnectionInterrupted
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __56__ACRemoteAccountStoreSession__setConnectionInterrupted__block_invoke;
  v6 = &unk_1E7975AD8;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_connectionLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_connectionLock);
}

void __56__ACRemoteAccountStoreSession__setConnectionInterrupted__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)_setConnectionInvalidated
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __56__ACRemoteAccountStoreSession__setConnectionInvalidated__block_invoke;
  v6 = &unk_1E7975AD8;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_connectionLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_connectionLock);
}

void __56__ACRemoteAccountStoreSession__setConnectionInvalidated__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)_locked_connection:(id)a3 setEffectiveBundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [ACRemoteAccountStoreSession _locked_connection:a2 setEffectiveBundleID:self];
  }

  os_unfair_lock_assert_owner(&self->_connectionLock);
  v9 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_65;
  v11[3] = &unk_1E7977248;
  v12 = v8;
  v10 = v8;
  [v9 setClientBundleID:v10 withHandler:v11];
}

void __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_cold_1(v2, v3);
  }
}

void __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_65(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _ACLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_65_cold_2(a1, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_cold_1(v5, v7);
  }
}

- (void)_locked_connection:(id)a3 setNotificationsEnabled:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    [ACRemoteAccountStoreSession _locked_connection:a2 setNotificationsEnabled:self];
  }

  os_unfair_lock_assert_owner(&self->_connectionLock);
  v6 = [v7 remoteObjectProxy];
  [v6 setNotificationsEnabled:0];
}

- (id)remoteObjectProxy
{
  v2 = [(ACRemoteAccountStoreSession *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACRemoteAccountStoreSession *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACRemoteAccountStoreSession *)self _connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)_locked_configureRemoteAccountStoreWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACRemoteAccountStoreSession.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
}

- (void)_locked_connection:(uint64_t)a1 setEffectiveBundleID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACRemoteAccountStoreSession.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
}

void __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "Error setting the client's bundle ID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __71__ACRemoteAccountStoreSession__locked_connection_setEffectiveBundleID___block_invoke_65_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_DEBUG, "Spoofed the client's bundle ID to: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_locked_connection:(uint64_t)a1 setNotificationsEnabled:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACRemoteAccountStoreSession.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
}

@end
@interface CXNotificationServiceExtensionVoIPXPCClient
- (BOOL)requestDidArriveFromExtensionPoint;
- (BOOL)taskHasEntitlement:(id)a3;
- (CXNotificationServiceExtensionVoIPXPCClient)init;
- (NSXPCConnection)connection;
- (void)dealloc;
- (void)invalidate;
- (void)requestApplicationLaunchForIncomingCall:(id)a3 completion:(id)a4;
@end

@implementation CXNotificationServiceExtensionVoIPXPCClient

- (CXNotificationServiceExtensionVoIPXPCClient)init
{
  v3.receiver = self;
  v3.super_class = CXNotificationServiceExtensionVoIPXPCClient;
  result = [(CXNotificationServiceExtensionVoIPXPCClient *)&v3 init];
  if (result)
  {
    result->_accessorLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_accessorLock);
  [(NSXPCConnection *)self->_connection invalidate];
  os_unfair_lock_unlock(&self->_accessorLock);
  v3.receiver = self;
  v3.super_class = CXNotificationServiceExtensionVoIPXPCClient;
  [(CXNotificationServiceExtensionVoIPXPCClient *)&v3 dealloc];
}

- (NSXPCConnection)connection
{
  os_unfair_lock_lock(&self->_accessorLock);
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.callkit.notificationserviceextension.voip" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] cx_notificationServiceExtensionInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CXNotificationServiceExtensionVoIPXPCClient_connection__block_invoke;
    v11[3] = &unk_1E7C06E50;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__CXNotificationServiceExtensionVoIPXPCClient_connection__block_invoke_5;
    v9[3] = &unk_1E7C06E50;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v9];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  v7 = connection;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v7;
}

void __57__CXNotificationServiceExtensionVoIPXPCClient_connection__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for notification service extension message host %@", &v4, 0xCu);
    }

    [WeakRetained invalidate];
    [WeakRetained setConnection:0];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __57__CXNotificationServiceExtensionVoIPXPCClient_connection__block_invoke_5(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for notification service extension message host %@", &v4, 0xCu);
    }

    [WeakRetained setConnection:0];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v2 = [(CXNotificationServiceExtensionVoIPXPCClient *)self connection];
  [v2 invalidate];
}

- (BOOL)taskHasEntitlement:(id)a3
{
  v3 = a3;
  v4 = SecTaskCreateFromSelf(0);
  v5 = v4;
  if (v4)
  {
    v6 = SecTaskCopyValueForEntitlement(v4, v3, 0);
    CFRelease(v5);
    if (v6)
    {
      v7 = CFGetTypeID(v6);
      LOBYTE(v5) = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
      CFRelease(v6);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)requestDidArriveFromExtensionPoint
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 infoDictionary];

  v4 = [v3 objectForKey:@"NSExtension"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 objectForKey:@"PlugInKit"];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)requestApplicationLaunchForIncomingCall:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CXNotificationServiceExtensionVoIPXPCClient *)self taskHasEntitlement:@"com.apple.developer.usernotifications.filtering"])
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = 2;
LABEL_8:
    v13 = [v11 cx_notificationServiceExtensionErrorWithCode:v12];
    v7[2](v7, v13);

    goto LABEL_9;
  }

  if (![(CXNotificationServiceExtensionVoIPXPCClient *)self requestDidArriveFromExtensionPoint])
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = 1;
    goto LABEL_8;
  }

  v8 = [(CXNotificationServiceExtensionVoIPXPCClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__CXNotificationServiceExtensionVoIPXPCClient_requestApplicationLaunchForIncomingCall_completion___block_invoke;
  v14[3] = &unk_1E7C07230;
  v9 = v7;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  [v10 notificationServiceExtension:v6 reply:v9];

LABEL_9:
}

void __98__CXNotificationServiceExtensionVoIPXPCClient_requestApplicationLaunchForIncomingCall_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__CXNotificationServiceExtensionVoIPXPCClient_requestApplicationLaunchForIncomingCall_completion___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __98__CXNotificationServiceExtensionVoIPXPCClient_requestApplicationLaunchForIncomingCall_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Could not send VoIP notification service extension message due to connection error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
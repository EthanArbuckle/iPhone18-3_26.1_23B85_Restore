@interface CXNotificationServiceExtensionVoIPXPCHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CXNotificationServiceExtensionHostDelegate)delegate;
- (CXNotificationServiceExtensionVoIPXPCHost)initWithDelegate:(id)a3;
- (void)notificationServiceExtension:(id)a3 reply:(id)a4;
- (void)notificationServiceExtensionHost:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5 reply:(id)a6;
@end

@implementation CXNotificationServiceExtensionVoIPXPCHost

- (CXNotificationServiceExtensionVoIPXPCHost)initWithDelegate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CXNotificationServiceExtensionVoIPXPCHost;
  v5 = [(CXNotificationServiceExtensionVoIPXPCHost *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"com.apple.callkit.notificationserviceextension.voip";
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "Initializing XPC Service %@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.notificationserviceextension.voip"];
    xpcListener = v6->_xpcListener;
    v6->_xpcListener = v8;

    [(NSXPCListener *)v6->_xpcListener setDelegate:v6];
    [(NSXPCListener *)v6->_xpcListener resume];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", &v10, 0xCu);
  }

  [v5 setExportedObject:self];
  v7 = [MEMORY[0x1E696B0D0] cx_notificationServiceExtensionInterface];
  [v5 setExportedInterface:v7];

  [v5 resume];
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)notificationServiceExtension:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 cx_bundleIdentifier];
    if (v10)
    {
      v11 = v10;
      v23 = 0;
      v12 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v10 error:&v23];
      v13 = v23;
      if (v12)
      {
        v14 = [v12 extensionPointRecord];
        v15 = [v14 name];
        v16 = [v15 isEqualToString:@"com.apple.usernotifications.service"];

        if (v16)
        {
          v17 = [v12 containingBundleRecord];
          v18 = [v17 bundleIdentifier];

          if (v18)
          {
            [(CXNotificationServiceExtensionVoIPXPCHost *)self notificationServiceExtensionHost:self didReceiveIncomingMessage:v6 forBundleIdentifier:v18 reply:v7];
LABEL_16:

            goto LABEL_17;
          }

          if (!v7)
          {
            goto LABEL_17;
          }

          v21 = MEMORY[0x1E696ABC0];
          v22 = 0;
LABEL_15:
          v18 = [v21 cx_notificationServiceExtensionErrorWithCode:v22];
          v7[2](v7, v18);
          goto LABEL_16;
        }

        v20 = CXDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CXNotificationServiceExtensionVoIPXPCHost notificationServiceExtension:v11 reply:v20];
        }
      }

      else
      {
        v20 = CXDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(CXNotificationServiceExtensionVoIPXPCHost *)v11 notificationServiceExtension:v13 reply:v20];
        }
      }

      if (!v7)
      {
LABEL_17:

        goto LABEL_18;
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = 1;
      goto LABEL_15;
    }
  }

  if (v7)
  {
    v19 = [MEMORY[0x1E696ABC0] cx_notificationServiceExtensionErrorWithCode:1];
    v7[2](v7, v19);
  }

LABEL_18:
}

- (void)notificationServiceExtensionHost:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(CXNotificationServiceExtensionVoIPXPCHost *)self delegate];
  [v12 notificationServiceExtensionHost:self didReceiveIncomingMessage:v11 forBundleIdentifier:v10 reply:v9];
}

- (CXNotificationServiceExtensionHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notificationServiceExtension:(uint64_t)a1 reply:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Aborting request %@ did not arrive from Notification Service Extension", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)notificationServiceExtension:(os_log_t)log reply:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Aborting request, could not find application record for bundle id %@, error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end
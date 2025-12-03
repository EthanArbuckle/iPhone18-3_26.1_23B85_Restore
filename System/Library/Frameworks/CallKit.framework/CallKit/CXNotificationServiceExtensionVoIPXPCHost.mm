@interface CXNotificationServiceExtensionVoIPXPCHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CXNotificationServiceExtensionHostDelegate)delegate;
- (CXNotificationServiceExtensionVoIPXPCHost)initWithDelegate:(id)delegate;
- (void)notificationServiceExtension:(id)extension reply:(id)reply;
- (void)notificationServiceExtensionHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
@end

@implementation CXNotificationServiceExtensionVoIPXPCHost

- (CXNotificationServiceExtensionVoIPXPCHost)initWithDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CXNotificationServiceExtensionVoIPXPCHost;
  v5 = [(CXNotificationServiceExtensionVoIPXPCHost *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v12 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", &v10, 0xCu);
  }

  [connectionCopy setExportedObject:self];
  cx_notificationServiceExtensionInterface = [MEMORY[0x1E696B0D0] cx_notificationServiceExtensionInterface];
  [connectionCopy setExportedInterface:cx_notificationServiceExtensionInterface];

  [connectionCopy resume];
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)notificationServiceExtension:(id)extension reply:(id)reply
{
  extensionCopy = extension;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = currentConnection;
  if (currentConnection)
  {
    cx_bundleIdentifier = [currentConnection cx_bundleIdentifier];
    if (cx_bundleIdentifier)
    {
      v11 = cx_bundleIdentifier;
      v23 = 0;
      v12 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:cx_bundleIdentifier error:&v23];
      v13 = v23;
      if (v12)
      {
        extensionPointRecord = [v12 extensionPointRecord];
        name = [extensionPointRecord name];
        v16 = [name isEqualToString:@"com.apple.usernotifications.service"];

        if (v16)
        {
          containingBundleRecord = [v12 containingBundleRecord];
          bundleIdentifier = [containingBundleRecord bundleIdentifier];

          if (bundleIdentifier)
          {
            [(CXNotificationServiceExtensionVoIPXPCHost *)self notificationServiceExtensionHost:self didReceiveIncomingMessage:extensionCopy forBundleIdentifier:bundleIdentifier reply:replyCopy];
LABEL_16:

            goto LABEL_17;
          }

          if (!replyCopy)
          {
            goto LABEL_17;
          }

          v21 = MEMORY[0x1E696ABC0];
          v22 = 0;
LABEL_15:
          bundleIdentifier = [v21 cx_notificationServiceExtensionErrorWithCode:v22];
          replyCopy[2](replyCopy, bundleIdentifier);
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

      if (!replyCopy)
      {
LABEL_17:

        goto LABEL_18;
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = 1;
      goto LABEL_15;
    }
  }

  if (replyCopy)
  {
    v19 = [MEMORY[0x1E696ABC0] cx_notificationServiceExtensionErrorWithCode:1];
    replyCopy[2](replyCopy, v19);
  }

LABEL_18:
}

- (void)notificationServiceExtensionHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  messageCopy = message;
  delegate = [(CXNotificationServiceExtensionVoIPXPCHost *)self delegate];
  [delegate notificationServiceExtensionHost:self didReceiveIncomingMessage:messageCopy forBundleIdentifier:identifierCopy reply:replyCopy];
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
@interface ASDEventServiceExtensionRemoteContext
- (void)didReceiveInstallationEvent:(id)a3;
@end

@implementation ASDEventServiceExtensionRemoteContext

- (void)didReceiveInstallationEvent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleID];
    v12 = 138543874;
    v13 = v6;
    v14 = 2048;
    v15 = [v4 phase];
    v16 = 2048;
    v17 = [v4 terminalPhase];
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "didReceiveInstallationEvent: %{public}@ %ld/%ld", &v12, 0x20u);
  }

  v7 = [(ASDEventServiceExtension *)self->_extensionInstance didReceiveInstallationEvent:v4];
  v8 = [v4 phase];
  if (v8 == [v4 terminalPhase])
  {
    [(ASDEventServiceExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
  }

  else if (!v7)
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B8220000, v9, OS_LOG_TYPE_INFO, "Canceling request", &v12, 2u);
    }

    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"ASDErrorDomain" code:908 userInfo:0];
    [(ASDEventServiceExtensionRemoteContext *)self cancelRequestWithError:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end
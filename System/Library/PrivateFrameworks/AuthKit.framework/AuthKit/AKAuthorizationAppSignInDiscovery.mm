@interface AKAuthorizationAppSignInDiscovery
- (AKAuthorizationAppSignInDiscovery)init;
- (void)dealloc;
- (void)startDiscoveryWithCompletion:(id)completion;
@end

@implementation AKAuthorizationAppSignInDiscovery

- (AKAuthorizationAppSignInDiscovery)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKAuthorizationAppSignInDiscovery;
  v8 = [(AKAuthorizationAppSignInDiscovery *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_alloc_init(AKAuthorizationDaemonConnection);
    daemonConnection = v8->_daemonConnection;
    v8->_daemonConnection = v2;
    MEMORY[0x1E69E5920](daemonConnection);
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSiwa();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, selfCopy);
    _os_log_debug_impl(&dword_193225000, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (selfCopy->_daemonConnection)
  {
    objc_storeStrong(&selfCopy->_daemonConnection, 0);
  }

  v2.receiver = selfCopy;
  v2.super_class = AKAuthorizationAppSignInDiscovery;
  [(AKAuthorizationAppSignInDiscovery *)&v2 dealloc];
  *MEMORY[0x1E69E9840];
}

- (void)startDiscoveryWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  daemonConnection = selfCopy->_daemonConnection;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __66__AKAuthorizationAppSignInDiscovery_startDiscoveryWithCompletion___block_invoke;
  v8 = &unk_1E73D3510;
  v9 = MEMORY[0x1E69E5928](location[0]);
  v10 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:?];
  [v10 startDiscoveryWithCompletion:location[0]];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __66__AKAuthorizationAppSignInDiscovery_startDiscoveryWithCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

@end
@interface AKCarouselAlertClientConnection
+ (id)sharedConnection;
- (AKCarouselAlertClientConnection)init;
- (id)connection;
- (void)dealloc;
- (void)dismissAlert:(id)a3;
- (void)presentAlertWithDictionary:(id)a3 completion:(id)a4;
- (void)unsafe_invalidate;
@end

@implementation AKCarouselAlertClientConnection

+ (id)sharedConnection
{
  v5 = &sharedConnection_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedConnection_sharedConnection;

  return v2;
}

uint64_t __51__AKCarouselAlertClientConnection_sharedConnection__block_invoke()
{
  v0 = objc_alloc_init(AKCarouselAlertClientConnection);
  v1 = sharedConnection_sharedConnection;
  sharedConnection_sharedConnection = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (AKCarouselAlertClientConnection)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKCarouselAlertClientConnection;
  v7 = [(AKCarouselAlertClientConnection *)&v8 init];
  v10 = v7;
  objc_storeStrong(&v10, v7);
  if (v7)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.AuthKit.alertRequestQueue", v6);
    internalQueue = v10->_internalQueue;
    v10->_internalQueue = v2;
    MEMORY[0x1E69E5920](internalQueue);
    MEMORY[0x1E69E5920](v6);
  }

  v5 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (void)unsafe_invalidate
{
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:?];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  objc_storeStrong(&self->_xpcConnection, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKCarouselAlertClientConnection *)self unsafe_invalidate];
  v2.receiver = v4;
  v2.super_class = AKCarouselAlertClientConnection;
  [(AKCarouselAlertClientConnection *)&v2 dealloc];
}

- (id)connection
{
  v20 = self;
  location[1] = a2;
  if (!self->_xpcConnection)
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.Carousel.authAlertXPCService" options:4096];
    xpcConnection = v20->_xpcConnection;
    v20->_xpcConnection = v2;
    MEMORY[0x1E69E5920](xpcConnection);
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DCB08];
    [(NSXPCConnection *)v20->_xpcConnection setRemoteObjectInterface:?];
    MEMORY[0x1E69E5920](v6);
    objc_initWeak(location, v20);
    v13 = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __45__AKCarouselAlertClientConnection_connection__block_invoke;
    v17 = &unk_1E73D34E8;
    objc_copyWeak(&v18, location);
    [(NSXPCConnection *)v20->_xpcConnection setInterruptionHandler:&v13];
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __45__AKCarouselAlertClientConnection_connection__block_invoke_2;
    v11 = &unk_1E73D34E8;
    objc_copyWeak(&v12, location);
    [(NSXPCConnection *)v20->_xpcConnection setInvalidationHandler:&v7];
    [(NSXPCConnection *)v20->_xpcConnection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  v4 = v20->_xpcConnection;

  return v4;
}

void __45__AKCarouselAlertClientConnection_connection__block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  location = _AKLogSystem();
  v8 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_8_0(v11, v10[0]);
    _os_log_error_impl(&dword_193225000, location, v8, "self: (%p); Connection interrupted", v11, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if (v10[0])
  {
    queue = [v10[0] internalQueue];
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __45__AKCarouselAlertClientConnection_connection__block_invoke_53;
    v6 = &unk_1E73D34C0;
    v7 = MEMORY[0x1E69E5928](v10[0]);
    dispatch_async(queue, &v2);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v10, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __45__AKCarouselAlertClientConnection_connection__block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  [v2 invalidate];
  MEMORY[0x1E69E5920](v2);
  return [*(a1 + 32) setXpcConnection:0];
}

void __45__AKCarouselAlertClientConnection_connection__block_invoke_2(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  location = _AKLogSystem();
  v8 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_8_0(v11, v10[0]);
    _os_log_error_impl(&dword_193225000, location, v8, "self: (%p); Connection invalidated", v11, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if (v10[0])
  {
    queue = [v10[0] internalQueue];
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __45__AKCarouselAlertClientConnection_connection__block_invoke_54;
    v6 = &unk_1E73D34C0;
    v7 = MEMORY[0x1E69E5928](v10[0]);
    dispatch_async(queue, &v2);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v10, 0);
  *MEMORY[0x1E69E9840];
}

- (void)presentAlertWithDictionary:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  objc_initWeak(&v14, v17);
  queue = v17->_internalQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__AKCarouselAlertClientConnection_presentAlertWithDictionary_completion___block_invoke;
  v10 = &unk_1E73D3560;
  objc_copyWeak(&v13, &v14);
  v12 = MEMORY[0x1E69E5928](v15);
  v11 = MEMORY[0x1E69E5928](location[0]);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __73__AKCarouselAlertClientConnection_presentAlertWithDictionary_completion___block_invoke(uint64_t a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 48));
  v16 = [v17[0] connection];
  v1 = v16;
  v10[1] = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __73__AKCarouselAlertClientConnection_presentAlertWithDictionary_completion___block_invoke_2;
  v14 = &unk_1E73D3510;
  v15 = MEMORY[0x1E69E5928](*(a1 + 40));
  v4 = [v1 remoteObjectProxyWithErrorHandler:?];
  v3 = *(a1 + 32);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __73__AKCarouselAlertClientConnection_presentAlertWithDictionary_completion___block_invoke_56;
  v9 = &unk_1E73D3538;
  v10[0] = MEMORY[0x1E69E5928](*(a1 + 40));
  [v4 presentAlertWithDictionary:v3 completion:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
}

void __73__AKCarouselAlertClientConnection_presentAlertWithDictionary_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "error communicating to XPC: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKCarouselAlertClientConnection_presentAlertWithDictionary_completion___block_invoke_56(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissAlert:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v11, v13);
  queue = v13->_internalQueue;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __48__AKCarouselAlertClientConnection_dismissAlert___block_invoke;
  v8 = &unk_1E73D35A8;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x1E69E5928](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(location, 0);
}

void __48__AKCarouselAlertClientConnection_dismissAlert___block_invoke(uint64_t a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained((a1 + 40));
  v3 = [v4[0] connection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  [v2 dismissAlert:*(a1 + 32)];
  MEMORY[0x1E69E5920](v2);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v4, 0);
}

void __48__AKCarouselAlertClientConnection_dismissAlert___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "error communicating to XPC: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end
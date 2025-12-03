@interface ATXDonationManager
+ (id)sharedManager;
- (id)_connection;
- (id)_init;
- (void)_cleanUpConnection;
- (void)_connection;
- (void)_donateDocumentInteraction:(id)interaction completion:(id)completion;
- (void)_donateMenuItem:(id)item completion:(id)completion;
- (void)dealloc;
- (void)donateDocumentInteraction:(id)interaction completion:(id)completion;
- (void)donateMenuItem:(id)item completion:(id)completion;
@end

@implementation ATXDonationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ATXDonationManager sharedManager];
  }

  v3 = sharedManager_shared;

  return v3;
}

uint64_t __35__ATXDonationManager_sharedManager__block_invoke()
{
  v0 = [[ATXDonationManager alloc] _init];
  v1 = sharedManager_shared;
  sharedManager_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  v4.receiver = self;
  v4.super_class = ATXDonationManager;
  [(ATXDonationManager *)&v4 dealloc];
}

- (void)donateMenuItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__ATXDonationManager_donateMenuItem_completion___block_invoke;
  block[3] = &unk_1E80C23F8;
  block[4] = self;
  v12 = itemCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  dispatch_async(queue, block);
}

- (void)donateDocumentInteraction:(id)interaction completion:(id)completion
{
  interactionCopy = interaction;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ATXDonationManager_donateDocumentInteraction_completion___block_invoke;
  block[3] = &unk_1E80C23F8;
  block[4] = self;
  v12 = interactionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = interactionCopy;
  dispatch_async(queue, block);
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = ATXDonationManager;
  v2 = [(ATXDonationManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.proactive.app-client.donation", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)_connection
{
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.app-client.donation" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E6DAB0];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_12];
    objc_initWeak(&location, self);
    v7 = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__ATXDonationManager__connection__block_invoke_13;
    v11[3] = &unk_1E80C2420;
    v8 = v7;
    v12 = v8;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v11];
    v9 = __atxlog_handle_client_donations();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ATXDonationManager *)v9 _connection];
    }

    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __33__ATXDonationManager__connection__block_invoke()
{
  v0 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __33__ATXDonationManager__connection__block_invoke_cold_1(v0);
  }
}

void __33__ATXDonationManager__connection__block_invoke_13(uint64_t a1)
{
  v2 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __33__ATXDonationManager__connection__block_invoke_13_cold_1(v2);
  }

  v3 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ATXDonationManager__connection__block_invoke_14;
  block[3] = &unk_1E80C10D8;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);
}

void __33__ATXDonationManager__connection__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanUpConnection];
    WeakRetained = v2;
  }
}

- (void)_cleanUpConnection
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXDonationManager _cleanUpConnection]";
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "%s: Invalidating and cleaning up connection", &v1, 0xCu);
}

- (void)_donateMenuItem:(id)item completion:(id)completion
{
  v4 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v6 = [v4 errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:1 userInfo:0];
  completionCopy[2](completionCopy, v6);
}

- (void)_donateDocumentInteraction:(id)interaction completion:(id)completion
{
  v4 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v6 = [v4 errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:1 userInfo:0];
  completionCopy[2](completionCopy, v6);
}

- (void)_connection
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXDonationManager _connection]";
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "%s: Activating connection", &v1, 0xCu);
}

void __33__ATXDonationManager__connection__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXDonationManager _connection]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Interruption handler called", &v1, 0xCu);
}

void __33__ATXDonationManager__connection__block_invoke_13_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXDonationManager _connection]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Invalidation handler called", &v1, 0xCu);
}

@end
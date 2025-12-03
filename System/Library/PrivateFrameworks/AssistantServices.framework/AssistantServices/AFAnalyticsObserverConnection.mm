@interface AFAnalyticsObserverConnection
- (AFAnalyticsObserverConnection)initWithObservation:(id)observation;
- (id)_connection;
- (void)_cleanUpConnection;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)dealloc;
- (void)didObserveEvents:(id)events completion:(id)completion;
- (void)flushWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation AFAnalyticsObserverConnection

- (void)_connectionInvalidated
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[AFAnalyticsObserverConnection _connectionInvalidated]";
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AFAnalyticsObserverConnection__connectionInvalidated__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_connectionInterrupted
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[AFAnalyticsObserverConnection _connectionInterrupted]";
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AFAnalyticsObserverConnection__connectionInterrupted__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistant.analytics-observation" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BF0E0];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = AFAnalyticsObserverGetXPCInterface();
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__AFAnalyticsObserverConnection__connection__block_invoke;
    v15[3] = &unk_1E7348A80;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v15];
    v11 = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__AFAnalyticsObserverConnection__connection__block_invoke_2;
    v13[3] = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:v13];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __44__AFAnalyticsObserverConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __44__AFAnalyticsObserverConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)_cleanUpConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setExportedObject:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  semaphore = self->_semaphore;

  dispatch_semaphore_signal(semaphore);
}

- (void)didObserveEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  completionCopy = completion;
  observationHandler = self->_observationHandler;
  if (observationHandler)
  {
    observationHandler[2](observationHandler, eventsCopy);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AFAnalyticsObserverConnection_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  [(AFAnalyticsObserverConnection *)self _cleanUpConnection];
  v3.receiver = self;
  v3.super_class = AFAnalyticsObserverConnection;
  [(AFAnalyticsObserverConnection *)&v3 dealloc];
}

- (void)flushWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[AFAnalyticsObserverConnection flushWithCompletion:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s begin", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AFAnalyticsObserverConnection_flushWithCompletion___block_invoke;
  v9[3] = &unk_1E7349838;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __53__AFAnalyticsObserverConnection_flushWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_42187];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AFAnalyticsObserverConnection_flushWithCompletion___block_invoke_4;
  v4[3] = &unk_1E73494D8;
  v5 = *(a1 + 40);
  [v3 flushWithCompletion:v4];
}

uint64_t __53__AFAnalyticsObserverConnection_flushWithCompletion___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFAnalyticsObserverConnection flushWithCompletion:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s end", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __53__AFAnalyticsObserverConnection_flushWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFAnalyticsObserverConnection flushWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s end with error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (AFAnalyticsObserverConnection)initWithObservation:(id)observation
{
  observationCopy = observation;
  v18.receiver = self;
  v18.super_class = AFAnalyticsObserverConnection;
  v5 = [(AFAnalyticsObserverConnection *)&v18 init];
  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    semaphore = v5->_semaphore;
    v5->_semaphore = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    v10 = dispatch_queue_create("com.apple.assistant.analytics-observation.connection", v9);
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = MEMORY[0x193AFB7B0](observationCopy);
    observationHandler = v5->_observationHandler;
    v5->_observationHandler = v12;

    v14 = v5->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AFAnalyticsObserverConnection_initWithObservation___block_invoke;
    block[3] = &unk_1E73497C8;
    v17 = v5;
    dispatch_async(v14, block);
  }

  return v5;
}

void __53__AFAnalyticsObserverConnection_initWithObservation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AFAnalyticsObserverConnection_initWithObservation___block_invoke_2;
  v6[3] = &unk_1E73493C0;
  v7 = *(a1 + 32);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AFAnalyticsObserverConnection_initWithObservation___block_invoke_2;
  v4[3] = &unk_1E73497C8;
  v5 = *(a1 + 32);
  [v3 observeWithCompletion:v4];
}

void __53__AFAnalyticsObserverConnection_initWithObservation___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFAnalyticsObserverConnection initWithObservation:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 16));

  v5 = *MEMORY[0x1E69E9840];
}

@end
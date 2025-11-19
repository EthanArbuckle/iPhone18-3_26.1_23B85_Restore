@interface AFAnalyticsConnection
- (AFAnalyticsConnection)init;
- (id)_connection;
- (void)_cleanUpConnection;
- (void)_cleanUpConnectionIfNeeded;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)_didFinishSendingEvents:(id)a3;
- (void)_handleFailureCallbackForEvents:(id)a3 error:(id)a4 numberOfRetries:(unint64_t)a5 completion:(id)a6;
- (void)_handleSuccessCallbackForEvents:(id)a3 completion:(id)a4;
- (void)_idleTimerFired;
- (void)_sendEvents:(id)a3 numberOfRetries:(unint64_t)a4 completion:(id)a5;
- (void)_stageUEIEventData:(id)a3 timestamp:(unint64_t)a4 completion:(id)a5;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)_willStartSendingEvents:(id)a3;
- (void)beginEventsGrouping;
- (void)boostQueuedEvents:(id)a3;
- (void)dealloc;
- (void)endEventsGrouping;
- (void)flushStagedEventsWithReply:(id)a3;
- (void)logInstrumentationOfType:(id)a3 machAbsoluteTime:(unint64_t)a4 turnIdentifier:(id)a5;
- (void)stageEvents:(id)a3 completion:(id)a4;
- (void)stageUEIEventData:(id)a3 timestamp:(unint64_t)a4 completion:(id)a5;
@end

@implementation AFAnalyticsConnection

- (void)_stopIdleTimer
{
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    dispatch_source_cancel(idleTimer);
    v4 = self->_idleTimer;
    self->_idleTimer = 0;
  }
}

- (void)_cleanUpConnectionIfNeeded
{
  if ([(AFAnalyticsConnection *)self needsCleanUpConnection])
  {

    [(AFAnalyticsConnection *)self _cleanUpConnection];
  }
}

- (id)_connection
{
  [(AFAnalyticsConnection *)self _cleanUpConnectionIfNeeded];
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistant.analytics" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
    v6 = self->_connection;
    v7 = AFAnalyticsServiceGetXPCInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F057C510];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    objc_initWeak(&location, self);
    v10 = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__AFAnalyticsConnection__connection__block_invoke;
    v15[3] = &unk_1E7348A80;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v15];
    v11 = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__AFAnalyticsConnection__connection__block_invoke_2;
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

- (void)_startIdleTimer
{
  if (!self->_idleTimer)
  {
    location[5] = v2;
    location[6] = v3;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    idleTimer = self->_idleTimer;
    self->_idleTimer = v5;

    v7 = self->_idleTimer;
    v8 = dispatch_time(0, 4000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(location, self);
    v9 = self->_idleTimer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__AFAnalyticsConnection__startIdleTimer__block_invoke;
    v10[3] = &unk_1E7348A80;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_idleTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

void __36__AFAnalyticsConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)_connectionInvalidated
{
  [(AFAnalyticsConnection *)self setNeedsCleanUpConnection:1];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AFAnalyticsConnection__connectionInvalidated__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__AFAnalyticsConnection__startIdleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _idleTimerFired];
}

- (void)_idleTimerFired
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFAnalyticsConnection _idleTimerFired]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  [(AFAnalyticsConnection *)self _stopIdleTimer];
  [(AFAnalyticsConnection *)self _cleanUpConnection];
  v4 = *MEMORY[0x1E69E9840];
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

  [(AFAnalyticsConnection *)self setNeedsCleanUpConnection:0];
}

- (void)_connectionInterrupted
{
  [(AFAnalyticsConnection *)self setNeedsCleanUpConnection:1];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AFAnalyticsConnection__connectionInterrupted__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__AFAnalyticsConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

- (void)_didFinishSendingEvents:(id)a3
{
  v4 = self->_numberOfEventsBeingSent - [a3 count];
  self->_numberOfEventsBeingSent = v4;
  if (!v4)
  {

    [(AFAnalyticsConnection *)self _startIdleTimer];
  }
}

- (void)_willStartSendingEvents:(id)a3
{
  v4 = self->_numberOfEventsBeingSent + [a3 count];
  self->_numberOfEventsBeingSent = v4;
  if (v4)
  {

    [(AFAnalyticsConnection *)self _stopIdleTimer];
  }
}

- (void)_handleSuccessCallbackForEvents:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)_handleFailureCallbackForEvents:(id)a3 error:(id)a4 numberOfRetries:(unint64_t)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v19 = v13;
    *buf = 136315906;
    v25 = "[AFAnalyticsConnection _handleFailureCallbackForEvents:error:numberOfRetries:completion:]";
    v26 = 2048;
    v27 = [v10 count];
    v28 = 2112;
    v29 = v11;
    v30 = 2048;
    v31 = a5;
    _os_log_error_impl(&dword_1912FE000, v19, OS_LOG_TYPE_ERROR, "%s Failed to send %tu events due to %@. (numberOfRetries = %tu)", buf, 0x2Au);
  }

  if (a5 > 2)
  {
    v16 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[AFAnalyticsConnection _handleFailureCallbackForEvents:error:numberOfRetries:completion:]";
      v26 = 2112;
      v27 = v10;
      _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, "%s Dropping %@ because the maximum number of retries was reached.", buf, 0x16u);
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else if (!v12)
    {
      goto LABEL_8;
    }

    v17 = [AFError errorWithCode:2202 description:0 underlyingError:v11];
    v12[2](v12, v17);

    goto LABEL_8;
  }

  v14 = dispatch_time(0, 1000000000);
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__AFAnalyticsConnection__handleFailureCallbackForEvents_error_numberOfRetries_completion___block_invoke;
  v20[3] = &unk_1E7343940;
  v20[4] = self;
  v21 = v10;
  v23 = a5;
  v22 = v12;
  dispatch_after(v14, queue, v20);

LABEL_8:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendEvents:(id)a3 numberOfRetries:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(AFAnalyticsConnection *)self _connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__AFAnalyticsConnection__sendEvents_numberOfRetries_completion___block_invoke;
  v19[3] = &unk_1E7342D18;
  v19[4] = self;
  v11 = v8;
  v20 = v11;
  v22 = a4;
  v12 = v9;
  v21 = v12;
  v13 = [v10 remoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__AFAnalyticsConnection__sendEvents_numberOfRetries_completion___block_invoke_3;
  v16[3] = &unk_1E73496E8;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v14 = v12;
  v15 = v11;
  [v13 stageEvents:v15 completion:v16];
}

void __64__AFAnalyticsConnection__sendEvents_numberOfRetries_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AFAnalyticsConnection__sendEvents_numberOfRetries_completion___block_invoke_2;
  block[3] = &unk_1E7342CF0;
  block[4] = v5;
  v10 = v4;
  v11 = v3;
  v7 = a1[6];
  v13 = a1[7];
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, block);
}

void __64__AFAnalyticsConnection__sendEvents_numberOfRetries_completion___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AFAnalyticsConnection__sendEvents_numberOfRetries_completion___block_invoke_4;
  block[3] = &unk_1E73496E8;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (void)boostQueuedEvents:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[AFAnalyticsConnection boostQueuedEvents:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = +[AFAnalytics sharedAnalytics];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__AFAnalyticsConnection_boostQueuedEvents___block_invoke;
  v9[3] = &unk_1E7349838;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 boostQueuedEvents:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __43__AFAnalyticsConnection_boostQueuedEvents___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 136315394;
    v10 = "[AFAnalyticsConnection boostQueuedEvents:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Boosting XPC queue %@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AFAnalyticsConnection_boostQueuedEvents___block_invoke_7;
  v7[3] = &unk_1E7349838;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v7);
  dispatch_async(*(*(a1 + 32) + 8), v5);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __43__AFAnalyticsConnection_boostQueuedEvents___block_invoke_7(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v6 = 136315394;
    v7 = "[AFAnalyticsConnection boostQueuedEvents:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Completed boosting XPC queue %@", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)flushStagedEventsWithReply:(id)a3
{
  v4 = a3;
  v5 = +[AFAnalytics sharedAnalytics];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 barrier:v7];
}

void __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = AFAnalyticsEventCreateCurrent(2, 0);
  v18[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke_2;
  block[3] = &unk_1E7349860;
  block[4] = v4;
  v6 = v3;
  v17 = v6;
  dispatch_async(v5, block);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 40);
  v10 = *(v8 + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke_3;
  v13[3] = &unk_1E73496E8;
  v13[4] = v8;
  v14 = v6;
  v15 = v7;
  v11 = v6;
  dispatch_group_notify(v9, v10, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke_4;
  v4[3] = &unk_1E7346690;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _sendEvents:v5 numberOfRetries:0 completion:v4];
}

void __52__AFAnalyticsConnection_flushStagedEventsWithReply___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _didFinishSendingEvents:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_stageUEIEventData:(id)a3 timestamp:(unint64_t)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[AFAnalyticsConnection _stageUEIEventData:timestamp:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  [(AFAnalyticsConnection *)self _stopIdleTimer];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__AFAnalyticsConnection__stageUEIEventData_timestamp_completion___block_invoke;
  v24[3] = &unk_1E7349838;
  v24[4] = self;
  v25 = v9;
  v11 = v9;
  v12 = MEMORY[0x193AFB7B0](v24);
  v13 = [(AFAnalyticsConnection *)self _connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__AFAnalyticsConnection__stageUEIEventData_timestamp_completion___block_invoke_2;
  v21[3] = &unk_1E7348AD0;
  v22 = v8;
  v14 = v12;
  v23 = v14;
  v15 = v8;
  v16 = [v13 remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__AFAnalyticsConnection__stageUEIEventData_timestamp_completion___block_invoke_5;
  v19[3] = &unk_1E73494D8;
  v20 = v14;
  v17 = v14;
  [v16 stageUEIEventData:v15 timestamp:a4 completion:v19];

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __65__AFAnalyticsConnection__stageUEIEventData_timestamp_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __65__AFAnalyticsConnection__stageUEIEventData_timestamp_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFAnalyticsConnection _stageUEIEventData:timestamp:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed to stage UEI event: %@ error: %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stageUEIEventData:(id)a3 timestamp:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__AFAnalyticsConnection_stageUEIEventData_timestamp_completion___block_invoke;
  v13[3] = &unk_1E7343940;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)logInstrumentationOfType:(id)a3 machAbsoluteTime:(unint64_t)a4 turnIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__AFAnalyticsConnection_logInstrumentationOfType_machAbsoluteTime_turnIdentifier___block_invoke;
  v13[3] = &unk_1E73464F0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __82__AFAnalyticsConnection_logInstrumentationOfType_machAbsoluteTime_turnIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _connection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_6889];
  [v2 logInstrumentationOfType:*(a1 + 40) machAbsoluteTime:*(a1 + 56) turnIdentifier:*(a1 + 48)];
}

void __82__AFAnalyticsConnection_logInstrumentationOfType_machAbsoluteTime_turnIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFAnalyticsConnection logInstrumentationOfType:machAbsoluteTime:turnIdentifier:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Error with remoteObjectProxy: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)endEventsGrouping
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFAnalyticsConnection endEventsGrouping]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  dispatch_group_leave(self->_group);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)beginEventsGrouping
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFAnalyticsConnection beginEventsGrouping]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  dispatch_group_enter(self->_group);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)stageEvents:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AFAnalyticsConnection_stageEvents_completion___block_invoke;
    block[3] = &unk_1E7349860;
    block[4] = self;
    v9 = v6;
    v16 = v9;
    dispatch_async(queue, block);
    group = self->_group;
    v11 = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__AFAnalyticsConnection_stageEvents_completion___block_invoke_2;
    v12[3] = &unk_1E73496E8;
    v12[4] = self;
    v13 = v9;
    v14 = v7;
    dispatch_group_notify(group, v11, v12);
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

void __48__AFAnalyticsConnection_stageEvents_completion___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AFAnalyticsConnection_stageEvents_completion___block_invoke_3;
  v4[3] = &unk_1E7346690;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _sendEvents:v5 numberOfRetries:0 completion:v4];
}

uint64_t __48__AFAnalyticsConnection_stageEvents_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _didFinishSendingEvents:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[AFAnalyticsConnection dealloc]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  [(AFAnalyticsConnection *)self _stopIdleTimer];
  [(AFAnalyticsConnection *)self _cleanUpConnection];
  v5.receiver = self;
  v5.super_class = AFAnalyticsConnection;
  [(AFAnalyticsConnection *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (AFAnalyticsConnection)init
{
  v10.receiver = self;
  v10.super_class = AFAnalyticsConnection;
  v2 = [(AFAnalyticsConnection *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.assistant.analytics.connection", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v7;
  }

  return v2;
}

@end
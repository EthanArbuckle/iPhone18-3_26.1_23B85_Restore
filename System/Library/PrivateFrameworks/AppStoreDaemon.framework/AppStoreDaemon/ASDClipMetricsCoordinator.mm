@interface ASDClipMetricsCoordinator
- (ASDClipMetricsCoordinator)init;
- (void)sendClipCardMetricsEvent:(id)event completionHandler:(id)handler;
@end

@implementation ASDClipMetricsCoordinator

- (ASDClipMetricsCoordinator)init
{
  v6.receiver = self;
  v6.super_class = ASDClipMetricsCoordinator;
  v2 = [(ASDClipMetricsCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[ASDServiceBroker defaultBroker];
    broker = v2->_broker;
    v2->_broker = v3;
  }

  return v2;
}

- (void)sendClipCardMetricsEvent:(id)event completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  broker = self->_broker;
  v19 = 0;
  v9 = [(ASDClipServiceBroker *)broker getClipServiceWithError:&v19];
  v10 = v19;
  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__ASDClipMetricsCoordinator_sendClipCardMetricsEvent_completionHandler___block_invoke;
    v17[3] = &unk_1E7CDB730;
    v11 = handlerCopy;
    v18 = v11;
    v12 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__ASDClipMetricsCoordinator_sendClipCardMetricsEvent_completionHandler___block_invoke_1;
    v15[3] = &unk_1E7CDB758;
    v16 = v11;
    [v12 clipCardMetricsEvent:eventCopy withReplyHandler:v15];
  }

  else
  {
    v13 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_error_impl(&dword_1B8220000, v13, OS_LOG_TYPE_ERROR, "Request to service failed with error: %@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __72__ASDClipMetricsCoordinator_sendClipCardMetricsEvent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Request to make a connection with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end
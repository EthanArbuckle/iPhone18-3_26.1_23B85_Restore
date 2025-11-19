@interface ASDAccountStatusTask
- (ASDAccountStatusTask)init;
- (ASDAccountStatusTask)initWithCoder:(id)a3;
- (void)statusWithCompletion:(id)a3;
@end

@implementation ASDAccountStatusTask

- (ASDAccountStatusTask)init
{
  v6.receiver = self;
  v6.super_class = ASDAccountStatusTask;
  v2 = [(ASDAccountStatusTask *)&v6 init];
  if (v2)
  {
    v3 = +[ASDServiceBroker defaultBroker];
    broker = v2->_broker;
    v2->_broker = v3;
  }

  return v2;
}

- (void)statusWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  broker = self->_broker;
  v16 = 0;
  v6 = [(ASDClipServiceBroker *)broker getClipServiceWithError:&v16];
  v7 = v16;
  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__ASDAccountStatusTask_statusWithCompletion___block_invoke;
    v14[3] = &unk_1E7CDB730;
    v8 = v4;
    v15 = v8;
    v9 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__ASDAccountStatusTask_statusWithCompletion___block_invoke_1;
    v12[3] = &unk_1E7CDC4A0;
    v13 = v8;
    [v9 accountStatusUsingRequest:self withReplyHandler:v12];
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "Request to service failed with error: %@", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0, v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __45__ASDAccountStatusTask_statusWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (ASDAccountStatusTask)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDAccountStatusTask;
  v5 = [(ASDAccountStatusTask *)&v7 init];
  if (v5)
  {
    v5->_lookupFamilyInfoIfNecessary = [v4 decodeBoolForKey:@"_lookupFamilyInfoIfNecessary"];
  }

  return v5;
}

@end
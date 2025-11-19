@interface AFSiriTaskDeliveryHandler
- (AFSiriTaskService)service;
- (AFSiriTaskServiceDelegate)delegate;
- (void)deliverSiriTask:(id)a3 completionHandler:(id)a4;
@end

@implementation AFSiriTaskDeliveryHandler

- (AFSiriTaskServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AFSiriTaskService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)deliverSiriTask:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[AFSiriTaskDeliveryHandler deliverSiriTask:completionHandler:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke;
  v18[3] = &unk_1E7348AA8;
  v19 = v7;
  v9 = v7;
  v10 = MEMORY[0x193AFB7B0](v18);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke_2;
  v15[3] = &unk_1E73496E8;
  v16 = v6;
  v17 = v10;
  v15[4] = self;
  v12 = v6;
  v13 = v10;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));

  if (WeakRetained)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      v5 = v3;
      v6 = objc_loadWeakRetained((v4 + 24));
      v7 = a1[5];
      *buf = 136315906;
      v15 = "[AFSiriTaskDeliveryHandler deliverSiriTask:completionHandler:]_block_invoke_2";
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@ asking %@ to handle task %@", buf, 0x2Au);
    }

    v8 = objc_loadWeakRetained((a1[4] + 24));
    v9 = objc_loadWeakRetained((a1[4] + 8));
    [v8 siriTaskService:v9 handleSiriTask:a1[5]];

    (*(a1[6] + 16))();
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = a1[6];
    v13 = [AFError errorWithCode:700];
    (*(v11 + 16))(v11);
    v12 = *MEMORY[0x1E69E9840];
  }
}

@end
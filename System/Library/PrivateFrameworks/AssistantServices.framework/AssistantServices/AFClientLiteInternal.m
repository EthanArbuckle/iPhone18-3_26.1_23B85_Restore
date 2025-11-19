@interface AFClientLiteInternal
- (void)dealloc;
- (void)handleCommand:(id)a3 completion:(id)a4;
@end

@implementation AFClientLiteInternal

- (void)handleCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AFClientLiteInternal_handleCommand_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __49__AFClientLiteInternal_handleCommand_completion___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, a1[5]);
    v3 = MEMORY[0x1E69C7788];
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v9 = 136315394;
      v10 = "[AFClientLiteInternal handleCommand:completion:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s No command handler in client for command %@", &v9, 0x16u);
    }

    v3 = MEMORY[0x1E69C7778];
  }

  v5 = objc_alloc_init(v3);
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_2;
  block[3] = &unk_1E73448C8;
  v15 = a2;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  objc_copyWeak(&v14, (a1 + 48));
  dispatch_async(v8, block);
  objc_destroyWeak(&v14);
}

void __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

void __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 == 1 && !*(a1 + 32))
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v13 = 136315394;
      v14 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke_2";
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s %p Finished", &v13, 0x16u);
    }
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = 136315906;
      v14 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke";
      v15 = 2048;
      v16 = v11;
      v17 = 1024;
      v18 = v2;
      v19 = 2112;
      v20 = v12;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p Failed %d %@", &v13, 0x26u);
    }
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 64), *(a1 + 32));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained invalidate];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFClientLiteInternal dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = AFClientLiteInternal;
  [(AFClientLiteInternal *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

@end
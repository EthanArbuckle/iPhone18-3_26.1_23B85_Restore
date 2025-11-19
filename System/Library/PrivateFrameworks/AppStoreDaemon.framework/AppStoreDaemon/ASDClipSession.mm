@interface ASDClipSession
- (ASDClipSession)initWithRequest:(id)a3 delegate:(id)a4;
- (ASDClipSession)initWithRequest:(id)a3 delegate:(id)a4 usingBroker:(id)a5;
- (ASDClipSessionDelegate)delegate;
- (void)_dispatchFailWithError:(uint64_t)a1;
- (void)_dispatchHandler:(void *)a3 withError:;
- (void)cancelInstallWithCompletionHandler:(id)a3;
- (void)channelNotifyDidComplete;
- (void)channelNotifyDidFailWithError:(id)a3;
- (void)channelNotifyDidInstallPlaceholder;
- (void)channelNotifyDidProgress:(double)a3;
- (void)continueInstallWithCompletionHandler:(id)a3;
- (void)installPlaceholderWithCompletionHandler:(id)a3;
- (void)startDownloadWithCompletionHandler:(id)a3;
@end

@implementation ASDClipSession

- (ASDClipSession)initWithRequest:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ASDServiceBroker defaultBroker];
  v9 = [(ASDClipSession *)self initWithRequest:v7 delegate:v6 usingBroker:v8];

  return v9;
}

- (ASDClipSession)initWithRequest:(id)a3 delegate:(id)a4 usingBroker:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = ASDClipSession;
  v12 = [(ASDClipSession *)&v26 init];
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v9 uniqueID];
    v15 = [v13 stringWithFormat:@"com.apple.AppStoreDaemon.ASDClipSession.%@", v14];

    v16 = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(v16, v17);
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v18;

    objc_storeStrong(&v12->_broker, a5);
    objc_storeWeak(&v12->_delegate, v10);
    objc_storeStrong(&v12->_request, a3);
    v20 = v12->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__ASDClipSession_initWithRequest_delegate_usingBroker___block_invoke;
    block[3] = &unk_1E7CDB930;
    v25 = v12;
    v21 = v20;
    v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v21, v22);
  }

  return v12;
}

void __55__ASDClipSession_initWithRequest_delegate_usingBroker___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 16));
    v2 = *(v1 + 8);
    v9 = 0;
    v3 = [v2 getClipServiceWithError:&v9];
    v4 = v9;
    if (v3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__ASDClipSession__establishBoostingConnection__block_invoke;
      v8[3] = &unk_1E7CDB980;
      v8[4] = v1;
      v5 = [v3 remoteObjectProxyWithErrorHandler:v8];
      v6 = *(v1 + 24);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __46__ASDClipSession__establishBoostingConnection__block_invoke_3;
      v7[3] = &unk_1E7CDDCA8;
      v7[4] = v1;
      [v5 boostSessionUsingChannel:v1 forRequest:v6 withReplyHandler:v7];
    }
  }
}

- (void)startDownloadWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ASDClipSession_startDownloadWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v10 = v4;
  v6 = dispatchQueue;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(v6, v8);
}

void __53__ASDClipSession_startDownloadWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v13 = 0;
  v3 = [v2 getClipServiceWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__ASDClipSession_startDownloadWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v5;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v11];
    v7 = [*(*(a1 + 32) + 24) uniqueID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ASDClipSession_startDownloadWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7CDCFC0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 startSessionID:v7 withReplyHandler:v9];
  }

  else
  {
    [(ASDClipSession *)*(a1 + 32) _dispatchHandler:v4 withError:?];
  }
}

- (void)_dispatchHandler:(void *)a3 withError:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__ASDClipSession__dispatchHandler_withError___block_invoke;
    v8[3] = &unk_1E7CDB890;
    v10 = v5;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

- (void)cancelInstallWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ASDClipSession_cancelInstallWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v10 = v4;
  v6 = dispatchQueue;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(v6, v8);
}

void __53__ASDClipSession_cancelInstallWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v13 = 0;
  v3 = [v2 getClipServiceWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__ASDClipSession_cancelInstallWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v5;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v11];
    v7 = [*(*(a1 + 32) + 24) uniqueID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ASDClipSession_cancelInstallWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7CDCFC0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 cancelSessionID:v7 withReplyHandler:v9];
  }

  else
  {
    [(ASDClipSession *)*(a1 + 32) _dispatchHandler:v4 withError:?];
  }
}

- (void)continueInstallWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ASDClipSession_continueInstallWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v10 = v4;
  v6 = dispatchQueue;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(v6, v8);
}

void __55__ASDClipSession_continueInstallWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v13 = 0;
  v3 = [v2 getClipServiceWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__ASDClipSession_continueInstallWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v5;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v11];
    v7 = [*(*(a1 + 32) + 24) uniqueID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ASDClipSession_continueInstallWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7CDCFC0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 commitSessionID:v7 withReplyHandler:v9];
  }

  else
  {
    [(ASDClipSession *)*(a1 + 32) _dispatchHandler:v4 withError:?];
  }
}

- (void)installPlaceholderWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ASDClipSession_installPlaceholderWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v10 = v4;
  v6 = dispatchQueue;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(v6, v8);
}

void __58__ASDClipSession_installPlaceholderWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v13 = 0;
  v3 = [v2 getClipServiceWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__ASDClipSession_installPlaceholderWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v5;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v11];
    v7 = [*(*(a1 + 32) + 24) uniqueID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__ASDClipSession_installPlaceholderWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E7CDCFC0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 placeholderSessionID:v7 withReplyHandler:v9];
  }

  else
  {
    [(ASDClipSession *)*(a1 + 32) _dispatchHandler:v4 withError:?];
  }
}

- (void)channelNotifyDidComplete
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ASDClipRequest *)self->_request uniqueID];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session completed successfully", &v7, 0xCu);
  }

  v5 = [(ASDClipSession *)self delegate];
  [v5 clipSessionDidCompleteSuccessfully:self];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)channelNotifyDidFailWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = [(ASDClipRequest *)self->_request uniqueID];
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Session failed with error: %{public}@", &v9, 0x16u);
  }

  v6 = [(ASDClipSession *)self delegate];
  [v6 clipSession:self didFailWithError:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)channelNotifyDidInstallPlaceholder
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ASDClipRequest *)self->_request uniqueID];
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session did install placeholder", &v9, 0xCu);
  }

  v5 = [(ASDClipSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ASDClipSession *)self delegate];
    [v7 clipSessionDidInstallPlaceholder:self];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)channelNotifyDidProgress:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(ASDClipRequest *)self->_request uniqueID];
    v9 = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_INFO, "[%{public}@] Session received progress: %.2f", &v9, 0x16u);
  }

  v7 = [(ASDClipSession *)self delegate];
  [v7 clipSession:self didUpdateProgress:a3];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchFailWithError:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__ASDClipSession__dispatchFailWithError___block_invoke;
      block[3] = &unk_1E7CDBA20;
      v7 = WeakRetained;
      v8 = a1;
      v9 = v3;
      dispatch_async(v5, block);
    }
  }
}

void __46__ASDClipSession__establishBoostingConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASDClipSession__establishBoostingConnection__block_invoke_2;
  v7[3] = &unk_1E7CDB868;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __46__ASDClipSession__establishBoostingConnection__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ASDClipSession__establishBoostingConnection__block_invoke_4;
  block[3] = &unk_1E7CDDC80;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __46__ASDClipSession__establishBoostingConnection__block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 24) uniqueID];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session boosting dropped", &v5, 0xCu);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [(ASDClipSession *)*(a1 + 32) _dispatchFailWithError:?];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (ASDClipSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
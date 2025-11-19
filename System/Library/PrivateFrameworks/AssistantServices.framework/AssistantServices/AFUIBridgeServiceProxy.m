@interface AFUIBridgeServiceProxy
- (AFUIBridgeClient)client;
- (AFUIBridgeServiceProxy)initWithClient:(id)a3;
- (void)uiBridgeServiceDetectedSiriDirectedSpeech;
- (void)uiBridgeServiceDetectedSpeechStart;
- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)a3;
- (void)uiBridgeServiceDidStart;
- (void)uiBridgeServiceDidStartAttending;
- (void)uiBridgeServiceDidStartAttendingWithRootRequestId:(id)a3;
- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)a3;
- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt;
- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)a3;
- (void)uiBridgeServiceWillStartAttending;
@end

@implementation AFUIBridgeServiceProxy

- (AFUIBridgeClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)uiBridgeServiceReceivedShowAssetsDownloadPrompt
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_client);
    v5 = [v4 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AFUIBridgeServiceProxy_uiBridgeServiceReceivedShowAssetsDownloadPrompt__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFUIBridgeServiceProxy uiBridgeServiceReceivedShowAssetsDownloadPrompt]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __73__AFUIBridgeServiceProxy_uiBridgeServiceReceivedShowAssetsDownloadPrompt__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 uiBridgeClientReceivedShowAssetsDownloadPrompt:WeakRetained];
  }
}

- (void)uiBridgeServiceReceivedSpeechMitigationResult:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_client);
    v7 = [v6 delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__AFUIBridgeServiceProxy_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke;
    v10[3] = &unk_1E7348498;
    v10[4] = self;
    v10[5] = a3;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[AFUIBridgeServiceProxy uiBridgeServiceReceivedSpeechMitigationResult:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __72__AFUIBridgeServiceProxy_uiBridgeServiceReceivedSpeechMitigationResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 uiBridgeClient:WeakRetained receivedSpeechMitigationResult:*(a1 + 40)];
  }
}

- (void)uiBridgeServiceDetectedSpeechStart:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_client);
    v7 = [v6 delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__AFUIBridgeServiceProxy_uiBridgeServiceDetectedSpeechStart___block_invoke;
    v10[3] = &unk_1E7347F98;
    v10[4] = self;
    v11 = a3;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v13 = "[AFUIBridgeServiceProxy uiBridgeServiceDetectedSpeechStart:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __61__AFUIBridgeServiceProxy_uiBridgeServiceDetectedSpeechStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 uiBridgeClient:WeakRetained detectedSpeechStartWithShouldDuckTTS:*(a1 + 40)];
  }
}

- (void)uiBridgeServiceDetectedSpeechStart
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_client);
    v5 = [v4 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AFUIBridgeServiceProxy_uiBridgeServiceDetectedSpeechStart__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFUIBridgeServiceProxy uiBridgeServiceDetectedSpeechStart]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __60__AFUIBridgeServiceProxy_uiBridgeServiceDetectedSpeechStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 uiBridgeClientDetectedSpeechStart:WeakRetained];
  }
}

- (void)uiBridgeServiceDetectedSiriDirectedSpeech
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_client);
    v5 = [v4 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__AFUIBridgeServiceProxy_uiBridgeServiceDetectedSiriDirectedSpeech__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFUIBridgeServiceProxy uiBridgeServiceDetectedSiriDirectedSpeech]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __67__AFUIBridgeServiceProxy_uiBridgeServiceDetectedSiriDirectedSpeech__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 uiBridgeClientDetectedSiriDirectedSpeech:WeakRetained];
  }
}

- (void)uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_client);
    v7 = [v6 delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__AFUIBridgeServiceProxy_uiBridgeServiceDidStopAttendingUnexpectedlyWithReason___block_invoke;
    v10[3] = &unk_1E7348498;
    v10[4] = self;
    v10[5] = a3;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[AFUIBridgeServiceProxy uiBridgeServiceDidStopAttendingUnexpectedlyWithReason:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __80__AFUIBridgeServiceProxy_uiBridgeServiceDidStopAttendingUnexpectedlyWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 uiBridgeClient:WeakRetained didStopAttendingUnexpectedlyWithReason:*(a1 + 40)];
  }
}

- (void)uiBridgeServiceDidStartAttendingWithRootRequestId:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_client);
    v7 = [v6 delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__AFUIBridgeServiceProxy_uiBridgeServiceDidStartAttendingWithRootRequestId___block_invoke;
    v10[3] = &unk_1E7349860;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v13 = "[AFUIBridgeServiceProxy uiBridgeServiceDidStartAttendingWithRootRequestId:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __76__AFUIBridgeServiceProxy_uiBridgeServiceDidStartAttendingWithRootRequestId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 uiBridgeClientDidStartAttending:WeakRetained withRootRequestId:*(a1 + 40)];
  }
}

- (void)uiBridgeServiceDidStartAttending
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_client);
    v5 = [v4 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AFUIBridgeServiceProxy_uiBridgeServiceDidStartAttending__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFUIBridgeServiceProxy uiBridgeServiceDidStartAttending]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __58__AFUIBridgeServiceProxy_uiBridgeServiceDidStartAttending__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 uiBridgeClientDidStartAttending:WeakRetained];
  }
}

- (void)uiBridgeServiceDidStart
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_client);
    v5 = [v4 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AFUIBridgeServiceProxy_uiBridgeServiceDidStart__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFUIBridgeServiceProxy uiBridgeServiceDidStart]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49__AFUIBridgeServiceProxy_uiBridgeServiceDidStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 uiBridgeClientDidStartAttending:WeakRetained];
  }
}

- (void)uiBridgeServiceWillStartAttending
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_client);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_client);
    v5 = [v4 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__AFUIBridgeServiceProxy_uiBridgeServiceWillStartAttending__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFUIBridgeServiceProxy uiBridgeServiceWillStartAttending]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s UIBridgeClient deallocated, dropping XPC message", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __59__AFUIBridgeServiceProxy_uiBridgeServiceWillStartAttending__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 uiBridgeClientWillStartAttending:v5];
  }
}

- (AFUIBridgeServiceProxy)initWithClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AFUIBridgeServiceProxy;
  v5 = [(AFUIBridgeServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_client, v4);
  }

  return v6;
}

@end
@interface AFSiriActivationListener
- (AFSiriActivationListener)initWithServicePort:(int64_t)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_activateWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_deactivateForReason:(int64_t)a3 options:(unint64_t)a4 context:(id)a5 completion:(id)a6;
- (void)_deliverButtonEventFromContext:(id)a3 completion:(id)a4;
- (void)_invalidate;
- (void)_myriadEventWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_prewarmWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_startWithDelegate:(id)a3;
- (void)_stop;
- (void)activateWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)deactivateForReason:(int64_t)a3 options:(unint64_t)a4 context:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)handleContext:(id)a3 completion:(id)a4;
- (void)handleIntent:(id)a3 inBackgroundAppWithBundleId:(id)a4 reply:(id)a5;
- (void)handleIntentForwardingAction:(id)a3 inBackgroundApplicationWithBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)invalidate;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)prewarmWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)startWithDelegate:(id)a3;
- (void)stop;
@end

@implementation AFSiriActivationListener

- (void)_myriadEventWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "[AFSiriActivationListener _myriadEventWithRequestInfo:context:completion:]";
    v26 = 2048;
    v27 = self;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  v12 = [AFOneArgumentSafetyBlock alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__AFSiriActivationListener__myriadEventWithRequestInfo_context_completion___block_invoke;
  v22[3] = &unk_1E7348AD0;
  v22[4] = self;
  v13 = v10;
  v23 = v13;
  v14 = [AFError errorWithCode:2508];
  v15 = [(AFOneArgumentSafetyBlock *)v12 initWithBlock:v22 defaultValue:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v18 = 2506;
LABEL_8:
    v17 = [AFError errorWithCode:v18];
    [(AFOneArgumentSafetyBlock *)v15 invokeWithValue:v17];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 2507;
    goto LABEL_8;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__AFSiriActivationListener__myriadEventWithRequestInfo_context_completion___block_invoke_52;
  v20[3] = &unk_1E73493C0;
  v21 = v15;
  [WeakRetained siriActivationListener:self myriadEventWithRequestInfo:v8 context:v9 completion:v20];
  v17 = v21;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

void __75__AFSiriActivationListener__myriadEventWithRequestInfo_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[AFSiriActivationListener _myriadEventWithRequestInfo:context:completion:]_block_invoke";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[AFSiriActivationListener _myriadEventWithRequestInfo:context:completion:]_block_invoke";
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_deliverButtonEventFromContext:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[AFSiriActivationListener _deliverButtonEventFromContext:completion:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  v9 = [AFOneArgumentSafetyBlock alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__AFSiriActivationListener__deliverButtonEventFromContext_completion___block_invoke;
  v19[3] = &unk_1E7348AD0;
  v19[4] = self;
  v10 = v7;
  v20 = v10;
  v11 = [AFError errorWithCode:2508];
  v12 = [(AFOneArgumentSafetyBlock *)v9 initWithBlock:v19 defaultValue:v11];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v15 = 2506;
LABEL_8:
    v14 = [AFError errorWithCode:v15];
    [(AFOneArgumentSafetyBlock *)v12 invokeWithValue:v14];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = 2507;
    goto LABEL_8;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AFSiriActivationListener__deliverButtonEventFromContext_completion___block_invoke_49;
  v17[3] = &unk_1E73493C0;
  v18 = v12;
  [WeakRetained siriActivationListener:self handleButtonEventFromContext:v6 completion:v17];
  v14 = v18;
LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
}

void __70__AFSiriActivationListener__deliverButtonEventFromContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[AFSiriActivationListener _deliverButtonEventFromContext:completion:]_block_invoke";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[AFSiriActivationListener _deliverButtonEventFromContext:completion:]_block_invoke";
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateForReason:(int64_t)a3 options:(unint64_t)a4 context:(id)a5 completion:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    if (a3 > 0x14)
    {
      v14 = @"(unknown)";
    }

    else
    {
      v14 = off_1E7345920[a3];
    }

    v15 = v14;
    v16 = AFSiriDeactivationOptionsGetNames(a4);
    *buf = 136316162;
    v30 = "[AFSiriActivationListener _deactivateForReason:options:context:completion:]";
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %p reason = %@, options = %@, context = %@", buf, 0x34u);
  }

  v17 = [AFOneArgumentSafetyBlock alloc];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __76__AFSiriActivationListener__deactivateForReason_options_context_completion___block_invoke;
  v27[3] = &unk_1E7348AD0;
  v27[4] = self;
  v18 = v11;
  v28 = v18;
  v19 = [AFError errorWithCode:2508];
  v20 = [(AFOneArgumentSafetyBlock *)v17 initWithBlock:v27 defaultValue:v19];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v23 = 2506;
LABEL_11:
    v22 = [AFError errorWithCode:v23];
    [(AFOneArgumentSafetyBlock *)v20 invokeWithValue:v22];
    goto LABEL_12;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v23 = 2507;
    goto LABEL_11;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__AFSiriActivationListener__deactivateForReason_options_context_completion___block_invoke_46;
  v25[3] = &unk_1E73493C0;
  v26 = v20;
  [WeakRetained siriActivationListener:self deactivateForReason:a3 options:a4 context:v10 completion:v25];
  v22 = v26;
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];
}

void __76__AFSiriActivationListener__deactivateForReason_options_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[AFSiriActivationListener _deactivateForReason:options:context:completion:]_block_invoke";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[AFSiriActivationListener _deactivateForReason:options:context:completion:]_block_invoke";
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_activateWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "[AFSiriActivationListener _activateWithRequestInfo:context:completion:]";
    v26 = 2048;
    v27 = self;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  v12 = [AFOneArgumentSafetyBlock alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__AFSiriActivationListener__activateWithRequestInfo_context_completion___block_invoke;
  v22[3] = &unk_1E7348AD0;
  v22[4] = self;
  v13 = v10;
  v23 = v13;
  v14 = [AFError errorWithCode:2508];
  v15 = [(AFOneArgumentSafetyBlock *)v12 initWithBlock:v22 defaultValue:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v18 = 2506;
LABEL_8:
    v17 = [AFError errorWithCode:v18];
    [(AFOneArgumentSafetyBlock *)v15 invokeWithValue:v17];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 2507;
    goto LABEL_8;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__AFSiriActivationListener__activateWithRequestInfo_context_completion___block_invoke_43;
  v20[3] = &unk_1E73493C0;
  v21 = v15;
  [WeakRetained siriActivationListener:self activateWithRequestInfo:v8 context:v9 completion:v20];
  v17 = v21;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

void __72__AFSiriActivationListener__activateWithRequestInfo_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[AFSiriActivationListener _activateWithRequestInfo:context:completion:]_block_invoke";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[AFSiriActivationListener _activateWithRequestInfo:context:completion:]_block_invoke";
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_prewarmWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "[AFSiriActivationListener _prewarmWithRequestInfo:context:completion:]";
    v26 = 2048;
    v27 = self;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  v12 = [AFOneArgumentSafetyBlock alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__AFSiriActivationListener__prewarmWithRequestInfo_context_completion___block_invoke;
  v22[3] = &unk_1E7348AD0;
  v22[4] = self;
  v13 = v10;
  v23 = v13;
  v14 = [AFError errorWithCode:2508];
  v15 = [(AFOneArgumentSafetyBlock *)v12 initWithBlock:v22 defaultValue:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v18 = 2506;
LABEL_8:
    v17 = [AFError errorWithCode:v18];
    [(AFOneArgumentSafetyBlock *)v15 invokeWithValue:v17];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 2507;
    goto LABEL_8;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__AFSiriActivationListener__prewarmWithRequestInfo_context_completion___block_invoke_40;
  v20[3] = &unk_1E73493C0;
  v21 = v15;
  [WeakRetained siriActivationListener:self prewarmWithRequestInfo:v8 context:v9 completion:v20];
  v17 = v21;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

void __71__AFSiriActivationListener__prewarmWithRequestInfo_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[AFSiriActivationListener _prewarmWithRequestInfo:context:completion:]_block_invoke";
      v11 = 2048;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[AFSiriActivationListener _prewarmWithRequestInfo:context:completion:]_block_invoke";
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFSiriActivationListener _invalidate]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v6, 0x16u);
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  objc_storeWeak(&self->_delegate, 0);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_stop
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFSiriActivationListener _stop]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  [(NSXPCListener *)self->_xpcListener suspend];
  objc_storeWeak(&self->_delegate, 0);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_startWithDelegate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[AFSiriActivationListener _startWithDelegate:]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p delegate = %@", &v7, 0x20u);
  }

  objc_storeWeak(&self->_delegate, v4);
  [(NSXPCListener *)self->_xpcListener resume];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleIntentForwardingAction:(id)a3 inBackgroundApplicationWithBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[AFSiriActivationListener handleIntentForwardingAction:inBackgroundApplicationWithBundleIdentifier:completionHandler:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s intentForwardingAction = %@, bundleIdentifier = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E73479F0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke_2;
    v9[3] = &unk_1E73467B0;
    v5 = *(a1 + 48);
    v10 = *(a1 + 56);
    [WeakRetained siriActivationListener:v3 handleIntentForwardingAction:v4 inBackgroundApplicationWithBundleIdentifier:v5 completionHandler:v9];
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[AFSiriActivationListener handleIntentForwardingAction:inBackgroundApplicationWithBundleIdentifier:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Intent handling is not supported on this platform", buf, 0xCu);
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFSiriActivationListener handleIntentForwardingAction:inBackgroundApplicationWithBundleIdentifier:completionHandler:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s intentForwardingActionResponse = %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleIntent:(id)a3 inBackgroundAppWithBundleId:(id)a4 reply:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p intent = %@, bundleIdentifier = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke;
  v17[3] = &unk_1E73479F0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke_2;
    v12[3] = &unk_1E7346788;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v12[4] = *(a1 + 32);
    v13 = v6;
    [WeakRetained siriActivationListener:v3 handleIntent:v4 inBackgroundAppWithBundleId:v5 reply:v12];
    v7 = v13;
  }

  else
  {
    v7 = [AFError errorWithCode:1316];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]_block_invoke";
      v16 = 2048;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", buf, 0x20u);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  if (v5)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v13 = 136315650;
      v14 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]_block_invoke_2";
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p intentResponse = %@", &v13, 0x20u);
    }
  }

  if (v6)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 136315650;
      v14 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]_block_invoke";
      v15 = 2048;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleContext:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[AFSiriActivationListener handleContext:completion:]";
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2;
  v39[3] = &unk_1E73466B8;
  v2 = *(a1 + 40);
  v39[4] = *(a1 + 32);
  v40 = v2;
  v41 = *(a1 + 48);
  v3 = MEMORY[0x193AFB7B0](v39);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_15;
  v36[3] = &unk_1E73466B8;
  v4 = *(a1 + 40);
  v36[4] = *(a1 + 32);
  v37 = v4;
  v38 = *(a1 + 48);
  v5 = MEMORY[0x193AFB7B0](v36);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_18;
  v33[3] = &unk_1E73466E0;
  v6 = *(a1 + 40);
  v33[4] = *(a1 + 32);
  v34 = v6;
  v35 = *(a1 + 48);
  v7 = MEMORY[0x193AFB7B0](v33);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_22;
  v30[3] = &unk_1E7346708;
  v30[4] = *(a1 + 32);
  v32 = *(a1 + 48);
  v31 = *(a1 + 40);
  v8 = MEMORY[0x193AFB7B0](v30);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __53__AFSiriActivationListener_handleContext_completion___block_invoke_26;
  v26 = &unk_1E73466B8;
  v9 = *(a1 + 40);
  v27 = *(a1 + 32);
  v28 = v9;
  v29 = *(a1 + 48);
  v10 = MEMORY[0x193AFB7B0](&v23);
  v11 = AFSiriActivationCreateRequestInfoFromContext(*(a1 + 40));
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 136315650;
    v43 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v44 = 2048;
    v45 = v13;
    v46 = 2112;
    v47 = v11;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@", buf, 0x20u);
  }

  v14 = [*(a1 + 40) source];
  v15 = [*(a1 + 40) event];
  if (v14 == 4)
  {
    if (v15 <= 8)
    {
      if (v15 == 1 || v15 == 8)
      {
        v16 = [*(a1 + 40) userInfo];
        v17 = [v16 objectForKey:@"isCancellationDoubleTapEvent"];

        v18 = [*(a1 + 40) userInfo];
        v19 = [v18 objectForKey:@"hasPlayedStartAlert"];
        v20 = [v19 BOOLValue];

        if (!v17 && (v20 & 1) != 0 || v17 && ([v17 BOOLValue] & 1) == 0)
        {
          (v5)[2](v5, v11);
        }

        else
        {
          if ([*(a1 + 40) options])
          {
            v3 = v22;
            (*(v22 + 16))(v22, v11);
            goto LABEL_22;
          }

          v7[2](v7, 1, 0);
        }

        v3 = v22;
LABEL_22:

        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (v15 == 9)
    {
      v8[2](v8, *(a1 + 40));
      goto LABEL_19;
    }
  }

  if (v15 == 16)
  {
    (v10)[2](v10, v11);
    goto LABEL_19;
  }

LABEL_16:
  if ([*(a1 + 40) options])
  {
    (v3)[2](v3, v11);
  }

  else
  {
    (v5)[2](v5, v11);
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke_2";
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Handling as prewarming...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_12;
  v12[3] = &unk_1E7346690;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v12[4] = v9;
  v13 = v10;
  [v6 _prewarmWithRequestInfo:v3 context:v7 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Handling as activation...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_16;
  v12[3] = &unk_1E7346690;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v12[4] = v9;
  v13 = v10;
  [v6 _activateWithRequestInfo:v3 context:v7 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p Handling as deactivation...", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_19;
  v14[3] = &unk_1E7346690;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v10;
  v14[4] = v11;
  v15 = v12;
  [v8 _deactivateForReason:a2 options:a3 context:v9 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Delivering button event ...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_23;
  v11[3] = &unk_1E7346690;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v7;
  v11[4] = v8;
  v12 = v9;
  [v6 _deliverButtonEventFromContext:v3 completion:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_26(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Handling myriad event...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_27;
  v12[3] = &unk_1E7346690;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v12[4] = v9;
  v13 = v10;
  [v6 _myriadEventWithRequestInfo:v3 context:v7 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_27(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_28;
    v13[3] = &unk_1E7346640;
    v14 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v13];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as myriad event due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_28(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:6];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_23(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_24;
    v13[3] = &unk_1E7346640;
    v14 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v13];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to deliver button event from context %@ due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:3];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_19(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_20;
    v13[3] = &unk_1E7346640;
    v14 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v13];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as deactivation due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_20(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:2];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_16(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_17;
    v13[3] = &unk_1E7346640;
    v14 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v13];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as activation due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_17(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:1];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_12(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_13;
    v13[3] = &unk_1E7346640;
    v14 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v13];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as prewarming due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v16 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_13(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:5];
  [v3 setError:*(a1 + 32)];
}

- (void)deactivateForReason:(int64_t)a3 options:(unint64_t)a4 context:(id)a5 completion:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    if (a3 > 0x14)
    {
      v14 = @"(unknown)";
    }

    else
    {
      v14 = off_1E7345920[a3];
    }

    v15 = v14;
    v16 = AFSiriDeactivationOptionsGetNames(a4);
    *buf = 136316162;
    v27 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]";
    v28 = 2048;
    v29 = self;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %p reason = %@, options = %@, context = %@", buf, 0x34u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke;
  block[3] = &unk_1E7346668;
  v24 = a3;
  v25 = a4;
  block[4] = self;
  v22 = v10;
  v23 = v11;
  v18 = v11;
  v19 = v10;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x1E69E9840];
}

void __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_2;
  v7[3] = &unk_1E7348AD0;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 _deactivateForReason:v2 options:v3 context:v5 completion:v7];
}

void __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_3;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]_block_invoke_2";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]_block_invoke";
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:2];
  [v3 setError:*(a1 + 32)];
}

- (void)activateWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke;
  v17[3] = &unk_1E73479F0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2;
  v6[3] = &unk_1E7348AD0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _activateWithRequestInfo:v3 context:v4 completion:v6];
}

void __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_3;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]_block_invoke_2";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]_block_invoke";
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:1];
  [v3 setError:*(a1 + 32)];
}

- (void)prewarmWithRequestInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke;
  v17[3] = &unk_1E73479F0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _prewarmWithRequestInfo:v2 context:v3 completion:v4];
}

void __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_3;
    v9[3] = &unk_1E7346640;
    v10 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v9];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]_block_invoke_2";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s result = %@", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v7 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s done", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:5];
  [v3 setError:*(a1 + 32)];
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[AFSiriActivationListener notifyObserver:didChangeStateFrom:to:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s notifyObserver = %@, fromState = %llu, toState = %llu", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (self->_xpcListener != a3)
  {
    goto LABEL_2;
  }

  v9 = [v6 valueForEntitlement:@"com.apple.siri.activation"];

  if (v9)
  {
    goto LABEL_7;
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v15 = v10;
    v16 = 136315906;
    v17 = "[AFSiriActivationListener listener:shouldAcceptNewConnection:]";
    v18 = 2048;
    v19 = self;
    v20 = 1026;
    v21 = [v7 processIdentifier];
    v22 = 2112;
    v23 = @"com.apple.siri.activation";
    _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s %p Client with pid %{public}d does not have entitlement %@.", &v16, 0x26u);
  }

  v11 = [v7 valueForEntitlement:@"com.apple.siri.external_request"];

  if (v11)
  {
LABEL_7:
    [v7 _setQueue:self->_connectionQueue];
    [v7 setRemoteObjectInterface:0];
    v12 = AFSiriActivationServiceGetXPCInterface();
    [v7 setExportedInterface:v12];

    [v7 setExportedObject:self];
    [v7 resume];
    v8 = 1;
  }

  else
  {
LABEL_2:
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AFSiriActivationListener_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AFSiriActivationListener_stop__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startWithDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AFSiriActivationListener_startWithDelegate___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFSiriActivationListener dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(AFSiriActivationListener *)self _invalidate];
  v5.receiver = self;
  v5.super_class = AFSiriActivationListener;
  [(AFSiriActivationListener *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (AFSiriActivationListener)initWithServicePort:(int64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AFSiriActivationListener;
  v4 = [(AFSiriActivationListener *)&v30 init];
  if (v4)
  {
    if (AFLogInitIfNeeded_once != -1)
    {
      dispatch_once(&AFLogInitIfNeeded_once, &__block_literal_global_2942);
    }

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[AFSiriActivationListener initWithServicePort:]";
      v33 = 2048;
      v34 = v4;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    if ((a3 - 1) > 2)
    {
      if (AFIsHorseman_onceToken != -1)
      {
        dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
      }

      if (AFIsHorseman_isHorseman)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        if (a3 > 3)
        {
          v12 = @"(unknown)";
        }

        else
        {
          v12 = off_1E73424C8[a3];
        }

        v13 = v12;
        *buf = 136315394;
        v32 = "[AFSiriActivationListener initWithServicePort:]";
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s servicePort = %@ (incoming)", buf, 0x16u);

        v10 = AFSiriLogContextConnection;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = v10;
        v15 = off_1E73424C8[v9];
        *buf = 136315394;
        v32 = "[AFSiriActivationListener initWithServicePort:]";
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s servicePort = %@ (effective)", buf, 0x16u);
      }

      a3 = v9;
    }

    else
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = off_1E73424C8[a3];
        *buf = 136315394;
        v32 = "[AFSiriActivationListener initWithServicePort:]";
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s servicePort = %@ (incoming, effective)", buf, 0x16u);
      }
    }

    v16 = AFSiriActivationServiceGetMachServiceName(a3);
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[AFSiriActivationListener initWithServicePort:]";
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s machServiceName = %@", buf, 0x16u);
    }

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INTERACTIVE, 0);

    v20 = dispatch_queue_create("com.apple.siri.activation.listener", v19);
    queue = v4->_queue;
    v4->_queue = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INTERACTIVE, 0);

    v24 = dispatch_queue_create("com.apple.siri.activation.listenerConnection", v23);
    connectionQueue = v4->_connectionQueue;
    v4->_connectionQueue = v24;

    v26 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v16];
    xpcListener = v4->_xpcListener;
    v4->_xpcListener = v26;

    [(NSXPCListener *)v4->_xpcListener _setQueue:v4->_queue];
    [(NSXPCListener *)v4->_xpcListener setDelegate:v4];
  }

  v28 = *MEMORY[0x1E69E9840];
  return v4;
}

@end
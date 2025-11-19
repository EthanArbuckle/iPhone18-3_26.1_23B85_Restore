@interface AAFlowPresenter
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_callCompletionBlockWithError:(id)a3;
- (void)dealloc;
- (void)flowFinishedWithError:(id)a3 completion:(id)a4;
- (void)launchProcessWithUserInfo:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation AAFlowPresenter

- (void)launchProcessWithUserInfo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696B0D8];
  v5 = a3;
  v6 = [v4 anonymousListener];
  remoteListener = self->_remoteListener;
  self->_remoteListener = v6;

  [(NSXPCListener *)self->_remoteListener setDelegate:self];
  [(NSXPCListener *)self->_remoteListener resume];
  v8 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.AAUIViewService" viewControllerClassName:@"AAUIRemoteViewController"];
  v9 = objc_opt_new();
  v10 = [(NSXPCListener *)self->_remoteListener endpoint];
  v11 = [v10 _endpoint];
  [v9 setXpcEndpoint:v11];

  [v9 setUserInfo:v5];
  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v8 configurationContext:v9];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v13;

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self];
  v15 = _AALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(AAFlowPresenter *)self remoteAlertHandle];
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Activating handle: %@", &v18, 0xCu);
  }

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v12];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)flowFinishedWithError:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(AAFlowPresenter *)self _callCompletionBlockWithError:v7];
  if (v6)
  {
    v6[2](v6, v7);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[AAFlowPresenterHostInterface XPCInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) activated.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated.", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
  [(AAFlowPresenter *)self _callCompletionBlockWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqualToString:*MEMORY[0x1E69D4468]])
  {
    if ([v7 code] == 4)
    {

LABEL_9:
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated by request.", &v15, 0xCu);
      }

      v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
      goto LABEL_12;
    }

    v11 = [v7 code];

    if (v11 == 5)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) interrupted with error: %@", &v15, 0x16u);
  }

  v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0 underlyingError:v7];
LABEL_12:
  v13 = v10;
  [(AAFlowPresenter *)self _callCompletionBlockWithError:v10];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_callCompletionBlockWithError:(id)a3
{
  v6 = a3;
  v4 = [(AAFlowPresenter *)self presentationCompletion];

  if (v4)
  {
    v5 = [(AAFlowPresenter *)self presentationCompletion];
    (v5)[2](v5, v6);
  }

  [(AAFlowPresenter *)self setPresentationCompletion:0];
}

- (void)dealloc
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAInheritanceController *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = AAFlowPresenter;
  [(AAFlowPresenter *)&v4 dealloc];
}

@end
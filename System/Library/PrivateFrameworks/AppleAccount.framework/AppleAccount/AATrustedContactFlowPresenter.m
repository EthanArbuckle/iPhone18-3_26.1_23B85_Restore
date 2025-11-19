@interface AATrustedContactFlowPresenter
- (void)dealloc;
- (void)presentInvitationUIWithCustodianshipInfo:(id)a3 completion:(id)a4;
- (void)presentModel:(id)a3 completion:(id)a4;
@end

@implementation AATrustedContactFlowPresenter

- (void)presentModel:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(AAFlowPresenter *)self setPresentationCompletion:a4];
  v16 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v16];
  v8 = v16;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 setObject:v11 forKeyedSubscript:@"modelType"];
  }

  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 objectForKeyedSubscript:@"modelType"];
    *buf = 138412290;
    v18 = v13;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "modelType: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AATrustedContactFlowPresenter presentModel:v8 completion:v14];
    }
  }

  [v9 setObject:v7 forKeyedSubscript:@"modelData"];
  [(AAFlowPresenter *)self launchProcessWithUserInfo:v9];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)presentInvitationUIWithCustodianshipInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(AAFlowPresenter *)self setPresentationCompletion:a4];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Presenting invitation UI with info.", buf, 2u);
  }

  v8 = _AALogSystem();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Will create model for invitation.", v18, 2u);
    }

    v10 = [[AAOBCustodianInvitationModel alloc] initWithCustodianshipInfo:v6];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v17];
    v13 = v17;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 setObject:v15 forKeyedSubscript:@"modelType"];

    if (!v12)
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AATrustedContactFlowPresenter presentModel:v13 completion:v16];
      }
    }

    [v11 setObject:v12 forKeyedSubscript:@"modelData"];
    [(AAFlowPresenter *)self launchProcessWithUserInfo:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AATrustedContactFlowPresenter presentInvitationUIWithCustodianshipInfo:v9 completion:?];
    }

    v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
    [(AAFlowPresenter *)self flowFinishedWithError:v10 completion:0];
  }
}

- (void)dealloc
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAInheritanceController *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = AATrustedContactFlowPresenter;
  [(AAFlowPresenter *)&v4 dealloc];
}

- (void)presentModel:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Context data is nil: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
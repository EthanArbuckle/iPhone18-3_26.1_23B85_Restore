@interface CTCellularPlanStatus
+ (void)checkValidityOfToken:(id)a3 completionHandler:(id)a4;
+ (void)getTokenWithCompletion:(id)a3;
@end

@implementation CTCellularPlanStatus

+ (void)getTokenWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Getting token for bundleID [%@]", buf, 0xCu);
    }

    v6 = [[CoreTelephonyClient alloc] initWithQueue:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__CTCellularPlanStatus_getTokenWithCompletion___block_invoke;
    v17[3] = &unk_1E6A478B8;
    v18 = v6;
    v19 = v3;
    v7 = v6;
    [(CoreTelephonyClient *)v7 getTokenForBundleID:v5 completion:v17];
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [(CTCellularPlanStatus *)v8 getTokenWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v3 + 2))(v3, 0, v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)checkValidityOfToken:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(CTCellularPlanStatus *)v11 getTokenWithCompletion:v12, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      [(CTCellularPlanStatus *)v19 checkValidityOfToken:v20 completionHandler:v21, v22, v23, v24, v25, v26];
    }

LABEL_11:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v6[2](v6, 0, v10);
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v32 = v5;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Validating token [%@] for bundleID [%@]", buf, 0x16u);
  }

  v9 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__CTCellularPlanStatus_checkValidityOfToken_completionHandler___block_invoke;
  v28[3] = &unk_1E6A478E0;
  v29 = v9;
  v30 = v6;
  v10 = v9;
  [(CoreTelephonyClient *)v10 isTokenValid:v5 forBundleId:v8 completion:v28];

LABEL_12:
  v27 = *MEMORY[0x1E69E9840];
}

@end
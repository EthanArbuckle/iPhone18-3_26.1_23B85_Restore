@interface LSSpringBoardCall
@end

@implementation LSSpringBoardCall

void __48___LSSpringBoardCall_callWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) callSpringBoardWithCompletionHandler:*(a1 + 40)];
  }

  else if (_LSGetOSStatusFromNSError(v5) == -2026)
  {
    [*(a1 + 32) promptAndCallSpringBoardWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __47___LSSpringBoardCall_Private__springBoardQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS SpringBoard call queue", v2);
  v1 = +[_LSSpringBoardCall(Private) springBoardQueue]::result;
  +[_LSSpringBoardCall(Private) springBoardQueue]::result = v0;
}

void __65___LSSpringBoardCall_Private__springBoardDeadlockPreventionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS SpringBoard sync call deadlock prevention queue", v2);
  v1 = +[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue]::result;
  +[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue]::result = v0;
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E6A1E0B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  [v2 openApplication:v3 withOptions:v4 clientHandle:v5 completion:v6];
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = (*(*(a1 + 40) + 16))(*(a1 + 40), v5 == 0);
  MEMORY[0x1865D7C50](v4);
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() springBoardQueue];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_4;
  v27 = &unk_1E6A1E108;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v3;
  v23 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v28 = v23;
  v29 = v8;
  v9 = _LSDispatchWithTimeout(v4, &v24, 10.0);

  v10 = [v9 result];
  if (!v10 || ([v9 result], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, v10, !v12))
  {
    v13 = [v9 error];
    if (v13)
    {
      v14 = [v9 error];
      v15 = [v14 domain];
      if ([v15 isEqual:*MEMORY[0x1E696A798]])
      {
        v16 = [v9 error];
        v17 = [v16 code] == 60;

        if (v17)
        {
          v18 = _LSDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "application launch failed - timeout waiting for launch.", buf, 2u);
          }

LABEL_12:

          v20 = *(a1 + 64);
          v21 = [v9 error];
          (*(v20 + 16))(v20, 0, v21);

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v18 = _LSDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v9 error];
      *buf = 138412290;
      v31 = v19;
      _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "application launch failed - received error %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 64) + 16))();
LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleIdentifier];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_1E6A1E0E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v10 = v3;
  v14 = v10;
  [v4 openApplication:v5 withOptions:v6 clientHandle:v7 completion:v11];
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) bundleIdentifier];
      __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5_cold_1(v8, v6, buf, v7);
    }

    v16 = *MEMORY[0x1E696A278];
    v17 = @"Unable to launch. See logs for more detail.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 115, v9, "[_LSSpringBoardCall(Private) callSpringBoardWithCompletionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSSpringBoardCall.mm", 271);

    v6 = v10;
  }

  v11 = *(a1 + 48);
  if (v5)
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v13];
  (*(v11 + 16))(v11, v14, v6);

  MEMORY[0x1865D7C50]();
  v15 = *MEMORY[0x1E69E9840];
}

void __77___LSSpringBoardCall_Private__promptAndCallSpringBoardWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) callSpringBoardWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Request to open %{private}@ failed error: %@", buf, 0x16u);
}

@end
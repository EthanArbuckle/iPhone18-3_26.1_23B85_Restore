@interface MPRemoteCommandEventDispatch
@end

@implementation MPRemoteCommandEventDispatch

void __40___MPRemoteCommandEventDispatch_deliver__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) commandID];
      v5 = *(a1 + 48);
      v6 = 138543618;
      v7 = v4;
      v8 = 2048;
      v9 = v5;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] deliver | timed out [waiting for delivery for %0.2gs]", &v6, 0x16u);
    }

    [(_MPRemoteCommandEventDispatch *)*(a1 + 40) timeout];
  }
}

void __40___MPRemoteCommandEventDispatch_timeout__block_invoke(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_MPRemoteCommandEventDispatch.m" lineNumber:211 description:@"Command Center delegate did not call timeout state handler."];
  }

  v3 = MEMORY[0x1E696ABC0];
  v23[0] = @"commandID";
  v4 = [*(*(a1 + 32) + 40) commandID];
  v23[1] = @"event";
  v24[0] = v4;
  v24[1] = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v6 = [v3 errorWithDomain:@"MPErrorDomain" code:7 userInfo:v5];

  v7 = [MPRemoteCommandStatus statusWithCode:555 error:v6];
  v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(*(a1 + 32) + 40) commandID];
    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | finishing [guard] status=%{public}@", buf, 0x16u);
  }

  v10 = *(a1 + 32);
  v18 = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v10 _finishWithStatuses:v11 state:201];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = *(*(a1 + 32) + 40);
  v16 = @"status";
  v17 = v7;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v12 postNotificationName:@"MPRemoteCommandEventDidTimeout" object:v13 userInfo:v14];
}

void __40___MPRemoteCommandEventDispatch_timeout__block_invoke_76(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) disarm] & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_9:
    v11 = [*(*(a1 + 40) + 40) commandID];
    *buf = 138543362;
    v16 = v11;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | delegate finished [no provided status]", buf, 0xCu);

    goto LABEL_10;
  }

  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v6 = [*(*(a1 + 40) + 40) commandID];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] timeout | delegate finished [custom status] status=%{public}@", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  v14 = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v7 _finishWithStatuses:v8 state:201];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(*(a1 + 40) + 40);
  v12 = @"status";
  v13 = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v4 postNotificationName:@"MPRemoteCommandEventDidTimeout" object:v9 userInfo:v10];

LABEL_10:
}

void __41___MPRemoteCommandEventDispatch_dispatch__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [(_MPRemoteCommandEventDispatch *)*(a1 + 32) timeout];
  }
}

void __41___MPRemoteCommandEventDispatch_dispatch__block_invoke_44(id *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] disarm];
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[5] commandID];
      v8 = [v3 msv_compactDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] dispatch | completed [] statuses=[%{public}@]", &v11, 0x16u);
    }

    [a1[6] _finishWithStatuses:v3 state:100];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = [a1[5] commandID];
      v10 = [v3 msv_compactDescription];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] dispatch | dropping [missed deadline] statuses=[%{public}@]", &v11, 0x16u);
    }
  }
}

@end
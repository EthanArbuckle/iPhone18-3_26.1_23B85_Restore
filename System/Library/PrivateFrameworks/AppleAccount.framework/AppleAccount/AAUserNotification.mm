@interface AAUserNotification
+ (id)_defaultParameters;
+ (void)_waitForResponseAndReleaseNotification:(__CFUserNotification *)a3 completion:(id)a4;
+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 withCompletionBlock:(id)a7;
+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 secureTextFieldTitle:(id)a5 cancelButtonTitle:(id)a6 otherButtonTitle:(id)a7 completion:(id)a8;
+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 textFieldTitle:(id)a5 cancelButtonTitle:(id)a6 otherButtonTitle:(id)a7 completion:(id)a8;
+ (void)waitForResponseToNotification:(__CFUserNotification *)a3 completion:(id)a4;
@end

@implementation AAUserNotification

+ (id)_defaultParameters
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69D44D0];
  v6[0] = *MEMORY[0x1E695EE68];
  v6[1] = v2;
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E110];
  v6[2] = *MEMORY[0x1E69D44E8];
  v7[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 withCompletionBlock:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[AAUserNotification _defaultParameters];
  v17 = [v16 mutableCopy];

  if (v18)
  {
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  if (v12)
  {
    [v17 setObject:v12 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  [a1 _waitForResponseAndReleaseNotification:CFUserNotificationCreate(*MEMORY[0x1E695E480] completion:{0.0, 3uLL, 0, v17), v15}];
}

+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 textFieldTitle:(id)a5 cancelButtonTitle:(id)a6 otherButtonTitle:(id)a7 completion:(id)a8
{
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[AAUserNotification _defaultParameters];
  v20 = [v19 mutableCopy];

  if (v21)
  {
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  if (v14)
  {
    [v20 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EEA0]];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (v17)
  {
    [v20 setObject:v17 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  [a1 _waitForResponseAndReleaseNotification:CFUserNotificationCreate(*MEMORY[0x1E695E480] completion:{0.0, 3uLL, 0, v20), v18}];
}

+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 secureTextFieldTitle:(id)a5 cancelButtonTitle:(id)a6 otherButtonTitle:(id)a7 completion:(id)a8
{
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[AAUserNotification _defaultParameters];
  v20 = [v19 mutableCopy];

  if (v21)
  {
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  if (v14)
  {
    [v20 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EEA0]];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (v17)
  {
    [v20 setObject:v17 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  [a1 _waitForResponseAndReleaseNotification:CFUserNotificationCreate(*MEMORY[0x1E695E480] completion:{0.0, 0x10000uLL, 0, v20), v18}];
}

+ (void)_waitForResponseAndReleaseNotification:(__CFUserNotification *)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__AAUserNotification__waitForResponseAndReleaseNotification_completion___block_invoke;
    v8[3] = &unk_1E7C9D7F8;
    v10 = a3;
    v9 = v6;
    [a1 waitForResponseToNotification:a3 completion:v8];
  }

  else if (a3)
  {
    CFRelease(a3);
  }
}

uint64_t __72__AAUserNotification__waitForResponseAndReleaseNotification_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)waitForResponseToNotification:(__CFUserNotification *)a3 completion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      CFRetain(a3);
      v7 = _AANotificationQueue();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__AAUserNotification_waitForResponseToNotification_completion___block_invoke;
      v8[3] = &unk_1E7C9D820;
      v10 = a3;
      v9 = v6;
      dispatch_async(v7, v8);
    }

    else
    {
      (*(v5 + 2))(v5, 0, 3);
    }
  }
}

void __63__AAUserNotification_waitForResponseToNotification_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 40)];
  v3 = [*(a1 + 32) copy];
  v4 = _Block_copy(v3);
  v5 = _AANotificationHandlerMap();
  [v5 setObject:v4 forKeyedSubscript:v2];

  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v2;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Waiting for notification for key: %@", &v12, 0xCu);
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, *(a1 + 40), _AACFNotificationCallback, 0);
  if (RunLoopSource)
  {
    v8 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v8, *MEMORY[0x1E695E8D0]);
    CFRelease(v8);
  }

  else
  {
    v10 = _AANotificationHandlerMap();
    [v10 removeObjectForKey:v2];

    CFRelease(*(a1 + 40));
    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end
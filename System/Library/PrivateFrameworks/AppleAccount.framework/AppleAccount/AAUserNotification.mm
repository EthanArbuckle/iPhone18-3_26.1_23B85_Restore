@interface AAUserNotification
+ (id)_defaultParameters;
+ (void)_waitForResponseAndReleaseNotification:(__CFUserNotification *)notification completion:(id)completion;
+ (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block;
+ (void)showUserNotificationWithTitle:(id)title message:(id)message secureTextFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion;
+ (void)showUserNotificationWithTitle:(id)title message:(id)message textFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion;
+ (void)waitForResponseToNotification:(__CFUserNotification *)notification completion:(id)completion;
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

+ (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle withCompletionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  otherButtonTitleCopy = otherButtonTitle;
  blockCopy = block;
  v16 = +[AAUserNotification _defaultParameters];
  v17 = [v16 mutableCopy];

  if (titleCopy)
  {
    [v17 setObject:titleCopy forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  if (messageCopy)
  {
    [v17 setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  if (buttonTitleCopy)
  {
    [v17 setObject:buttonTitleCopy forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (otherButtonTitleCopy)
  {
    [v17 setObject:otherButtonTitleCopy forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  [self _waitForResponseAndReleaseNotification:CFUserNotificationCreate(*MEMORY[0x1E695E480] completion:{0.0, 3uLL, 0, v17), blockCopy}];
}

+ (void)showUserNotificationWithTitle:(id)title message:(id)message textFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  fieldTitleCopy = fieldTitle;
  buttonTitleCopy = buttonTitle;
  otherButtonTitleCopy = otherButtonTitle;
  completionCopy = completion;
  v19 = +[AAUserNotification _defaultParameters];
  v20 = [v19 mutableCopy];

  if (titleCopy)
  {
    [v20 setObject:titleCopy forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  if (messageCopy)
  {
    [v20 setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  if (fieldTitleCopy)
  {
    [v20 setObject:fieldTitleCopy forKeyedSubscript:*MEMORY[0x1E695EEA0]];
  }

  if (buttonTitleCopy)
  {
    [v20 setObject:buttonTitleCopy forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (otherButtonTitleCopy)
  {
    [v20 setObject:otherButtonTitleCopy forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  [self _waitForResponseAndReleaseNotification:CFUserNotificationCreate(*MEMORY[0x1E695E480] completion:{0.0, 3uLL, 0, v20), completionCopy}];
}

+ (void)showUserNotificationWithTitle:(id)title message:(id)message secureTextFieldTitle:(id)fieldTitle cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  fieldTitleCopy = fieldTitle;
  buttonTitleCopy = buttonTitle;
  otherButtonTitleCopy = otherButtonTitle;
  completionCopy = completion;
  v19 = +[AAUserNotification _defaultParameters];
  v20 = [v19 mutableCopy];

  if (titleCopy)
  {
    [v20 setObject:titleCopy forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  if (messageCopy)
  {
    [v20 setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  if (fieldTitleCopy)
  {
    [v20 setObject:fieldTitleCopy forKeyedSubscript:*MEMORY[0x1E695EEA0]];
  }

  if (buttonTitleCopy)
  {
    [v20 setObject:buttonTitleCopy forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (otherButtonTitleCopy)
  {
    [v20 setObject:otherButtonTitleCopy forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  [self _waitForResponseAndReleaseNotification:CFUserNotificationCreate(*MEMORY[0x1E695E480] completion:{0.0, 0x10000uLL, 0, v20), completionCopy}];
}

+ (void)_waitForResponseAndReleaseNotification:(__CFUserNotification *)notification completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__AAUserNotification__waitForResponseAndReleaseNotification_completion___block_invoke;
    v8[3] = &unk_1E7C9D7F8;
    notificationCopy = notification;
    v9 = completionCopy;
    [self waitForResponseToNotification:notification completion:v8];
  }

  else if (notification)
  {
    CFRelease(notification);
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

+ (void)waitForResponseToNotification:(__CFUserNotification *)notification completion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    if (notification)
    {
      CFRetain(notification);
      v7 = _AANotificationQueue();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__AAUserNotification_waitForResponseToNotification_completion___block_invoke;
      v8[3] = &unk_1E7C9D820;
      notificationCopy = notification;
      v9 = v6;
      dispatch_async(v7, v8);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 3);
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
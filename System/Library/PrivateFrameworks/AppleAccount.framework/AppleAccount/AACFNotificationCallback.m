@interface AACFNotificationCallback
@end

@implementation AACFNotificationCallback

void ___AACFNotificationCallback_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing notification for key: %@", &v8, 0xCu);
  }

  v4 = _AANotificationHandlerMap();
  v5 = [v4 objectForKeyedSubscript:v2];

  v6 = _AANotificationHandlerMap();
  [v6 removeObjectForKey:v2];

  if (v5)
  {
    v5[2](v5, *(a1 + 32), *(a1 + 40));
  }

  CFRelease(*(a1 + 32));

  v7 = *MEMORY[0x1E69E9840];
}

@end
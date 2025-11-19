@interface NSExtensionContextEmitNotifications
@end

@implementation NSExtensionContextEmitNotifications

void ___NSExtensionContextEmitNotifications_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _extensionContextForUUID:?];
  }

  else
  {
    if (_NSExtensionDummyExtensionContext_onceToken != -1)
    {
      ___NSExtensionContextEmitNotifications_block_invoke_cold_1();
    }

    v2 = _NSExtensionDummyExtensionContext_context;
  }

  v3 = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___NSExtensionContextEmitNotifications_block_invoke_2;
  v5[3] = &unk_1E6E4DC78;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = v3;
  v9 = *(a1 + 64);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t ___NSExtensionContextEmitNotifications_block_invoke_2(void *a1)
{
  Class = objc_getClass("UIApplication");
  if (Class)
  {
    v3 = [(objc_class *)Class performSelector:sel_sharedApplication];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:a1[4] object:v3 userInfo:0];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:a1[5] object:a1[6] userInfo:0];

  v6 = *(a1[7] + 16);

  return v6();
}

@end
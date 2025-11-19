@interface NEFilterExtensionProviderContext
- (OS_dispatch_queue)queue;
- (void)setConfiguration:(id)a3 extensionIdentifier:(id)a4;
- (void)stopWithReason:(int)a3;
@end

@implementation NEFilterExtensionProviderContext

- (void)stopWithReason:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(NEExtensionProviderContext *)self _principalObject];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = ne_session_stop_reason_to_string();
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Calling stopFilterWithReason because: %s", buf, 0x16u);
  }

  if (self && (a3 - 1) <= 0x29)
  {
    v7 = qword_1BAA4E658[a3 - 1];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__NEFilterExtensionProviderContext_stopWithReason___block_invoke;
  v9[3] = &unk_1E7F086C0;
  v10 = a3;
  v9[4] = self;
  [v5 stopFilterWithReason:v7 completionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __51__NEFilterExtensionProviderContext_stopWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = NEFilterExtensionProviderContext;
  objc_msgSendSuper2(&v4, sel_stopWithReason_, v2);
  return [*(a1 + 32) dispose];
}

- (void)setConfiguration:(id)a3 extensionIdentifier:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(NEExtensionProviderContext *)self _principalObject];
  v8 = [v6 contentFilter];

  v9 = [v8 provider];
  [v7 setFilterConfiguration:v9];

  if (v11)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Extension: %@]", v11];
    [(NEExtensionProviderContext *)self setDescription:v10];
  }
}

- (OS_dispatch_queue)queue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NEFilterExtensionProviderContext queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_queue;

  return v6;
}

@end
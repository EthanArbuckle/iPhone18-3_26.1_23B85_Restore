@interface NEFilterExtensionProviderContext
- (OS_dispatch_queue)queue;
- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier;
- (void)stopWithReason:(int)reason;
@end

@implementation NEFilterExtensionProviderContext

- (void)stopWithReason:(int)reason
{
  v15 = *MEMORY[0x1E69E9840];
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2080;
    v14 = ne_session_stop_reason_to_string();
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Calling stopFilterWithReason because: %s", buf, 0x16u);
  }

  if (self && (reason - 1) <= 0x29)
  {
    v7 = qword_1BAA4E658[reason - 1];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__NEFilterExtensionProviderContext_stopWithReason___block_invoke;
  v9[3] = &unk_1E7F086C0;
  reasonCopy = reason;
  v9[4] = self;
  [_principalObject stopFilterWithReason:v7 completionHandler:v9];

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

- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  contentFilter = [configurationCopy contentFilter];

  provider = [contentFilter provider];
  [_principalObject setFilterConfiguration:provider];

  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Extension: %@]", identifierCopy];
    [(NEExtensionProviderContext *)self setDescription:identifierCopy];
  }
}

- (OS_dispatch_queue)queue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NEFilterExtensionProviderContext queue", v3);
    queue = selfCopy->_queue;
    selfCopy->_queue = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_queue;

  return v6;
}

@end
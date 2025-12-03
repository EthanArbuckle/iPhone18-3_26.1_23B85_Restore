@interface NEIKEv2RequestContext
- (id)description;
- (void)dealloc;
- (void)releasePowerAssertionIfNeeded;
- (void)sendCallbackSuccess:(BOOL)success session:(id)session;
@end

@implementation NEIKEv2RequestContext

- (void)sendCallbackSuccess:(BOOL)success session:(id)session
{
  sessionCopy = session;
  [(NEIKEv2RequestContext *)self releasePowerAssertionIfNeeded];
  if (self && self->_requestInitiator)
  {
    if (sessionCopy)
    {
      sessionCopy[15] = 0;
      Property = objc_getProperty(sessionCopy, v6, 384, 1);
    }

    else
    {
      Property = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__NEIKEv2RequestContext_sendCallbackSuccess_session___block_invoke;
    block[3] = &unk_1E7F0B0E8;
    v9 = sessionCopy;
    dispatch_async(Property, block);
  }
}

- (void)releasePowerAssertionIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (self && *(self + 16))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(self + 16);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating power assertion %@", &v6, 0xCu);
    }

    [*(self + 16) invalidate];
    v4 = *(self + 16);
    *(self + 16) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v2 = NEIKEv2RequestContextTypeString([(NEIKEv2RequestContext *)self requestType]);

  return v2;
}

- (void)dealloc
{
  [(NEIKEv2RequestContext *)self releasePowerAssertionIfNeeded];
  v3.receiver = self;
  v3.super_class = NEIKEv2RequestContext;
  [(NEIKEv2RequestContext *)&v3 dealloc];
}

@end
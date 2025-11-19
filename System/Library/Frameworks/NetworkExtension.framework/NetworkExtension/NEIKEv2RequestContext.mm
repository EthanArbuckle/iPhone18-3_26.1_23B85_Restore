@interface NEIKEv2RequestContext
- (id)description;
- (void)dealloc;
- (void)releasePowerAssertionIfNeeded;
- (void)sendCallbackSuccess:(BOOL)a3 session:(id)a4;
@end

@implementation NEIKEv2RequestContext

- (void)sendCallbackSuccess:(BOOL)a3 session:(id)a4
{
  v5 = a4;
  [(NEIKEv2RequestContext *)self releasePowerAssertionIfNeeded];
  if (self && self->_requestInitiator)
  {
    if (v5)
    {
      v5[15] = 0;
      Property = objc_getProperty(v5, v6, 384, 1);
    }

    else
    {
      Property = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__NEIKEv2RequestContext_sendCallbackSuccess_session___block_invoke;
    block[3] = &unk_1E7F0B0E8;
    v9 = v5;
    dispatch_async(Property, block);
  }
}

- (void)releasePowerAssertionIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 16);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating power assertion %@", &v6, 0xCu);
    }

    [*(a1 + 16) invalidate];
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
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
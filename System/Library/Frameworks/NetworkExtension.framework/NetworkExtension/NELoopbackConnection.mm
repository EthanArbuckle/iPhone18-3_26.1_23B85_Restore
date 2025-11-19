@interface NELoopbackConnection
- (void)dealloc;
- (void)notifyInputHandler;
@end

@implementation NELoopbackConnection

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating loopback connection", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = NELoopbackConnection;
  [(NELoopbackConnection *)&v4 dealloc];
}

- (void)notifyInputHandler
{
  if (result)
  {
    objc_getProperty(result, a2, 120, 1);
    return nw_queue_context_async();
  }

  return result;
}

uint64_t __42__NELoopbackConnection_notifyInputHandler__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1 + 40;
  }

  else
  {
    v2 = 0;
  }

  result = *(v2 + 48);
  if (result)
  {
    return (*(*(result + 24) + 64))();
  }

  return result;
}

@end
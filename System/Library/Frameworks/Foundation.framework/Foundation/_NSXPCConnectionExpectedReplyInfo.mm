@interface _NSXPCConnectionExpectedReplyInfo
- (void)cleanup;
- (void)dealloc;
- (void)initWithSelector:(void *)result;
@end

@implementation _NSXPCConnectionExpectedReplyInfo

- (void)cleanup
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_semaphore_signal(v2);
      dispatch_release(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  timeoutSemaphore = self->_timeoutSemaphore;
  if (timeoutSemaphore)
  {
    dispatch_release(timeoutSemaphore);
  }

  v4.receiver = self;
  v4.super_class = _NSXPCConnectionExpectedReplyInfo;
  [(_NSXPCConnectionExpectedReplyInfo *)&v4 dealloc];
}

- (void)initWithSelector:(void *)result
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4.receiver = result;
    v4.super_class = _NSXPCConnectionExpectedReplyInfo;
    result = objc_msgSendSuper2(&v4, sel_init);
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }

    result[4] = v3;
  }

  return result;
}

@end
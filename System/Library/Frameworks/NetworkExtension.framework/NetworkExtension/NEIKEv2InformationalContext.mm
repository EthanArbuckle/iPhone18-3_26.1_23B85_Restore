@interface NEIKEv2InformationalContext
- (id)description;
- (id)initWithPrivateNotifies:(int)a3 maxRetries:(void *)a4 retryIntervalMilliseconds:(void *)a5 callbackQueue:(void *)a6 callback:;
@end

@implementation NEIKEv2InformationalContext

- (id)initWithPrivateNotifies:(int)a3 maxRetries:(void *)a4 retryIntervalMilliseconds:(void *)a5 callbackQueue:(void *)a6 callback:
{
  v12 = a2;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = NEIKEv2InformationalContext;
    v15 = objc_msgSendSuper2(&v20, sel_init);
    if (v15)
    {
      a1 = v15;
      objc_storeStrong(v15 + 4, a2);
      *(a1 + 6) = a3;
      a1[5] = a4;
      objc_storeStrong(a1 + 6, a5);
      objc_setProperty_nonatomic_copy(a1, v16, v14, 56);
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "[super init] failed", v19, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

uint64_t __59__NEIKEv2InformationalContext_sendCallbackSuccess_session___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 48));
  }

  return result;
}

- (id)description
{
  v2 = self;
  if (self)
  {
    self = self->_privateNotifies;
  }

  v3 = [(NEIKEv2InformationalContext *)self count];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3)
  {
    if (v2)
    {
      v5 = [(NSArray *)v2->_privateNotifies count];
      maxRetries = v2->_maxRetries;
      retryIntervalInMilliseconds = v2->_retryIntervalInMilliseconds;
    }

    else
    {
      v5 = [0 count];
      maxRetries = 0;
      retryIntervalInMilliseconds = 0;
    }

    v8 = [v4 initWithFormat:@"%llu private notifies with %u retries at %llums", v5, maxRetries, retryIntervalInMilliseconds];
  }

  else
  {
    if (v2)
    {
      v9 = v2->_maxRetries;
      v10 = v2->_retryIntervalInMilliseconds;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v8 = [v4 initWithFormat:@"keepalive with %u retries at %llums", v9, v10, v12];
  }

  return v8;
}

@end
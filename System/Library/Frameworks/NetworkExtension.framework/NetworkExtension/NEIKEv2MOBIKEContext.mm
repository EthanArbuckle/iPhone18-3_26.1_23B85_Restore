@interface NEIKEv2MOBIKEContext
- (id)description;
- (id)initWithMOBIKEInterface:(void *)a3 mobikeEndpoint:(char)a4 invalidateTransport:(int)a5 maxRetries:(void *)a6 retryIntervalMilliseconds:(void *)a7 callbackQueue:(void *)a8 callback:;
- (void)sendCallbackSuccess:(void *)a3 session:(void *)a4 error:;
@end

@implementation NEIKEv2MOBIKEContext

- (id)initWithMOBIKEInterface:(void *)a3 mobikeEndpoint:(char)a4 invalidateTransport:(int)a5 maxRetries:(void *)a6 retryIntervalMilliseconds:(void *)a7 callbackQueue:(void *)a8 callback:
{
  v15 = a2;
  v16 = a3;
  v17 = a7;
  v18 = a8;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = NEIKEv2MOBIKEContext;
    v19 = objc_msgSendSuper2(&v28, sel_init);
    if (v19)
    {
      a1 = v19;
      v20 = [v15 copy];
      v21 = a1[4];
      a1[4] = v20;

      v22 = [v16 copy];
      v23 = a1[5];
      a1[5] = v22;

      *(a1 + 24) = a4;
      *(a1 + 7) = a5;
      a1[6] = a6;
      objc_storeStrong(a1 + 7, a7);
      objc_setProperty_nonatomic_copy(a1, v24, v18, 64);
    }

    else
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "[super init] failed", v27, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    v4 = self->_mobikeInterface;
    mobikeEndpoint = self->_mobikeEndpoint;
  }

  else
  {
    v4 = 0;
    mobikeEndpoint = 0;
  }

  v6 = [v3 initWithFormat:@"mobike request to interface %@ with endpoint %@", v4, mobikeEndpoint];

  return v6;
}

- (void)sendCallbackSuccess:(void *)a3 session:(void *)a4 error:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = NEIKEv2MOBIKEContext;
    objc_msgSendSuper2(&v21, sel_sendCallbackSuccess_session_, a2, v7);
    v9 = a1[8];
    if (v9)
    {
      v10 = v9;
      v11 = a1[7];
      if (!v11)
      {
LABEL_7:

        goto LABEL_8;
      }

      if (!v7)
      {

        goto LABEL_6;
      }

      v12 = v7[12];

      if ((v12 & 1) == 0)
      {
LABEL_6:
        v13 = a1[8];
        objc_setProperty_nonatomic_copy(a1, v14, 0, 64);
        v15 = a1[7];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __58__NEIKEv2MOBIKEContext_sendCallbackSuccess_session_error___block_invoke;
        v16[3] = &unk_1E7F0A1D8;
        v17 = v7;
        v19 = v13;
        v20 = a2;
        v18 = v8;
        v10 = v13;
        dispatch_async(v15, v16);

        goto LABEL_7;
      }
    }
  }

LABEL_8:
}

uint64_t __58__NEIKEv2MOBIKEContext_sendCallbackSuccess_session_error___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    v2 = *(result + 56);
    v3 = *(result + 40);
    return (*(*(result + 48) + 16))(*(result + 48));
  }

  return result;
}

@end
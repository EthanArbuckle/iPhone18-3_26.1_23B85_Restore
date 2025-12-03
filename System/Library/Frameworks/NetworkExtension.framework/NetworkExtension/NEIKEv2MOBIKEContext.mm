@interface NEIKEv2MOBIKEContext
- (id)description;
- (id)initWithMOBIKEInterface:(void *)interface mobikeEndpoint:(char)endpoint invalidateTransport:(int)transport maxRetries:(void *)retries retryIntervalMilliseconds:(void *)milliseconds callbackQueue:(void *)queue callback:;
- (void)sendCallbackSuccess:(void *)success session:(void *)session error:;
@end

@implementation NEIKEv2MOBIKEContext

- (id)initWithMOBIKEInterface:(void *)interface mobikeEndpoint:(char)endpoint invalidateTransport:(int)transport maxRetries:(void *)retries retryIntervalMilliseconds:(void *)milliseconds callbackQueue:(void *)queue callback:
{
  v15 = a2;
  interfaceCopy = interface;
  millisecondsCopy = milliseconds;
  queueCopy = queue;
  if (self)
  {
    v28.receiver = self;
    v28.super_class = NEIKEv2MOBIKEContext;
    v19 = objc_msgSendSuper2(&v28, sel_init);
    if (v19)
    {
      self = v19;
      v20 = [v15 copy];
      v21 = self[4];
      self[4] = v20;

      v22 = [interfaceCopy copy];
      v23 = self[5];
      self[5] = v22;

      *(self + 24) = endpoint;
      *(self + 7) = transport;
      self[6] = retries;
      objc_storeStrong(self + 7, milliseconds);
      objc_setProperty_nonatomic_copy(self, v24, queueCopy, 64);
    }

    else
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "[super init] failed", v27, 2u);
      }

      self = 0;
    }
  }

  return self;
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

  mobikeEndpoint = [v3 initWithFormat:@"mobike request to interface %@ with endpoint %@", v4, mobikeEndpoint];

  return mobikeEndpoint;
}

- (void)sendCallbackSuccess:(void *)success session:(void *)session error:
{
  successCopy = success;
  sessionCopy = session;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = NEIKEv2MOBIKEContext;
    objc_msgSendSuper2(&v21, sel_sendCallbackSuccess_session_, a2, successCopy);
    v9 = self[8];
    if (v9)
    {
      v10 = v9;
      v11 = self[7];
      if (!v11)
      {
LABEL_7:

        goto LABEL_8;
      }

      if (!successCopy)
      {

        goto LABEL_6;
      }

      v12 = successCopy[12];

      if ((v12 & 1) == 0)
      {
LABEL_6:
        v13 = self[8];
        objc_setProperty_nonatomic_copy(self, v14, 0, 64);
        v15 = self[7];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __58__NEIKEv2MOBIKEContext_sendCallbackSuccess_session_error___block_invoke;
        v16[3] = &unk_1E7F0A1D8;
        v17 = successCopy;
        v19 = v13;
        v20 = a2;
        v18 = sessionCopy;
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
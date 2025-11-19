@interface NEIKEv2KeyExchangeHandlerMODP
- (BOOL)processPeerPayload:(id)a3;
- (void)dealloc;
- (void)initWithMODPMethod:(void *)a1;
@end

@implementation NEIKEv2KeyExchangeHandlerMODP

- (void)dealloc
{
  if (self && self->_context)
  {
    SecDHDestroy();
  }

  v3.receiver = self;
  v3.super_class = NEIKEv2KeyExchangeHandlerMODP;
  [(NEIKEv2KeyExchangeHandlerMODP *)&v3 dealloc];
}

- (BOOL)processPeerPayload:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      method = self->super._method;
    }

    else
    {
      method = 0;
    }

    *buf = 134217984;
    v30 = method;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Compute KE %zu result", buf, 0xCu);
  }

  if (!v4)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v30 = "[NEIKEv2KeyExchangeHandlerMODP processPeerPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, "%s called with null peerPayload", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v6 = [v4 length];
  v7 = v6;
  if (!self)
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

  if (v6 != self->_primeLength)
  {
LABEL_30:
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      if (self)
      {
        v24 = self->super._method;
        v25 = [v4 length];
        primeLength = self->_primeLength;
      }

      else
      {
        v25 = [v4 length];
        v24 = 0;
        primeLength = 0;
      }

      *buf = 134218496;
      v30 = v24;
      v31 = 2048;
      v32 = v25;
      v33 = 2048;
      v34 = primeLength;
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "Peer KE %zu key length (%zu) is not equal to prime length (%zu)", buf, 0x20u);
    }

LABEL_32:
    v14 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v8 = &v27 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 2 * v6);
  v28 = v7;
  if (self)
  {
    context = self->_context;
  }

  [v4 bytes];
  [v4 length];
  v10 = SecDHComputeKey();
  if (v10)
  {
    v21 = v10;
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v22 = self->super._method;
      }

      else
      {
        v22 = 0;
      }

      *buf = 134218240;
      v30 = v22;
      v31 = 1024;
      LODWORD(v32) = v21;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Failed to compute KE %zu value: %d", buf, 0x12u);
    }

    v14 = 0;
  }

  else
  {
    v11 = v28;
    objc_opt_self();
    v12 = SecCFAllocatorZeroize();
    v13 = CFDataCreate(v12, &v8[v11], v7);
    memset_s(&v8[v7], v7, 0, v28);
    v14 = v13 != 0;
    if (v13)
    {
      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v13];
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        if (self)
        {
          v19 = self->super._method;
        }

        else
        {
          v19 = 0;
        }

        *buf = 134217984;
        v30 = v19;
        _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "Computed KE %zu result", buf, 0xCu);
      }
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v30 = v7;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%zu] failed", buf, 0xCu);
      }
    }
  }

LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)initWithMODPMethod:(void *)a1
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v3 = a1;
  v4 = a2 - 1;
  if ((a2 - 1) >= 0x12 || ((0x3E013u >> v4) & 1) == 0)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_14:

      v13 = 0;
      goto LABEL_15;
    }

    *buf = 134217984;
    v24 = a2;
    v17 = "Unsupported KE method %zu";
    v18 = v14;
    v19 = 12;
LABEL_18:
    _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, v17, buf, v19);
    goto LABEL_14;
  }

  v5 = qword_1BAA4F698[v4];
  v6 = *(&off_1E7F08100 + v4);
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "Generate KE %zu key", buf, 0xCu);
  }

  v8 = SecDHCreate();
  if (v8)
  {
    v20 = v8;
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 134218240;
    v24 = a2;
    v25 = 1024;
    v26 = v20;
    v17 = "Failed to create KE %zu context: %d";
    v18 = v14;
    v19 = 18;
    goto LABEL_18;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5];
  [v9 mutableBytes];
  v10 = SecDHGenerateKeypair();
  if (v10)
  {
    v21 = v10;
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v24 = a2;
      v25 = 1024;
      v26 = v21;
      _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "Failed to generate KE %zu key pair: %d", buf, 0x12u);
    }

    SecDHDestroy();
    goto LABEL_25;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Generated KE %zu key", buf, 0xCu);
  }

  v12 = [(NEIKEv2KeyExchangeHandler *)v3 initWithMethod:a2 keyExchangeData:v9];
  if (!v12)
  {
    SecDHDestroy();
    v3 = 0;
LABEL_25:
    v13 = 0;
    goto LABEL_12;
  }

  v12[4] = v5;
  v12[5] = 0;
  v3 = v12;
  v13 = v3;
LABEL_12:

LABEL_15:
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

@end
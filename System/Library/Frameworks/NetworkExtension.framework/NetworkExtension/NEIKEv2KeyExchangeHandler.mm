@interface NEIKEv2KeyExchangeHandler
+ (void)handlerForMethod:(uint64_t)method;
+ (void)handlerForMethod:(void *)method peerPayload:;
- (BOOL)processPeerPayload:(id)payload;
- (void)initWithMethod:(void *)method keyExchangeData:;
- (void)setSharedSecret:(uint64_t)secret;
@end

@implementation NEIKEv2KeyExchangeHandler

- (void)setSharedSecret:(uint64_t)secret
{
  if (secret)
  {
    objc_storeStrong((secret + 24), a2);
  }
}

- (BOOL)processPeerPayload:(id)payload
{
  v20 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = ne_log_obj();
  v6 = v5;
  if (payloadCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        method = self->_method;
      }

      else
      {
        method = 0;
      }

      *buf = 134217984;
      v17 = method;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "Decapsulate KE %zu secret", buf, 0xCu);
    }

    v15 = 0;
    v7 = [(NEIKEv2KeyExchangeHandler *)self processPeerPayload:payloadCopy error:&v15];
    v6 = v15;
    v8 = ne_log_obj();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        if (self)
        {
          v13 = self->_method;
        }

        else
        {
          v13 = 0;
        }

        *buf = 134217984;
        v17 = v13;
        _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "Decapsulated KE %zu secret", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v14 = self->_method;
      }

      else
      {
        v14 = 0;
      }

      *buf = 134218242;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to decapsulate KE %zu secret: %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v17 = "[NEIKEv2KeyExchangeHandler processPeerPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null peerPayload", buf, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (void)handlerForMethod:(uint64_t)method
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2 > 0x25)
  {
    goto LABEL_15;
  }

  if (((1 << a2) & 0x7C026) == 0)
  {
    if (((1 << a2) & 0x3180380000) != 0)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v16 = a2;
        _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "Generate KE %zu key", buf, 0xCu);
      }

      v14 = 0;
      v7 = [NEIKEv2KeyExchangeHandlerCryptoKit handlerForMethod:a2 error:&v14];
      v8 = v14;
      v9 = ne_log_obj();
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v16 = a2;
          _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "Generated KE %zu key", buf, 0xCu);
        }

        v11 = v7;
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v16 = a2;
          v17 = 2112;
          v18 = v8;
          _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Failed to generate KE %zu key: %@", buf, 0x16u);
        }
      }

LABEL_14:
      v12 = *MEMORY[0x1E69E9840];
      return v7;
    }

LABEL_15:
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v16) = a2;
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "Unknown KE method %u", buf, 8u);
    }

    v7 = 0;
    goto LABEL_14;
  }

  v3 = [NEIKEv2KeyExchangeHandlerMODP alloc];
  v4 = *MEMORY[0x1E69E9840];

  return [(NEIKEv2KeyExchangeHandlerMODP *)v3 initWithMODPMethod:a2];
}

- (void)initWithMethod:(void *)method keyExchangeData:
{
  methodCopy = method;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = NEIKEv2KeyExchangeHandler;
    v6 = objc_msgSendSuper2(&v11, sel_init);
    if (v6)
    {
      self = v6;
      v6[1] = a2;
      v7 = methodCopy;
      v8 = self[2];
      self[2] = v7;
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v10, 2u);
      }

      self = 0;
    }
  }

  return self;
}

+ (void)handlerForMethod:(void *)method peerPayload:
{
  v20 = *MEMORY[0x1E69E9840];
  methodCopy = method;
  objc_opt_self();
  if (a2 > 0x25)
  {
    goto LABEL_15;
  }

  if (((1 << a2) & 0x7C026) != 0)
  {
    v5 = [[NEIKEv2KeyExchangeHandlerMODP alloc] initWithMODPMethod:a2];
    if ([v5 processPeerPayload:methodCopy])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  if (((1 << a2) & 0x3180380000) != 0)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = a2;
      _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "Encapsulate KE %zu secret", buf, 0xCu);
    }

    v15 = 0;
    v6 = [NEIKEv2KeyExchangeHandlerCryptoKit handlerForMethod:a2 peerPayload:methodCopy error:&v15];
    v8 = v15;
    v9 = ne_log_obj();
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v17 = a2;
        _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "Encapsulated KE %zu secret", buf, 0xCu);
      }

      v11 = v6;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v17 = a2;
        v18 = 2112;
        v19 = v8;
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Failed to encapsulate KE %zu secret: %@", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_15:
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v17) = a2;
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "Unknown KE method %u", buf, 8u);
    }

    v6 = 0;
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

@end
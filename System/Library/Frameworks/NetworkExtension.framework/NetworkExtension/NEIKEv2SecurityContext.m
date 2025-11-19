@interface NEIKEv2SecurityContext
+ (id)removePaddingFromDecryptedPayload:(uint64_t)a1;
- (_DWORD)initWithMinimumEncryptedPayloadSize:(void *)a1;
- (unsigned)maximumPayloadSizeWithinLimit:(unsigned int)a3;
- (unsigned)overheadForPlaintextLength:(unsigned int)a3;
@end

@implementation NEIKEv2SecurityContext

- (unsigned)maximumPayloadSizeWithinLimit:(unsigned int)a3
{
  if (self)
  {
    minimumEncryptedPayloadSize = self->_minimumEncryptedPayloadSize;
    if (minimumEncryptedPayloadSize >= a3)
    {
      LODWORD(self) = 0;
      return self;
    }
  }

  else
  {
    minimumEncryptedPayloadSize = 0;
    if (!a3)
    {
      return self;
    }
  }

  LODWORD(self) = a3 - minimumEncryptedPayloadSize;
  return self;
}

- (unsigned)overheadForPlaintextLength:(unsigned int)a3
{
  if (self)
  {
    LODWORD(self) = self->_minimumEncryptedPayloadSize;
  }

  return self;
}

+ (id)removePaddingFromDecryptedPayload:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 length];
  v4 = v3;
  if (!v3)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "BACKTRACE Can't remove padding from payload of length 0", buf, 2u);
    }

    goto LABEL_14;
  }

  v12 = 0;
  [v2 getBytes:&v12 range:{v3 - 1, 1}];
  v5 = v12 + 1;
  if (v12 >= v4)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v14 = v5;
      v15 = 1024;
      v16 = v4;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "BACKTRACE Padding len (%u) > decrypted data len (%u)", buf, 0xEu);
    }

LABEL_14:
    v7 = 0;
    goto LABEL_7;
  }

  if (v4 == v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  else
  {
    [v2 setLength:v4 - v5];
    v6 = v2;
  }

  v7 = v6;
LABEL_7:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (_DWORD)initWithMinimumEncryptedPayloadSize:(void *)a1
{
  v6.receiver = a1;
  v6.super_class = NEIKEv2SecurityContext;
  result = objc_msgSendSuper2(&v6, sel_init);
  if (result)
  {
    result[2] = a2;
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "[super init] failed", v5, 2u);
    }

    return 0;
  }

  return result;
}

@end
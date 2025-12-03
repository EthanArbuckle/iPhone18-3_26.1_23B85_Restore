@interface NEIKEv2SecurityContextChaCha20Poly1305
- (_DWORD)initWithEncryptionProtocol:(void *)protocol outgoingEncryptionKey:(void *)key incomingEncryptionKey:;
- (id)decryptPayloadData:(id)data authenticatedHeaders:(id)headers;
- (void)dealloc;
@end

@implementation NEIKEv2SecurityContextChaCha20Poly1305

- (id)decryptPayloadData:(id)data authenticatedHeaders:(id)headers
{
  *&v35[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  headersCopy = headers;
  v8 = headersCopy;
  if (!dataCopy)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __s = 136315138;
      *v35 = "[NEIKEv2SecurityContextChaCha20Poly1305 decryptPayloadData:authenticatedHeaders:]";
      v21 = "%s called with null payloadData";
LABEL_17:
      v22 = v20;
      v23 = 12;
      goto LABEL_35;
    }

LABEL_22:

LABEL_23:
    v17 = 0;
    goto LABEL_12;
  }

  if (!headersCopy)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __s = 136315138;
      *v35 = "[NEIKEv2SecurityContextChaCha20Poly1305 decryptPayloadData:authenticatedHeaders:]";
      v21 = "%s called with null authenticatedHeaders";
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v9 = [dataCopy length];
  v10 = v9;
  if (self && self->super._minimumEncryptedPayloadSize > v9)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __s = 67109120;
      v35[0] = v10;
      _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Cannot decrypt, encrypted data length %u too short", &__s, 8u);
    }

    goto LABEL_23;
  }

  ccchacha20poly1305_info();
  v11 = ccchacha20poly1305_reset();
  if (v11)
  {
    v25 = v11;
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    __s = 67109120;
    v35[0] = v25;
    v21 = "ccchacha20poly1305_reset failed: %d";
    v22 = v20;
    v23 = 8;
LABEL_35:
    _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, v21, &__s, v23);
    goto LABEL_22;
  }

  *v35 = 0;
  __s = *self->incomingEncryptionSalt;
  [dataCopy getBytes:v35 length:8];
  v12 = ccchacha20poly1305_setnonce();
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  if (v12)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v32 = 67109120;
      v33 = v12;
      v26 = "ccchacha20poly1305_setnonce failed: %d";
LABEL_28:
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v26, &v32, 8u);
    }

LABEL_33:
    v17 = 0;
    goto LABEL_11;
  }

  [v8 length];
  [v8 bytes];
  v13 = ccchacha20poly1305_aad();
  if (v13)
  {
    v27 = v13;
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v32 = 67109120;
      v33 = v27;
      v26 = "ccchacha20poly1305_aad failed: %d";
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 - 24];
  [dataCopy bytes];
  [v14 mutableBytes];
  v15 = ccchacha20poly1305_decrypt();
  if (v15)
  {
    v28 = v15;
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
LABEL_32:

      goto LABEL_33;
    }

    v32 = 67109120;
    v33 = v28;
    v30 = "ccchacha20poly1305_decrypt failed: %d";
LABEL_37:
    _os_log_fault_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_FAULT, v30, &v32, 8u);
    goto LABEL_32;
  }

  v16 = ccchacha20poly1305_verify();
  if (v16)
  {
    v31 = v16;
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    v32 = 67109120;
    v33 = v31;
    v30 = "ccchacha20poly1305_verify failed: %d";
    goto LABEL_37;
  }

  v17 = [NEIKEv2SecurityContext removePaddingFromDecryptedPayload:v14];
LABEL_11:

LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  memset_s(&self->outgoingEncryptionContext, 0x100uLL, 0, 0x100uLL);
  memset_s(&self->incomingEncryptionContext, 0x100uLL, 0, 0x100uLL);
  memset_s(self->outgoingEncryptionSalt, 4uLL, 0, 4uLL);
  memset_s(self->incomingEncryptionSalt, 4uLL, 0, 4uLL);
  v3.receiver = self;
  v3.super_class = NEIKEv2SecurityContextChaCha20Poly1305;
  [(NEIKEv2SecurityContextChaCha20Poly1305 *)&v3 dealloc];
}

- (_DWORD)initWithEncryptionProtocol:(void *)protocol outgoingEncryptionKey:(void *)key incomingEncryptionKey:
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  protocolCopy = protocol;
  keyCopy = key;
  v10 = keyCopy;
  if (!self)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2SecurityContextChaCha20Poly1305 initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v13 = "%s called with null encryptionProtocol";
LABEL_16:
    v14 = v12;
    v15 = 12;
LABEL_22:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v13, &v18, v15);
    goto LABEL_23;
  }

  if (!protocolCopy)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2SecurityContextChaCha20Poly1305 initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v13 = "%s called with null outgoingEncryptionKey";
    goto LABEL_16;
  }

  if (!keyCopy)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2SecurityContextChaCha20Poly1305 initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v13 = "%s called with null incomingEncryptionKey";
    goto LABEL_16;
  }

  if (v7[2] != 28)
  {
    goto LABEL_24;
  }

  self = [(NEIKEv2SecurityContext *)self initWithMinimumEncryptedPayloadSize:?];
  if (!self)
  {
    goto LABEL_24;
  }

  [protocolCopy getBytes:self + 132 range:{objc_msgSend(protocolCopy, "length") - 4, 4}];
  objc_opt_self();
  arc4random_buf(self + 134, 8uLL);
  ccchacha20poly1305_info();
  [protocolCopy bytes];
  if (ccchacha20poly1305_init())
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v18) = 0;
      v13 = "ccchacha20poly1305_init failed";
LABEL_21:
      v14 = v12;
      v15 = 2;
      goto LABEL_22;
    }

LABEL_23:

LABEL_24:
    selfCopy = 0;
    goto LABEL_25;
  }

  [v10 getBytes:self + 133 range:{objc_msgSend(v10, "length") - 4, 4}];
  ccchacha20poly1305_info();
  [v10 bytes];
  if (ccchacha20poly1305_init())
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v18) = 0;
      v13 = "ccchacha20poly1305_init failed";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  self = self;
  selfCopy = self;
LABEL_25:

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end
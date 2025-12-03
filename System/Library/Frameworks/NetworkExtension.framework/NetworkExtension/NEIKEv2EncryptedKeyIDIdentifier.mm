@interface NEIKEv2EncryptedKeyIDIdentifier
- (BOOL)isEqual:(id)equal;
- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyID:(id)d aad:(id)aad key:(id)key;
- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyID:(id)d aad:(id)aad keyRef:(__SecKey *)ref;
- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyIDString:(id)string aad:(id)aad key:(id)key;
- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyIDString:(id)string aad:(id)aad keyRef:(__SecKey *)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decryptWithSession:(id)session returnError:(id *)error;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAad:(uint64_t)aad;
- (void)setKeyData:(uint64_t)data;
@end

@implementation NEIKEv2EncryptedKeyIDIdentifier

- (id)decryptWithSession:(id)session returnError:(id *)error
{
  if (!session || (v10 = objc_getProperty(session, a2, 352, 1)) == 0)
  {
    ErrorInternal = NEIKEv2CreateErrorInternal(@"Missing IKE SA", a2, session, error, v4, v5, v6, v7, v40);
    v11 = 0;
    v25 = 0;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = v10;
  selfCopy = self;
  location = 0;
  identifierData = [(NEIKEv2Identifier *)selfCopy identifierData];
  v14 = [identifierData length];

  if (v14 <= 0x20)
  {
    identifierData2 = [(NEIKEv2Identifier *)selfCopy identifierData];
    v16 = [identifierData2 length];
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Encrypted identifier length %u too short", v17, v18, v19, v20, v21, v22, v23, v16);
    location = ErrorPeerInvalidSyntax;

    v25 = 0;
    goto LABEL_18;
  }

  v26 = [(NEIKEv2IKESA *)v11 createConcatenatedSPIsAndReturnError:?];
  if (!v26)
  {
    v25 = 0;
    goto LABEL_17;
  }

  v27 = [(NEIKEv2IKESA *)v11 createConcatedNoncesAndReturnError:?];
  if (!v27)
  {
    v25 = 0;
    goto LABEL_16;
  }

  if (selfCopy)
  {
    v28 = selfCopy->_keyRef == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = [NEIKEv2CryptoKitHPKE alloc];
  identifierData3 = [(NEIKEv2Identifier *)selfCopy identifierData];
  if (!selfCopy)
  {
    v31 = 0;
    keyRef = 0;
    keyData = 0;
    if (v28)
    {
      goto LABEL_12;
    }

LABEL_14:
    v34 = [(NEIKEv2CryptoKitHPKE *)v29 initWithPayload:identifierData3 aad:v31 psk:v27 pskID:v26 keyRef:keyRef];
    goto LABEL_15;
  }

  v31 = selfCopy->_aad;
  if (!v28)
  {
    keyRef = selfCopy->_keyRef;
    goto LABEL_14;
  }

  keyData = selfCopy->_keyData;
LABEL_12:
  v33 = keyData;
  v34 = [(NEIKEv2CryptoKitHPKE *)v29 initWithPayload:identifierData3 aad:v31 psk:v27 pskID:v26 keyData:v33];

LABEL_15:
  obj = location;
  v25 = [(NEIKEv2CryptoKitHPKE *)v34 performOpenAndReturnError:&obj];
  objc_storeStrong(&location, obj);

LABEL_16:
LABEL_17:

  ErrorPeerInvalidSyntax = location;
LABEL_18:
  ErrorInternal = ErrorPeerInvalidSyntax;
  if (ErrorInternal)
  {

    v25 = 0;
    v37 = location;
  }

  else
  {
    v37 = 0;
  }

  if (error)
  {
LABEL_22:
    v38 = ErrorInternal;
    *error = ErrorInternal;
  }

LABEL_23:

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v24.receiver = self;
  v24.super_class = NEIKEv2EncryptedKeyIDIdentifier;
  if ([(NEIKEv2Identifier *)&v24 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (self)
    {
      aad = self->_aad;
    }

    else
    {
      aad = 0;
    }

    v7 = aad;
    v8 = v7;
    if (v5)
    {
      v9 = v5[4];
    }

    else
    {
      v9 = 0;
    }

    if (v7 == v9)
    {

      if (!self)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (self)
    {
      v10 = self->_aad;
      if (v5)
      {
LABEL_9:
        v11 = v5[4];
LABEL_10:
        v12 = v10;
        v13 = v9;
        v14 = [(NSData *)v12 isEqual:v11];

        v15 = 0;
        if (!v14 || !self)
        {
          goto LABEL_29;
        }

LABEL_15:
        v16 = self->_keyData;
        if (v16)
        {
          if (!v5)
          {

            goto LABEL_28;
          }

          v17 = v5[3];

          if (v17)
          {
            keyData = self->_keyData;
            v19 = v5[3];
            v20 = keyData;
            v15 = [(NSData *)v20 isEqualToData:v19];

LABEL_29:
            goto LABEL_30;
          }
        }

        v15 = 0;
        if (!v5)
        {
          goto LABEL_29;
        }

        keyRef = self->_keyRef;
        if (!keyRef)
        {
          goto LABEL_29;
        }

        v22 = v5[2];
        if (v22)
        {
          v15 = CFEqual(keyRef, v22) != 0;
          goto LABEL_29;
        }

LABEL_28:
        v15 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = 0;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_30:

  return v15;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = NEIKEv2EncryptedKeyIDIdentifier;
  v3 = [(NEIKEv2Identifier *)&v10 hash];
  if (self)
  {
    if (self->_keyRef)
    {
      v4 = SecKeyCopyPublicKeyHash();
      v5 = [v4 hash];

      v6 = v5 ^ v3;
      goto LABEL_6;
    }

    keyData = self->_keyData;
  }

  else
  {
    keyData = 0;
  }

  v6 = [(NSData *)keyData hash]^ v3;
  if (!self)
  {
    aad = 0;
    return [(NSData *)aad hash]^ v6;
  }

LABEL_6:
  aad = self->_aad;
  return [(NSData *)aad hash]^ v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NEIKEv2EncryptedKeyIDIdentifier;
  v4 = [(NEIKEv2Identifier *)&v10 copyWithZone:zone];
  v6 = v4;
  if (self)
  {
    keyRef = self->_keyRef;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  keyRef = 0;
  if (v4)
  {
LABEL_3:
    objc_setProperty_nonatomic(v4, v5, keyRef, 16);
  }

LABEL_4:
  if (self)
  {
    [(NEIKEv2EncryptedKeyIDIdentifier *)v6 setKeyData:?];
    aad = self->_aad;
  }

  else
  {
    [(NEIKEv2EncryptedKeyIDIdentifier *)v6 setKeyData:?];
    aad = 0;
  }

  [(NEIKEv2EncryptedKeyIDIdentifier *)v6 setAad:?];
  return v6;
}

- (void)setKeyData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 24), a2);
  }
}

- (void)setAad:(uint64_t)aad
{
  if (aad)
  {
    objc_storeStrong((aad + 32), a2);
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 16);
  }

  v3.receiver = self;
  v3.super_class = NEIKEv2EncryptedKeyIDIdentifier;
  [(NEIKEv2EncryptedKeyIDIdentifier *)&v3 dealloc];
}

- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyIDString:(id)string aad:(id)aad key:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  aadCopy = aad;
  keyCopy = key;
  v11 = keyCopy;
  if (!keyCopy)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      selfCopy = 0;
      goto LABEL_4;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2EncryptedKeyIDIdentifier initWithKeyIDString:aad:key:]";
    v17 = "%s called with null key";
LABEL_10:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v17, &v18, 0xCu);
    goto LABEL_8;
  }

  if ([keyCopy length] != 32)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v18 = 134217984;
    v19 = [v11 length];
    v17 = "Invalid key length %tu!";
    goto LABEL_10;
  }

  v12 = [(NEIKEv2KeyIDIdentifier *)self initWithKeyIDString:stringCopy];
  [(NEIKEv2EncryptedKeyIDIdentifier *)v12 setKeyData:v11];
  [(NEIKEv2EncryptedKeyIDIdentifier *)v12 setAad:aadCopy];
  self = v12;
  selfCopy = self;
LABEL_4:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyIDString:(id)string aad:(id)aad keyRef:(__SecKey *)ref
{
  v19 = *MEMORY[0x1E69E9840];
  aadCopy = aad;
  if (ref)
  {
    v10 = [(NEIKEv2KeyIDIdentifier *)self initWithKeyIDString:string];
    p_isa = &v10->super.super.super.isa;
    if (v10)
    {
      objc_setProperty_nonatomic(v10, v11, ref, 16);
      objc_storeStrong(p_isa + 4, aad);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "[NEIKEv2EncryptedKeyIDIdentifier initWithKeyIDString:aad:keyRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "%s called with null keyRef", &v17, 0xCu);
    }

    selfCopy = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyID:(id)d aad:(id)aad key:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  aadCopy = aad;
  keyCopy = key;
  v11 = keyCopy;
  if (!keyCopy)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      selfCopy = 0;
      goto LABEL_4;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2EncryptedKeyIDIdentifier initWithKeyID:aad:key:]";
    v17 = "%s called with null key";
LABEL_10:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v17, &v18, 0xCu);
    goto LABEL_8;
  }

  if ([keyCopy length] != 32)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v18 = 134217984;
    v19 = [v11 length];
    v17 = "Invalid key length %tu!";
    goto LABEL_10;
  }

  v12 = [(NEIKEv2KeyIDIdentifier *)self initWithKeyID:dCopy];
  [(NEIKEv2EncryptedKeyIDIdentifier *)v12 setKeyData:v11];
  [(NEIKEv2EncryptedKeyIDIdentifier *)v12 setAad:aadCopy];
  self = v12;
  selfCopy = self;
LABEL_4:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NEIKEv2EncryptedKeyIDIdentifier)initWithKeyID:(id)d aad:(id)aad keyRef:(__SecKey *)ref
{
  v19 = *MEMORY[0x1E69E9840];
  aadCopy = aad;
  if (ref)
  {
    v10 = [(NEIKEv2KeyIDIdentifier *)self initWithKeyID:d];
    p_isa = &v10->super.super.super.isa;
    if (v10)
    {
      objc_setProperty_nonatomic(v10, v11, ref, 16);
      objc_storeStrong(p_isa + 4, aad);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "[NEIKEv2EncryptedKeyIDIdentifier initWithKeyID:aad:keyRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "%s called with null keyRef", &v17, 0xCu);
    }

    selfCopy = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end
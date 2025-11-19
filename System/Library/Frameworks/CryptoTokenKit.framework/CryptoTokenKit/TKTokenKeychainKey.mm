@interface TKTokenKeychainKey
- (BOOL)setupWithPublicKey:(__SecKey *)a3 label:(id)a4;
- (TKTokenKeychainKey)initWithCertificate:(SecCertificateRef)certificateRef objectID:(TKTokenObjectID)objectID;
- (TKTokenKeychainKey)initWithItemInfo:(id)a3;
- (id)encodedObjectID;
- (id)keychainAttributes;
- (unint64_t)keyUsage;
@end

@implementation TKTokenKeychainKey

- (TKTokenKeychainKey)initWithCertificate:(SecCertificateRef)certificateRef objectID:(TKTokenObjectID)objectID
{
  v14.receiver = self;
  v14.super_class = TKTokenKeychainKey;
  v5 = [(TKTokenKeychainItem *)&v14 initWithObjectID:objectID];
  v6 = v5;
  if (certificateRef && v5)
  {
    v7 = SecCertificateCopySubjectSummary(certificateRef);
    v8 = SecCertificateCopyKey(certificateRef);
    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:SecCertificateGetKeyUsage()];
      v10 = [v9 unsignedCharValue];

      [(TKTokenKeychainKey *)v6 setCanSign:[TKTokenKeychainKey canSign:v10]];
      [(TKTokenKeychainKey *)v6 setCanDecrypt:[TKTokenKeychainKey canDecrypt:v10]];
      [(TKTokenKeychainKey *)v6 setCanPerformKeyExchange:[TKTokenKeychainKey canPerformKeyExchange:v10]];
      [(TKTokenKeychainKey *)v6 setSuitableForLogin:[(TKTokenKeychainKey *)v6 canSign]];
      if ([(TKTokenKeychainKey *)v6 setupWithPublicKey:v8 label:v7])
      {
        v11 = v6;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v12 = TK_LOG_token_2();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TKTokenKeychainKey initWithCertificate:v12 objectID:?];
      }
    }

    v11 = 0;
    goto LABEL_11;
  }

  v11 = v5;
LABEL_12:

  return v11;
}

- (BOOL)setupWithPublicKey:(__SecKey *)a3 label:(id)a4
{
  [(TKTokenKeychainItem *)self setLabel:a4];
  v6 = SecKeyCopyAttributes(a3);
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  publicKeyData = self->_publicKeyData;
  self->_publicKeyData = v7;

  v9 = self->_publicKeyData;
  if (v9)
  {
    v10 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x1E697AD68]];
    keyType = self->_keyType;
    self->_keyType = v10;

    v12 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x1E697AD50]];
    self->_keySizeInBits = [v12 integerValue];

    v13 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x1E697AC40]];
    publicKeyHash = self->_publicKeyHash;
    self->_publicKeyHash = v13;

    v15 = [MEMORY[0x1E695E0F8] mutableCopy];
    if ([(TKTokenKeychainKey *)self canSign])
    {
      [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F5A85168];
    }

    if ([(TKTokenKeychainKey *)self canDecrypt])
    {
      [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F5A85180];
    }

    if ([(TKTokenKeychainKey *)self canPerformKeyExchange])
    {
      [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F5A85198];
    }

    v16 = [v15 copy];
    [(TKTokenKeychainItem *)self setConstraints:v16];
  }

  else
  {
    v17 = TK_LOG_token_2();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainKey setupWithPublicKey:v17 label:?];
    }
  }

  return v9 != 0;
}

- (id)keychainAttributes
{
  v18.receiver = self;
  v18.super_class = TKTokenKeychainKey;
  v3 = [(TKTokenKeychainItem *)&v18 keychainAttributes];
  [v3 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v3 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697AD20]];
  v4 = [(TKTokenKeychainKey *)self keyType];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E697AD68]];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TKTokenKeychainKey keySizeInBits](self, "keySizeInBits")}];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697AD50]];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[TKTokenKeychainKey canDecrypt](self, "canDecrypt")}];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697AC80]];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[TKTokenKeychainKey canSign](self, "canSign")}];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697AC98]];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[TKTokenKeychainKey canDecrypt](self, "canDecrypt")}];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697ACA0]];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[TKTokenKeychainKey canPerformKeyExchange](self, "canPerformKeyExchange")}];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697AC88]];

  v10 = [(TKTokenKeychainKey *)self applicationTag];

  if (v10)
  {
    v11 = [(TKTokenKeychainKey *)self applicationTag];
    [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697AC48]];
  }

  v12 = [(TKTokenKeychainKey *)self publicKeyHash];

  if (v12)
  {
    v13 = [(TKTokenKeychainKey *)self publicKeyHash];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E697AC40]];
  }

  v14 = [(TKTokenKeychainKey *)self publicKeyData];

  if (v14)
  {
    v15 = [(TKTokenKeychainKey *)self publicKeyData];
    [v3 setObject:v15 forKeyedSubscript:@"pubk"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TKTokenKeychainKey keyUsage](self, "keyUsage")}];
  [v3 setObject:v16 forKeyedSubscript:@"keyUsage"];

  return v3;
}

- (id)encodedObjectID
{
  v2 = [(TKTokenKeychainItem *)self objectID];
  v3 = [TKTokenID encodedKeyID:v2];

  return v3;
}

- (TKTokenKeychainKey)initWithItemInfo:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TKTokenKeychainKey;
  v5 = [(TKTokenKeychainItem *)&v21 initWithItemInfo:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    publicKeyData = v5->_publicKeyData;
    v5->_publicKeyData = v6;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AD68]];
    keyType = v5->_keyType;
    v5->_keyType = v8;

    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AD50]];
    v5->_keySizeInBits = [v10 integerValue];

    v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AC40]];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v11;

    v13 = [v4 objectForKeyedSubscript:@"pubk"];
    v14 = v5->_publicKeyData;
    v5->_publicKeyData = v13;

    v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AC80]];
    v5->_canDecrypt = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AC98]];
    v5->_canSign = [v16 BOOLValue];

    v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697ACA0]];
    v5->_canDecrypt = [v17 BOOLValue];

    v18 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AC88]];
    v5->_canPerformKeyExchange = [v18 BOOLValue];

    v19 = [v4 objectForKeyedSubscript:@"keyUsage"];
    v5->_suitableForLogin = [v19 integerValue] & 1;
  }

  return v5;
}

- (unint64_t)keyUsage
{
  v3 = [(TKTokenKeychainKey *)self isSuitableForLogin];
  if ([(TKTokenKeychainKey *)self canSign])
  {
    v3 |= 8uLL;
  }

  if ([(TKTokenKeychainKey *)self canDecrypt])
  {
    v3 |= 2uLL;
  }

  if ([(TKTokenKeychainKey *)self canPerformKeyExchange])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

@end
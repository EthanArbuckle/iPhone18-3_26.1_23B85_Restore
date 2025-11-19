@interface TKTokenKeychainCertificate
- (TKTokenKeychainCertificate)initWithCertificate:(SecCertificateRef)certificateRef objectID:(TKTokenObjectID)objectID;
- (TKTokenKeychainCertificate)initWithItemInfo:(id)a3;
- (id)encodedObjectID;
- (id)keychainAttributes;
@end

@implementation TKTokenKeychainCertificate

- (TKTokenKeychainCertificate)initWithCertificate:(SecCertificateRef)certificateRef objectID:(TKTokenObjectID)objectID
{
  v33[1] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = TKTokenKeychainCertificate;
  v5 = [(TKTokenKeychainItem *)&v29 initWithObjectID:objectID];
  if (v5)
  {
    v6 = SecCertificateCopyData(certificateRef);
    data = v5->_data;
    v5->_data = v6;

    v8 = SecCertificateCopySubjectSummary(certificateRef);
    [(TKTokenKeychainItem *)v5 setLabel:v8];

    v32 = &unk_1F5A85150;
    v33[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [(TKTokenKeychainItem *)v5 setConstraints:v9];

    v10 = SecCertificateCopyAttributeDictionary();
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:*MEMORY[0x1E697ACC0]];
      certificateType = v5->_certificateType;
      v5->_certificateType = v12;

      v14 = [v11 objectForKey:*MEMORY[0x1E697ACB8]];
      certificateEncoding = v5->_certificateEncoding;
      v5->_certificateEncoding = v14;

      v16 = [v11 objectForKey:*MEMORY[0x1E697AE98]];
      subject = v5->_subject;
      v5->_subject = v16;

      v18 = [v11 objectForKey:*MEMORY[0x1E697AD28]];
      issuer = v5->_issuer;
      v5->_issuer = v18;

      v20 = [v11 objectForKey:*MEMORY[0x1E697AE78]];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v20;

      v22 = [v11 objectForKey:*MEMORY[0x1E697AEA0]];
      subjectKeyID = v5->_subjectKeyID;
      v5->_subjectKeyID = v22;

      v24 = [v11 objectForKey:*MEMORY[0x1E697AE60]];
      publicKeyHash = v5->_publicKeyHash;
      v5->_publicKeyHash = v24;
    }

    else
    {
      v26 = TK_LOG_token_2();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = certificateRef;
        _os_log_impl(&dword_1DF413000, v26, OS_LOG_TYPE_DEFAULT, "Failed to get attributes from certificate %{public}@", buf, 0xCu);
      }

      publicKeyHash = v5;
      v5 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)encodedObjectID
{
  v2 = [(TKTokenKeychainItem *)self objectID];
  v3 = [TKTokenID encodedCertificateID:v2];

  return v3;
}

- (TKTokenKeychainCertificate)initWithItemInfo:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TKTokenKeychainCertificate;
  v5 = [(TKTokenKeychainItem *)&v23 initWithItemInfo:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:*MEMORY[0x1E697B3C0]];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 objectForKey:*MEMORY[0x1E697ACC0]];
    certificateType = v5->_certificateType;
    v5->_certificateType = v8;

    v10 = [v4 objectForKey:*MEMORY[0x1E697ACB8]];
    certificateEncoding = v5->_certificateEncoding;
    v5->_certificateEncoding = v10;

    v12 = [v4 objectForKey:*MEMORY[0x1E697AE98]];
    subject = v5->_subject;
    v5->_subject = v12;

    v14 = [v4 objectForKey:*MEMORY[0x1E697AD28]];
    issuer = v5->_issuer;
    v5->_issuer = v14;

    v16 = [v4 objectForKey:*MEMORY[0x1E697AE78]];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v16;

    v18 = [v4 objectForKey:*MEMORY[0x1E697AEA0]];
    subjectKeyID = v5->_subjectKeyID;
    v5->_subjectKeyID = v18;

    v20 = [v4 objectForKey:*MEMORY[0x1E697AE60]];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v20;
  }

  return v5;
}

- (id)keychainAttributes
{
  v13.receiver = self;
  v13.super_class = TKTokenKeychainCertificate;
  v3 = [(TKTokenKeychainItem *)&v13 keychainAttributes];
  [v3 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  v4 = [(TKTokenKeychainCertificate *)self data];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E697B3C0]];

  v5 = [(TKTokenKeychainCertificate *)self subject];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697AE98]];

  v6 = [(TKTokenKeychainCertificate *)self issuer];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697AD28]];

  v7 = [(TKTokenKeychainCertificate *)self serialNumber];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697AE78]];

  v8 = [(TKTokenKeychainCertificate *)self subjectKeyID];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697AEA0]];

  v9 = [(TKTokenKeychainCertificate *)self publicKeyHash];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697AE60]];

  v10 = [(TKTokenKeychainCertificate *)self certificateType];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E697ACC0]];

  v11 = [(TKTokenKeychainCertificate *)self certificateEncoding];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ACB8]];

  return v3;
}

@end
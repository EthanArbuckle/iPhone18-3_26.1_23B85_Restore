@interface CKPublicKey
- (BOOL)hasExpired;
- (CKPublicKey)initWithPublicKey:(id)a3 version:(int64_t)a4 expiration:(id)a5 certificateData:(id)a6 protectionSource:(id)a7;
@end

@implementation CKPublicKey

- (CKPublicKey)initWithPublicKey:(id)a3 version:(int64_t)a4 expiration:(id)a5 certificateData:(id)a6 protectionSource:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34.receiver = self;
  v34.super_class = CKPublicKey;
  v18 = [(CKPublicKey *)&v34 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(v12, v16, v17);
    publicKey = v18->_publicKey;
    v18->_publicKey = v19;

    v18->_version = a4;
    v23 = objc_msgSend_copy(v13, v21, v22);
    expiration = v18->_expiration;
    v18->_expiration = v23;

    v27 = objc_msgSend_copy(v14, v25, v26);
    certData = v18->_certData;
    v18->_certData = v27;

    v31 = objc_msgSend_copy(v15, v29, v30);
    protectionSource = v18->_protectionSource;
    v18->_protectionSource = v31;
  }

  return v18;
}

- (BOOL)hasExpired
{
  v3 = objc_msgSend_expiration(self, a2, v2);
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], v4, v5);
  v8 = objc_msgSend_compare_(v3, v7, v6) == -1;

  return v8;
}

@end
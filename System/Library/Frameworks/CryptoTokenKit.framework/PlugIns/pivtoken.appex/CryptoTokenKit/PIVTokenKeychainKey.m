@interface PIVTokenKeychainKey
- (PIVTokenKeychainKey)initWithCertificate:(__SecCertificate *)a3 objectID:(id)a4 certificateID:(id)a5;
- (unsigned)algID;
- (unsigned)keyID;
@end

@implementation PIVTokenKeychainKey

- (PIVTokenKeychainKey)initWithCertificate:(__SecCertificate *)a3 objectID:(id)a4 certificateID:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PIVTokenKeychainKey;
  v10 = [(PIVTokenKeychainKey *)&v13 initWithCertificate:a3 objectID:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_certificateID, a5);
  }

  return v11;
}

- (unsigned)keyID
{
  v2 = [(PIVTokenKeychainKey *)self objectID];
  v3 = [v2 unsignedCharValue];

  return v3;
}

- (unsigned)algID
{
  v3 = [(PIVTokenKeychainKey *)self keyType];
  v4 = [v3 isEqual:kSecAttrKeyTypeECSECPrimeRandom];

  if (v4)
  {
    v5 = 17;
    v6 = 20;
    v7 = 256;
    v8 = 384;
  }

  else
  {
    v9 = [(PIVTokenKeychainKey *)self keyType];
    v10 = [v9 isEqual:kSecAttrKeyTypeRSA];

    if (!v10)
    {
      return 0;
    }

    v5 = 6;
    v6 = 7;
    v7 = 1024;
    v8 = 2048;
  }

  v11 = [(PIVTokenKeychainKey *)self keySizeInBits];
  if (v11 == v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  if (v11 == v7)
  {
    return v5;
  }

  else
  {
    return v12;
  }
}

@end
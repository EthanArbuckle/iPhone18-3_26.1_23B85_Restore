@interface PIVTokenKeychainKey
- (PIVTokenKeychainKey)initWithCertificate:(__SecCertificate *)certificate objectID:(id)d certificateID:(id)iD;
- (unsigned)algID;
- (unsigned)keyID;
@end

@implementation PIVTokenKeychainKey

- (PIVTokenKeychainKey)initWithCertificate:(__SecCertificate *)certificate objectID:(id)d certificateID:(id)iD
{
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = PIVTokenKeychainKey;
  v10 = [(PIVTokenKeychainKey *)&v13 initWithCertificate:certificate objectID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_certificateID, iD);
  }

  return v11;
}

- (unsigned)keyID
{
  objectID = [(PIVTokenKeychainKey *)self objectID];
  unsignedCharValue = [objectID unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)algID
{
  keyType = [(PIVTokenKeychainKey *)self keyType];
  v4 = [keyType isEqual:kSecAttrKeyTypeECSECPrimeRandom];

  if (v4)
  {
    v5 = 17;
    v6 = 20;
    v7 = 256;
    v8 = 384;
  }

  else
  {
    keyType2 = [(PIVTokenKeychainKey *)self keyType];
    v10 = [keyType2 isEqual:kSecAttrKeyTypeRSA];

    if (!v10)
    {
      return 0;
    }

    v5 = 6;
    v6 = 7;
    v7 = 1024;
    v8 = 2048;
  }

  keySizeInBits = [(PIVTokenKeychainKey *)self keySizeInBits];
  if (keySizeInBits == v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  if (keySizeInBits == v7)
  {
    return v5;
  }

  else
  {
    return v12;
  }
}

@end
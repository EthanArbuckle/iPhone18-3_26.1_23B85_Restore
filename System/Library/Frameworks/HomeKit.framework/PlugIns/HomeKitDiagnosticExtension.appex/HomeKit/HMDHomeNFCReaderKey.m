@interface HMDHomeNFCReaderKey
+ (id)createRandomKey;
+ (id)createWithDictionaryRepresentation:(id)a3;
+ (id)createWithExternalRepresentation:(id)a3;
+ (id)identifierForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDHomeNFCReaderKey)initWithCoder:(id)a3;
- (HMDHomeNFCReaderKey)initWithIdentifier:(id)a3 privateKey:(id)a4 publicKeyExternalRepresentation:(id)a5;
- (NSData)externalRepresentation;
- (NSData)publicKey;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHomeNFCReaderKey

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMDHomeNFCReaderKey *)self identifier];
  v5 = [v4 hmf_hexadecimalRepresentation];
  v6 = [v3 initWithName:@"Identifier" value:v5];
  v7 = [HMFAttributeDescription alloc];
  v8 = [(HMDHomeNFCReaderKey *)self privateKey];
  v9 = HMFBooleanToString();
  v10 = [v7 initWithName:@"Has Private Key" value:v9];
  v17[1] = v10;
  v11 = [HMFAttributeDescription alloc];
  v12 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v13 = [v12 hmf_hexadecimalRepresentation];
  v14 = [v11 initWithName:@"Public Key External Representation" value:v13];
  v17[2] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:3];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeNFCReaderKey *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];

  v6 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  [v4 encodeObject:v6 forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
}

- (HMDHomeNFCReaderKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
    if (v6)
    {
      self = [(HMDHomeNFCReaderKey *)self initWithIdentifier:v6 privateKey:0 publicKeyExternalRepresentation:v5];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v4 = [v3 hash];

  v5 = [(HMDHomeNFCReaderKey *)self privateKey];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDHomeNFCReaderKey *)self identifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 publicKeyExternalRepresentation];
    v9 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    if ([v8 isEqual:v9] && (objc_msgSend(v7, "privateKey"), v10 = objc_claimAutoreleasedReturnValue(), -[HMDHomeNFCReaderKey privateKey](self, "privateKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12))
    {
      v13 = [v7 identifier];
      v14 = [(HMDHomeNFCReaderKey *)self identifier];
      v15 = [v13 isEqualToData:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[0] = @"HMDHomeNFCReaderIdentifierCodingKey";
  v3 = [(HMDHomeNFCReaderKey *)self identifier];
  v7[1] = @"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey";
  v8[0] = v3;
  v4 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (NSData)externalRepresentation
{
  v3 = [(HMDHomeNFCReaderKey *)self privateKey];
  if (v3)
  {
    v4 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    v5 = [v4 mutableCopy];

    [v5 appendData:v3];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)publicKey
{
  v2 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v3 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v2];

  return v3;
}

- (HMDHomeNFCReaderKey)initWithIdentifier:(id)a3 privateKey:(id)a4 publicKeyExternalRepresentation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDHomeNFCReaderKey;
  v12 = [(HMDHomeNFCReaderKey *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v14 = [v10 copy];
    privateKey = v13->_privateKey;
    v13->_privateKey = v14;

    v16 = [v11 copy];
    publicKeyExternalRepresentation = v13->_publicKeyExternalRepresentation;
    v13->_publicKeyExternalRepresentation = v16;
  }

  return v13;
}

+ (id)identifierForKey:(id)a3
{
  memset(&v7, 0, sizeof(v7));
  v3 = a3;
  CC_SHA256_Init(&v7);
  v4 = [NSMutableData dataWithBytes:"key-identifier" length:14, *v7.count, *&v7.hash[2], *&v7.hash[6], *&v7.wbuf[2], *&v7.wbuf[6], *&v7.wbuf[10], *&v7.wbuf[14]];
  [v4 appendData:v3];

  CC_SHA256_Update(&v7, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v7);
  v5 = [NSData dataWithBytes:md length:8];

  return v5;
}

+ (id)createWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 hmf_dataForKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
  if (v4)
  {
    v5 = [v3 hmf_dataForKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
    if (v5)
    {
      v6 = [[HMDHomeNFCReaderKey alloc] initWithIdentifier:v4 privateKey:0 publicKeyExternalRepresentation:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createWithExternalRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 length] == 97)
  {
    v4 = [v3 subdataWithRange:{0, 65}];
    v5 = [v3 subdataWithRange:{65, 32}];
    v6 = [HMDHomeNFCReaderKey identifierForKey:v5];
    v7 = [[HMDHomeNFCReaderKey alloc] initWithIdentifier:v6 privateKey:v5 publicKeyExternalRepresentation:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = [v3 length];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nfc reader key external representation length %lu", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

+ (id)createRandomKey
{
  v21[0] = kSecAttrKeyType;
  v21[1] = kSecAttrKeySizeInBits;
  v22[0] = kSecAttrKeyTypeECSECPrimeRandom;
  v22[1] = &off_100033778;
  v2 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  error = 0;
  v3 = SecKeyCreateRandomKey(v2, &error);
  v4 = v3;
  v5 = error;
  if (v3)
  {
    v6 = SecKeyCopyExternalRepresentation(v3, &error);
    v7 = error;

    if (v6)
    {
      v8 = [HMDHomeNFCReaderKey createWithExternalRepresentation:v6];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy nfc reader key external representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }

    v5 = v7;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create nfc reader key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

@end
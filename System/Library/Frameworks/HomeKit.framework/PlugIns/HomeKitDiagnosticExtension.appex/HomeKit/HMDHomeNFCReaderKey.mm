@interface HMDHomeNFCReaderKey
+ (id)createRandomKey;
+ (id)createWithDictionaryRepresentation:(id)representation;
+ (id)createWithExternalRepresentation:(id)representation;
+ (id)identifierForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (HMDHomeNFCReaderKey)initWithCoder:(id)coder;
- (HMDHomeNFCReaderKey)initWithIdentifier:(id)identifier privateKey:(id)key publicKeyExternalRepresentation:(id)representation;
- (NSData)externalRepresentation;
- (NSData)publicKey;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDHomeNFCReaderKey

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  hmf_hexadecimalRepresentation = [identifier hmf_hexadecimalRepresentation];
  v6 = [v3 initWithName:@"Identifier" value:hmf_hexadecimalRepresentation];
  v7 = [HMFAttributeDescription alloc];
  privateKey = [(HMDHomeNFCReaderKey *)self privateKey];
  v9 = HMFBooleanToString();
  v10 = [v7 initWithName:@"Has Private Key" value:v9];
  v17[1] = v10;
  v11 = [HMFAttributeDescription alloc];
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  hmf_hexadecimalRepresentation2 = [publicKeyExternalRepresentation hmf_hexadecimalRepresentation];
  v14 = [v11 initWithName:@"Public Key External Representation" value:hmf_hexadecimalRepresentation2];
  v17[2] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:3];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];

  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  [coderCopy encodeObject:publicKeyExternalRepresentation forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
}

- (HMDHomeNFCReaderKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
    if (v6)
    {
      self = [(HMDHomeNFCReaderKey *)self initWithIdentifier:v6 privateKey:0 publicKeyExternalRepresentation:v5];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v4 = [publicKeyExternalRepresentation hash];

  privateKey = [(HMDHomeNFCReaderKey *)self privateKey];
  v6 = [privateKey hash] ^ v4;

  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  v8 = [identifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    publicKeyExternalRepresentation = [v6 publicKeyExternalRepresentation];
    publicKeyExternalRepresentation2 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    if ([publicKeyExternalRepresentation isEqual:publicKeyExternalRepresentation2] && (objc_msgSend(v7, "privateKey"), v10 = objc_claimAutoreleasedReturnValue(), -[HMDHomeNFCReaderKey privateKey](self, "privateKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12))
    {
      identifier = [v7 identifier];
      identifier2 = [(HMDHomeNFCReaderKey *)self identifier];
      v15 = [identifier isEqualToData:identifier2];
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
  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  v7[1] = @"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey";
  v8[0] = identifier;
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v8[1] = publicKeyExternalRepresentation;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (NSData)externalRepresentation
{
  privateKey = [(HMDHomeNFCReaderKey *)self privateKey];
  if (privateKey)
  {
    publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    v5 = [publicKeyExternalRepresentation mutableCopy];

    [v5 appendData:privateKey];
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
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v3 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:publicKeyExternalRepresentation];

  return v3;
}

- (HMDHomeNFCReaderKey)initWithIdentifier:(id)identifier privateKey:(id)key publicKeyExternalRepresentation:(id)representation
{
  identifierCopy = identifier;
  keyCopy = key;
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = HMDHomeNFCReaderKey;
  v12 = [(HMDHomeNFCReaderKey *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v14 = [keyCopy copy];
    privateKey = v13->_privateKey;
    v13->_privateKey = v14;

    v16 = [representationCopy copy];
    publicKeyExternalRepresentation = v13->_publicKeyExternalRepresentation;
    v13->_publicKeyExternalRepresentation = v16;
  }

  return v13;
}

+ (id)identifierForKey:(id)key
{
  memset(&v7, 0, sizeof(v7));
  keyCopy = key;
  CC_SHA256_Init(&v7);
  v4 = [NSMutableData dataWithBytes:"key-identifier" length:14, *v7.count, *&v7.hash[2], *&v7.hash[6], *&v7.wbuf[2], *&v7.wbuf[6], *&v7.wbuf[10], *&v7.wbuf[14]];
  [v4 appendData:keyCopy];

  CC_SHA256_Update(&v7, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v7);
  v5 = [NSData dataWithBytes:md length:8];

  return v5;
}

+ (id)createWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy hmf_dataForKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
  if (v4)
  {
    v5 = [representationCopy hmf_dataForKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
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

+ (id)createWithExternalRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy length] == 97)
  {
    v4 = [representationCopy subdataWithRange:{0, 65}];
    v5 = [representationCopy subdataWithRange:{65, 32}];
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
      v15 = [representationCopy length];
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
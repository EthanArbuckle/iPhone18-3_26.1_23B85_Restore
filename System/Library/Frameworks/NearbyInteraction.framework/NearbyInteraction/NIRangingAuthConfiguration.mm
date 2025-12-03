@interface NIRangingAuthConfiguration
- (BOOL)isEqual:(id)equal;
- (NIRangingAuthConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (id)initAsResponder:(BOOL)responder macAddress:(id)address key:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIRangingAuthConfiguration

- (id)initAsResponder:(BOOL)responder macAddress:(id)address key:(id)key
{
  v22[2] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = NIRangingAuthConfiguration;
  initInternal = [(NIConfiguration *)&v20 initInternal];
  v12 = initInternal;
  if (initInternal)
  {
    *(initInternal + 32) = responder;
    objc_storeStrong(initInternal + 6, address);
    objc_storeStrong(v12 + 7, key);
    v21[0] = &unk_1F38D7BF0;
    v13 = v12[6];
    v21[1] = &unk_1F38D7C08;
    v22[0] = v13;
    v22[1] = v12[7];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v15 = MEMORY[0x1BFAFF9B0](v14, 8, 0);
    v16 = [[NIDiscoveryToken alloc] initWithBytes:v15];
    v17 = v12[5];
    v12[5] = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = NIRangingAuthConfiguration;
  v4 = [(NIConfiguration *)&v12 copyWithZone:zone];
  v4[32] = self->_isResponder;
  v5 = [(NIDiscoveryToken *)self->_peerToken copy];
  v6 = *(v4 + 5);
  *(v4 + 5) = v5;

  v7 = [(NSData *)self->_macAddress copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  v9 = [(NSData *)self->_secureKey copy];
  v10 = *(v4 + 7);
  *(v4 + 7) = v9;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NIRangingAuthConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isResponder forKey:@"isResponder"];
  [coderCopy encodeObject:self->_macAddress forKey:@"macAddress"];
  [coderCopy encodeObject:self->_secureKey forKey:@"secureKey"];
  [coderCopy encodeObject:self->_peerToken forKey:@"peerToken"];
}

- (NIRangingAuthConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NIRangingAuthConfiguration;
  v5 = [(NIConfiguration *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isResponder = [coderCopy decodeBoolForKey:@"isResponder"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerToken"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = 0;
    }

    else
    {
      objc_storeStrong(&v5->_macAddress, v6);
      objc_storeStrong(&v5->_secureKey, v7);
      objc_storeStrong(&v5->_peerToken, v8);
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v16 = 1;
    }

    else
    {
      isResponder = self->_isResponder;
      isResponder = [(NIRangingAuthConfiguration *)v5 isResponder];
      macAddress = [(NIRangingAuthConfiguration *)v6 macAddress];
      v10 = [macAddress isEqualToData:self->_macAddress];

      secureKey = [(NIRangingAuthConfiguration *)v6 secureKey];
      v12 = [secureKey isEqualToData:self->_secureKey];

      peerToken = v6->_peerToken;
      v14 = (peerToken | self->_peerToken) == 0;
      v15 = [peerToken isEqual:?];
      if (((isResponder == isResponder) & v10) == 1)
      {
        v16 = v12 & (v14 | v15);
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  isResponder = self->_isResponder;
  v4 = [(NSData *)self->_macAddress hash]^ isResponder;
  v5 = [(NSData *)self->_secureKey hash];
  return v4 ^ v5 ^ [(NIDiscoveryToken *)self->_peerToken hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIRangingAuthConfiguration *)self descriptionInternal];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v2 = MEMORY[0x1E696AEC0];
  if (self->_isResponder)
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  descriptionInternal = [(NIDiscoveryToken *)self->_peerToken descriptionInternal];
  v5 = [v2 stringWithFormat:@", isResponder: %@, peerToken: %@", v3, descriptionInternal];

  return v5;
}

@end
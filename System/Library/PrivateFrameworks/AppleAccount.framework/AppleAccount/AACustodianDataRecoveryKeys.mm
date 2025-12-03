@interface AACustodianDataRecoveryKeys
- (AACustodianDataRecoveryKeys)initWithCoder:(id)coder;
- (AACustodianDataRecoveryKeys)initWithWrappedRKC:(id)c wrappingKey:(id)key custodianUUID:(id)d recordBuildVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianDataRecoveryKeys

- (AACustodianDataRecoveryKeys)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACustodianDataRecoveryKeys *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wrappedRKC"];
    wrappedRKC = v5->_wrappedRKC;
    v5->_wrappedRKC = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wrappingKey"];
    wrappingKey = v5->_wrappingKey;
    v5->_wrappingKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianUUID"];
    custodianUUID = v5->_custodianUUID;
    v5->_custodianUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordBuildVersion"];
    recordBuildVersion = v5->_recordBuildVersion;
    v5->_recordBuildVersion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  wrappedRKC = self->_wrappedRKC;
  coderCopy = coder;
  [coderCopy encodeObject:wrappedRKC forKey:@"_wrappedRKC"];
  [coderCopy encodeObject:self->_wrappingKey forKey:@"_wrappingKey"];
  [coderCopy encodeObject:self->_custodianUUID forKey:@"_custodianUUID"];
  [coderCopy encodeObject:self->_recordBuildVersion forKey:@"_recordBuildVersion"];
}

- (AACustodianDataRecoveryKeys)initWithWrappedRKC:(id)c wrappingKey:(id)key custodianUUID:(id)d recordBuildVersion:(id)version
{
  cCopy = c;
  keyCopy = key;
  dCopy = d;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = AACustodianDataRecoveryKeys;
  v15 = [(AACustodianDataRecoveryKeys *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_wrappedRKC, c);
    objc_storeStrong(&v16->_wrappingKey, key);
    objc_storeStrong(&v16->_custodianUUID, d);
    objc_storeStrong(&v16->_recordBuildVersion, version);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AACustodianDataRecoveryKeys allocWithZone:?]];
  v5 = [(NSData *)self->_wrappedRKC copy];
  wrappedRKC = v4->_wrappedRKC;
  v4->_wrappedRKC = v5;

  v7 = [(NSData *)self->_wrappingKey copy];
  wrappingKey = v4->_wrappingKey;
  v4->_wrappingKey = v7;

  v9 = [(NSUUID *)self->_custodianUUID copy];
  custodianUUID = v4->_custodianUUID;
  v4->_custodianUUID = v9;

  v11 = [(NSString *)self->_recordBuildVersion copy];
  recordBuildVersion = v4->_recordBuildVersion;
  v4->_recordBuildVersion = v11;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_custodianUUID UUIDString];
  v6 = [v3 stringWithFormat:@"<%@: %p> for UUID: %@ recordBuildVersion: %@", v4, self, uUIDString, self->_recordBuildVersion];

  return v6;
}

@end
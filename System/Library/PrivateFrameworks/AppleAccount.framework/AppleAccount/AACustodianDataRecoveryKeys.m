@interface AACustodianDataRecoveryKeys
- (AACustodianDataRecoveryKeys)initWithCoder:(id)a3;
- (AACustodianDataRecoveryKeys)initWithWrappedRKC:(id)a3 wrappingKey:(id)a4 custodianUUID:(id)a5 recordBuildVersion:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianDataRecoveryKeys

- (AACustodianDataRecoveryKeys)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AACustodianDataRecoveryKeys *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wrappedRKC"];
    wrappedRKC = v5->_wrappedRKC;
    v5->_wrappedRKC = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wrappingKey"];
    wrappingKey = v5->_wrappingKey;
    v5->_wrappingKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianUUID"];
    custodianUUID = v5->_custodianUUID;
    v5->_custodianUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordBuildVersion"];
    recordBuildVersion = v5->_recordBuildVersion;
    v5->_recordBuildVersion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  wrappedRKC = self->_wrappedRKC;
  v5 = a3;
  [v5 encodeObject:wrappedRKC forKey:@"_wrappedRKC"];
  [v5 encodeObject:self->_wrappingKey forKey:@"_wrappingKey"];
  [v5 encodeObject:self->_custodianUUID forKey:@"_custodianUUID"];
  [v5 encodeObject:self->_recordBuildVersion forKey:@"_recordBuildVersion"];
}

- (AACustodianDataRecoveryKeys)initWithWrappedRKC:(id)a3 wrappingKey:(id)a4 custodianUUID:(id)a5 recordBuildVersion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AACustodianDataRecoveryKeys;
  v15 = [(AACustodianDataRecoveryKeys *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_wrappedRKC, a3);
    objc_storeStrong(&v16->_wrappingKey, a4);
    objc_storeStrong(&v16->_custodianUUID, a5);
    objc_storeStrong(&v16->_recordBuildVersion, a6);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v5 = [(NSUUID *)self->_custodianUUID UUIDString];
  v6 = [v3 stringWithFormat:@"<%@: %p> for UUID: %@ recordBuildVersion: %@", v4, self, v5, self->_recordBuildVersion];

  return v6;
}

@end
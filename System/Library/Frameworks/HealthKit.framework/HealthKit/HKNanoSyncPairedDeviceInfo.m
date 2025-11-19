@interface HKNanoSyncPairedDeviceInfo
- (BOOL)isEqual:(id)a3;
- (HKNanoSyncPairedDeviceInfo)initWithCoder:(id)a3;
- (HKNanoSyncPairedDeviceInfo)initWithSourceBundleIdentifier:(id)a3 systemBuildVersion:(id)a4 productType:(id)a5 active:(BOOL)a6 restoreComplete:(BOOL)a7 protocolVersion:(int)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKNanoSyncPairedDeviceInfo

- (HKNanoSyncPairedDeviceInfo)initWithSourceBundleIdentifier:(id)a3 systemBuildVersion:(id)a4 productType:(id)a5 active:(BOOL)a6 restoreComplete:(BOOL)a7 protocolVersion:(int)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v25.receiver = self;
  v25.super_class = HKNanoSyncPairedDeviceInfo;
  v17 = [(HKNanoSyncPairedDeviceInfo *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    sourceBundleIdentifier = v17->_sourceBundleIdentifier;
    v17->_sourceBundleIdentifier = v18;

    v20 = [v15 copy];
    systemBuildVersion = v17->_systemBuildVersion;
    v17->_systemBuildVersion = v20;

    v22 = [v16 copy];
    productType = v17->_productType;
    v17->_productType = v22;

    if (v10)
    {
      v17->_state |= 1uLL;
    }

    if (v9)
    {
      v17->_state |= 2uLL;
    }

    v17->_protocolVersion = a8;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    v7 = v5[1];
    v12 = (sourceBundleIdentifier == v7 || v7 && [(NSString *)sourceBundleIdentifier isEqualToString:?]) && ((systemBuildVersion = self->_systemBuildVersion, v9 = v5[2], systemBuildVersion == v9) || v9 && [(NSString *)systemBuildVersion isEqualToString:?]) && ((productType = self->_productType, v11 = v5[3], productType == v11) || v11 && [(NSString *)productType isEqualToString:?]) && self->_state == v5[4] && self->_protocolVersion == *(v5 + 10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceBundleIdentifier hash];
  v4 = v3 ^ (2 * [(NSString *)self->_systemBuildVersion hash]);
  return v4 ^ (4 * [(NSString *)self->_productType hash]) ^ (8 * self->_state) ^ (16 * self->_protocolVersion);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v9 = *&self->_sourceBundleIdentifier;
  productType = self->_productType;
  v6 = [(HKNanoSyncPairedDeviceInfo *)self isRestoreComplete];
  v7 = "NO";
  if (v6)
  {
    v7 = "YES";
  }

  return [v3 stringWithFormat:@"<%@:%p source=%@ build=%@ product=%@ restored=%s protocol=%d>", v4, self, v9, productType, v7, self->_protocolVersion, 0];
}

- (HKNanoSyncPairedDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKNanoSyncPairedDeviceInfo;
  v5 = [(HKNanoSyncPairedDeviceInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    systemBuildVersion = v5->_systemBuildVersion;
    v5->_systemBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v10;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v5->_protocolVersion = [v4 decodeIntForKey:@"protocol"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v5 = a3;
  [v5 encodeObject:sourceBundleIdentifier forKey:@"source"];
  [v5 encodeObject:self->_systemBuildVersion forKey:@"build"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeInt:self->_protocolVersion forKey:@"protocol"];
}

@end
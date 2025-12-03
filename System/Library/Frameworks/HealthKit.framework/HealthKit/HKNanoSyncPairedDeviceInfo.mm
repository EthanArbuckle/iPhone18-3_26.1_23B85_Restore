@interface HKNanoSyncPairedDeviceInfo
- (BOOL)isEqual:(id)equal;
- (HKNanoSyncPairedDeviceInfo)initWithCoder:(id)coder;
- (HKNanoSyncPairedDeviceInfo)initWithSourceBundleIdentifier:(id)identifier systemBuildVersion:(id)version productType:(id)type active:(BOOL)active restoreComplete:(BOOL)complete protocolVersion:(int)protocolVersion;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKNanoSyncPairedDeviceInfo

- (HKNanoSyncPairedDeviceInfo)initWithSourceBundleIdentifier:(id)identifier systemBuildVersion:(id)version productType:(id)type active:(BOOL)active restoreComplete:(BOOL)complete protocolVersion:(int)protocolVersion
{
  completeCopy = complete;
  activeCopy = active;
  identifierCopy = identifier;
  versionCopy = version;
  typeCopy = type;
  v25.receiver = self;
  v25.super_class = HKNanoSyncPairedDeviceInfo;
  v17 = [(HKNanoSyncPairedDeviceInfo *)&v25 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    sourceBundleIdentifier = v17->_sourceBundleIdentifier;
    v17->_sourceBundleIdentifier = v18;

    v20 = [versionCopy copy];
    systemBuildVersion = v17->_systemBuildVersion;
    v17->_systemBuildVersion = v20;

    v22 = [typeCopy copy];
    productType = v17->_productType;
    v17->_productType = v22;

    if (activeCopy)
    {
      v17->_state |= 1uLL;
    }

    if (completeCopy)
    {
      v17->_state |= 2uLL;
    }

    v17->_protocolVersion = protocolVersion;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  isRestoreComplete = [(HKNanoSyncPairedDeviceInfo *)self isRestoreComplete];
  v7 = "NO";
  if (isRestoreComplete)
  {
    v7 = "YES";
  }

  return [v3 stringWithFormat:@"<%@:%p source=%@ build=%@ product=%@ restored=%s protocol=%d>", v4, self, v9, productType, v7, self->_protocolVersion, 0];
}

- (HKNanoSyncPairedDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKNanoSyncPairedDeviceInfo;
  v5 = [(HKNanoSyncPairedDeviceInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    systemBuildVersion = v5->_systemBuildVersion;
    v5->_systemBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v10;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_protocolVersion = [coderCopy decodeIntForKey:@"protocol"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sourceBundleIdentifier forKey:@"source"];
  [coderCopy encodeObject:self->_systemBuildVersion forKey:@"build"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInt:self->_protocolVersion forKey:@"protocol"];
}

@end
@interface HKSourceRevision
- (BOOL)isEqual:(id)equal;
- (HKSourceRevision)init;
- (HKSourceRevision)initWithCoder:(id)coder;
- (HKSourceRevision)initWithSource:(HKSource *)source version:(NSString *)version;
- (HKSourceRevision)initWithSource:(HKSource *)source version:(NSString *)version productType:(NSString *)productType operatingSystemVersion:(NSOperatingSystemVersion *)operatingSystemVersion;
- (id)_init;
- (id)_initWithSource:(id)source;
- (id)asJSONObject;
- (id)description;
- (unint64_t)hash;
- (void)_setSource:(id)source;
- (void)_setVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSourceRevision

- (id)asJSONObject
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  source = [(HKSourceRevision *)self source];
  asJSONObject = [source asJSONObject];
  [v3 setObject:asJSONObject forKeyedSubscript:@"source"];

  version = [(HKSourceRevision *)self version];
  [v3 setObject:version forKeyedSubscript:@"version"];

  productType = [(HKSourceRevision *)self productType];
  [v3 setObject:productType forKeyedSubscript:@"productType"];

  [(HKSourceRevision *)self operatingSystemVersion];
  v8 = HKNSOperatingSystemVersionString(v10);
  [v3 setObject:v8 forKeyedSubscript:@"operatingSystemVersion"];

  return v3;
}

- (HKSourceRevision)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithSource:(id)source
{
  sourceCopy = source;
  v5 = HKProgramSDKAtLeast();
  if (!sourceCopy && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A valid source is required."];
  }

  v11.receiver = self;
  v11.super_class = HKSourceRevision;
  v6 = [(HKSourceRevision *)&v11 init];
  if (v6)
  {
    v7 = [sourceCopy copy];
    source = v6->_source;
    v6->_source = v7;

    v9 = v6;
  }

  return v6;
}

- (HKSourceRevision)initWithSource:(HKSource *)source version:(NSString *)version productType:(NSString *)productType operatingSystemVersion:(NSOperatingSystemVersion *)operatingSystemVersion
{
  v10 = version;
  v11 = productType;
  v12 = [(HKSourceRevision *)self _initWithSource:source];
  if (v12)
  {
    v13 = [(NSString *)v10 copy];
    v14 = v12->_version;
    v12->_version = v13;

    v15 = [(NSString *)v11 copy];
    v16 = v12->_productType;
    v12->_productType = v15;

    v17 = *&operatingSystemVersion->majorVersion;
    v12->_operatingSystemVersion.patchVersion = operatingSystemVersion->patchVersion;
    *&v12->_operatingSystemVersion.majorVersion = v17;
  }

  return v12;
}

- (HKSourceRevision)initWithSource:(HKSource *)source version:(NSString *)version
{
  v6 = 0;
  v5 = *&HKSourceRevisionAnyOperatingSystem.majorVersion;
  return [(HKSourceRevision *)self initWithSource:source version:version productType:@"HKSourceRevisionAnyProductType" operatingSystemVersion:&v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((source = self->_source, v6 = equalCopy[1], source == v6) || v6 && [(HKSource *)source isEqual:?]) && ((version = self->_version, v8 = equalCopy[2], version == v8) || v8 && [(NSString *)version isEqualToString:?]) && ((productType = self->_productType, v10 = equalCopy[3], productType == v10) || v10 && [(NSString *)productType isEqualToString:?]) && self->_operatingSystemVersion.majorVersion == equalCopy[4] && self->_operatingSystemVersion.minorVersion == equalCopy[5] && self->_operatingSystemVersion.patchVersion == equalCopy[6];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HKSource *)self->_source hash];
  v4 = [(NSString *)self->_version hash]^ v3;
  return v4 ^ [(NSString *)self->_productType hash]^ (2654435761 * self->_operatingSystemVersion.majorVersion) ^ (2654435761 * self->_operatingSystemVersion.minorVersion) ^ (2654435761 * self->_operatingSystemVersion.patchVersion);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(HKSource *)self->_source name];
  bundleIdentifier = [(HKSource *)self->_source bundleIdentifier];
  version = self->_version;
  productType = self->_productType;
  operatingSystemVersion = self->_operatingSystemVersion;
  v10 = HKNSOperatingSystemVersionString(&operatingSystemVersion);
  v11 = [v3 stringWithFormat:@"<%@ name:%@, bundle:%@, version:%@, productType:%@, operatingSystemVersion:%@>", v5, name, bundleIdentifier, version, productType, v10];

  return v11;
}

- (void)_setSource:(id)source
{
  v4 = [source copy];
  source = self->_source;
  self->_source = v4;

  MEMORY[0x1EEE66BB8](v4, source);
}

- (void)_setVersion:(id)version
{
  v4 = [version copy];
  version = self->_version;
  self->_version = v4;

  MEMORY[0x1EEE66BB8](v4, version);
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKSourceRevision;
  return [(HKSourceRevision *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeObject:source forKey:@"source"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.majorVersion forKey:@"operatingSystemMajorVersion"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.minorVersion forKey:@"operatingSystemMinorVersion"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.patchVersion forKey:@"operatingSystemPatchVersion"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
}

- (HKSourceRevision)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    v10[0] = [coderCopy decodeIntegerForKey:@"operatingSystemMajorVersion"];
    v10[1] = [coderCopy decodeIntegerForKey:@"operatingSystemMinorVersion"];
    v10[2] = [coderCopy decodeIntegerForKey:@"operatingSystemPatchVersion"];
    self = [(HKSourceRevision *)self initWithSource:v5 version:v6 productType:v7 operatingSystemVersion:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
@interface HKSourceRevision
- (BOOL)isEqual:(id)a3;
- (HKSourceRevision)init;
- (HKSourceRevision)initWithCoder:(id)a3;
- (HKSourceRevision)initWithSource:(HKSource *)source version:(NSString *)version;
- (HKSourceRevision)initWithSource:(HKSource *)source version:(NSString *)version productType:(NSString *)productType operatingSystemVersion:(NSOperatingSystemVersion *)operatingSystemVersion;
- (id)_init;
- (id)_initWithSource:(id)a3;
- (id)asJSONObject;
- (id)description;
- (unint64_t)hash;
- (void)_setSource:(id)a3;
- (void)_setVersion:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSourceRevision

- (id)asJSONObject
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v4 = [(HKSourceRevision *)self source];
  v5 = [v4 asJSONObject];
  [v3 setObject:v5 forKeyedSubscript:@"source"];

  v6 = [(HKSourceRevision *)self version];
  [v3 setObject:v6 forKeyedSubscript:@"version"];

  v7 = [(HKSourceRevision *)self productType];
  [v3 setObject:v7 forKeyedSubscript:@"productType"];

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

- (id)_initWithSource:(id)a3
{
  v4 = a3;
  v5 = HKProgramSDKAtLeast();
  if (!v4 && v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A valid source is required."];
  }

  v11.receiver = self;
  v11.super_class = HKSourceRevision;
  v6 = [(HKSourceRevision *)&v11 init];
  if (v6)
  {
    v7 = [v4 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((source = self->_source, v6 = v4[1], source == v6) || v6 && [(HKSource *)source isEqual:?]) && ((version = self->_version, v8 = v4[2], version == v8) || v8 && [(NSString *)version isEqualToString:?]) && ((productType = self->_productType, v10 = v4[3], productType == v10) || v10 && [(NSString *)productType isEqualToString:?]) && self->_operatingSystemVersion.majorVersion == v4[4] && self->_operatingSystemVersion.minorVersion == v4[5] && self->_operatingSystemVersion.patchVersion == v4[6];

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
  v6 = [(HKSource *)self->_source name];
  v7 = [(HKSource *)self->_source bundleIdentifier];
  version = self->_version;
  productType = self->_productType;
  operatingSystemVersion = self->_operatingSystemVersion;
  v10 = HKNSOperatingSystemVersionString(&operatingSystemVersion);
  v11 = [v3 stringWithFormat:@"<%@ name:%@, bundle:%@, version:%@, productType:%@, operatingSystemVersion:%@>", v5, v6, v7, version, productType, v10];

  return v11;
}

- (void)_setSource:(id)a3
{
  v4 = [a3 copy];
  source = self->_source;
  self->_source = v4;

  MEMORY[0x1EEE66BB8](v4, source);
}

- (void)_setVersion:(id)a3
{
  v4 = [a3 copy];
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

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeObject:source forKey:@"source"];
  [v5 encodeObject:self->_version forKey:@"version"];
  [v5 encodeInteger:self->_operatingSystemVersion.majorVersion forKey:@"operatingSystemMajorVersion"];
  [v5 encodeInteger:self->_operatingSystemVersion.minorVersion forKey:@"operatingSystemMinorVersion"];
  [v5 encodeInteger:self->_operatingSystemVersion.patchVersion forKey:@"operatingSystemPatchVersion"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
}

- (HKSourceRevision)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    v10[0] = [v4 decodeIntegerForKey:@"operatingSystemMajorVersion"];
    v10[1] = [v4 decodeIntegerForKey:@"operatingSystemMinorVersion"];
    v10[2] = [v4 decodeIntegerForKey:@"operatingSystemPatchVersion"];
    self = [(HKSourceRevision *)self initWithSource:v5 version:v6 productType:v7 operatingSystemVersion:v10];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
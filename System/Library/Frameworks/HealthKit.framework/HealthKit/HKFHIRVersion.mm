@interface HKFHIRVersion
+ (HKFHIRVersion)primaryDSTU2Version;
+ (HKFHIRVersion)primaryR4Version;
+ (HKFHIRVersion)versionFromVersionString:(NSString *)versionString error:(NSError *)errorOut;
+ (id)versionFromVersionString:(id)string;
- (BOOL)isEqual:(id)equal;
- (HKFHIRRelease)FHIRRelease;
- (HKFHIRVersion)init;
- (HKFHIRVersion)initWithCoder:(id)coder;
- (HKFHIRVersion)initWithInvalidVersionString:(id)string;
- (HKFHIRVersion)initWithSemanticVersion:(id *)version;
- (NSString)stringRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRVersion

- (HKFHIRVersion)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRVersion)initWithSemanticVersion:(id *)version
{
  v5.receiver = self;
  v5.super_class = HKFHIRVersion;
  result = [(HKFHIRVersion *)&v5 init];
  if (result)
  {
    result->_majorVersion = version->var0;
    result->_minorVersion = version->var1;
    result->_patchVersion = version->var2;
  }

  return result;
}

- (HKFHIRVersion)initWithInvalidVersionString:(id)string
{
  stringCopy = string;
  v9 = xmmword_191DCDF98;
  v10 = 0;
  v5 = [(HKFHIRVersion *)self initWithSemanticVersion:&v9];
  if (v5)
  {
    v6 = [stringCopy copy];
    invalidVersionString = v5->_invalidVersionString;
    v5->_invalidVersionString = v6;
  }

  return v5;
}

+ (id)versionFromVersionString:(id)string
{
  stringCopy = string;
  v10 = 0;
  v4 = [HKFHIRVersion versionFromVersionString:stringCopy error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      [(HKFHIRVersion *)v5 versionFromVersionString:v7];
    }

    v6 = [[HKFHIRVersion alloc] initWithInvalidVersionString:stringCopy];
  }

  v8 = v6;

  return v8;
}

+ (HKFHIRVersion)versionFromVersionString:(NSString *)versionString error:(NSError *)errorOut
{
  v17 = 0uLL;
  v18 = 0;
  v16 = 0;
  v5 = HKSemanticVersionByParsingString(versionString, &v17, &v16);
  v6 = v16;
  if (v5)
  {
    v7 = [HKFHIRVersion alloc];
    v14 = v17;
    v15 = v18;
    v8 = [(HKFHIRVersion *)v7 initWithSemanticVersion:&v14];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse: %@", v6];
    v10 = [MEMORY[0x1E696ABC0] hk_error:3 description:v9 underlyingError:v6];
    v11 = v10;
    if (v10)
    {
      if (errorOut)
      {
        v12 = v10;
        *errorOut = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (HKFHIRRelease)FHIRRelease
{
  majorVersion = self->_majorVersion;
  if (majorVersion == 4)
  {
    if (!self->_minorVersion)
    {
      v3 = &HKFHIRReleaseR4;
      return *v3;
    }

    goto LABEL_6;
  }

  if (majorVersion != 1 || self->_minorVersion)
  {
LABEL_6:
    v3 = &HKFHIRReleaseUnknown;
    return *v3;
  }

  v3 = &HKFHIRReleaseDSTU2;
  return *v3;
}

+ (HKFHIRVersion)primaryDSTU2Version
{
  v4 = xmmword_191DCDFB0;
  v5 = 2;
  v2 = [[self alloc] initWithSemanticVersion:&v4];

  return v2;
}

+ (HKFHIRVersion)primaryR4Version
{
  v4 = xmmword_191DCDFC8;
  v5 = 1;
  v2 = [[self alloc] initWithSemanticVersion:&v4];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy requiresSecureCoding])
  {
    [coderCopy encodeInteger:self->_majorVersion forKey:@"Major"];
    [coderCopy encodeInteger:self->_minorVersion forKey:@"Minor"];
    [coderCopy encodeInteger:self->_patchVersion forKey:@"Patch"];
    [coderCopy encodeObject:self->_invalidVersionString forKey:@"InvalidVersionString"];
  }
}

- (HKFHIRVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy requiresSecureCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InvalidVersionString"];
    if (v5)
    {
      v6 = [(HKFHIRVersion *)self initWithInvalidVersionString:v5];
    }

    else
    {
      v9[0] = [coderCopy decodeIntegerForKey:@"Major"];
      v9[1] = [coderCopy decodeIntegerForKey:@"Minor"];
      v9[2] = [coderCopy decodeIntegerForKey:@"Patch"];
      v6 = [(HKFHIRVersion *)self initWithSemanticVersion:v9];
    }

    self = v6;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_12;
  }

  v6 = equalCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  majorVersion = self->_majorVersion;
  if (majorVersion != [(HKFHIRVersion *)v6 majorVersion])
  {
    goto LABEL_9;
  }

  minorVersion = self->_minorVersion;
  if (minorVersion != [(HKFHIRVersion *)v6 minorVersion])
  {
    goto LABEL_9;
  }

  patchVersion = self->_patchVersion;
  if (patchVersion != [(HKFHIRVersion *)v6 patchVersion])
  {
    goto LABEL_9;
  }

  invalidVersionString = self->_invalidVersionString;
  v11 = v6->_invalidVersionString;
  if (invalidVersionString == v11)
  {
    v12 = 1;
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = [(NSString *)invalidVersionString isEqualToString:?];
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_10:

LABEL_12:
  return v12;
}

- (NSString)stringRepresentation
{
  invalidVersionString = self->_invalidVersionString;
  if (invalidVersionString)
  {
    v3 = invalidVersionString;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", self->_majorVersion, self->_minorVersion, self->_patchVersion];
  }

  return v3;
}

+ (void)versionFromVersionString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to parse: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
@interface HKObject
+ (id)_newDataObjectWithMetadata:(id)metadata device:(id)device config:(id)config;
- (BOOL)_validateForSavingWithClientEntitlements:(id)entitlements applicationSDKVersionToken:(unint64_t)token isAppleWatch:(BOOL)watch error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKObject)init;
- (HKObject)initWithCoder:(id)coder;
- (NSString)_timeZoneName;
- (NSString)description;
- (id)_copyByArchiving;
- (id)_init;
- (id)_validateConfiguration;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)asJSONObject;
- (int64_t)hk_integerValue;
- (void)_setMetadata:(id)metadata;
- (void)_validateForCreation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObject

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKObject;
  result = [(HKObject *)&v3 init];
  if (result)
  {
    *(result + 7) = 0x10000000000000;
  }

  return result;
}

- (void)_validateForCreation
{
  v8 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  localizedDescription = [a2 localizedDescription];
  v6 = 138412290;
  v7 = localizedDescription;
  _os_log_fault_impl(&dword_19197B000, selfCopy, OS_LOG_TYPE_FAULT, "_validateForCreation encountered an error: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_validateConfiguration
{
  v3 = HKApplicationSDKVersionToken();

  return [(HKObject *)self _validateWithConfiguration:0, v3];
}

- (NSString)description
{
  _valueDescription = [(HKObject *)self _valueDescription];
  v4 = _valueDescription;
  v5 = &stru_1F05FF230;
  if (_valueDescription)
  {
    v5 = _valueDescription;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AD60];
  uUID = [(HKObject *)self UUID];
  v9 = [v7 stringWithFormat:@"%@ %@ ", uUID, v6];

  sourceRevision = [(HKObject *)self sourceRevision];
  if (sourceRevision)
  {
    uUIDString = [(NSUUID *)self->_UUID UUIDString];
    version = [sourceRevision version];
    productType = [sourceRevision productType];
    [sourceRevision operatingSystemVersion];
    v14 = HKNSOperatingSystemVersionString(v24);
    [v9 appendFormat:@"%@, (%@), %@ (%@)", uUIDString, version, productType, v14];
  }

  device = [(HKObject *)self device];
  v16 = device;
  if (device)
  {
    name = [device name];
    [v9 appendFormat:@" %@ ", name];
  }

  metadata = [(HKObject *)self metadata];
  v19 = metadata;
  if (metadata && [metadata count])
  {
    [v9 appendFormat:@"metadata: %@", v19];
  }

  contributor = [(HKObject *)self contributor];
  v21 = contributor;
  if (contributor)
  {
    appleID = [contributor appleID];
    [v9 appendFormat:@", contributor %@", appleID];
  }

  return v9;
}

- (HKObject)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_copyByArchiving
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

+ (id)_newDataObjectWithMetadata:(id)metadata device:(id)device config:(id)config
{
  deviceCopy = device;
  configCopy = config;
  metadataCopy = metadata;
  if (([self _isConcreteObjectClass] & 1) == 0)
  {
    [HKObject _newDataObjectWithMetadata:a2 device:self config:?];
  }

  _init = [[self alloc] _init];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v14 = _init[1];
  _init[1] = uUID;

  v15 = _init[3];
  _init[3] = deviceCopy;
  v16 = deviceCopy;

  v17 = [metadataCopy copy];
  v18 = _init[4];
  _init[4] = v17;

  if (configCopy)
  {
    configCopy[2](configCopy, _init);
  }

  [_init _validateForCreation];

  return _init;
}

- (BOOL)_validateForSavingWithClientEntitlements:(id)entitlements applicationSDKVersionToken:(unint64_t)token isAppleWatch:(BOOL)watch error:(id *)error
{
  v7 = -[HKObject _validateConfigurationAllowingPrivateMetadata:applicationSDKVersionToken:](self, "_validateConfigurationAllowingPrivateMetadata:applicationSDKVersionToken:", [entitlements hasPrivateMetadataAccess], token);
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError(v7);
    }
  }

  return v8 == 0;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  if (self->_UUID)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: UUID must not be nil", self}];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UUID = self->_UUID;
    uUID = [equalCopy UUID];
    v7 = [(NSUUID *)UUID isEqual:uUID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
  [coderCopy encodeObject:self->_sourceBundleIdentifier forKey:@"SourceBundleID"];
  [coderCopy encodeObject:self->_sourceRevision forKey:@"SourceRevision"];
  [coderCopy encodeObject:self->_device forKey:@"Device"];
  [coderCopy encodeDouble:@"CTS" forKey:self->_creationTimestamp];
  [coderCopy encodeObject:self->_contributor forKey:@"Contributor"];
}

- (HKObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(HKObject *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = _init->_UUID;
    _init->_UUID = v6;

    hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
    v9 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];
    hk_replaceKeysFromSharedStringCache = [v9 hk_replaceKeysFromSharedStringCache];
    metadata = _init->_metadata;
    _init->_metadata = hk_replaceKeysFromSharedStringCache;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceBundleID"];
    sourceBundleIdentifier = _init->_sourceBundleIdentifier;
    _init->_sourceBundleIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceRevision"];
    sourceRevision = _init->_sourceRevision;
    _init->_sourceRevision = v14;

    if (!_init->_sourceRevision)
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Source"];
      if (v16)
      {
        v17 = [[HKSourceRevision alloc] _initWithSource:v16];
        v18 = _init->_sourceRevision;
        _init->_sourceRevision = v17;
      }
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Device"];
    device = _init->_device;
    _init->_device = v19;

    if ([coderCopy containsValueForKey:@"CTS"])
    {
      [coderCopy decodeDoubleForKey:@"CTS"];
      _init->_creationTimestamp = v21;
    }

    else
    {
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
      [v22 timeIntervalSinceReferenceDate];
      _init->_creationTimestamp = v23;
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Contributor"];
    contributor = _init->_contributor;
    _init->_contributor = v24;
  }

  return _init;
}

- (void)_setMetadata:(id)metadata
{
  v4 = [metadata copy];
  metadata = self->_metadata;
  self->_metadata = v4;

  MEMORY[0x1EEE66BB8]();
}

- (NSString)_timeZoneName
{
  v3 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"HKTimeZone"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"_HKPrivateAutomaticTimeZone"];
  }

  v6 = v5;

  return v6;
}

- (int64_t)hk_integerValue
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is being performed on an HKObject that it is not compatible with. This is probably a mistake.", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)asJSONObject
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  v4 = [objc_opt_class() description];
  [v3 setObject:v4 forKeyedSubscript:@"class"];

  uUID = [(HKObject *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"UUID"];

  sourceRevision = [(HKObject *)self sourceRevision];
  asJSONObject = [sourceRevision asJSONObject];
  [v3 setObject:asJSONObject forKeyedSubscript:@"sourceRevision"];

  metadata = [(HKObject *)self metadata];

  if (metadata)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    metadata2 = [(HKObject *)self metadata];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __33__HKObject_HK_JSON__asJSONObject__block_invoke;
    v14[3] = &unk_1E737BB50;
    v15 = dictionary;
    v12 = dictionary;
    [metadata2 enumerateKeysAndObjectsUsingBlock:v14];

    [v3 setObject:v12 forKeyedSubscript:@"metadata"];
  }

  return v3;
}

void __33__HKObject_HK_JSON__asJSONObject__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 asJSONObject];
  v9 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

+ (void)_newDataObjectWithMetadata:(const char *)a1 device:(objc_class *)a2 config:.cold.1(const char *a1, objc_class *a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = NSStringFromSelector(a1);
  v5 = NSStringFromClass(a2);
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKObject.m" lineNumber:104 description:{@"%@ should not be used for abstract class %@", v4, v5}];
}

@end
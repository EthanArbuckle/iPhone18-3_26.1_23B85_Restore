@interface HKObject
+ (id)_newDataObjectWithMetadata:(id)a3 device:(id)a4 config:(id)a5;
- (BOOL)_validateForSavingWithClientEntitlements:(id)a3 applicationSDKVersionToken:(unint64_t)a4 isAppleWatch:(BOOL)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (HKObject)init;
- (HKObject)initWithCoder:(id)a3;
- (NSString)_timeZoneName;
- (NSString)description;
- (id)_copyByArchiving;
- (id)_init;
- (id)_validateConfiguration;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)asJSONObject;
- (int64_t)hk_integerValue;
- (void)_setMetadata:(id)a3;
- (void)_validateForCreation;
- (void)encodeWithCoder:(id)a3;
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
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_19197B000, v3, OS_LOG_TYPE_FAULT, "_validateForCreation encountered an error: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_validateConfiguration
{
  v3 = HKApplicationSDKVersionToken();

  return [(HKObject *)self _validateWithConfiguration:0, v3];
}

- (NSString)description
{
  v3 = [(HKObject *)self _valueDescription];
  v4 = v3;
  v5 = &stru_1F05FF230;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AD60];
  v8 = [(HKObject *)self UUID];
  v9 = [v7 stringWithFormat:@"%@ %@ ", v8, v6];

  v10 = [(HKObject *)self sourceRevision];
  if (v10)
  {
    v11 = [(NSUUID *)self->_UUID UUIDString];
    v12 = [v10 version];
    v13 = [v10 productType];
    [v10 operatingSystemVersion];
    v14 = HKNSOperatingSystemVersionString(v24);
    [v9 appendFormat:@"%@, (%@), %@ (%@)", v11, v12, v13, v14];
  }

  v15 = [(HKObject *)self device];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 name];
    [v9 appendFormat:@" %@ ", v17];
  }

  v18 = [(HKObject *)self metadata];
  v19 = v18;
  if (v18 && [v18 count])
  {
    [v9 appendFormat:@"metadata: %@", v19];
  }

  v20 = [(HKObject *)self contributor];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 appleID];
    [v9 appendFormat:@", contributor %@", v22];
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

+ (id)_newDataObjectWithMetadata:(id)a3 device:(id)a4 config:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  if (([a1 _isConcreteObjectClass] & 1) == 0)
  {
    [HKObject _newDataObjectWithMetadata:a2 device:a1 config:?];
  }

  v12 = [[a1 alloc] _init];
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = v12[1];
  v12[1] = v13;

  v15 = v12[3];
  v12[3] = v9;
  v16 = v9;

  v17 = [v11 copy];
  v18 = v12[4];
  v12[4] = v17;

  if (v10)
  {
    v10[2](v10, v12);
  }

  [v12 _validateForCreation];

  return v12;
}

- (BOOL)_validateForSavingWithClientEntitlements:(id)a3 applicationSDKVersionToken:(unint64_t)a4 isAppleWatch:(BOOL)a5 error:(id *)a6
{
  v7 = -[HKObject _validateConfigurationAllowingPrivateMetadata:applicationSDKVersionToken:](self, "_validateConfigurationAllowingPrivateMetadata:applicationSDKVersionToken:", [a3 hasPrivateMetadataAccess], a4);
  v8 = v7;
  if (v7)
  {
    if (a6)
    {
      v9 = v7;
      *a6 = v8;
    }

    else
    {
      _HKLogDroppedError(v7);
    }
  }

  return v8 == 0;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UUID = self->_UUID;
    v6 = [v4 UUID];
    v7 = [(NSUUID *)UUID isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
  [v5 encodeObject:self->_sourceBundleIdentifier forKey:@"SourceBundleID"];
  [v5 encodeObject:self->_sourceRevision forKey:@"SourceRevision"];
  [v5 encodeObject:self->_device forKey:@"Device"];
  [v5 encodeDouble:@"CTS" forKey:self->_creationTimestamp];
  [v5 encodeObject:self->_contributor forKey:@"Contributor"];
}

- (HKObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKObject *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Metadata"];
    v10 = [v9 hk_replaceKeysFromSharedStringCache];
    metadata = v5->_metadata;
    v5->_metadata = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceBundleID"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceRevision"];
    sourceRevision = v5->_sourceRevision;
    v5->_sourceRevision = v14;

    if (!v5->_sourceRevision)
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Source"];
      if (v16)
      {
        v17 = [[HKSourceRevision alloc] _initWithSource:v16];
        v18 = v5->_sourceRevision;
        v5->_sourceRevision = v17;
      }
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Device"];
    device = v5->_device;
    v5->_device = v19;

    if ([v4 containsValueForKey:@"CTS"])
    {
      [v4 decodeDoubleForKey:@"CTS"];
      v5->_creationTimestamp = v21;
    }

    else
    {
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
      [v22 timeIntervalSinceReferenceDate];
      v5->_creationTimestamp = v23;
    }

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Contributor"];
    contributor = v5->_contributor;
    v5->_contributor = v24;
  }

  return v5;
}

- (void)_setMetadata:(id)a3
{
  v4 = [a3 copy];
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

  v5 = [(HKObject *)self UUID];
  v6 = [v5 UUIDString];
  [v3 setObject:v6 forKeyedSubscript:@"UUID"];

  v7 = [(HKObject *)self sourceRevision];
  v8 = [v7 asJSONObject];
  [v3 setObject:v8 forKeyedSubscript:@"sourceRevision"];

  v9 = [(HKObject *)self metadata];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [(HKObject *)self metadata];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __33__HKObject_HK_JSON__asJSONObject__block_invoke;
    v14[3] = &unk_1E737BB50;
    v15 = v10;
    v12 = v10;
    [v11 enumerateKeysAndObjectsUsingBlock:v14];

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
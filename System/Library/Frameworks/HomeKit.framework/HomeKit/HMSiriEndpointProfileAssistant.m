@interface HMSiriEndpointProfileAssistant
+ (id)logCategory;
+ (id)shortDescription;
+ (id)uniqueIdentifierNamespace;
- (BOOL)isSiriAssistant;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMSiriEndpointProfileAssistant)initWithCoder:(id)a3;
- (HMSiriEndpointProfileAssistant)initWithIdentifier:(id)a3 name:(id)a4 active:(int64_t)a5;
- (NSString)name;
- (NSString)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(id)a3;
@end

@implementation HMSiriEndpointProfileAssistant

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 name];
    v9 = [(HMSiriEndpointProfileAssistant *)self name];
    v10 = HMFEqualObjects();

    if ((v10 & 1) == 0)
    {
      v11 = [v7 name];
      [(HMSiriEndpointProfileAssistant *)self setName:v11];
    }

    v12 = [v7 active];
    if (v12 == [(HMSiriEndpointProfileAssistant *)self active])
    {
      v13 = v10 ^ 1;
    }

    else
    {
      -[HMSiriEndpointProfileAssistant setActive:](self, "setActive:", [v7 active]);
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMSiriEndpointProfileAssistant)initWithCoder:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSiriEndpointProfileAssistant *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sepa-identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5->_identifier;
    if (v8)
    {
      v9 = [(NSNumber *)v8 stringValue];
      v22[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

      v11 = MEMORY[0x1E696AFB0];
      v12 = [objc_opt_class() uniqueIdentifierNamespace];
      v13 = [v11 hm_deriveUUIDFromBaseUUID:v12 identifierSalt:0 withSalts:v10];
      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v13;
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sepa-name"];
    name = v5->_name;
    v5->_name = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sepa-active"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 integerValue];
    }

    else
    {
      v19 = -1;
    }

    v5->_active = v19;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSiriAssistant
{
  v2 = [(HMSiriEndpointProfileAssistant *)self identifier];
  v3 = HMFEqualObjects();

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMSiriEndpointProfileAssistant)initWithIdentifier:(id)a3 name:(id)a4 active:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HMSiriEndpointProfileAssistant;
  v10 = [(HMSiriEndpointProfileAssistant *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    name = v10->_name;
    v10->_name = v13;

    v10->_active = a5;
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_65862 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_65862, &__block_literal_global_33_65863);
  }

  v3 = logCategory__hmf_once_v4_65864;

  return v3;
}

uint64_t __45__HMSiriEndpointProfileAssistant_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_65864;
  logCategory__hmf_once_v4_65864 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)uniqueIdentifierNamespace
{
  if (uniqueIdentifierNamespace_onceToken != -1)
  {
    dispatch_once(&uniqueIdentifierNamespace_onceToken, &__block_literal_global_65869);
  }

  v3 = uniqueIdentifierNamespace_namespace;

  return v3;
}

uint64_t __59__HMSiriEndpointProfileAssistant_uniqueIdentifierNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C9A7AF26-1C3D-43A8-894B-E130BF03C2F1"];
  v1 = uniqueIdentifierNamespace_namespace;
  uniqueIdentifierNamespace_namespace = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
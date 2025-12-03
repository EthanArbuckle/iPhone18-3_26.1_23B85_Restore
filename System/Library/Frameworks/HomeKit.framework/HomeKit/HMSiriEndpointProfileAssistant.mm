@interface HMSiriEndpointProfileAssistant
+ (id)logCategory;
+ (id)shortDescription;
+ (id)uniqueIdentifierNamespace;
- (BOOL)isSiriAssistant;
- (BOOL)mergeFromNewObject:(id)object;
- (HMSiriEndpointProfileAssistant)initWithCoder:(id)coder;
- (HMSiriEndpointProfileAssistant)initWithIdentifier:(id)identifier name:(id)name active:(int64_t)active;
- (NSString)name;
- (NSString)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
@end

@implementation HMSiriEndpointProfileAssistant

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    name = [v6 name];
    name2 = [(HMSiriEndpointProfileAssistant *)self name];
    v10 = HMFEqualObjects();

    if ((v10 & 1) == 0)
    {
      name3 = [v7 name];
      [(HMSiriEndpointProfileAssistant *)self setName:name3];
    }

    active = [v7 active];
    if (active == [(HMSiriEndpointProfileAssistant *)self active])
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMSiriEndpointProfileAssistant)initWithCoder:(id)coder
{
  v22[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(HMSiriEndpointProfileAssistant *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sepa-identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5->_identifier;
    if (v8)
    {
      stringValue = [(NSNumber *)v8 stringValue];
      v22[0] = stringValue;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

      v11 = MEMORY[0x1E696AFB0];
      uniqueIdentifierNamespace = [objc_opt_class() uniqueIdentifierNamespace];
      v13 = [v11 hm_deriveUUIDFromBaseUUID:uniqueIdentifierNamespace identifierSalt:0 withSalts:v10];
      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v13;
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sepa-name"];
    name = v5->_name;
    v5->_name = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sepa-active"];
    v18 = v17;
    if (v17)
    {
      integerValue = [v17 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    v5->_active = integerValue;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSiriAssistant
{
  identifier = [(HMSiriEndpointProfileAssistant *)self identifier];
  v3 = HMFEqualObjects();

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (HMSiriEndpointProfileAssistant)initWithIdentifier:(id)identifier name:(id)name active:(int64_t)active
{
  identifierCopy = identifier;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = HMSiriEndpointProfileAssistant;
  v10 = [(HMSiriEndpointProfileAssistant *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v13;

    v10->_active = active;
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
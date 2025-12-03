@interface HMAccessorySettingsPartialFetchFailureInformation
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySettingsPartialFetchFailureInformation)initWithFailureTypes:(id)types;
- (NSArray)attributeDescriptions;
- (NSDictionary)failureTypes;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)failedKeyPaths;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)payloadCopy;
- (int64_t)fetchFailureTypeForKeyPath:(id)path;
- (unint64_t)hash;
- (void)setFetchFailureType:(int64_t)type forKeyPath:(id)path;
@end

@implementation HMAccessorySettingsPartialFetchFailureInformation

- (unint64_t)hash
{
  failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v3 = [failureTypes count];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
      failureTypes2 = [(HMAccessorySettingsPartialFetchFailureInformation *)v6 failureTypes];
      v9 = [failureTypes count];
      if (v9 == [failureTypes2 count])
      {
        allKeys = [failureTypes allKeys];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __61__HMAccessorySettingsPartialFetchFailureInformation_isEqual___block_invoke;
        v13[3] = &unk_1E754B7E0;
        v14 = failureTypes2;
        v15 = failureTypes;
        v11 = [allKeys na_allObjectsPassTest:v13];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __61__HMAccessorySettingsPartialFetchFailureInformation_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [*(a1 + 40) objectForKey:v4];

  v7 = [v5 isEqualToNumber:v6];
  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableAccessorySettingsPartialFetchFailureInformation alloc];
  failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v6 = [(HMAccessorySettingsPartialFetchFailureInformation *)v4 initWithFailureTypes:failureTypes];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMAccessorySettingsPartialFetchFailureInformation alloc];
  failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v6 = [(HMAccessorySettingsPartialFetchFailureInformation *)v4 initWithFailureTypes:failureTypes];

  return v6;
}

- (id)payloadCopy
{
  failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v3 = [failureTypes copy];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v5 = [v3 initWithName:@"failureTypes" value:failureTypes];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSDictionary)failureTypes
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_mutableFailureTypes copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFetchFailureType:(int64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  mutableFailureTypes = self->_mutableFailureTypes;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)mutableFailureTypes setObject:v7 forKey:pathCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)fetchFailureTypeForKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_mutableFailureTypes objectForKey:pathCopy];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];

    os_unfair_lock_unlock(&self->_lock);
    return integerValue;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

- (id)failedKeyPaths
{
  failureTypes = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  allKeys = [failureTypes allKeys];

  return allKeys;
}

- (HMAccessorySettingsPartialFetchFailureInformation)initWithFailureTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = HMAccessorySettingsPartialFetchFailureInformation;
  v5 = [(HMAccessorySettingsPartialFetchFailureInformation *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy mutableCopy];
    mutableFailureTypes = v5->_mutableFailureTypes;
    v5->_mutableFailureTypes = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end
@interface HMAccessorySettingsPartialFetchFailureInformation
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySettingsPartialFetchFailureInformation)initWithFailureTypes:(id)a3;
- (NSArray)attributeDescriptions;
- (NSDictionary)failureTypes;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)failedKeyPaths;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)payloadCopy;
- (int64_t)fetchFailureTypeForKeyPath:(id)a3;
- (unint64_t)hash;
- (void)setFetchFailureType:(int64_t)a3 forKeyPath:(id)a4;
@end

@implementation HMAccessorySettingsPartialFetchFailureInformation

- (unint64_t)hash
{
  v2 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
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
    if (v6)
    {
      v7 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
      v8 = [(HMAccessorySettingsPartialFetchFailureInformation *)v6 failureTypes];
      v9 = [v7 count];
      if (v9 == [v8 count])
      {
        v10 = [v7 allKeys];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __61__HMAccessorySettingsPartialFetchFailureInformation_isEqual___block_invoke;
        v13[3] = &unk_1E754B7E0;
        v14 = v8;
        v15 = v7;
        v11 = [v10 na_allObjectsPassTest:v13];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableAccessorySettingsPartialFetchFailureInformation alloc];
  v5 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v6 = [(HMAccessorySettingsPartialFetchFailureInformation *)v4 initWithFailureTypes:v5];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMAccessorySettingsPartialFetchFailureInformation alloc];
  v5 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v6 = [(HMAccessorySettingsPartialFetchFailureInformation *)v4 initWithFailureTypes:v5];

  return v6;
}

- (id)payloadCopy
{
  v2 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v5 = [v3 initWithName:@"failureTypes" value:v4];
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

- (void)setFetchFailureType:(int64_t)a3 forKeyPath:(id)a4
{
  v8 = a4;
  os_unfair_lock_lock_with_options();
  mutableFailureTypes = self->_mutableFailureTypes;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)mutableFailureTypes setObject:v7 forKey:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)fetchFailureTypeForKeyPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_mutableFailureTypes objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];

    os_unfair_lock_unlock(&self->_lock);
    return v7;
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
  v2 = [(HMAccessorySettingsPartialFetchFailureInformation *)self failureTypes];
  v3 = [v2 allKeys];

  return v3;
}

- (HMAccessorySettingsPartialFetchFailureInformation)initWithFailureTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMAccessorySettingsPartialFetchFailureInformation;
  v5 = [(HMAccessorySettingsPartialFetchFailureInformation *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableFailureTypes = v5->_mutableFailureTypes;
    v5->_mutableFailureTypes = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end
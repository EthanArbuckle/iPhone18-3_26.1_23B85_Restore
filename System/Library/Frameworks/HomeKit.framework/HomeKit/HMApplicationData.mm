@interface HMApplicationData
+ (NSSet)allowedObjectClasses;
+ (void)validateObject:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (HMApplicationData)initWithDictionary:(id)a3;
- (HMApplicationData)initWithDictionaryFromCoder:(id)a3 key:(id)a4;
- (NSArray)allKeys;
- (NSArray)allValues;
- (NSDictionary)dictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (unint64_t)hash;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation HMApplicationData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMApplicationData alloc];
  v5 = [(HMApplicationData *)self dictionary];
  v6 = [(HMApplicationData *)v4 initWithDictionary:v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMApplicationData *)self dictionary];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
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
  if (v6)
  {
    v7 = [(HMApplicationData *)self dictionary];
    v8 = [v6 dictionary];
    v9 = [v7 isEqualToDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)dictionary
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_mutableDictionary copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    [HMApplicationData validateObject:v8];
    p_lock = &self->_lock;
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_mutableDictionary setObject:v8 forKeyedSubscript:v6];
  }

  else
  {
    p_lock = &self->_lock;
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_mutableDictionary setObject:0 forKeyedSubscript:v6];
  }

  os_unfair_lock_unlock(p_lock);
}

+ (void)validateObject:(uint64_t)a1
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
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
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(HMApplicationData *)v3 validateObject:?];
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v12 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;

    if (v7)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __36__HMApplicationData_validateObject___block_invoke;
      v26[3] = &unk_1E7547980;
      v27 = v12;
      v28 = v3;
      [v7 enumerateKeysAndObjectsUsingBlock:v26];
      v14 = v27;
    }

    else
    {
      [objc_opt_class() allowedObjectClasses];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = v25 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = v15;
      v17 = *v23;
LABEL_20:
      v18 = 0;
      while (1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v22 objects:v33 count:16];
          if (!v16)
          {
LABEL_26:

            [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported data type %@ - allowed %@", objc_opt_class(), v14, v22];
            v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
            objc_exception_throw(v20);
          }

          goto LABEL_20;
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __36__HMApplicationData_validateObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = *(a1 + 32);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported dictionary key type %@, must be NSString", objc_opt_class()];
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v7);
  }

  [(HMApplicationData *)*(a1 + 40) validateObject:v5];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMApplicationData *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSArray)allValues
{
  v2 = [(HMApplicationData *)self dictionary];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)allKeys
{
  v2 = [(HMApplicationData *)self dictionary];
  v3 = [v2 allKeys];

  return v3;
}

- (HMApplicationData)initWithDictionaryFromCoder:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() allowedObjectClasses];
  v9 = [v7 decodeObjectOfClasses:v8 forKey:v6];

  v10 = MEMORY[0x1E695E0F8];
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = [(HMApplicationData *)self initWithDictionary:v11];
  return v12;
}

- (HMApplicationData)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMApplicationData;
  v5 = [(HMApplicationData *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableDictionary = v5->_mutableDictionary;
    v5->_mutableDictionary = v6;
  }

  return v5;
}

+ (NSSet)allowedObjectClasses
{
  if (allowedObjectClasses__hmf_once_t0 != -1)
  {
    dispatch_once(&allowedObjectClasses__hmf_once_t0, &__block_literal_global_13550);
  }

  v3 = allowedObjectClasses__hmf_once_v1;

  return v3;
}

void __41__HMApplicationData_allowedObjectClasses__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = allowedObjectClasses__hmf_once_v1;
  allowedObjectClasses__hmf_once_v1 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end
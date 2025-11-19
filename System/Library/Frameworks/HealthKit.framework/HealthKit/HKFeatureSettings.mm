@interface HKFeatureSettings
- (BOOL)isEqual:(id)a3;
- (HKFeatureSettings)initWithCoder:(id)a3;
- (HKFeatureSettings)initWithDictionary:(id)a3 modificationDatesByKey:(id)a4;
- (id)allKeys;
- (id)dataForKey:(id)a3;
- (id)dataForKey:(void *)a3 error:;
- (id)dateForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)numberForKey:(id)a3 error:(id *)a4;
- (id)stringForKey:(id)a3;
- (id)stringForKey:(void *)a3 error:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureSettings

- (HKFeatureSettings)initWithDictionary:(id)a3 modificationDatesByKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKFeatureSettings;
  v8 = [(HKFeatureSettings *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    keyValueStorage = v8->_keyValueStorage;
    v8->_keyValueStorage = v9;

    v11 = [v7 copy];
    modificationDatesByKey = v8->_modificationDatesByKey;
    v8->_modificationDatesByKey = v11;
  }

  return v8;
}

- (id)numberForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKFeatureSettings *)self keyValueStorage];
  v8 = [v7 valueForKey:v6];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MEMORY[0x1E696ABC0] hk_error:100 format:{@"Failed to retrieve value for key %@ as NSNumber.", v6}];
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)numberForKey:(id)a3
{
  v8 = 0;
  v3 = [(HKFeatureSettings *)self numberForKey:a3 error:&v8];
  v4 = v8;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
    {
      [(HKFeatureSettings *)v5 numberForKey:v4];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)allKeys
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(NSDictionary *)self->_keyValueStorage allKeys];
  v5 = [v3 setWithArray:v4];

  v6 = [(NSDictionary *)self->_modificationDatesByKey allKeys];
  [v5 addObjectsFromArray:v6];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKFeatureSettings;
  if (![(HKFeatureSettings *)&v12 isEqual:v4])
  {
    if (![v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = v4;
    keyValueStorage = self->_keyValueStorage;
    v8 = v6[2];
    if (keyValueStorage != v8 && (!v8 || ![(NSDictionary *)keyValueStorage isEqual:?]))
    {
      goto LABEL_11;
    }

    modificationDatesByKey = self->_modificationDatesByKey;
    v10 = v6[1];
    if (modificationDatesByKey == v10)
    {
      v5 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      v5 = [(NSDictionary *)modificationDatesByKey isEqual:?];
    }

    else
    {
LABEL_11:
      v5 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (HKFeatureSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKFeatureSettings;
  v5 = [(HKFeatureSettings *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"keyValueStorage"];
    v12 = v11;
    v13 = MEMORY[0x1E695E0F8];
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v5->_keyValueStorage, v14);

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"modificationDatesByKey"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v13;
    }

    objc_storeStrong(&v5->_modificationDatesByKey, v21);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  keyValueStorage = self->_keyValueStorage;
  v5 = a3;
  [v5 encodeObject:keyValueStorage forKey:@"keyValueStorage"];
  [v5 encodeObject:self->_modificationDatesByKey forKey:@"modificationDatesByKey"];
}

- (id)dateForKey:(id)a3
{
  v3 = [(HKFeatureSettings *)self numberForKey:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF00]);
    [v3 doubleValue];
    v5 = [v4 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataForKey:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 keyValueStorage];
    v7 = [v6 valueForKey:v5];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = [MEMORY[0x1E696ABC0] hk_error:100 format:{@"Failed to retrieve value for key %@ as NSData.", v5}];
      v10 = v9;
      if (v9)
      {
        if (a3)
        {
          v11 = v9;
          *a3 = v10;
        }

        else
        {
          _HKLogDroppedError(v9);
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringForKey:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 keyValueStorage];
    v7 = [v6 valueForKey:v5];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = [MEMORY[0x1E696ABC0] hk_error:100 format:{@"Failed to retrieve value for key %@ as NSString.", v5}];
      v10 = v9;
      if (v9)
      {
        if (a3)
        {
          v11 = v9;
          *a3 = v10;
        }

        else
        {
          _HKLogDroppedError(v9);
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dataForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [(HKFeatureSettings *)self dataForKey:a3 error:&v18];
  v4 = v18;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
    {
      v9 = v5;
      v10 = [v4 description];
      HIDWORD(v19) = HIDWORD(v10);
      OUTLINED_FUNCTION_0_1(&dword_19197B000, v11, v12, "Reading setting failed with error: %{public}@", v13, v14, v15, v16, v17, v18, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)stringForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [(HKFeatureSettings *)self stringForKey:a3 error:&v18];
  v4 = v18;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
    {
      v9 = v5;
      v10 = [v4 description];
      HIDWORD(v19) = HIDWORD(v10);
      OUTLINED_FUNCTION_0_1(&dword_19197B000, v11, v12, "Reading setting failed with error: %{public}@", v13, v14, v15, v16, v17, v18, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)numberForKey:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 description];
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_19197B000, v3, OS_LOG_TYPE_FAULT, "Reading setting failed with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end
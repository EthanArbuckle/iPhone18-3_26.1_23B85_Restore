@interface _LTAssetProgress
+ (id)discreteProgressWithIdentifier:(id)a3 offlineState:(int64_t)a4;
+ (id)discreteProgressWithIdentifier:(id)a3 totalUnitCount:(int64_t)a4;
- (BOOL)addComponent:(id)a3;
- (BOOL)hasComponents;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeComponent:(id)a3;
- (BOOL)updatePercentComplete:(double)a3;
- (BOOL)updateTotalUnitCount:(int64_t)a3 completedUnitCount:(int64_t)a4;
- (NSString)componentFilter;
- (_LTAssetProgress)initWithCoder:(id)a3;
- (_LTAssetProgress)initWithIdentifier:(id)a3 offlineState:(int64_t)a4;
- (_LTAssetProgress)initWithIdentifier:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5;
- (double)fractionCompleted;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)identifierPrefix;
- (int64_t)completedUnitCount;
- (int64_t)offlineState;
- (int64_t)totalUnitCount;
- (unint64_t)hash;
- (void)_fastReadTotal:(int64_t *)a3 completed:(int64_t *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllComponents;
- (void)setComponentFilter:(id)a3;
- (void)setGreaterThanOrEqualToOfflineState:(int64_t)a3;
- (void)setOfflineState:(int64_t)a3;
@end

@implementation _LTAssetProgress

- (int64_t)offlineState
{
  v4 = 0;
  v5 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v5 completed:&v4];
  v2 = 1;
  if (v4 == v5)
  {
    v2 = 2;
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (_LTAssetProgress)initWithIdentifier:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = _LTAssetProgress;
  v9 = [(_LTAssetProgress *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    if ([v8 length])
    {
      v11 = v8;
      identifier = v10->_identifier;
      v10->_identifier = v11;
    }

    else
    {
      identifier = [MEMORY[0x277CCAD78] UUID];
      v13 = [identifier UUIDString];
      v14 = v10->_identifier;
      v10->_identifier = v13;
    }

    v10->_totalUnitCount = a4;
    v10->_completedUnitCount = a5;
    v15 = v10;
  }

  return v10;
}

- (_LTAssetProgress)initWithIdentifier:(id)a3 offlineState:(int64_t)a4
{
  v5 = [(_LTAssetProgress *)self initWithIdentifier:a3 totalUnitCount:314572800 completedUnitCount:0];
  [(_LTAssetProgress *)v5 setOfflineState:a4];
  return v5;
}

+ (id)discreteProgressWithIdentifier:(id)a3 totalUnitCount:(int64_t)a4
{
  if (a4 <= 100)
  {
    v5 = 100;
  }

  else
  {
    v5 = a4;
  }

  v6 = a3;
  v7 = [[a1 alloc] initWithIdentifier:v6 totalUnitCount:v5 completedUnitCount:0];

  return v7;
}

+ (id)discreteProgressWithIdentifier:(id)a3 offlineState:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithIdentifier:v6 offlineState:a4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = 0;
  v7 = 0;
  v4 = a3;
  [(_LTAssetProgress *)self _fastReadTotal:&v7 completed:&v6];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeInteger:v7 forKey:@"totalUnitCount"];
  [v4 encodeInteger:v6 forKey:@"completedUnitCount"];
  [v4 encodeObject:self->_componentFilter forKey:@"componentFilter"];
  v5 = [(NSMutableDictionary *)self->_components allValues];
  [v4 encodeObject:v5 forKey:@"components"];
}

- (_LTAssetProgress)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_LTAssetProgress *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_totalUnitCount = [v4 decodeIntegerForKey:@"totalUnitCount"];
    v6->_completedUnitCount = [v4 decodeIntegerForKey:@"completedUnitCount"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"componentFilter"];
    componentFilter = v6->_componentFilter;
    v6->_componentFilter = v9;

    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"components"];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          components = v6->_components;
          v21 = [v19 identifier];
          [(NSMutableDictionary *)components setObject:v19 forKeyedSubscript:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    v22 = v6;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)totalUnitCount
{
  v3 = 0;
  v4 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v4 completed:&v3];
  return v4;
}

- (int64_t)completedUnitCount
{
  v3 = 0;
  v4 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v4 completed:&v3];
  return v3;
}

- (id)identifierPrefix
{
  identifierPrefix = self->_identifierPrefix;
  if (!identifierPrefix)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_identifierPrefix)
    {
      v4 = [(NSString *)self->_identifier componentsSeparatedByString:@"-"];
      v5 = [v4 firstObject];
      v6 = self->_identifierPrefix;
      self->_identifierPrefix = v5;
    }

    os_unfair_lock_unlock(&self->_lock);
    identifierPrefix = self->_identifierPrefix;
  }

  return identifierPrefix;
}

- (void)_fastReadTotal:(int64_t *)a3 completed:(int64_t *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_components count])
  {
    componentFilter = self->_componentFilter;
    if (componentFilter)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = [(NSString *)componentFilter componentsSeparatedByString:@"|"];
      v23 = [v8 setWithArray:v9];
    }

    else
    {
      v23 = 0;
    }

    v21 = a3;
    v22 = a4;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [(NSMutableDictionary *)self->_components allValues];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      v15 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if (self->_componentFilter)
          {
            v18 = [*(*(&v26 + 1) + 8 * i) identifierPrefix];
            v19 = [v23 containsObject:v18];

            if (!v19)
            {
              continue;
            }
          }

          v24 = 0;
          v25 = 0;
          [v17 _fastReadTotal:&v25 completed:&v24];
          v14 += v25;
          v13 += v24;
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *v21 = v14;
    *v22 = v13;
  }

  else
  {
    *a3 = self->_totalUnitCount;
    *a4 = self->_completedUnitCount;
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setOfflineState:(int64_t)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_components count])
  {
    v5 = [(NSMutableDictionary *)self->_components allValues];
  }

  else
  {
    v21[0] = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  v6 = v5;
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        switch(a3)
        {
          case 0:
            v9 = 0.0;
            goto LABEL_16;
          case 2:
            v9 = 1.0;
LABEL_16:
            [v13 updatePercentComplete:{v9, v16}];
            break;
          case 1:
            v14 = [*(*(&v16 + 1) + 8 * v12) offlineState];
            v9 = 0.01;
            if (!v14)
            {
              goto LABEL_16;
            }

            break;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:{16, v9}];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setGreaterThanOrEqualToOfflineState:(int64_t)a3
{
  if ([(_LTAssetProgress *)self offlineState]< a3)
  {
    [(_LTAssetProgress *)self removeAllComponents];

    [(_LTAssetProgress *)self setOfflineState:a3];
  }
}

- (void)setComponentFilter:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  componentFilter = self->_componentFilter;
  self->_componentFilter = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)componentFilter
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_componentFilter copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeAllComponents
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_components removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasComponents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_components count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)addComponent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = _LTOSLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress addComponent:];
    }

    goto LABEL_10;
  }

  if (self == v4)
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress addComponent:];
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_lock);
  components = self->_components;
  if (!components)
  {
    v7 = objc_opt_new();
    v8 = self->_components;
    self->_components = v7;

    components = self->_components;
  }

  v9 = [(_LTAssetProgress *)v5 identifier];
  [(NSMutableDictionary *)components setObject:v5 forKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_lock);
  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)removeComponent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    components = self->_components;
    v6 = [v4 identifier];
    [(NSMutableDictionary *)components removeObjectForKey:v6];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress removeComponent:];
    }
  }

  return v4 != 0;
}

- (BOOL)updateTotalUnitCount:(int64_t)a3 completedUnitCount:(int64_t)a4
{
  if ([(_LTAssetProgress *)self hasComponents])
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress updateTotalUnitCount:completedUnitCount:];
    }

    return 0;
  }

  if (a3 <= 0)
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTAssetProgress updateTotalUnitCount:completedUnitCount:];
    }

    return 0;
  }

  if (a4 > a3)
  {
    v8 = _LTOSLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_LTAssetProgress updateTotalUnitCount:completedUnitCount:];
    }

    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  totalUnitCount = self->_totalUnitCount;
  v10 = totalUnitCount != a3;
  if (totalUnitCount != a3)
  {
    self->_totalUnitCount = a3;
  }

  if (self->_completedUnitCount != a4)
  {
    self->_completedUnitCount = a4;
    v10 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (BOOL)updatePercentComplete:(double)a3
{
  if ([(_LTAssetProgress *)self hasComponents])
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress updatePercentComplete:];
    }

    return 0;
  }

  if (a3 < 0.0 || a3 > 1.0)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_LTAssetProgress *)v7 updatePercentComplete:a3];
    }

    return 0;
  }

  v9 = [(_LTAssetProgress *)self totalUnitCount];
  if (a3 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    v10 = v9 * a3;
    if (v10 < 1.0)
    {
      v10 = 1.0;
    }

    v11 = v10;
  }

  return [(_LTAssetProgress *)self updateTotalUnitCount:v9 completedUnitCount:v11];
}

- (double)fractionCompleted
{
  v3 = 0;
  v4 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v4 completed:&v3];
  if (v4)
  {
    return v3 / v4;
  }

  else
  {
    return 0.0;
  }
}

- (unint64_t)hash
{
  v2 = [(_LTAssetProgress *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_LTAssetProgress *)self identifier];
      v7 = [(_LTAssetProgress *)v5 identifier];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v14 = 0;
        v15 = 0;
        [(_LTAssetProgress *)self _fastReadTotal:&v15 completed:&v14];
        v12 = 0;
        v13 = 0;
        [(_LTAssetProgress *)v5 _fastReadTotal:&v13 completed:&v12];
        v10 = v14 == v12 && v15 == v13;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithIdentifier:totalUnitCount:completedUnitCount:", self->_identifier, self->_totalUnitCount, self->_completedUnitCount}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_components allValues];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addComponent:*(*(&v13 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)debugDescription
{
  v11 = 0;
  v12 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v12 completed:&v11];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_components count])
  {
    v3 = [(NSMutableDictionary *)self->_components debugDescription];
  }

  else
  {
    v3 = &stru_284DBB9B8;
  }

  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v12)
  {
    v8 = v11 / v12;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v4 stringWithFormat:@"<%@: %p %@ [%zd / %zd : %.02f] %@>", v6, self, self->_identifier, v11, v12, *&v8, v3];;

  return v9;
}

- (void)addComponent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AAF5000, v0, v1, "Progress instance cannot set itself as a component %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addComponent:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AAF5000, v0, v1, "Progress instance cannot set nil components %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeComponent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AAF5000, v0, v1, "Progress instance cannot remove nil components %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateTotalUnitCount:completedUnitCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_23AAF5000, v1, OS_LOG_TYPE_ERROR, "Completed count outside of range 0...%zd: %zd", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateTotalUnitCount:completedUnitCount:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_ERROR, "Total count cannot be 0: %zd", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateTotalUnitCount:completedUnitCount:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AAF5000, v0, v1, "Progress instance with components cannot have total unit count updated directly %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updatePercentComplete:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Percent completion outside of range 0.0...1.0: %f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updatePercentComplete:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AAF5000, v0, v1, "Progress instance with components cannot have percent completion updated directly %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
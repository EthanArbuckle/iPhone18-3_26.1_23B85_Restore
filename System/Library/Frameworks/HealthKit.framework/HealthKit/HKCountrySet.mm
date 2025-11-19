@interface HKCountrySet
+ (BOOL)_versionsMatchBetweenAvailabilityRegions:(void *)a3 availabilityRegions:;
+ (id)_decodePlistDictionary:(uint64_t)a1;
+ (id)bitmaskPathForCountryCode:(id)a3;
+ (id)countryCodeForBitmaskPath:(id)a3;
+ (id)countryCodesForCountryBitmasks:(id)a3;
+ (id)countrySetWithPlistURL:(id)a3 error:(id *)a4;
+ (id)emptyCountrySet;
+ (id)regionsWithPlistAtURL:(id)a3 error:(id *)a4;
+ (int64_t)isRegionCodeFound:(id)a3 availabilityWatch:(id)a4 availabilityPhone:(id)a5;
- (BOOL)containsCountryCode:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKCountrySet)initWithCoder:(id)a3;
- (HKCountrySet)initWithCountryBitmasks:(id)a3 compatibilityVersion:(int64_t)a4 contentVersion:(int64_t)a5 provenance:(int64_t)a6;
- (HKCountrySet)initWithDictionaryRepresentation:(id)a3 provenance:(int64_t)a4;
- (HKCountrySet)initWithSupportedCountryCodes:(id)a3 contentVersion:(int64_t)a4 provenance:(int64_t)a5;
- (NSArray)allCountryCodes;
- (NSDictionary)dictionaryRepresentation;
- (id)_countrySetByOperatingWithCountriesInSet:(uint64_t)a3 contentVersion:(void *)a4 enumerationBlock:;
- (id)countrySetByAddingCountriesInSet:(id)a3;
- (id)countrySetByIntersectingCountriesInSet:(id)a3;
- (id)countrySetByRemovingCountriesInSet:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCountrySet

+ (int64_t)isRegionCodeFound:(id)a3 availabilityWatch:(id)a4 availabilityPhone:(id)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = a5;
    v10 = a4;
    v11 = [[HKCountrySet alloc] initWithDictionaryRepresentation:v10 provenance:0];

    v12 = [[HKCountrySet alloc] initWithDictionaryRepresentation:v9 provenance:0];
    if (v12)
    {
      if (v11)
      {
        v13 = [(HKCountrySet *)v11 countrySetByIntersectingCountriesInSet:v12];
        v14 = [v13 containsCountryCode:v8];
        v15 = [(HKCountrySet *)a1 _versionsMatchBetweenAvailabilityRegions:v11 availabilityRegions:v12];
        objc_opt_self();
        v16 = 1;
        if (!v14)
        {
          v16 = 2;
        }

        v17 = 3;
        if (v14)
        {
          v17 = 4;
        }

        if (v15)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }
      }

      else
      {
        v18 = 6;
      }
    }

    else
    {
      v18 = 5;
    }
  }

  else
  {
    v18 = 2;
  }

  return v18;
}

+ (BOOL)_versionsMatchBetweenAvailabilityRegions:(void *)a3 availabilityRegions:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 compatibilityVersion];

  v7 = [v4 compatibilityVersion];
  return v6 == v7;
}

+ (id)bitmaskPathForCountryCode:(id)a3
{
  if (a3)
  {
    v3 = [a3 uppercaseString];
    if ([&unk_1F06868B0 count])
    {
      v4 = 0;
      while (1)
      {
        v5 = [&unk_1F06868C8 objectAtIndexedSubscript:v4];
        v6 = [v5 objectForKeyedSubscript:v3];

        if (v6)
        {
          break;
        }

        if (++v4 >= [&unk_1F06868B0 count])
        {
          goto LABEL_6;
        }
      }

      v7 = +[HKCountrySetBitmaskPath pathWithBitmask:index:](HKCountrySetBitmaskPath, "pathWithBitmask:index:", [v6 unsignedLongLongValue], v4);
    }

    else
    {
LABEL_6:
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)countryCodeForBitmaskPath:(id)a3
{
  v5 = a3;
  v6 = [&unk_1F06868E0 objectAtIndexedSubscript:{objc_msgSend(v5, "index")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__HKCountrySet_BitmaskEncoding__countryCodeForBitmaskPath___block_invoke;
  v11[3] = &unk_1E737B5A0;
  v7 = v5;
  v12 = v7;
  v8 = [v6 hk_filterKeysWithBlock:v11];

  if ([v8 count] != 1)
  {
    [(HKCountrySet(BitmaskEncoding) *)a2 countryCodeForBitmaskPath:a1];
  }

  v9 = [v8 anyObject];

  return v9;
}

BOOL __59__HKCountrySet_BitmaskEncoding__countryCodeForBitmaskPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bitmask];
  v5 = [v3 unsignedLongLongValue];

  return (v5 & v4) != 0;
}

+ (id)countryCodesForCountryBitmasks:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [&unk_1F06868F8 objectAtIndexedSubscript:v5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__HKCountrySet_BitmaskEncoding__countryCodesForCountryBitmasks___block_invoke;
      v13[3] = &unk_1E737B5A0;
      v14 = v6;
      v8 = v6;
      v9 = [v7 hk_filterKeysWithBlock:v13];
      v10 = [v9 allObjects];
      [v4 addObjectsFromArray:v10];

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  v11 = [v4 copy];

  return v11;
}

BOOL __64__HKCountrySet_BitmaskEncoding__countryCodesForCountryBitmasks___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 unsignedLongLongValue];
  v5 = [v3 unsignedLongLongValue];

  return (v5 & v4) != 0;
}

- (HKCountrySet)initWithDictionaryRepresentation:(id)a3 provenance:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hk_safeArrayIfExistsForKeyPath:@"countryBitmasks" error:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v7 hk_safeArrayForKeyPath:@"AvailableRegions" error:0];
    }

    v12 = v10;

    if ([v12 count] == 5 && objc_msgSend(v12, "hk_allObjectsPassTest:", &__block_literal_global_37))
    {
      v13 = [v7 hk_safeNumberIfExistsForKeyPath:@"compatibilityVersion" error:0];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v7 hk_safeNumberForKeyPath:@"AvailableRegionsVersion" error:0];
      }

      v16 = v15;

      v17 = [v16 integerValue];
      v11 = 0;
      if (v17)
      {
        v18 = v17;
        if (v17 != 0x7FFFFFFF)
        {
          v19 = [v7 hk_safeNumberIfExistsForKeyPath:@"contentVersion" error:0];
          v20 = [v19 integerValue];

          self = [(HKCountrySet *)self initWithCountryBitmasks:v12 compatibilityVersion:v18 contentVersion:v20 provenance:a4];
          v11 = self;
        }
      }
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

  return v11;
}

uint64_t __60__HKCountrySet_initWithDictionaryRepresentation_provenance___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HKCountrySet)initWithCountryBitmasks:(id)a3 compatibilityVersion:(int64_t)a4 contentVersion:(int64_t)a5 provenance:(int64_t)a6
{
  v11 = a3;
  v18.receiver = self;
  v18.super_class = HKCountrySet;
  v12 = [(HKCountrySet *)&v18 init];
  if (!v12)
  {
    goto LABEL_9;
  }

  if ([v11 count] != 5)
  {
    [HKCountrySet initWithCountryBitmasks:a2 compatibilityVersion:v12 contentVersion:? provenance:?];
  }

  if (a4 < 2)
  {
    v15 = [v11 copy];
    countryBitmasks = v12->_countryBitmasks;
    v12->_countryBitmasks = v15;

    v12->_compatibilityVersion = a4;
    v12->_contentVersion = a5;
    v12->_provenance = a6;
LABEL_9:
    v14 = v12;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v13 = HKLogInfrastructure();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [HKCountrySet initWithCountryBitmasks:v12 compatibilityVersion:a4 contentVersion:v13 provenance:?];
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (HKCountrySet)initWithSupportedCountryCodes:(id)a3 contentVersion:(int64_t)a4 provenance:(int64_t)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v30 = a4;
    v9 = a5;
    v10 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [HKCountrySet bitmaskPathForCountryCode:v12];
        v15 = [v14 bitmask];
        v16 = [v14 index];
        *(&v38 + v16) |= v15;

        objc_autoreleasePoolPop(v13);
      }

      v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
    v17 = *(&v38 + 1);
    v8 = v38;
    v19 = *(&v39 + 1);
    v18 = v39;
    v20 = v40;
    a5 = v9;
    a4 = v30;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  v36[0] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
  v36[1] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18];
  v36[2] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
  v36[3] = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
  v36[4] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
  v27 = [(HKCountrySet *)self initWithCountryBitmasks:v26 compatibilityVersion:1 contentVersion:a4 provenance:a5];

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (id)emptyCountrySet
{
  v2 = [HKCountrySet alloc];
  v3 = [(HKCountrySet *)v2 initWithSupportedCountryCodes:MEMORY[0x1E695E0F0] contentVersion:0 provenance:3];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x1E69E9840];
  compatibilityVersion = self->_compatibilityVersion;
  v10[0] = self->_countryBitmasks;
  v9[0] = @"countryBitmasks";
  v9[1] = @"compatibilityVersion";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:compatibilityVersion];
  v10[1] = v4;
  v9[2] = @"contentVersion";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contentVersion];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HKCountrySet *)self allCountryCodes];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contentVersion];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_provenance];
  v9 = [v3 stringWithFormat:@"<%@ countries=%@ contentVersion=%@ provenance=%@>", v4, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKCountrySet;
  if ([(HKCountrySet *)&v11 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6;
      v5 = self->_compatibilityVersion == v6[2] && self->_contentVersion == v6[3] && ((countryBitmasks = self->_countryBitmasks, v9 = v7[1], countryBitmasks == v9) || v9 && [(NSArray *)countryBitmasks isEqual:?]) && self->_provenance == v7[4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)containsCountryCode:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() bitmaskPathForCountryCode:v4];

  if (v5)
  {
    v6 = [(HKCountrySet *)self countryBitmasks];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "index")}];
    v8 = [v7 unsignedLongLongValue];

    v9 = ([v5 bitmask] & v8) != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSArray)allCountryCodes
{
  v3 = objc_opt_class();
  v4 = [(HKCountrySet *)self countryBitmasks];
  v5 = [v3 countryCodesForCountryBitmasks:v4];

  return v5;
}

- (id)countrySetByIntersectingCountriesInSet:(id)a3
{
  contentVersion = self->_contentVersion;
  v5 = a3;
  v6 = [v5 contentVersion];
  if (contentVersion >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = contentVersion;
  }

  v8 = [(HKCountrySet *)self _countrySetByOperatingWithCountriesInSet:v5 contentVersion:v7 enumerationBlock:&__block_literal_global_44_0];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  compatibilityVersion = self->_compatibilityVersion;
  v5 = a3;
  [v5 encodeInteger:compatibilityVersion forKey:@"compatibilityVersion"];
  [v5 encodeInteger:self->_contentVersion forKey:@"contentVersion"];
  [v5 encodeObject:self->_countryBitmasks forKey:@"countryBitmasks"];
  [v5 encodeInteger:self->_provenance forKey:@"provenance"];
}

- (HKCountrySet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"countryBitmasks"];

  if ([v6 count] == 5)
  {
    self = -[HKCountrySet initWithCountryBitmasks:compatibilityVersion:contentVersion:provenance:](self, "initWithCountryBitmasks:compatibilityVersion:contentVersion:provenance:", v6, [v4 decodeIntegerForKey:@"compatibilityVersion"], objc_msgSend(v4, "decodeIntegerForKey:", @"contentVersion"), objc_msgSend(v4, "decodeIntegerForKey:", @"provenance"));
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)regionsWithPlistAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 pathExtension];

  if (!v7)
  {
    v8 = [v6 URLByAppendingPathExtension:@"plist"];
  }

  v17 = 0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = [(HKCountrySet *)a1 _decodePlistDictionary:v9];
  }

  else
  {
    v13 = v10;
    v14 = v13;
    if (v13)
    {
      if (a4)
      {
        v15 = v13;
        *a4 = v14;
      }

      else
      {
        _HKLogDroppedError(v13);
      }
    }

    v12 = 0;
  }

  return v12;
}

+ (id)_decodePlistDictionary:(uint64_t)a1
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 objectForKeyedSubscript:@"AvailableRegionsVersion"];
  v4 = [v2 objectForKeyedSubscript:@"AvailableRegions"];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      v13 = 0;
      [v7 getBytes:&v13 length:8];
      v13 = bswap64(v13);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
      [v5 addObject:v8];

      ++v6;
    }

    while ([v4 count] > v6);
  }

  v14[0] = @"countryBitmasks";
  v9 = [v5 copy];
  v14[1] = @"compatibilityVersion";
  v15[0] = v9;
  v15[1] = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)countrySetWithPlistURL:(id)a3 error:(id *)a4
{
  v14 = 0;
  v5 = [a1 regionsWithPlistAtURL:a3 error:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = [[HKCountrySet alloc] initWithDictionaryRepresentation:v5 provenance:1];
    v9 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = v9;
    }

    else
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 description:@"Plist contents were in an invalid format"];
      v10 = 0;
    }
  }

  else
  {
    v11 = v6;
    v9 = v11;
    if (v11)
    {
      if (a4)
      {
        v12 = v11;
        v10 = 0;
        *a4 = v9;
        goto LABEL_10;
      }

      _HKLogDroppedError(v11);
    }

    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (id)_countrySetByOperatingWithCountriesInSet:(uint64_t)a3 contentVersion:(void *)a4 enumerationBlock:
{
  v6 = a4;
  if (a1)
  {
    v24 = a1;
    v7 = *(a1 + 8);
    v8 = [a2 countryBitmasks];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v10 = [v7 count];
    v11 = [v8 count];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = [v7 objectAtIndexedSubscript:{v13, v24}];
        v15 = [v14 unsignedLongLongValue];

        v16 = [v8 objectAtIndexedSubscript:v13];
        v17 = [v16 unsignedLongLongValue];

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v6[2](v6, v15, v17)}];
        [v9 addObject:v18];

        ++v13;
        v19 = [v7 count];
        v20 = [v8 count];
        if (v19 >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19;
        }
      }

      while (v13 < v21);
    }

    v22 = [objc_alloc(objc_opt_class()) initWithCountryBitmasks:v9 compatibilityVersion:*(v24 + 16) contentVersion:a3 provenance:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)countrySetByAddingCountriesInSet:(id)a3
{
  contentVersion = self->_contentVersion;
  v5 = a3;
  v6 = [v5 contentVersion];
  if (contentVersion <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = contentVersion;
  }

  v8 = [(HKCountrySet *)self _countrySetByOperatingWithCountriesInSet:v5 contentVersion:v7 + 1 enumerationBlock:&__block_literal_global_46_0];

  return v8;
}

- (id)countrySetByRemovingCountriesInSet:(id)a3
{
  contentVersion = self->_contentVersion;
  v5 = a3;
  v6 = [v5 contentVersion];
  if (contentVersion <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = contentVersion;
  }

  v8 = [(HKCountrySet *)self _countrySetByOperatingWithCountriesInSet:v5 contentVersion:v7 + 1 enumerationBlock:&__block_literal_global_48_0];

  return v8;
}

- (void)initWithCountryBitmasks:(uint64_t)a1 compatibilityVersion:(uint64_t)a2 contentVersion:provenance:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"countryBitmasks.count == 5"}];
}

- (void)initWithCountryBitmasks:(NSObject *)a3 compatibilityVersion:contentVersion:provenance:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E696AD98];
  v7 = v5;
  v8 = [v6 numberWithInteger:a2];
  v10 = 138543618;
  v11 = v5;
  v12 = 2114;
  v13 = v8;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Attempted to decode unsupported version: %{public}@", &v10, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end
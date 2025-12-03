@interface HKCountrySet
+ (BOOL)_versionsMatchBetweenAvailabilityRegions:(void *)regions availabilityRegions:;
+ (id)_decodePlistDictionary:(uint64_t)dictionary;
+ (id)bitmaskPathForCountryCode:(id)code;
+ (id)countryCodeForBitmaskPath:(id)path;
+ (id)countryCodesForCountryBitmasks:(id)bitmasks;
+ (id)countrySetWithPlistURL:(id)l error:(id *)error;
+ (id)emptyCountrySet;
+ (id)regionsWithPlistAtURL:(id)l error:(id *)error;
+ (int64_t)isRegionCodeFound:(id)found availabilityWatch:(id)watch availabilityPhone:(id)phone;
- (BOOL)containsCountryCode:(id)code;
- (BOOL)isEqual:(id)equal;
- (HKCountrySet)initWithCoder:(id)coder;
- (HKCountrySet)initWithCountryBitmasks:(id)bitmasks compatibilityVersion:(int64_t)version contentVersion:(int64_t)contentVersion provenance:(int64_t)provenance;
- (HKCountrySet)initWithDictionaryRepresentation:(id)representation provenance:(int64_t)provenance;
- (HKCountrySet)initWithSupportedCountryCodes:(id)codes contentVersion:(int64_t)version provenance:(int64_t)provenance;
- (NSArray)allCountryCodes;
- (NSDictionary)dictionaryRepresentation;
- (id)_countrySetByOperatingWithCountriesInSet:(uint64_t)set contentVersion:(void *)version enumerationBlock:;
- (id)countrySetByAddingCountriesInSet:(id)set;
- (id)countrySetByIntersectingCountriesInSet:(id)set;
- (id)countrySetByRemovingCountriesInSet:(id)set;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCountrySet

+ (int64_t)isRegionCodeFound:(id)found availabilityWatch:(id)watch availabilityPhone:(id)phone
{
  foundCopy = found;
  if (foundCopy)
  {
    phoneCopy = phone;
    watchCopy = watch;
    v11 = [[HKCountrySet alloc] initWithDictionaryRepresentation:watchCopy provenance:0];

    v12 = [[HKCountrySet alloc] initWithDictionaryRepresentation:phoneCopy provenance:0];
    if (v12)
    {
      if (v11)
      {
        v13 = [(HKCountrySet *)v11 countrySetByIntersectingCountriesInSet:v12];
        v14 = [v13 containsCountryCode:foundCopy];
        v15 = [(HKCountrySet *)self _versionsMatchBetweenAvailabilityRegions:v11 availabilityRegions:v12];
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

+ (BOOL)_versionsMatchBetweenAvailabilityRegions:(void *)regions availabilityRegions:
{
  regionsCopy = regions;
  v5 = a2;
  objc_opt_self();
  compatibilityVersion = [v5 compatibilityVersion];

  compatibilityVersion2 = [regionsCopy compatibilityVersion];
  return compatibilityVersion == compatibilityVersion2;
}

+ (id)bitmaskPathForCountryCode:(id)code
{
  if (code)
  {
    uppercaseString = [code uppercaseString];
    if ([&unk_1F06868B0 count])
    {
      v4 = 0;
      while (1)
      {
        v5 = [&unk_1F06868C8 objectAtIndexedSubscript:v4];
        v6 = [v5 objectForKeyedSubscript:uppercaseString];

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

+ (id)countryCodeForBitmaskPath:(id)path
{
  pathCopy = path;
  v6 = [&unk_1F06868E0 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "index")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__HKCountrySet_BitmaskEncoding__countryCodeForBitmaskPath___block_invoke;
  v11[3] = &unk_1E737B5A0;
  v7 = pathCopy;
  v12 = v7;
  v8 = [v6 hk_filterKeysWithBlock:v11];

  if ([v8 count] != 1)
  {
    [(HKCountrySet(BitmaskEncoding) *)a2 countryCodeForBitmaskPath:self];
  }

  anyObject = [v8 anyObject];

  return anyObject;
}

BOOL __59__HKCountrySet_BitmaskEncoding__countryCodeForBitmaskPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bitmask];
  v5 = [v3 unsignedLongLongValue];

  return (v5 & v4) != 0;
}

+ (id)countryCodesForCountryBitmasks:(id)bitmasks
{
  bitmasksCopy = bitmasks;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([bitmasksCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [bitmasksCopy objectAtIndexedSubscript:v5];
      v7 = [&unk_1F06868F8 objectAtIndexedSubscript:v5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__HKCountrySet_BitmaskEncoding__countryCodesForCountryBitmasks___block_invoke;
      v13[3] = &unk_1E737B5A0;
      v14 = v6;
      v8 = v6;
      v9 = [v7 hk_filterKeysWithBlock:v13];
      allObjects = [v9 allObjects];
      [v4 addObjectsFromArray:allObjects];

      ++v5;
    }

    while (v5 < [bitmasksCopy count]);
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

- (HKCountrySet)initWithDictionaryRepresentation:(id)representation provenance:(int64_t)provenance
{
  representationCopy = representation;
  v7 = representationCopy;
  if (representationCopy)
  {
    v8 = [representationCopy hk_safeArrayIfExistsForKeyPath:@"countryBitmasks" error:0];
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

      integerValue = [v16 integerValue];
      selfCopy = 0;
      if (integerValue)
      {
        v18 = integerValue;
        if (integerValue != 0x7FFFFFFF)
        {
          v19 = [v7 hk_safeNumberIfExistsForKeyPath:@"contentVersion" error:0];
          integerValue2 = [v19 integerValue];

          self = [(HKCountrySet *)self initWithCountryBitmasks:v12 compatibilityVersion:v18 contentVersion:integerValue2 provenance:provenance];
          selfCopy = self;
        }
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

uint64_t __60__HKCountrySet_initWithDictionaryRepresentation_provenance___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HKCountrySet)initWithCountryBitmasks:(id)bitmasks compatibilityVersion:(int64_t)version contentVersion:(int64_t)contentVersion provenance:(int64_t)provenance
{
  bitmasksCopy = bitmasks;
  v18.receiver = self;
  v18.super_class = HKCountrySet;
  v12 = [(HKCountrySet *)&v18 init];
  if (!v12)
  {
    goto LABEL_9;
  }

  if ([bitmasksCopy count] != 5)
  {
    [HKCountrySet initWithCountryBitmasks:a2 compatibilityVersion:v12 contentVersion:? provenance:?];
  }

  if (version < 2)
  {
    v15 = [bitmasksCopy copy];
    countryBitmasks = v12->_countryBitmasks;
    v12->_countryBitmasks = v15;

    v12->_compatibilityVersion = version;
    v12->_contentVersion = contentVersion;
    v12->_provenance = provenance;
LABEL_9:
    v14 = v12;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v13 = HKLogInfrastructure();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [HKCountrySet initWithCountryBitmasks:v12 compatibilityVersion:version contentVersion:v13 provenance:?];
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (HKCountrySet)initWithSupportedCountryCodes:(id)codes contentVersion:(int64_t)version provenance:(int64_t)provenance
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  codesCopy = codes;
  v8 = [codesCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    versionCopy = version;
    provenanceCopy = provenance;
    v10 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(codesCopy);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [HKCountrySet bitmaskPathForCountryCode:v12];
        bitmask = [v14 bitmask];
        index = [v14 index];
        *(&v38 + index) |= bitmask;

        objc_autoreleasePoolPop(v13);
      }

      v8 = [codesCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
    v17 = *(&v38 + 1);
    v8 = v38;
    v19 = *(&v39 + 1);
    v18 = v39;
    v20 = v40;
    provenance = provenanceCopy;
    version = versionCopy;
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
  v27 = [(HKCountrySet *)self initWithCountryBitmasks:v26 compatibilityVersion:1 contentVersion:version provenance:provenance];

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
  allCountryCodes = [(HKCountrySet *)self allCountryCodes];
  v6 = [allCountryCodes componentsJoinedByString:{@", "}];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contentVersion];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_provenance];
  v9 = [v3 stringWithFormat:@"<%@ countries=%@ contentVersion=%@ provenance=%@>", v4, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = HKCountrySet;
  if ([(HKCountrySet *)&v11 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (BOOL)containsCountryCode:(id)code
{
  codeCopy = code;
  v5 = [objc_opt_class() bitmaskPathForCountryCode:codeCopy];

  if (v5)
  {
    countryBitmasks = [(HKCountrySet *)self countryBitmasks];
    v7 = [countryBitmasks objectAtIndexedSubscript:{objc_msgSend(v5, "index")}];
    unsignedLongLongValue = [v7 unsignedLongLongValue];

    v9 = ([v5 bitmask] & unsignedLongLongValue) != 0;
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
  countryBitmasks = [(HKCountrySet *)self countryBitmasks];
  v5 = [v3 countryCodesForCountryBitmasks:countryBitmasks];

  return v5;
}

- (id)countrySetByIntersectingCountriesInSet:(id)set
{
  contentVersion = self->_contentVersion;
  setCopy = set;
  contentVersion = [setCopy contentVersion];
  if (contentVersion >= contentVersion)
  {
    v7 = contentVersion;
  }

  else
  {
    v7 = contentVersion;
  }

  v8 = [(HKCountrySet *)self _countrySetByOperatingWithCountriesInSet:setCopy contentVersion:v7 enumerationBlock:&__block_literal_global_44_0];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  compatibilityVersion = self->_compatibilityVersion;
  coderCopy = coder;
  [coderCopy encodeInteger:compatibilityVersion forKey:@"compatibilityVersion"];
  [coderCopy encodeInteger:self->_contentVersion forKey:@"contentVersion"];
  [coderCopy encodeObject:self->_countryBitmasks forKey:@"countryBitmasks"];
  [coderCopy encodeInteger:self->_provenance forKey:@"provenance"];
}

- (HKCountrySet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"countryBitmasks"];

  if ([v6 count] == 5)
  {
    self = -[HKCountrySet initWithCountryBitmasks:compatibilityVersion:contentVersion:provenance:](self, "initWithCountryBitmasks:compatibilityVersion:contentVersion:provenance:", v6, [coderCopy decodeIntegerForKey:@"compatibilityVersion"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"contentVersion"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"provenance"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)regionsWithPlistAtURL:(id)l error:(id *)error
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];

  if (!pathExtension)
  {
    v8 = [lCopy URLByAppendingPathExtension:@"plist"];
  }

  v17 = 0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = [(HKCountrySet *)self _decodePlistDictionary:v9];
  }

  else
  {
    v13 = v10;
    v14 = v13;
    if (v13)
    {
      if (error)
      {
        v15 = v13;
        *error = v14;
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

+ (id)_decodePlistDictionary:(uint64_t)dictionary
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

+ (id)countrySetWithPlistURL:(id)l error:(id *)error
{
  v14 = 0;
  v5 = [self regionsWithPlistAtURL:l error:&v14];
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
      [MEMORY[0x1E696ABC0] hk_assignError:error code:3 description:@"Plist contents were in an invalid format"];
      v10 = 0;
    }
  }

  else
  {
    v11 = v6;
    v9 = v11;
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        v10 = 0;
        *error = v9;
        goto LABEL_10;
      }

      _HKLogDroppedError(v11);
    }

    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (id)_countrySetByOperatingWithCountriesInSet:(uint64_t)set contentVersion:(void *)version enumerationBlock:
{
  versionCopy = version;
  if (self)
  {
    selfCopy = self;
    v7 = *(self + 8);
    countryBitmasks = [a2 countryBitmasks];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v10 = [v7 count];
    v11 = [countryBitmasks count];
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
        v14 = [v7 objectAtIndexedSubscript:{v13, selfCopy}];
        unsignedLongLongValue = [v14 unsignedLongLongValue];

        v16 = [countryBitmasks objectAtIndexedSubscript:v13];
        unsignedLongLongValue2 = [v16 unsignedLongLongValue];

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{versionCopy[2](versionCopy, unsignedLongLongValue, unsignedLongLongValue2)}];
        [v9 addObject:v18];

        ++v13;
        v19 = [v7 count];
        v20 = [countryBitmasks count];
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

    v22 = [objc_alloc(objc_opt_class()) initWithCountryBitmasks:v9 compatibilityVersion:*(selfCopy + 16) contentVersion:set provenance:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)countrySetByAddingCountriesInSet:(id)set
{
  contentVersion = self->_contentVersion;
  setCopy = set;
  contentVersion = [setCopy contentVersion];
  if (contentVersion <= contentVersion)
  {
    v7 = contentVersion;
  }

  else
  {
    v7 = contentVersion;
  }

  v8 = [(HKCountrySet *)self _countrySetByOperatingWithCountriesInSet:setCopy contentVersion:v7 + 1 enumerationBlock:&__block_literal_global_46_0];

  return v8;
}

- (id)countrySetByRemovingCountriesInSet:(id)set
{
  contentVersion = self->_contentVersion;
  setCopy = set;
  contentVersion = [setCopy contentVersion];
  if (contentVersion <= contentVersion)
  {
    v7 = contentVersion;
  }

  else
  {
    v7 = contentVersion;
  }

  v8 = [(HKCountrySet *)self _countrySetByOperatingWithCountriesInSet:setCopy contentVersion:v7 + 1 enumerationBlock:&__block_literal_global_48_0];

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
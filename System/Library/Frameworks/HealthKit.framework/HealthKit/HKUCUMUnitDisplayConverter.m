@interface HKUCUMUnitDisplayConverter
+ (id)sharedConverter;
- (HKUCUMUnitDisplayConverter)init;
- (NSDictionary)hkUnitNameLookupTable;
- (NSDictionary)synonymLookupTable;
- (id)hkUnitNameForUCUMUnitCode:(id)a3;
- (id)synonymForUCUMUnitString:(id)a3;
@end

@implementation HKUCUMUnitDisplayConverter

- (HKUCUMUnitDisplayConverter)init
{
  v3.receiver = self;
  v3.super_class = HKUCUMUnitDisplayConverter;
  result = [(HKUCUMUnitDisplayConverter *)&v3 init];
  if (result)
  {
    *&result->_synonymLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)sharedConverter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__HKUCUMUnitDisplayConverter_sharedConverter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedConverter_onceToken != -1)
  {
    dispatch_once(&sharedConverter_onceToken, block);
  }

  v2 = sharedConverter_sharedUCUMUnitDisplayConverter;

  return v2;
}

uint64_t __45__HKUCUMUnitDisplayConverter_sharedConverter__block_invoke(uint64_t a1)
{
  sharedConverter_sharedUCUMUnitDisplayConverter = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)synonymLookupTable
{
  os_unfair_lock_lock(&self->_synonymLock);
  synonymLookupTable = self->_synonymLookupTable;
  if (synonymLookupTable)
  {
    v4 = synonymLookupTable;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"ucum-synonyms" ofType:@"plist"];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
    [(HKUCUMUnitDisplayConverter *)self setSynonymLookupTable:v4];
  }

  os_unfair_lock_unlock(&self->_synonymLock);

  return v4;
}

- (NSDictionary)hkUnitNameLookupTable
{
  os_unfair_lock_lock(&self->_hkTableLock);
  hkUnitNameLookupTable = self->_hkUnitNameLookupTable;
  if (hkUnitNameLookupTable)
  {
    v4 = hkUnitNameLookupTable;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"ucum-to-hkunit-mapping" ofType:@"plist"];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
    [(HKUCUMUnitDisplayConverter *)self setHkUnitNameLookupTable:v4];
  }

  os_unfair_lock_unlock(&self->_hkTableLock);

  return v4;
}

- (id)synonymForUCUMUnitString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKUCUMUnitDisplayConverter *)a2 synonymForUCUMUnitString:?];
  }

  v6 = [(HKUCUMUnitDisplayConverter *)self synonymLookupTable];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [v5 stringByReplacingOccurrencesOfString:@"10*" withString:@"10^"];
    v10 = [v9 stringByReplacingOccurrencesOfString:@" {" withString:@" "];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"} " withString:@" "];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"{" withString:&stru_1F05FF230];
    v13 = [v12 stringByReplacingOccurrencesOfString:@"}" withString:&stru_1F05FF230];

    v19 = 0;
    v14 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:1 error:&v19];
    v15 = [v14 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{objc_msgSend(v13, "length"), @" "}];

    v16 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v17 = [v15 stringByTrimmingCharactersInSet:v16];

    v8 = v17;
  }

  return v8;
}

- (id)hkUnitNameForUCUMUnitCode:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(HKUCUMUnitDisplayConverter *)self hkUnitNameLookupTable];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)synonymForUCUMUnitString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUCUMUnitDisplayConverter.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"unitString != nil"}];
}

@end
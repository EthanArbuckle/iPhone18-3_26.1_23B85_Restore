@interface NSMergedPolicyLocalizationPolicy
- (NSMergedPolicyLocalizationPolicy)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_ensureFullLocalizationDictionaryIsLoaded;
- (void)addPolicy:(id)a3;
- (void)dealloc;
@end

@implementation NSMergedPolicyLocalizationPolicy

- (NSMergedPolicyLocalizationPolicy)init
{
  v3.receiver = self;
  v3.super_class = NSMergedPolicyLocalizationPolicy;
  result = [(NSMergedPolicyLocalizationPolicy *)&v3 init];
  if (result)
  {
    result->_mergedPolicies = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSMergedPolicyLocalizationPolicy;
  [(NSValidationErrorLocalizationPolicy *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSMergedPolicyLocalizationPolicy;
  v4 = [(NSValidationErrorLocalizationPolicy *)&v6 copyWithZone:a3];
  if (v4)
  {
    v4[6] = [(NSSet *)self->_mergedPolicies copy];
  }

  return v4;
}

- (void)addPolicy:(id)a3
{
  mergedPolicies = self->_mergedPolicies;
  if (!mergedPolicies)
  {
    mergedPolicies = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:4];
    self->_mergedPolicies = mergedPolicies;
  }

  [(NSSet *)mergedPolicies addObject:a3];
}

- (void)_ensureFullLocalizationDictionaryIsLoaded
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->super._hasSetLocalizationDictionary)
  {
    self->super._localizationDictionary = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSSet count](self->_mergedPolicies, "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    mergedPolicies = self->_mergedPolicies;
    v4 = [(NSSet *)mergedPolicies countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(mergedPolicies);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          [v8 _ensureFullLocalizationDictionaryIsLoaded];
          -[NSDictionary addEntriesFromDictionary:](self->super._localizationDictionary, "addEntriesFromDictionary:", [v8 localizationDictionary]);
        }

        v5 = [(NSSet *)mergedPolicies countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    self->super._hasSetLocalizationDictionary = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end
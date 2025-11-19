@interface AMSBagKeySet
+ (NSMutableDictionary)defaultValues;
+ (id)defaultValueForKey:(id)a3 profile:(id)a4 profileVersion:(id)a5;
+ (void)registerBagKeySet:(id)a3 forProfile:(id)a4 profileVersion:(id)a5;
- (AMSBagKeySet)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation AMSBagKeySet

uint64_t __29__AMSBagKeySet_defaultValues__block_invoke()
{
  qword_1ED6E27B8 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (NSMutableDictionary)defaultValues
{
  if (_MergedGlobals_89 != -1)
  {
    dispatch_once(&_MergedGlobals_89, &__block_literal_global_17);
  }

  v3 = qword_1ED6E27B8;

  return v3;
}

- (AMSBagKeySet)init
{
  v6.receiver = self;
  v6.super_class = AMSBagKeySet;
  v2 = [(AMSBagKeySet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultValues = v2->_defaultValues;
    v2->_defaultValues = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [AMSBagKeySet allocWithZone:a3];

  return [(AMSBagKeySet *)v3 init];
}

+ (id)defaultValueForKey:(id)a3 profile:(id)a4 profileVersion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v10, v9];

  v12 = [a1 defaultValues];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = [a1 defaultValues];
    [v14 setObject:v13 forKeyedSubscript:v11];
  }

  v15 = [v13 objectForKeyedSubscript:v8];
  os_unfair_recursive_lock_unlock();

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v3 = [AMSMutableBagKeySet allocWithZone:a3];

  return [(AMSBagKeySet *)v3 init];
}

+ (void)registerBagKeySet:(id)a3 forProfile:(id)a4 profileVersion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v10, v9];

  v12 = [a1 defaultValues];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = [a1 defaultValues];
    [v14 setObject:v13 forKeyedSubscript:v11];
  }

  v15 = [v8 defaultValues];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__AMSBagKeySet_registerBagKeySet_forProfile_profileVersion___block_invoke;
  v17[3] = &unk_1E73B42F8;
  v18 = v13;
  v16 = v13;
  [v15 enumerateKeysAndObjectsUsingBlock:v17];

  os_unfair_recursive_lock_unlock();
}

@end
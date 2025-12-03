@interface AMSBagKeySet
+ (NSMutableDictionary)defaultValues;
+ (id)defaultValueForKey:(id)key profile:(id)profile profileVersion:(id)version;
+ (void)registerBagKeySet:(id)set forProfile:(id)profile profileVersion:(id)version;
- (AMSBagKeySet)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [AMSBagKeySet allocWithZone:zone];

  return [(AMSBagKeySet *)v3 init];
}

+ (id)defaultValueForKey:(id)key profile:(id)profile profileVersion:(id)version
{
  keyCopy = key;
  versionCopy = version;
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  versionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", profileCopy, versionCopy];

  defaultValues = [self defaultValues];
  v13 = [defaultValues objectForKeyedSubscript:versionCopy];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultValues2 = [self defaultValues];
    [defaultValues2 setObject:v13 forKeyedSubscript:versionCopy];
  }

  v15 = [v13 objectForKeyedSubscript:keyCopy];
  os_unfair_recursive_lock_unlock();

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [AMSMutableBagKeySet allocWithZone:zone];

  return [(AMSBagKeySet *)v3 init];
}

+ (void)registerBagKeySet:(id)set forProfile:(id)profile profileVersion:(id)version
{
  setCopy = set;
  versionCopy = version;
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  versionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", profileCopy, versionCopy];

  defaultValues = [self defaultValues];
  v13 = [defaultValues objectForKeyedSubscript:versionCopy];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultValues2 = [self defaultValues];
    [defaultValues2 setObject:v13 forKeyedSubscript:versionCopy];
  }

  defaultValues3 = [setCopy defaultValues];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__AMSBagKeySet_registerBagKeySet_forProfile_profileVersion___block_invoke;
  v17[3] = &unk_1E73B42F8;
  v18 = v13;
  v16 = v13;
  [defaultValues3 enumerateKeysAndObjectsUsingBlock:v17];

  os_unfair_recursive_lock_unlock();
}

@end
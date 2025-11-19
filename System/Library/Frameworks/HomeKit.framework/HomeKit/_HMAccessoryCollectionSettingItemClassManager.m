@interface _HMAccessoryCollectionSettingItemClassManager
+ (NSSet)defaultItemValueClasses;
+ (_HMAccessoryCollectionSettingItemClassManager)sharedManager;
- (BOOL)hasCustomItemValueClassesForKeyPath:(id)a3;
- (_HMAccessoryCollectionSettingItemClassManager)init;
- (id)itemValueClassesForKeyPath:(id)a3;
- (void)removeItemValueClassesForKeyPath:(id)a3;
- (void)setItemValueClasses:(id)a3 forKeyPath:(id)a4;
@end

@implementation _HMAccessoryCollectionSettingItemClassManager

- (void)removeItemValueClassesForKeyPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_classes removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setItemValueClasses:(id)a3 forKeyPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->_lock);
    _Unwind_Resume(v9);
  }

  v7 = v6;
  v8 = [v10 copy];
  os_unfair_lock_lock_with_options();
  if ([v8 count])
  {
    [(NSMutableDictionary *)self->_classes setObject:v8 forKey:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)itemValueClassesForKeyPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->_lock);
    _Unwind_Resume(v10);
  }

  v5 = v4;
  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_classes objectForKey:v5];
  os_unfair_lock_unlock(&self->_lock);
  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = +[_HMAccessoryCollectionSettingItemClassManager defaultItemValueClasses];
  }

  v8 = v7;

  return v8;
}

- (BOOL)hasCustomItemValueClassesForKeyPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_classes objectForKey:v4];
  v6 = v5 != 0;

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (_HMAccessoryCollectionSettingItemClassManager)init
{
  v6.receiver = self;
  v6.super_class = _HMAccessoryCollectionSettingItemClassManager;
  v2 = [(_HMAccessoryCollectionSettingItemClassManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    classes = v2->_classes;
    v2->_classes = v3;
  }

  return v2;
}

+ (_HMAccessoryCollectionSettingItemClassManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_477);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

+ (NSSet)defaultItemValueClasses
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
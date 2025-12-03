@interface _HMAccessoryCollectionSettingItemClassManager
+ (NSSet)defaultItemValueClasses;
+ (_HMAccessoryCollectionSettingItemClassManager)sharedManager;
- (BOOL)hasCustomItemValueClassesForKeyPath:(id)path;
- (_HMAccessoryCollectionSettingItemClassManager)init;
- (id)itemValueClassesForKeyPath:(id)path;
- (void)removeItemValueClassesForKeyPath:(id)path;
- (void)setItemValueClasses:(id)classes forKeyPath:(id)path;
@end

@implementation _HMAccessoryCollectionSettingItemClassManager

- (void)removeItemValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_classes removeObjectForKey:pathCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setItemValueClasses:(id)classes forKeyPath:(id)path
{
  classesCopy = classes;
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->_lock);
    _Unwind_Resume(v9);
  }

  v7 = pathCopy;
  v8 = [classesCopy copy];
  os_unfair_lock_lock_with_options();
  if ([v8 count])
  {
    [(NSMutableDictionary *)self->_classes setObject:v8 forKey:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)itemValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v10 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->_lock);
    _Unwind_Resume(v10);
  }

  v5 = pathCopy;
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

- (BOOL)hasCustomItemValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_classes objectForKey:pathCopy];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    classes = v2->_classes;
    v2->_classes = dictionary;
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
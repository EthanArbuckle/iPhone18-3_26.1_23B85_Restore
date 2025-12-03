@interface _LSDAppProtectionAccessManager
+ (id)sharedInstance;
- (_LSDAppProtectionAccessManager)init;
- (id)readFromDBWithError:(id *)error;
- (id)writeToDB:(id)b;
@end

@implementation _LSDAppProtectionAccessManager

- (_LSDAppProtectionAccessManager)init
{
  v3.receiver = self;
  v3.super_class = _LSDAppProtectionAccessManager;
  result = [(_LSDAppProtectionAccessManager *)&v3 init];
  if (result)
  {
    result->_dbLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (+[_LSDAppProtectionAccessManager sharedInstance]::onceToken != -1)
  {
    +[_LSDAppProtectionAccessManager sharedInstance];
  }

  v3 = +[_LSDAppProtectionAccessManager sharedInstance]::sharedInstance;

  return v3;
}

- (id)readFromDBWithError:(id *)error
{
  v23[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_dbLock);
  cache = self->_cache;
  if (!cache)
  {
    v22[0] = @"hiddenBundleIDs";
    v22[1] = @"lockedBundleIDs";
    v23[0] = MEMORY[0x1E695E0F0];
    v23[1] = MEMORY[0x1E695E0F0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v7 = self->_cache;
    self->_cache = v6;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    appProtectionStoreFileURL = [__LSDefaultsGetSharedInstance() appProtectionStoreFileURL];
    path = [appProtectionStoreFileURL path];
    v11 = [defaultManager fileExistsAtPath:path];

    if ((v11 & 1) == 0)
    {
      v12 = _LSAppProtectionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_LSDAppProtectionAccessManager readFromDBWithError:v12];
      }

      v13 = self->_cache;
      appProtectionStoreFileURL2 = [__LSDefaultsGetSharedInstance() appProtectionStoreFileURL];
      [(NSDictionary *)v13 writeToURL:appProtectionStoreFileURL2 error:error];
    }

    v15 = MEMORY[0x1E695DF20];
    appProtectionStoreFileURL3 = [__LSDefaultsGetSharedInstance() appProtectionStoreFileURL];
    v17 = [v15 dictionaryWithContentsOfURL:appProtectionStoreFileURL3 error:error];
    v18 = self->_cache;
    self->_cache = v17;

    cache = self->_cache;
  }

  v19 = [(NSDictionary *)cache copy];
  os_unfair_lock_unlock(&self->_dbLock);
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)writeToDB:(id)b
{
  bCopy = b;
  os_unfair_lock_lock(&self->_dbLock);
  v5 = [bCopy copy];
  cache = self->_cache;
  self->_cache = v5;

  v7 = self->_cache;
  appProtectionStoreFileURL = [__LSDefaultsGetSharedInstance() appProtectionStoreFileURL];
  v11 = 0;
  [(NSDictionary *)v7 writeToURL:appProtectionStoreFileURL error:&v11];
  v9 = v11;

  os_unfair_lock_unlock(&self->_dbLock);

  return v9;
}

@end
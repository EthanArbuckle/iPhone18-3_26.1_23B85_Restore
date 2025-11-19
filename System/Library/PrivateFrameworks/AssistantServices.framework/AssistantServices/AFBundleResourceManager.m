@interface AFBundleResourceManager
+ (id)sharedManager;
- (AFBundleResourceManager)init;
- (id)URLForResource:(id)a3;
- (id)URLForSoundID:(int64_t)a3;
- (id)resourceForSoundID:(int64_t)a3;
@end

@implementation AFBundleResourceManager

- (id)URLForResource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v4 name];
    v7 = [v4 extension];
    v8 = [v5 initWithFormat:@"%@.%@", v6, v7];

    if (v8)
    {
      os_unfair_lock_lock(&self->_lock);
      v9 = [(NSMutableDictionary *)self->_resourceURLProvidersByIdentifier objectForKey:v8];
      os_unfair_lock_unlock(&self->_lock);
      if (!v9)
      {
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v11 = [v4 name];
        v12 = [v4 extension];
        v9 = [v10 URLForResource:v11 withExtension:v12];

        os_unfair_lock_lock(&self->_lock);
        resourceURLProvidersByIdentifier = self->_resourceURLProvidersByIdentifier;
        if (v9)
        {
          [(NSMutableDictionary *)self->_resourceURLProvidersByIdentifier setObject:v9 forKey:v8];
        }

        else
        {
          v15 = [MEMORY[0x1E695DFB0] null];
          [(NSMutableDictionary *)resourceURLProvidersByIdentifier setObject:v15 forKey:v8];
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      v14 = [v9 af_getBundleResourceURL];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)resourceForSoundID:(int64_t)a3
{
  if ((a3 - 1) > 0xC)
  {
    v7 = 0;
  }

  else
  {
    if (_AFBundleResourceGetSoundMap_onceToken != -1)
    {
      dispatch_once(&_AFBundleResourceGetSoundMap_onceToken, &__block_literal_global_68);
    }

    v4 = MEMORY[0x1E696AD98];
    v5 = _AFBundleResourceGetSoundMap_map;
    v6 = [v4 numberWithInteger:a3];
    v7 = [v5 objectForKey:v6];
  }

  return v7;
}

- (AFBundleResourceManager)init
{
  v7.receiver = self;
  v7.super_class = AFBundleResourceManager;
  v2 = [(AFBundleResourceManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resourceURLProvidersByIdentifier = v3->_resourceURLProvidersByIdentifier;
    v3->_resourceURLProvidersByIdentifier = v4;
  }

  return v3;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_2016);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __40__AFBundleResourceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AFBundleResourceManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (id)URLForSoundID:(int64_t)a3
{
  v4 = [(AFBundleResourceManager *)self resourceForSoundID:a3];
  v5 = [(AFBundleResourceManager *)self URLForResource:v4];

  return v5;
}

@end
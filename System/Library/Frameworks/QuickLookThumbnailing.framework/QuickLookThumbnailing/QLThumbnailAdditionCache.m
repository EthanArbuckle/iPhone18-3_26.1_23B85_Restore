@interface QLThumbnailAdditionCache
+ (id)sharedInstance;
- (QLThumbnailAdditionCache)init;
- (id)thumbnailAdditionForItemAtURL:(id)a3 error:(id *)a4;
- (void)cacheAddition:(id)a3 forDocumentID:(id)a4;
- (void)purgeCachedAdditionForItemAtURL:(id)a3;
@end

@implementation QLThumbnailAdditionCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__QLThumbnailAdditionCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sSharedInstance;

  return v2;
}

uint64_t __42__QLThumbnailAdditionCache_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (QLThumbnailAdditionCache)init
{
  v6.receiver = self;
  v6.super_class = QLThumbnailAdditionCache;
  v2 = [(QLThumbnailAdditionCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    additionsCache = v2->_additionsCache;
    v2->_additionsCache = v3;

    [(NSCache *)v2->_additionsCache setName:@"QLThumbnail Additions"];
    [(NSCache *)v2->_additionsCache setCountLimit:64];
  }

  return v2;
}

- (id)thumbnailAdditionForItemAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v7 = [v6 getResourceValue:&v21 forKey:*MEMORY[0x1E695DAB8] error:a4];
  v8 = v21;
  v9 = v8;
  v10 = 0;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = self->_additionsCache;
    objc_sync_enter(v12);
    v13 = [(NSCache *)self->_additionsCache objectForKey:v9];
    objc_sync_exit(v12);

    if ([v13 isStillValid])
    {
      v14 = _log_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [QLThumbnailAdditionCache thumbnailAdditionForItemAtURL:error:];
      }

      v10 = [v13 addition];
    }

    else
    {
      v15 = _log_0();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v16)
        {
          [QLThumbnailAdditionCache thumbnailAdditionForItemAtURL:error:];
        }
      }

      else if (v16)
      {
        [QLThumbnailAdditionCache thumbnailAdditionForItemAtURL:error:];
      }

      v17 = [MEMORY[0x1E69A07C0] manager];
      v18 = [v17 permanentStorageForItemAtURL:v6 allocateIfNone:0 error:a4];
      if (v18)
      {
        v19 = [MEMORY[0x1E69A07B0] makeNameForUser:getuid() name:@"QLThumbnailAdditionName"];
        v10 = [v18 additionWithName:v19 inNameSpace:@"com.apple.thumbnails" error:a4];

        if (v10)
        {
          [(QLThumbnailAdditionCache *)self cacheAddition:v10 forDocumentID:v9];
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (void)purgeCachedAdditionForItemAtURL:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [v4 getResourceValue:&v11 forKey:*MEMORY[0x1E695DAB8] error:0];
  v6 = v11;
  if (v5)
  {
    additionsCache = self->_additionsCache;
    p_additionsCache = &self->_additionsCache;
    v9 = additionsCache;
    objc_sync_enter(v9);
    v10 = _log_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(QLThumbnailAdditionCache *)v6 purgeCachedAdditionForItemAtURL:?];
    }

    [*p_additionsCache removeObjectForKey:v6];
    objc_sync_exit(v9);
  }
}

- (void)cacheAddition:(id)a3 forDocumentID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[QLThumbnailCachedAddition alloc] initWithAddition:v6];
  if (v8)
  {
    v9 = self->_additionsCache;
    objc_sync_enter(v9);
    v10 = _log_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      additionsCache = self->_additionsCache;
      v13 = [v6 userInfo];
      v14 = 138413058;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = additionsCache;
      v20 = 2112;
      v21 = v13;
      _os_log_debug_impl(&dword_1CA1E7000, v10, OS_LOG_TYPE_DEBUG, "Storing addition %@ for docID %@ in cache %@, user info %@", &v14, 0x2Au);
    }

    [(NSCache *)self->_additionsCache setObject:v8 forKey:v7];
    objc_sync_exit(v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailAdditionForItemAtURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailAdditionForItemAtURL:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailAdditionForItemAtURL:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)purgeCachedAdditionForItemAtURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8(&dword_1CA1E7000, v3, v4, "Removing entry for key %@ in cache %@");
  v5 = *MEMORY[0x1E69E9840];
}

@end
@interface QLThumbnailAdditionCache
+ (id)sharedInstance;
- (QLThumbnailAdditionCache)init;
- (id)thumbnailAdditionForItemAtURL:(id)l error:(id *)error;
- (void)cacheAddition:(id)addition forDocumentID:(id)d;
- (void)purgeCachedAdditionForItemAtURL:(id)l;
@end

@implementation QLThumbnailAdditionCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__QLThumbnailAdditionCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)thumbnailAdditionForItemAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v7 = [lCopy getResourceValue:&v21 forKey:*MEMORY[0x1E695DAB8] error:error];
  v8 = v21;
  v9 = v8;
  addition = 0;
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

      addition = [v13 addition];
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

      manager = [MEMORY[0x1E69A07C0] manager];
      v18 = [manager permanentStorageForItemAtURL:lCopy allocateIfNone:0 error:error];
      if (v18)
      {
        v19 = [MEMORY[0x1E69A07B0] makeNameForUser:getuid() name:@"QLThumbnailAdditionName"];
        addition = [v18 additionWithName:v19 inNameSpace:@"com.apple.thumbnails" error:error];

        if (addition)
        {
          [(QLThumbnailAdditionCache *)self cacheAddition:addition forDocumentID:v9];
        }
      }

      else
      {
        addition = 0;
      }
    }
  }

  return addition;
}

- (void)purgeCachedAdditionForItemAtURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v5 = [lCopy getResourceValue:&v11 forKey:*MEMORY[0x1E695DAB8] error:0];
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

- (void)cacheAddition:(id)addition forDocumentID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  additionCopy = addition;
  dCopy = d;
  v8 = [[QLThumbnailCachedAddition alloc] initWithAddition:additionCopy];
  if (v8)
  {
    v9 = self->_additionsCache;
    objc_sync_enter(v9);
    v10 = _log_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      additionsCache = self->_additionsCache;
      userInfo = [additionCopy userInfo];
      v14 = 138413058;
      v15 = additionCopy;
      v16 = 2112;
      v17 = dCopy;
      v18 = 2112;
      v19 = additionsCache;
      v20 = 2112;
      v21 = userInfo;
      _os_log_debug_impl(&dword_1CA1E7000, v10, OS_LOG_TYPE_DEBUG, "Storing addition %@ for docID %@ in cache %@, user info %@", &v14, 0x2Au);
    }

    [(NSCache *)self->_additionsCache setObject:v8 forKey:dCopy];
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
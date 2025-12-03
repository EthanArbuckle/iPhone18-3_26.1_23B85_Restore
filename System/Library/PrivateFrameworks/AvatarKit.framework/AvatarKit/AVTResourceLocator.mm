@interface AVTResourceLocator
+ (id)sharedResourceLocator;
- (id)_init;
- (id)pathForAnimojiResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForAnimojiResource:(void *)resource ofType:isDirectory:;
- (id)pathForEnvironmentResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForEnvironmentResource:(void *)resource ofType:isDirectory:;
- (id)pathForMemojiResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForMemojiResource:(void *)resource ofType:isDirectory:;
- (id)pathForPoseResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForPoseResource:(void *)resource ofType:isDirectory:;
- (id)pathForStickerResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForStickerResource:(void *)resource ofType:isDirectory:;
- (id)rootCacheURL;
- (id)subdivDataCacheURL;
- (id)urlForFrameworkResourceAtPath:(uint64_t)path isDirectory:;
- (id)urlForMemojiAssetAtPath:(uint64_t)path isDirectory:;
- (id)urlForMemojiResourceAtPath:(uint64_t)path isDirectory:;
- (id)urlForStickerResourceAtPath:(uint64_t)path isDirectory:;
- (void)_init;
- (void)deleteLegacyCache;
- (void)deleteObsoleteVersionsInCache:(id)cache currentVersion:(unint64_t)version;
- (void)imageWithPath:(uint64_t)path;
- (void)initCaches;
@end

@implementation AVTResourceLocator

- (id)_init
{
  v69 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = AVTResourceLocator;
  v2 = [(AVTResourceLocator *)&v57 init];
  if (!v2)
  {
LABEL_18:
    v51 = *MEMORY[0x1E69E9840];
    return v2;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  imageCache = v2->_imageCache;
  v2->_imageCache = dictionary;

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v5 resourceURL];
  p_resourcesURL = &v2->_resourcesURL;
  resourcesURL = v2->_resourcesURL;
  v2->_resourcesURL = resourceURL;

  v9 = v2->_resourcesURL;
  if (!v9)
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AVTResourceLocator *)v10 _init:v11];
    }

    v9 = *p_resourcesURL;
  }

  path = [v9 path];
  v19 = [path containsString:@"AvatarKit.framework"];

  if (v19)
  {
LABEL_13:
    v30 = v2->_resourcesURL;
    v31 = [(NSURL *)v30 URLByAppendingPathComponent:@"environment" isDirectory:1];
    environmentResourcesURL = v2->_environmentResourcesURL;
    v2->_environmentResourcesURL = v31;

    v33 = [(NSURL *)v30 URLByAppendingPathComponent:@"animoji" isDirectory:1];
    animojiResourcesURL = v2->_animojiResourcesURL;
    v2->_animojiResourcesURL = v33;

    v35 = [(NSURL *)v30 URLByAppendingPathComponent:@"memoji" isDirectory:1];
    memojiResourcesURL = v2->_memojiResourcesURL;
    v2->_memojiResourcesURL = v35;

    v37 = [(NSURL *)v30 URLByAppendingPathComponent:@"stickers" isDirectory:1];
    stickerResourcesURL = v2->_stickerResourcesURL;
    v2->_stickerResourcesURL = v37;

    v39 = [(NSURL *)v30 URLByAppendingPathComponent:@"poses" isDirectory:1];
    poseResourcesURL = v2->_poseResourcesURL;
    v2->_poseResourcesURL = v39;

    v41 = [(NSURL *)v2->_memojiResourcesURL URLByAppendingPathComponent:@"assets" isDirectory:1];
    memojiAssetsURL = v2->_memojiAssetsURL;
    v2->_memojiAssetsURL = v41;

    if (!v2->_memojiAssetsURL)
    {
      v43 = avt_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(AVTResourceLocator *)v43 _init:v44];
      }
    }

    [(AVTResourceLocator *)v2 initCaches];

    goto LABEL_18;
  }

  v20 = avt_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(AVTResourceLocator *)&v2->_resourcesURL _init];
  }

  if (!AVTLogAllowsInternalCrash())
  {
    v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PrivateFrameworks/AvatarKit.framework" isDirectory:1];
    v22 = *p_resourcesURL;
    *p_resourcesURL = v21;

    v23 = avt_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(AVTResourceLocator *)&v2->_resourcesURL _init:v23];
    }

    goto LABEL_13;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v53 = v2->_resourcesURL;
  v54 = objc_opt_class();
  v55 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundlePath = [v55 bundlePath];
  v58 = 138412802;
  v59 = v53;
  v60 = 2112;
  v61 = v54;
  v62 = 2112;
  v63 = bundlePath;
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)sharedResourceLocator
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVTResourceLocator_sharedResourceLocator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (sharedResourceLocator_once != -1)
  {
    dispatch_once(&sharedResourceLocator_once, block);
  }

  v1 = sharedResourceLocator_sSharedResourceLocator;

  return v1;
}

uint64_t __43__AVTResourceLocator_sharedResourceLocator__block_invoke(uint64_t a1)
{
  sharedResourceLocator_sSharedResourceLocator = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x1EEE66BB8]();
}

- (void)initCaches
{
  v8 = *MEMORY[0x1E69E9840];
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __32__AVTResourceLocator_initCaches__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteLegacyCache];
  [*(a1 + 32) deleteObsoleteVersionsInCache:*(a1 + 40) currentVersion:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 deleteObsoleteVersionsInCache:v3 currentVersion:v4];
}

- (void)deleteObsoleteVersionsInCache:(id)cache currentVersion:(unint64_t)version
{
  v55 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v34 = cacheCopy;
  v6 = [defaultManager contentsOfDirectoryAtURL:cacheCopy includingPropertiesForKeys:0 options:0 error:0];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v37 = *v45;
    v9 = *MEMORY[0x1E695DB50];
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        lastPathComponent = [v11 lastPathComponent];
        if (![lastPathComponent hasPrefix:@"AvatarKit-"])
        {
          v15 = avt_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = lastPathComponent;
            _os_log_error_impl(&dword_1BB472000, v15, OS_LOG_TYPE_ERROR, "Error: [Cache] Unknown cache folder %@", buf, 0xCu);
          }

LABEL_12:
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v53 = v9;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
          v18 = [defaultManager2 enumeratorAtURL:v11 includingPropertiesForKeys:v17 options:0 errorHandler:0];

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = 0;
            v23 = *v41;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v40 + 1) + 8 * i);
                v39 = 0;
                [v25 getResourceValue:&v39 forKey:v9 error:0];
                v22 += [v39 unsignedLongLongValue];
              }

              v21 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v21);
          }

          else
          {
            v22 = 0;
          }

          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          v38 = 0;
          v27 = [defaultManager3 removeItemAtURL:v11 error:&v38];
          v28 = v38;

          if (v27)
          {
            v29 = [MEMORY[0x1E696AAF0] stringFromByteCount:v22 countStyle:0];
            path2 = avt_default_log();
            if (os_log_type_enabled(path2, OS_LOG_TYPE_DEFAULT))
            {
              path = [v11 path];
              *buf = 138412546;
              v49 = v29;
              v50 = 2112;
              v51 = path;
              _os_log_impl(&dword_1BB472000, path2, OS_LOG_TYPE_DEFAULT, "[Cache] Reclaimed %@ from obsolete cache: %@", buf, 0x16u);
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          v29 = avt_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            path2 = [v11 path];
            path = [v28 description];
            *buf = 138412546;
            v49 = path2;
            v50 = 2112;
            v51 = path;
            _os_log_error_impl(&dword_1BB472000, v29, OS_LOG_TYPE_ERROR, "Error: [Cache] Failed to delete %@ with error %@", buf, 0x16u);
LABEL_24:

LABEL_25:
          }

          goto LABEL_28;
        }

        v13 = [lastPathComponent substringFromIndex:10];
        v14 = AVTAvatarKitSnapshotVersionNumberFromString(v13);

        if (v14 < version)
        {
          goto LABEL_12;
        }

LABEL_28:

        ++v10;
      }

      while (v10 != v8);
      v32 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      v8 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)deleteLegacyCache
{
  v11 = *MEMORY[0x1E69E9840];
  path = [self path];
  v10 = [a2 description];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (id)urlForFrameworkResourceAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[2] URLByAppendingPathComponent:a2 isDirectory:path];
    v3 = vars8;
  }

  return self;
}

- (id)pathForEnvironmentResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    v3 = *(v2 + 24);
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForEnvironmentResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    v3 = *(v2 + 24);
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForAnimojiResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    v3 = *(v2 + 32);
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForAnimojiResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    v3 = *(v2 + 32);
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)urlForMemojiAssetAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[8] URLByAppendingPathComponent:a2 isDirectory:path];
    v3 = vars8;
  }

  return self;
}

- (id)urlForMemojiResourceAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[5] URLByAppendingPathComponent:a2 isDirectory:path];
    v3 = vars8;
  }

  return self;
}

- (id)pathForMemojiResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    v3 = *(v2 + 40);
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForMemojiResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    v3 = *(v2 + 40);
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)urlForStickerResourceAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[6] URLByAppendingPathComponent:a2 isDirectory:path];
    v3 = vars8;
  }

  return self;
}

- (id)pathForStickerResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    v3 = *(v2 + 48);
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForStickerResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    v3 = *(v2 + 48);
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForPoseResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    v3 = *(v2 + 56);
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForPoseResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    v3 = *(v2 + 56);
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (void)imageWithPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    ImageAtIndex = [*(path + 8) objectForKeyedSubscript:v3];

    if (!ImageAtIndex)
    {
      v6 = +[AVTResourceLocator sharedResourceLocator];
      lastPathComponent = [v3 lastPathComponent];
      v8 = [AVTResourceLocator pathForMemojiResource:v6 ofType:? isDirectory:?];

      if (v8 && ([MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0], v9 = objc_claimAutoreleasedReturnValue(), v10 = CGImageSourceCreateWithURL(v9, 0), v9, v10))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
        [*(path + 8) setObject:ImageAtIndex forKeyedSubscript:v3];
        if (ImageAtIndex)
        {
          CGImageRelease(ImageAtIndex);
        }

        CFRelease(v10);
      }

      else
      {
        ImageAtIndex = 0;
      }
    }
  }

  else
  {
    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

- (id)rootCacheURL
{
  if (self)
  {
    self = self[9];
    v1 = vars8;
  }

  return self;
}

- (id)subdivDataCacheURL
{
  if (self)
  {
    self = self[10];
    v1 = vars8;
  }

  return self;
}

- (void)_init
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

@end
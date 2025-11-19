@interface BSUIMappedImageCache
- (BSUIMappedImageCache)initWithName:(id)a3 options:(unint64_t)a4;
- (BSUIMappedImageCache)initWithUniqueIdentifier:(id)a3;
- (BSUIMappedImageCache)initWithUniqueIdentifier:(id)a3 options:(id)a4;
- (id)_imageForKey:(id)a3 withCPBitmapReadFlags:(int)a4 generatingIfNecessaryWithBlock:(id)a5;
- (id)_imageForKey:(int)a3 withCPBitmapReadFlags:(void *)a4 generatingIfNecessaryWithBlock:(void *)a5 completion:;
- (id)allKeys;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)imageForKey:(id)a3;
- (id)imageForKey:(id)a3 generatingIfNecessaryWithBlock:(id)a4;
- (id)imageForKey:(id)a3 generatingIfNecessaryWithBlock:(id)a4 completion:(id)a5;
- (id)succinctDescription;
- (void)_noteExternalChangeForKey:(id)a3;
- (void)_setImage:(void *)a3 forKey:(uint64_t)a4 withPersistenceOptions:(int)a5 andCPBitmapReadFlags:(void *)a6 completion:;
- (void)_warmupImageForKey:(id)a3;
- (void)dealloc;
- (void)releaseRecoverableResources;
- (void)removeAllImagesWithCompletion:(id)a3;
- (void)removeImageForKey:(id)a3 withCompletion:(id)a4;
@end

@implementation BSUIMappedImageCache

- (BSUIMappedImageCache)initWithName:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ((v4 & 2) != 0)
  {
    [MEMORY[0x1E698E728] pathProviderForSystemContainerForCurrentProcess];
  }

  else
  {
    [MEMORY[0x1E698E728] pathProviderForCurrentContainer];
  }
  v7 = ;
  v8 = [BSUIMappedImageCacheOptions optionsWithContainerPathProvider:v7];
  v9 = [(BSUIMappedImageCache *)self initWithUniqueIdentifier:v6 options:v8];

  return v9;
}

- (BSUIMappedImageCache)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E728] pathProviderForCurrentContainer];
  v6 = [BSUIMappedImageCacheOptions optionsWithContainerPathProvider:v5];

  v7 = [(BSUIMappedImageCache *)self initWithUniqueIdentifier:v4 options:v6];
  return v7;
}

- (BSUIMappedImageCache)initWithUniqueIdentifier:(id)a3 options:(id)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"uniqueIdentifier"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v61 = NSStringFromSelector(a2);
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      *buf = 138544642;
      v84 = v61;
      v85 = 2114;
      v86 = v63;
      v87 = 2048;
      *v88 = self;
      *&v88[8] = 2114;
      *&v88[10] = @"BSUIMappedImageCache.m";
      v89 = 1024;
      v90 = 205;
      v91 = 2114;
      v92 = v60;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v64 = v60;
    [v60 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D3F7ECLL);
  }

  if (!v8)
  {
    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"options"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v66 = NSStringFromSelector(a2);
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      *buf = 138544642;
      v84 = v66;
      v85 = 2114;
      v86 = v68;
      v87 = 2048;
      *v88 = self;
      *&v88[8] = 2114;
      *&v88[10] = @"BSUIMappedImageCache.m";
      v89 = 1024;
      v90 = 206;
      v91 = 2114;
      v92 = v65;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v69 = v65;
    [v65 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D3F8F0);
  }

  v82.receiver = self;
  v82.super_class = BSUIMappedImageCache;
  v10 = [(BSUIMappedImageCache *)&v82 init];
  if (v10)
  {
    v11 = [v7 copy];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v11;

    v13 = v10->_uniqueIdentifier;
    v14 = v9;
    objc_opt_self();
    if (!v13)
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"uniqueIdentifier"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSUIMappedImageCacheRegistry acquireUniqueIdentifier:withOptions:]"];
        *buf = 138544130;
        v84 = v71;
        v85 = 2114;
        v86 = @"BSUIMappedImageCache.m";
        v87 = 1024;
        *v88 = 113;
        *&v88[4] = 2114;
        *&v88[6] = v70;
        _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v72 = v70;
      [v70 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A2D3F9C8);
    }

    v15 = [v14 containerPathProvider];
    v16 = [v15 cachesPath];

    if (!v16)
    {
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid cachesPath for BSUIMappedImageCache %@", v13];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSUIMappedImageCacheRegistry acquireUniqueIdentifier:withOptions:]"];
        *buf = 138544130;
        v84 = v74;
        v85 = 2114;
        v86 = @"BSUIMappedImageCache.m";
        v87 = 1024;
        *v88 = 116;
        *&v88[4] = 2114;
        *&v88[6] = v73;
        _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v75 = v73;
      [v73 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A2D3FA98);
    }

    os_unfair_lock_lock(&_MergedGlobals_9);
    if (qword_1ED61C7B0)
    {
      v17 = [qword_1ED61C7B0 objectForKey:v16];
      if (v17)
      {
        goto LABEL_15;
      }

      v18 = [[BSUIMappedImageCacheRegistry alloc] _initWithCachesPath:v16];
      if (v18)
      {
        v19 = v18[1];
      }

      else
      {
        v19 = 0;
      }

      [qword_1ED61C7B0 setObject:v18 forKey:v19];
    }

    else
    {
      v20 = [[BSUIMappedImageCacheRegistry alloc] _initWithCachesPath:v16];
      v18 = v20;
      v21 = MEMORY[0x1E695DF90];
      if (v20)
      {
        v22 = v20[1];
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v24 = [v21 dictionaryWithObject:v18 forKey:v23];
      v25 = qword_1ED61C7B0;
      qword_1ED61C7B0 = v24;
    }

    v17 = v18;
    if (!v18)
    {
      v76 = MEMORY[0x1E696AEC0];
      v77 = [v14 containerPathProvider];
      v78 = [v76 stringWithFormat:@"must have a registry : uniqueIdentifier='%@' cachesPath='%@' (provider=%@)", v13, v16, v77];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSUIMappedImageCacheRegistry acquireUniqueIdentifier:withOptions:]"];
        *buf = 138544130;
        v84 = v79;
        v85 = 2114;
        v86 = @"BSUIMappedImageCache.m";
        v87 = 1024;
        *v88 = 132;
        *&v88[4] = 2114;
        *&v88[6] = v78;
        _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v80 = v78;
      [v78 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A2D3FB84);
    }

LABEL_15:
    v26 = *(v17 + 24);
    if (v26)
    {
      if ([v26 containsObject:v13])
      {
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a cache with uniqueIdentifier='%@' cachesPath='%@' already exists", v13, v16];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSUIMappedImageCacheRegistry acquireUniqueIdentifier:withOptions:]"];
          *buf = 138544130;
          v84 = v58;
          v85 = 2114;
          v86 = @"BSUIMappedImageCache.m";
          v87 = 1024;
          *v88 = 138;
          *&v88[4] = 2114;
          *&v88[6] = v57;
          _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        v59 = v57;
        [v57 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A2D3F6E8);
      }

      [*(v17 + 24) addObject:v13];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFA8] setWithObject:v13];
      v28 = *(v17 + 24);
      *(v17 + 24) = v27;
    }

    os_unfair_lock_unlock(&_MergedGlobals_9);

    registry = v10->_registry;
    v10->_registry = v17;

    v30 = v10->_registry;
    if (v30)
    {
      v30 = v30->_cachesPath;
    }

    v31 = v30;
    v32 = v10->_uniqueIdentifier;
    v33 = [(BSUIMappedImageCacheRegistry *)v31 path];
    v34 = [v33 stringByAppendingPathComponent:@"MappedImageCache"];
    v35 = [v34 stringByAppendingPathComponent:v32];

    v36 = [v35 copy];
    path = v10->_path;
    v10->_path = v36;

    v38 = v10->_path;
    if (v38)
    {
      v39 = objc_opt_new();
      v40 = v10->_path;
      v81 = 0;
      v41 = [v39 createDirectoryAtPath:v40 withIntermediateDirectories:1 attributes:0 error:&v81];
      v42 = v81;

      if (v41)
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.baseboardui.mappedImageCache:%@", v10->_uniqueIdentifier];
        v44 = v43;
        [v43 UTF8String];
        v45 = BSDispatchQueueCreateWithQualityOfService();
        queue = v10->_queue;
        v10->_queue = v45;

        v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
        queue_keysToImagesOrFutures = v10->_queue_keysToImagesOrFutures;
        v10->_queue_keysToImagesOrFutures = v47;

        v49 = dispatch_get_global_queue(9, 0);
        calloutQueue = v10->_calloutQueue;
        v10->_calloutQueue = v49;

        goto LABEL_24;
      }

      v38 = v10->_path;
    }

    else
    {
      v42 = 0;
    }

    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't create directory at %@ with error %@", v38, v42];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138544642;
      v84 = v53;
      v85 = 2114;
      v86 = v55;
      v87 = 2048;
      *v88 = v10;
      *&v88[8] = 2114;
      *&v88[10] = @"BSUIMappedImageCache.m";
      v89 = 1024;
      v90 = 221;
      v91 = 2114;
      v92 = v52;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v56 = v52;
    [v52 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D3F618);
  }

LABEL_24:

  return v10;
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  registry = self->_registry;
  v4 = self->_uniqueIdentifier;
  v5 = v4;
  if (registry)
  {
    if (!v4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"uniqueIdentifier"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSUIMappedImageCacheRegistry releaseUniqueIdentifier:]"];
        *buf = 138544130;
        v25 = v12;
        v26 = 2114;
        v27 = @"BSUIMappedImageCache.m";
        v28 = 1024;
        v29 = 146;
        v30 = 2114;
        v31 = v11;
        _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v13 = v11;
      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A2D3FF68);
    }

    os_unfair_lock_lock(&_MergedGlobals_9);
    if (([(NSMutableSet *)registry->_uniqueIdentifiers containsObject:v5]& 1) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot release an identifier we haven't acquired : uniqueIdentifier='%@' cachesPath='%@' : acquired_identifiers=%@", v5, registry->_cachesPath, registry->_uniqueIdentifiers];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSUIMappedImageCacheRegistry releaseUniqueIdentifier:]"];
        *buf = 138544130;
        v25 = v15;
        v26 = 2114;
        v27 = @"BSUIMappedImageCache.m";
        v28 = 1024;
        v29 = 150;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v16 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A2D40044);
    }

    v6 = [(NSMutableSet *)registry->_uniqueIdentifiers count];
    uniqueIdentifiers = registry->_uniqueIdentifiers;
    if (v6 == 1)
    {
      registry->_uniqueIdentifiers = 0;

      v8 = [qword_1ED61C7B0 objectForKey:registry->_cachesPath];

      if (v8 != registry)
      {
        v17 = MEMORY[0x1E696AEC0];
        cachesPath = registry->_cachesPath;
        v19 = [qword_1ED61C7B0 keyEnumerator];
        v20 = [v17 stringWithFormat:@"cannot release an identifier we haven't acquired : uniqueIdentifier='%@' cachesPath='%@' : acquired_paths=%@", v5, cachesPath, v19];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSUIMappedImageCacheRegistry releaseUniqueIdentifier:]"];
          *buf = 138544130;
          v25 = v21;
          v26 = 2114;
          v27 = @"BSUIMappedImageCache.m";
          v28 = 1024;
          v29 = 153;
          v30 = 2114;
          v31 = v20;
          _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        v22 = v20;
        [v20 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A2D40134);
      }

      v9 = [qword_1ED61C7B0 count];
      v10 = qword_1ED61C7B0;
      if (v9 == 1)
      {
        qword_1ED61C7B0 = 0;
      }

      else
      {
        [qword_1ED61C7B0 removeObjectForKey:registry->_cachesPath];
      }
    }

    else
    {
      [(NSMutableSet *)uniqueIdentifiers removeObject:v5];
    }

    os_unfair_lock_unlock(&_MergedGlobals_9);
  }

  v23.receiver = self;
  v23.super_class = BSUIMappedImageCache;
  [(BSUIMappedImageCache *)&v23 dealloc];
}

- (id)_imageForKey:(int)a3 withCPBitmapReadFlags:(void *)a4 generatingIfNecessaryWithBlock:(void *)a5 completion:
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    BSDispatchQueueAssertNot();
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy_;
    v54 = __Block_byref_object_dispose_;
    v55 = 0;
    if (v9)
    {
      v12 = objc_autoreleasePoolPush();
      v44 = 0;
      v45 = &v44;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy_;
      v48 = __Block_byref_object_dispose_;
      v49 = 0;
      v13 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __101__BSUIMappedImageCache__imageForKey_withCPBitmapReadFlags_generatingIfNecessaryWithBlock_completion___block_invoke;
      block[3] = &unk_1E76B7A68;
      block[4] = a1;
      v14 = v9;
      v39 = v14;
      v41 = &v50;
      v43 = a3;
      v15 = v10;
      v40 = v15;
      v42 = &v44;
      dispatch_sync(v13, block);
      if (v45[5])
      {
        v37 = 0;
        v16 = (*(v15 + 2))(v15, &v37);
        v17 = v45[5];
        if (v16)
        {
          v29 = v12;
          v18 = v37;
          v19 = [(BSUIMappedImageCacheRegistry *)*(a1 + 16) tmpPath];
          v20 = _workBlockGenerator(v17, v16, 1, v14, v18, a3, v19, *(a1 + 24), *(a1 + 32), *(a1 + 56), *(a1 + 40), v11);
          [(BSUIMappedImageCacheFuture *)v17 submitWorkBlock:v20];

          if (v37)
          {
            v25 = v51;
            v26 = v16;
            v22 = v25[5];
            v25[5] = v26;
          }

          else
          {
            v21 = [(BSUIMappedImageCacheFuture *)v45[5] cacheImage];
            v22 = v51[5];
            v51[5] = v21;
          }

          v12 = v29;
        }

        else
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __101__BSUIMappedImageCache__imageForKey_withCPBitmapReadFlags_generatingIfNecessaryWithBlock_completion___block_invoke_2;
          v35[3] = &unk_1E76B7A90;
          v36 = v11;
          [(BSUIMappedImageCacheFuture *)v17 submitWorkBlock:v35];
          v22 = v36;
        }
      }

      else if (v11)
      {
        v24 = *(a1 + 56);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __101__BSUIMappedImageCache__imageForKey_withCPBitmapReadFlags_generatingIfNecessaryWithBlock_completion___block_invoke_3;
        v32[3] = &unk_1E76B7AB8;
        v33 = v11;
        v34 = &v50;
        dispatch_async(v24, v32);
      }

      _Block_object_dispose(&v44, 8);
      objc_autoreleasePoolPop(v12);
    }

    else if (v11)
    {
      v23 = *(a1 + 56);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __101__BSUIMappedImageCache__imageForKey_withCPBitmapReadFlags_generatingIfNecessaryWithBlock_completion___block_invoke_4;
      v30[3] = &unk_1E76B7AE0;
      v31 = v11;
      dispatch_async(v23, v30);
    }

    v27 = v51[5];
    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __101__BSUIMappedImageCache__imageForKey_withCPBitmapReadFlags_generatingIfNecessaryWithBlock_completion___block_invoke(uint64_t a1)
{
  v19 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [(BSUIMappedImageCacheFuture *)v19 cacheImage];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(*(a1 + 32) + 40);
    if (v5)
    {
      [v6 setObject:v5 forKey:*(a1 + 40)];
    }

    else
    {
      [v6 removeObjectForKey:*(a1 + 40)];
      [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
    }

    goto LABEL_11;
  }

  if (v19)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = v19;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
LABEL_9:

    goto LABEL_11;
  }

  v10 = __pathForKeyAndExtension(*(*(a1 + 32) + 24), *(a1 + 40), @"cpbitmap");
  v11 = _readCPBitmapImageFromPathWithOptions(v10);

  if (v11 || (v12 = *(a1 + 72), __pathForKeyAndExtension(*(*(a1 + 32) + 24), *(a1 + 40), @"surface"), v13 = objc_claimAutoreleasedReturnValue(), [BSUIMappedSurfaceImage mappedSurfaceImageFromPath:v13 loadEagerly:(v12 >> 1) & 1], v11 = objc_claimAutoreleasedReturnValue(), v13, v11))
  {
    [*(*(a1 + 32) + 40) setObject:v11 forKey:*(a1 + 40)];
    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v11;
    v9 = v11;

    goto LABEL_9;
  }

LABEL_11:
  if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 48))
  {
    v16 = objc_alloc_init(BSUIMappedImageCacheFuture);
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(*(a1 + 32) + 40) setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 40)];
    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  }
}

void __101__BSUIMappedImageCache__imageForKey_withCPBitmapReadFlags_generatingIfNecessaryWithBlock_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v4[2](v4, 0);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 1, 0);
  }
}

- (void)_setImage:(void *)a3 forKey:(uint64_t)a4 withPersistenceOptions:(int)a5 andCPBitmapReadFlags:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (a1)
  {
    BSDispatchQueueAssertNot();
    if (v11 && v12)
    {
      v14 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __96__BSUIMappedImageCache__setImage_forKey_withPersistenceOptions_andCPBitmapReadFlags_completion___block_invoke;
      block[3] = &unk_1E76B7B08;
      block[4] = a1;
      v20 = v12;
      v21 = v11;
      v23 = a4;
      v24 = a5;
      v22 = v13;
      dispatch_async_and_wait(v14, block);

      v15 = v20;
LABEL_7:

      goto LABEL_8;
    }

    if (v13)
    {
      v16 = *(a1 + 56);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __96__BSUIMappedImageCache__setImage_forKey_withPersistenceOptions_andCPBitmapReadFlags_completion___block_invoke_2;
      v17[3] = &unk_1E76B7AE0;
      v18 = v13;
      dispatch_async(v16, v17);
      v15 = v18;
      goto LABEL_7;
    }
  }

LABEL_8:
}

void __96__BSUIMappedImageCache__setImage_forKey_withPersistenceOptions_andCPBitmapReadFlags_completion___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(BSUIMappedImageCacheFuture);
  [*(*(a1 + 32) + 40) setObject:? forKey:?];
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = [(BSUIMappedImageCacheRegistry *)*(*(a1 + 32) + 16) tmpPath];
  v7 = _workBlockGenerator(v8, v2, 0, v3, v4, v5, v6, *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 56), *(*(a1 + 32) + 40), *(a1 + 56));
  [(BSUIMappedImageCacheFuture *)v8 submitWorkBlock:v7];
}

- (id)imageForKey:(id)a3
{
  v3 = [(BSUIMappedImageCache *)self _imageForKey:a3 withCPBitmapReadFlags:0 generatingIfNecessaryWithBlock:0 completion:0];

  return v3;
}

- (id)imageForKey:(id)a3 generatingIfNecessaryWithBlock:(id)a4
{
  v4 = [(BSUIMappedImageCache *)self _imageForKey:a3 withCPBitmapReadFlags:0 generatingIfNecessaryWithBlock:a4 completion:0];

  return v4;
}

- (id)imageForKey:(id)a3 generatingIfNecessaryWithBlock:(id)a4 completion:(id)a5
{
  v5 = [(BSUIMappedImageCache *)self _imageForKey:a3 withCPBitmapReadFlags:0 generatingIfNecessaryWithBlock:a4 completion:a5];

  return v5;
}

- (void)removeImageForKey:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertNot();
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__BSUIMappedImageCache_removeImageForKey_withCompletion___block_invoke;
    block[3] = &unk_1E76B7B30;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }

  else if (v7)
  {
    dispatch_async(self->_calloutQueue, v7);
  }
}

void __57__BSUIMappedImageCache_removeImageForKey_withCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v5 = objc_opt_new();
  v2 = __pathForKeyAndExtension(*(*(a1 + 32) + 24), *(a1 + 40), @"cpbitmap");
  [v5 removeItemAtPath:v2 error:0];

  v3 = __pathForKeyAndExtension(*(*(a1 + 32) + 24), *(a1 + 40), @"surface");
  [v5 removeItemAtPath:v3 error:0];

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_async(*(*(a1 + 32) + 56), v4);
  }
}

- (id)allKeys
{
  BSDispatchQueueAssertNot();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__BSUIMappedImageCache_allKeys__block_invoke;
  v6[3] = &unk_1E76B7B80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__BSUIMappedImageCache_allKeys__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DFA8]);
    v4 = [*(*(a1 + 32) + 40) allKeys];
    v5 = [v3 initWithArray:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    v8 = objc_opt_new();
    v9 = [v8 contentsOfDirectoryAtPath:*(*(a1 + 32) + 24) error:0];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __31__BSUIMappedImageCache_allKeys__block_invoke_2;
    v13[3] = &unk_1E76B7B58;
    v13[4] = *(a1 + 32);
    [v9 enumerateObjectsUsingBlock:v13];

    v2 = *(*(a1 + 32) + 48);
  }

  v10 = [v2 allObjects];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __31__BSUIMappedImageCache_allKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 pathExtension];
  if (([v3 isEqualToString:@"cpbitmap"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"surface"))
  {
    v4 = [v6 stringByDeletingPathExtension];
    v5 = [v4 stringByRemovingPercentEncoding];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [*(*(a1 + 32) + 48) addObject:v5];
  }
}

- (void)releaseRecoverableResources
{
  BSDispatchQueueAssertNot();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__BSUIMappedImageCache_releaseRecoverableResources__block_invoke;
  block[3] = &unk_1E76B7BA8;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
}

void __51__BSUIMappedImageCache_releaseRecoverableResources__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

- (void)removeAllImagesWithCompletion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__BSUIMappedImageCache_removeAllImagesWithCompletion___block_invoke;
  v7[3] = &unk_1E76B7BD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __54__BSUIMappedImageCache_removeAllImagesWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeAllObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  v3 = objc_opt_new();
  [v3 removeItemAtPath:*(*(a1 + 32) + 24) error:0];
  [v3 createDirectoryAtPath:*(*(a1 + 32) + 24) withIntermediateDirectories:1 attributes:0 error:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_async(*(*(a1 + 32) + 56), v2);
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSUIMappedImageCache *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [v4 appendObject:self->_path withName:@"path"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BSUIMappedImageCache *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = [(BSUIMappedImageCache *)self descriptionBuilderWithMultilinePrefix:?];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(BSUIMappedImageCache *)self allKeys];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(BSUIMappedImageCache *)self imageForKey:v10];
        v12 = v11;
        if (!v11)
        {
          v3 = [MEMORY[0x1E695DFB0] null];
          v12 = v3;
        }

        [v5 setObject:v12 forKey:v10];
        if (!v11)
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v16 appendDictionarySection:v5 withName:@"Contents" skipIfEmpty:0];
  v13 = [v16 build];

  return v13;
}

- (id)_imageForKey:(id)a3 withCPBitmapReadFlags:(int)a4 generatingIfNecessaryWithBlock:(id)a5
{
  v5 = [(BSUIMappedImageCache *)self _imageForKey:a3 withCPBitmapReadFlags:a4 generatingIfNecessaryWithBlock:a5 completion:0];

  return v5;
}

- (void)_warmupImageForKey:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertNot();
  if (v4)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__BSUIMappedImageCache__warmupImageForKey___block_invoke;
    v6[3] = &unk_1E76B7BF8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

void __43__BSUIMappedImageCache__warmupImageForKey___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v3 = __pathForKeyAndExtension(*(*(a1 + 32) + 24), *(a1 + 40), @"cpbitmap");
  [v2 bs_safeAddObject:v3];

  v4 = __pathForKeyAndExtension(*(*(a1 + 32) + 24), *(a1 + 40), @"surface");
  [v2 bs_safeAddObject:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    v8 = MEMORY[0x1E69E9AC8];
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
        v11 = MappedDataFromPath;
        if (MappedDataFromPath)
        {
          v12 = MappedDataFromPath;
          v13 = [v11 bytes];
          v14 = [v11 length];
          if (v13)
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = 0;
            do
            {
              v16 += *v8;
            }

            while (v16 < v14);
          }
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)_noteExternalChangeForKey:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertNot();
  if (v4)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__BSUIMappedImageCache__noteExternalChangeForKey___block_invoke;
    v6[3] = &unk_1E76B7BF8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

void __50__BSUIMappedImageCache__noteExternalChangeForKey___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

@end
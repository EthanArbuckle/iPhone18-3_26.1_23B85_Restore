@interface BSUIMappedImageCacheRegistry
- (id)_initWithCachesPath:(id)a1;
- (id)tmpPath;
@end

@implementation BSUIMappedImageCacheRegistry

- (id)tmpPath
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v2 = *(a1 + 16);
    if (!v2)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [*(a1 + 8) URLByAppendingPathComponent:@"MappedImageCache" isDirectory:1];
      v5 = objc_opt_new();
      v27 = 0;
      v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v27];
      v7 = v27;

      if ((v6 & 1) == 0)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't create directory at %@ with error %@", v4, v7];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = NSStringFromSelector(sel_tmpPath);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *v32 = 138544642;
          v33 = v22;
          v34 = 2114;
          v35 = v24;
          v36 = 2048;
          v37 = a1;
          v38 = 2114;
          v39 = @"BSUIMappedImageCache.m";
          v40 = 1024;
          v41 = 94;
          v42 = 2114;
          v43 = v21;
          _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v32, 0x3Au);
        }

        v25 = v21;
        [v21 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A2D383A4);
      }

      v8 = v4;
      [v4 fileSystemRepresentation];
      v9 = _dirhelper_relative();
      if (v9)
      {
        v10 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v9 isDirectory:1 relativeToURL:0];
        v11 = [v10 path];
        v12 = [v11 copy];
        v13 = *(a1 + 16);
        *(a1 + 16) = v12;

        v14 = BSLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 8);
          *buf = 138412546;
          v29 = v4;
          v30 = 2112;
          v31 = v15;
          _os_log_impl(&dword_1A2D36000, v14, OS_LOG_TYPE_DEFAULT, "BSUIMappedImageCache found relative tmpDir=%@ for %@", buf, 0x16u);
        }
      }

      else
      {
        v16 = NSTemporaryDirectory();
        v17 = [v16 copy];
        v18 = *(a1 + 16);
        *(a1 + 16) = v17;

        v14 = BSLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v26 = *(a1 + 16);
          *buf = 138412546;
          v29 = v4;
          v30 = 2112;
          v31 = v26;
          _os_log_fault_impl(&dword_1A2D36000, v14, OS_LOG_TYPE_FAULT, "BSUIMappedImageCache failed to get relative tmpDir from dirhelper for %@ : falling back to NSTemporaryDirectory=%@", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v3);
      v2 = *(a1 + 16);
    }

    v19 = v2;
    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_initWithCachesPath:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = BSUIMappedImageCacheRegistry;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = *(a1 + 1);
      *(a1 + 1) = v4;

      v6 = *(a1 + 2);
      *(a1 + 2) = 0;

      *(a1 + 8) = 0;
      v7 = *(a1 + 3);
      *(a1 + 3) = 0;
    }
  }

  return a1;
}

@end
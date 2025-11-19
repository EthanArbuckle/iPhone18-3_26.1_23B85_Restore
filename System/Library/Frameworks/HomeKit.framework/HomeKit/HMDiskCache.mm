@interface HMDiskCache
- (BOOL)storeCachedObjects:(id)a3 forCacheName:(id)a4;
- (HMDiskCache)initWithCachePath:(id)a3;
- (id)_cachePathForCacheName:(id)a1;
- (id)loadCachedObjectsForCacheWithName:(id)a3;
@end

@implementation HMDiskCache

- (id)loadCachedObjectsForCacheWithName:(id)a3
{
  v45[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMDiskCache *)self _cachePathForCacheName:v4];
  v38 = 0;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v38];

  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v13;
      v41 = 2112;
      v42 = v5;
      v14 = "%{public}@The disk cache location being loaded (%@) does not exist yet";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v9);
    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_24;
  }

  v8 = v38;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v13;
      v41 = 2112;
      v42 = v5;
      v14 = "%{public}@The disk cache location being loaded (%@) is not a file";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v18;
    v41 = 2112;
    v42 = v5;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@The disk cache location exists at %@, loading from disk", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  v20 = MEMORY[0x1E695DFD8];
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v45[2] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v22 = [v20 setWithArray:v21];

  v37 = 0;
  v23 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v22 fromData:v19 error:&v37];
  v24 = v37;
  v25 = v24;
  if (!v23 || v24)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v10;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v34;
      v41 = 2112;
      v42 = v5;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@The disk cache location being loaded (%@) could not be unarchived: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v17 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v26 = v23;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (isKindOfClass)
    {
      v29 = v26;
    }

    else
    {
      v29 = MEMORY[0x1E695E0F8];
    }

    v30 = v28;

    v17 = v29;
  }

LABEL_24:
  v35 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_cachePathForCacheName:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a2;
    v5 = [v2 cachePath];
    v2 = [v3 stringWithFormat:@"%@/_HMDiskCache_%@", v5, v4];
  }

  return v2;
}

- (BOOL)storeCachedObjects:(id)a3 forCacheName:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDiskCache *)self _cachePathForCacheName:v7];
  v50 = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [(HMDiskCache *)self cachePath];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v50];

  if (!v11)
  {
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [(HMDiskCache *)self cachePath];
    v49 = 0;
    v20 = [v18 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v49];
    v21 = v49;

    if ((v20 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        [(HMDiskCache *)v23 cachePath];
        v27 = v26 = v8;
        *buf = 138543874;
        v52 = v25;
        v53 = 2112;
        v54 = v27;
        v55 = 2112;
        v56 = v21;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to make disk cache directory %@ (%@).", buf, 0x20u);

        v8 = v26;
      }

      objc_autoreleasePoolPop(v22);
    }

LABEL_11:
    v48 = 0;
    v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v48];
    v29 = v48;
    if (v29 || !v28)
    {
      v17 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138544130;
        v52 = v43;
        v53 = 2112;
        v54 = v6;
        v55 = 2112;
        v56 = v8;
        v57 = 2112;
        v58 = v29;
        _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode cache object (%@) for disk cache path: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v17);
      LOBYTE(v17) = 0;
      goto LABEL_23;
    }

    v47 = 0;
    v30 = v8;
    LODWORD(v17) = [v28 writeToFile:v8 options:1 error:&v47];
    v31 = v47;
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    v35 = v34;
    if (v17)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v36 = v46 = v32;
        *buf = 138543874;
        v52 = v36;
        v53 = 2112;
        v54 = v6;
        v55 = 2112;
        v56 = v30;
        v37 = "%{public}@Wrote cache object (%@) to disk cache at path: %@";
        v38 = v35;
        v39 = OS_LOG_TYPE_INFO;
        v40 = 32;
LABEL_21:
        _os_log_impl(&dword_19BB39000, v38, v39, v37, buf, v40);

        v32 = v46;
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v36 = v46 = v32;
      *buf = 138544130;
      v52 = v36;
      v53 = 2112;
      v54 = v6;
      v55 = 2112;
      v56 = v30;
      v57 = 2112;
      v58 = v31;
      v37 = "%{public}@Failed to cache object (%@) for disk cache path: %@ with error %@";
      v38 = v35;
      v39 = OS_LOG_TYPE_ERROR;
      v40 = 42;
      goto LABEL_21;
    }

    objc_autoreleasePoolPop(v32);
    v8 = v30;
LABEL_23:

    goto LABEL_24;
  }

  if (v50)
  {
    goto LABEL_11;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [(HMDiskCache *)v13 cachePath];
    *buf = 138543618;
    v52 = v15;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@The disk cache location %@ is not a directory", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  LOBYTE(v17) = 0;
LABEL_24:

  v44 = *MEMORY[0x1E69E9840];
  return v17;
}

- (HMDiskCache)initWithCachePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDiskCache;
  v5 = [(HMDiskCache *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cachePath = v5->_cachePath;
    v5->_cachePath = v6;
  }

  return v5;
}

@end
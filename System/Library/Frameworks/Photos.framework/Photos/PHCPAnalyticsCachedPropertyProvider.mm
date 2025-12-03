@interface PHCPAnalyticsCachedPropertyProvider
+ (id)librarySizeRange:(int64_t)range;
- (PHCPAnalyticsCachedPropertyProvider)init;
- (PHCPAnalyticsCachedPropertyProvider)initWithPhotoLibrary:(id)library;
- (PHPhotoLibrary)photoLibrary;
- (id)_cachedProperties;
- (void)registerSystemProperties:(id)properties;
@end

@implementation PHCPAnalyticsCachedPropertyProvider

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)_cachedProperties
{
  v29 = *MEMORY[0x1E69E9840];
  [*MEMORY[0x1E69C0060] UTF8String];
  v3 = xpc_copy_entitlement_for_self();
  [*MEMORY[0x1E69C0068] UTF8String];
  v4 = xpc_copy_entitlement_for_self();
  v5 = v4;
  if (v3 == MEMORY[0x1E69E9E10] || v4 == MEMORY[0x1E69E9E10])
  {
    photoLibrary = [(PHCPAnalyticsCachedPropertyProvider *)self photoLibrary];
    v22 = 0;
    v8 = [photoLibrary urlForApplicationDataFolderIdentifier:9 error:&v22];
    v18 = v22;

    v9 = *MEMORY[0x1E6991E88];
    v10 = [v8 URLByAppendingPathComponent:*MEMORY[0x1E6991E88]];
    if (v10)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v10 path];
      v13 = [defaultManager fileExistsAtPath:path];

      if (v13)
      {
        v21 = 0;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10 error:&v21];
        v15 = v21;
        if (v15)
        {
          v16 = CPAnalyticsLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v15;
            _os_log_error_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "CPAnalytics failed loading cache file. Error:%@", buf, 0xCu);
          }

          v17 = MEMORY[0x1E695E0F8];
        }

        else
        {
          v17 = v14;
        }

        goto LABEL_22;
      }

      v15 = CPAnalyticsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_INFO, "Cache file will be missing until the first nightly caching task is done. Log message instead of error", buf, 2u);
      }
    }

    else
    {
      v15 = CPAnalyticsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v24 = v9;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = v18;
        _os_log_error_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Failed creating %@ url from baseUrl %@. Error: %@", buf, 0x20u);
      }
    }

    v17 = MEMORY[0x1E695E0F8];
LABEL_22:

    goto LABEL_23;
  }

  v18 = CPAnalyticsLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_INFO, "CPAnalytics Cache not entitled.", buf, 2u);
  }

  v17 = MEMORY[0x1E695E0F8];
LABEL_23:

  return v17;
}

- (void)registerSystemProperties:(id)properties
{
  propertiesCopy = properties;
  _cachedProperties = [(PHCPAnalyticsCachedPropertyProvider *)self _cachedProperties];
  v4 = [_cachedProperties objectForKeyedSubscript:*MEMORY[0x1E6991C28]];
  v5 = *MEMORY[0x1E6991EE0];
  v53 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6991EE0]];
  v6 = *MEMORY[0x1E6991EF0];
  v52 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6991EF0]];
  v47 = *MEMORY[0x1E6991E98];
  v50 = [v4 objectForKeyedSubscript:?];
  v7 = *MEMORY[0x1E6991EC0];
  v54 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6991EC0]];
  v45 = *MEMORY[0x1E6991ED0];
  v55 = [v4 objectForKeyedSubscript:?];
  v43 = *MEMORY[0x1E6991EE8];
  v8 = [v4 objectForKeyedSubscript:?];
  v9 = *MEMORY[0x1E6991EA0];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6991EA0]];
  v11 = *MEMORY[0x1E6991EB8];
  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6991EB8]];
  v13 = *MEMORY[0x1E6991EB0];
  v51 = v4;
  v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6991EB0]];
  [propertiesCopy addProperty:v5 withValue:v53];
  [propertiesCopy addProperty:v6 withValue:v52];
  [propertiesCopy addProperty:v47 withValue:v50];
  [propertiesCopy addProperty:v7 withValue:v54];
  [propertiesCopy addProperty:v45 withValue:v55];
  v48 = v8;
  [propertiesCopy addProperty:v43 withValue:v8];
  v46 = v10;
  [propertiesCopy addProperty:v9 withValue:v10];
  v44 = v12;
  [propertiesCopy addProperty:v11 withValue:v12];
  [propertiesCopy addProperty:v13 withValue:v14];
  if (v50)
  {
    v15 = [objc_opt_class() librarySizeRange:{objc_msgSend(v50, "integerValue")}];
    [propertiesCopy addProperty:*MEMORY[0x1E6991EA8] withValue:v15];
  }

  if (v54)
  {
    v16 = [MEMORY[0x1E6991F28] bucketNameForInteger:objc_msgSend(v54 bucketLimits:{"integerValue"), 0, 100, 250, 500, 1000, 2000, 4000, 0}];
    [propertiesCopy addProperty:*MEMORY[0x1E6991EC8] withValue:v16];
  }

  if (v55)
  {
    v17 = [MEMORY[0x1E6991F28] bucketNameForInteger:objc_msgSend(v55 bucketLimits:{"integerValue"), 0, 2, 5, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 0}];
    [propertiesCopy addProperty:*MEMORY[0x1E6991ED8] withValue:v17];
  }

  v18 = *MEMORY[0x1E6991F00];
  v42 = [v51 objectForKeyedSubscript:*MEMORY[0x1E6991F00]];
  v19 = *MEMORY[0x1E6991F08];
  v41 = [v51 objectForKeyedSubscript:*MEMORY[0x1E6991F08]];
  v20 = *MEMORY[0x1E6991F18];
  v40 = [v51 objectForKeyedSubscript:*MEMORY[0x1E6991F18]];
  v21 = *MEMORY[0x1E6991F20];
  v39 = [v51 objectForKeyedSubscript:*MEMORY[0x1E6991F20]];
  v22 = *MEMORY[0x1E6991F10];
  v23 = [v51 objectForKeyedSubscript:*MEMORY[0x1E6991F10]];
  [propertiesCopy addProperty:v18 withValue:v42];
  [propertiesCopy addProperty:v19 withValue:v41];
  [propertiesCopy addProperty:v20 withValue:v40];
  [propertiesCopy addProperty:v21 withValue:v39];
  [propertiesCopy addProperty:v22 withValue:v23];
  v24 = *MEMORY[0x1E6991EF8];
  v25 = [v51 objectForKeyedSubscript:*MEMORY[0x1E6991EF8]];
  [propertiesCopy addProperty:v24 withValue:v25];
  v26 = [_cachedProperties objectForKeyedSubscript:*MEMORY[0x1E6991C20]];
  v27 = *MEMORY[0x1E6991C38];
  v28 = [v26 objectForKeyedSubscript:*MEMORY[0x1E6991C38]];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"Unknown";
  }

  v31 = v30;

  v32 = *MEMORY[0x1E6991C30];
  v33 = [v26 objectForKeyedSubscript:*MEMORY[0x1E6991C30]];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"Unknown";
  }

  v36 = v35;

  [propertiesCopy addProperty:v27 withValue:v31];
  [propertiesCopy addProperty:v32 withValue:v36];

  v37 = *MEMORY[0x1E6991E00];
  v38 = [_cachedProperties objectForKeyedSubscript:*MEMORY[0x1E6991E00]];
  [propertiesCopy addProperty:v37 withValue:v38];
}

- (PHCPAnalyticsCachedPropertyProvider)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v8.receiver = self;
  v8.super_class = PHCPAnalyticsCachedPropertyProvider;
  v5 = [(PHCPAnalyticsCachedPropertyProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
  }

  return v6;
}

- (PHCPAnalyticsCachedPropertyProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHCPAnalyticsCachedPropertyProvider.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PHCPAnalyticsCachedPropertyProvider init]"}];

  abort();
}

+ (id)librarySizeRange:(int64_t)range
{
  if (!range)
  {
    return @"LibrarySizeRangeEmpty";
  }

  if (range < 501)
  {
    return @"LibrarySizeRangeVerySmall";
  }

  if (range < 0x7D1)
  {
    return @"LibrarySizeRangeSmall";
  }

  if (range < 0x1389)
  {
    return @"LibrarySizeRangeMedium5K";
  }

  if (range < 0x2711)
  {
    return @"LibrarySizeRangeMedium10K";
  }

  if (range < 0x7531)
  {
    return @"LibrarySizeRangeLarge20K";
  }

  if (range < 0x9C41)
  {
    return @"LibrarySizeRangeLarge30K";
  }

  if (range < 0xC351)
  {
    return @"LibrarySizeRangeLarge40K";
  }

  if (range < 0x124F9)
  {
    return @"LibrarySizeRangeLarge50K";
  }

  if (range >= 0x186A1)
  {
    return @"LibrarySizeRangeHuge";
  }

  return @"LibrarySizeRangeVeryLarge";
}

@end
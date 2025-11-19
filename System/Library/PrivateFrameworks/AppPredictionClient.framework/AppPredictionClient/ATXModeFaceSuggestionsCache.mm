@interface ATXModeFaceSuggestionsCache
- (id)_cacheForUUID:(id)a3;
- (id)_suggestedFacesDirectoryURL;
- (id)cachedSuggestedFacesForModeUUID:(id)a3;
- (void)cacheSuggestedFaces:(id)a3 forModeUUID:(id)a4;
- (void)evictCachedSuggestedFaces;
@end

@implementation ATXModeFaceSuggestionsCache

- (id)cachedSuggestedFacesForModeUUID:(id)a3
{
  v4 = a3;
  v5 = [(ATXModeFaceSuggestionsCache *)self _cacheForUUID:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [v5 readSecureCodedObjectWithMaxValidAge:v9 allowableClasses:0 error:432000.0];

  return v10;
}

- (void)evictCachedSuggestedFaces
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [(ATXModeFaceSuggestionsCache *)self _suggestedFacesDirectoryURL];
  [v4 removeItemAtURL:v3 error:0];
}

- (void)cacheSuggestedFaces:(id)a3 forModeUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [(ATXModeFaceSuggestionsCache *)self _suggestedFacesDirectoryURL];
    [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

    v10 = [(ATXModeFaceSuggestionsCache *)self _cacheForUUID:v7];
    v11 = [v6 copy];
    [v10 storeSecureCodedObject:v11 error:0];

    v12 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXModeFaceSuggestionsCache cacheSuggestedFaces:v7 forModeUUID:v12];
    }
  }
}

- (id)_cacheForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ATXModeFaceSuggestionsCache *)self _suggestedFacesDirectoryURL];
  v6 = [v4 UUIDString];

  v7 = [v5 URLByAppendingPathComponent:v6 isDirectory:0];

  v8 = objc_alloc(MEMORY[0x1E698AFF0]);
  v9 = [v7 path];
  v10 = __atxlog_handle_lock_screen();
  v11 = [v8 initWithCacheFilePath:v9 loggingHandle:v10 debugName:@"suggested mode faces"];

  return v11;
}

- (id)_suggestedFacesDirectoryURL
{
  v2 = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"SuggestedModeFaces"];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (void)cacheSuggestedFaces:(uint64_t)a1 forModeUUID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Caching mode suggestions to disk for: %{public}@", &v2, 0xCu);
}

@end
@interface ATXModeFaceSuggestionsCache
- (id)_cacheForUUID:(id)d;
- (id)_suggestedFacesDirectoryURL;
- (id)cachedSuggestedFacesForModeUUID:(id)d;
- (void)cacheSuggestedFaces:(id)faces forModeUUID:(id)d;
- (void)evictCachedSuggestedFaces;
@end

@implementation ATXModeFaceSuggestionsCache

- (id)cachedSuggestedFacesForModeUUID:(id)d
{
  dCopy = d;
  v5 = [(ATXModeFaceSuggestionsCache *)self _cacheForUUID:dCopy];
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _suggestedFacesDirectoryURL = [(ATXModeFaceSuggestionsCache *)self _suggestedFacesDirectoryURL];
  [defaultManager removeItemAtURL:_suggestedFacesDirectoryURL error:0];
}

- (void)cacheSuggestedFaces:(id)faces forModeUUID:(id)d
{
  facesCopy = faces;
  dCopy = d;
  if ([facesCopy count])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    _suggestedFacesDirectoryURL = [(ATXModeFaceSuggestionsCache *)self _suggestedFacesDirectoryURL];
    [defaultManager createDirectoryAtURL:_suggestedFacesDirectoryURL withIntermediateDirectories:1 attributes:0 error:0];

    v10 = [(ATXModeFaceSuggestionsCache *)self _cacheForUUID:dCopy];
    v11 = [facesCopy copy];
    [v10 storeSecureCodedObject:v11 error:0];

    v12 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXModeFaceSuggestionsCache cacheSuggestedFaces:dCopy forModeUUID:v12];
    }
  }
}

- (id)_cacheForUUID:(id)d
{
  dCopy = d;
  _suggestedFacesDirectoryURL = [(ATXModeFaceSuggestionsCache *)self _suggestedFacesDirectoryURL];
  uUIDString = [dCopy UUIDString];

  v7 = [_suggestedFacesDirectoryURL URLByAppendingPathComponent:uUIDString isDirectory:0];

  v8 = objc_alloc(MEMORY[0x1E698AFF0]);
  path = [v7 path];
  v10 = __atxlog_handle_lock_screen();
  v11 = [v8 initWithCacheFilePath:path loggingHandle:v10 debugName:@"suggested mode faces"];

  return v11;
}

- (id)_suggestedFacesDirectoryURL
{
  appPredictionCacheDirectory = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v3 = [appPredictionCacheDirectory stringByAppendingPathComponent:@"SuggestedModeFaces"];

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
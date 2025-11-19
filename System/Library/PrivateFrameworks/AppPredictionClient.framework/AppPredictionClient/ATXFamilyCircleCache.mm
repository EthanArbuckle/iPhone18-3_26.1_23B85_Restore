@interface ATXFamilyCircleCache
- (ATXFamilyCircleCache)init;
- (ATXFamilyCircleCache)initWithCachePath:(id)a3;
- (BOOL)hasiCloudFamily;
- (id)_cache;
- (id)_fetchFamilyCircleFromCache;
- (id)_requestUpdatedFamilyCircle;
- (void)_requestUpdatedFamilyCircle;
@end

@implementation ATXFamilyCircleCache

- (ATXFamilyCircleCache)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v4 = [v3 stringByAppendingPathComponent:@"familyCircleCache"];

  v5 = [(ATXFamilyCircleCache *)self initWithCachePath:v4];
  return v5;
}

- (ATXFamilyCircleCache)initWithCachePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXFamilyCircleCache;
  v5 = [(ATXFamilyCircleCache *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

- (BOOL)hasiCloudFamily
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(ATXFamilyCircleCache *)self fetchFamilyCircle];
  v3 = [v2 members];
  v4 = [v3 count];

  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "Fetched %ld members during iCloud family check", &v7, 0xCu);
  }

  return v4 != 0;
}

- (id)_requestUpdatedFamilyCircle
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E699C070]);
  [v2 setCachePolicy:0];
  v10 = 0;
  v3 = [v2 fetchFamilyCircleWithError:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXFamilyCircleCache *)v5 _requestUpdatedFamilyCircle];
    }
  }

  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[ATXFamilyCircleCache _requestUpdatedFamilyCircle]";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s: Fetched iCloud family circle: %@", buf, 0x16u);
  }

  return v3;
}

- (id)_cache
{
  v3 = objc_alloc(MEMORY[0x1E698AFF0]);
  path = self->_path;
  v5 = __atxlog_handle_default();
  v6 = [v3 initWithCacheFilePath:path loggingHandle:v5 debugName:@"cached family circle"];

  return v6;
}

- (id)_fetchFamilyCircleFromCache
{
  v3 = [(ATXFamilyCircleCache *)self _cache];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v6 = [v3 readSecureCodedObjectWithMaxValidAge:v5 allowableClasses:0 error:86400.0];

  if (!v6)
  {
    v6 = [(ATXFamilyCircleCache *)self _requestUpdatedFamilyCircle];
    if (v6)
    {
      [v3 storeSecureCodedObject:v6 error:0];
    }
  }

  v7 = v6;

  return v7;
}

- (void)_requestUpdatedFamilyCircle
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[ATXFamilyCircleCache _requestUpdatedFamilyCircle]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "%s: Error querying for iCloud family: %@", &v2, 0x16u);
}

@end
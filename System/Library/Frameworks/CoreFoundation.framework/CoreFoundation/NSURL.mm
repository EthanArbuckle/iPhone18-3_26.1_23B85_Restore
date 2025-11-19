@interface NSURL
+ (BOOL)writeBookmarkData:(NSData *)bookmarkData toURL:(NSURL *)bookmarkFileURL options:(NSURLBookmarkFileCreationOptions)options error:(NSError *)error;
+ (NSData)bookmarkDataWithContentsOfURL:(NSURL *)bookmarkFileURL error:(NSError *)error;
+ (NSDictionary)resourceValuesForKeys:(NSArray *)keys fromBookmarkData:(NSData *)bookmarkData;
+ (id)__unurl;
- (BOOL)getResourceValue:(id *)value forKey:(NSURLResourceKey)key error:(NSError *)error;
- (BOOL)isFileReferenceURL;
- (BOOL)setResourceValue:(id)value forKey:(NSURLResourceKey)key error:(NSError *)error;
- (BOOL)setResourceValues:(NSDictionary *)keyedValues error:(NSError *)error;
- (BOOL)startAccessingSecurityScopedResource;
- (NSData)bookmarkDataWithOptions:(NSURLBookmarkCreationOptions)options includingResourceValuesForKeys:(NSArray *)keys relativeToURL:(NSURL *)relativeURL error:(NSError *)error;
- (NSDictionary)resourceValuesForKeys:(NSArray *)keys error:(NSError *)error;
- (NSURL)filePathURL;
- (NSURL)fileReferenceURL;
- (id)_URLByRemovingResolveFlags;
- (unsigned)_resolveFlags;
- (void)filePathURL;
- (void)fileReferenceURL;
- (void)isFileReferenceURL;
- (void)removeAllCachedResourceValues;
- (void)removeCachedResourceValueForKey:(NSURLResourceKey)key;
- (void)setTemporaryResourceValue:(id)value forKey:(NSURLResourceKey)key;
- (void)startAccessingSecurityScopedResource;
- (void)stopAccessingSecurityScopedResource;
@end

@implementation NSURL

+ (id)__unurl
{
  if (__unurl_static_init != -1)
  {
    +[NSURL __unurl];
  }

  return __unurl_immutablePlaceholderNSURL;
}

- (BOOL)isFileReferenceURL
{
  v2 = [(NSURL *)self _cfurl];
  if (v2 == +[NSURL __unurl])
  {
    [NSURL isFileReferenceURL];
  }

  return v2 && CFURLIsFileReferenceURL(v2) != 0;
}

CFURLRef __16__NSURL___unurl__block_invoke()
{
  result = CFURLCreateWithString(0, @"__immutablePlaceholderNSURL", 0);
  __unurl_immutablePlaceholderNSURL = result;
  return result;
}

- (unsigned)_resolveFlags
{
  if (![(NSURL *)self isFileURL])
  {
    return 0;
  }

  if ([(NSURL *)self isFileReferenceURL])
  {
    if ([(NSURL *)self query])
    {
      v3 = [(NSURL *)self query];

      return [(NSString *)v3 _queryResolveFlags];
    }

    return 0;
  }

  v5 = CFURLCopyAbsoluteURL([(NSURL *)self _cfurl]);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFURLCopyPath(v5);
  CFRelease(v6);
  if (!v7)
  {
    return 0;
  }

  return [(__CFString *)v7 _pathResolveFlags];
}

- (BOOL)startAccessingSecurityScopedResource
{
  v2 = [(NSURL *)self _cfurl];
  if (v2 == +[NSURL __unurl])
  {
    [NSURL startAccessingSecurityScopedResource];
  }

  return v2 && CFURLStartAccessingSecurityScopedResource(v2) != 0;
}

- (void)stopAccessingSecurityScopedResource
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)removeAllCachedResourceValues
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (NSURL)filePathURL
{
  v3 = [(NSURL *)self _cfurl];
  if (v3 == +[NSURL __unurl])
  {
    [NSURL filePathURL];
  }

  if (!v3)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v3);
  v4 = CFGetAllocator(v3);
  v5 = CFURLCreateFilePathURL(v4, [(NSURL *)self _cfurl], 0);
  __CFURLEndResourcePropertyCacheAccess(v3);
  if (!v5)
  {
    return 0;
  }

  return v5;
}

- (NSURL)fileReferenceURL
{
  v3 = [(NSURL *)self _cfurl];
  if (v3 == +[NSURL __unurl])
  {
    [NSURL fileReferenceURL];
  }

  if (!v3)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v3);
  v4 = CFGetAllocator(v3);
  v5 = CFURLCreateFileReferenceURL(v4, [(NSURL *)self _cfurl], 0);
  __CFURLEndResourcePropertyCacheAccess(v3);
  if (!v5)
  {
    return 0;
  }

  return v5;
}

- (BOOL)getResourceValue:(id *)value forKey:(NSURLResourceKey)key error:(NSError *)error
{
  v8 = [(NSURL *)self _cfurl];
  if (v8 == +[NSURL __unurl])
  {
    [NSURL getResourceValue:forKey:error:];
  }

  if (!v8)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v8);
  v9 = CFURLCopyResourcePropertyForKey(v8, key, value, error);
  __CFURLEndResourcePropertyCacheAccess(v8);
  if (!v9)
  {
    if (error)
    {
      v11 = *error;
      result = 0;
      *error = v11;
      return result;
    }

    return 0;
  }

  if (*value)
  {
    *value = *value;
  }

  return 1;
}

- (NSDictionary)resourceValuesForKeys:(NSArray *)keys error:(NSError *)error
{
  v6 = [(NSURL *)self _cfurl];
  if (v6 == +[NSURL __unurl])
  {
    [NSURL resourceValuesForKeys:error:];
  }

  if (!v6)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v6);
  v7 = CFURLCopyResourcePropertiesForKeys(v6, keys, error);
  __CFURLEndResourcePropertyCacheAccess(v6);
  if (!v7)
  {
    if (error)
    {
      *error = *error;
    }

    return 0;
  }

  return v7;
}

- (BOOL)setResourceValue:(id)value forKey:(NSURLResourceKey)key error:(NSError *)error
{
  v8 = [(NSURL *)self _cfurl];
  if (v8 == +[NSURL __unurl])
  {
    [NSURL setResourceValue:forKey:error:];
  }

  if (!v8)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v8);
  v9 = CFURLSetResourcePropertyForKey(v8, key, value, error);
  v10 = v9 != 0;
  __CFURLEndResourcePropertyCacheAccess(v8);
  if (error && !v9)
  {
    v10 = 0;
    *error = *error;
  }

  return v10;
}

- (BOOL)setResourceValues:(NSDictionary *)keyedValues error:(NSError *)error
{
  v6 = [(NSURL *)self _cfurl];
  if (v6 == +[NSURL __unurl])
  {
    [NSURL setResourceValues:error:];
  }

  if (!v6)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v6);
  v7 = CFURLSetResourcePropertiesForKeys(v6, keyedValues, error);
  v8 = v7 != 0;
  __CFURLEndResourcePropertyCacheAccess(v6);
  if (error && !v7)
  {
    v8 = 0;
    *error = *error;
  }

  return v8;
}

- (void)removeCachedResourceValueForKey:(NSURLResourceKey)key
{
  v4 = [(NSURL *)self _cfurl];
  if (v4 == +[NSURL __unurl])
  {
    [NSURL removeCachedResourceValueForKey:];
  }

  if (v4)
  {
    __CFURLBeginResourcePropertyCacheAccess(v4);
    CFURLClearResourcePropertyCacheForKey(v4, key);

    __CFURLEndResourcePropertyCacheAccess(v4);
  }
}

- (void)setTemporaryResourceValue:(id)value forKey:(NSURLResourceKey)key
{
  v6 = [(NSURL *)self _cfurl];
  if (v6 == +[NSURL __unurl])
  {
    [NSURL setTemporaryResourceValue:forKey:];
  }

  if (v6)
  {
    __CFURLBeginResourcePropertyCacheAccess(v6);
    CFURLSetTemporaryResourcePropertyForKey(v6, key, value);

    __CFURLEndResourcePropertyCacheAccess(v6);
  }
}

- (id)_URLByRemovingResolveFlags
{
  if ([(NSURL *)self isFileURL]&& (v3 = [(NSString *)[(NSURL *)self absoluteString] _urlStringByRemovingResolveFlags]) != 0)
  {
    v4 = CFURLCreateWithString(0, v3, 0);
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (NSData)bookmarkDataWithOptions:(NSURLBookmarkCreationOptions)options includingResourceValuesForKeys:(NSArray *)keys relativeToURL:(NSURL *)relativeURL error:(NSError *)error
{
  v10 = [(NSURL *)self _cfurl];
  if (v10 == +[NSURL __unurl])
  {
    [NSURL bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error:];
  }

  if (!v10)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(v10);
  v11 = CFGetAllocator(v10);
  v12 = CFURLCreateBookmarkData(v11, v10, options, keys, [(NSURL *)relativeURL _cfurl], error);
  __CFURLEndResourcePropertyCacheAccess(v10);
  if (!v12)
  {
    if (error && *error)
    {
      *error = *error;
    }

    return 0;
  }

  return v12;
}

+ (NSDictionary)resourceValuesForKeys:(NSArray *)keys fromBookmarkData:(NSData *)bookmarkData
{
  result = CFURLCreateResourcePropertiesForKeysFromBookmarkData(0, keys, bookmarkData);
  if (result)
  {

    return result;
  }

  return result;
}

+ (BOOL)writeBookmarkData:(NSData *)bookmarkData toURL:(NSURL *)bookmarkFileURL options:(NSURLBookmarkFileCreationOptions)options error:(NSError *)error
{
  v7 = CFURLWriteBookmarkDataToFile(bookmarkData, bookmarkFileURL, options, error);
  v8 = v7;
  if (error && !v7 && *error)
  {
    *error = *error;
  }

  return v8 != 0;
}

+ (NSData)bookmarkDataWithContentsOfURL:(NSURL *)bookmarkFileURL error:(NSError *)error
{
  v5 = CFURLCreateBookmarkDataFromFile(0, bookmarkFileURL, error);
  if (v5)
  {

    return v5;
  }

  else
  {
    if (error && *error)
    {
      *error = *error;
    }

    return 0;
  }
}

- (void)getResourceValue:forKey:error:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)resourceValuesForKeys:error:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)setResourceValue:forKey:error:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)setResourceValues:error:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)removeCachedResourceValueForKey:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)setTemporaryResourceValue:forKey:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)isFileReferenceURL
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)fileReferenceURL
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)filePathURL
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error:.cold.1()
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

- (void)startAccessingSecurityScopedResource
{
  v0 = __CFLookUpClass("NSURL");
  v1 = OUTLINED_FUNCTION_0_21(v0);
  _CFThrowFormattedException(@"NSGenericException", @"%@: object was not initialized", v1);
}

@end
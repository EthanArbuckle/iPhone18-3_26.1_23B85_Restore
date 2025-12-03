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
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL isFileReferenceURL];
  }

  return _cfurl && CFURLIsFileReferenceURL(_cfurl) != 0;
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
      query = [(NSURL *)self query];

      return [(NSString *)query _queryResolveFlags];
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
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL startAccessingSecurityScopedResource];
  }

  return _cfurl && CFURLStartAccessingSecurityScopedResource(_cfurl) != 0;
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
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL filePathURL];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v4 = CFGetAllocator(_cfurl);
  v5 = CFURLCreateFilePathURL(v4, [(NSURL *)self _cfurl], 0);
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
  if (!v5)
  {
    return 0;
  }

  return v5;
}

- (NSURL)fileReferenceURL
{
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL fileReferenceURL];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v4 = CFGetAllocator(_cfurl);
  v5 = CFURLCreateFileReferenceURL(v4, [(NSURL *)self _cfurl], 0);
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
  if (!v5)
  {
    return 0;
  }

  return v5;
}

- (BOOL)getResourceValue:(id *)value forKey:(NSURLResourceKey)key error:(NSError *)error
{
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL getResourceValue:forKey:error:];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v9 = CFURLCopyResourcePropertyForKey(_cfurl, key, value, error);
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
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
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL resourceValuesForKeys:error:];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v7 = CFURLCopyResourcePropertiesForKeys(_cfurl, keys, error);
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
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
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL setResourceValue:forKey:error:];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v9 = CFURLSetResourcePropertyForKey(_cfurl, key, value, error);
  v10 = v9 != 0;
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
  if (error && !v9)
  {
    v10 = 0;
    *error = *error;
  }

  return v10;
}

- (BOOL)setResourceValues:(NSDictionary *)keyedValues error:(NSError *)error
{
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL setResourceValues:error:];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v7 = CFURLSetResourcePropertiesForKeys(_cfurl, keyedValues, error);
  v8 = v7 != 0;
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
  if (error && !v7)
  {
    v8 = 0;
    *error = *error;
  }

  return v8;
}

- (void)removeCachedResourceValueForKey:(NSURLResourceKey)key
{
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL removeCachedResourceValueForKey:];
  }

  if (_cfurl)
  {
    __CFURLBeginResourcePropertyCacheAccess(_cfurl);
    CFURLClearResourcePropertyCacheForKey(_cfurl, key);

    __CFURLEndResourcePropertyCacheAccess(_cfurl);
  }
}

- (void)setTemporaryResourceValue:(id)value forKey:(NSURLResourceKey)key
{
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL setTemporaryResourceValue:forKey:];
  }

  if (_cfurl)
  {
    __CFURLBeginResourcePropertyCacheAccess(_cfurl);
    CFURLSetTemporaryResourcePropertyForKey(_cfurl, key, value);

    __CFURLEndResourcePropertyCacheAccess(_cfurl);
  }
}

- (id)_URLByRemovingResolveFlags
{
  if ([(NSURL *)self isFileURL]&& (v3 = [(NSString *)[(NSURL *)self absoluteString] _urlStringByRemovingResolveFlags]) != 0)
  {
    selfCopy = CFURLCreateWithString(0, v3, 0);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)bookmarkDataWithOptions:(NSURLBookmarkCreationOptions)options includingResourceValuesForKeys:(NSArray *)keys relativeToURL:(NSURL *)relativeURL error:(NSError *)error
{
  _cfurl = [(NSURL *)self _cfurl];
  if (_cfurl == +[NSURL __unurl])
  {
    [NSURL bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error:];
  }

  if (!_cfurl)
  {
    return 0;
  }

  __CFURLBeginResourcePropertyCacheAccess(_cfurl);
  v11 = CFGetAllocator(_cfurl);
  v12 = CFURLCreateBookmarkData(v11, _cfurl, options, keys, [(NSURL *)relativeURL _cfurl], error);
  __CFURLEndResourcePropertyCacheAccess(_cfurl);
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
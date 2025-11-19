@interface NSAssertionHandler
+ (NSAssertionHandler)currentHandler;
- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format;
- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format;
@end

@implementation NSAssertionHandler

+ (NSAssertionHandler)currentHandler
{
  v2 = [+[NSThread currentThread](NSThread threadDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:@"NSAssertionHandler"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v4 = [objc_allocWithZone(NSAssertionHandler) init];
    [(NSMutableDictionary *)v2 setObject:v4 forKey:@"NSAssertionHandler"];
  }

  return v4;
}

- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format
{
  va_start(va, format);
  v23 = *MEMORY[0x1E69E9840];
  v12 = _NSOSLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v18 = _NSFullMethodName(object, selector);
    v19 = 2112;
    v20 = fileName;
    v21 = 2048;
    v22 = line;
    _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %@, %@:%ld", buf, 0x20u);
  }

  v13 = [NSString alloc];
  if (format)
  {
    v14 = format;
  }

  else
  {
    v14 = @" ";
  }

  v15 = [(NSString *)v13 initWithFormat:v14 locale:0 arguments:va];
  v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v15 userInfo:{_userInfoForFileAndLine(fileName, line)}];
  objc_exception_throw(v16);
}

- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format
{
  va_start(va, format);
  v21 = *MEMORY[0x1E69E9840];
  v10 = _NSOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v16 = functionName;
    v17 = 2112;
    v18 = fileName;
    v19 = 2048;
    v20 = line;
    _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %@(), %@:%ld", buf, 0x20u);
  }

  v11 = [NSString alloc];
  if (format)
  {
    v12 = format;
  }

  else
  {
    v12 = @" ";
  }

  v13 = [(NSString *)v11 initWithFormat:v12 locale:0 arguments:va];
  v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v13 userInfo:{_userInfoForFileAndLine(fileName, line)}];
  objc_exception_throw(v14);
}

@end
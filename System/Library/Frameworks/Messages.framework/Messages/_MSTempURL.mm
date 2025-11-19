@interface _MSTempURL
+ (BOOL)_isInvalidPath:(id)a3;
+ (id)_resolvedTempDirectory;
- (_MSTempURL)initWithCoder:(id)a3;
- (void)dealloc;
@end

@implementation _MSTempURL

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(_MSTempURL *)self path];
  if ([objc_opt_class() _isInvalidPath:v3])
  {
    v4 = ms_defaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "suspicious _MSTempURL object found with path: [%@]", buf, 0xCu);
    }
  }

  else
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21___MSTempURL_dealloc__block_invoke;
    block[3] = &unk_1E83A2C20;
    v8 = v3;
    dispatch_async(v5, block);

    v4 = v8;
  }

  v6.receiver = self;
  v6.super_class = _MSTempURL;
  [(_MSTempURL *)&v6 dealloc];
}

- (_MSTempURL)initWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = _MSTempURL;
    self = [(_MSTempURL *)&v8 initWithCoder:v4];
    v5 = self;
  }

  else
  {
    v6 = ms_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1CADE6000, v6, OS_LOG_TYPE_DEFAULT, "suspicious _MSTempURL object encoded from coder: [%@]", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_resolvedTempDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByResolvingSymlinksInPath];

  return v3;
}

+ (BOOL)_isInvalidPath:(id)a3
{
  v4 = [a3 stringByResolvingSymlinksInPath];
  v5 = [a1 _resolvedTempDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"ms-"];

  LOBYTE(v5) = [v4 hasPrefix:v6];
  return v5 ^ 1;
}

@end
@interface _MSTempFileManager
+ (id)sharedInstance;
- (_MSTempFileManager)init;
- (id)writeTemporaryFileWithData:(id)a3 type:(id)a4;
@end

@implementation _MSTempFileManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_MSTempFileManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

- (_MSTempFileManager)init
{
  v3.receiver = self;
  v3.super_class = _MSTempFileManager;
  return [(_MSTempFileManager *)&v3 init];
}

- (id)writeTemporaryFileWithData:(id)a3 type:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6963710];
  v6 = a3;
  v7 = UTTypeCopyPreferredTagWithClass(a4, v5);
  v8 = v7;
  v9 = @"data";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = IMSafeTemporaryDirectory();
  v12 = [v11 path];
  v13 = [v12 stringByAppendingPathComponent:@"ms-XXXXXX"];
  v14 = [v13 stringByAppendingPathExtension:v10];

  [v14 UTF8String];
  bzero(v19, 0x400uLL);
  __strlcpy_chk();
  LODWORD(v11) = [(__CFString *)v10 length];

  v15 = mkstemps(v19, v11 + 1);
  close(v15);
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
  v17 = [_MSTempURL fileURLWithPath:v16];

  [v6 writeToURL:v17 atomically:1];

  return v17;
}

@end
@interface NSFileHandle
+ (NSFileHandle)allocWithZone:(_NSZone *)zone;
+ (NSFileHandle)fileHandleForReadingAtPath:(NSString *)path;
+ (NSFileHandle)fileHandleForReadingFromURL:(NSURL *)url error:(NSError *)error;
+ (NSFileHandle)fileHandleForUpdatingAtPath:(NSString *)path;
+ (NSFileHandle)fileHandleForUpdatingURL:(NSURL *)url error:(NSError *)error;
+ (NSFileHandle)fileHandleForWritingAtPath:(NSString *)path;
+ (NSFileHandle)fileHandleForWritingToURL:(NSURL *)url error:(NSError *)error;
+ (NSFileHandle)fileHandleWithNullDevice;
+ (NSFileHandle)fileHandleWithStandardError;
+ (NSFileHandle)fileHandleWithStandardInput;
+ (NSFileHandle)fileHandleWithStandardOutput;
+ (id)fileHandleForReadingFromURL:(id)l mode:(unsigned __int16)mode error:(id *)error;
+ (id)fileHandleForUpdatingURL:(id)l mode:(unsigned __int16)mode error:(id *)error;
+ (id)fileHandleForWritingToURL:(id)l mode:(unsigned __int16)mode error:(id *)error;
+ (void)initialize;
- (BOOL)closeAndReturnError:(NSError *)error;
- (BOOL)getOffset:(unint64_t *)offsetInFile error:(NSError *)error;
- (BOOL)seekToEndReturningOffset:(unint64_t *)offsetInFile error:(NSError *)error;
- (BOOL)seekToOffset:(unint64_t)offset error:(NSError *)error;
- (BOOL)synchronizeAndReturnError:(NSError *)error;
- (BOOL)truncateAtOffset:(unint64_t)offset error:(NSError *)error;
- (BOOL)writeData:(NSData *)data error:(NSError *)error;
- (NSData)readDataToEndOfFileAndReturnError:(NSError *)error;
- (NSData)readDataUpToLength:(NSUInteger)length error:(NSError *)error;
- (NSFileHandle)initWithCoder:(NSCoder *)coder;
- (NSFileHandle)initWithPath:(id)path flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error;
- (NSFileHandle)initWithURL:(id)l flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error;
- (void)closeFile;
- (void)encodeWithCoder:(id)coder;
- (void)seekToFileOffset:(unint64_t)offset;
- (void)setReadabilityHandler:(void *)readabilityHandler;
- (void)setWriteabilityHandler:(void *)writeabilityHandler;
- (void)synchronizeFile;
- (void)truncateFileAtOffset:(unint64_t)offset;
- (void)writeData:(NSData *)data;
@end

@implementation NSFileHandle

+ (void)initialize
{
  v9 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v7.rlim_cur = 0;
    v7.rlim_max = 0;
    v2 = getrlimit(8, &v7);
    *v8 = 0x1D00000001;
    rlim_max = 0;
    v5 = 4;
    if (sysctl(v8, 2u, &rlim_max, &v5, 0, 0) | v2)
    {
      if (v2)
      {
        return;
      }

      LODWORD(v3) = rlim_max;
    }

    else
    {
      LODWORD(v3) = rlim_max;
      if (v7.rlim_max < rlim_max)
      {
        rlim_max = v7.rlim_max;
        LODWORD(v3) = v7.rlim_max;
      }
    }

    if (v7.rlim_cur < v3)
    {
      v3 = v3;
      v4 = v7;
      if (v7.rlim_cur + 2304 < v3)
      {
        v3 = v7.rlim_cur + 2304;
      }

      v4.rlim_cur = v3;
      setrlimit(8, &v4);
    }
  }
}

+ (NSFileHandle)fileHandleWithNullDevice
{
  if (qword_1ED43F098 != -1)
  {
    dispatch_once(&qword_1ED43F098, &__block_literal_global_9);
  }

  return qword_1ED43F090;
}

uint64_t __40__NSFileHandle_fileHandleWithNullDevice__block_invoke()
{
  result = [objc_allocWithZone(NSNullFileHandle) init];
  qword_1ED43F090 = result;
  return result;
}

+ (NSFileHandle)fileHandleWithStandardInput
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NSFileHandle_fileHandleWithStandardInput__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43F068 != -1)
  {
    dispatch_once(&qword_1ED43F068, v3);
  }

  return _MergedGlobals_25;
}

uint64_t __43__NSFileHandle_fileHandleWithStandardInput__block_invoke(uint64_t a1)
{
  result = [objc_allocWithZone(_NSStdIOFileHandle) initWithFileDescriptor:0 closeOnDealloc:0];
  _MergedGlobals_25 = result;
  if (result)
  {
    atomic_fetch_or((result + 100), 0x8000u);
  }

  else
  {
    result = [*(a1 + 32) fileHandleWithNullDevice];
    _MergedGlobals_25 = result;
  }

  return result;
}

+ (NSFileHandle)fileHandleWithStandardOutput
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__NSFileHandle_fileHandleWithStandardOutput__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43F078 != -1)
  {
    dispatch_once(&qword_1ED43F078, v3);
  }

  return qword_1ED43F070;
}

uint64_t __44__NSFileHandle_fileHandleWithStandardOutput__block_invoke(uint64_t a1)
{
  result = [objc_allocWithZone(_NSStdIOFileHandle) initWithFileDescriptor:1 closeOnDealloc:0];
  qword_1ED43F070 = result;
  if (result)
  {
    atomic_fetch_or((result + 100), 0x4000u);
  }

  else
  {
    result = [*(a1 + 32) fileHandleWithNullDevice];
    qword_1ED43F070 = result;
  }

  return result;
}

+ (NSFileHandle)fileHandleWithStandardError
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NSFileHandle_fileHandleWithStandardError__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43F088 != -1)
  {
    dispatch_once(&qword_1ED43F088, v3);
  }

  return qword_1ED43F080;
}

uint64_t __43__NSFileHandle_fileHandleWithStandardError__block_invoke(uint64_t a1)
{
  result = [objc_allocWithZone(_NSStdIOFileHandle) initWithFileDescriptor:2 closeOnDealloc:0];
  qword_1ED43F080 = result;
  if (result)
  {
    atomic_fetch_or((result + 100), 0x2000u);
  }

  else
  {
    result = [*(a1 + 32) fileHandleWithNullDevice];
    qword_1ED43F080 = result;
  }

  return result;
}

+ (NSFileHandle)allocWithZone:(_NSZone *)zone
{
  if (NSFileHandle == self)
  {
    self = objc_opt_self();
  }

  return NSAllocateObject(self, 0, zone);
}

- (NSFileHandle)initWithCoder:(NSCoder *)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0]);
  }

  v5 = [(NSCoder *)coder decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"NS.fd"];
  if (v5)
  {
    v6 = xpc_fd_dup(v5);

    return [(NSFileHandle *)self initWithFileDescriptor:v6 closeOnDealloc:1];
  }

  else
  {

    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (NSFileHandle)initWithURL:(id)l flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error
{
  if ([l isFileURL])
  {
    path = [l path];
  }

  else
  {
    path = 0;
  }

  return [(NSFileHandle *)self initWithPath:path flags:flags createMode:mode error:error];
}

- (NSFileHandle)initWithPath:(id)path flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error
{
  [(NSFileHandle *)self init:path];
  v8 = NSClassFromString(@"NSFileHandle");
  NSRequestConcreteImplementation(self, a2, v8);
}

+ (NSFileHandle)fileHandleForReadingAtPath:(NSString *)path
{
  v3 = [objc_allocWithZone(self) initWithPath:path flags:0 createMode:0];

  return v3;
}

+ (NSFileHandle)fileHandleForWritingAtPath:(NSString *)path
{
  v3 = [objc_allocWithZone(self) initWithPath:path flags:1 createMode:0];

  return v3;
}

+ (NSFileHandle)fileHandleForUpdatingAtPath:(NSString *)path
{
  v3 = [objc_allocWithZone(self) initWithPath:path flags:2 createMode:0];

  return v3;
}

+ (NSFileHandle)fileHandleForReadingFromURL:(NSURL *)url error:(NSError *)error
{
  v4 = [objc_allocWithZone(self) initWithURL:url flags:0 createMode:0 error:error];

  return v4;
}

+ (NSFileHandle)fileHandleForWritingToURL:(NSURL *)url error:(NSError *)error
{
  v4 = [objc_allocWithZone(self) initWithURL:url flags:1 createMode:0 error:error];

  return v4;
}

+ (NSFileHandle)fileHandleForUpdatingURL:(NSURL *)url error:(NSError *)error
{
  v4 = [objc_allocWithZone(self) initWithURL:url flags:2 createMode:0 error:error];

  return v4;
}

+ (id)fileHandleForReadingFromURL:(id)l mode:(unsigned __int16)mode error:(id *)error
{
  v5 = [objc_allocWithZone(self) initWithURL:l flags:512 createMode:mode error:error];

  return v5;
}

+ (id)fileHandleForWritingToURL:(id)l mode:(unsigned __int16)mode error:(id *)error
{
  v5 = [objc_allocWithZone(self) initWithURL:l flags:513 createMode:mode error:error];

  return v5;
}

+ (id)fileHandleForUpdatingURL:(id)l mode:(unsigned __int16)mode error:(id *)error
{
  v5 = [objc_allocWithZone(self) initWithURL:l flags:514 createMode:mode error:error];

  return v5;
}

- (NSData)readDataToEndOfFileAndReturnError:(NSError *)error
{
  v6 = [(NSFileHandle *)self methodForSelector:sel_readDataToEndOfFile];
  if (v6 == [NSFileHandle instanceMethodForSelector:sel_readDataToEndOfFile])
  {
    v8 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v8);
  }

  if (error)
  {
    *error = 0;
  }

  return [(NSFileHandle *)self readDataToEndOfFile];
}

- (NSData)readDataUpToLength:(NSUInteger)length error:(NSError *)error
{
  v8 = [(NSFileHandle *)self methodForSelector:sel_readDataOfLength_];
  if (v8 == [NSFileHandle instanceMethodForSelector:sel_readDataOfLength_])
  {
    v10 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v10);
  }

  if (error)
  {
    *error = 0;
  }

  return [(NSFileHandle *)self readDataOfLength:length];
}

- (void)writeData:(NSData *)data
{
  v5 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (BOOL)writeData:(NSData *)data error:(NSError *)error
{
  v8 = [(NSFileHandle *)self methodForSelector:sel_writeData_];
  if (v8 == [NSFileHandle instanceMethodForSelector:sel_writeData_])
  {
    v10 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v10);
  }

  if (error)
  {
    *error = 0;
  }

  [(NSFileHandle *)self writeData:data];
  return 1;
}

- (BOOL)getOffset:(unint64_t *)offsetInFile error:(NSError *)error
{
  v8 = [(NSFileHandle *)self methodForSelector:sel_offsetInFile];
  if (v8 == [NSFileHandle instanceMethodForSelector:sel_offsetInFile])
  {
    v11 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v11);
  }

  if (error)
  {
    *error = 0;
  }

  offsetInFile = [(NSFileHandle *)self offsetInFile];
  if (offsetInFile)
  {
    *offsetInFile = offsetInFile;
  }

  return 1;
}

- (BOOL)seekToEndReturningOffset:(unint64_t *)offsetInFile error:(NSError *)error
{
  v8 = [(NSFileHandle *)self methodForSelector:sel_seekToEndOfFile];
  if (v8 == [NSFileHandle instanceMethodForSelector:sel_seekToEndOfFile])
  {
    v11 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v11);
  }

  if (error)
  {
    *error = 0;
  }

  seekToEndOfFile = [(NSFileHandle *)self seekToEndOfFile];
  if (offsetInFile)
  {
    *offsetInFile = seekToEndOfFile;
  }

  return 1;
}

- (void)seekToFileOffset:(unint64_t)offset
{
  v5 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (BOOL)seekToOffset:(unint64_t)offset error:(NSError *)error
{
  v8 = [(NSFileHandle *)self methodForSelector:sel_seekToFileOffset_];
  if (v8 == [NSFileHandle instanceMethodForSelector:sel_seekToFileOffset_])
  {
    v10 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v10);
  }

  if (error)
  {
    *error = 0;
  }

  [(NSFileHandle *)self seekToFileOffset:offset];
  return 1;
}

- (void)truncateFileAtOffset:(unint64_t)offset
{
  v5 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (BOOL)truncateAtOffset:(unint64_t)offset error:(NSError *)error
{
  v8 = [(NSFileHandle *)self methodForSelector:sel_truncateFileAtOffset_];
  if (v8 == [NSFileHandle instanceMethodForSelector:sel_truncateFileAtOffset_])
  {
    v10 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v10);
  }

  if (error)
  {
    *error = 0;
  }

  [(NSFileHandle *)self truncateFileAtOffset:offset];
  return 1;
}

- (void)synchronizeFile
{
  v4 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (BOOL)synchronizeAndReturnError:(NSError *)error
{
  v6 = [(NSFileHandle *)self methodForSelector:sel_synchronizeFile];
  if (v6 == [NSFileHandle instanceMethodForSelector:sel_synchronizeFile])
  {
    v8 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v8);
  }

  if (error)
  {
    *error = 0;
  }

  [(NSFileHandle *)self synchronizeFile];
  return 1;
}

- (void)closeFile
{
  v4 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (BOOL)closeAndReturnError:(NSError *)error
{
  v6 = [(NSFileHandle *)self methodForSelector:sel_closeFile];
  if (v6 == [NSFileHandle instanceMethodForSelector:sel_closeFile])
  {
    v8 = NSClassFromString(@"NSFileHandle");
    NSRequestConcreteImplementation(self, a2, v8);
  }

  if (error)
  {
    *error = 0;
  }

  [(NSFileHandle *)self closeFile];
  return 1;
}

- (void)setWriteabilityHandler:(void *)writeabilityHandler
{
  v5 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setReadabilityHandler:(void *)readabilityHandler
{
  v5 = NSClassFromString(@"NSFileHandle");

  NSRequestConcreteImplementation(self, a2, v5);
}

@end
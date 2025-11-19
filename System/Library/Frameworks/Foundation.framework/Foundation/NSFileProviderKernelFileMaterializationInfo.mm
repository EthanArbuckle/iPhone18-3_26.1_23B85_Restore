@interface NSFileProviderKernelFileMaterializationInfo
- (NSFileProviderKernelFileMaterializationInfo)initWithCoder:(id)a3;
- (NSFileProviderKernelFileMaterializationInfo)initWithSize:(int64_t)a3 offset:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderKernelFileMaterializationInfo

- (NSFileProviderKernelFileMaterializationInfo)initWithSize:(int64_t)a3 offset:(int64_t)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSFileProviderKernelFileMaterializationInfo;
  result = [(NSFileProviderKernelFileMaterializationInfo *)&v7 init];
  if (result)
  {
    result->size = a3;
    result->offset = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelFileMaterializationInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeInt64:self->size forKey:@"NSSize"];
  offset = self->offset;

  [a3 encodeInt64:offset forKey:@"NSOffset"];
}

- (NSFileProviderKernelFileMaterializationInfo)initWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelFileMaterializationInfo should only ever be decoded by XPC" userInfo:0]);
  }

  self->size = [a3 decodeInt64ForKey:@"NSSize"];
  self->offset = [a3 decodeInt64ForKey:@"NSOffset"];
  return self;
}

@end
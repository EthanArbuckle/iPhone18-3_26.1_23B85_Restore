@interface NSFileProviderKernelFileMaterializationInfo
- (NSFileProviderKernelFileMaterializationInfo)initWithCoder:(id)coder;
- (NSFileProviderKernelFileMaterializationInfo)initWithSize:(int64_t)size offset:(int64_t)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderKernelFileMaterializationInfo

- (NSFileProviderKernelFileMaterializationInfo)initWithSize:(int64_t)size offset:(int64_t)offset
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSFileProviderKernelFileMaterializationInfo;
  result = [(NSFileProviderKernelFileMaterializationInfo *)&v7 init];
  if (result)
  {
    result->size = size;
    result->offset = offset;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelFileMaterializationInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeInt64:self->size forKey:@"NSSize"];
  offset = self->offset;

  [coder encodeInt64:offset forKey:@"NSOffset"];
}

- (NSFileProviderKernelFileMaterializationInfo)initWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelFileMaterializationInfo should only ever be decoded by XPC" userInfo:0]);
  }

  self->size = [coder decodeInt64ForKey:@"NSSize"];
  self->offset = [coder decodeInt64ForKey:@"NSOffset"];
  return self;
}

@end
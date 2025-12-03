@interface NSFileProviderKernelPartialFolderMaterializationInfo
- (NSFileProviderKernelPartialFolderMaterializationInfo)initWithCoder:(id)coder;
- (NSFileProviderKernelPartialFolderMaterializationInfo)initWithFileName:(id)name;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderKernelPartialFolderMaterializationInfo

- (NSFileProviderKernelPartialFolderMaterializationInfo)initWithFileName:(id)name
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileProviderKernelPartialFolderMaterializationInfo;
  v4 = [(NSFileProviderKernelPartialFolderMaterializationInfo *)&v6 init];
  if (v4)
  {
    v4->fileName = [name copy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderKernelPartialFolderMaterializationInfo;
  [(NSFileProviderKernelPartialFolderMaterializationInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelPartialFolderMaterializationInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  fileName = self->fileName;

  [coder encodeObject:fileName forKey:@"filename"];
}

- (NSFileProviderKernelPartialFolderMaterializationInfo)initWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelPartialFolderMaterializationInfo should only ever be decoded by XPC" userInfo:0]);
  }

  self->fileName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
  return self;
}

@end
@interface NSFileProviderKernelMaterializationInfo
+ (NSFileProviderKernelMaterializationInfo)kernelMaterializationInfoWithOperation:(unsigned int)operation;
+ (id)fileMaterializationInfoWithOperation:(unsigned int)operation size:(int64_t)size offset:(int64_t)offset;
+ (id)partialFolderMaterializationInfoWithOperation:(unsigned int)operation fileName:(const char *)name;
- (NSFileProviderKernelMaterializationInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderKernelMaterializationInfo

+ (NSFileProviderKernelMaterializationInfo)kernelMaterializationInfoWithOperation:(unsigned int)operation
{
  v4 = objc_alloc_init(NSFileProviderKernelMaterializationInfo);
  v4->operation = operation;

  return v4;
}

+ (id)fileMaterializationInfoWithOperation:(unsigned int)operation size:(int64_t)size offset:(int64_t)offset
{
  v8 = objc_alloc_init(NSFileProviderKernelMaterializationInfo);
  v8->operation = operation;
  v8->fileMaterializationInfo = [[NSFileProviderKernelFileMaterializationInfo alloc] initWithSize:size offset:offset];

  return v8;
}

+ (id)partialFolderMaterializationInfoWithOperation:(unsigned int)operation fileName:(const char *)name
{
  v6 = objc_alloc_init(NSFileProviderKernelMaterializationInfo);
  v6->operation = operation;
  v6->partialFolderMaterializationInfo = [[NSFileProviderKernelPartialFolderMaterializationInfo alloc] initWithFileName:[NSString stringWithUTF8String:name]];

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderKernelMaterializationInfo;
  [(NSFileProviderKernelMaterializationInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelMaterializationInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->operation), @"fileop"}];
  [coder encodeObject:self->fileMaterializationInfo forKey:@"fileinfo"];
  partialFolderMaterializationInfo = self->partialFolderMaterializationInfo;

  [coder encodeObject:partialFolderMaterializationInfo forKey:@"folderinfo"];
}

- (NSFileProviderKernelMaterializationInfo)initWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelMaterializationInfo should only ever be decoded by XPC" userInfo:0]);
  }

  self->operation = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"fileop", "unsignedIntValue"}];
  self->fileMaterializationInfo = [coder decodeObjectOfClass:objc_opt_class() forKey:@"fileinfo"];
  self->partialFolderMaterializationInfo = [coder decodeObjectOfClass:objc_opt_class() forKey:@"folderinfo"];
  return self;
}

@end
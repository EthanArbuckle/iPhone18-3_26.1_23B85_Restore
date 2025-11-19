@interface NSFileProviderKernelMaterializationInfo
+ (NSFileProviderKernelMaterializationInfo)kernelMaterializationInfoWithOperation:(unsigned int)a3;
+ (id)fileMaterializationInfoWithOperation:(unsigned int)a3 size:(int64_t)a4 offset:(int64_t)a5;
+ (id)partialFolderMaterializationInfoWithOperation:(unsigned int)a3 fileName:(const char *)a4;
- (NSFileProviderKernelMaterializationInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderKernelMaterializationInfo

+ (NSFileProviderKernelMaterializationInfo)kernelMaterializationInfoWithOperation:(unsigned int)a3
{
  v4 = objc_alloc_init(NSFileProviderKernelMaterializationInfo);
  v4->operation = a3;

  return v4;
}

+ (id)fileMaterializationInfoWithOperation:(unsigned int)a3 size:(int64_t)a4 offset:(int64_t)a5
{
  v8 = objc_alloc_init(NSFileProviderKernelMaterializationInfo);
  v8->operation = a3;
  v8->fileMaterializationInfo = [[NSFileProviderKernelFileMaterializationInfo alloc] initWithSize:a4 offset:a5];

  return v8;
}

+ (id)partialFolderMaterializationInfoWithOperation:(unsigned int)a3 fileName:(const char *)a4
{
  v6 = objc_alloc_init(NSFileProviderKernelMaterializationInfo);
  v6->operation = a3;
  v6->partialFolderMaterializationInfo = [[NSFileProviderKernelPartialFolderMaterializationInfo alloc] initWithFileName:[NSString stringWithUTF8String:a4]];

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderKernelMaterializationInfo;
  [(NSFileProviderKernelMaterializationInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelMaterializationInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->operation), @"fileop"}];
  [a3 encodeObject:self->fileMaterializationInfo forKey:@"fileinfo"];
  partialFolderMaterializationInfo = self->partialFolderMaterializationInfo;

  [a3 encodeObject:partialFolderMaterializationInfo forKey:@"folderinfo"];
}

- (NSFileProviderKernelMaterializationInfo)initWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderKernelMaterializationInfo should only ever be decoded by XPC" userInfo:0]);
  }

  self->operation = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"fileop", "unsignedIntValue"}];
  self->fileMaterializationInfo = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fileinfo"];
  self->partialFolderMaterializationInfo = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"folderinfo"];
  return self;
}

@end
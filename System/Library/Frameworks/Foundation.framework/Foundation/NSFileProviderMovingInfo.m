@interface NSFileProviderMovingInfo
+ (id)infoWithDestinationDirectoryURL:(id)a3;
- (NSFileProviderMovingInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderMovingInfo

+ (id)infoWithDestinationDirectoryURL:(id)a3
{
  v4 = objc_opt_new();
  v4[1] = a3;

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderMovingInfo;
  [(NSFileProviderMovingInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderMovingInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  destinationDirectoryURL = self->destinationDirectoryURL;

  [a3 encodeObject:destinationDirectoryURL forKey:@"destinationDirectoryURL"];
}

- (NSFileProviderMovingInfo)initWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderMovingInfo should only ever be decoded by XPC" userInfo:0]);
  }

  self->destinationDirectoryURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"destinationDirectoryURL"];
  return self;
}

@end
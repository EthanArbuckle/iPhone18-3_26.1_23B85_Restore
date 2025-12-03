@interface NSFileProviderMovingResponse
+ (id)providingNotRequiredResponseWithSyncRootID:(unint64_t)d;
+ (id)providingRequiredResponse;
- (NSFileProviderMovingResponse)initWithCoder:(id)coder;
- (NSNumber)syncRootID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderMovingResponse

+ (id)providingRequiredResponse
{
  v2 = objc_opt_new();
  v2[4] = 257;

  return v2;
}

+ (id)providingNotRequiredResponseWithSyncRootID:(unint64_t)d
{
  v4 = objc_opt_new();
  *(v4 + 8) = 0;
  *(v4 + 16) = d;

  return v4;
}

- (NSNumber)syncRootID
{
  if (self->_syncRootID)
  {
    return [NSNumber numberWithUnsignedLongLong:?];
  }

  else
  {
    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderMovingResponse instances should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeBool:self->_requiresProviding forKey:@"requiresProviding"];
  [coder encodeBool:self->_requiresAccessorBlockMaterializationPolicy forKey:@"requiresMaterialization"];
  syncRootID = [(NSFileProviderMovingResponse *)self syncRootID];

  [coder encodeObject:syncRootID forKey:@"syncRootID"];
}

- (NSFileProviderMovingResponse)initWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderMovingResponse should only ever be decoded by XPC" userInfo:0]);
  }

  self->_requiresProviding = [coder decodeBoolForKey:@"requiresProviding"];
  self->_requiresAccessorBlockMaterializationPolicy = [coder decodeBoolForKey:@"requiresMaterialization"];
  self->_syncRootID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"syncRootID", "unsignedLongLongValue"}];
  return self;
}

@end
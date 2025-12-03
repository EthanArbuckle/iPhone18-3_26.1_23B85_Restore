@interface NSFileProvidingInfo
+ (id)infoWithReaderID:(id)d options:(unint64_t)options auditToken:(id *)token kernelMaterializationInfo:(id)info;
- (NSFileProvidingInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProvidingInfo

+ (id)infoWithReaderID:(id)d options:(unint64_t)options auditToken:(id *)token kernelMaterializationInfo:(id)info
{
  optionsCopy = options;
  v10 = objc_alloc_init(NSFileProvidingInfo);
  v11 = *&token->var0[4];
  *v10->readerAuditToken.val = *token->var0;
  *&v10->readerAuditToken.val[4] = v11;
  v10->readerID = [d copy];
  v10->readingOptions = optionsCopy & 0x7FFFFFFF;
  v10->kernelMaterializationInfo = info;

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProvidingInfo;
  [(NSFileProvidingInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProvidingInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeBytes:&self->readerAuditToken length:32 forKey:@"audittoken"];
  [coder encodeObject:self->readerID forKey:@"readerid"];
  [coder encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->readingOptions), @"options"}];
  kernelMaterializationInfo = self->kernelMaterializationInfo;

  [coder encodeObject:kernelMaterializationInfo forKey:@"kernmatinfo"];
}

- (NSFileProvidingInfo)initWithCoder:(id)coder
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProvidingInfo should only ever be decoded by XPC" userInfo:0]);
  }

  v8 = 0;
  v5 = [coder decodeBytesForKey:@"audittoken" returnedLength:&v8];
  if (v5 && v8 == 32)
  {
    v6 = *v5;
    *&self->readerAuditToken.val[4] = v5[1];
    *self->readerAuditToken.val = v6;
    self->readerID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"readerid"];
    self->readingOptions = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"options", "unsignedIntegerValue"}];
    self->kernelMaterializationInfo = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kernmatinfo"];
  }

  else
  {

    v9 = @"NSDebugDescription";
    v10[0] = @"Audit token is missing or invalid";
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1))}];
    return 0;
  }

  return self;
}

@end
@interface NSFileProvidingInfo
+ (id)infoWithReaderID:(id)a3 options:(unint64_t)a4 auditToken:(id *)a5 kernelMaterializationInfo:(id)a6;
- (NSFileProvidingInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProvidingInfo

+ (id)infoWithReaderID:(id)a3 options:(unint64_t)a4 auditToken:(id *)a5 kernelMaterializationInfo:(id)a6
{
  v8 = a4;
  v10 = objc_alloc_init(NSFileProvidingInfo);
  v11 = *&a5->var0[4];
  *v10->readerAuditToken.val = *a5->var0;
  *&v10->readerAuditToken.val[4] = v11;
  v10->readerID = [a3 copy];
  v10->readingOptions = v8 & 0x7FFFFFFF;
  v10->kernelMaterializationInfo = a6;

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProvidingInfo;
  [(NSFileProvidingInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProvidingInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeBytes:&self->readerAuditToken length:32 forKey:@"audittoken"];
  [a3 encodeObject:self->readerID forKey:@"readerid"];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->readingOptions), @"options"}];
  kernelMaterializationInfo = self->kernelMaterializationInfo;

  [a3 encodeObject:kernelMaterializationInfo forKey:@"kernmatinfo"];
}

- (NSFileProvidingInfo)initWithCoder:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProvidingInfo should only ever be decoded by XPC" userInfo:0]);
  }

  v8 = 0;
  v5 = [a3 decodeBytesForKey:@"audittoken" returnedLength:&v8];
  if (v5 && v8 == 32)
  {
    v6 = *v5;
    *&self->readerAuditToken.val[4] = v5[1];
    *self->readerAuditToken.val = v6;
    self->readerID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"readerid"];
    self->readingOptions = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"options", "unsignedIntegerValue"}];
    self->kernelMaterializationInfo = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kernmatinfo"];
  }

  else
  {

    v9 = @"NSDebugDescription";
    v10[0] = @"Audit token is missing or invalid";
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1))}];
    return 0;
  }

  return self;
}

@end
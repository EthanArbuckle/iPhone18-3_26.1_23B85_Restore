@interface NSFileProviderPresenterInfo
+ (id)infoWithPresenterID:(id)d auditToken:(id *)token observedUbiquityAttributes:(id)attributes;
- (NSFileProviderPresenterInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderPresenterInfo

+ (id)infoWithPresenterID:(id)d auditToken:(id *)token observedUbiquityAttributes:(id)attributes
{
  v8 = objc_alloc_init(NSFileProviderPresenterInfo);
  v9 = *&token->var0[4];
  *v8->presenterAuditToken.val = *token->var0;
  *&v8->presenterAuditToken.val[4] = v9;
  v8->presenterID = [d copy];
  v8->observedUbiquityAttributes = attributes;

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderPresenterInfo;
  [(NSFileProviderPresenterInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderPresenterInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeBytes:&self->presenterAuditToken length:32 forKey:@"audittoken"];
  [coder encodeObject:self->presenterID forKey:@"presenterid"];
  [coder encodeObject:self->observedUbiquityAttributes forKey:@"ubiquityattrs"];
  changedURL = self->changedURL;

  [coder encodeObject:changedURL forKey:@"newurl"];
}

- (NSFileProviderPresenterInfo)initWithCoder:(id)coder
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderPresenterInfo should only ever be decoded by XPC" userInfo:0]);
  }

  v10 = 0;
  v5 = [coder decodeBytesForKey:@"audittoken" returnedLength:&v10];
  if (v5 && v10 == 32)
  {
    v6 = v5[1];
    *self->presenterAuditToken.val = *v5;
    *&self->presenterAuditToken.val[4] = v6;
    self->presenterID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"presenterid"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    self->observedUbiquityAttributes = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"ubiquityattrs"}];
    self->changedURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"newurl"];
  }

  else
  {

    v11 = @"NSDebugDescription";
    v12[0] = @"Audit token is missing or invalid";
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1))}];
    return 0;
  }

  return self;
}

@end
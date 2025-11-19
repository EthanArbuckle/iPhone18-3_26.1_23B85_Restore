@interface NSFileProviderPresenterInfo
+ (id)infoWithPresenterID:(id)a3 auditToken:(id *)a4 observedUbiquityAttributes:(id)a5;
- (NSFileProviderPresenterInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderPresenterInfo

+ (id)infoWithPresenterID:(id)a3 auditToken:(id *)a4 observedUbiquityAttributes:(id)a5
{
  v8 = objc_alloc_init(NSFileProviderPresenterInfo);
  v9 = *&a4->var0[4];
  *v8->presenterAuditToken.val = *a4->var0;
  *&v8->presenterAuditToken.val[4] = v9;
  v8->presenterID = [a3 copy];
  v8->observedUbiquityAttributes = a5;

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderPresenterInfo;
  [(NSFileProviderPresenterInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderPresenterInfo instances should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeBytes:&self->presenterAuditToken length:32 forKey:@"audittoken"];
  [a3 encodeObject:self->presenterID forKey:@"presenterid"];
  [a3 encodeObject:self->observedUbiquityAttributes forKey:@"ubiquityattrs"];
  changedURL = self->changedURL;

  [a3 encodeObject:changedURL forKey:@"newurl"];
}

- (NSFileProviderPresenterInfo)initWithCoder:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProviderPresenterInfo should only ever be decoded by XPC" userInfo:0]);
  }

  v10 = 0;
  v5 = [a3 decodeBytesForKey:@"audittoken" returnedLength:&v10];
  if (v5 && v10 == 32)
  {
    v6 = v5[1];
    *self->presenterAuditToken.val = *v5;
    *&self->presenterAuditToken.val[4] = v6;
    self->presenterID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"presenterid"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    self->observedUbiquityAttributes = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"ubiquityattrs"}];
    self->changedURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"newurl"];
  }

  else
  {

    v11 = @"NSDebugDescription";
    v12[0] = @"Audit token is missing or invalid";
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1))}];
    return 0;
  }

  return self;
}

@end
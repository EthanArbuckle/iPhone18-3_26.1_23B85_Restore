@interface NSFileProvidingResponse
+ (id)responseWithError:(id)a3;
- (NSFileProvidingResponse)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProvidingResponse

+ (id)responseWithError:(id)a3
{
  v4 = objc_alloc_init(NSFileProvidingResponse);
  v4->error = a3;

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProvidingResponse;
  [(NSFileProvidingResponse *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProvidingResponse instances should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->providedItemRecursiveGenerationCount), @"gencount"}];
  [a3 encodeObject:self->error forKey:@"error"];
  sandboxToken = self->sandboxToken;

  [a3 encodeObject:sandboxToken forKey:@"sandboxtoken"];
}

- (NSFileProvidingResponse)initWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileProvidingResponse should only ever be decoded by XPC" userInfo:0]);
  }

  self->providedItemRecursiveGenerationCount = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"gencount", "unsignedIntegerValue"}];
  self->error = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  self->sandboxToken = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxtoken"];
  return self;
}

@end
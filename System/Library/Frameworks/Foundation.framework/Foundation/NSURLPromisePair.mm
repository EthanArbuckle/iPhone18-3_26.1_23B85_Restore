@interface NSURLPromisePair
+ (id)pairWithLogicalURL:(id)a3 physicalURL:(id)a4;
+ (id)pairWithURL:(id)a3;
- (NSURL)URL;
- (NSURLPromisePair)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSURLPromisePair

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSURLPromisePair;
  [(NSURLPromisePair *)&v3 dealloc];
}

- (NSURL)URL
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:{-[NSURL absoluteString](self->_logicalURL, "absoluteString")}];
  if (v2)
  {
    _CFURLPromiseSetPhysicalURL();
  }

  return v2;
}

+ (id)pairWithURL:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = _CFURLPromiseCopyPhysicalURL();
    v3 = [a1 pairWithLogicalURL:v3 physicalURL:v5];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v3;
}

+ (id)pairWithLogicalURL:(id)a3 physicalURL:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = objc_alloc_init(a1);
  if (v6)
  {
    v6[1] = [a3 copy];
    v6[2] = [a4 copy];
  }

  return v6;
}

- (NSURLPromisePair)initWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"_NSURLPromisePair should only ever be decoded by XPC" userInfo:0]);
  }

  self->_logicalURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSLogicalURL"];
  self->_physicalURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPhysicalURL"];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:self->_logicalURL forKey:@"NSLogicalURL"];
  physicalURL = self->_physicalURL;

  [a3 encodeObject:physicalURL forKey:@"NSPhysicalURL"];
}

@end
@interface NSURLPromisePair
+ (id)pairWithLogicalURL:(id)l physicalURL:(id)rL;
+ (id)pairWithURL:(id)l;
- (NSURL)URL;
- (NSURLPromisePair)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

+ (id)pairWithURL:(id)l
{
  lCopy = l;
  if (l)
  {
    v5 = _CFURLPromiseCopyPhysicalURL();
    lCopy = [self pairWithLogicalURL:lCopy physicalURL:v5];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return lCopy;
}

+ (id)pairWithLogicalURL:(id)l physicalURL:(id)rL
{
  if (!l)
  {
    return 0;
  }

  v6 = objc_alloc_init(self);
  if (v6)
  {
    v6[1] = [l copy];
    v6[2] = [rL copy];
  }

  return v6;
}

- (NSURLPromisePair)initWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"_NSURLPromisePair should only ever be decoded by XPC" userInfo:0]);
  }

  self->_logicalURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSLogicalURL"];
  self->_physicalURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPhysicalURL"];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeObject:self->_logicalURL forKey:@"NSLogicalURL"];
  physicalURL = self->_physicalURL;

  [coder encodeObject:physicalURL forKey:@"NSPhysicalURL"];
}

@end
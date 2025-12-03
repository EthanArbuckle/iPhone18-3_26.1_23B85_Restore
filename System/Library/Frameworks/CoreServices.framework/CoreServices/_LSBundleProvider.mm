@interface _LSBundleProvider
- (_LSBundleProvider)initWithCFBundle:(__CFBundle *)bundle;
- (_LSBundleProvider)initWithURL:(id)l useCacheIfPossible:(BOOL)possible;
- (__CFBundle)cfBundleRef:(BOOL)ref reason:(id)reason;
- (id)bundle:(BOOL)bundle reason:(id)reason;
- (id)bundleIdentifier;
- (id)bundlePath;
- (id)bundleURL;
- (id)infoDictionary;
- (void)dealloc;
@end

@implementation _LSBundleProvider

- (id)bundleURL
{
  v2 = *[(_LSBundleProvider *)self provider];

  return v2;
}

- (id)bundlePath
{
  v2 = CFURLCopyFileSystemPath(*[(_LSBundleProvider *)self provider], kCFURLPOSIXPathStyle);

  return v2;
}

- (id)bundleIdentifier
{
  provider = [(_LSBundleProvider *)self provider];

  return LSBundleProvider::bundleIdentifier(provider);
}

- (id)infoDictionary
{
  provider = [(_LSBundleProvider *)self provider];

  return LSBundleProvider::infoDictionary(provider);
}

- (_LSBundleProvider)initWithCFBundle:(__CFBundle *)bundle
{
  v4.receiver = self;
  v4.super_class = _LSBundleProvider;
  if ([(_LSBundleProvider *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (_LSBundleProvider)initWithURL:(id)l useCacheIfPossible:(BOOL)possible
{
  lCopy = l;
  v7.receiver = self;
  v7.super_class = _LSBundleProvider;
  if ([(_LSBundleProvider *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (__CFBundle)cfBundleRef:(BOOL)ref reason:(id)reason
{
  reasonCopy = reason;
  provider = [(_LSBundleProvider *)self provider];
  if (reasonCopy)
  {
    [reasonCopy cStringUsingEncoding:4];
  }

  v7 = provider[1];

  return v7;
}

- (id)bundle:(BOOL)bundle reason:(id)reason
{
  v4 = [(_LSBundleProvider *)self cfBundleRef:1 reason:reason];

  return v4;
}

- (void)dealloc
{
  provider = self->_provider;
  if (provider)
  {
    LSBundleProvider::~LSBundleProvider(provider);
    MEMORY[0x1865D6250]();
  }

  v4.receiver = self;
  v4.super_class = _LSBundleProvider;
  [(_LSBundleProvider *)&v4 dealloc];
}

@end
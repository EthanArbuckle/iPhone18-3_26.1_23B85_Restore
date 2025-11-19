@interface _LSBundleProvider
- (_LSBundleProvider)initWithCFBundle:(__CFBundle *)a3;
- (_LSBundleProvider)initWithURL:(id)a3 useCacheIfPossible:(BOOL)a4;
- (__CFBundle)cfBundleRef:(BOOL)a3 reason:(id)a4;
- (id)bundle:(BOOL)a3 reason:(id)a4;
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
  v2 = [(_LSBundleProvider *)self provider];

  return LSBundleProvider::bundleIdentifier(v2);
}

- (id)infoDictionary
{
  v2 = [(_LSBundleProvider *)self provider];

  return LSBundleProvider::infoDictionary(v2);
}

- (_LSBundleProvider)initWithCFBundle:(__CFBundle *)a3
{
  v4.receiver = self;
  v4.super_class = _LSBundleProvider;
  if ([(_LSBundleProvider *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (_LSBundleProvider)initWithURL:(id)a3 useCacheIfPossible:(BOOL)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = _LSBundleProvider;
  if ([(_LSBundleProvider *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (__CFBundle)cfBundleRef:(BOOL)a3 reason:(id)a4
{
  v5 = a4;
  v6 = [(_LSBundleProvider *)self provider];
  if (v5)
  {
    [v5 cStringUsingEncoding:4];
  }

  v7 = v6[1];

  return v7;
}

- (id)bundle:(BOOL)a3 reason:(id)a4
{
  v4 = [(_LSBundleProvider *)self cfBundleRef:1 reason:a4];

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
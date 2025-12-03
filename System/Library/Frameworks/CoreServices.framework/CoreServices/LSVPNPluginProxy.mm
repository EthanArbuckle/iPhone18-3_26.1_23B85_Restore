@interface LSVPNPluginProxy
+ (id)VPNPluginProxyForIdentifier:(id)identifier;
+ (id)VPNPluginProxyForIdentifier:(id)identifier withContext:(LSContext *)context;
- (LSVPNPluginProxy)initWithCoder:(id)coder;
- (id)_initWithBundleIdentifier:(id)identifier withContext:(LSContext *)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSVPNPluginProxy

- (id)_initWithBundleIdentifier:(id)identifier withContext:(LSContext *)context
{
  identifierCopy = identifier;
  v7 = _LSFindBundleWithInfo(context, 5uLL, identifierCopy, 0, 0, 0, 0);
  v10.receiver = self;
  v10.super_class = LSVPNPluginProxy;
  v8 = [(LSBundleProxy *)&v10 _initWithBundleUnit:v7 context:context bundleType:5 bundleID:identifierCopy localizedName:0 bundleContainerURL:0 dataContainerURL:0 resourcesDirectoryURL:0 iconsDictionary:0 iconFileNames:0 version:0];

  return v8;
}

+ (id)VPNPluginProxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = 0;
  if (_LSContextInit(&v7))
  {
    v5 = 0;
  }

  else
  {
    v5 = [self VPNPluginProxyForIdentifier:identifierCopy withContext:&v7];
    _LSContextDestroy(&v7);
  }

  return v5;
}

+ (id)VPNPluginProxyForIdentifier:(id)identifier withContext:(LSContext *)context
{
  identifierCopy = identifier;
  v7 = [[self alloc] _initWithBundleIdentifier:identifierCopy withContext:context];

  return v7;
}

- (LSVPNPluginProxy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = LSVPNPluginProxy;
  return [(LSBundleProxy *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = LSVPNPluginProxy;
  [(LSBundleProxy *)&v3 encodeWithCoder:coder];
}

@end
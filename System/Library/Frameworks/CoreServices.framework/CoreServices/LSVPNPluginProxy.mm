@interface LSVPNPluginProxy
+ (id)VPNPluginProxyForIdentifier:(id)a3;
+ (id)VPNPluginProxyForIdentifier:(id)a3 withContext:(LSContext *)a4;
- (LSVPNPluginProxy)initWithCoder:(id)a3;
- (id)_initWithBundleIdentifier:(id)a3 withContext:(LSContext *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSVPNPluginProxy

- (id)_initWithBundleIdentifier:(id)a3 withContext:(LSContext *)a4
{
  v6 = a3;
  v7 = _LSFindBundleWithInfo(a4, 5uLL, v6, 0, 0, 0, 0);
  v10.receiver = self;
  v10.super_class = LSVPNPluginProxy;
  v8 = [(LSBundleProxy *)&v10 _initWithBundleUnit:v7 context:a4 bundleType:5 bundleID:v6 localizedName:0 bundleContainerURL:0 dataContainerURL:0 resourcesDirectoryURL:0 iconsDictionary:0 iconFileNames:0 version:0];

  return v8;
}

+ (id)VPNPluginProxyForIdentifier:(id)a3
{
  v4 = a3;
  v7 = 0;
  if (_LSContextInit(&v7))
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 VPNPluginProxyForIdentifier:v4 withContext:&v7];
    _LSContextDestroy(&v7);
  }

  return v5;
}

+ (id)VPNPluginProxyForIdentifier:(id)a3 withContext:(LSContext *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithBundleIdentifier:v6 withContext:a4];

  return v7;
}

- (LSVPNPluginProxy)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = LSVPNPluginProxy;
  return [(LSBundleProxy *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = LSVPNPluginProxy;
  [(LSBundleProxy *)&v3 encodeWithCoder:a3];
}

@end
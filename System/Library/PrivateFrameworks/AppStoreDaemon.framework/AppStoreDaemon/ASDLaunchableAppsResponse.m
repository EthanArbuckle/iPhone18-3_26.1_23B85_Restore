@interface ASDLaunchableAppsResponse
- (ASDLaunchableAppsResponse)initWithBundleIDs:(id)a3;
- (ASDLaunchableAppsResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASDLaunchableAppsResponse

- (ASDLaunchableAppsResponse)initWithBundleIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDLaunchableAppsResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASDLaunchableAppsResponse allocWithZone:a3];
  bundleIDs = self->_bundleIDs;

  return [(ASDLaunchableAppsResponse *)v4 initWithBundleIDs:bundleIDs];
}

- (ASDLaunchableAppsResponse)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"bundleIDs"];

  v9 = [(ASDLaunchableAppsResponse *)self initWithBundleIDs:v8];
  return v9;
}

@end
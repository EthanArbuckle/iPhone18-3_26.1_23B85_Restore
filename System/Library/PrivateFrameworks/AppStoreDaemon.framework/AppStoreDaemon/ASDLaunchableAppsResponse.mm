@interface ASDLaunchableAppsResponse
- (ASDLaunchableAppsResponse)initWithBundleIDs:(id)ds;
- (ASDLaunchableAppsResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDLaunchableAppsResponse

- (ASDLaunchableAppsResponse)initWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = ASDLaunchableAppsResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:dsCopy copyItems:1];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASDLaunchableAppsResponse allocWithZone:zone];
  bundleIDs = self->_bundleIDs;

  return [(ASDLaunchableAppsResponse *)v4 initWithBundleIDs:bundleIDs];
}

- (ASDLaunchableAppsResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"bundleIDs"];

  v9 = [(ASDLaunchableAppsResponse *)self initWithBundleIDs:v8];
  return v9;
}

@end
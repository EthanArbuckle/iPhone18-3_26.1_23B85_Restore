@interface ASDLaunchableAppsRequestOptions
- (ASDLaunchableAppsRequestOptions)initWithBundleIDs:(id)ds;
- (ASDLaunchableAppsRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDLaunchableAppsRequestOptions

- (ASDLaunchableAppsRequestOptions)initWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = ASDLaunchableAppsRequestOptions;
  v5 = [(ASDLaunchableAppsRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASDLaunchableAppsRequestOptions allocWithZone:zone];
  bundleIDs = self->_bundleIDs;

  return [(ASDLaunchableAppsRequestOptions *)v4 initWithBundleIDs:bundleIDs];
}

- (ASDLaunchableAppsRequestOptions)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDLaunchableAppsRequestOptions;
  v5 = [(ASDLaunchableAppsRequestOptions *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
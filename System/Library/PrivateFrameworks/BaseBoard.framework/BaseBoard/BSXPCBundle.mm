@interface BSXPCBundle
+ (id)bundleForPID:(int)d;
+ (id)bundleWithExecutablePath:(id)path;
+ (id)bundleWithPath:(id)path;
+ (id)bundleWithXPCBundle:(id)bundle;
+ (id)mainBundle;
- (NSDictionary)infoDictionary;
- (NSString)bundleIdentifier;
- (NSString)bundlePath;
- (NSString)executablePath;
- (id)_initWithXPCBundle:(id)bundle;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BSXPCBundle

+ (id)mainBundle
{
  if (qword_1ED44FC50 != -1)
  {
    dispatch_once(&qword_1ED44FC50, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

void __25__BSXPCBundle_mainBundle__block_invoke()
{
  v0 = [BSXPCBundle alloc];
  main = xpc_bundle_create_main();
  v1 = [(BSXPCBundle *)v0 _initWithXPCBundle:?];
  v2 = _MergedGlobals_3;
  _MergedGlobals_3 = v1;
}

- (id)_initWithXPCBundle:(id)bundle
{
  v4 = a2;
  v5 = v4;
  if (bundle && v4)
  {
    v6 = [bundle init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong((v6 + 40), a2);
    }

    bundle = v7;
    bundleCopy = bundle;
  }

  else
  {
    bundleCopy = 0;
  }

  return bundleCopy;
}

+ (id)bundleForPID:(int)d
{
  v3 = BSXPCBundleForPID();
  v4 = [BSXPCBundle bundleWithXPCBundle:v3];

  return v4;
}

+ (id)bundleWithPath:(id)path
{
  v3 = BSXPCBundleForBundlePath(path);
  v4 = [BSXPCBundle bundleWithXPCBundle:v3];

  return v4;
}

+ (id)bundleWithExecutablePath:(id)path
{
  v3 = BSXPCBundleForExecutablePath(path);
  v4 = [BSXPCBundle bundleWithXPCBundle:v3];

  return v4;
}

+ (id)bundleWithXPCBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[BSXPCBundle alloc] _initWithXPCBundle:bundleCopy];

  return v4;
}

- (NSString)bundleIdentifier
{
  bundleIdentifier = self->_bundleIdentifier;
  if (!bundleIdentifier)
  {
    v4 = BSXPCBundleGetIdentifier(self->_xpcBundle);
    v5 = [v4 copy];
    v6 = self->_bundleIdentifier;
    self->_bundleIdentifier = v5;

    bundleIdentifier = self->_bundleIdentifier;
  }

  return bundleIdentifier;
}

- (NSString)bundlePath
{
  bundlePath = self->_bundlePath;
  if (!bundlePath)
  {
    v4 = BSXPCBundleGetBundlePath(self->_xpcBundle);
    v5 = [v4 copy];
    v6 = self->_bundlePath;
    self->_bundlePath = v5;

    bundlePath = self->_bundlePath;
  }

  return bundlePath;
}

- (NSString)executablePath
{
  executablePath = self->_executablePath;
  if (!executablePath)
  {
    v4 = BSXPCBundleGetExecutablePath(self->_xpcBundle);
    v5 = [v4 copy];
    v6 = self->_executablePath;
    self->_executablePath = v5;

    executablePath = self->_executablePath;
  }

  return executablePath;
}

- (NSDictionary)infoDictionary
{
  infoDictionary = self->_infoDictionary;
  if (!infoDictionary)
  {
    v4 = BSXPCBundleGetInfoDictionary(self->_xpcBundle);
    v5 = [v4 copy];
    v6 = self->_infoDictionary;
    self->_infoDictionary = v5;

    infoDictionary = self->_infoDictionary;
  }

  return infoDictionary;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSXPCBundle *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  bundleIdentifier = [(BSXPCBundle *)self bundleIdentifier];
  v5 = [v3 appendObject:bundleIdentifier withName:@"bundleID"];

  bundlePath = [(BSXPCBundle *)self bundlePath];
  v7 = [v3 appendObject:bundlePath withName:@"path"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSXPCBundle *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BSXPCBundle *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

@end
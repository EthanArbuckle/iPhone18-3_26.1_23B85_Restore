@interface BSXPCBundle
+ (id)bundleForPID:(int)a3;
+ (id)bundleWithExecutablePath:(id)a3;
+ (id)bundleWithPath:(id)a3;
+ (id)bundleWithXPCBundle:(id)a3;
+ (id)mainBundle;
- (NSDictionary)infoDictionary;
- (NSString)bundleIdentifier;
- (NSString)bundlePath;
- (NSString)executablePath;
- (id)_initWithXPCBundle:(id)a1;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (id)_initWithXPCBundle:(id)a1
{
  v4 = a2;
  v5 = v4;
  if (a1 && v4)
  {
    v6 = [a1 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong((v6 + 40), a2);
    }

    a1 = v7;
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)bundleForPID:(int)a3
{
  v3 = BSXPCBundleForPID();
  v4 = [BSXPCBundle bundleWithXPCBundle:v3];

  return v4;
}

+ (id)bundleWithPath:(id)a3
{
  v3 = BSXPCBundleForBundlePath(a3);
  v4 = [BSXPCBundle bundleWithXPCBundle:v3];

  return v4;
}

+ (id)bundleWithExecutablePath:(id)a3
{
  v3 = BSXPCBundleForExecutablePath(a3);
  v4 = [BSXPCBundle bundleWithXPCBundle:v3];

  return v4;
}

+ (id)bundleWithXPCBundle:(id)a3
{
  v3 = a3;
  v4 = [[BSXPCBundle alloc] _initWithXPCBundle:v3];

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
  v2 = [(BSXPCBundle *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(BSXPCBundle *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"bundleID"];

  v6 = [(BSXPCBundle *)self bundlePath];
  v7 = [v3 appendObject:v6 withName:@"path"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSXPCBundle *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(BSXPCBundle *)self succinctDescriptionBuilder];

  return v3;
}

@end
@interface _EXRemoteViewService
- (_EXRemoteViewService)initWithExtensionProcess:(id)process contextToken:(id)token;
- (id)identifier;
- (id)viewControllerClassName;
- (id)xpcServiceNameRoot;
- (int)processIdentifier;
@end

@implementation _EXRemoteViewService

- (_EXRemoteViewService)initWithExtensionProcess:(id)process contextToken:(id)token
{
  processCopy = process;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = _EXRemoteViewService;
  _init = [(_UIRemoteViewService *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 2, process);
    objc_storeStrong(&v10->_contextToken, token);
  }

  return v10;
}

- (id)identifier
{
  extensionProcess = [(_EXRemoteViewService *)self extensionProcess];
  extensionIdentity = [extensionProcess extensionIdentity];
  bundleIdentifier = [extensionIdentity bundleIdentifier];

  return bundleIdentifier;
}

- (id)xpcServiceNameRoot
{
  extensionProcess = [(_EXRemoteViewService *)self extensionProcess];
  extensionIdentity = [extensionProcess extensionIdentity];
  bundleIdentifier = [extensionIdentity bundleIdentifier];

  return bundleIdentifier;
}

- (int)processIdentifier
{
  extensionProcess = [(_EXRemoteViewService *)self extensionProcess];
  v3 = [extensionProcess pid];

  return v3;
}

- (id)viewControllerClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
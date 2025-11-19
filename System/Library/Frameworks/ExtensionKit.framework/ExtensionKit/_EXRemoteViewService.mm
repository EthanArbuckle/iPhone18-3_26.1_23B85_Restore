@interface _EXRemoteViewService
- (_EXRemoteViewService)initWithExtensionProcess:(id)a3 contextToken:(id)a4;
- (id)identifier;
- (id)viewControllerClassName;
- (id)xpcServiceNameRoot;
- (int)processIdentifier;
@end

@implementation _EXRemoteViewService

- (_EXRemoteViewService)initWithExtensionProcess:(id)a3 contextToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _EXRemoteViewService;
  v9 = [(_UIRemoteViewService *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 2, a3);
    objc_storeStrong(&v10->_contextToken, a4);
  }

  return v10;
}

- (id)identifier
{
  v2 = [(_EXRemoteViewService *)self extensionProcess];
  v3 = [v2 extensionIdentity];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (id)xpcServiceNameRoot
{
  v2 = [(_EXRemoteViewService *)self extensionProcess];
  v3 = [v2 extensionIdentity];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (int)processIdentifier
{
  v2 = [(_EXRemoteViewService *)self extensionProcess];
  v3 = [v2 pid];

  return v3;
}

- (id)viewControllerClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
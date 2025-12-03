@interface SPPlugInExtension
- (SPPlugInExtension)initWithPlugin:(id)plugin;
- (id)extensionVendor;
- (void)notifyActive;
- (void)notifyInactiveWithCompletion:(id)completion;
@end

@implementation SPPlugInExtension

- (SPPlugInExtension)initWithPlugin:(id)plugin
{
  v4.receiver = self;
  v4.super_class = SPPlugInExtension;
  return [(SPPlugInExtension *)&v4 _initWithPKPlugin:plugin];
}

- (id)extensionVendor
{
  connection = self->_connection;
  if (!connection)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_100016BB0;
    v10[4] = sub_100016BC0;
    selfCopy = self;
    _bareExtensionServiceConnection = [(SPPlugInExtension *)selfCopy _bareExtensionServiceConnection];
    v5 = self->_connection;
    self->_connection = _bareExtensionServiceConnection;

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100016BC8;
    v9[3] = &unk_100045AB0;
    v9[4] = v10;
    v6 = objc_retainBlock(v9);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v6];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)self->_connection resume];

    _Block_object_dispose(v10, 8);
    connection = self->_connection;
  }

  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&stru_100045C30];

  return v7;
}

- (void)notifyActive
{
  extensionVendor = [(SPPlugInExtension *)self extensionVendor];
  [extensionVendor _hostWillEnterForegroundForContextUUID:0 completion:&stru_100045C50];
  [extensionVendor _hostDidBecomeActiveForContextUUID:0 completion:&stru_100045C70];
}

- (void)notifyInactiveWithCompletion:(id)completion
{
  completionCopy = completion;
  extensionVendor = [(SPPlugInExtension *)self extensionVendor];
  v5 = extensionVendor;
  if (extensionVendor)
  {
    [extensionVendor _hostWillResignActiveForContextUUID:0 completion:&stru_100045C90];
    [v5 _hostDidEnterBackgroundForContextUUID:0 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

@end
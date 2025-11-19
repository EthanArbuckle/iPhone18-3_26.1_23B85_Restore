@interface SPPlugInExtension
- (SPPlugInExtension)initWithPlugin:(id)a3;
- (id)extensionVendor;
- (void)notifyActive;
- (void)notifyInactiveWithCompletion:(id)a3;
@end

@implementation SPPlugInExtension

- (SPPlugInExtension)initWithPlugin:(id)a3
{
  v4.receiver = self;
  v4.super_class = SPPlugInExtension;
  return [(SPPlugInExtension *)&v4 _initWithPKPlugin:a3];
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
    v11 = self;
    v4 = [(SPPlugInExtension *)v11 _bareExtensionServiceConnection];
    v5 = self->_connection;
    self->_connection = v4;

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
  v2 = [(SPPlugInExtension *)self extensionVendor];
  [v2 _hostWillEnterForegroundForContextUUID:0 completion:&stru_100045C50];
  [v2 _hostDidBecomeActiveForContextUUID:0 completion:&stru_100045C70];
}

- (void)notifyInactiveWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(SPPlugInExtension *)self extensionVendor];
  v5 = v4;
  if (v4)
  {
    [v4 _hostWillResignActiveForContextUUID:0 completion:&stru_100045C90];
    [v5 _hostDidEnterBackgroundForContextUUID:0 completion:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

@end
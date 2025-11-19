@interface SRDebugInfoClient
+ (id)connectionToDaemon;
+ (id)remoteInterface;
+ (void)initialize;
- (SRDebugInfoClient)init;
- (SRDebugInfoClient)initWithConnection:(id)a3;
- (void)datastoreListingWithReply:(id)a3;
- (void)dealloc;
- (void)dumpClientsWithReply:(id)a3;
- (void)dumpConfigurationsWithReply:(id)a3;
- (void)dumpDefaultsWithReply:(id)a3;
- (void)dumpStateCacheWithReply:(id)a3;
- (void)fetchDeviceInformationForDeviceIdentifiers:(id)a3 reply:(id)a4;
- (void)fetchEligibilityStatusForBundleIdentifier:(id)a3 sensor:(id)a4 reply:(id)a5;
- (void)invalidate;
- (void)setupConnection;
@end

@implementation SRDebugInfoClient

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_1000169D0 = os_log_create("com.apple.SensorKit", "SRDebugInfoClient");
  }
}

- (SRDebugInfoClient)init
{
  v3 = [objc_opt_class() connectionToDaemon];

  return [(SRDebugInfoClient *)self initWithConnection:v3];
}

- (SRDebugInfoClient)initWithConnection:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRDebugInfoClient;
  v4 = [(SRDebugInfoClient *)&v6 init];
  if (v4)
  {
    v4->_connection = a3;
    [(SRDebugInfoClient *)v4 setupConnection];
  }

  return v4;
}

- (void)invalidate
{
  [(NSXPCConnection *)[(SRDebugInfoClient *)self connection] setExportedObject:0];
  v3 = [(SRDebugInfoClient *)self connection];

  [(NSXPCConnection *)v3 invalidate];
}

- (void)dealloc
{
  [(SRDebugInfoClient *)self setConnection:0];
  v3.receiver = self;
  v3.super_class = SRDebugInfoClient;
  [(SRDebugInfoClient *)&v3 dealloc];
}

+ (id)remoteInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceServerDebugging];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  [(NSXPCInterface *)v2 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v3 ofReply:v4 setWithObjects:v5, v6, objc_opt_class(), 0], "dumpClientsWithReply:", 0, 1];
  return v2;
}

+ (id)connectionToDaemon
{
  v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.SensorKit.debugging" options:4096];

  return v2;
}

- (void)setupConnection
{
  -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  -[NSXPCConnection setExportedInterface:](self->_connection, "setExportedInterface:", [objc_opt_class() clientInterface]);
  connection = self->_connection;

  [(NSXPCConnection *)connection resume];
}

- (void)dumpClientsWithReply:(id)a3
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007310;
  v5[3] = &unk_1000105D8;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000073F0;
  v4[3] = &unk_100010600;
  v4[4] = a3;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "dumpClientsWithReply:", v4}];
}

- (void)dumpStateCacheWithReply:(id)a3
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000074CC;
  v5[3] = &unk_1000105D8;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000075A8;
  v4[3] = &unk_100010600;
  v4[4] = a3;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "dumpStateCacheWithReply:", v4}];
}

- (void)datastoreListingWithReply:(id)a3
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007684;
  v5[3] = &unk_1000105D8;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007760;
  v4[3] = &unk_100010628;
  v4[4] = a3;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "listDatastoreWithReply:", v4}];
}

- (void)dumpConfigurationsWithReply:(id)a3
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007888;
  v5[3] = &unk_1000105D8;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007968;
  v4[3] = &unk_100010600;
  v4[4] = a3;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "dumpConfigurationsWithReply:", v4}];
}

- (void)dumpDefaultsWithReply:(id)a3
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007A44;
  v5[3] = &unk_1000105D8;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007B24;
  v4[3] = &unk_100010600;
  v4[4] = a3;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "dumpDefaultsWithReply:", v4}];
}

- (void)fetchEligibilityStatusForBundleIdentifier:(id)a3 sensor:(id)a4 reply:(id)a5
{
  connection = self->_connection;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007BD0;
  v6[3] = &unk_1000105D8;
  v6[4] = a5;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v6), "fetchEligibilityStatusForBundleIdentifier:sensor:reply:", a3, a4, a5}];
}

- (void)fetchDeviceInformationForDeviceIdentifiers:(id)a3 reply:(id)a4
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007D38;
  v5[3] = &unk_1000105D8;
  v5[4] = a4;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v5), "fetchDeviceInformationForDeviceIdentifiers:reply:", a3, a4}];
}

@end
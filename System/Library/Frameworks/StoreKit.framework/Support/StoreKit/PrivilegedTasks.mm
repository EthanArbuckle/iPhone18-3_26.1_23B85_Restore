@interface PrivilegedTasks
+ (id)copyIAPProductAtPath:(id)path toPath:(id)toPath;
+ (id)removeIAPProductAtPath:(id)path;
+ (id)sharedInstance;
- (id)_copyIAPProductAtPath:(id)path toPath:(id)toPath;
- (id)_removeIAPProductAtPath:(id)path;
- (id)_serviceConnection;
@end

@implementation PrivilegedTasks

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C0CC;
  block[3] = &unk_10037F9B0;
  block[4] = self;
  if (qword_1003D4BE0[0] != -1)
  {
    dispatch_once(qword_1003D4BE0, block);
  }

  v2 = qword_1003D4BD8;

  return v2;
}

+ (id)copyIAPProductAtPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  pathCopy = path;
  sharedInstance = [self sharedInstance];
  v9 = [sharedInstance _copyIAPProductAtPath:pathCopy toPath:toPathCopy];

  return v9;
}

+ (id)removeIAPProductAtPath:(id)path
{
  pathCopy = path;
  sharedInstance = [self sharedInstance];
  v6 = [sharedInstance _removeIAPProductAtPath:pathCopy];

  return v6;
}

- (id)_serviceConnection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.AppStoreDaemon.StorePrivilegedTaskService"];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StorePrivilegedTaskInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (id)_copyIAPProductAtPath:(id)path toPath:(id)toPath
{
  pathCopy = path;
  toPathCopy = toPath;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10007C414;
  v18 = sub_10007C424;
  v19 = 0;
  _serviceConnection = [(PrivilegedTasks *)self _serviceConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007C42C;
  v13[3] = &unk_100383248;
  v13[4] = &v14;
  v9 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007C43C;
  v12[3] = &unk_100383248;
  v12[4] = &v14;
  [v9 copyIAPProductAtPath:pathCopy toPath:toPathCopy withReplyHandler:v12];
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (id)_removeIAPProductAtPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10007C414;
  v15 = sub_10007C424;
  v16 = 0;
  _serviceConnection = [(PrivilegedTasks *)self _serviceConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007C5E0;
  v10[3] = &unk_100383248;
  v10[4] = &v11;
  v6 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007C5F0;
  v9[3] = &unk_100383248;
  v9[4] = &v11;
  [v6 removeIAPProductAtPath:pathCopy withReplyHandler:v9];
  v7 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v7;
}

@end
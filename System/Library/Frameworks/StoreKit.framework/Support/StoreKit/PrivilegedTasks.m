@interface PrivilegedTasks
+ (id)copyIAPProductAtPath:(id)a3 toPath:(id)a4;
+ (id)removeIAPProductAtPath:(id)a3;
+ (id)sharedInstance;
- (id)_copyIAPProductAtPath:(id)a3 toPath:(id)a4;
- (id)_removeIAPProductAtPath:(id)a3;
- (id)_serviceConnection;
@end

@implementation PrivilegedTasks

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C0CC;
  block[3] = &unk_10037F9B0;
  block[4] = a1;
  if (qword_1003D4BE0[0] != -1)
  {
    dispatch_once(qword_1003D4BE0, block);
  }

  v2 = qword_1003D4BD8;

  return v2;
}

+ (id)copyIAPProductAtPath:(id)a3 toPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedInstance];
  v9 = [v8 _copyIAPProductAtPath:v7 toPath:v6];

  return v9;
}

+ (id)removeIAPProductAtPath:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  v6 = [v5 _removeIAPProductAtPath:v4];

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

- (id)_copyIAPProductAtPath:(id)a3 toPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10007C414;
  v18 = sub_10007C424;
  v19 = 0;
  v8 = [(PrivilegedTasks *)self _serviceConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007C42C;
  v13[3] = &unk_100383248;
  v13[4] = &v14;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007C43C;
  v12[3] = &unk_100383248;
  v12[4] = &v14;
  [v9 copyIAPProductAtPath:v6 toPath:v7 withReplyHandler:v12];
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (id)_removeIAPProductAtPath:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10007C414;
  v15 = sub_10007C424;
  v16 = 0;
  v5 = [(PrivilegedTasks *)self _serviceConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007C5E0;
  v10[3] = &unk_100383248;
  v10[4] = &v11;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007C5F0;
  v9[3] = &unk_100383248;
  v9[4] = &v11;
  [v6 removeIAPProductAtPath:v4 withReplyHandler:v9];
  v7 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v7;
}

@end
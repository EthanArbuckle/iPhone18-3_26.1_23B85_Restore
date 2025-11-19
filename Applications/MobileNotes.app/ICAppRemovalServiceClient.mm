@interface ICAppRemovalServiceClient
+ (id)sharedClient;
- (ICAppRemovalServiceClient)init;
- (void)dealloc;
- (void)removeAppWithReply:(id)a3;
- (void)resumeConnectionIfNeeded;
- (void)suspendConnectionIfNeeded;
@end

@implementation ICAppRemovalServiceClient

+ (id)sharedClient
{
  if (qword_1006CB2A8 != -1)
  {
    sub_1004DC150();
  }

  v3 = qword_1006CB2A0;

  return v3;
}

- (ICAppRemovalServiceClient)init
{
  v6.receiver = self;
  v6.super_class = ICAppRemovalServiceClient;
  v2 = [(ICAppRemovalServiceClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.appremoval", v3);
    [(ICAppRemovalServiceClient *)v2 setRequestCountQueue:v4];

    [(ICAppRemovalServiceClient *)v2 setRequestCount:0];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  v3.receiver = self;
  v3.super_class = ICAppRemovalServiceClient;
  [(ICAppRemovalServiceClient *)&v3 dealloc];
}

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  [(ICAppRemovalServiceClient *)self resumeConnectionIfNeeded];
  connectionToService = self->_connectionToService;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A1CC8;
  v11[3] = &unk_100646D78;
  v6 = v4;
  v12 = v6;
  v7 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A1DA4;
  v9[3] = &unk_100645570;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 removeAppWithReply:v9];
}

- (void)resumeConnectionIfNeeded
{
  v3 = [(ICAppRemovalServiceClient *)self requestCountQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1EBC;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)suspendConnectionIfNeeded
{
  v3 = [(ICAppRemovalServiceClient *)self requestCountQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2010;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end
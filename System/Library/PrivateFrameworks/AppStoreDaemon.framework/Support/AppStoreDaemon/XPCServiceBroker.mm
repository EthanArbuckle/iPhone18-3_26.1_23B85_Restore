@interface XPCServiceBroker
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation XPCServiceBroker

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  catalog = self->_catalog;
  v6 = a4;
  v7 = sub_1002A7588(XPCServiceClient, v6, catalog);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023F624;
  block[3] = &unk_10051B570;
  block[4] = self;
  v9 = v7;
  v22 = v9;
  dispatch_async(dispatchQueue, block);
  v10 = +[ASDServiceBroker interface];
  [v6 setExportedInterface:v10];

  [v6 setExportedObject:v9];
  v11 = +[ASDNotificationCenter interface];
  [v6 setRemoteObjectInterface:v11];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10023F630;
  v18 = &unk_10051B570;
  v12 = v9;
  v19 = v12;
  v20 = self;
  [v6 setInvalidationHandler:&v15];
  [v6 resume];

  v13 = sub_100003984();
  sub_1003B854C(v13, v12);

  if (sub_100003A28(v12))
  {
    sub_100200AFC(DiagnosticPublisher, v12);
  }

  return 1;
}

@end
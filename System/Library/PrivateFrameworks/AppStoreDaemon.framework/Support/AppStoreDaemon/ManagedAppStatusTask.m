@interface ManagedAppStatusTask
- (ManagedAppStatusTask)init;
- (void)main;
@end

@implementation ManagedAppStatusTask

- (ManagedAppStatusTask)init
{
  v6.receiver = self;
  v6.super_class = ManagedAppStatusTask;
  v2 = [(Task *)&v6 init];
  if (v2)
  {
    v3 = sub_1003C27BC();
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v3;
  }

  return v2;
}

- (void)main
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001FF638;
  v11 = sub_1001FF648;
  v12 = +[NSMutableArray array];
  databaseStore = self->_databaseStore;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FF650;
  v6[3] = &unk_10051CCC8;
  v6[4] = &v7;
  [(AppInstallsDatabaseStore *)databaseStore readUsingSession:v6];
  v4 = [v8[5] copy];
  statusItems = self->_statusItems;
  self->_statusItems = v4;

  [(Task *)self completeWithSuccess];
  _Block_object_dispose(&v7, 8);
}

@end
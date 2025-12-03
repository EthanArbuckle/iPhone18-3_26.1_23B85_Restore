@interface AppInstallsDatabaseStore
+ (id)storeDescriptor;
+ (void)activeInstallForBundleID:(NSString *)d completionHandler:(id)handler;
- (void)asyncModifyUsingTransaction:(id)transaction completion:(id)completion;
- (void)asyncReadUsingSession:(id)session completion:(id)completion;
- (void)modifyUsingTransaction:(id)transaction;
- (void)readUsingSession:(id)session;
@end

@implementation AppInstallsDatabaseStore

+ (void)activeInstallForBundleID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100436580;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  dCopy = d;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"app_installs", &off_100549620, v3, v4);

  return v5;
}

- (void)modifyUsingTransaction:(id)transaction
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003C29D0;
  v5[3] = &unk_100522F80;
  selfCopy = self;
  transactionCopy = transaction;
  v4.receiver = selfCopy;
  v4.super_class = AppInstallsDatabaseStore;
  v3 = transactionCopy;
  [(SQLiteDatabaseStore *)&v4 modifyUsingTransaction:v5];
}

- (void)asyncModifyUsingTransaction:(id)transaction completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003C2BE8;
  v7[3] = &unk_100522F80;
  selfCopy = self;
  transactionCopy = transaction;
  v6.receiver = selfCopy;
  v6.super_class = AppInstallsDatabaseStore;
  v5 = transactionCopy;
  [(SQLiteDatabaseStore *)&v6 asyncModifyUsingTransaction:v7 completion:completion];
}

- (void)readUsingSession:(id)session
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003C3948;
  v6[3] = &unk_1005272F0;
  sessionCopy = session;
  v5.receiver = self;
  v5.super_class = AppInstallsDatabaseStore;
  v4 = sessionCopy;
  [(SQLiteDatabaseStore *)&v5 readUsingSession:v6];
}

- (void)asyncReadUsingSession:(id)session completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C3A90;
  v8[3] = &unk_100527318;
  sessionCopy = session;
  v7.receiver = self;
  v7.super_class = AppInstallsDatabaseStore;
  v6 = sessionCopy;
  [(SQLiteDatabaseStore *)&v7 asyncReadUsingSession:v8 completion:completion];
}

@end
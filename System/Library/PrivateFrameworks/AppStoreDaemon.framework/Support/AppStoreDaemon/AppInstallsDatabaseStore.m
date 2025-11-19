@interface AppInstallsDatabaseStore
+ (id)storeDescriptor;
+ (void)activeInstallForBundleID:(NSString *)a3 completionHandler:(id)a4;
- (void)asyncModifyUsingTransaction:(id)a3 completion:(id)a4;
- (void)asyncReadUsingSession:(id)a3 completion:(id)a4;
- (void)modifyUsingTransaction:(id)a3;
- (void)readUsingSession:(id)a3;
@end

@implementation AppInstallsDatabaseStore

+ (void)activeInstallForBundleID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
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
  v15 = a3;
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

- (void)modifyUsingTransaction:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003C29D0;
  v5[3] = &unk_100522F80;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = AppInstallsDatabaseStore;
  v3 = v7;
  [(SQLiteDatabaseStore *)&v4 modifyUsingTransaction:v5];
}

- (void)asyncModifyUsingTransaction:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003C2BE8;
  v7[3] = &unk_100522F80;
  v8 = self;
  v9 = a3;
  v6.receiver = v8;
  v6.super_class = AppInstallsDatabaseStore;
  v5 = v9;
  [(SQLiteDatabaseStore *)&v6 asyncModifyUsingTransaction:v7 completion:a4];
}

- (void)readUsingSession:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003C3948;
  v6[3] = &unk_1005272F0;
  v7 = a3;
  v5.receiver = self;
  v5.super_class = AppInstallsDatabaseStore;
  v4 = v7;
  [(SQLiteDatabaseStore *)&v5 readUsingSession:v6];
}

- (void)asyncReadUsingSession:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C3A90;
  v8[3] = &unk_100527318;
  v9 = a3;
  v7.receiver = self;
  v7.super_class = AppInstallsDatabaseStore;
  v6 = v9;
  [(SQLiteDatabaseStore *)&v7 asyncReadUsingSession:v8 completion:a4];
}

@end
@interface PostPurchaseInstallSheetTask
- (_TtC9appstored28PostPurchaseInstallSheetTask)init;
- (_TtC9appstored28PostPurchaseInstallSheetTask)initWithLogKey:(id)a3;
- (_TtC9appstored28PostPurchaseInstallSheetTask)initWithStoreItem:(id)a3 purchaseInfo:(id)a4;
- (_TtC9appstored28PostPurchaseInstallSheetTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation PostPurchaseInstallSheetTask

- (_TtC9appstored28PostPurchaseInstallSheetTask)initWithStoreItem:(id)a3 purchaseInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100166038(v5, v6);

  return v7;
}

- (void)mainWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100437C80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  v13 = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored28PostPurchaseInstallSheetTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored28PostPurchaseInstallSheetTask)initWithLogKey:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored28PostPurchaseInstallSheetTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
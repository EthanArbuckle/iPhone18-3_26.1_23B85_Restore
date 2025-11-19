@interface CRLSEImporter
- (NSURL)presentedItemURL;
- (_TtC8Freeform13CRLSEImporter)init;
- (void)exportLibrarySnapshot;
- (void)relinquishPresentedItemToWriter:(id)a3;
- (void)setPresentedItemOperationQueue:(id)a3;
- (void)setPresentedItemURL:(id)a3;
@end

@implementation CRLSEImporter

- (NSURL)presentedItemURL
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemURL;
  swift_beginAccess();
  sub_10000BE14(self + v6, v5, &unk_1019F33C0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)exportLibrarySnapshot
{
  v2 = self;
  sub_100053984();
}

- (void)setPresentedItemURL:(id)a3
{
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemURL;
  swift_beginAccess();
  v11 = self;
  sub_10002C638(v7, self + v10, &unk_1019F33C0);
  swift_endAccess();
}

- (void)setPresentedItemOperationQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemOperationQueue) = a3;
  v3 = a3;
}

- (void)relinquishPresentedItemToWriter:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v8[4] = sub_100BE4D94;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = *"";
  v8[2] = sub_100007638;
  v8[3] = &unk_101899A70;
  v6 = _Block_copy(v8);
  v7 = self;

  v4[2](v4, v6);
  _Block_release(v6);

  _Block_release(v4);
}

- (_TtC8Freeform13CRLSEImporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
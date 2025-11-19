@interface CRLFileItemImporter
+ (BOOL)protected_canImportFileAtURL:(id)a3 type:(id)a4;
+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)a3 type:(id)a4;
+ (NSArray)protected_supportedFileUTTypes;
- (NSError)error;
- (_TtC8Freeform19CRLFileItemImporter)initWithURL:(id)a3 boardItemFactory:(id)a4;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)a3;
@end

@implementation CRLFileItemImporter

+ (NSArray)protected_supportedFileUTTypes
{
  sub_1005B981C(&qword_101A054A0);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.item.getter();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (BOOL)protected_canImportFileAtURL:(id)a3 type:(id)a4
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_1009DB410();

  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)a3 type:(id)a4
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UTType.init(_:)();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000CAAC(v10, &unk_1019F8DB0);
    v11 = 1;
  }

  else
  {
    static UTType.url.getter();
    v12 = UTType.conforms(to:)();
    v13 = *(v5 + 8);
    v13(v7, v4);
    v13(v10, v4);
    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

- (void)cancel
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_importBoardItemTask))
  {
    v2 = self;

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  else
  {
    v3 = self;
  }

  [*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_fileCoordinator) cancel];
}

- (void)importBoardItemWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
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
  v11[4] = &unk_10148C7A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (NSError)error
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__error);
  if (v2 == 3)
  {
    v3 = 0;
  }

  else
  {
    sub_1009DB968();
    swift_allocError();
    *v4 = v2;
    v5 = _convertErrorToNSError(_:)();

    v3 = v5;
  }

  return v3;
}

- (_TtC8Freeform19CRLFileItemImporter)initWithURL:(id)a3 boardItemFactory:(id)a4
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1009DAFE4(v7, a4);
}

@end
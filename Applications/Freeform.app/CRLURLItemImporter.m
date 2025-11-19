@interface CRLURLItemImporter
+ (BOOL)protected_canImportFileAtURL:(id)a3 type:(id)a4;
+ (BOOL)protected_canImportFromRemoteURL:(id)a3;
+ (NSArray)protected_supportedFileUTTypes;
+ (NSArray)protected_supportedRemoteURLSchemes;
- (NSError)error;
- (_TtC8Freeform18CRLURLItemImporter)initWithURL:(id)a3 boardItemFactory:(id)a4;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)a3;
@end

@implementation CRLURLItemImporter

+ (NSArray)protected_supportedFileUTTypes
{
  sub_1005B981C(&qword_101A054A0);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.url.getter();
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
  v8 = URL.isFileURL.getter();
  (*(v5 + 8))(v7, v4);
  return (v8 & 1) == 0;
}

+ (NSArray)protected_supportedRemoteURLSchemes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (BOOL)protected_canImportFromRemoteURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = URL.scheme.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = [a1 protected_supportedRemoteURLSchemes];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18[0] = v10;
    v18[1] = v11;
    __chkstk_darwin(v14);
    *&v17[-16] = v18;
    v15 = sub_100C08644(sub_1008335B4, &v17[-32], v13);

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  return v15 & 1;
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
  v11[4] = &unk_101498AA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (void)cancel
{
  v2 = self;
  sub_100B4BA5C();
}

- (NSError)error
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error))
  {
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC8Freeform18CRLURLItemImporter)initWithURL:(id)a3 boardItemFactory:(id)a4
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100B4BE6C(v7, a4);
}

@end
@interface CRLPreinsertionAssetWrapper
- (CGDataProvider)newCGDataProvider;
- (CGImage)newCGImage;
- (CGImageSource)newCGImageSource;
- (NSString)filename;
- (UTType)type;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)init;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithAlreadyInsertedAsset:(id)a3 owner:(id)a4;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithData:(id)a3 filename:(id)a4 owner:(id)a5 error:(id *)a6;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithImage:(CGImage *)a3 properties:(id)a4 filename:(id)a5 owner:(id)a6 error:(id *)a7;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)a3 filename:(id)a4 owner:(id)a5;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)a3 owner:(id)a4;
- (id)synchronouslyCreateAsset;
- (id)synchronouslyCreateReadonlyAsset;
- (void)createAssetWithCompletionHandler:(id)a3;
@end

@implementation CRLPreinsertionAssetWrapper

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)a3 filename:(id)a4 owner:(id)a5
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_100CF55F4(v10, a4, v12, a5, self);
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)a3 owner:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [(CRLPreinsertionAssetWrapper *)self initWithUrl:v11 filename:0 owner:a4];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithData:(id)a3 filename:(id)a4 owner:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  return sub_100CF051C(v10, v12, v13, v15, a5);
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithImage:(CGImage *)a3 properties:(id)a4 filename:(id)a5 owner:(id)a6 error:(id *)a7
{
  if (a4)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  swift_unknownObjectRetain();
  return sub_100CF111C(v13, v9, v10, v12, a6);
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithAlreadyInsertedAsset:(id)a3 owner:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return sub_100CF1690(v5, a4);
}

- (void)createAssetWithCompletionHandler:(id)a3
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
  v11[4] = &unk_1014AC080;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (id)synchronouslyCreateAsset
{
  v2 = self;
  v3 = sub_100CF34E8();

  return v3;
}

- (id)synchronouslyCreateReadonlyAsset
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v6)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  }

  else
  {
    sub_10000BE14(self + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v5, &unk_1019F33C0);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    result = (*(v9 + 48))(v5, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v11 = self;
    v7 = sub_100C828B4(v5);

    (*(v9 + 8))(v5, v8);
    v6 = 0;
  }

  v12 = v6;

  return v7;
}

- (UTType)type
{
  v3 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = self;

  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 crl_pathUTI];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
  }

  else
  {
    v9 = type metadata accessor for UTType();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = UTType._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v5, v10);
    v13 = isa;
  }

  return v13;
}

- (CGDataProvider)newCGDataProvider
{
  v2 = self;
  v3 = sub_100CF4BE4();

  return v3;
}

- (CGImageSource)newCGImageSource
{
  v2 = self;
  v3 = sub_100CF4E34();

  return v3;
}

- (CGImage)newCGImage
{
  v2 = self;
  v3 = sub_100CF50A0();

  return v3;
}

- (NSString)filename
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
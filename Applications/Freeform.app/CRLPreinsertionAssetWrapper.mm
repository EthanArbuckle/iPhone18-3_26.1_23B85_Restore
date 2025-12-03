@interface CRLPreinsertionAssetWrapper
- (CGDataProvider)newCGDataProvider;
- (CGImage)newCGImage;
- (CGImageSource)newCGImageSource;
- (NSString)filename;
- (UTType)type;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)init;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithAlreadyInsertedAsset:(id)asset owner:(id)owner;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithData:(id)data filename:(id)filename owner:(id)owner error:(id *)error;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithImage:(CGImage *)image properties:(id)properties filename:(id)filename owner:(id)owner error:(id *)error;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)url filename:(id)filename owner:(id)owner;
- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)url owner:(id)owner;
- (id)synchronouslyCreateAsset;
- (id)synchronouslyCreateReadonlyAsset;
- (void)createAssetWithCompletionHandler:(id)handler;
@end

@implementation CRLPreinsertionAssetWrapper

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)url filename:(id)filename owner:(id)owner
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (filename)
  {
    filename = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_100CF55F4(v10, filename, v12, owner, self);
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithUrl:(id)url owner:(id)owner
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [(CRLPreinsertionAssetWrapper *)self initWithUrl:v11 filename:0 owner:owner];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithData:(id)data filename:(id)filename owner:(id)owner error:(id *)error
{
  dataCopy = data;
  filenameCopy = filename;
  swift_unknownObjectRetain();
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  return sub_100CF051C(v10, v12, v13, v15, owner);
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithImage:(CGImage *)image properties:(id)properties filename:(id)filename owner:(id)owner error:(id *)error
{
  if (properties)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  imageCopy = image;
  swift_unknownObjectRetain();
  return sub_100CF111C(imageCopy, v9, v10, v12, owner);
}

- (_TtC8Freeform27CRLPreinsertionAssetWrapper)initWithAlreadyInsertedAsset:(id)asset owner:(id)owner
{
  assetCopy = asset;
  swift_unknownObjectRetain();
  return sub_100CF1690(assetCopy, owner);
}

- (void)createAssetWithCompletionHandler:(id)handler
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (id)synchronouslyCreateAsset
{
  selfCopy = self;
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

    selfCopy = self;
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
  selfCopy = self;

  v7 = String._bridgeToObjectiveC()();

  crl_pathUTI = [v7 crl_pathUTI];

  if (crl_pathUTI)
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
  selfCopy = self;
  v3 = sub_100CF4BE4();

  return v3;
}

- (CGImageSource)newCGImageSource
{
  selfCopy = self;
  v3 = sub_100CF4E34();

  return v3;
}

- (CGImage)newCGImage
{
  selfCopy = self;
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
@interface ImageDocument
- (BOOL)readFromURL:(id)l error:(id *)error;
- (BOOL)writeContents:(id)contents toURL:(id)l forSaveOperation:(int64_t)operation originalContentsURL:(id)rL error:(id *)error;
- (_TtC17PreviewFoundation13ImageDocument)initWithFileURL:(id)l;
@end

@implementation ImageDocument

- (BOOL)readFromURL:(id)l error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100178254(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

- (BOOL)writeContents:(id)contents toURL:(id)l forSaveOperation:(int64_t)operation originalContentsURL:(id)rL error:(id *)error
{
  v10 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v10 - 8);
  v12 = &v25[-v11];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v25[-v18];
  swift_unknownObjectRetain();
  lCopy = l;
  selfCopy = self;
  rLCopy = rL;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (rLCopy)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v14 + 32))(v12, v16, v13);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v14 + 56))(v12, v23, 1, v13);
  sub_10017A93C(v26, v19, v12);

  sub_100110174(v12, &qword_10020DAA8);
  (*(v14 + 8))(v19, v13);
  sub_10010FA4C(v26);
  return 1;
}

- (_TtC17PreviewFoundation13ImageDocument)initWithFileURL:(id)l
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_context;
  type metadata accessor for CRContext();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v10 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100110174(v19, &qword_1002100A0);
  *(&self->super.super.super.isa + v9) = v10;
  v11 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  v12 = sub_1000FF5D8(&qword_10020E078);
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(Document *)&v18 initWithFileURL:v14];

  (*(v6 + 8))(v8, v5);
  return v16;
}

@end
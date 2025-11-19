@interface CRLAsset
+ (_TtC8Freeform8CRLAsset)null;
- (BOOL)hasOwners;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsDownload;
- (CGDataProvider)newCGDataProvider;
- (CGImage)newCGImage;
- (CGImageSource)newCGImageSource;
- (NSString)filename;
- (NSUUID)assetUUID;
- (UTType)type;
- (_TtC8Freeform8CRLAsset)init;
- (id)AVAssetAndReturnError:(id *)a3;
- (id)AVAssetWithOptions:(id)a3 error:(id *)a4;
- (id)newData;
- (int64_t)hash;
- (unint64_t)length;
- (void)addDownloadObserverWithIdentifier:(id)a3 options:(unint64_t)a4 handler:(id)a5;
- (void)cancelDownload;
- (void)downloadIfNeeded;
- (void)performInputStreamReadWithAccessor:(id)a3;
- (void)removeDownloadObserverWithIdentifier:(id)a3;
@end

@implementation CRLAsset

+ (_TtC8Freeform8CRLAsset)null
{
  if (qword_1019F1F90 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD79F0;

  return v3;
}

- (BOOL)hasOwners
{
  v2 = self;
  v3 = sub_100C7D2A8();

  return v3 & 1;
}

- (UTType)type
{
  v3 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v7 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v6);
  v8 = *(v7 + 16);
  v9 = self;
  v8(v6, v7);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 crl_pathUTI];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
  }

  else
  {
    v12 = type metadata accessor for UTType();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v5, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    isa = UTType._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v5, v13);
    v16 = isa;
  }

  return v16;
}

- (unint64_t)length
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  v8 = v6(v4, v5);

  return v8;
}

- (NSUUID)assetUUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v8 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v7);
  v9 = *(v8 + 24);
  v10 = self;
  v9(v7, v8);

  v11.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v11.super.isa;
}

- (NSString)filename
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 16);
  v7 = self;
  v6(v4, v5);

  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100C7D944(v8);

  sub_10000CAAC(v8, &unk_1019F4D00);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v8 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v7);
  v9 = *(v8 + 24);
  v10 = self;
  v9(v7, v8);
  sub_10006849C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v4 + 8))(v6, v3);
  v11 = Hasher.finalize()();

  return v11;
}

- (id)newData
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 32);
  v7 = self;
  v8 = v6(v4, v5);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100025870(v8, v10);
  return isa;
}

- (CGDataProvider)newCGDataProvider
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 40);
  v7 = self;
  v8 = v6(v4, v5);

  return v8;
}

- (CGImageSource)newCGImageSource
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 40);
  v7 = self;
  v8 = v6(v4, v5);
  if (v8)
  {
    v9 = v8;
    v10 = CGImageSourceCreateWithDataProvider(v8, 0);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGImage)newCGImage
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 40);
  v7 = self;
  v8 = v6(v4, v5);
  if (v8 && (v9 = v8, v10 = CGImageSourceCreateWithDataProvider(v8, 0), v9, v10))
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  }

  else
  {
    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

- (void)performInputStreamReadWithAccessor:(id)a3
{
  v4 = _Block_copy(a3);
  v9[2] = v4;
  v5 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v6 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
  v7 = *(v6 + 48);
  v8 = self;
  v7(sub_1009C3294, v9, v5, v6);

  _Block_release(v4);
}

- (id)AVAssetAndReturnError:(id *)a3
{
  v4 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v5 = v4[3];
  v6 = v4[4];
  sub_100020E58(v4, v5);
  v7 = *(v6 + 56);
  v8 = self;
  v9 = v7(_swiftEmptyDictionarySingleton, v5, v6);

  return v9;
}

- (id)AVAssetWithOptions:(id)a3 error:(id *)a4
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v7 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v6);
  v8 = *(v7 + 56);
  v9 = self;
  v10 = v8(v5, v6, v7);

  return v10;
}

- (BOOL)needsDownload
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 64);
  v7 = self;
  v8 = v6(v4, v5);

  return v8 & 1;
}

- (void)addDownloadObserverWithIdentifier:(id)a3 options:(unint64_t)a4 handler:(id)a5
{
  v18 = type metadata accessor for UUID();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v14 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v13);
  v15 = *(v14 + 72);
  v16 = self;
  v15(v10, a4, sub_100C82B60, v12, v13, v14);

  (*(v8 + 8))(v10, v18);
}

- (void)removeDownloadObserverWithIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v9 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  v10 = *(v9 + 80);
  v11 = self;
  v10(v7, v8, v9);

  (*(v5 + 8))(v7, v4);
}

- (void)downloadIfNeeded
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 16];
  v5 = *&self->storage[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  sub_100020E58((&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v4);
  v6 = *(v5 + 64);
  v9 = self;
  if (v6(v4, v5))
  {
    v7 = v3[3];
    v8 = v3[4];
    sub_100020E58(v3, v7);
    (*(v8 + 88))(v7, v8);
  }
}

- (void)cancelDownload
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = *(v5 + 96);
  v7 = self;
  v6(v4, v5);
}

- (_TtC8Freeform8CRLAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
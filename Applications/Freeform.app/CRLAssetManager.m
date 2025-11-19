@interface CRLAssetManager
+ (id)readonlyAssetFromData:(id)a3 filename:(id)a4;
+ (id)readonlyAssetFromURL:(id)a3;
- (_TtC8Freeform15CRLAssetManager)init;
- (void)removeAllDownloadObserversWithIdentifier:(id)a3;
@end

@implementation CRLAssetManager

+ (id)readonlyAssetFromURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_100C828B4(v6);
  (*(v4 + 8))(v6, v3);

  return v7;
}

+ (id)readonlyAssetFromData:(id)a3 filename:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = type metadata accessor for CRLDataAssetStorage();
  swift_allocObject();
  sub_100024E98(v7, v9);
  v19[3] = v13;
  v19[4] = &off_10188D790;
  v19[0] = sub_10091D6BC(v7, v9, v10, v12);
  v14 = type metadata accessor for CRLAsset();
  v15 = objc_allocWithZone(v14);
  sub_10000630C(v19, v15 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v18.receiver = v15;
  v18.super_class = v14;

  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10002640C(v7, v9);

  sub_100005070(v19);

  return v16;
}

- (void)removeAllDownloadObserversWithIdentifier:(id)a3
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    (*(v8 + 16))(v10, v13, v7);
    v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v15;
    (*(v8 + 32))(&v18[v17], v10, v7);
    v19 = self;
    sub_10064191C(0, 0, v6, &unk_1014773B0, v18);
  }

  (*(v8 + 8))(v13, v7);
}

- (_TtC8Freeform15CRLAssetManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
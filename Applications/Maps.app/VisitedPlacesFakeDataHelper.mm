@interface VisitedPlacesFakeDataHelper
+ (BOOL)isEnabled;
+ (id)fakeVisitUIKitMenuWithMapsSyncId:(id)a3 isPinned:(BOOL)a4;
+ (void)addVisitFromMapSyncId:(id)a3 isPinned:(BOOL)a4 dayAgo:(int64_t)a5;
+ (void)addVisitWithMapItem:(id)a3 cityName:(id)a4 dayAgo:(int64_t)a5;
+ (void)fetchMapItemWithMuid:(unint64_t)a3 completionHandler:(id)a4;
- (_TtC4Maps27VisitedPlacesFakeDataHelper)init;
@end

@implementation VisitedPlacesFakeDataHelper

+ (BOOL)isEnabled
{
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 == 1)
  {
    v2 = [objc_opt_self() sharedPlatform];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isInternalInstall];

      LOBYTE(v2) = v4;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

+ (void)addVisitFromMapSyncId:(id)a3 isPinned:(BOOL)a4 dayAgo:(int64_t)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  sub_10050D7A0(v7, v9, a4, a5);
}

+ (void)fetchMapItemWithMuid:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
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
  v13[4] = &unk_10120DCB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1011F9360;
  v14[5] = v13;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

+ (void)addVisitWithMapItem:(id)a3 cityName:(id)a4 dayAgo:(int64_t)a5
{
  if (a4)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_getObjCClassMetadata();
  v10 = a3;
  static VisitedPlacesFakeDataHelper.addVisit(mapItem:cityName:dayAgo:)(v10, v7, v9, a5);
}

+ (id)fakeVisitUIKitMenuWithMapsSyncId:(id)a3 isPinned:(BOOL)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  v8 = static VisitedPlacesFakeDataHelper.fakeVisitUIKitMenu(mapsSyncId:isPinned:)(v5, v7, a4);

  return v8;
}

- (_TtC4Maps27VisitedPlacesFakeDataHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisitedPlacesFakeDataHelper();
  return [(VisitedPlacesFakeDataHelper *)&v3 init];
}

@end
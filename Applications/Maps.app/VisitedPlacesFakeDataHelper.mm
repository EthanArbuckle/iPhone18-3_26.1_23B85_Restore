@interface VisitedPlacesFakeDataHelper
+ (BOOL)isEnabled;
+ (id)fakeVisitUIKitMenuWithMapsSyncId:(id)id isPinned:(BOOL)pinned;
+ (void)addVisitFromMapSyncId:(id)id isPinned:(BOOL)pinned dayAgo:(int64_t)ago;
+ (void)addVisitWithMapItem:(id)item cityName:(id)name dayAgo:(int64_t)ago;
+ (void)fetchMapItemWithMuid:(unint64_t)muid completionHandler:(id)handler;
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
    sharedPlatform = [objc_opt_self() sharedPlatform];
    if (sharedPlatform)
    {
      v3 = sharedPlatform;
      isInternalInstall = [sharedPlatform isInternalInstall];

      LOBYTE(sharedPlatform) = isInternalInstall;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LOBYTE(sharedPlatform) = 0;
  }

  return sharedPlatform;
}

+ (void)addVisitFromMapSyncId:(id)id isPinned:(BOOL)pinned dayAgo:(int64_t)ago
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  sub_10050D7A0(v7, v9, pinned, ago);
}

+ (void)fetchMapItemWithMuid:(unint64_t)muid completionHandler:(id)handler
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = muid;
  v11[3] = v10;
  v11[4] = self;
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

+ (void)addVisitWithMapItem:(id)item cityName:(id)name dayAgo:(int64_t)ago
{
  if (name)
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
  itemCopy = item;
  static VisitedPlacesFakeDataHelper.addVisit(mapItem:cityName:dayAgo:)(itemCopy, v7, v9, ago);
}

+ (id)fakeVisitUIKitMenuWithMapsSyncId:(id)id isPinned:(BOOL)pinned
{
  if (id)
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
  v8 = static VisitedPlacesFakeDataHelper.fakeVisitUIKitMenu(mapsSyncId:isPinned:)(v5, v7, pinned);

  return v8;
}

- (_TtC4Maps27VisitedPlacesFakeDataHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisitedPlacesFakeDataHelper();
  return [(VisitedPlacesFakeDataHelper *)&v3 init];
}

@end
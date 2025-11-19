@interface MediaAPIUpdate
+ (Class)databaseEntityClass;
+ (id)defaultProperties;
- (BOOL)isManagedAccount;
- (BOOL)isOffloaded;
- (BOOL)isPerDevice;
- (NSDate)currentVersionReleaseDate;
- (NSDate)discoveredDate;
- (NSNumber)evid;
- (NSString)bundleID;
- (NSString)description;
- (_TtC9appstored14MediaAPIUpdate)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5;
- (id)purchaseInfoForUpdateUserInitiated:(BOOL)a3 bag:(id)a4;
- (int64_t)parentalControlsRank;
- (int64_t)updateState;
- (unint64_t)itemID;
- (unint64_t)itemIdentifier;
- (void)setBundleID:(id)a3;
- (void)setEvid:(id)a3;
- (void)setItemID:(unint64_t)a3;
- (void)setUpdateState:(int64_t)a3;
@end

@implementation MediaAPIUpdate

- (_TtC9appstored14MediaAPIUpdate)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10017A848(a3);
}

+ (Class)databaseEntityClass
{
  type metadata accessor for MediaAPIUpdateEntity();

  return swift_getObjCClassFromMetadata();
}

+ (id)defaultProperties
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSString)description
{
  v2 = self;
  sub_10017AB10();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)bundleID
{
  v2 = self;
  sub_10017A6C0();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setBundleID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___bundleID);
  *v5 = v4;
  v5[1] = v6;
}

- (NSDate)currentVersionReleaseDate
{
  v3 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_10017ADD0(v5);

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (NSNumber)evid
{
  v2 = self;
  v3 = sub_10017A78C();

  return v3;
}

- (void)setEvid:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid);
  *(&self->super.super.isa + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___evid) = a3;
  v3 = a3;
}

- (BOOL)isManagedAccount
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_10023E604(v2, v3);

  return (v4 >> 4) & 1;
}

- (BOOL)isOffloaded
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_10023E604(v2, v3);

  return (v4 >> 2) & 1;
}

- (BOOL)isPerDevice
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_10023E604(v2, v3);

  return (v4 >> 3) & 1;
}

- (unint64_t)itemID
{
  v2 = self;
  v3 = sub_10017A580();

  return v3;
}

- (void)setItemID:(unint64_t)a3
{
  v3 = self + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___itemID;
  *v3 = a3;
  v3[8] = 0;
}

- (int64_t)updateState
{
  v2 = self;
  v3 = sub_10017A4F8();

  return v3;
}

- (void)setUpdateState:(int64_t)a3
{
  v3 = self + OBJC_IVAR____TtC9appstored14MediaAPIUpdate____lazy_storage___updateState;
  *v3 = a3;
  v3[8] = 0;
}

- (NSDate)discoveredDate
{
  v3 = sub_100085D40(&qword_10059CB40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = self;
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_10023E590(v9, v10);

  if (v11)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_100117568(v6, v8);

  type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v8, v12);
    v15 = isa;
  }

  return v15;
}

- (int64_t)parentalControlsRank
{
  v2 = self;
  v3 = sub_10017D77C();

  return v3;
}

- (unint64_t)itemIdentifier
{
  v2 = self;
  v3 = sub_10017A580();

  return v3;
}

- (id)purchaseInfoForUpdateUserInitiated:(BOOL)a3 bag:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self;
  v8 = sub_10017D888(v4, v6);

  return v8;
}

@end
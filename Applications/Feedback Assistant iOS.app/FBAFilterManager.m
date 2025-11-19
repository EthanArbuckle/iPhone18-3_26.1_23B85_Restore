@interface FBAFilterManager
+ (id)keyPathsForValuesAffectingUserDescription;
- (BOOL)toggleActive;
- (NSArray)filterGroups;
- (NSPredicate)predicate;
- (NSString)userDescription;
- (_TtC18Feedback_Assistant16FBAFilterManager)init;
- (_TtC18Feedback_Assistant16FBAFilterManager)initWithFilterGroups:(id)a3;
- (_TtP18Feedback_Assistant24FBAFilterManagerDelegate_)filterDelegate;
- (id)filterForIndexPath:(id)a3;
- (void)activate;
- (void)deactivate;
- (void)setActive:(BOOL)a3;
- (void)setFilterGroups:(id)a3;
- (void)toggleFilterAtIndex:(int64_t)a3;
- (void)toggleFilterAtIndexPath:(id)a3;
@end

@implementation FBAFilterManager

- (NSArray)filterGroups
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  type metadata accessor for FBAFilterGroup();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setFilterGroups:(id)a3
{
  type metadata accessor for FBAFilterGroup();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups) = v4;
}

- (_TtP18Feedback_Assistant24FBAFilterManagerDelegate_)filterDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActive:(BOOL)a3
{
  v4 = self;
  sub_100071044(a3);
}

- (NSPredicate)predicate
{
  v2 = self;
  v3 = sub_1000716F8();

  return v3;
}

+ (id)keyPathsForValuesAffectingUserDescription
{
  sub_10007BDF8(&off_1000DFD60);
  sub_1000689C4(&unk_1000DFD80);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSString)userDescription
{
  v2 = self;
  sub_100071B50();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC18Feedback_Assistant16FBAFilterManager)initWithFilterGroups:(id)a3
{
  type metadata accessor for FBAFilterGroup();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100071F38(v3);
}

- (id)filterForIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000720D8();
  v11 = v10;

  (*(v5 + 8))(v8, v4);

  return v11;
}

- (void)toggleFilterAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000722E4();

  (*(v5 + 8))(v8, v4);
}

- (void)toggleFilterAtIndex:(int64_t)a3
{
  v4 = self;
  sub_1000725B4(a3);
}

- (BOOL)toggleActive
{
  v2 = self;
  v3 = sub_10007273C();

  return v3 & 1;
}

- (void)activate
{
  v2 = self;
  sub_100072864();
}

- (void)deactivate
{
  v2 = self;
  sub_10007294C();
}

- (_TtC18Feedback_Assistant16FBAFilterManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
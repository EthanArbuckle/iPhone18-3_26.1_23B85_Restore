@interface FBAFilterGroup
- (NSArray)filters;
- (NSString)title;
- (_TtC18Feedback_Assistant14FBAFilterGroup)init;
- (_TtC18Feedback_Assistant14FBAFilterGroup)initWithName:(id)a3 filters:(id)a4;
- (void)setFilters:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation FBAFilterGroup

- (NSArray)filters
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters);
  type metadata accessor for FBAFilter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setFilters:(id)a3
{
  type metadata accessor for FBAFilter();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters) = v4;
}

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title);
    v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title);
  v7 = *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC18Feedback_Assistant14FBAFilterGroup)initWithName:(id)a3 filters:(id)a4
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  type metadata accessor for FBAFilter();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100059FF8(v4, v6, v7);
}

- (_TtC18Feedback_Assistant14FBAFilterGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
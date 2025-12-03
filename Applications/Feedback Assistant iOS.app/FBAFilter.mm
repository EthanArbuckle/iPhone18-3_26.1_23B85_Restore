@interface FBAFilter
- (NSString)title;
- (_TtC18Feedback_Assistant9FBAFilter)init;
- (_TtC18Feedback_Assistant9FBAFilter)initWithPredicate:(id)predicate title:(id)title image:(id)image;
- (void)setActive:(BOOL)active;
- (void)setImage:(id)image;
- (void)setPredicate:(id)predicate;
- (void)setTitle:(id)title;
- (void)toggle;
@end

@implementation FBAFilter

- (void)setPredicate:(id)predicate
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate) = predicate;
  predicateCopy = predicate;
}

- (NSString)title
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setTitle:(id)title
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)setImage:(id)image
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image) = image;
  imageCopy = image;
}

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  sub_1000707DC(active);
}

- (_TtC18Feedback_Assistant9FBAFilter)initWithPredicate:(id)predicate title:(id)title image:(id)image
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  predicateCopy = predicate;
  imageCopy = image;
  v12 = sub_100070DB8(predicateCopy, v7, v9, image);

  return v12;
}

- (void)toggle
{
  swift_getKeyPath();
  selfCopy = self;
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  [(FBAFilter *)selfCopy setActive:[(FBAFilter *)selfCopy active]^ 1];
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  sub_100070BB0();
}

- (_TtC18Feedback_Assistant9FBAFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
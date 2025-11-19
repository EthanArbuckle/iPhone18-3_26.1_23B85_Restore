@interface FBAFilter
- (NSString)title;
- (_TtC18Feedback_Assistant9FBAFilter)init;
- (_TtC18Feedback_Assistant9FBAFilter)initWithPredicate:(id)a3 title:(id)a4 image:(id)a5;
- (void)setActive:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setPredicate:(id)a3;
- (void)setTitle:(id)a3;
- (void)toggle;
@end

@implementation FBAFilter

- (void)setPredicate:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate) = a3;
  v3 = a3;
}

- (NSString)title
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)setImage:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image) = a3;
  v3 = a3;
}

- (void)setActive:(BOOL)a3
{
  v4 = self;
  sub_1000707DC(a3);
}

- (_TtC18Feedback_Assistant9FBAFilter)initWithPredicate:(id)a3 title:(id)a4 image:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = a5;
  v12 = sub_100070DB8(v10, v7, v9, a5);

  return v12;
}

- (void)toggle
{
  swift_getKeyPath();
  v3 = self;
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  [(FBAFilter *)v3 setActive:[(FBAFilter *)v3 active]^ 1];
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
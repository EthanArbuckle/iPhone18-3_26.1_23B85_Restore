@interface FBAActionControllerAction
- (NSString)title;
- (_TtC18Feedback_Assistant25FBAActionControllerAction)init;
- (_TtC18Feedback_Assistant25FBAActionControllerAction)initWithTitle:(id)a3 image:(id)a4 actionHandler:(id)a5;
- (id)actionHandler;
- (void)setActionHandler:(id)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation FBAActionControllerAction

- (NSString)title
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)setImage:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image) = a3;
  v3 = a3;
}

- (id)actionHandler
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler + 8);
  v5[4] = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100069250;
  v5[3] = &unk_1000E16C8;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler);
  v7 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler + 8);
  *v6 = sub_10006C004;
  v6[1] = v5;
}

- (_TtC18Feedback_Assistant25FBAActionControllerAction)initWithTitle:(id)a3 image:(id)a4 actionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image) = 0;
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive) = 0;
  v13 = (self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title);
  *v13 = v8;
  v13[1] = v10;
  *(self + v12) = a4;
  v14 = (self + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler);
  *v14 = sub_10006C004;
  v14[1] = v11;
  v17.receiver = self;
  v17.super_class = type metadata accessor for FBAActionControllerAction();
  v15 = a4;
  return [(FBAActionControllerAction *)&v17 init];
}

- (_TtC18Feedback_Assistant25FBAActionControllerAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
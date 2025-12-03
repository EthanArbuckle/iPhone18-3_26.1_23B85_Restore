@interface FBAActionSheetController
- (BOOL)dismissesOnAction;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithRootViewController:(id)controller;
- (void)addAction:(id)action;
- (void)addActionWithTitle:(id)title image:(id)image actionHandler:(id)handler;
- (void)setDismissesOnAction:(BOOL)action;
- (void)viewDidLoad;
@end

@implementation FBAActionSheetController

- (BOOL)dismissesOnAction
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController);
  if (v2)
  {
    LOBYTE(self) = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction);
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setDismissesOnAction:(BOOL)action
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController);
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction) = action;
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100069E98();
}

- (void)addActionWithTitle:(id)title image:(id)image actionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController);
  if (v12)
  {
    v13 = v11;
    v14 = type metadata accessor for FBAActionControllerAction();
    v15 = objc_allocWithZone(v14);
    v16 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
    *&v15[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
    v15[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
    v17 = &v15[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title];
    *v17 = v8;
    v17[1] = v10;
    *&v15[v16] = image;
    v18 = &v15[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
    *v18 = sub_10006C004;
    v18[1] = v13;
    v23.receiver = v15;
    v23.super_class = v14;
    imageCopy = image;
    selfCopy = self;
    v21 = v12;

    v22 = [(FBAActionSheetController *)&v23 init];
    sub_10006ADBC(v22);
  }

  else
  {
    __break(1u);
  }
}

- (void)addAction:(id)action
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController);
  if (v3)
  {
    actionCopy = action;
    selfCopy = self;
    v6 = v3;
    sub_10006ADBC(actionCopy);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAActionSheetController();
  return [(FBAActionSheetController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithRootViewController:(id)controller
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FBAActionSheetController();
  return [(FBAActionSheetController *)&v5 initWithRootViewController:controller];
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAActionSheetController();
  v9 = [(FBAActionSheetController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAActionSheetController();
  coderCopy = coder;
  v5 = [(FBAActionSheetController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
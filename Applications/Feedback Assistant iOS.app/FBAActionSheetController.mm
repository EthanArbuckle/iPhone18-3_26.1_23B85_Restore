@interface FBAActionSheetController
- (BOOL)dismissesOnAction;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithCoder:(id)a3;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithRootViewController:(id)a3;
- (void)addAction:(id)a3;
- (void)addActionWithTitle:(id)a3 image:(id)a4 actionHandler:(id)a5;
- (void)setDismissesOnAction:(BOOL)a3;
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

- (void)setDismissesOnAction:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController);
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction) = a3;
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100069E98();
}

- (void)addActionWithTitle:(id)a3 image:(id)a4 actionHandler:(id)a5
{
  v7 = _Block_copy(a5);
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
    *&v15[v16] = a4;
    v18 = &v15[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
    *v18 = sub_10006C004;
    v18[1] = v13;
    v23.receiver = v15;
    v23.super_class = v14;
    v19 = a4;
    v20 = self;
    v21 = v12;

    v22 = [(FBAActionSheetController *)&v23 init];
    sub_10006ADBC(v22);
  }

  else
  {
    __break(1u);
  }
}

- (void)addAction:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController);
  if (v3)
  {
    v5 = a3;
    v7 = self;
    v6 = v3;
    sub_10006ADBC(v5);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAActionSheetController();
  return [(FBAActionSheetController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithRootViewController:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FBAActionSheetController();
  return [(FBAActionSheetController *)&v5 initWithRootViewController:a3];
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAActionSheetController();
  v9 = [(FBAActionSheetController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18Feedback_Assistant24FBAActionSheetController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAActionSheetController();
  v4 = a3;
  v5 = [(FBAActionSheetController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
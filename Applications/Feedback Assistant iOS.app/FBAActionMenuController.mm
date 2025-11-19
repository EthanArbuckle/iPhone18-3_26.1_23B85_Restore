@interface FBAActionMenuController
- (_TtC18Feedback_Assistant23FBAActionMenuController)init;
- (id)buildMenu;
- (void)addAction:(id)a3;
- (void)addActionWithTitle:(id)a3 image:(id)a4 actionHandler:(id)a5;
- (void)attachToBarButtonItem:(id)a3;
@end

@implementation FBAActionMenuController

- (void)addActionWithTitle:(id)a3 image:(id)a4 actionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a4;
  v13 = self;
  sub_100069598(v8, v10, a4, sub_10006C004, v11);
}

- (void)addAction:(id)a3
{
  v5 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  swift_beginAccess();
  v6 = a3;
  v7 = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&self->super.isa + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(&self->super.isa + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (id)buildMenu
{
  v2 = self;
  v3 = sub_100069874();

  return v3;
}

- (void)attachToBarButtonItem:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = sub_100069874();
  [v4 setMenu:v5];
}

- (_TtC18Feedback_Assistant23FBAActionMenuController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
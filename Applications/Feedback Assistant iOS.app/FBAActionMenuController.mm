@interface FBAActionMenuController
- (_TtC18Feedback_Assistant23FBAActionMenuController)init;
- (id)buildMenu;
- (void)addAction:(id)action;
- (void)addActionWithTitle:(id)title image:(id)image actionHandler:(id)handler;
- (void)attachToBarButtonItem:(id)item;
@end

@implementation FBAActionMenuController

- (void)addActionWithTitle:(id)title image:(id)image actionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  imageCopy = image;
  selfCopy = self;
  sub_100069598(v8, v10, image, sub_10006C004, v11);
}

- (void)addAction:(id)action
{
  v5 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  swift_beginAccess();
  actionCopy = action;
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_100069874();

  return v3;
}

- (void)attachToBarButtonItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v5 = sub_100069874();
  [itemCopy setMenu:v5];
}

- (_TtC18Feedback_Assistant23FBAActionMenuController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
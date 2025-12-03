@interface BuddyChildSafetyController
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueTapped;
- (void)setFlowItemDispositionProvider:(id)provider;
- (void)setRunState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyChildSafetyController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100041364();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100041D38(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100041E18(appear);
}

- (void)continueTapped
{
  selfCopy = self;
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  if (delegate)
  {
    [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
    swift_unknownObjectRelease();
  }
}

- (void)setFlowItemDispositionProvider:(id)provider
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_flowItemDispositionProvider];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_flowItemDispositionProvider] = provider;
  providerCopy = provider;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setRunState:(id)state
{
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_runState] = state;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v3 = sub_100042068();

  return v3 & 1;
}

- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
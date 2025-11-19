@interface BuddyChildSafetyController
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueTapped;
- (void)setFlowItemDispositionProvider:(id)a3;
- (void)setRunState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyChildSafetyController

- (void)viewDidLoad
{
  v2 = self;
  sub_100041364();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100041D38(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100041E18(a3);
}

- (void)continueTapped
{
  v3 = self;
  v2 = [(BuddyWelcomeController *)v3 delegate];
  if (v2)
  {
    [(BFFFlowItemDelegate *)v2 flowItemDone:v3];
    swift_unknownObjectRelease();
  }
}

- (void)setFlowItemDispositionProvider:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_flowItemDispositionProvider];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_flowItemDispositionProvider] = a3;
  v3 = a3;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setRunState:(id)a3
{
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_runState] = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)controllerNeedsToRun
{
  v2 = self;
  v3 = sub_100042068();

  return v3 & 1;
}

- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup26BuddyChildSafetyController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
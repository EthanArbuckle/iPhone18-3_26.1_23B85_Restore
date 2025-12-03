@interface PhysicalShutterButtonEventInteractor.Coordinator
- (_TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator)init;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
@end

@implementation PhysicalShutterButtonEventInteractor.Coordinator

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  actionCopy = action;
  selfCopy = self;
  if ([actionCopy _state] == 2)
  {
    v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_action);

    v7(v8);
  }
}

- (_TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
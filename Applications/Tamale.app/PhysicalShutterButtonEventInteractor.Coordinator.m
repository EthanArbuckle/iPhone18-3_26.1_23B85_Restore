@interface PhysicalShutterButtonEventInteractor.Coordinator
- (_TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator)init;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
@end

@implementation PhysicalShutterButtonEventInteractor.Coordinator

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v6 = a4;
  v9 = self;
  if ([v6 _state] == 2)
  {
    v7 = *(&v9->super.isa + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_action);

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
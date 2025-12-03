@interface ControlCenterModule
- (NSString)moduleDescription;
- (id)contentViewControllerForContext:(id)context;
- (void)controlCenterModuleViewController:(id)controller didChangeDisplayedItems:(id)items;
- (void)controlCenterModuleViewController:(id)controller didStartDisplayingHome:(id)home;
- (void)controlCenterModuleViewController:(id)controller moduleDidDisappear:(BOOL)disappear;
- (void)controlCenterModuleViewController:(id)controller moduleWillAppear:(BOOL)appear;
- (void)launchHomeAppForControlCenterModuleViewController:(id)controller;
- (void)setContentModuleContext:(id)context;
@end

@implementation ControlCenterModule

- (NSString)moduleDescription
{
  v2 = sub_29C9C6604();
  v3 = HULocalizedString();

  if (!v3)
  {
    sub_29C9C6614();
    v3 = sub_29C9C6604();
  }

  return v3;
}

- (void)setContentModuleContext:(id)context
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  *(&self->super.isa + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context) = context;
  contextCopy = context;
}

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = _s33HomeControlCenterSingleTileModule0bcF0C21contentViewController3forSo011CCUIContentf7ContenthI0_So06UIViewI0CXcSo0kF19PresentationContextCSg_tF_0();

  return v6;
}

- (void)controlCenterModuleViewController:(id)controller moduleWillAppear:(BOOL)appear
{
  controllerCopy = controller;
  selfCopy = self;
  _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_16moduleWillAppearySo09HUControlcfhI0C_SbtF_0();
}

- (void)controlCenterModuleViewController:(id)controller didChangeDisplayedItems:(id)items
{
  sub_29C9C52B8(0, &qword_2A179B180, 0x29EDC53A0);
  sub_29C9C4EC4();
  v6 = sub_29C9C66B4();
  controllerCopy = controller;
  selfCopy = self;
  ControlCenterModule.controlCenterModuleViewController(_:didChangeDisplayedItems:)(controllerCopy, v6);
}

- (void)controlCenterModuleViewController:(id)controller moduleDidDisappear:(BOOL)disappear
{
  controllerCopy = controller;
  selfCopy = self;
  _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_18moduleDidDisappearySo09HUControlcfhI0C_SbtF_0();
}

- (void)controlCenterModuleViewController:(id)controller didStartDisplayingHome:(id)home
{
  controllerCopy = controller;
  homeCopy = home;
  selfCopy = self;
  ControlCenterModule.controlCenterModuleViewController(_:didStartDisplaying:)(controllerCopy, home);
}

- (void)launchHomeAppForControlCenterModuleViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  ControlCenterModule.launchHomeApp(for:)(controllerCopy);
}

@end
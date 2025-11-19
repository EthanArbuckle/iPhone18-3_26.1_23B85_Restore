@interface ControlCenterModule
- (NSString)moduleDescription;
- (id)contentViewControllerForContext:(id)a3;
- (void)controlCenterModuleViewController:(id)a3 didChangeDisplayedItems:(id)a4;
- (void)controlCenterModuleViewController:(id)a3 didStartDisplayingHome:(id)a4;
- (void)controlCenterModuleViewController:(id)a3 moduleDidDisappear:(BOOL)a4;
- (void)controlCenterModuleViewController:(id)a3 moduleWillAppear:(BOOL)a4;
- (void)launchHomeAppForControlCenterModuleViewController:(id)a3;
- (void)setContentModuleContext:(id)a3;
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

- (void)setContentModuleContext:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  *(&self->super.isa + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context) = a3;
  v3 = a3;
}

- (id)contentViewControllerForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s33HomeControlCenterSingleTileModule0bcF0C21contentViewController3forSo011CCUIContentf7ContenthI0_So06UIViewI0CXcSo0kF19PresentationContextCSg_tF_0();

  return v6;
}

- (void)controlCenterModuleViewController:(id)a3 moduleWillAppear:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_16moduleWillAppearySo09HUControlcfhI0C_SbtF_0();
}

- (void)controlCenterModuleViewController:(id)a3 didChangeDisplayedItems:(id)a4
{
  sub_29C9C52B8(0, &qword_2A179B180, 0x29EDC53A0);
  sub_29C9C4EC4();
  v6 = sub_29C9C66B4();
  v7 = a3;
  v8 = self;
  ControlCenterModule.controlCenterModuleViewController(_:didChangeDisplayedItems:)(v7, v6);
}

- (void)controlCenterModuleViewController:(id)a3 moduleDidDisappear:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_18moduleDidDisappearySo09HUControlcfhI0C_SbtF_0();
}

- (void)controlCenterModuleViewController:(id)a3 didStartDisplayingHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ControlCenterModule.controlCenterModuleViewController(_:didStartDisplaying:)(v6, a4);
}

- (void)launchHomeAppForControlCenterModuleViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  ControlCenterModule.launchHomeApp(for:)(v4);
}

@end
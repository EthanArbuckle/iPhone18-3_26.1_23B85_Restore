@interface AppExtensionWrapper._Scene
- (_TtCC12ExtensionKit19AppExtensionWrapper6_Scene)init;
- (void)setViewController:(id)controller;
@end

@implementation AppExtensionWrapper._Scene

- (void)setViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController);
  *(&self->super.isa + OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController) = controller;
  controllerCopy = controller;
}

- (_TtCC12ExtensionKit19AppExtensionWrapper6_Scene)init
{
  *(&self->super.isa + OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController) = 0;
  v3 = (self + OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_connectionHandler);
  *v3 = sub_1D29DB950;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_innerView) = sub_1D2A00318();
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppExtensionWrapper._Scene();
  return [(AppExtensionWrapper._Scene *)&v5 init];
}

@end
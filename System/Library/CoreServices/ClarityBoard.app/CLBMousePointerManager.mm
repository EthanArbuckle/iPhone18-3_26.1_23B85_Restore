@interface CLBMousePointerManager
- (void)dealloc;
- (void)mousePointerDevicesDidChange:(id)change;
- (void)pointerClientController:(id)controller didAddScene:(id)scene;
- (void)pointerClientController:(id)controller sceneDidActivate:(id)activate;
- (void)pointerClientController:(id)controller sceneWillDeactivate:(id)deactivate;
- (void)pointerClientController:(id)controller willRemoveScene:(id)scene;
@end

@implementation CLBMousePointerManager

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___CLBMousePointerManager_mousePointerDeviceObserverToken);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  [*(&self->super.isa + OBJC_IVAR___CLBMousePointerManager_pointerClientController) invalidate];
  v5.receiver = self;
  v5.super_class = type metadata accessor for MousePointerManager();
  [(CLBMousePointerManager *)&v5 dealloc];
}

- (void)mousePointerDevicesDidChange:(id)change
{
  sub_10005CEDC();
  sub_10005D054(&qword_10032D648, sub_10005CEDC);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10005B8E0(v4);
}

- (void)pointerClientController:(id)controller didAddScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  selfCopy = self;
  sub_10005C8AC(sceneCopy, "Did add pointer scene: %@");
}

- (void)pointerClientController:(id)controller willRemoveScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  selfCopy = self;
  sub_10005C8AC(sceneCopy, "Will remove pointer scene: %@");
}

- (void)pointerClientController:(id)controller sceneDidActivate:(id)activate
{
  controllerCopy = controller;
  activateCopy = activate;
  selfCopy = self;
  sub_10005CA68(activateCopy, "Did activate pointer scene: %@", &unk_1002FF3D8, &unk_1002995E8);
}

- (void)pointerClientController:(id)controller sceneWillDeactivate:(id)deactivate
{
  controllerCopy = controller;
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_10005CA68(deactivateCopy, "Will deactivate pointer scene: %@", &unk_1002FF3B0, &unk_1002995D8);
}

@end
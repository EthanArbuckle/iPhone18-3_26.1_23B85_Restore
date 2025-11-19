@interface CLBMousePointerManager
- (void)dealloc;
- (void)mousePointerDevicesDidChange:(id)a3;
- (void)pointerClientController:(id)a3 didAddScene:(id)a4;
- (void)pointerClientController:(id)a3 sceneDidActivate:(id)a4;
- (void)pointerClientController:(id)a3 sceneWillDeactivate:(id)a4;
- (void)pointerClientController:(id)a3 willRemoveScene:(id)a4;
@end

@implementation CLBMousePointerManager

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___CLBMousePointerManager_mousePointerDeviceObserverToken);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  [*(&self->super.isa + OBJC_IVAR___CLBMousePointerManager_pointerClientController) invalidate];
  v5.receiver = self;
  v5.super_class = type metadata accessor for MousePointerManager();
  [(CLBMousePointerManager *)&v5 dealloc];
}

- (void)mousePointerDevicesDidChange:(id)a3
{
  sub_10005CEDC();
  sub_10005D054(&qword_10032D648, sub_10005CEDC);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10005B8E0(v4);
}

- (void)pointerClientController:(id)a3 didAddScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10005C8AC(v7, "Did add pointer scene: %@");
}

- (void)pointerClientController:(id)a3 willRemoveScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10005C8AC(v7, "Will remove pointer scene: %@");
}

- (void)pointerClientController:(id)a3 sceneDidActivate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10005CA68(v7, "Did activate pointer scene: %@", &unk_1002FF3D8, &unk_1002995E8);
}

- (void)pointerClientController:(id)a3 sceneWillDeactivate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10005CA68(v7, "Will deactivate pointer scene: %@", &unk_1002FF3B0, &unk_1002995D8);
}

@end
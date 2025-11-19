@interface SettingsCarManager
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carIsConfigured:(id)a3;
- (void)carManager:(id)a3 didRemove:(id)a4;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)dismissSettingsModal;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)sessionDidConnect:(id)a3;
@end

@implementation SettingsCarManager

- (void)dismissSettingsModal
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts;
  if (*(&self->super.isa + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts) == 1)
  {
    v8 = *(&self->super.isa + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager);
    v9 = a3;
    v10 = a4;
    v13 = self;
    v11 = [v8 currentCar];
    if (v11)
    {
      v12 = v11;
      *(&self->super.isa + v5) = 0;
      CAFSignpostEmit_Rendered();
      CAFSignpostEmit_Finalized();

      v9 = v10;
      v10 = v13;
      v13 = v12;
    }
  }
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10001B1E8(a4);
}

- (void)carManager:(id)a3 didRemove:(id)a4
{
  sub_1000043C8(0, &qword_1000387E8, CAFCar_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10001B484(v6);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10001932C(v6, a4);
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001B564();
}

- (void)carIsConfigured:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100019748(v4);
}

@end
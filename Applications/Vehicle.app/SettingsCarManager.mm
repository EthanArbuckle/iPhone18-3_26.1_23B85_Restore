@interface SettingsCarManager
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carIsConfigured:(id)configured;
- (void)carManager:(id)manager didRemove:(id)remove;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)dismissSettingsModal;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)sessionDidConnect:(id)connect;
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

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  v5 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts;
  if (*(&self->super.isa + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts) == 1)
  {
    v8 = *(&self->super.isa + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager);
    controllerCopy = controller;
    viewControllerCopy = viewController;
    selfCopy = self;
    currentCar = [v8 currentCar];
    if (currentCar)
    {
      v12 = currentCar;
      *(&self->super.isa + v5) = 0;
      CAFSignpostEmit_Rendered();
      CAFSignpostEmit_Finalized();

      controllerCopy = viewControllerCopy;
      viewControllerCopy = selfCopy;
      selfCopy = v12;
    }
  }
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_10001B1E8(car);
}

- (void)carManager:(id)manager didRemove:(id)remove
{
  sub_1000043C8(0, &qword_1000387E8, CAFCar_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_10001B484(v6);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  sub_10001932C(updateCopy, values);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_10001B564();
}

- (void)carIsConfigured:(id)configured
{
  configuredCopy = configured;
  selfCopy = self;
  sub_100019748(configuredCopy);
}

@end
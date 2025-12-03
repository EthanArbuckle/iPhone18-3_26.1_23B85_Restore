@interface RadioCarManager
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carIsConfigured:(id)configured;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)dismissSettingsModal;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)nowPlayingTapped;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidUpdateCarCapabilities:(id)capabilities;
- (void)showSoundSettingsWithOverrideDark:(BOOL)dark;
@end

@implementation RadioCarManager

- (void)nowPlayingTapped
{
  selfCopy = self;
  sub_100010040();
}

- (void)dismissSettingsModal
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Media15RadioCarManager_navigationController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)showSoundSettingsWithOverrideDark:(BOOL)dark
{
  selfCopy = self;
  sub_100010424(dark);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  sub_1000114B8(accessoriesCopy);
}

- (void)carIsConfigured:(id)configured
{
  configuredCopy = configured;
  selfCopy = self;
  sub_100010900(configuredCopy);
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_1000115F4(car);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_100011798(viewControllerCopy);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_100010BB0(connectCopy);
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController);
  if (v4)
  {
    [v4 reloadData];
  }
}

- (void)sessionDidUpdateCarCapabilities:(id)capabilities
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController);
  if (v3)
  {
    [v3 reloadData];
  }
}

@end
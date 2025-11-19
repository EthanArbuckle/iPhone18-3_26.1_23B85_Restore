@interface RadioCarManager
- (void)carDidUpdateAccessories:(id)a3;
- (void)carIsConfigured:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)dismissSettingsModal;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)nowPlayingTapped;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidUpdateCarCapabilities:(id)a3;
- (void)showSoundSettingsWithOverrideDark:(BOOL)a3;
@end

@implementation RadioCarManager

- (void)nowPlayingTapped
{
  v2 = self;
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

- (void)showSoundSettingsWithOverrideDark:(BOOL)a3
{
  v4 = self;
  sub_100010424(a3);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000114B8(v4);
}

- (void)carIsConfigured:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100010900(v4);
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000115F4(a4);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100011798(v8);
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100010BB0(v4);
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController);
  if (v4)
  {
    [v4 reloadData];
  }
}

- (void)sessionDidUpdateCarCapabilities:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController);
  if (v3)
  {
    [v3 reloadData];
  }
}

@end
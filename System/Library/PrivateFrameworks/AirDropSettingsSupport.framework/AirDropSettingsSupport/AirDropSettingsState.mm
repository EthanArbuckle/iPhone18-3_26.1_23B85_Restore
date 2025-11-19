@interface AirDropSettingsState
- (void)dealloc;
- (void)discoveryControllerSettingsDidChange:(void *)a3;
@end

@implementation AirDropSettingsState

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController);
  v5 = self;
  [v4 invalidate];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AirDropSettingsState *)&v6 dealloc];
}

- (void)discoveryControllerSettingsDidChange:(void *)a3
{
  if (a3)
  {
    v5 = a1;
    v4 = a3;
    sub_23E86569C(v4);
  }

  else
  {
    __break(1u);
  }
}

@end
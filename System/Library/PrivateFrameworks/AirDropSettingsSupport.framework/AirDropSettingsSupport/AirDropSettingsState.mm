@interface AirDropSettingsState
- (void)dealloc;
- (void)discoveryControllerSettingsDidChange:(void *)change;
@end

@implementation AirDropSettingsState

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController);
  selfCopy = self;
  [v4 invalidate];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(AirDropSettingsState *)&v6 dealloc];
}

- (void)discoveryControllerSettingsDidChange:(void *)change
{
  if (change)
  {
    selfCopy = self;
    changeCopy = change;
    sub_23E86569C(changeCopy);
  }

  else
  {
    __break(1u);
  }
}

@end
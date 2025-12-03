@interface _FBSceneClientSettingsObserverImpl
- (_TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl)init;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation _FBSceneClientSettingsObserverImpl

- (_TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl)init
{
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl__observers) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for _FBSceneClientSettingsObserverImpl();
  return [(_FBSceneClientSettingsObserverImpl *)&v3 init];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_18E64DFB0(settingsCopy);
}

@end
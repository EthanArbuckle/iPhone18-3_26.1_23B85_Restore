@interface ExternalAISettingsManager
- (BOOL)handleURL:(id)l;
- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)init;
- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)initWithParentController:(id)controller settings:(id)settings;
@end

@implementation ExternalAISettingsManager

- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)initWithParentController:(id)controller settings:(id)settings
{
  objc_allocWithZone(sub_24140E6FC());
  controllerCopy = controller;
  settingsCopy = settings;
  v9 = controllerCopy;
  v10 = settingsCopy;
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager) = sub_24140E6EC();
  v13.receiver = self;
  v13.super_class = type metadata accessor for ExternalAISettingsManager();
  v11 = [(ExternalAISettingsManager *)&v13 init];

  return v11;
}

- (BOOL)handleURL:(id)l
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager);
  if (v3)
  {
    v4 = l == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v9 = 0;
  }

  else
  {
    lCopy = l;
    selfCopy = self;
    v8 = v3;
    v9 = sub_24140E6DC();
  }

  return v9 & 1;
}

- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
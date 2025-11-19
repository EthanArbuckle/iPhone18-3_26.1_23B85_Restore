@interface ExternalAISettingsManager
- (BOOL)handleURL:(id)a3;
- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)init;
- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)initWithParentController:(id)a3 settings:(id)a4;
@end

@implementation ExternalAISettingsManager

- (_TtC24AssistantSettingsSupport25ExternalAISettingsManager)initWithParentController:(id)a3 settings:(id)a4
{
  objc_allocWithZone(sub_24140E6FC());
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager) = sub_24140E6EC();
  v13.receiver = self;
  v13.super_class = type metadata accessor for ExternalAISettingsManager();
  v11 = [(ExternalAISettingsManager *)&v13 init];

  return v11;
}

- (BOOL)handleURL:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager);
  if (v3)
  {
    v4 = a3 == 0;
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
    v6 = a3;
    v7 = self;
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
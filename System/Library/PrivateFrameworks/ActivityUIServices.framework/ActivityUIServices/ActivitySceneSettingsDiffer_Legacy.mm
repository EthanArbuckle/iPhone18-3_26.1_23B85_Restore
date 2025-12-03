@interface ActivitySceneSettingsDiffer_Legacy
- (_TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy)init;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation ActivitySceneSettingsDiffer_Legacy

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_18E65126C(settingsCopy);
}

- (_TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
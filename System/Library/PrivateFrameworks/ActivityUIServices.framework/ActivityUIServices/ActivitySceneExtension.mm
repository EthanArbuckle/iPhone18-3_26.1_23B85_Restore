@interface ActivitySceneExtension
+ (id)clientSettingsExtensions;
+ (id)settingsExtensions;
- (_TtC18ActivityUIServices22ActivitySceneExtension)init;
@end

@implementation ActivitySceneExtension

+ (id)settingsExtensions
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E6636F0;
  *(v2 + 32) = type metadata accessor for ActivitySceneSettingsExtension();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89AA0, &unk_18E663758);
  v3 = sub_18E65F990();

  return v3;
}

+ (id)clientSettingsExtensions
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E6636F0;
  v3 = objc_opt_self();
  v4 = &unk_1F01BC4E0;
  [v3 extensionForProtocol_];
  *(v2 + 32) = swift_getObjCClassMetadata();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89AA0, &unk_18E663758);
  v5 = sub_18E65F990();

  return v5;
}

- (_TtC18ActivityUIServices22ActivitySceneExtension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySceneExtension();
  return [(ActivitySceneExtension *)&v3 init];
}

@end
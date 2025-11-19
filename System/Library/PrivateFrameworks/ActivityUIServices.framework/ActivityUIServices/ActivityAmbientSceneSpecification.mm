@interface ActivityAmbientSceneSpecification
- (NSArray)defaultExtensions;
@end

@implementation ActivityAmbientSceneSpecification

- (NSArray)defaultExtensions
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E6637C0;
  *(v2 + 32) = type metadata accessor for ActivitySceneExtension();
  *(v2 + 40) = type metadata accessor for ActivityAmbientSceneExtension();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89AA0, &unk_18E663758);
  v3 = sub_18E65F990();

  return v3;
}

@end
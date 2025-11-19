@interface StorableColorValueTransformer
+ (NSArray)allowedTopLevelClasses;
- (_TtC10FinanceKit29StorableColorValueTransformer)init;
@end

@implementation StorableColorValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 32) = type metadata accessor for StorableColor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCD0);
  v3 = sub_1B7800C18();

  return v3;
}

- (_TtC10FinanceKit29StorableColorValueTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(StorableColorValueTransformer *)&v3 init];
}

@end
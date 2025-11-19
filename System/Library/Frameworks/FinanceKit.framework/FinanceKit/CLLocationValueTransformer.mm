@interface CLLocationValueTransformer
+ (NSArray)allowedTopLevelClasses;
- (_TtC10FinanceKit26CLLocationValueTransformer)init;
@end

@implementation CLLocationValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 32) = sub_1B72F3F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCD0);
  v3 = sub_1B7800C18();

  return v3;
}

- (_TtC10FinanceKit26CLLocationValueTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CLLocationValueTransformer *)&v3 init];
}

@end
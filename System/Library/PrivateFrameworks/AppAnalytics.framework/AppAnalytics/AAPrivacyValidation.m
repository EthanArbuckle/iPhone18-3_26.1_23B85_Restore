@interface AAPrivacyValidation
+ (AAPrivacyValidation)default;
- (AAPrivacyValidation)init;
- (NSSet)denylistDescriptors;
- (id)withDenylistDescriptors:(id)a3;
- (id)withEnabled:(BOOL)a3;
@end

@implementation AAPrivacyValidation

+ (AAPrivacyValidation)default
{
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBC8A20;

  return v3;
}

- (NSSet)denylistDescriptors
{
  v2 = *(self + OBJC_IVAR___AAPrivacyValidation_denylistDescriptors);

  v3 = sub_1B6AB97B0();

  return v3;
}

- (id)withEnabled:(BOOL)a3
{
  ObjectType = swift_getObjectType();
  v6 = *(self + OBJC_IVAR___AAPrivacyValidation_denylistDescriptors);
  v7 = objc_allocWithZone(ObjectType);
  v7[OBJC_IVAR___AAPrivacyValidation_enabled] = a3;
  *&v7[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = v6;
  v10.receiver = v7;
  v10.super_class = ObjectType;

  v8 = [(AAPrivacyValidation *)&v10 init];

  return v8;
}

- (id)withDenylistDescriptors:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = sub_1B6AB97C0();
  LOBYTE(self) = *(self + OBJC_IVAR___AAPrivacyValidation_enabled);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AAPrivacyValidation_enabled] = self;
  *&v6[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = v5;
  v9.receiver = v6;
  v9.super_class = ObjectType;
  v7 = [(AAPrivacyValidation *)&v9 init];

  return v7;
}

- (AAPrivacyValidation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
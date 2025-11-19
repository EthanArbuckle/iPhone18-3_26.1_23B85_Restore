@interface JSMediaTokenServiceObject
- (NSString)tokenString;
- (_TtC11AppStoreKit25JSMediaTokenServiceObject)init;
- (id)overrideToken:(id)a3;
- (id)refreshToken;
- (void)resetToken;
@end

@implementation JSMediaTokenServiceObject

- (id)refreshToken
{
  v2 = self;
  v3 = sub_1E1785B74();

  return v3;
}

- (id)overrideToken:(id)a3
{
  swift_getObjectType();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v4 = a3;
  v5 = sub_1E1AF6D4C();
  v6 = sub_1E1AF6D5C();

  return v6;
}

- (NSString)tokenString
{
  sub_1E1AF44CC();
  sub_1E1AF44BC();
  if (qword_1EE1EAE10 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_project_value_buffer(v2, qword_1EE1EAE20);
  sub_1E1AF3C8C();

  v3 = sub_1E1AF5DBC();

  return v3;
}

- (void)resetToken
{
  sub_1E1AF44CC();
  v3 = self;
  sub_1E1AF44BC();
  if (qword_1EE1EAE10 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v5 = __swift_project_value_buffer(v4, qword_1EE1EAE20);
  v7[3] = v4;
  v7[4] = sub_1E14F0120();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  sub_1E1AF448C();

  __swift_destroy_boxed_opaque_existential_1(v7);
  [*(&v3->super.isa + OBJC_IVAR____TtC11AppStoreKit25JSMediaTokenServiceObject_tokenService) invalidateMediaToken];
}

- (_TtC11AppStoreKit25JSMediaTokenServiceObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
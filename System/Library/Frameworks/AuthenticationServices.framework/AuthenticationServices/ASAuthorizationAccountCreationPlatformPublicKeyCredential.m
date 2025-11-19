@interface ASAuthorizationAccountCreationPlatformPublicKeyCredential
- (_TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential)init;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASAuthorizationAccountCreationPlatformPublicKeyCredential

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1B1D231BC(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1B1D7C4FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1D234B0(v4);
}

- (_TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
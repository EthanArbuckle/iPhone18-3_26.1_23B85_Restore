@interface ASAuthorizationAccountCreationPlatformPublicKeyCredential
- (_TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential)init;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASAuthorizationAccountCreationPlatformPublicKeyCredential

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1B1D231BC(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1B1D7C4FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1D234B0(coderCopy);
}

- (_TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ASCPublicKeyCredentialRegistrationExtensionInputs
- (BOOL)hasAtLeastOneExtension;
- (_TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs)init;
- (id)copyWithZone:(void *)zone;
- (id)descriptionForLoggingWithIndentationCount:(int64_t)count;
- (int64_t)caBLEAuthenticatorMinimumRequirement;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPublicKeyCredentialRegistrationExtensionInputs

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C20D3018(coderCopy);
}

- (_TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob) = 2;
  v2 = self + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 6) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return [(ASCPublicKeyCredentialRegistrationExtensionInputs *)&v4 init];
}

- (id)copyWithZone:(void *)zone
{
  v4 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
  selfCopy = self;
  v6 = sub_1C20D84A8(selfCopy);

  return v6;
}

- (BOOL)hasAtLeastOneExtension
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(&self->super.isa + v3) != 2)
  {
    return 1;
  }

  v4 = self + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  return *(v4 + 6) != 1;
}

- (id)descriptionForLoggingWithIndentationCount:(int64_t)count
{
  selfCopy = self;
  sub_1C20D39C4();

  v4 = sub_1C21708F4();

  return v4;
}

- (int64_t)caBLEAuthenticatorMinimumRequirement
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3) != 2;
  v5 = self + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  if (*(v5 + 6) == 1)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

@end
@interface ASCPublicKeyCredentialAssertionExtensionInputs
- (BOOL)hasAtLeastOneExtension;
- (_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs)init;
- (id)descriptionForLoggingWithIndentationCount:(int64_t)count;
- (int64_t)caBLEAuthenticatorMinimumRequirement;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPublicKeyCredentialAssertionExtensionInputs

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C210090C(coderCopy);
}

- (_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob) = xmmword_1C2177B30;
  v2 = self + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *(v2 + 5) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
  return [(ASCPublicKeyCredentialAssertionExtensionInputs *)&v4 init];
}

- (BOOL)hasAtLeastOneExtension
{
  v3 = self + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(v3 + 1) >> 60 != 11)
  {
    return 1;
  }

  v4 = self + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf;
  swift_beginAccess();
  return *(v4 + 5) != 1;
}

- (id)descriptionForLoggingWithIndentationCount:(int64_t)count
{
  selfCopy = self;
  sub_1C2101184();

  v4 = sub_1C21708F4();

  return v4;
}

- (int64_t)caBLEAuthenticatorMinimumRequirement
{
  v3 = self + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob;
  swift_beginAccess();
  v4 = *(v3 + 1) >> 60 != 11;
  v5 = self + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf;
  swift_beginAccess();
  if (*(v5 + 5) == 1)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

@end
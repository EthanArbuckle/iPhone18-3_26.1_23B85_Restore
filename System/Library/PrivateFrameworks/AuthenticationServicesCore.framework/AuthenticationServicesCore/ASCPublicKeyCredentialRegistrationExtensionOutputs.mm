@interface ASCPublicKeyCredentialRegistrationExtensionOutputs
- (NSString)description;
- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPublicKeyCredentialRegistrationExtensionOutputs

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C21084A0(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1C2108978();

  v3 = sub_1C21708F4();

  return v3;
}

- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob) = 2;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  v4 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
  return [(ASCPublicKeyCredentialRegistrationExtensionOutputs *)&v6 init];
}

@end
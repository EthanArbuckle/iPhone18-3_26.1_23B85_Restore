@interface ASCPublicKeyCredentialRegistrationExtensionOutputs
- (NSString)description;
- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPublicKeyCredentialRegistrationExtensionOutputs

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C21084A0(v4);
}

- (NSString)description
{
  v2 = self;
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
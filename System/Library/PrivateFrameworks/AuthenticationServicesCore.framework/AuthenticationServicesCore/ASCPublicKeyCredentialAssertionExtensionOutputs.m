@interface ASCPublicKeyCredentialAssertionExtensionOutputs
- (NSString)description;
- (_TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPublicKeyCredentialAssertionExtensionOutputs

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2167BA4(v4);
}

- (_TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs)init
{
  v3 = self + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v5 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  return [(ASCPublicKeyCredentialAssertionExtensionOutputs *)&v7 init];
}

- (NSString)description
{
  v2 = self;
  sub_1C21681C0();

  v3 = sub_1C21708F4();

  return v3;
}

@end
@interface WKIdentityDocumentPresentmentRequestAuthenticationCertificate
- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)init;
- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)initWithCertificate:(__SecCertificate *)a3;
- (__SecCertificate)certificate;
- (void)setCertificate:(__SecCertificate *)a3;
@end

@implementation WKIdentityDocumentPresentmentRequestAuthenticationCertificate

- (__SecCertificate)certificate
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentRequestAuthenticationCertificate_certificate;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCertificate:(__SecCertificate *)a3
{
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentRequestAuthenticationCertificate_certificate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)initWithCertificate:(__SecCertificate *)a3
{
  *(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentRequestAuthenticationCertificate_certificate) = a3;
  v5.receiver = self;
  v5.super_class = WKIdentityDocumentPresentmentRequestAuthenticationCertificate;
  v3 = a3;
  return [(WKIdentityDocumentPresentmentRequestAuthenticationCertificate *)&v5 init];
}

- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end